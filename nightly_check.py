import os
import subprocess
import sys
import argparse
from pathlib import Path


VENV_PATH = "/vol/bitbucket/eb522/rocm-nightly"
VENV_PYTHON = f"{VENV_PATH}/bin/python"
INDEX_URL = "https://rocm.nightlies.amd.com/v2/gfx110X-all/"
BUGS_DIR_NAME = "bugs-of-interest"
LIB_DIR = f"{VENV_PATH}/lib/python3.12/site-packages/_rocm_sdk_core/lib"

# ANSI Colors
C_GREEN, C_RED, C_YELLOW, C_CYAN, C_BOLD, C_RESET = "\033[32m", "\033[31m", "\033[33m", "\033[36m", "\033[1m", "\033[0m"

def run_command(cmd, description, cwd=None):
    print(f"{C_CYAN}[->]{C_RESET} {description}...")
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, cwd=cwd)
        if result.returncode != 0:
            print(f"{C_RED}[!] Error during {description}:{C_RESET}\n{result.stderr}")
            return False
        return True
    except Exception as e:
        print(f"{C_RED}[!] Exception during {description}: {e}{C_RESET}")
        return False

def update_rocm():
    print(f"{C_BOLD}PHASE 1: Updating ROCm Nightly Environment{C_RESET}")
    if not run_command([VENV_PYTHON, "-m", "pip", "install", "--upgrade", "pip"], "Upgrading Pip"):
        return False

    install_cmd = [
        VENV_PYTHON, "-m", "pip", "install", 
        "--force-reinstall", 
        "--index-url", INDEX_URL, 
        "rocm[libraries,devel]"
    ]
    return run_command(install_cmd, "Force-reinstalling ROCm packages")

def fix_symlink():
    print(f"\n{C_BOLD}PHASE 2: Applying Library Fixes{C_RESET}")
    target_lib = os.path.join(LIB_DIR, "libamdhip64.so.7")
    link_name = os.path.join(LIB_DIR, "libamdhip64.so")

    if not os.path.exists(target_lib):
        print(f"{C_RED}[!] Missing {target_lib}. Installation might have failed.{C_RESET}")
        return False

    if os.path.exists(link_name):
        os.remove(link_name)

    try:
        os.symlink("libamdhip64.so.7", link_name)
        print(f"{C_GREEN}[✓]{C_RESET} Symlinked libamdhip64.so.7 -> libamdhip64.so")
        return True
    except Exception as e:
        print(f"{C_RED}[!] Symlink failed: {e}{C_RESET}")
        return False

def check_bugs():
    custom_env = os.environ.copy()
    custom_env["PATH"] = f"{VENV_PATH}/bin:" + custom_env.get("PATH", "")
    custom_env["LD_LIBRARY_PATH"] = f"{LIB_DIR}:" + custom_env.get("LD_LIBRARY_PATH", "")

    print(f"{C_YELLOW}[?] DIAGNOSTIC: Checking compiler resolution...{C_RESET}")
    try:
        # sanity check of where hipcc is
        diag_res = subprocess.run(
            ["which", "hipcc"], 
            capture_output=True, 
            text=True,
            env=custom_env 
        )
        if diag_res.returncode == 0:
            print(f"    -> hipcc resolves to: {C_CYAN}{diag_res.stdout.strip()}{C_RESET}")
            
            # extra version info for the latest nightly build
            ver_res = subprocess.run(
                ["hipcc", "--version"], 
                capture_output=True, 
                text=True,
                env=custom_env 
            )
            if ver_res.returncode == 0:
                print(f"    -> Version info:")
                for line in ver_res.stdout.strip().split('\n'):
                    if line.strip():
                        print(f"       {C_CYAN}{line.strip()}{C_RESET}")
            else:
                print(f"    -> {C_RED}[!] Failed to get version info. Error:{C_RESET}")
                print(f"       {ver_res.stderr.strip()}")

        else:
            print(f"    -> {C_RED}[!] 'hipcc' not found in PATH!{C_RESET}")
            print(f"       Debug info: {diag_res.stderr.strip()}")
    except Exception as e:
         print(f"    -> {C_RED}Diagnostic error: {e}{C_RESET}")
    print(f"\n{C_BOLD}PHASE 3: Running Bug Regression Check{C_RESET}")
    base_path = os.getcwd()
    target_dir = os.path.join(base_path, BUGS_DIR_NAME)

    if not os.path.exists(target_dir):
        print(f"{C_RED}[!] Error: {BUGS_DIR_NAME} not found.{C_RESET}")
        return

    # for each bug check if interesting
    bug_folders = [f for f in os.listdir(target_dir) if os.path.isdir(os.path.join(target_dir, f))]
    still_interesting, no_longer_interesting = 0, []

    for folder in sorted(bug_folders):
        folder_path = os.path.join(target_dir, folder)
        script_path = os.path.join(folder_path, "interestingness", "interesting.py")

        if not os.path.exists(script_path): continue

        res = subprocess.run(
            [VENV_PYTHON, script_path], 
            cwd=folder_path, 
            capture_output=True, 
            text=True,
            env=custom_env 
        )
        
        if res.returncode == 0:
            still_interesting += 1
            print(f" {C_GREEN}✓{C_RESET} {folder:<30} [STILL INTERESTING]")
        else:
            no_longer_interesting.append(folder)
            print(f" {C_RED}✗{C_RESET} {folder:<30} [REPRO FAILED]")
            # debug errors for fails if needed
            # print(f"{C_YELLOW}--- DEBUG OUTPUT FOR {folder} ---{C_RESET}")
            # print(res.stdout)
            # print(res.stderr)
            # print(f"{C_YELLOW}---------------------------------{C_RESET}")

    print(f"\n{C_BOLD}SUMMARY:{C_RESET}")
    print(f" - Still Reproducing: {C_GREEN}{still_interesting}{C_RESET}")
    print(f" - Likely Fixed     : {C_RED}{len(no_longer_interesting)}{C_RESET}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="ROCm Nightly Maintenance")
    parser.add_argument("--skip-update", action="store_true", help="Skip the reinstall and symlink repair phase")
    args = parser.parse_args()

    success = True
    if not args.skip_update:
        if update_rocm():
            success = fix_symlink()
        else:
            success = False
    else:
        print(f"{C_YELLOW}[!] Skipping update/repair phase.{C_RESET}")

    if success:
        check_bugs()
    else:
        print(f"{C_RED}Maintenance failed. Skipping bug checks.{C_RESET}")