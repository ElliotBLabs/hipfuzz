#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   uint16_t  f0;
   uint32_t  f1;
   uint64_t  f2;
};
union U1 {
   uint32_t  f0;
   S0  f1;
};
struct S2 {
    int32_t g_20;
    int32_t g_58;
    uint8_t g_70;
    int64_t g_81;
    uint8_t g_83;
    int32_t g_90[3][4];
    S0 g_186;
    int32_t *g_198;
    int32_t g_197;
    uint32_t g_215;
    int8_t g_226;
    int8_t g_230;
    int8_t *g_229;
    int32_t g_240;
    int32_t g_265;
    uint8_t g_285;
    U1 *g_292;
    int64_t g_354;
    int32_t g_387;
    int32_t g_396;
    int32_t *g_433;
    int32_t **g_432;
    U1 g_700;
    int32_t g_715;
    int16_t g_728;
    uint8_t *g_755;
    S0 g_789;
    uint16_t g_807;
    uint8_t g_839;
    uint32_t *g_946;
    int32_t g_950;
    uint64_t *g_956;
    uint64_t *g_957;
    int16_t *g_973;
    int16_t **g_972;
    S0 **g_982;
    uint8_t g_1035;
    uint8_t g_1034;
    int64_t *g_1038;
    uint16_t *g_1106[7][8];
    uint16_t **g_1105;
    int32_t ****g_1155;
    int32_t *****g_1154;
    S0 g_1203;
    int64_t g_1246;
    uint32_t **g_1316;
    uint32_t ***g_1315;
    uint32_t g_1352;
    int64_t *g_1448;
    U1 g_1532[2][9];
    int16_t g_1607;
    int16_t **g_1631;
    int32_t g_1695;
    int64_t g_1765;
    uint32_t g_1766;
    S0 ***g_1888;
    U1 **g_1919;
    U1 ***g_1918;
    S0 g_1950;
    int16_t g_2005;
    int16_t ***g_2016;
    int16_t ****g_2015;
    int32_t g_2071;
    int8_t g_2074;
    uint16_t *g_2079;
    uint16_t g_2078;
    uint64_t g_2108;
    int64_t g_2235;
    int32_t g_2238;
    uint32_t **g_2242;
    uint16_t g_2259;
    U1 *g_2278;
    S0 g_2289;
    int32_t *g_2301;
};
__device__ U1  func_16(int32_t  , uint32_t  , int32_t  , S2 * );
__device__ S0  func_1(S2 * p_2352)
{
    int32_t l_1091 = 9;
    uint64_t l_1531[7][6] {};
        if (p_2352->g_1532[1][0] = p_2352->g_700 = func_16(0, l_1091, l_1531[6][1], p_2352) , 5 )
        { 
            S0 l_1830[5] ;
            return l_1830[3];
        }
}
__device__ U1  func_16(int32_t  , uint32_t  , int32_t  , S2 * p_2352)
{ 
    return p_2352->g_700;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_2353;
    S2* p_2352 = &c_2353;
    U1 **p_2352_56;
    S2 c_2354 {
        7, 
        8, 
        7, 
        0, 
        0, 
        {}, 
        {}, 
        nullptr, 
        {}, 
        4, 
        1, 
        4, 
        &p_2352->g_230, 
        3, 
        {}, 
        2, 
        nullptr, 
        0, 
        1, 
        0, 
        &p_2352->g_20, 
        &p_2352->g_433, 
        425981, 
        5, 
        0, 
        &p_2352->g_83, 
        4,2,9, 
        4, 
        4, 
        &p_2352->g_186.f1, 
        1, 
        &p_2352->g_789.f2, 
        &p_2352->g_186.f2, 
        nullptr, 
        &p_2352->g_973, 
        nullptr, 
        {}, 
        {}, 
        nullptr, 
        nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, &p_2352->g_807, nullptr, nullptr, {}, {}, 
        &p_2352->g_1106[5][5], 
        nullptr, 
        &p_2352->g_1155, 
        {}, 
        {}, 
        &p_2352->g_946, 
        &p_2352->g_1316, 
        3, 
        &p_2352->g_81, 
        {}, 
        {}, 
        &p_2352->g_973, 
        {}, 
        4, 
        {}, 
        &p_2352->g_982, 
        &p_2352->g_292, 
        &p_2352_56, 
        {}, 
        {}, 
        &p_2352->g_972, 
        &p_2352->g_2016, 
        0, 
        6, 
        nullptr, 
        {}, 
        0, 
        9, 
        2, 
        &p_2352->g_946, 
        7, 
        &p_2352->g_1532[1][0], 
        {}, 
        &p_2352->g_90[2][3]};
    c_2353 = c_2354;
    func_1(p_2352);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 9; j++)
            transparent_crc(p_2352->g_1532[i][j].f0, , );
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
