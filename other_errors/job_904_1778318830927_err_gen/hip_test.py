import subprocess
import os
import sys
import time

RESULTS_FILE = "results.txt"
CMD_GENERATE = ["./HIPSmith", "--vectors", "--hip-consts"]
BASE_SRC_HIP = "HIPProg.hip"
BASE_SRC_HIP_DRIVER = "HIP-driver.cpp"

OPT_LEVELS = ["-O0", "-O1", "-O2", "-O3"]
BASELINE_OPT = "-O0"

def get_compile_cmd_hip(opt_level):
    exe_name = f"HIPProg{opt_level}"
    cmd = [
        "hipcc", opt_level, "-x", "hip", BASE_SRC_HIP, BASE_SRC_HIP_DRIVER,
        "-Wno-c++11-narrowing", "-Wno-unused-value", 
        "--offload-arch=native", "-o", exe_name
    ]
    return cmd, exe_name

def run_command(command, err_msg):
    """Runs a command, times it, and returns (stdout, stderr, returncode)."""
    start_t = time.time()
    
    # Grab a short name for the log (e.g., "./HIPSmith --vectors" or "hipcc -O3")
    cmd_short_name = " ".join(command[:2]) if len(command) > 1 else command[0]
    
    try:
        # Running the command...
        # we give 15s
        result = subprocess.run(command, capture_output=True, text=True, check=True, timeout=15)
        
        # Calculate how long it took
        elapsed = time.time() - start_t
        print(f"[TIMER] {cmd_short_name:<25} | Took: {elapsed:>5.2f}s")
        
        return result.stdout.strip(), result.stderr.strip(), result.returncode
    
    except subprocess.CalledProcessError as e:
        elapsed = time.time() - start_t
        print(f"[TIMER-FAIL] {cmd_short_name:<20} | Crashed after {elapsed:.2f}s")
        print(err_msg)      
        
        print(f"Error Output:\n{e.stderr}\n{e.stdout}")
        sys.exit(1)
        
    except subprocess.TimeoutExpired as e:
        partial_stdout = e.stdout if e.stdout else "<No stdout captured>"
        partial_stderr = e.stderr if e.stderr else "<No stderr captured>"
        print(f"[TIMER-TIMEOUT] {cmd_short_name:<17} | Killed at 45.00s")
        print("TIMEOUT")
        print(f"--- STDOUT ---\n{partial_stdout}")
        print(f"--- STDERR ---\n{partial_stderr}")
        sys.exit(1)

def parse_hip_output(output_str):
    """Extracts CRC values from lines like 'Thread 0 CRC: 12345'."""
    values = []
    for line in output_str.split("\n"):
        line = line.strip()
        if line.startswith("Thread") and "CRC:" in line:
            parts = line.split(":")
            if len(parts) > 1:
                values.append(parts[-1].strip())
    return values

def main():
    # Keep track of formatted output lines to write to file/console
    log_lines = []
    def log(text=""):
        log_lines.append(text)

    # 1. GENERATE
    run_command(CMD_GENERATE, "GENERATION FAILED")

    log("--- Compiling (HIP variants) ---")
    
    hip_executables = {}
    for opt in OPT_LEVELS:
        cmd, exe = get_compile_cmd_hip(opt)
        run_command(cmd, "")
        hip_executables[opt] = exe

    # 3. RUN HIP VARIANTS
    log(f"--- Running Reference ({BASELINE_OPT}) & Variants ---")
    
    parsed_outputs = {}
    for opt in OPT_LEVELS:
        stdout, _, _ = run_command([f"./{hip_executables[opt]}"], "InternalCompilerError")
        parsed_outputs[opt] = parse_hip_output(stdout)

    baseline_vals = parsed_outputs[BASELINE_OPT]
    if baseline_vals:
        log(f">> {BASELINE_OPT} Reference Value (T0): {baseline_vals[0]}")
        log(f">> {len(baseline_vals)} threads parsed in total.\n")
    else:
        log(f">> ERROR: No thread output parsed for {BASELINE_OPT}!\n")

    # 4. CHECK MATCHES
    mismatch_found = False
    table_data = []

    for opt in OPT_LEVELS:
        vals = parsed_outputs[opt]
        status = "PASS"
        details = ""

        if not vals:
            status = "ERROR"
            details = "No Thread CRC output found."
            if opt != BASELINE_OPT: mismatch_found = True
        elif opt == BASELINE_OPT:
            status = "PASS"
            details = "Reference Baseline"
        else:
            diffs = []
            max_len = max(len(baseline_vals), len(vals))
            for i in range(max_len):
                b_val = baseline_vals[i] if i < len(baseline_vals) else "MISSING"
                v_val = vals[i] if i < len(vals) else "MISSING"
                
                if b_val != v_val:
                    diffs.append(f"T{i}:{v_val}")
                    if len(diffs) >= 3:
                        diffs[-1] += "..."
                        break
            
            if diffs:
                status = "MISMATCH"
                details = "Diff: " + ", ".join(diffs)
                mismatch_found = True
        
        table_data.append((f"HIP {opt}", status, details))

    # 5. FORMAT TABLE
    log("============================================================")
    log(f"{'VARIANT':<15} | {'STATUS':<12} | DETAILS")
    log("------------------------------------------------------------")
    for variant, status, details in table_data:
        log(f"{variant:<15} | {status:<12} | {details}")
    log("============================================================")

    final_result = "MISMATCH" if mismatch_found else "MATCH"
    log(f">> RESULT: {final_result}")

    # 6. OUTPUT
    final_output = "\n".join(log_lines)
    
    print(final_output)
    
    with open(RESULTS_FILE, "w") as f:
        f.write(final_output + "\n")

if __name__ == "__main__":
    main()