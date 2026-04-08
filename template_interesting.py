#!/usr/bin/env python3
import subprocess
import sys
import os
import datetime

WORK_DIR = os.getcwd()
LOG_FILE = os.path.join(WORK_DIR, "interestingness.log")
SOURCE = os.path.join(WORK_DIR, "HIPProg.hip")
TEST_BIN_ASAN = os.path.join(WORK_DIR, "test_bin_asan")
TEST_BIN_UBSAN = os.path.join(WORK_DIR, "test_bin_ubsan")
TEST_BIN_MSAN = os.path.join(WORK_DIR, "test_bin_msan")
TEST_BIN_CPU_REF = os.path.join(WORK_DIR, "test_bin_cpu_ref")
TEST_BIN_REF = os.path.join(WORK_DIR, "test_bin_ref")
TEST_BIN_BUG = os.path.join(WORK_DIR, "test_bin_bug")
TIMEOUT = 15

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
HIP_CPU_DIR = os.path.abspath(os.path.join(SCRIPT_DIR, "..", "..", "hip-cpu"))
HIP_CPU_INCLUDE = os.path.join(HIP_CPU_DIR, "include")
MSAN_IGNORE_LIST = os.path.abspath(os.path.join(SCRIPT_DIR, "..", "..", "msan_ignore.txt"))

# SINGLE braces here because we are injecting these from the parent script
CMD_BASE = ["hipcc", "-x", "hip", SOURCE, "-I", "{headers_dir}", "-Werror=uninitialized", "-Werror=missing-field-initializers", "-Werror=array-bounds", "-Werror=zero-length-array", "-fno-strict-aliasing", "-Wno-c++11-narrowing", "-Wno-unused-value","--offload-arch=native"]

CPU_BASE = [
    "clang++", "-x", "c++", SOURCE,
    "-I", HIP_CPU_INCLUDE, "-I", "{headers_dir}",
    "-Wno-c++11-narrowing", "-Wno-unused-value", "-Wno-constant-conversion",
    "-O0", "-g", "-pthread", "-ltbb"
]

# DOUBLE braces in C++ code so they stay as single braces in the final output
EXPECTED_DRIVER = r'''// ------------------------------------------------------------------
// Host Main
// ------------------------------------------------------------------
int main(int argc, const char* argv[]) {{
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
    for (size_t i = 0; i < h_results.size(); ++i)
    printf("Thread %zu CRC: %lu\n", i, h_results[i]);
    return 0;
}}'''

REQUIRED_ANYWHERE_LINES = [
    "uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;",
    "int tid = threadIdx.x + blockIdx.x * blockDim.x;",
    "results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);"
]

def log_decision(status, reason):
    with open(LOG_FILE, "a") as f:
        # DOUBLE braces here so the final script gets proper f-strings
        f.write(f"[{{datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}}] {{status}} | {{reason}}\n")
    print(f"Result: {{status}} | {{reason}}")

def run_cmd(cmd, env=None):
    return subprocess.run(cmd, capture_output=True, text=True, timeout=TIMEOUT, env=env)

def get_checksum(output):
    if not output: return None
    return sorted([line.split(":")[-1].strip() for line in output.split("\n") if "CRC:" in line])

def validate_crcs(vals):
    if not vals: return False
    try:
        int_vals = [int(v) for v in vals]
        return all(v != 0 for v in int_vals) and len(set(int_vals)) == 1
    except: return False

def main():
    try:
        # ==========================================
        # PHASE 0: STRICT LINE-BY-LINE DRIVER CHECK
        # ==========================================
        try:
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
                    log_decision("REJECTED", f"Missing required standalone line: {{req_line}}")
                    sys.exit(1)

        except Exception as e:
            log_decision("REJECTED", f"Failed to read source for integrity check: {{str(e)}}")
            sys.exit(1)

        # ==========================================
        # PHASE 1: FAST GPU SYNTAX & RUN CHECK
        # ==========================================
        
        # 1. Compile & Run Bug
        if os.path.exists(TEST_BIN_BUG): os.remove(TEST_BIN_BUG)
        # SINGLE brace for {bad_flag}
        c_bug = run_cmd(CMD_BASE + ["{bad_flag}", "-o", TEST_BIN_BUG])
        if c_bug.returncode != 0: 
            log_decision("REJECTED", "Bug Compile Fail")
            sys.exit(1)
            
        r_bug = run_cmd([TEST_BIN_BUG])
        if r_bug.returncode != 0:
            log_decision("REJECTED", "Bug Runtime Fail")
            sys.exit(1)

        # 2. Compile & Run Ref
        if os.path.exists(TEST_BIN_REF): os.remove(TEST_BIN_REF)
        # SINGLE brace for {good_flag}
        c_ref = run_cmd(CMD_BASE + ["{good_flag}", "-o", TEST_BIN_REF])
        if c_ref.returncode != 0: 
            log_decision("REJECTED", "Ref Compile Fail")
            sys.exit(1)
            
        r_ref = run_cmd([TEST_BIN_REF])
        if r_ref.returncode != 0:
            log_decision("REJECTED", "Ref Runtime Fail")
            sys.exit(1)

        # 3. Check for actual mismatch
        crc_bug = get_checksum(r_bug.stdout)
        crc_ref = get_checksum(r_ref.stdout)
        
        if not validate_crcs(crc_bug) or not validate_crcs(crc_ref):
            log_decision("REJECTED", "Invalid CRCs")
            sys.exit(1)
            
        if crc_bug == crc_ref:
            log_decision("REJECTED", "Bug lost (CRCs match)")
            sys.exit(1)

        # ==========================================
        # PHASE 2: HEAVY SANITIZERS (UB CHECK)
        # ==========================================
        
        # ASAN
        if os.path.exists(TEST_BIN_ASAN): os.remove(TEST_BIN_ASAN)
        c_asan = run_cmd(CPU_BASE + ["-fsanitize=address", "-o", TEST_BIN_ASAN])
        if c_asan.returncode != 0: log_decision("REJECTED", "ASAN Compile Fail"); sys.exit(1)
        r_asan = run_cmd([TEST_BIN_ASAN], env={{**os.environ, "ASAN_OPTIONS": "halt_on_error=1:detect_leaks=0"}})
        if r_asan.returncode != 0 or "sanitizer:" in (r_asan.stdout + r_asan.stderr).lower(): 
            log_decision("REJECTED", "ASAN Triggered")
            sys.exit(1)

        # UBSAN
        if os.path.exists(TEST_BIN_UBSAN): os.remove(TEST_BIN_UBSAN)
        c_ubsan = run_cmd(CPU_BASE + ["-fsanitize=undefined", "-o", TEST_BIN_UBSAN])
        if c_ubsan.returncode != 0: log_decision("REJECTED", "UBSAN Compile Fail"); sys.exit(1)
        r_ubsan = run_cmd([TEST_BIN_UBSAN], env={{**os.environ, "UBSAN_OPTIONS": "halt_on_error=1"}})
        if r_ubsan.returncode != 0 or "runtime error" in (r_ubsan.stdout + r_ubsan.stderr).lower():
            log_decision("REJECTED", "UBSAN Triggered")
            sys.exit(1)

        # MSAN
        if os.path.exists(TEST_BIN_MSAN): os.remove(TEST_BIN_MSAN)
        # DOUBLE braces for {{MSAN_IGNORE_LIST}} and {{**os.environ...}}
        c_msan = run_cmd(CPU_BASE + ["-fsanitize=memory", f"-fsanitize-ignorelist={{MSAN_IGNORE_LIST}}", "-o", TEST_BIN_MSAN])
        if c_msan.returncode != 0: log_decision("REJECTED", "MSAN Compile Fail"); sys.exit(1)
        r_msan = run_cmd([TEST_BIN_MSAN], env={{**os.environ, "MSAN_OPTIONS": "halt_on_error=1"}})
        if r_msan.returncode != 0 or "memorysanitizer" in (r_msan.stdout + r_msan.stderr).lower():
            log_decision("REJECTED", "MSAN Triggered")
            sys.exit(1)

        # CPU REF CHECK (Arch Drift)
        if os.path.exists(TEST_BIN_CPU_REF): os.remove(TEST_BIN_CPU_REF)
        c_cpu = run_cmd(CPU_BASE + ["-o", TEST_BIN_CPU_REF])
        if c_cpu.returncode != 0: log_decision("REJECTED", "CPU Ref Compile Fail"); sys.exit(1)
        r_cpu = run_cmd([TEST_BIN_CPU_REF])
        crc_cpu = get_checksum(r_cpu.stdout)
        
        if crc_cpu != crc_ref:
            log_decision("REJECTED", "Arch Drift (CPU != GPU Ref)")
            sys.exit(1)

        log_decision("INTERESTING", "Clean Mismatch Found!")
        sys.exit(0)

    except subprocess.TimeoutExpired:
        log_decision("REJECTED", "Timeout")
        sys.exit(1)
    except Exception as e:
        log_decision("REJECTED", f"Exception: {{str(e)}}")
        sys.exit(1)

if __name__ == "__main__":
    main()