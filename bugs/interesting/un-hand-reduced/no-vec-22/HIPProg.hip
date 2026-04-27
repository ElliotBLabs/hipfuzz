#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int16_t g_4;
    uint64_t g_11;
    uint64_t g_48[10];
    int64_t g_59[2];
    int8_t g_60;
    int32_t g_64;
    int32_t g_65;
    uint16_t g_77;
    int32_t *g_84;
    int32_t **g_83;
    uint64_t g_91;
    uint64_t g_99[7][2];
    uint8_t g_103;
    int64_t g_109[5];
    uint32_t g_124;
    int16_t g_166;
    uint64_t *g_187[2];
    uint8_t **g_191;
    uint8_t ***g_190;
    int16_t g_208;
    int16_t g_227;
    int64_t *g_233;
    int64_t **g_232;
    uint32_t g_248;
    uint16_t g_253;
    uint64_t **g_271;
    int32_t g_304;
    int8_t g_347;
    uint64_t g_348;
    uint8_t g_371;
    int32_t g_405;
    int32_t g_406;
    uint64_t g_407;
    uint32_t *g_415;
    uint32_t g_414;
    uint64_t g_614;
    int16_t g_620;
    uint32_t g_630;
    uint64_t ***g_671;
    uint64_t ****g_670;
    uint8_t g_685;
    int8_t g_721;
    uint32_t g_826;
    int64_t g_844;
    int32_t g_851;
    uint32_t g_852;
    uint64_t g_877;
    uint16_t *g_941[7];
    uint16_t **g_940[7][4][9];
    uint16_t ***g_939;
    uint16_t ***g_943;
    uint32_t g_951;
    int32_t ***g_1012;
    int32_t g_1060[4];
    uint64_t g_1070[7];
    int32_t *g_1081;
    uint16_t **g_1117;
    uint32_t g_1128;
    int32_t *g_1135;
    int32_t **g_1134;
    int8_t g_1183;
    int8_t g_1184;
    int32_t g_1185;
    uint32_t g_1187;
    int16_t g_1289;
    uint32_t g_1291;
    int32_t ****g_1294;
    int32_t g_1332;
    uint16_t g_1362;
    int16_t *g_1432;
    int32_t g_1517;
    int32_t g_1519;
    uint32_t g_1520;
    int64_t g_1526;
    int64_t g_1527;
    int32_t g_1528;
    int8_t g_1529;
    uint16_t g_1530;
    int32_t *g_1560;
    uint64_t g_1562;
    uint32_t g_1661;
    uint16_t g_1673;
    int32_t g_1812;
    int64_t g_1813;
    int16_t g_1814;
    int32_t g_1815;
    uint32_t g_1816;
    uint32_t *g_1852[8];
    uint32_t **g_1851;
    uint16_t ****g_1872[3][4];
    uint16_t *****g_1871;
    uint32_t g_1879;
    uint16_t g_1950;
    uint32_t g_2039;
    int8_t g_2064;
    int8_t g_2066;
    uint32_t g_2067;
    uint8_t g_2152;
    int8_t g_2247;
    int32_t g_2248;
    uint32_t g_2249;
    uint32_t g_2262;
    int16_t g_2269;
    int16_t g_2271;
    int8_t g_2273;
    uint8_t g_2274;
    int16_t g_2277;
    int64_t g_2278;
    uint32_t g_2279;
    int32_t g_2317;
    int8_t g_2318;
    uint64_t *g_2423;
    uint8_t g_2534;
    uint64_t g_2567;
    uint32_t g_2612;
    uint64_t g_2621;
    int8_t g_2662;
    uint8_t g_2663;
    uint8_t g_2788;
    int32_t ***g_2828[7][6][1];
    int32_t ****g_2827;
    int32_t g_2835;
    int64_t g_2836;
    int8_t g_2837;
    uint32_t g_2838;
    int8_t g_2882;
    uint32_t g_2938;
    uint32_t g_2961;
    int32_t g_2982;
    uint64_t g_2983;
    uint8_t g_3029;
    int32_t g_3044;
    int32_t g_3046;
    int64_t g_3047;
    uint8_t g_3048;
    int64_t *g_3057;
    int32_t g_3091;
    uint8_t g_3104;
    int32_t g_3133;
    uint32_t g_3135;
    int64_t g_3332;
    int16_t *g_3400;
    int32_t g_3405;
    int8_t g_3429;
    uint32_t g_3504;
    uint8_t g_3517;
};
__device__ uint32_t  func_30(uint16_t  , int64_t  , uint32_t  , uint64_t * , S0 * );
__device__ uint64_t * func_50(uint64_t * , uint64_t * , S0 * );
__device__ uint64_t * func_53(uint64_t * , uint8_t  , S0 * );
__device__ uint16_t  func_1(S0 * p_3557)
{ 
    int32_t l_9 = 7;
    uint64_t *l_10 = &p_3557->g_11;
    int16_t l_3556 = func_30(p_3557->g_11, (func_50(func_53(&p_3557->g_11, 0, p_3557), l_10, p_3557) , 4), l_9, &p_3557->g_48[9], p_3557) ;
    return l_3556;
}
__device__ uint32_t  func_30(uint16_t  , int64_t  , uint32_t  , uint64_t * p_34, S0 * p_3557)
{
        uint64_t *l_224 = &p_3557->g_99[2][1];
        uint64_t *l_225 = &p_3557->g_11;
        *l_225 |= *l_224 = safe_add_func_int32_t_s_s(~(0 >= *p_34), p_3557->g_64) ;
    return p_3557->g_620;
}
__device__ uint64_t * func_50(uint64_t * , uint64_t * , S0 * p_3557)
{
        for (p_3557->g_64 = 0; ; )
    return &p_3557->g_48[9];
}
__device__ uint64_t * func_53(uint64_t * p_54, uint8_t  , S0 * )
{ 
    return p_54;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_3558;
    S0* p_3557 = &c_3558;
    S0 c_3559 {
        {}, 
        4073709551615, 
        {}, 
        {}, 
        0, 
        3, 
        5, 
        9, 
        &p_3557->g_65, 
        &p_3557->g_84, 
        4073709551615, 
        {}, 
        1, 
        3, 3, 3, 3, 3, 
        3, 
        4, 
        &p_3557->g_99[2][1], &p_3557->g_99[2][1], 
        nullptr, 
        &p_3557->g_191, 
        0, 
        5, 
        &p_3557->g_59[1], 
        &p_3557->g_233, 
        1, 
        0, 
        nullptr, 
        0, 
        4, 
        0, 
        5, 
        9, 
        8, 
        1, 
        &p_3557->g_124, 
        {}, 
        8, 
        0, 
        1, 
        &p_3557->g_271, 
        &p_3557->g_671, 
        1, 
        0, 
        0, 
        0, 
        3, 
        6, 
        5, 
        {}, 
        {}, 
        &p_3557->g_940[5][2][0], 
        &p_3557->g_940[5][2][0], 
        5, 
        &p_3557->g_83, 
        9, 0, 9, 0, 
        6, 2, 6, 2, 6, 2, 6, 
        &p_3557->g_65, 
        &p_3557->g_941[6], 
        4073709551612, 
        &p_3557->g_1060[3], 
        &p_3557->g_1135, 
        {}, 
        4, 
        5, 
        1, 
        {}, 
        1, 
        &p_3557->g_1012, 
        0, 
        {}, 
        &p_3557->g_208, 
        8, 
        {}, 
        2, 
        {}, 
        4, 
        2, 
        1, 
        5, 
        &p_3557->g_1528, 
        0, 
        5, 
        3, 
        5, 
        {}, 
        {}, 
        1, 
        9, 
        &p_3557->g_1520, &p_3557->g_630, &p_3557->g_1520, &p_3557->g_630, &p_3557->g_1520, &p_3557->g_630, &p_3557->g_1520, &p_3557->g_630, 
        &p_3557->g_1852[3], 
        {}, 
        &p_3557->g_1872[1][3], 
        3, 
        4, 
        5, 
        0, 
        1, 
        3, 
        7, 
        2, 
        0, 
        3, 
        7, 
        1, 
        1, 
        0, 
        0, 
        0, 
        0, 
        4073709551608, 
        4, 
        1, 
        nullptr, 
        7, 
        9, 
        3, 
        1, 
        4, 
        {}, 
        {}, 
        {}, 
        &p_3557->g_2828[1][2][0], 
        5, 
        6, 
        1, 
        5, 
        {}, 
        2, 
        9, 
        1, 
        7, 
        4, 
        0, 
        3, 
        8, 
        1, 
        nullptr, 
        6, 
        3, 
        {}, 
        4, 
        8, 
        nullptr, 
        5, 
        1, 
        5, 
        2};
    c_3558 = c_3559;
    func_1(p_3557);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_3557->g_11, , );
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
