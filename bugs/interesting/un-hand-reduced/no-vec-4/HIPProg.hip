#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int64_t g_460;
    int64_t *g_1125;
    uint64_t g_2225;
};
__device__ int16_t  func_1(S0 * p_2918)
{
    int i, j;
            uint16_t l_2713[6][1];
            int32_t l_2731 = 26;
            for (i = 0; i < 6; i++)
                for (j = 0; j < 1; j++)
                    l_2713[i][j] = 5;
            p_2918->g_2225 = *p_2918->g_1125 | ~l_2731 ^ l_2713[0][0] ;
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_2919;
    S0* p_2918 = &c_2919;
    S0 c_2920 {
        5, 
        &p_2918->g_460, 
        0 
        };
    c_2919 = c_2920;
    func_1(p_2918);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2918->g_2225, , )
    ;
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}
// ------------------------------------------------------------------
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
}
