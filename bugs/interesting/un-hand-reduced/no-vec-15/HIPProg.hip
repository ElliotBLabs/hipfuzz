#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int64_t g_14;
    uint16_t g_16;
    uint16_t g_2081;
    uint16_t g_42;
    uint16_t *g_41[9][8];
    int32_t g_53;
    int32_t g_80;
    uint32_t g_103;
    uint32_t g_126;
    int32_t *g_132;
    int32_t **g_131[2];
    int8_t g_134;
    uint8_t g_142;
    int64_t g_163;
    int32_t *g_190;
    int32_t *g_193[3];
    uint32_t g_266;
    int8_t *g_308[4][10];
    int16_t g_311;
    uint32_t *g_385;
    uint32_t **g_384[10];
    int32_t *g_410[6];
    int32_t ***g_412[10];
    int32_t ****g_411;
    int64_t g_423;
    int32_t g_457[3];
    uint64_t g_509;
    uint64_t *g_508;
    uint32_t g_512;
    int16_t g_564;
    uint32_t g_579;
    int8_t **g_585[6];
    int8_t ***g_584;
    uint64_t g_669;
    int64_t *g_728;
    int64_t **g_727[6];
    int64_t ***g_726;
    uint32_t ***g_770[5];
    uint32_t ****g_769;
    uint16_t g_832;
    int8_t g_878;
    uint32_t g_987;
    int64_t ****g_994;
    int64_t *****g_993;
    int64_t g_1072;
    uint16_t **g_1099;
    uint8_t g_1103;
    uint32_t g_1318;
    uint64_t g_1460;
    int16_t *g_1477;
    int16_t **g_1476;
    int16_t ***g_1517;
    int16_t ****g_1516;
    uint32_t g_1574;
    int8_t g_1593;
    uint64_t g_1611;
    uint8_t *g_1626;
    uint8_t **g_1625;
    int16_t *****g_1879;
    uint32_t *g_1907;
    uint32_t **g_1906;
    uint64_t g_1909;
    uint8_t *g_1965;
    int32_t *****g_2005;
    int16_t g_2015;
};
__device__ int16_t  func_4(uint32_t  , S0 * );
__device__ int8_t  func_28(uint32_t  , S0 * );__device__ uint64_t  func_1(S0 * p_2260)
{ 
    uint16_t l_6 = 5;
    func_4(l_6, p_2260) ;
    return 0;
}
__device__ int16_t  func_4(uint32_t  p_5, S0 * p_2260)
{
    int i;
        uint32_t l_7[5];        for (i = 0; i < 5; i++)
            l_7[i] = 0;
        for (p_5 = 1; p_5 <= 4; p_5 += 1)
        {
            uint64_t *l_1610 = &p_2260->g_1611;
            *l_1610 |= safe_sub_func_int32_t_s_s((func_28(0, p_2260), l_7[p_5] != p_5), 7)
            ;
        }
    return 0;
}
__device__ int8_t  func_28(uint32_t  p_29, S0 * p_2260)
{
    *p_2260->g_132 |= 9 ;
    return p_29;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_2261;
    S0* p_2260 = &c_2261;
    S0 c_2262 {
        0, 
        8, 
        {}, 
        1, 
        {}, 
        8, 
        7, 
        8, 
        5, 
        &p_2260->g_53, 
        &p_2260->g_132, &p_2260->g_132, 
        4, 
        9, 
        3, 
        &p_2260->g_53, 
        &p_2260->g_53, &p_2260->g_53, &p_2260->g_53, 
        5, 
        {}, 
        0, 
        &p_2260->g_266, 
        &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, &p_2260->g_385, 
        nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, 
        &p_2260->g_131[0], nullptr, &p_2260->g_131[0], nullptr, &p_2260->g_131[0], nullptr, &p_2260->g_131[0], nullptr, &p_2260->g_131[0], nullptr, 
        &p_2260->g_412[6], 
        3, 
        1, 1, 1, 
        6, 
        &p_2260->g_509, 
        6, 
        1, 
        {}, 
        &p_2260->g_308[0][8], &p_2260->g_308[0][8], &p_2260->g_308[0][8], &p_2260->g_308[0][8], &p_2260->g_308[0][8], &p_2260->g_308[0][8], 
        &p_2260->g_585[4], 
        1, 
        &p_2260->g_14, 
        &p_2260->g_728, nullptr, &p_2260->g_728, nullptr, &p_2260->g_728, nullptr, 
        &p_2260->g_727[4], 
        &p_2260->g_384[8], &p_2260->g_384[8], &p_2260->g_384[8], &p_2260->g_384[8], &p_2260->g_384[8], 
        &p_2260->g_770[2], 
        1, 
        0, 
        3, 
        &p_2260->g_726, 
        &p_2260->g_994, 
        {}, 
        &p_2260->g_41[0][6], 
        4, 
        5, 
        3, 
        &p_2260->g_311, 
        &p_2260->g_1477, 
        &p_2260->g_1476, 
        &p_2260->g_1517, 
        7, 
        5, 
        2, 
        &p_2260->g_1103, 
        &p_2260->g_1626, 
        &p_2260->g_1516, 
        &p_2260->g_512, 
        &p_2260->g_1907, 
        6, 
        nullptr, 
        &p_2260->g_411, 
        7};
    c_2261 = c_2262;
    func_1(p_2260);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2260->g_1611, , );
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
