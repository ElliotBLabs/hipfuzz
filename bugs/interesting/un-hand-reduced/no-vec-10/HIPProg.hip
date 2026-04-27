#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   int32_t  f0;
   uint64_t  f1;
   uint64_t  f2;
   uint32_t  f3;
   int32_t  f4;
   int8_t  f5;
   uint64_t  f6;
   uint8_t  f7;
   uint32_t  f8;
};
struct S1 {
   int32_t  f0;
};
struct S2 {
   signed f0 ;
   signed f1 ;
   unsigned f2 ;
   unsigned f3 ;
   signed f4 ;
   signed f5 ;
   signed f6 ;
   unsigned f7 ;
   unsigned f8 ;
};
struct U3 {
   uint8_t  f0;
};
struct S5 {
    U3 g_5;
    S1 g_37[3];
    int32_t g_62[6];
    int32_t *g_61;
    uint32_t g_68;
    S0 g_72;
    int64_t g_75[8][8][4];
    int16_t g_80;
    uint8_t *g_112[1];
    uint8_t **g_111;
    S2 g_115;
    int8_t *g_146;
    uint32_t g_151;
    uint64_t g_189[3];
    int64_t g_244;
    S2 **g_249;
    uint8_t ***g_262;
    uint8_t ****g_261[4];
    int32_t **g_282;
    int32_t ***g_281;
    int32_t ****g_280;
    int32_t *****g_279;
    int32_t g_308;
    int16_t g_327;
    S2 ***g_344;
    S2 ****g_343;
    uint16_t g_350;
    uint16_t *g_349;
    S2 *****g_368;
    int g_464;
    uint16_t g_474;
    uint32_t *g_484;
    uint32_t **g_483[2][8][6];
    uint32_t ***g_482;
    uint32_t ***g_486;
    uint64_t g_540;
    int32_t *g_588[6];
    int32_t *g_589;
    int8_t g_606;
    S0 *g_718;
    S0 **g_717[3];
    U3 *g_856;
    int64_t g_978[4];
    S0 ***g_1144[5][4];
    S0 ****g_1143;
    int *g_1195;
    S1 g_1210;
    S1 g_1211;
    int32_t *g_1223;
    uint32_t g_1294;
    S1 *g_1329;
    uint32_t g_1398[2];
    uint16_t g_1462;
    uint32_t g_1530[8];
    int64_t g_1636;
    uint32_t g_1662;
    uint8_t g_1704;
    S1 **g_1788;
    S1 ***g_1787;
    int16_t g_1902;
    int64_t *g_1939[2][7];
    int64_t **g_1938;
    uint64_t g_2029[9][10][2];
    int8_t g_2038;
    int64_t g_2039;
    int8_t g_2522;
    int8_t g_2592;
    uint32_t g_2687;
    int8_t g_2855;
    int32_t g_2927;
};
__device__ S2  func_2(U3  , uint64_t  , S5 * );
__device__ uint64_t  func_6(S0  , int32_t  , int32_t  , uint8_t  , uint32_t  , S5 * );
__device__ S0  func_12(uint32_t  , uint32_t  , int32_t  , uint64_t  , uint8_t  , S5 * );
__device__ S0  func_35(S1  , S5 * );
__device__ uint64_t  func_1(S5 * p_2939)
{ 
    uint64_t l_18 = 6;
    func_2(p_2939->g_5, func_6(func_12(l_18, p_2939->g_5.f0, l_18, l_18, p_2939->g_5.f0, p_2939), l_18, 0, l_18, p_2939->g_2687, p_2939), p_2939);
    return p_2939->g_115.f4;
}
__device__ S2  func_2(U3  , uint64_t  , S5 * p_2939)
{
    S2 l_2836 ;
        S1 l_2928 ;
        func_35(l_2928, p_2939);
    return l_2836;
}
__device__ uint64_t  func_6(S0  , int32_t  , int32_t  , uint8_t  , uint32_t  , S5 * p_2939)
{ 
    int32_t *l_2773 = &p_2939->g_308;    return *l_2773;
}
__device__ S0  func_12(uint32_t  , uint32_t  , int32_t  , uint64_t  , uint8_t  , S5 * )
{    S0 l_2358 ;    return l_2358;
}
__device__ S0  func_35(S1  , S5 * p_2939)
    {
        S0 l_104 ;
                uint8_t l_87 = p_2939->g_5.f0;
                    int32_t l_98 = 2858310776;
                    int64_t *l_100 = &p_2939->g_75[5][7][1];
                    *l_100 |= l_98 |= safe_sub_func_uint16_t_u_u(0, l_87 != 0)  ;
                        return l_104;
    }
__global__ void hipsmith_kernel(uint64_t *results) {
    S5 c_2940;
    S5* p_2939 = &c_2940;
    S5 c_2941 {
        {}, 
        0, 0, 0, 
        0, 1, 0, 1, 0, 1, 
        &p_2939->g_62[5], 
        4073709551615, 
        6,4073709551610,2,4,8,3,1,1,5, 
        {}, 
        2, 
        &p_2939->g_5.f0, 
        &p_2939->g_112[0], 
        3,1,3,6,4,7,1,1,1, 
        nullptr, 
        0, 
        2, 2, 2, 
        4, 
        nullptr, 
        &p_2939->g_111, 
        &p_2939->g_262, nullptr, &p_2939->g_262, nullptr, 
        &p_2939->g_61, 
        &p_2939->g_282, 
        &p_2939->g_281, 
        &p_2939->g_280, 
        3, 
        1, 
        &p_2939->g_249, 
        &p_2939->g_344, 
        0, 
        &p_2939->g_350, 
        &p_2939->g_343, 
        4, 
        6, 
        &p_2939->g_151, 
        nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, nullptr, nullptr, &p_2939->g_484, &p_2939->g_484, nullptr, nullptr, 
        &p_2939->g_483[1][2][2], 
        &p_2939->g_483[0][3][2], 
        4073709551615, 
        &p_2939->g_37[0].f0, &p_2939->g_37[0].f0, nullptr, &p_2939->g_37[0].f0, &p_2939->g_37[0].f0, nullptr, 
        &p_2939->g_72.f0, 
        4, 
        nullptr, 
        &p_2939->g_718, &p_2939->g_718, &p_2939->g_718, 
        nullptr, 
        3, 1, 3, 1, 
        &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], &p_2939->g_717[1], 
        &p_2939->g_1144[3][3], 
        nullptr, 
        1, 
        5, 
        &p_2939->g_308, 
        6, 
        &p_2939->g_1210, 
        8, 8, 
        0, 
        0, 0, 0, 0, 0, 0, 0, 0, 
        5, 
        4, 
        9, 
        &p_2939->g_1329, 
        &p_2939->g_1788, 
        6, 
        &p_2939->g_75[2][0][1], &p_2939->g_75[2][7][3], &p_2939->g_244, &p_2939->g_75[2][7][3], &p_2939->g_75[2][0][1], &p_2939->g_75[2][0][2], &p_2939->g_75[2][0][1], &p_2939->g_75[2][0][1], &p_2939->g_75[2][7][3], &p_2939->g_244, &p_2939->g_75[2][7][3], &p_2939->g_75[2][0][1], &p_2939->g_75[2][0][2], &p_2939->g_75[2][0][1], 
        &p_2939->g_1939[0][6], 
        3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 3, 4073709551607, 
        0, 
        0, 
        0, 
        4, 
        9, 
        3, 
        6};
    c_2940 = c_2941;
    func_1(p_2939);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 8; i++)
        for (int j = 0; j < 8; j++)
            for (int k = 0; k < 4; k++)
                transparent_crc(p_2939->g_75[i][j][k], , );
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
