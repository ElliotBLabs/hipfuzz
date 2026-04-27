#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   uint8_t  f2;
};
struct U1 {};
struct S2 {
    uint64_t g_9[7];
    U1 g_33[3];
    int32_t g_34[6];
    int32_t g_57;
    int16_t g_61;
    uint16_t g_63;
    uint8_t g_81;
    uint8_t g_85;
    uint8_t *g_84;
    int16_t g_88;
    uint16_t g_90;
    S0 g_114;
    S0 g_127;
    S0 g_126[2][10];
    uint32_t g_143[8][10];
    uint32_t *g_142;
    int8_t g_171;
    uint64_t g_269;
    int32_t *g_284;
    uint32_t g_300;
    uint8_t g_337;
    uint64_t g_341;
    uint64_t g_346;
    uint8_t g_352;
    int8_t g_409;
    int32_t g_410[7][4][4];
    uint64_t g_411;
    int64_t g_488;
    int32_t **g_539[8];
    int16_t g_542[2][4][7];
    int16_t *g_547;
    int16_t **g_546;
    int32_t ***g_577;
    int32_t g_658[6];
    int64_t g_772;
    int32_t g_919;
    uint32_t g_1020;
    U1 *g_1136;
    int32_t g_1167;
    S0 ***g_1217;
    int8_t g_1263;
    uint64_t g_1288;
    int8_t g_1327;
    uint8_t **g_1360;
    uint8_t ***g_1359;
    uint32_t g_1365;
    uint8_t g_1385;
    int8_t g_1389;
    int32_t g_1409;
};
__device__ int64_t  func_4(int16_t  , int16_t  , uint32_t  , uint32_t  , S2 * );
__device__ int32_t  func_11(int8_t  , uint8_t  , int32_t  , S2 * );
__device__ U1  func_15(int32_t  , uint32_t  , uint32_t  , int16_t  , uint32_t  , S2 * );
__device__ int32_t  func_1(S2 * p_1415)
{ 
    uint16_t l_2 = 65531UL;
    S0 l_641 {};
    uint16_t l_642 = 0xF373L;
    int32_t l_1050 = 0xDFE1F82EL;
    p_1415->g_1288 |= l_2 ^ ~func_4(p_1415->g_9[4], func_11((func_15(0, l_641.f2, l_642, 0, p_1415->g_542[0][0][3], p_1415) , p_1415->g_658[0]), p_1415->g_410[0][0][3], l_1050, p_1415), p_1415->g_411, p_1415->g_337, p_1415);
    return p_1415->g_1263;
}
__device__ int64_t  func_4(int16_t  , int16_t  , uint32_t  , uint32_t  p_8, S2 * )
{
    return p_8;
}
__device__ int32_t  func_11(int8_t  p_12, uint8_t  , int32_t  , S2 * )
{
    return p_12;
}
__device__ U1  func_15(int32_t  , uint32_t  , uint32_t  , int16_t  , uint32_t  p_20, S2 * p_1415)
{
    U1 l_776[3] ;
    for (; p_20 ; p_20 += 1)
        *p_1415->g_284 = p_1415->g_658[0];
    return l_776[2];
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_1416;
    S2* p_1415 = &c_1416;
    S0 **p_1415_13_1_9;
    S2 c_1417 {
        18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 
        {}, 
        0, 2L, 0, 2L, 0, 2L, 
        0x32DC1B2DL, 
        0L, 
        0UL, 
        0x66L, 
        1UL, 
        &p_1415->g_85, 
        0L, 
        0x0880L, 
        {}, 
        {}, 
        {}, 
        {}, 
        &p_1415->g_143[6][4], 
        {}, 
        0x158814E8A97BB61ELL, 
        &p_1415->g_57, 
        0x2725B358L, 
        0x28L, 
        {}, 
        1UL, 
        248UL, 
        0x6BL, 
        {}, 
        0xA8E8B36FBCF2F5A1LL, 
        0xD85A6FBF1BFB36FALL, 
        {}, 
        {}, 
        &p_1415->g_61, 
        &p_1415->g_547, 
        &p_1415->g_539[2], 
        {}, 
        {}, 
        0xC94716D7L, 
        0xBE6231E0L, 
        &p_1415->g_33[1], 
        0, 
        &p_1415_13_1_9, 
        0xA4L, 
        3UL, 
        0, 
        &p_1415->g_84, 
        &p_1415->g_1360, 
        4294967291UL, 
        5UL, 
        0, 
        0x1B1B859BL};
    c_1416 = c_1417;
    func_1(p_1415);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1415->g_1288, , );
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
