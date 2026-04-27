#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct U0 {};
union U1 {
   int8_t  f0;
   uint8_t  f1;
};
struct S2 {
    uint8_t g_9[4][6];
    int32_t g_16;
    int32_t *g_17;
    U1 g_24;
    int16_t g_46;
    uint64_t g_97;
    uint16_t g_99;
    int32_t g_112;
    uint32_t g_114[5];
    int8_t *g_126;
    uint16_t *g_133[6];
    uint8_t g_142;
    int16_t g_155;
    int8_t *g_191;
    int32_t *g_206;
    int8_t g_232[9];
    uint8_t g_284[6];
    uint64_t g_293;
    uint16_t **g_295[2];
    uint16_t ***g_294;
    U0 g_307;
    uint16_t *g_320;
    int64_t g_322;
    int32_t g_330;
    uint8_t g_332;
    int8_t g_336;
    uint32_t *g_372[3][2];
    uint32_t **g_371;
    uint8_t g_390;
    int32_t **g_418;
    uint64_t g_434;
    int32_t ***g_459;
    int32_t g_606;
    int64_t g_609;
    uint16_t g_610;
    U1 g_636;
    uint16_t g_692;
    int8_t *g_726;
    uint32_t g_742;
    int64_t g_763;
    uint16_t g_768;
    int32_t ****g_849;
    int32_t *****g_848;
    int64_t g_886;
    int16_t g_888;
    uint32_t g_890;
    uint32_t g_931;
    U0 *g_1001;
    U0 **g_1000;
    uint32_t *g_1104;
    uint32_t *g_1105;
    uint16_t g_1153;
    int32_t g_1193;
    int16_t g_1194;
    uint8_t g_1197;
    uint32_t ***g_1276;
    uint32_t ****g_1275;
    int32_t g_1441;
    uint16_t g_1473;
    uint32_t g_1528;
    int64_t g_1531;
    int32_t g_1532;
    int32_t g_1533;
    int32_t g_1534;
    uint32_t g_1535;
    U0 ***g_1540;
    U0 ****g_1539;
    uint8_t *g_1605;
    uint32_t g_1700;
    int32_t g_1714;
    int8_t **g_1857;
    int8_t **g_1858;
    int16_t g_1887;
    int16_t g_1910;
    int64_t g_1939;
    int64_t g_1940;
    int64_t g_1942;
    int64_t g_1943;
    uint8_t g_1946;
    uint32_t g_1968;
    int32_t g_1978;
    int32_t g_2026;
    int64_t *g_2057;
    uint64_t *g_2083;
    uint64_t g_2082;
    uint64_t *g_2149;
    int64_t g_2157;
    uint64_t g_2159;
    U0 *g_2194;
    uint32_t g_2202;
    int32_t g_2217;
    uint16_t g_2218;
    uint64_t g_2221;
    int64_t g_2258;
    int16_t **g_2418;
    uint32_t g_2426;
    uint8_t **g_2452;
    uint8_t ***g_2451;
    U0 **g_2482;
    U1 g_2492;
    uint8_t g_2520;
    uint32_t g_2534;
    uint8_t g_2627;
    int32_t g_2684[2][9];
    uint16_t ****g_2698;
    uint32_t g_2717;
    uint8_t g_2723;
    int32_t g_2747;
    int16_t g_2763;
    int32_t g_2764;
    int32_t g_2765;
    int64_t g_2766;
    uint8_t g_2767;
    U0 *g_2821;
    uint32_t g_2853;
    int32_t *g_2864;
    int32_t **g_2863;
    U1 **g_2909;
    uint32_t g_2927;
    uint64_t g_2984;
    int32_t g_3065;
    int8_t g_3077;
    uint8_t g_3080;
    uint64_t g_3113;
    int16_t *g_3124;
    int16_t g_3132;
    int16_t g_3200;
    int64_t g_3240;
    uint16_t g_3276;
    uint64_t g_3339;
    uint64_t g_3374;
    uint8_t ****g_3396;
    uint8_t *****g_3395;
    int64_t g_3413;
    int16_t g_3414;
    uint32_t g_3416;
    uint32_t g_3475;
    int16_t ***g_3498;
    int16_t ****g_3497;
    int16_t *****g_3496;
    uint32_t **g_3596;
    uint32_t ***g_3595;
    int32_t g_3604;
    int8_t g_3607;
    uint64_t g_3610;
    U1 *g_3615;
    U1 g_3614;
    int32_t g_3663;
    U1 g_3671;
    int64_t g_3769;
    int8_t g_3783;
    uint16_t g_3833;
    uint32_t g_3868;
    uint64_t g_3892;
};
__device__ int32_t * func_18(int32_t  , int32_t  , U1  , S2 * );
__device__ U0  func_29(int32_t ** , U1  , int16_t  , U1  , S2 * );
__device__ int32_t ** func_34(int64_t  , int32_t * , int32_t  , int32_t ** , S2 * );
__device__ int32_t * func_39(int16_t  , uint64_t  , int32_t ** , int32_t * , S2 * );
__device__ int16_t  func_51(int64_t  , int32_t * , int16_t  , int16_t  , S2 * );
__device__ U0  func_1(S2 * p_3898)
{
    uint16_t l_23 = 1;
    func_18(0, l_23, p_3898->g_24, p_3898);
    return *p_3898->g_1001;
}
__device__ int32_t * func_18(int32_t  p_19, int32_t  , U1  p_21, S2 * p_3898)
{
    int16_t *l_45 = &p_3898->g_46;
    int32_t *l_59 = &p_3898->g_16;
    U1 l_635 {};
    if (func_29(func_34(p_19, func_39(*l_45 , func_51(0, l_59, p_3898->g_9[1][4], p_21.f0, p_3898) , &p_3898->g_206, &p_3898->g_112, p_3898), p_3898->g_24.f0, &l_59, p_3898), l_635, l_635.f0, p_3898->g_636, p_3898) , p_3898) 
    return &p_3898->g_1532;
}
__device__ U0  func_29(int32_t ** , U1  , int16_t  , U1  , S2 * p_3898)
{
    ***p_3898->g_294 = 5;
    return p_3898->g_307;
}
__device__ int32_t ** func_34(int64_t  , int32_t * , int32_t  , int32_t ** , S2 * p_3898)
{
    int32_t **l_427 = &p_3898->g_206;
    return l_427;
}
__device__ int32_t * func_39(int16_t  , uint64_t  , int32_t ** , int32_t * , S2 * )
{ 
    return 0;
}
__device__ int16_t  func_51(int64_t  , int32_t * , int16_t  p_54, int16_t  , S2 * p_3898)
{
        uint64_t l_95[][8][5] {4073709551609, 3, 4, 3, 0, 4073709551609, 3, 4, 3, 0, 18446744073709551609};
        for (p_3898->g_16 = 5; p_3898->g_16 ; p_3898->g_16 -= 1)
        {
                uint64_t *l_96 = &p_3898->g_97;
                uint64_t *l_103 = &l_95[0][2][0];
                *l_103 = safe_mod_func_uint64_t_u_u(*l_96 |= l_95[0][2][0], p_54 );
        }
    return p_3898->g_155;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_3899;
    S2* p_3898 = &c_3899;
    U0 ***p_3898_69;
    U0 *p_3898_51;
    U0 **p_3898_52;
    U1 *p_3898_103_0_7_0;
    S2 c_3900 {
        {9, 9, 5, 6, 1, 6, 9, 9, 5, 6, 1}, 
        5, 
        nullptr, 
        1, 
        3, 
        8, 
        5, 
        1, 
        4, 4, 1, 4, 
        3, 
        &p_3898->g_24.f0, 
        &p_3898->g_99, &p_3898->g_99, &p_3898->g_99, &p_3898->g_99, &p_3898->g_99, &p_3898->g_99, 
        4, 
        0, 
        nullptr, 
        &p_3898->g_112, 
        3, 3, 3, 3, 3, 3, 3, 3, 3, 
        3, 3, 3, 3, 3, 3, 
        0, 
        &p_3898->g_133[3], &p_3898->g_133[3], 
        &p_3898->g_295[0], 
        {}, 
        &p_3898->g_99, 
        0, 
        0, 
        0, 
        4, 
        {}, 
        &p_3898->g_372[2][0], 
        {}, 
        &p_3898->g_17, 
        4073709551615, 
        nullptr, 
        1, 
        9, 
        5, 
        {}, 
        3, 
        nullptr, 
        4073709551615, 
        1, 
        6, 
        &p_3898->g_459, 
        &p_3898->g_849, 
        0, 
        1, 
        2, 
        0, 
        &p_3898->g_307, 
        &p_3898_51, 
        nullptr, 
        nullptr, 
        2, 
        0, 
        0, 
        0, 
        &p_3898->g_371, 
        &p_3898->g_1276, 
        4, 
        4, 
        4073709551606, 
        0, 
        9, 
        1, 
        3, 
        3, 
        &p_3898_52, 
        &p_3898_69, 
        &p_3898->g_636.f1, 
        0, 
        2, 
        &p_3898->g_126, 
        &p_3898->g_191, 
        1, 
        {}, 
        0, 
        {}, 
        0, 
        0, 
        1, 
        4073709551615, 
        2, 
        7, 
        nullptr, 
        nullptr, 
        {}, 
        nullptr, 
        {}, 
        1, 
        nullptr, 
        0, 
        1, 
        3, 
        1, 
        {}, 
        nullptr, 
        {}, 
        nullptr, 
        &p_3898->g_2452, 
        &p_3898_51, 
        {}, 
        5, 
        0, 
        0, 
        {}, 
        &p_3898->g_294, 
        1, 
        {}, 
        8, 
        {}, 
        1, 
        8, 
        7, 
        3, 
        &p_3898->g_307, 
        1, 
        &p_3898->g_2684[1][6], 
        &p_3898->g_2864, 
        &p_3898_103_0_7_0, 
        {}, 
        7, 
        7, 
        2, 
        {}, 
        4, 
        &p_3898->g_155, 
        9, 
        7, 
        3, 
        0, 
        0, 
        0, 
        &p_3898->g_2451, 
        &p_3898->g_3396, 
        4, 
        9, 
        {}, 
        3, 
        &p_3898->g_2418, 
        &p_3898->g_3498, 
        &p_3898->g_3497, 
        &p_3898->g_1104, 
        &p_3898->g_3596, 
        {}, 
        1, 
        2, 
        nullptr, 
        {}, 
        {}, 
        {}, 
        1, 
        {}, 
        7, 
        9, 
        8};
    c_3899 = c_3900;
    func_1(p_3898);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_3898->g_97, , );
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
