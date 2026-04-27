#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {};
struct S2 {};
union U3 {
   int32_t  f0;
   uint64_t  f2;
};
struct U4 {};
struct S5 {
    int32_t g_5;
    uint32_t g_21[3];
    int32_t g_33;
    int64_t g_35;
    U3 g_61;
    uint8_t g_83;
    S0 g_86[6];
    int g_87;
    int g_93;
    int64_t g_105;
    uint16_t g_108;
    int32_t g_110;
    int *g_175;
    int g_174;
    uint32_t g_188;
    uint16_t g_216;
    U3 g_235[1][10][2];
    U4 g_270;
    int64_t *g_279;
    int64_t **g_278;
    int16_t g_322;
    int32_t g_337[7][2][3];
    int32_t *g_394;
    int32_t *g_395;
    S0 *g_516;
    S0 **g_515;
    uint32_t *g_528;
    uint64_t g_535;
    S0 ***g_901;
    S0 ****g_900;
    U4 *g_934;
    int64_t g_938;
    int16_t *g_1044;
    int8_t g_1076;
    S2 *g_1195;
    S2 **g_1194;
    uint64_t *g_1251;
    uint8_t g_1270;
    uint8_t g_1400;
    U3 *g_1436;
    U3 g_14353;
    uint8_t g_1557;
    uint32_t ***g_1642;
    uint32_t ****g_1641;
    S0 g_1721107;
    uint32_t *g_1784[6][4];
    uint32_t **g_1783;
    int64_t *g_1864;
    uint16_t g_2008;
    U3 *g_2078;
    int32_t g_2081;
    int16_t g_2117;
};
__device__ int32_t * func_2(int32_t * , S5 * );
__device__ uint32_t  func_15(int16_t  , uint32_t  , int32_t * , U4  , S5 * );
__device__ U4 * func_37(U4 * , int32_t * , uint32_t * , S0  , S5 * );
__device__ U4 * func_42(uint64_t  , int64_t * , int32_t * , int64_t * , int64_t * , S5 * );
__device__ int64_t * func_49(S2  , S5 * );
__device__ int32_t * func_58(U3  , uint32_t * , S5 * );
__device__ uint16_t  func_1(S5 * p_2124)
{ 
    int32_t *l_4 = &p_2124->g_5;
    func_2(l_4, p_2124);
    return 0;
}
__device__ int32_t * func_2(int32_t * p_3, S5 * p_2124)
{
    int32_t *l_2083 = nullptr;
    int i;
        uint64_t l_14 = 20539226161781879;
        U4 l_36 ;
        for (i = 0; i < 2; i++, func_15(l_14, 0, p_3, l_36, p_2124));
    return l_2083;
}
__device__ uint32_t  func_15(int16_t  , uint32_t  , int32_t * p_18, U4  , S5 * p_2124)
{ 
    uint8_t l_48 = 1;
    int64_t *l_54[10][1];
    S2 l_400 ;
    uint32_t *l_688 = &p_2124->g_21[0];
    S0 l_689 ;
    int16_t l_2002 = 9;
    int i, j;
    for (i = 0; i < 10; i++)
        for (j = 0; j < 1; j++)
            l_54[i][j] = &p_2124->g_35;
    func_37(func_42(l_48, func_49(l_400, p_2124), 0, l_54[1][0], *p_2124->g_278, p_2124), p_18, l_688, l_689, p_2124);
    return l_2002;
}
__device__ U4 * func_37(U4 * , int32_t * , uint32_t * p_40, S0  , S5 * p_2124)
{
    U3 l_903 {-3};
    U3 *l_1122 = &p_2124->g_235[0][2][1];
    func_58(*l_1122 = l_903, p_40, p_2124)
    ;
    return &p_2124->g_270;
}
__device__ U4 * func_42(uint64_t  , int64_t * , int32_t * , int64_t * , int64_t * , S5 * p_2124)
{
    for (; p_2124->g_108 != 45; p_2124->g_108 = safe_add_func_int8_t_s_s(p_2124->g_108, 3))
        *p_2124->g_394 = 0;
    return 0;
}
__device__ int64_t * func_49(S2  , S5 * )
{
    int64_t *l_409 = nullptr;
    return l_409;
}
__device__ int32_t * func_58(U3  p_59, uint32_t * , S5 * p_2124)
{
    uint16_t *l_107 = &p_2124->g_108;
    int32_t *l_109 = &p_2124->g_110;
    *l_109 ^= safe_mod_func_uint8_t_u_u(*l_107 &= safe_lshift_func_int8_t_s_u(p_2124->g_105, p_59.f0 )  , -2);
    return l_109;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S5 c_2125;
    S5* p_2124 = &c_2125;
    S2 *p_2124_55;
    S5 c_2126 {
        1, 
        {}, 
        4, 
        304947919479551, 
        {}, 
        9, 
        {}, 
        {}, 
        {}, 
        7, 
        0, 
        2, 
        &p_2124->g_87, 
        {}, 
        1, 
        2, 
        {}, 
        {}, 
        &p_2124->g_105, 
        &p_2124->g_279, 
        2, 
        {}, 
        &p_2124->g_337[6][1][1], 
        &p_2124->g_337[6][1][1], 
        &p_2124->g_86[3], 
        &p_2124->g_516, 
        nullptr, 
        0, 
        nullptr, 
        &p_2124->g_901, 
        &p_2124->g_270, 
        6361882104, 
        nullptr, 
        0, 
        nullptr, 
        &p_2124_55, 
        &p_2124->g_535, 
        2, 
        0, 
        &p_2124->g_235[0][0][1], 
        {}, 
        6, 
        nullptr, 
        &p_2124->g_1642, 
        {}, 
        {}, 
        &p_2124->g_1784[0][3], 
        nullptr, 
        3, 
        nullptr, 
        0, 3};
    c_2125 = c_2126;
    func_1(p_2124);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2124->g_108, , );
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
