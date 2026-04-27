#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct U1 {
   int64_t  f0;
};
struct S2 {
    int32_t g_3[3][5];
    U1 g_16;
    int32_t g_39;
    int32_t *g_38;
    int8_t g_55;
    int8_t g_56[8][4];
    uint16_t g_57;
    int16_t g_86;
    int16_t g_88;
    uint64_t g_91;
    uint8_t g_100;
    uint8_t *g_99;
    int8_t g_111;
    int32_t **g_135;
    int32_t ***g_134;
    int32_t ****g_133;
    int8_t g_142;
    int32_t g_179;
    uint32_t g_180;
    int g_233;
    int8_t g_235;
    int64_t g_283;
    uint8_t g_307;
    int *g_336;
    int32_t g_380;
    uint32_t g_381;
    int32_t g_385;
    uint64_t *g_418;
    uint64_t **g_417;
    uint32_t g_425;
    uint32_t g_441;
    uint8_t g_446;
    U1 g_541;
    U1 g_540;
    uint8_t **g_547;
    uint8_t ***g_546;
    uint64_t g_551;
    uint8_t g_552;
    int64_t g_555;
    uint16_t g_557[5][5][2];
    uint32_t g_560;
    int32_t g_644;
    int32_t *g_714;
    int32_t g_715;
    int g_768;
    int g_769;
    uint32_t g_826;
    int64_t g_839;
    int8_t *g_936;
    int8_t **g_935;
    int8_t *g_1018;
    uint64_t g_1025;
    uint16_t g_1068;
    int **g_1159[1][6];
    int ***g_1158;
    int ****g_1157;
    uint16_t *g_1216;
    uint16_t **g_1215;
    uint16_t g_1214[1];
    uint32_t g_1243;
    uint64_t g_1400;
    int8_t g_1578;
    uint32_t g_1854;
    int g_1970;
    uint8_t ****g_2037;
    uint8_t *****g_2036;
    int64_t g_2057;
    uint64_t ***g_2206[7];
    uint64_t ****g_2205;
    int32_t *g_2274;
    int8_t g_2320;
    uint32_t g_2361;
    int8_t *g_2449;
    int32_t g_2451;
    uint32_t g_2535;
    int32_t *g_2653;
};
__device__ uint64_t  func_13(U1  , uint32_t  , S2 * );
__device__ U1  func_31(uint32_t  , int32_t * , int32_t * , S2 * );
__device__ uint16_t  func_1(S2 * p_2683)
{
    func_13(p_2683->g_16, p_2683->g_16.f0, p_2683) ;
    return 0;
}
__device__ uint64_t  func_13(U1  , uint32_t  , S2 * p_2683)
{ 
    int32_t *l_35 = &p_2683->g_3[1][1]
     ;
    if (func_31(p_2683->g_3[2][2], 0, l_35, p_2683) , l_35) 
    return 0;
}
__device__ U1  func_31(uint32_t  p_32, int32_t * , int32_t * , S2 * p_2683)
{
    U1 l_563 ;
            int8_t l_410 = 160;
            int64_t *l_415 = &p_2683->g_283;
            *l_415 |= safe_add_func_int64_t_s_s(l_410 , 0 < p_32) ;
    return l_563;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_2684;
    S2* p_2683 = &c_2684;
    S2 c_2685 {
        {}, 
        {}, 
        1, 
        &p_2683->g_39, 
        6, 
        {}, 
        8, 
        0, 
        {}, 
        4073709551613, 
        7, 
        &p_2683->g_100, 
        8, 
        &p_2683->g_38, 
        &p_2683->g_135, 
        &p_2683->g_134, 
        0, 
        0, 
        1, 
        {}, 
        1, 
        2, 
        1, 
        &p_2683->g_233, 
        8, 
        0, 
        2, 
        &p_2683->g_91, 
        &p_2683->g_418, 
        1, 
        0, 
        {}, 
        {}, 
        {}, 
        &p_2683->g_99, 
        &p_2683->g_547, 
        4, 
        0, 
        0, 
        {}, 
        4, 
        {}, 
        nullptr, 
        {}, 
        {}, 
        {}, 
        {}, 
        5, 
        &p_2683->g_111, 
        &p_2683->g_936, 
        &p_2683->g_56[1][0], 
        0, 
        {}, 
        {}, 
        &p_2683->g_1159[0][0], 
        &p_2683->g_1158, 
        &p_2683->g_557[4][3][1], 
        &p_2683->g_1216, 
        {}, 
        0, 
        6, 
        0, 
        1, 
        {}, 
        &p_2683->g_546, 
        &p_2683->g_2037, 
        0, 
        {}, 
        &p_2683->g_2206[3], 
        &p_2683->g_39, 
        {}, 
        5, 
        &p_2683->g_142, 
        {}, 
        7, 
        &p_2683->g_3[0][1]};
    c_2684 = c_2685;
    func_1(p_2683);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2683->g_283, , );
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
