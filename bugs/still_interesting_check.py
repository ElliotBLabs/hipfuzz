import os
import subprocess
import sys
import argparse

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

def check_bugs():
    print(f"\n{C_YELLOW}[?] DIAGNOSTIC: Checking compiler resolution...{C_RESET}")
    try:
        # Sanity check of where hipcc is
        diag_res = subprocess.run(
            ["which", "hipcc"], 
            capture_output=True, 
            text=True
        )
        if diag_res.returncode == 0:
            print(f"    -> hipcc resolves to: {C_CYAN}{diag_res.stdout.strip()}{C_RESET}")
            
            # Extra version info for the latest nightly build
            ver_res = subprocess.run(
                ["hipcc", "--version"], 
                capture_output=True, 
                text=True
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
    target_dir = base_path

    still_interesting, no_longer_interesting = 0, []

    print(f"{C_CYAN}[->]{C_RESET} Recursively scanning for HIPProg.hip...")

    # os.walk recursively traverses the directory tree
    for root, dirs, files in os.walk(target_dir):
        if "HIPProg.hip" in files:
            # We found a bug folder! 
            # Clear the 'dirs' list in-place so os.walk stops digging deeper into this path.
            dirs[:] = []
            
            # Use a relative path for a cleaner output log
            folder_display = os.path.relpath(root, target_dir)
            script_path = os.path.join(root, "interestingness", "interesting.py")

            if not os.path.exists(script_path): 
                print(f" {C_YELLOW}?{C_RESET} {folder_display:<30} [MISSING interesting.py]")
                continue

            # Since the venv is validated as active, just use "python3"
            res = subprocess.run(
                ["python3", script_path], 
                cwd=root, 
                capture_output=True, 
                text=True
            )
            
            if res.returncode == 0:
                still_interesting += 1
                print(f" {C_GREEN}✓{C_RESET} {folder_display:<30} [STILL INTERESTING]")
            else:
                no_longer_interesting.append(folder_display)
                print(f" {C_RED}✗{C_RESET} {folder_display:<30} [REPRO FAILED]")
                
                # Debug errors for fails
                print(f"{C_YELLOW}--- DEBUG OUTPUT FOR {folder_display} ---{C_RESET}")
                print(res.stdout)
                print(res.stderr)
                print(f"{C_YELLOW}---------------------------------{C_RESET}")

    print(f"\n{C_BOLD}SUMMARY:{C_RESET}")
    print(f" - Still Reproducing: {C_GREEN}{still_interesting}{C_RESET}")
    print(f" - Likely Fixed     : {C_RED}{len(no_longer_interesting)}{C_RESET}")

if __name__ == "__main__":
    check_bugs()