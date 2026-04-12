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
  
struct S1 {
   unsigned f0 ;
   signed f1 ;
   signed f2 ;
   unsigned f3 ;
   uint32_t  f4;
   signed f5 ;
   unsigned f6 ;
   unsigned f7 ;
   signed f8 ;
};
struct S2 {   int16_t  f1;   int64_t  f5;};
struct S3 {   int8_t  f5;};
struct S4 {
   S1  f2;
};
struct U6 {
   uint16_t  f0;
};
struct S7 {
    uint32_t g_20;
    uint8_t g_47;
    uint8_t g_59[6];
    uint8_t *g_58;
    S4 g_63;
    int32_t g_68[6];
    S2 g_92;
    S2 *g_91;
    U6 g_100;
    S3 g_124;
    int32_t *g_151;
    int32_t **g_150;
    int16_t *g_157;
    uint64_t g_184;
    uint16_t *g_192;
    int8_t *g_201;
    int g_214[3][1];
    uint16_t g_278;
    S4 **g_339;
    S1 g_345[10];
    U6 g_419;
    U6 g_418;
    int8_t g_453;
    uint32_t g_456;
    int32_t g_474;
    uint8_t g_561;
    int32_t g_600;
    int32_t g_601;
    uint64_t g_602;
    uint64_t g_609;
    int *g_770[6][3];
    S4 ***g_810;
    S4 ****g_809;
    int **g_906;
    S4 g_988;
    S3 g_1044;
    S2 **g_1050;
    S2 ***g_1049;
    int32_t *g_1132;
    uint32_t *g_1162;
    int16_t g_1187;
    S2 ****g_1203;
    S2 g_1202;
    S2 **g_1247[3][9][5];
    S2 ***g_1246;
    int64_t *g_1275;
    uint8_t g_1276;
    S4 *g_1279;
    int64_t g_1345;
    int64_t ***g_1344[2];
    int8_t g_1352;
    S3 *g_1475;
    S3 g_1479;
    int ***g_1490;
    int g_1489;
    int *g_1498;
    int **g_1497;
    int32_t *g_1562[4][4];
    int32_t **g_1561;
    int32_t g_1618;
    S1 *g_1658;
    S1 **g_1657;
    uint32_t **g_1667;
    int16_t g_1773;
    int8_t g_1985;
    uint8_t **g_2042;
    uint8_t ***g_2041;
    uint16_t g_2188;
    int64_t g_2287;
    int32_t ***g_2543;
    int32_t ****g_2542;
    int64_t ****g_2569;
    int64_t *****g_2568;
    S1 *g_2699;
    int32_t g_2725;
    int64_t g_2726;
    S3 g_2784;
    S3 ***g_2783[8][7];
    S3 ****g_2782;
    S3 *****g_2781;
    S3 *g_2786;
    S2 g_2803;
    int16_t g_2823;
    uint64_t g_2923;
    S2 *g_2936;
    int g_2946;
    U6 *g_3003;
    U6 g_3002;
    int32_t *g_3031;
    uint64_t *g_3056;
    uint16_t *g_3058;
};


__device__ int32_t  func_1(S7 * p_3144)
{
    S1 l_1018 {7,7,-31,0,0,9,6,0,0};
    int32_t *l_1676 = &p_3144->g_1618;
    uint32_t **l_1695 = &p_3144->g_1162;

    *p_3144->g_192 = (safe_mul_func_int64_t_s_s(l_1695 == &p_3144->g_1162, *l_1676 ) | (l_1018.f2 ^= *p_3144->g_192)) >= *l_1676 ;
    
    return 3;
}


__global__ void hipsmith_kernel(uint64_t *results) {
    S7 c_3145;
    S7* p_3144 = &c_3145;
    S7 c_3146 {
        5, 
        6, 
        2, 2, 2, 2, 2, 2, 
        &p_3144->g_59[5],1,7,9,10,10,4079,160,9,0,1, 
        0, 0, 6, 1, 1, {}, 
        &p_3144->g_92, 
        {}, 
        {}, 
        &p_3144->g_68[0], 
        &p_3144->g_151, 
        &p_3144->g_92.f1, 
        1, 
        &p_3144->g_100.f0, 
        &p_3144->g_124.f5, 
        {}, 
        {}, 
        nullptr, 
        {}, 
        {}, 
        {}, 
        1, 
        0, 
        4, 
        5, 
        0, 
        0, 
        1, 
        {}, 
        {}, 
        &p_3144->g_339, 
        &p_3144->g_810, 
        &p_3144->g_770[2][0], 
        {}, 
        {}, 
        &p_3144->g_91, 
        &p_3144->g_1050, 
        &p_3144->g_68[5], 
        nullptr, 
        2, 
        &p_3144->g_1049, 
        {}, 
        {}, 
        &p_3144->g_1247[2][6][2], 
        &p_3144->g_92.f5, 
        {}, 
        &p_3144->g_63, 
        {}, 
        {}, 
        0, 
        &p_3144->g_124, 
        {}, 
        &p_3144->g_906, 
        {}, 
        &p_3144->g_214[1][0], 
        &p_3144->g_1498, 
        {}, 
        &p_3144->g_1562[3][0], 
        2, 
        &p_3144->g_988.f2, 
        &p_3144->g_1658, 
        &p_3144->g_1162, 
        4, 
        4, 
        &p_3144->g_58, 
        &p_3144->g_2042, 
        7, 
        {}, 
        nullptr, 
        &p_3144->g_2543, 
        &p_3144->g_1344[0], 
        &p_3144->g_2569, 
        &p_3144->g_345[7], 
        3, 
        0, 
        {}, 
        {}, 
        &p_3144->g_2783[3][5], 
        &p_3144->g_2782, 
        nullptr, 
        {}, 
        0, 
        4073709551615, 
        &p_3144->g_2803, 
        {}, 
        nullptr, 
        {}, 
        &p_3144->g_600, 
        nullptr, 
        nullptr};
    c_3145 = c_3146;
    func_1(p_3144);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_3144->g_100.f0;
    crc64_context ^= p_3144->g_184;
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
