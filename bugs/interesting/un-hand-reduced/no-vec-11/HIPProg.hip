#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   unsigned f6 ;
};
struct S2 {};
struct S3 {};
struct S4 {
    uint64_t g_11;
    uint16_t g_30;
    int64_t g_86;
    S3 g_129;
    int32_t g_147;
    int32_t g_161;
    S0 g_173[8][3];
    uint64_t g_196;
    int64_t g_276[3][5][3];
    int64_t *g_275;
    uint16_t g_307;
    uint32_t **g_346[8];
    int32_t g_521;
    int32_t g_574;
    uint64_t *g_665;
    uint32_t g_675;
    int8_t g_724;
    int32_t g_726;
    uint8_t g_727;
    int32_t *g_1060;
    S2 g_1892;
    uint64_t g_1915;
    int8_t g_1989;
    uint32_t g_2056;
    uint8_t *g_2201;
    uint8_t **g_2200;
    uint8_t g_2243;
    uint8_t g_2255;
    int64_t g_2363;
    uint32_t g_2379;
    S2 *g_2383;
    S3 *g_2423;
    int16_t ***g_2443;
    int16_t ****g_2442;
    int32_t **g_2544;
    int32_t g_2543;
    uint32_t ***g_2565;
    uint32_t ****g_2564;
    S3 *g_2589;
    S3 ****g_2588;
    int32_t g_2642;
    int32_t g_2648;
    int32_t g_2718;
    uint8_t g_2725;
    uint64_t g_2850;
};
__device__ S3  func_50(S2  , uint16_t * , S4 * );
__device__ S2  func_53(uint64_t * , int32_t  , uint64_t * , uint16_t  , uint16_t * , S4 * );
__device__ int8_t  func_1(S4 * p_2941)
{
    int32_t l_1972 = 3;
    uint16_t *l_2017[7];
    uint64_t l_2026[2];
    uint16_t *l_2683[10];
    int i;
    for (i = 0; i < 7; i++)
        l_2017[i] = &p_2941->g_307;
    for (i = 0;i < 10; i++)
        l_2683[i] = &p_2941->g_30;
    func_50(func_53(&p_2941->g_1915, *p_2941->g_275 == 0, &l_2026[1], l_1972, l_2017[1], p_2941), l_2683[3], p_2941) ;
    return p_2941->g_173[1][1].f6;
}
__device__ S3  func_50(S2  , uint16_t * , S4 * p_2941)
{
    S3 l_547 ;    
                    uint64_t *l_385 = &p_2941->g_11;func_53(&p_2941->g_11, 12, l_385, 0, &p_2941->g_30, p_2941) ;
    return l_547;
}
__device__ S2  func_53(uint64_t * , int32_t  p_55, uint64_t * , uint16_t  , uint16_t * , S4 * p_2941)
{
    S2 l_246[9] ;
            int64_t *l_224 = &p_2941->g_86;
            *l_224 |= safe_add_func_int64_t_s_s(-6, p_55) ;
    return l_246[5];
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S4 c_2942;
    S4* p_2941 = &c_2942;
    S3 ***p_2941_85;
    S4 c_2943 {
        2, 
        9, 
        1, 
        {}, 
        0, 
        2, 
        {}, 
        9, 
        {}, 
        &p_2941->g_276[2][3][0], 
        7, 
        {}, 
        8, 
        {}, 
        nullptr, 
        {}, 
        5, 
        8, 
        1, 
        &p_2941->g_147, 
        {}, 
        7, 
        4, 
        5, 
        nullptr, 
        &p_2941->g_2201, 
        5, 
        9, 
        1, 
        {}, 
        &p_2941->g_1892, 
        &p_2941->g_129, 
        nullptr, 
        &p_2941->g_2443, 
        &p_2941->g_1060, 
        {}, 
        &p_2941->g_346[1], 
        &p_2941->g_2565, 
        nullptr, 
        &p_2941_85, 
        0, 
        7, 
        0, 
        5, 
        5};
    c_2942 = c_2943;
    func_1(p_2941);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2941->g_86, , );
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
