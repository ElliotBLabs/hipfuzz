#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   signed f4 ;
};
struct S1 {
   int64_t  f0;
   int64_t  f1;
   int32_t  f2;
};
struct S2 {
    uint64_t g_4[8];
    S0 g_7[5][3][8];
    S1 g_9;
    S1 g_12;
    uint16_t g_17;
    S1 g_94;
    uint16_t *g_298;
    uint16_t **g_297;
    uint16_t ***g_296;
    uint64_t *g_332;
    uint64_t g_331;
    uint32_t g_401;
    int64_t *g_420;
    int64_t g_421;
    uint64_t *g_455;
    uint8_t g_477;
    int16_t g_492;
    int16_t g_496;
    int16_t *g_495;
    int32_t g_534;
    int32_t g_540;
    uint8_t g_609;
    uint8_t *g_608;
    uint32_t g_646;
    int32_t *g_678;
    uint32_t g_712;
    uint16_t g_753;
    int32_t *g_795;
    S1 *g_879;
    S1 *g_893;
    S0 *g_926;
    S0 **g_925;
    uint32_t **g_965;
    uint32_t ***g_964;
    uint32_t ****g_963;
    uint64_t g_971;
    uint64_t g_1137;
    uint16_t g_1240;
    uint16_t ****g_1291[8][7];
    uint16_t *****g_1290;
    uint16_t g_1298;
    int32_t g_1311g_1313;
    int32_t *g_1323;
    S0 g_1341;
    S0 ***g_1363;
    S0 ****g_1362;
    S1 **g_1379;
    S1 ***g_1378;
    uint8_t g_1386;
    uint16_t g_1389;
    uint8_t g_1397;
};
__device__ int8_t  func_23(S1 * , S2 * );
__device__ int32_t  func_39(S0  , uint16_t  , int32_t  , S2 * );
__device__ uint32_t  func_1(S2 * p_1439)
{
    func_23(&p_1439->g_12, p_1439)
    ;
    return 0;
}
__device__ S0  func_2(int8_t  , S2 * )
{
    S0 l_20 {};
    return l_20;
}
__device__ int8_t  func_23(S1 * , S2 * p_1439)
{
    func_39(func_2(0, p_1439), p_1439->g_94.f1, p_1439->g_534, p_1439);
    return 0;
}
__device__ int32_t  func_39(S0  p_40, uint16_t  , int32_t  , S2 * p_1439)
{ 
    int32_t l_545 = 4040666499;
        int64_t *l_558 = &p_1439->g_9.f0;
        l_545 ^= p_1439->g_94.f2 >= p_40.f4, *l_558 |= l_545  ;
                return p_40.f4;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_1440;
    S2* p_1439 = &c_1440;
    S1 **p_1439_50;
    S0 ***p_1439_48;
    S0 **p_1439_35;
    S0 *p_1439_34;
    S1 *p_1439_33;
    S2 c_1441 {
        {}, 
        {}, 
        {}, 
        {}, 
        0, 
        {}, 
        &p_1439->g_17, 
        &p_1439->g_298, 
        &p_1439->g_297, 
        nullptr, 
        {}, 
        1, 
        nullptr, 
        {}, 
        &p_1439->g_4[4], 
        {}, 
        3, 
        5, 
        &p_1439->g_496, 
        2, 
        8, 
        3, 
        &p_1439->g_609, 
        4, 
        nullptr, 
        0, 
        5, 
        nullptr, 
        nullptr, 
        nullptr, 
        &p_1439->g_7[0][2][0], 
        &p_1439_34, 
        nullptr, 
        &p_1439->g_965, 
        &p_1439->g_964, 
        3, 
        {}, 
        2, 
        {}, 
        &p_1439->g_1291[5][3], 
        0, 
        {}, 
        nullptr, 
        {}, 
        &p_1439_35, 
        &p_1439_48, 
        &p_1439_33, 
        &p_1439_50, 
        {}, 
        4, 
        7};
    c_1440 = c_1441;
    func_1(p_1439);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1439->g_9.f0, , );
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
