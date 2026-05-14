import subprocess
import time
import sys
import os
import shutil
import json
import re
import glob
import stat
import multiprocessing
import traceback
from datetime import datetime

TEST_SCRIPT = "hip_test.py"
GENERATOR_BIN = "HIPSmith"
TEMP_WORK_DIR = "temp_fuzz_work"
STATE_FILE = "fuzzer_state.json"

REDUCTION_DIR = "reductions"  
BUGS_DIR = "temp_bugs"            
COMPILER_ERRORS_DIR = "compiler_errors"
ERR_OTHER_DIR = "other_errors"
TOTAL_CORES = 16
CREDUCE_THREADS = 4
MAX_CONCURRENT_REDUCTIONS =2

MAX_CONCURRENT_FUZZERS = 0

# SCRIPT_DIR is your root directory (/hipfuzz/)
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

REQUIRED_FUZZING_FILES = [
    TEST_SCRIPT,
    GENERATOR_BIN,
    "csmith.h",
    "safe_math_macros.h",
    "HIPSmith.h"
]

# ANSI Colors
C_RESET  = "\033[0m"
C_GREEN  = "\033[32m"
C_YELLOW = "\033[33m"
C_CYAN   = "\033[36m"
C_RED    = "\033[31m"
C_BOLD   = "\033[1m"
C_GRAY   = "\033[90m"

default_state = {
    "runs": 0,
    "matches": 0,
    "mismatches": 0,
    "timeouts": 0,
    "err_gen": 0,
    "err_compile": 0,
    "err_memory": 0,
    "err_other": 0,
    "total_time": 0.0
}

state = default_state.copy()
start_time = time.time()
last_match_dir = None


# --- UTILS ---

def load_state():
    global state
    if os.path.exists(STATE_FILE):
        try:
            with open(STATE_FILE, 'r') as f:
                loaded = json.load(f)
                for k, v in default_state.items():
                    if k not in loaded:
                        loaded[k] = v
                state = loaded
        except Exception:
            pass

def save_state():
    try:
        current_session = time.time() - start_time
        save_data = state.copy()
        save_data["total_time"] += current_session
        with open(STATE_FILE, 'w') as f:
            json.dump(save_data, f, indent=4)
    except Exception:
        pass

def safe_cleanup(path):
    if not os.path.exists(path): return
    try: shutil.rmtree(path)
    except OSError:
        time.sleep(0.5)
        try: shutil.rmtree(path, ignore_errors=True)
        except: pass

def get_file_size(path):
    try: return os.path.getsize(path)
    except: return 0

def format_size(bytes_val):
    if bytes_val < 1024: return f"{bytes_val} B"
    return f"{bytes_val / 1024:.1f} KB"

def format_time(seconds):
    if seconds is None: return "--:--"
    m, s = divmod(int(seconds), 60)
    h, m = divmod(m, 60)
    return f"{h:02d}:{m:02d}:{s:02d}"

def setup_isolated_env(run_id):
    work_dir = os.path.join(TEMP_WORK_DIR, f"job_{run_id}_{int(time.time()*1000)}")
    if os.path.exists(work_dir): safe_cleanup(work_dir)
    os.makedirs(work_dir)
    
    hipsmith_source_dir = os.path.join(SCRIPT_DIR, "HIPSmith")
    if os.path.exists(hipsmith_source_dir):
        for item in os.listdir(hipsmith_source_dir):
            s = os.path.join(hipsmith_source_dir, item)
            d = os.path.join(work_dir, item)
            if os.path.isdir(s):
                shutil.copytree(s, d)
            else:
                shutil.copy2(s, d) 
    return work_dir

def parse_mismatch_details(output):
    fail_match = re.search(r"HIP\s+(-O\d|-Os|-Oz)\s+\|\s+MISMATCH", output)
    pass_match = re.search(r"HIP\s+(-O\d|-Os|-Oz)\s+\|\s+PASS", output)
    if not fail_match or not pass_match: return "unknown", "unknown"
    return fail_match.group(1).strip(), pass_match.group(1).strip()


def run_fuzz_cycle(run_id):
    work_dir = setup_isolated_env(run_id)
    result = {
        "task_type": "fuzz",
        "run_id": run_id,
        "status": "error",
        "work_dir": work_dir,
        "output": "",
        "bad_flag": None,
        "good_flag": None
    }

    try:
        res = subprocess.run([sys.executable, TEST_SCRIPT], cwd=work_dir, capture_output=True, text=True, timeout=60)
        output = res.stdout + res.stderr
        result["output"] = output

        with open(os.path.join(work_dir, "original_output.txt"), "w") as f:
            f.write(output)

        if "illegal memory access" in output.lower() or "segmentation fault" in output.lower():
            result["status"] = "err_memory"
        elif "MISMATCH" in output:
            result["status"] = "mismatch"
            result["bad_flag"], result["good_flag"] = parse_mismatch_details(output)
        elif "GENERATION FAILED" in output: result["status"] = "err_gen"
        elif "InternalCompilerError" in output: result["status"] = "err_compile"
        elif "TIMEOUT" in output: result["status"] = "timeout"
        elif "PASS" in output or "MATCH" in output: result["status"] = "match"
        else: result["status"] = "err_other"

    except subprocess.TimeoutExpired as e:
        result["output"] += f"\n[!] Process killed after 20 seconds: {str(e)}"
        result["status"] = "timeout"

    except Exception as e:
        result["output"] += str(e)
        result["status"] = "err_other"

    return result


# --- REDUCER GENERATOR & WORKER ---
def generate_interestingness_test(work_dir, good_flag, bad_flag):
    # Ensure it writes into the 'interestingness' subfolder of the work_dir
    script_path = os.path.join(work_dir, "interestingness", "interesting.py")
    
    # Just in case the copy step missed the folder, make sure it exists
    os.makedirs(os.path.dirname(script_path), exist_ok=True)
    
    # Point headers_dir to the include folder inside the reduction directory
    headers_dir = os.path.join(os.path.abspath(work_dir), "include")
    
    # Read the template from your root directory (hipfuzz)
    template_path = os.path.join(work_dir, "interestingness", "template_interesting.py")
    
    with open(template_path, "r", encoding="utf-8") as f:
        template_content = f.read()
        
    content = template_content.format(
        headers_dir=headers_dir,
        good_flag=good_flag,
        bad_flag=bad_flag
    )
    
    with open(script_path, "w", encoding="utf-8") as f: 
        f.write(content)
        
    st = os.stat(script_path)
    os.chmod(script_path, st.st_mode | stat.S_IEXEC)
    
    return script_path


def run_reduction_task(job_name, work_dir, bad_flag, good_flag, status_dict):
    abs_work_dir = os.path.abspath(work_dir)
    target_file = os.path.join(abs_work_dir, "HIPProg.hip")
    log_file = os.path.join(abs_work_dir, "reduction_manager.log")

    status_dict[job_name] = {**status_dict[job_name], "status": "Sanity Check"}

    with open(log_file, "a") as log_f:
        try:
            src_interesting = os.path.join(SCRIPT_DIR, "interestingness")
            dest_interesting = os.path.join(abs_work_dir, "interestingness")
            if os.path.exists(dest_interesting): safe_cleanup(dest_interesting)
            shutil.copytree(src_interesting, dest_interesting)

            # 2. Compile drivers using the GENERATED driver and local headers
            driver_src = os.path.join(abs_work_dir, "HIP-driver.cpp") 
            driver_gpu_o = os.path.join(abs_work_dir, "driver_gpu.o")
            driver_cpu_o = os.path.join(abs_work_dir, "driver_cpu.o")
            
            hip_cpu_include = os.path.join(dest_interesting, "hip-cpu", "include") 
            
            cmd_gpu = ["hipcc", "-c", driver_src, "-o", driver_gpu_o, "--offload-arch=native"]
            cmd_cpu = ["clang++", "-c", driver_src, "-o", driver_cpu_o, f"-I{hip_cpu_include}"]
            
            subprocess.run(cmd_gpu, stdout=log_f, stderr=log_f, check=True)
            subprocess.run(cmd_cpu, stdout=log_f, stderr=log_f, check=True)

            # 3. Generate interesting.py from the copied template
            generate_interestingness_test(abs_work_dir, good_flag, bad_flag)

            # 4. Sanity check: Call the script from its new path
            sanity = subprocess.run(["./interestingness/interesting.py"], cwd=abs_work_dir, capture_output=True, text=True)
            if sanity.returncode != 0:
                reason = "Sanity Failed"
                for line in sanity.stdout.splitlines():
                    if "Result:" in line:
                        reason = line.replace("Result: ", "").strip()
                        break
                status_dict[job_name] = {**status_dict[job_name], "status": f"Fail: {reason[:20]}"}
                return {"task_type": "reduce", "job_name": job_name, "success": False}

            status_dict[job_name] = {**status_dict[job_name], "status": "Reducing..."}
            
            # 5. C-Reduce: Point to the script in the interestingness folder
            cmd = ["cvise", "-n", str(CREDUCE_THREADS), "./interestingness/interesting.py", "HIPProg.hip"]
            
            proc = subprocess.run(cmd, cwd=abs_work_dir, stdout=log_f, stderr=log_f)

            if proc.returncode == 0:         
                # MOVE COMPLETED BUG TO ./bugs DIRECTORY
                target_bug_dir = os.path.abspath(os.path.join(BUGS_DIR, job_name))
                if os.path.exists(target_bug_dir): 
                    safe_cleanup(target_bug_dir)
                shutil.move(abs_work_dir, target_bug_dir)

                final_size = get_file_size(os.path.join(target_bug_dir, "HIPProg.hip"))
                status_dict[job_name] = {**status_dict[job_name], "status": "Done (Saved to ./temp_bugs)", "end_time": time.time(), "curr_size": final_size}
                
                return {"task_type": "reduce", "job_name": job_name, "success": True}
            else:
                status_dict[job_name] = {**status_dict[job_name], "status": "C-Vise Error"}
                return {"task_type": "reduce", "job_name": job_name, "success": False}

        except Exception as e:
            log_f.write("\n=========================================\n")
            log_f.write(f"[!] FATAL PYTHON EXCEPTION IN REDUCTION:\n")
            log_f.write(traceback.format_exc())
            log_f.write("=========================================\n")
            
            status_dict[job_name] = {**status_dict[job_name], "status": "Exception Occurred"}
            return {"task_type": "reduce", "job_name": job_name, "success": False}


# --- DASHBOARD ---

def print_dashboard(active_fuzzers, active_reducers, reduction_queue, status_dict):
    current_session = time.time() - start_time
    total_elapsed = state["total_time"] + current_session
    speed = state['runs'] / total_elapsed if total_elapsed > 1 else 0.0

    # Format the Fuzzer Status String
    fuzz_status = f"{active_fuzzers} / {MAX_CONCURRENT_FUZZERS}"

    out = []
    
    out.append("==========================================================================================")
    out.append(f"{C_BOLD}   HIPSMITH CONTINUOUS FUZZ & REDUCE PIPELINE{C_RESET}")
    out.append("==========================================================================================")
    out.append(f" Time Elapsed : {format_time(total_elapsed)} | Total Runs: {state['runs']} | Speed: {speed:.1f}/s")
    out.append(f" Fuzz Workers : {fuzz_status}")
    out.append("------------------------------------------------------------------------------------------")
    out.append(f" [✓] Matches  : {state['matches']:<6} | [X] Mismatches : {state['mismatches']:<6} | [T] Timeouts : {state['timeouts']}")
    out.append(f" [!] Errors   : Gen={state['err_gen']} Comp={state['err_compile']} Mem={state['err_memory']} Other={state['err_other']}")
    out.append("==========================================================================================")
    out.append(f"{C_BOLD} REDUCTION QUEUE  (Active: {active_reducers}/{MAX_CONCURRENT_REDUCTIONS} | Queued: {len(reduction_queue)}){C_RESET}")
    out.append("-" * 90)
    out.append(f"{'JOB ID':<25} | {'ORIG':<8} | {'CURR':<8} | {'RED %':<6} | {'TIME':<8} | {'STATUS'}")
    out.append("-" * 90)

    for k in sorted(status_dict.keys()):
        info = status_dict[k]
        status_str = info['status']
        
        if "Reducing" in status_str:
            job_path = os.path.join(REDUCTION_DIR, k, "HIPProg.hip")
            curr_size = get_file_size(job_path)
            info['curr_size'] = curr_size
            if info['orig_size'] > 0:
                info['percent'] = (1 - (curr_size / info['orig_size'])) * 100
        
        if "Done" in status_str: color = C_GREEN
        elif "Reducing" in status_str: color = C_YELLOW
        elif "Queued" in status_str: color = C_GRAY
        elif "Fail" in status_str or "Exception" in status_str or "Error" in status_str: color = C_RED
        else: color = C_CYAN

        time_str = "--:--"
        if info['start_time']:
            if "Done" in status_str and "end_time" in info:
                time_str = format_time(info['end_time'] - info['start_time'])
            else:
                time_str = format_time(time.time() - info['start_time'])

        out.append(f"{k[:25]:<25} | {format_size(info['orig_size']):<8} | {format_size(info['curr_size']):<8} | {info['percent']:5.1f}% | {time_str:<8} | {color}{status_str[:30]}{C_RESET}")

    if not status_dict and not reduction_queue:
        out.append(f"{C_GRAY} No bugs currently found or queued.{C_RESET}")

    out.append("==========================================================================================")
    
    full_output = "\033[H\033[J" + "\n".join(out)
    
    sys.stdout.write(full_output + "\n")
    sys.stdout.flush()


def main():
    global state, start_time, last_match_dir

    if sys.stdout.isatty(): subprocess.run("clear", shell=True)
    load_state()
    start_time = time.time()

    for d in [REDUCTION_DIR, TEMP_WORK_DIR, BUGS_DIR]:
        os.makedirs(d, exist_ok=True)
        if d == TEMP_WORK_DIR:
            safe_cleanup(TEMP_WORK_DIR)
            os.makedirs(TEMP_WORK_DIR)

    multiprocessing.set_start_method('spawn', force=True)
    manager = multiprocessing.Manager()
    reducer_status = manager.dict()
    
    pool = multiprocessing.Pool(processes=TOTAL_CORES)

    active_fuzz_tasks = []
    active_reduce_tasks = []
    reduction_queue = []

    candidates = glob.glob(os.path.join(REDUCTION_DIR, "*mismatch*"))
    for d in candidates:
        if not os.path.isdir(d): continue
        if not os.path.exists(os.path.join(d, "REDUCTION_COMPLETE")):
            bad_flag, good_flag = "unknown", "unknown"
            meta = os.path.join(d, "metadata.json")
            if os.path.exists(meta):
                try:
                    with open(meta) as f: data = json.load(f)
                    bad_flag, good_flag = data.get("bad_flag", "error"), data.get("good_flag", "error")
                except: pass
            
            job_name = os.path.basename(d)
            reduction_queue.append((job_name, d, bad_flag, good_flag))
            reducer_status[job_name] = {
                "status": "Queued", "start_time": None, "orig_size": get_file_size(os.path.join(d, "HIPProg.hip")),
                "curr_size": 0, "percent": 0.0
            }

    print("\033[2J", end="")

    try:
        while True:
            # --- PROCESS FINISHED TASKS ---
            still_running_fuzz = []
            for res in active_fuzz_tasks:
                if res.ready():
                    try:
                        data = res.get()
                        st = data["status"]
                        if st == "mismatch":
                            state["mismatches"] += 1
                            
                            job_name = f"job_{data['run_id']}_{int(time.time()*1000)}_mismatch"
                            saved_dir = os.path.join(REDUCTION_DIR, job_name)
                            
                            # move entire dir
                            shutil.move(data["work_dir"], saved_dir)
                            
                            # 3. Write metadata
                            meta_info = {
                                "run_id": data["run_id"], "bad_flag": data["bad_flag"],
                                "good_flag": data["good_flag"], "archived_at": time.time()
                            }
                            with open(os.path.join(saved_dir, "metadata.json"), "w") as f:
                                json.dump(meta_info, f, indent=4)
                            reduction_queue.append((job_name, saved_dir, data["bad_flag"], data["good_flag"]))
                            reducer_status[job_name] = {
                                "status": "Queued", 
                                "start_time": None, 
                                "orig_size": get_file_size(os.path.join(saved_dir, "HIPProg.hip")),
                                "curr_size": 0, 
                                "percent": 0.0
                            }
                            # 4. Clean up the messy fuzzer work directory
                            safe_cleanup(data["work_dir"])

                        elif st == "match": state["matches"] += 1; safe_cleanup(data["work_dir"])
                        elif st == "timeout": state["timeouts"] += 1; safe_cleanup(data["work_dir"])
                        elif st == "err_gen": state["err_gen"] += 1; safe_cleanup(data["work_dir"])
                        elif st == "err_compile":
                            state["err_compile"] += 1
                            
                            # 1. Create a safe place for the evidence
                            job_name = f"job_{data['run_id']}_{int(time.time()*1000)}_err_gen"
                            saved_dir = os.path.join(COMPILER_ERRORS_DIR, job_name)
                            
                            # 2. Move the directory instead of destroying it
                            shutil.move(data["work_dir"], saved_dir)
                            
                            # 3. Explicitly write the Python error output to a log file
                            with open(os.path.join(saved_dir, "CRASH_LOG.txt"), "w") as f:
                                f.write(data["output"])

                        elif st == "err_memory": state["err_memory"] += 1; safe_cleanup(data["work_dir"])
                        else:
                            state["err_other"] += 1
                            job_name = f"job_{data['run_id']}_{int(time.time()*1000)}_err_gen"
                            saved_dir = os.path.join(ERR_OTHER_DIR, job_name)
                            
                            # 2. Move the directory instead of destroying it
                            shutil.move(data["work_dir"], saved_dir)
                            
                            # 3. Explicitly write the Python error output to a log file
                            with open(os.path.join(saved_dir, "CRASH_LOG.txt"), "w") as f:
                                f.write(data["output"])
                    except Exception as e:
                        pass
                    save_state()
                else:
                    still_running_fuzz.append(res)
            active_fuzz_tasks = still_running_fuzz

            still_running_reduce = []
            for res in active_reduce_tasks:
                if res.ready():
                    try: res.get() 
                    except: pass
                else:
                    still_running_reduce.append(res)
            active_reduce_tasks = still_running_reduce

            # --- LAUNCH NEW REDUCTIONS ---
            while len(active_reduce_tasks) < MAX_CONCURRENT_REDUCTIONS and reduction_queue:
                job_name, work_dir, bad_flag, good_flag = reduction_queue.pop(0)
                
                curr_info = reducer_status[job_name]
                curr_info["status"] = "Initializing"
                curr_info["start_time"] = time.time()
                reducer_status[job_name] = curr_info

                res = pool.apply_async(run_reduction_task, (job_name, work_dir, bad_flag, good_flag, reducer_status))
                active_reduce_tasks.append(res)

            # --- LAUNCH NEW FUZZERS (WITH BACKLOG LIMITER) ---
            while len(active_fuzz_tasks) < MAX_CONCURRENT_FUZZERS:
                state["runs"] += 1
                res = pool.apply_async(run_fuzz_cycle, (state["runs"],))
                active_fuzz_tasks.append(res)

            # --- UPDATE DASHBOARD ---
            print_dashboard(len(active_fuzz_tasks), len(active_reduce_tasks), reduction_queue, reducer_status)
            time.sleep(0.5)

    except KeyboardInterrupt:
        print(f"\n\n{C_RED}[!] User Interrupted. Stopping workers...{C_RESET}")
        pool.terminate()
        pool.join()
        save_state()
        print(f"[!] Cleaning up {TEMP_WORK_DIR}...")
        safe_cleanup(TEMP_WORK_DIR)
        print(f"{C_GREEN}[✓] Done.{C_RESET}")

if __name__ == "__main__":
    main()