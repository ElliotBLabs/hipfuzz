#!/usr/bin/env python3
import subprocess
import sys

# We hardcode the exact string we found earlier. 
# I truncated the variable name at the end just in case cvise renames it.
TARGET_ERROR = "clang++: error: unable to execute command: Segmentation fault"

COMMAND = [
    "hipcc", "-x", "hip", "HIPProg_crash_3.hip",
    "-I/homes/eb522/imperial/fyp/HIPSmith/build", "-Werror=uninitialized", "-Werror=array-bounds",
    "-Werror=zero-length-array", "-fno-strict-aliasing",
    "-Wno-c++11-narrowing", "-Wno-unused-value",
    "--offload-arch=native", "-o", "test"
]

def main():
    try:
        result = subprocess.run(
            COMMAND,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            timeout=30
        )
        output = result.stdout + result.stderr

        # Check for our exact, hardcoded error. 
        if TARGET_ERROR in output:
            sys.exit(0) # Bug is here, keep the mutation!
        else:
            sys.exit(1) # Bug is gone, revert the mutation!

    except subprocess.TimeoutExpired:
        sys.exit(1)
    except Exception:
        sys.exit(1)

if __name__ == "__main__":
    main()