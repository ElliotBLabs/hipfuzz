#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   uint32_t  f0;
   int32_t  f1;
   uint16_t  f2;
   uint32_t  f3;
   int32_t  f4;
   uint64_t  f5;
   uint32_t  f6;
};
struct S1 {
   signed f0 ;
   signed f1 ;
   unsigned f2 ;
   signed f3 ;
   signed f4 ;
};
struct S2 {
    S0 g_51;
    S1 g_59;
    uint8_t g_107;
    S0 g_208;
    S0 *g_207[6];
    S1 *g_231;
    S1 **g_230;
    S1 ***g_229;
    S1 ***g_232;
    int8_t g_253;
    int16_t g_260;
    uint32_t g_284;
    uint32_t g_378;
    int32_t g_426;
    int32_t g_429;
    uint16_t g_432;
    int32_t *g_449;
    int32_t **g_448;
    uint64_t g_456;
    int32_t g_495;
    uint64_t g_497;
    int16_t g_525;
    uint32_t g_526;
    int8_t *g_561[9][6];
    int8_t **g_560;
    int8_t g_594;
    uint16_t g_595;
    int32_t g_666;
    uint32_t g_668;
    int16_t *g_709;
    int16_t **g_708[2];
    uint16_t *g_716;
    uint16_t **g_715;
    uint8_t g_724[4];
    int64_t g_762;
    uint32_t g_838;
    int32_t g_956;
    int32_t ***g_983;
    int32_t ****g_982;
    int64_t *g_1053;
    int16_t g_1069;
    int32_t g_1102[8];
    int16_t g_1202;
    int8_t g_1205[5];
    int16_t g_1206[2];
    uint64_t g_1207;
    uint64_t g_1212;
    int8_t g_1239;
    int64_t g_1240;
    int32_t g_1241;
    int64_t g_1242;
    int32_t g_1248;
    int16_t g_1249;
    uint32_t g_1250;
    uint16_t g_1417;
    int8_t g_1489;
    S1 g_1550;
    uint32_t *g_1578;
    uint32_t **g_1577;
    S1 g_1604;
    uint32_t g_1668;
    int32_t *g_1701;
    int32_t **g_1700;
    uint32_t ***g_1709;
    S1 g_1732;
    S0 *g_1766;
    S1 g_1769;
    uint8_t g_1891;
    uint16_t g_1954;
    int32_t g_1966;
    int64_t g_2041;
    int8_t g_2044;
    int16_t g_2096;
    uint32_t g_2106;
    uint64_t g_2138[8];
    S0 **g_2142;
    S0 ***g_2141;
    uint8_t g_2173;
    uint32_t g_2186;
    uint32_t *g_2187;
    int8_t g_2189;
    uint64_t *g_2243;
    uint64_t g_2242;
};__device__ int16_t  func_1(S2 * p_2299)
{
    uint64_t *l_2163 = &p_2299->g_2138[2];
                        uint8_t *l_2185 = &p_2299->g_107;
                        *l_2163 |= safe_add_func_int8_t_s_s(safe_rshift_func_uint8_t_u_u(*l_2185 , 1) <= 0, 200) ;
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_2300;
    S2* p_2299 = &c_2300;
    S0 **p_2299_81;
    S1 **p_2299_12;
    S1 *p_2299_11;
    S0 *p_2299_10_5;
    S2 c_2301 {
        4,1,4, 
        4,1,5,2,5, 
        5, 
        1, 
        9, 
        0, 
        6, 
        0,3,9,0,3,4073709551615,1, 
        &p_2299->g_51, &p_2299->g_208, &p_2299->g_51, &p_2299->g_208, &p_2299->g_51, &p_2299->g_208, 
        nullptr, 
        &p_2299_11, 
        &p_2299_12, 
        &p_2299_12, 
        3, 
        2, 
        1, 
        4073709551615, 
        0, 
        0, 
        1, 
        &p_2299->g_51.f1, 
        &p_2299->g_449, 
        1, 
        1, 
        {}, 
        0, 
        3, 
        {}, 
        &p_2299->g_561[8][1], 
        7, 
        4, 
        0, 
        6, 
        &p_2299->g_525, 
        &p_2299->g_709, &p_2299->g_709, 
        &p_2299->g_432, 
        &p_2299->g_716, 
        0, 0, 0, 0, 
        3, 
        1, 
        0, 
        nullptr, 
        &p_2299->g_983, 
        &p_2299->g_762, 
        0, 
        0, 0, 6, 0, 0, 6, 0, 0, 
        0, 
        0, 0, 0, 0, 0, 
        0, 0, 
        4073709551609, 
        4, 
        4, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        9, 
        9, 
        7,1,8,3,0, 
        &p_2299->g_208.f6, 
        &p_2299->g_1578, 
        7,0,0,4,0, 
        5, 
        &p_2299->g_1102[7], 
        &p_2299->g_1701, 
        &p_2299->g_1577, 
        {}, 
        nullptr, 
        {}, 
        {}, 
        {}, 
        5, 
        {}, 
        {}, 
        {}, 
        4073709551615, 
        {}, 
        &p_2299_10_5, 
        &p_2299_81, 
        0, 
        2, 
        &p_2299->g_208.f6, 
        6, 
        &p_2299->g_1207, 
        {}};
    c_2300 = c_2301;
    func_1(p_2299);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 6; i++)
        transparent_crc(p_2299->g_2138[i], , );
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
