#!/usr/bin/env python3
import subprocess
import sys
import os
import datetime
import concurrent.futures

# --- Directory Mapping Based on Project Structure ---
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
BUG_DIR = os.path.dirname(SCRIPT_DIR) 

LOG_FILE = os.path.join(SCRIPT_DIR, "interestingness.log")

HIP_CPU_DIR = os.path.join(SCRIPT_DIR, "hip-cpu")
HIP_CPU_INCLUDE = os.path.join(HIP_CPU_DIR, "include")
MSAN_IGNORE_LIST = os.path.join(SCRIPT_DIR, "msan_ignore_list.txt")
PROJECT_INCLUDE = os.path.join(BUG_DIR, "include")

# --- Timeouts & Injected Compilation Flags ---
COMPILE_TIMEOUT = 25
RUN_TIMEOUT = 10

# SINGLE braces here because we are injecting these from the parent script
BUG_FLAG = "-O1"
REF_FLAG = "-O0"

# DOUBLE braces in C++ code so they stay as single braces in the final output
EXPECTED_DRIVER = r'''// ------------------------------------------------------------------
// Host Main
// ------------------------------------------------------------------
int main(int argc, const char* argv[]) {
    // Config
    const unsigned int num_threads = 4;
    const unsigned int block_size = 4;

    // Host Alloc
    std::vector<uint64_t> h_results(num_threads);
    const size_t results_bytes = sizeof(uint64_t) * h_results.size();

    // Device Alloc
    uint64_t *d_results;
    HIP_CHECK(hipMalloc((void**)&d_results, results_bytes));
    HIP_CHECK(hipMemset(d_results, 0, results_bytes));

    // Dimensions
    const dim3 block_dim(block_size);
    const dim3 grid_dim((num_threads + block_size - 1) / block_size);

    // Launch
    hipLaunchKernelGGL(hipsmith_kernel, grid_dim, block_dim, 0, 0, d_results);
    HIP_CHECK(hipGetLastError());
    HIP_CHECK(hipDeviceSynchronize());

    // Copy Back
    HIP_CHECK(hipMemcpy(h_results.data(), d_results, results_bytes, hipMemcpyDeviceToHost));

    // Free
    HIP_CHECK(hipFree(d_results));

    // Output
    for (size_t i = 0; i < h_results.size(); ++i) {
        printf("Thread %zu CRC: %lu\n", i, h_results[i]);
    }
    return 0;
}'''

REQUIRED_ANYWHERE_LINES = [
    "uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;",
    "int tid = threadIdx.x + blockIdx.x * blockDim.x;",
    "results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);"
]

def log_decision(status, reason):
    with open(LOG_FILE, "a") as f:
        # DOUBLE braces here so the final script gets proper f-strings
        f.write(f"[{datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}] {status} | {reason}\n")
    print(f"\n>>> FINAL RESULT: {status} | {reason} <<<\n")

def print_step(msg):
    print(f"[*] {msg}")

def run_cmd(cmd, env=None, timeout=15):
    return subprocess.run(cmd, capture_output=True, text=True, timeout=timeout, env=env)

def compile_and_run(step_name, compile_cmd, bin_path, run_env=None):
    # 1. Compile
    c_res = run_cmd(compile_cmd, timeout=COMPILE_TIMEOUT)
    if c_res.returncode != 0:
        print(f"\n[!] Compiler Error ({step_name}):\n{c_res.stderr}\n")
        return False, f"{step_name} Compile Fail", None
        
    # Check if compilation actually produced a file
    if not os.path.exists(bin_path):
        print(f"\n[!] Silent Compiler Failure ({step_name}): Binary not created.\n")
        return False, f"{step_name} Binary Missing", None

    # 2. Run (FIXED: string concatenation instead of f-string to avoid brace errors)
    r_res = run_cmd(["./" + bin_path], env=run_env, timeout=RUN_TIMEOUT)
    
    # 3. Check for Runtime Errors or Sanitizer UB
    out_err = (r_res.stdout + r_res.stderr).lower()
    has_ub = any(keyword in out_err for keyword in ["sanitizer:", "runtime error", "memorysanitizer"])
    
    if r_res.returncode != 0 or has_ub:
        print(f"\n[!] Runtime Error/UB ({step_name}):\n{r_res.stderr}\n{r_res.stdout}\n")
        return False, f"{step_name} Runtime Fail/UB", None
        
    return True, "Success", r_res

def get_checksum(output):
    if not output: return None
    return sorted([line.split(":")[-1].strip() for line in output.split("\n") if "CRC:" in line])

def validate_crcs(vals):
    if not vals: return False
    try:
        int_vals = [int(v) for v in vals]
        # relax not needing to be = 0 as we now maintain essential lines 
        return len(set(int_vals)) == 1
    except: return False

def main():
    SOURCE = "HIPProg.hip"

    if not os.path.exists(SOURCE):
        log_decision("REJECTED", "Source file missing in C-Vise sandbox")
        sys.exit(1)

    if not os.path.exists(PROJECT_INCLUDE):
        log_decision("REJECTED", f"Include folder missing: {PROJECT_INCLUDE}")
        sys.exit(1)

    # Local binaries for the sandbox
    TEST_BIN_ASAN = "test_bin_asan"
    TEST_BIN_UBSAN = "test_bin_ubsan"
    TEST_BIN_MSAN = "test_bin_msan"
    TEST_BIN_CPU_REF = "test_bin_cpu_ref"
    TEST_BIN_REF = "test_bin_ref"
    TEST_BIN_BUG = "test_bin_bug"

    def cleanup_sandbox():
        for f in [TEST_BIN_ASAN, TEST_BIN_UBSAN, TEST_BIN_MSAN, TEST_BIN_CPU_REF, TEST_BIN_REF, TEST_BIN_BUG]:
            if os.path.exists(f):
                try: os.remove(f)
                except: pass

    # Clean up before starting to prevent stale binaries
    cleanup_sandbox()

    try:
        CMD_BASE = [
            "hipcc", "-x", "hip", SOURCE, "-I", PROJECT_INCLUDE, 
            "-Werror=uninitialized", "-Werror=missing-field-initializers", 
            "-Werror=array-bounds", "-Werror=zero-length-array", 
            "-fno-strict-aliasing", "-Wno-c++11-narrowing", "-Wno-unused-value",
            "--offload-arch=native"
        ]

        CPU_BASE = [
            "clang++", "-x", "c++", SOURCE,
            "-I", HIP_CPU_INCLUDE, "-I", PROJECT_INCLUDE,
            "-Wno-c++11-narrowing", "-Wno-unused-value", "-Wno-constant-conversion",
            REF_FLAG, "-g", "-pthread", "-ltbb"
        ]

        # ==========================================
        # PHASE 0: STRICT LINE-BY-LINE DRIVER CHECK
        # ==========================================
        print_step("PHASE 0: Checking strict line-by-line driver integrity...")
        expected_lines = [line.strip() for line in EXPECTED_DRIVER.split('\n') if line.strip()]
        
        with open(SOURCE, "r", encoding="utf-8") as f:
            raw_lines = f.read().split('\n')
            actual_lines = [line.strip() for line in raw_lines if line.strip()]
        
        is_intact = False
        for i in range(len(actual_lines) - len(expected_lines) + 1):
            if actual_lines[i:i+len(expected_lines)] == expected_lines:
                is_intact = True
                break
        
        if not is_intact:
            log_decision("REJECTED", "Driver structure corrupted or modified")
            sys.exit(1)
            
        spaceless_actual = [line.replace(" ", "") for line in actual_lines]
        for req_line in REQUIRED_ANYWHERE_LINES:
            if req_line.replace(" ", "") not in spaceless_actual:
                log_decision("REJECTED", f"Missing required standalone line: {req_line}")
                sys.exit(1)

        # ==========================================
        # PHASE 1: FAST GPU SYNTAX & RUN CHECK
        # ==========================================
        print_step("PHASE 1: Fast GPU Syntax & Run Check")
        
        # Compile & Run Bug
        print_step(f"  -> Testing Bug ({BUG_FLAG})...")
        success, reason, r_bug = compile_and_run(f"Bug {BUG_FLAG}", CMD_BASE + [BUG_FLAG, "-o", TEST_BIN_BUG], TEST_BIN_BUG)
        if not success:
            log_decision("REJECTED", reason)
            sys.exit(1)

        # Compile & Run Ref
        print_step(f"  -> Testing Ref ({REF_FLAG})...")
        success, reason, r_ref = compile_and_run(f"Ref {REF_FLAG}", CMD_BASE + [REF_FLAG, "-o", TEST_BIN_REF], TEST_BIN_REF)
        if not success:
            log_decision("REJECTED", reason)
            sys.exit(1)

        # Compare Mismatch
        print_step("  -> Comparing CRCs...")
        crc_bug = get_checksum(r_bug.stdout)
        crc_ref = get_checksum(r_ref.stdout)
        
        if not validate_crcs(crc_bug) or not validate_crcs(crc_ref):
            print(f"\n[!] Invalid CRCs detected.\nBug CRCs: {crc_bug}\nRef CRCs: {crc_ref}\n")
            log_decision("REJECTED", "Invalid CRCs")
            sys.exit(1)
            
        if crc_bug == crc_ref:
            print(f"\n[!] CRCs match. No bug present.\nCRCs: {crc_bug}\n")
            log_decision("REJECTED", "Bug lost (CRCs match)")
            sys.exit(1)

        print(f"\n[+] Valid Mismatch Found!\n    Bug ({BUG_FLAG}): {crc_bug}\n    Ref ({REF_FLAG}): {crc_ref}\n")

        # ==========================================
        # PHASE 2: HEAVY SANITIZERS & CPU REF (PARALLEL)
        # ==========================================
        print_step("PHASE 2: Heavy Sanitizers & Arch Check (Running in Parallel)...")
        
        # Define tasks for the thread pool
        def task_asan():
            # DOUBLE braces required around dictionary construction in templates
            env = {**os.environ, "ASAN_OPTIONS": "halt_on_error=1:detect_leaks=0"}
            return compile_and_run("ASAN", CPU_BASE + ["-fsanitize=address", "-o", TEST_BIN_ASAN], TEST_BIN_ASAN, env)

        def task_ubsan():
            env = {**os.environ, "UBSAN_OPTIONS": "halt_on_error=1"}
            return compile_and_run("UBSAN", CPU_BASE + ["-fsanitize=undefined", "-o", TEST_BIN_UBSAN], TEST_BIN_UBSAN, env)

        def task_msan():
            env = {**os.environ, "MSAN_OPTIONS": "halt_on_error=1"}
            return compile_and_run("MSAN", CPU_BASE + ["-fsanitize=memory", f"-fsanitize-ignorelist={MSAN_IGNORE_LIST}", "-o", TEST_BIN_MSAN], TEST_BIN_MSAN, env)

        def task_cpu_ref():
            success, reason, r_cpu = compile_and_run("CPU Ref", CPU_BASE + ["-o", TEST_BIN_CPU_REF], TEST_BIN_CPU_REF)
            if not success:
                return False, reason, None
            
            crc_cpu = get_checksum(r_cpu.stdout)
            if crc_cpu != crc_ref:
                # we do not penalise this but we note it
                print(f"\n[!] Architecture Drift Detected.\nCPU CRCs: {crc_cpu}\nGPU Ref CRCs: {crc_ref}\n")
                return True, "Arch Drift (CPU != GPU Ref)", None
            return True, "CPU Ref Clean", None

        # Execute tasks simultaneously
        tasks = [task_asan, task_ubsan, task_msan, task_cpu_ref]
        
        with concurrent.futures.ThreadPoolExecutor(max_workers=4) as executor:
            # Submit all tasks and wait for them to complete
            futures = [executor.submit(task) for task in tasks]
            
            for future in concurrent.futures.as_completed(futures):
                # Unpack the returned tuple from each task
                success, reason, _ = future.result()
                
                if not success:
                    log_decision("REJECTED", reason)
                    sys.exit(1)

        # If it passed everything, it's a valid, clean reduction!
        log_decision("INTERESTING", "Clean Mismatch Found!")
        sys.exit(0)

    except subprocess.TimeoutExpired as e:
        print(f"\n[!] Process Timed Out: {str(e)}\n")
        log_decision("REJECTED", "Timeout")
        sys.exit(1)
    except Exception as e:
        print(f"\n[!] Script Exception: {str(e)}\n")
        log_decision("REJECTED", f"Exception: {str(e)}")
        sys.exit(1)
    finally:
        # Ensure cleanup runs no matter how the script exits
        cleanup_sandbox()

if __name__ == "__main__":
    main()