#include <hip/hip_runtime.h>
#include "safe_math_macros.h"

#define HIP_CHECK(expression)                                               \
  {                                                                         \
    const hipError_t err = expression;                                      \
    if (err != hipSuccess) {                                                \
      fprintf(stderr, "HIP error: %s at %d\n", hipGetErrorString(err),      \
              __LINE__);                                                    \
      exit(EXIT_FAILURE);                                                   \
    }                                                                       \
  }

struct S0 {
    int32_t g_10;
    int32_t g_66;
    int32_t g_70;
    int16_t g_7571;
    int32_t g_81;
    int32_t *g_93;
    int32_t **g_92;
    int32_t ***g_91;
    int32_t ****g_90[3][1][5];
    uint32_t g_103;
    int32_t g_113;
    int32_t g_127;
    uint64_t g_132;
    int16_t g_139;
    int32_t g_148;
    int64_t g_158;
    uint16_t g_169;
    uint16_t g_170;
    uint16_t g_173;
    uint8_t g_203;
    int64_t **g_266;
    int32_t g_303;
    uint64_t *g_315;
    uint64_t g_314;
    int32_t g_337[9][8][3];
    int16_t g_354;
    int64_t g_368;
    uint32_t g_377;
    int8_t g_500;
    uint64_t g_536;
    int32_t g_623;
    int16_t *g_649[7];
    int16_t **g_648;
    int64_t *g_735;
    int64_t g_778;
    int16_t ***g_843;
    int16_t ****g_842;
    uint32_t g_1038;
    int32_t g_1040;
    uint64_t g_1045;
    uint64_t ***g_1124;
    uint64_t ****g_1123;
    uint64_t g_1122;
    uint16_t g_1145;
    int32_t g_1146;
    int32_t g_1147;
    int32_t g_1148;
    uint64_t g_12218103;
    int32_t g_1222;
    int32_t g_1295;
    uint8_t g_1296;
    int32_t *****g_1335;
    int8_t g_1406;
    int8_t *g_1405[5][9];
    int8_t **g_1404;
    uint32_t g_1468;
    uint32_t g_1490;
    int32_t *g_1515;
    uint32_t *g_1587;
    uint32_t **g_1586;
    int16_t g_1646;
    int32_t *g_1704;
    uint8_t g_1721;
    uint8_t *g_1736;
    uint8_t **g_1735;
    int32_t **g_1866;
    uint8_t g_1952;
    int64_t *g_1998;
    int64_t g_1997;
    int8_t ***g_2040;
    int8_t ****g_2039;
    int8_t *****g_2038;
    int16_t g_2048;
    uint32_t ***g_2066;
    uint32_t ****g_2065;
    uint16_t *g_2105;
    uint8_t **g_2138;
    int64_t ***g_2163;
    int64_t ****g_2162;
};
__device__ uint32_t  func_34(uint16_t  , S0 * );

__device__ uint32_t  func_1(S0 * p_2166)
{ 
    int64_t *l_534 = &p_2166->g_368;
    if (*l_534 = safe_div_func_int64_t_s_s(safe_unary_minus_func_uint32_t_u(func_34(p_2166->g_10, p_2166)), p_2166->g_354) )
    return **p_2166->g_1586;
}
__device__ uint32_t  func_34(uint16_t  p_35, S0 * p_2166)
{
    int i;
    for (i = 0; i < 6; i++)
    *p_2166->g_315 = p_35;
    return p_35;
}

__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_2167;
    S0* p_2166 = &c_2167;
    S0 c_2168 {
        3, 
        0, 
        2, 
        {}, 
        1, 
        nullptr, 
        &p_2166->g_93, 
        &p_2166->g_92, 
        {}, 
        2, 
        3, 
        3, 
        5, 
        0, 
        6, 
        1, 
        0, 
        7, 
        7, 
        1, 
        nullptr, 
        0, 
        &p_2166->g_132, 
        {}, 
        {}, 
        1, 
        5, 
        5, 
        1, 
        4, 
        1, 
        {}, 
        &p_2166->g_649[6], 
        nullptr, 
        7, 
        &p_2166->g_648, 
        &p_2166->g_843, 
        4073709551615, 
        0, 
        6, 
        nullptr, 
        &p_2166->g_1124, 
        {}, 
        1, 
        0, 
        {}, 
        {}, 
        {}, 
        1, 
        3, 
        2, 
        &p_2166->g_90[0][0][3], 
        0, 
        {}, 
        &p_2166->g_1405[3][7], 
        {}, 
        4, 
        &p_2166->g_337[5][3][0], 
        &p_2166->g_1490, 
        &p_2166->g_1587, 
        8, 
        &p_2166->g_10, 
        7, 
        nullptr, 
        &p_2166->g_1736, 
        &p_2166->g_1515, 
        {}, 
        &p_2166->g_778, 
        {}, 
        &p_2166->g_1404, 
        &p_2166->g_2040, 
        &p_2166->g_2039, 
        0, 
        &p_2166->g_1586, 
        &p_2166->g_2066, 
        nullptr, 
        &p_2166->g_1736, 
        &p_2166->g_266, 
        &p_2166->g_2163};
    c_2167 = c_2168;
    func_1(p_2166);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_2166->g_368;
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
    for (size_t i = 0; i < h_results.size(); ++i)
    printf("Thread %zu CRC: %lu\n", i, h_results[i]);
    return 0;
}
