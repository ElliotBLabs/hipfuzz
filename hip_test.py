import subprocess
import os
import sys

RESULTS_FILE = "results.txt"

CMD_GENERATE = ["./HIPSmith"]
CMD_COMPILE_HIP = [
    "hipcc",
    "-x",
    "hip",
    "HIPProg.hip",
    "-Wno-c++11-narrowing",
    "-Wno-unused-value",
    "--offload-arch=native",
    "-o",
    "HIPProg",
]
CMD_COMPILE_GCC = [
    "g++",
    "-std=c++11",
    "-Werror",
    "-Wno-narrowing",
    "-Wno-overflow",
    "-o",
    "HIP-CCProg",
    "HIP-CCProg.cc",
]
CMD_RUN_HIP = ["./HIPProg"]
CMD_RUN_GCC = ["./HIP-CCProg"]


def run_command(command, step_name):
    """Runs a command and returns the stdout string."""
    print(f"[{step_name}] Running...")
    try:
        result = subprocess.run(command, capture_output=True, text=True, check=True)
        print(f"[{step_name}] Success.")
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        print(f"[{step_name}] FAILED!")
        print(f"Error Output:\n{e.stderr}")
        sys.exit(1)


def parse_hip_output(output_str):
    """Extracts CRC values from lines like 'Thread 0 CRC: 12345'."""
    values = []
    for line in output_str.split("\n"):
        line = line.strip()
        if line.startswith("Thread") and "CRC:" in line:
            # Split by ':' and take the last part (the number)
            parts = line.split(":")
            if len(parts) > 1:
                values.append(parts[-1].strip())
    return values


def main():
    # 1. Run Generator & Compilers
    run_command(CMD_GENERATE, "Generator")
    run_command(CMD_COMPILE_HIP, "Compile HIP")
    run_command(CMD_COMPILE_GCC, "Compile GCC")

    # 2. Run Executables
    hip_raw = run_command(CMD_RUN_HIP, "Run HIP Executable")
    gcc_raw = run_command(CMD_RUN_GCC, "Run GCC Executable")

    # 3. Parse Data for Smart Comparison
    # GCC output is just one raw number (e.g. "18446744073275960199")
    gcc_val = gcc_raw.strip()

    # HIP output is multiple lines (e.g. "Thread 0 CRC: 18446744073275960199")
    hip_vals = parse_hip_output(hip_raw)

    # 4. Compare
    match_status = "MATCH"
    mismatch_details = []

    if not hip_vals:
        match_status = "ERROR"
        mismatch_details.append(
            "Could not find any 'Thread X CRC:' lines in HIP output."
        )
    else:
        for i, val in enumerate(hip_vals):
            if val != gcc_val:
                match_status = "MISMATCH"
                mismatch_details.append(
                    f"Thread {i} diff: HIP({val}) vs GCC({gcc_val})"
                )

    # 5. Write Results
    print(f"[Summary] Writing to {RESULTS_FILE}...")
    with open(RESULTS_FILE, "w") as f:
        f.write("========================================\n")
        f.write("         TEST RUN SUMMARY\n")
        f.write("========================================\n\n")

        f.write("--- HIP Executable Output (Raw) ---\n")
        f.write(hip_raw + "\n\n")

        f.write("--- GCC Executable Output (Raw) ---\n")
        f.write(gcc_raw + "\n\n")

        f.write("========================================\n")
        f.write(f"RESULT: {match_status}\n")

        if match_status == "MATCH":
            f.write(f"All {len(hip_vals)} threads matched the GCC value.\n")
        elif mismatch_details:
            f.write("Details:\n")
            for detail in mismatch_details:
                f.write(f"  - {detail}\n")
        if match_status == "MATCH":
            print(
                f"\n>> RESULT: MATCH (All {len(hip_vals)} threads verified against GCC)"
            )
        else:
            print(
                f"\n>> RESULT: MISMATCH ({len(mismatch_details)} failure(s) detected - see {RESULTS_FILE})"
            )


if __name__ == "__main__":
    main()
