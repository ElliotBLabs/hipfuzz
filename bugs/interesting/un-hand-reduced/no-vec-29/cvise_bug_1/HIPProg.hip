#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   uint32_t  f0;
};

struct S2 {
   int32_t  f0;
   S0  f4;
   uint64_t  f6;
};
struct S3 {};
struct S4 {
   signed f0 ;
   S0  f1;
   signed f2 ;
   signed f3 ;
   signed f4 ;
   signed f5 ;
   signed f6 ;
   signed f7 ;
   uint8_t  f8;
   signed f9 ;
};

struct S6 {S4  f6;
   S2  f7;
};
struct U7 {};
struct U8 {
   int16_t  f0;
};
struct S9 {
    S4 g_7;
    S3 g_10;
    S2 g_70;
    int32_t *g_78;
    uint16_t g_91;
    int32_t *g_102;
    int16_t *g_129;
    int64_t g_181[2];
    int64_t *g_180;
    S3 *g_194;
    S3 *g_193;
    U7 g_254;
    U8 g_293;
    U8 *g_292;
    int *g_388;
    S3 ***g_436;
    S3 ****g_435;
    int32_t *g_441;
    uint32_t g_495;
    S6 g_520[5][8];
    int g_524;
    int64_t g_594;
    int8_t g_737;
    uint32_t g_812;
    uint32_t g_862;
    
    
    
    uint32_t g_902[7][7][5];
    int64_t g_922;
    int8_t g_944;
    uint16_t g_945;
    S4 *g_992;
    uint32_t *g_1088;
    uint32_t **g_1087;
    U7 *g_1109;
    U7 g_1108;
    uint64_t *g_1196;
    S0 g_1197;
    int32_t *g_1230;
    uint16_t g_1265;
    int16_t g_1269;
    uint64_t g_1270;
    int32_t g_1325;
    int32_t g_1345;
    S6 g_1436;
    S6 **g_1435;
    S3 *g_1531;
    U8 g_1532;
    int32_t g_1545;
    int32_t g_1686;
    int64_t g_1738;
    int **g_1777;
    int g_1776;
    int32_t g_1796;
    int64_t g_1800;
    int8_t g_2046;
    S0 *g_2162;
    S0 ***g_2161;
    int16_t *g_2183;
    U8 g_2196;
    uint32_t *g_2206;
    int32_t g_2232;
    int64_t g_2315;
    uint32_t g_2346;
    U7 **g_2369;
    S3 g_2434;
    S2 *g_2446;
    S2 **g_2445;
    uint64_t g_2474;
};
__device__ S4  func_12(int16_t  , int32_t  , U8  , S9 * );
__device__ S3  func_1(S9 * p_2491)
{ 
    uint8_t l_8[5][1];
    U8 l_2376 {60855};
    S3 l_2490[8] ;
    int i, j;
    for (i = 0; i < 5; i++)
        for (j = 0; j < 1; j++)
            l_8[i][j] = 9;
    func_12(l_8[2][0], 0, l_2376, p_2491);
    return l_2490[7];
}
__device__ S4  func_12(int16_t  p_13, int32_t  , U8  p_15, S9 * p_2491)
{
    S4 l_2392 ;
    if (*p_2491->g_180 |= safe_rshift_func_int16_t_s_s(p_13 , p_15.f0) ^ p_15.f0)
    return l_2392;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S9 c_2492;
    S9* p_2491 = &c_2492;
    S0 **p_2491_57;
    int *p_2491_20_0;
    S3 ***p_2491_15;
    S2 *p_2491_67;
    U7 *p_2491_35;
    S6 *p_2491_45_1_4;
    S3 **p_2491_10;
    S9 c_2493 {
        5,{},4,3,2,4,9,1,3,9, 
        {}, 
        {}, 
        &p_2491->g_70.f0, 
        1, 
        nullptr, 
        nullptr, 
        {}, 
        &p_2491->g_181[1], 
        &p_2491->g_10, 
        0, 
        {}, 
        {}, 
        &p_2491->g_293, 
        nullptr, 
        &p_2491_10, 
        {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, 
        15, 
        0, 
        2, 
        &p_2491->g_520[3][1].f6, 
        &p_2491->g_520[3][1].f7.f4.f0, 
        &p_2491->g_1088, 
        nullptr, 
        {}, 
        &p_2491->g_70.f6, 
        {}, 
        nullptr, 
        0, 
        1, 
        10, 
        0, 
        0, 
        {}, 
        &p_2491_45_1_4, 
        &p_2491->g_10, 
        {}, 
        {}, 
        0, 
        0, 
        &p_2491_20_0, 
        {}, 
        3, 
        6, 
        0, 
        nullptr, 
        &p_2491_57, 
        &p_2491->g_293.f0, 
        {}, 
        &p_2491->g_902[4][5][0], 
        13, 
        11, 
        7, 
        &p_2491_35, 
        {}, 
        &p_2491->g_70, 
        &p_2491_67, 
        10};
    c_2492 = c_2493;
    func_1(p_2491);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 2; i++)
        transparent_crc(p_2491->g_181[i], , );
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
