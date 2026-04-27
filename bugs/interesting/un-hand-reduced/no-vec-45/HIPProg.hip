#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct U0 {};
struct S1 {
    int32_t **g_110;
    U0 g_178;
    uint32_t g_282[8][9];
    uint32_t *g_431;
    int32_t g_448;
    uint32_t g_525;
    uint32_t *g_532;
    int8_t g_636;
    int8_t *g_656;
    int8_t ****g_655[4];
    uint32_t **g_678;
    uint32_t ***g_677;
    uint8_t g_722;
    int32_t *g_726;
    uint64_t g_793;
    int64_t g_812;
    int64_t *g_811;
    int32_t g_822;
    int32_t g_884;
    int64_t g_885;
    uint32_t g_886;
    int32_t g_907;
    uint64_t g_910;
    int64_t g_921;
    uint16_t g_923;
    int8_t g_930;
    int32_t g_1025;
    int32_t g_1058;
    uint32_t g_1068;
    int8_t *****g_1075;
    int32_t ***g_1111;
    int32_t ****g_1110[9];
    int32_t *****g_1109;
    uint64_t g_1176;
    int32_t g_1187;
    uint32_t g_1330;
    uint8_t g_1440;
    uint32_t g_1502;
    int8_t g_1534;
    int32_t g_1535;
    uint32_t g_1612;
    uint64_t g_1696;
    U0 *g_1729;
    U0 **g_1728;
    uint32_t g_1867;
    int32_t g_1892;
    int32_t g_1943;
    int8_t g_2010;
};
__device__ uint32_t  func_13(int8_t  , uint32_t  , S1 * );
__device__ U0  func_1(S1 * p_2057)
{ 
    uint32_t l_10 = 1;    U0 l_1531 ;    func_13(0, l_10, p_2057) ;
    return l_1531;
}
__device__ uint32_t  func_13(int8_t  p_14, uint32_t  p_15, S1 * p_2057)
{
    **p_2057->g_678 = 0, *p_2057->g_811 |= safe_sub_func_int32_t_s_s(safe_sub_func_uint64_t_u_u(p_2057->g_884 != p_14, 1), 3) ;
    return p_15;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S1 c_2058;
    S1* p_2057 = &c_2058;
    U0 *p_2057_64;
    S1 c_2059 {
        nullptr, 
        {}, 
        {}, 
        &p_2057->g_282[4][3], 
        0, 
        0, 
        &p_2057->g_525, 
        7, 
        nullptr, 
        {}, 
        &p_2057->g_431, 
        &p_2057->g_678, 
        0, 
        &p_2057->g_448, 
        7, 
        7, 
        &p_2057->g_812, 
        0, 
        5, 
        4, 
        2, 
        3, 
        0, 
        7, 
        0, 
        1, 
        4, 
        0, 
        0, 
        &p_2057->g_655[3], 
        &p_2057->g_110, 
        {}, 
        &p_2057->g_1110[2], 
        0, 
        0, 
        5, 
        {}, 
        3, 
        {}, 
        8, 
        0, 
        4073709551606, 
        &p_2057->g_178, 
        &p_2057_64, 
        9, 
        0, 
        {}, 
        5};
    c_2058 = c_2059;
    func_1(p_2057);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2057->g_812, , );
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
