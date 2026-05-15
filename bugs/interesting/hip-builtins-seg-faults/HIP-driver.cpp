// ------------------------------------------------------------------
// Host Main
// ------------------------------------------------------------------
#include <hip/hip_runtime.h>
#include <iostream>
#include <cstdint>
#include <cstdio>
#include <vector>
#include "HIPSmith.h"
extern __global__ void hipsmith_kernel(uint64_t *results);

int main(int argc, const char* argv[]) {
    // argc should be 1 so block size=1 enforced due to using HIP's managed memory OR HIP device memory OR hip builtins like threadID
    const unsigned int num_threads = argc;
    // argc should be 1 so block size=1 enforced due to using HIP's shared memory, device memory or managed memory OR hip builtins like threadID
    const unsigned int block_size = argc;
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
}
