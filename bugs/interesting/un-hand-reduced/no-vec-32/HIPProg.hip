#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    uint8_t g_4;
    int32_t g_37;
    int16_t g_64;
    int32_t g_80;
    int32_t g_93;
    int16_t *g_191;
    uint8_t *g_209;
    uint64_t g_271;
    uint16_t *g_280[5];
    uint16_t **g_279;
    int32_t g_391;
    int32_t *g_601;
    int32_t **g_600[3][9][9];
    uint16_t ***g_694;
    uint16_t ****g_693;
    int32_t g_745;
    uint32_t g_761;
    uint16_t g_810;
    int32_t ***g_838;
    int32_t ****g_837;
    int16_t **g_851;
    int16_t ***g_850;
    int16_t ****g_849;
    uint8_t ***g_891[2][8][4];
    uint8_t ****g_890;
    uint16_t g_906;
    uint32_t g_936;
    uint32_t g_960;
    uint8_t g_981[6];
    uint64_t *g_995;
    uint16_t g_1156;
    int16_t *g_1197;
    int32_t *g_1204;
    int8_t g_1268;
    int8_t *g_1322;
    int16_t g_1349;
    int16_t g_1506;
    uint8_t g_1723;
    uint32_t g_1826;
    uint32_t **g_1825[9];
    uint32_t ***g_1837;
    uint16_t g_1869;
    uint32_t g_1891;
    int32_t g_1933;
    uint16_t *****g_2267;
    uint32_t g_2268;
    int16_t *g_2318;
    uint32_t g_2319;
};
__device__ int16_t  func_29(int64_t  , uint64_t  , uint32_t  , int16_t  , S0 * );
__device__ int32_t  func_38(int32_t * , S0 * );
__device__ int32_t * func_40(uint8_t  , int32_t * , uint8_t  , int32_t * , S0 * );
__device__ uint8_t  func_45(int32_t  , int32_t * , int32_t  , S0 * );
__device__ uint32_t  func_1(S0 * p_2364)
{ 
    int16_t l_5 = 1;
    uint16_t l_6 = 2;
    func_29(l_5, l_6, 0, l_6, p_2364) ;
    return p_2364->g_2268;
}
__device__ int16_t  func_29(int64_t  , uint64_t  , uint32_t  p_32, int16_t  , S0 * p_2364)
{
    int32_t *l_36 {};
    int32_t *l_724 = &p_2364->g_80;
    func_38(func_40(p_32, &p_2364->g_37, func_45(0, l_36, 0, p_2364), l_724, p_2364), p_2364) ;
    return 0;
}
__device__ int32_t  func_38(int32_t * , S0 * p_2364)
{ 
    uint32_t l_1159[5];
    int i;
    for (i = 0; i < 5; i++)
        l_1159[i] = 9;
    *p_2364->g_995 |= safe_mul_func_int8_t_s_s(safe_add_func_int32_t_s_s(l_1159[1], safe_div_func_int16_t_s_s(****p_2364->g_849, 4) >= 2), 74) ;
    return 0;
}
__device__ int32_t * func_40(uint8_t  , int32_t * p_42, uint8_t  , int32_t * , S0 * )
{
    return p_42;
}
__device__ uint8_t  func_45(int32_t  , int32_t * , int32_t  , S0 * )
{ 
    int16_t l_723= 4;
    return l_723;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_2365;
    S0* p_2364 = &c_2365;
    S0 c_2366 {
        2, 
        1, 
        5, 
        0, 
        6, 
        &p_2364->g_64, 
        &p_2364->g_4, 
        6, 
        {}, 
        &p_2364->g_280[3], 
        {}, 
        &p_2364->g_93, 
        {}, 
        &p_2364->g_279, 
        &p_2364->g_694, 
        0, 
        4073709551615, 
        8, 
        &p_2364->g_600[2][3][1], 
        &p_2364->g_838, 
        &p_2364->g_191, 
        &p_2364->g_851, 
        &p_2364->g_850, 
        {}, 
        &p_2364->g_891[0][0][1], 
        4, 
        2, 
        4, 
        8, 8, 1, 8, 8, 1, 
        &p_2364->g_271, 
        {}, 
        nullptr, 
        &p_2364->g_80, 
        0, 
        &p_2364->g_1268, 
        7, 
        7, 
        {}, 
        {}, 
        {}, 
        &p_2364->g_1825[0], 
        2, 
        4, 
        1, 
        &p_2364->g_693, 
        5, 
        nullptr, 
        4};
    c_2365 = c_2366;
    func_1(p_2364);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2364->g_271, , );
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
