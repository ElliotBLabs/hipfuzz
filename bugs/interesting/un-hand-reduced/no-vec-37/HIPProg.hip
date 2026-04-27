#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   int64_t  f3;
};
struct S2 {
   int32_t  f0;
};
struct S3 {
   int64_t  f1;
};
struct S7 {
    S0 g_95;
    S3 g_194;
    S2 g_363[9][3][9];
    uint64_t g_380;
    int64_t *g_1940;
};
__device__ int32_t  func_1(S7 * p_2202)
{
    int32_t *l_1953 = &p_2202->g_363[0][2][6].f0;
        int32_t l_2183 = 5;
        int32_t l_2192;
        uint64_t *l_2193 = &p_2202->g_380
         ;
        l_2192 = 2794583322, *l_2193 = (l_2192 |= *l_1953 != 0 ^ l_2183) | *p_2202->g_1940 ;
    return p_2202->g_95.f3;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S7 c_2203;
    S7* p_2202 = &c_2203;
    S7 c_2204 {
        2, 
        {}, 
        {}, 
        4073709551615, 
        &p_2202->g_194.f1};
    c_2203 = c_2204;
    func_1(p_2202);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2202->g_380, , );
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
