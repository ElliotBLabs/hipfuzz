#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    uint64_t g_11[10][2];
    int32_t g_38;
    uint16_t g_59;
    uint32_t g_99;
    int32_t g_125;
    int32_t *g_143;
    uint16_t g_145;
    int32_t g_147;
    int32_t g_146;
    uint64_t g_177;
    int16_t g_183;
    uint64_t g_187;
    uint64_t *g_225;
    uint64_t **g_224;
    uint32_t g_233;
    int64_t g_257;
    int32_t **g_296[2][3][6];
    int32_t ***g_295;
    uint8_t g_322;
    int16_t g_325;
    uint32_t g_326;
    int16_t *g_360;
    int8_t g_518;
    int8_t g_525;
    uint8_t g_543;
    uint64_t g_555;
    int16_t g_660[1];
    uint8_t *g_714[8];
    uint8_t **g_713;
    int64_t g_726;
    int32_t g_746;
    uint64_t g_781;
    int32_t g_813;
    uint8_t ***g_907;
    uint8_t ****g_906;
    int32_t g_933;
    int16_t g_1036;
    uint32_t **g_1105;
    uint32_t ***g_1104;
    uint64_t g_1263;
    int32_t g_1291;
    int32_t g_1421;
    int32_t *g_1441;
    uint16_t g_1446;
    int32_t g_1530;
    uint8_t g_1644;
    uint32_t *g_1711;
    uint32_t **g_1710;
    int8_t g_1838;
    int8_t *g_1894;
    int8_t **g_1893;
    int32_t g_1913;
    uint8_t g_2074;
    int16_t g_2088;
    int16_t g_2089;
    int32_t *g_2143;
    uint32_t g_2156;
    int32_t ****g_2172;
    int32_t *****g_2171;
    int64_t *g_2176;
    int64_t g_217568;
    int32_t *g_2184;
    int32_t g_2183;
    int16_t g_2267;
    int32_t g_2298;
    int32_t g_2356;
    int8_t ***g_2394;
    int8_t ****g_2393;
    uint32_t g_2464;
    uint32_t g_2497;
    uint32_t g_2578;
    uint32_t g_2592;
    uint16_t g_2666;
    int32_t g_2724;
    int64_t **g_2764;
    uint8_t g_2860;
    uint64_t g_2876;
    uint16_t g_2878;
    int64_t g_2908;
    int8_t g_2923;
    int8_t g_2942;
    uint16_t *g_3057;
    uint16_t **g_3056;
    uint32_t ***g_3069;
    uint32_t g_3068;
};__device__ int32_t  func_16(int32_t  , int32_t  , uint16_t  , uint8_t  , S0 * );
__device__ uint64_t  func_1(S0 * p_3086)
{ 
    int64_t l_15[1];
    uint32_t l_34 = 1;
    int64_t l_2468 = 0;
    int i;
    for (i = 0; i < 1; i++)
        l_15[i] = 7;
    func_16(0, l_2468, l_15[0], l_34, p_3086);    return 0;
}
__device__ int32_t  func_16(int32_t  , int32_t  , uint16_t  p_19, uint8_t  p_20, S0 * p_3086)
{
        int64_t *l_2484 = &p_3086->g_257;        *l_2484 |= ~safe_mul_func_int64_t_s_s(safe_add_func_int16_t_s_s(p_19, p_3086->g_660[p_3086->g_525]  > p_19), p_20) ;
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_3087;
    S0* p_3086 = &c_3087;
    S0 c_3088 {
        {}, 
        2, 
        1, 
        0, 
        {}, 
        nullptr, 
        1, 
        0, 
        {}, 
        4, 
        3, 
        2, 
        &p_3086->g_11[2][0], 
        &p_3086->g_225, 
        1, 
        1, 
        {}, 
        &p_3086->g_296[1][2][4], 
        4, 
        0, 
        4073709551615, 
        &p_3086->g_325, 
        7, 
        0, 
        5, 
        4073709551607, 
        {}, 
        {}, 
        &p_3086->g_714[5], 
        0, 
        2, 
        4073709551613, 
        2, 
        &p_3086->g_713, 
        &p_3086->g_907, 
        2, 
        2, 
        nullptr, 
        &p_3086->g_1105, 
        4073709551612, 
        0, 
        0, 
        &p_3086->g_1421, 
        7, 
        {}, 
        5, 
        &p_3086->g_99, 
        &p_3086->g_1711, 
        1, 
        &p_3086->g_1838, 
        &p_3086->g_1894, 
        {}, 
        1, 
        0, 
        3, 
        nullptr, 
        5, 
        &p_3086->g_295, 
        &p_3086->g_2172, 
        nullptr, 
        {}, 
        &p_3086->g_746, 
        {}, 
        4, 
        9, 
        0, 
        &p_3086->g_1893, 
        &p_3086->g_2394, 
        {}, 
        9, 
        {}, 
        6, 
        {}, 
        {}, 
        &p_3086->g_2176, 
        3, 
        {}, 
        6, 
        {}, 
        7, 
        9, 
        nullptr, 
        &p_3086->g_3057, 
        &p_3086->g_1710, 
        {}};
    c_3087 = c_3088;
    func_1(p_3086);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_3086->g_257, , );
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
