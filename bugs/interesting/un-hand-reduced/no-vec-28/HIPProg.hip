#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int16_t g_2;
    int32_t g_4;
    uint16_t g_60;
    uint32_t g_299;
    uint16_t *g_309;
    uint64_t g_531;
    int8_t **g_602[3][7];
    int32_t g_827;
    int64_t g_1323;
    uint16_t *g_1468;
    int8_t g_1517;
    uint32_t g_1541;
    uint32_t g_1634;
    uint64_t g_1647;
    uint32_t *g_1729;
    uint32_t **g_1728;
    int8_t g_1748;
    uint32_t g_1829;
    int8_t *g_1879;
    int8_t ***g_1881;
    uint32_t g_1928;
};
__device__ int8_t  func_19(uint32_t  , S0 * );
__device__ int32_t  func_23(int32_t * , S0 * );
__device__ int8_t  func_1(S0 * p_2186)
{
    if (func_19(0, p_2186) )
    return 0;
}
__device__ int8_t  func_19(uint32_t  , S0 * p_2186)
{
    int32_t *l_1060 = &p_2186->g_827;
    for (; p_2186->g_2 >= 0; p_2186->g_2 = safe_sub_func_int64_t_s_s(p_2186->g_2, 2))
        func_23(&p_2186->g_4, p_2186);
    return *l_1060;
}
__device__ int32_t  func_23(int32_t * , S0 * p_2186)
{ 
    int32_t l_27[3][2][1] {};
    int64_t l_469[][10][3] {{{}, {}, {}, {}, {}, {}, 1, 2632517275}};
    uint64_t *l_530 = &p_2186->g_531;
    *l_530 |= safe_sub_func_int64_t_s_s(safe_div_func_int32_t_s_s(l_469[0][6][1], l_27[1][0][0]), 0 != *p_2186->g_309)  ;
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_2187;
    S0* p_2186 = &c_2187;
    S0 c_2188 {
        1, 
        1, 
        4, 
        3, 
        &p_2186->g_60, 
        3, 
        {}, 
        2, 
        {}, 
        nullptr, 
        1, 
        9, 
        5, 
        1, 
        nullptr, 
        &p_2186->g_1729, 
        1, 
        {}, 
        nullptr, 
        &p_2186->g_602[0][6], 
        {}};
    c_2187 = c_2188;
    func_1(p_2186);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2186->g_531, , );
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
