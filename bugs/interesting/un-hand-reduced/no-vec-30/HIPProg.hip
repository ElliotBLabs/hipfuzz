#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   unsigned f2 ;
};
struct S1 {
   uint16_t  f1;
   int32_t  f6;
   int8_t  f7;
};
struct S2 {
    int16_t g_17;
    int8_t g_24;
    int8_t *g_32;
    S1 g_57;
    int16_t g_60;
    uint16_t g_66;
    S0 g_68[2];
    int8_t g_152;
    int8_t g_164;
    uint32_t g_168;
    int32_t *g_171;
    int16_t g_174;
    uint16_t g_176;
    uint8_t *g_180;
    uint8_t **g_179;
    int32_t g_188;
    uint16_t g_189;
    int64_t g_238;
    uint32_t g_268;
    int64_t g_304;
    int32_t g_305;
    int32_t g_306;
    uint32_t g_307;
    uint32_t g_340;
    int32_t g_385;
    int64_t g_386;
    uint8_t g_390;
    int32_t g_393;
    uint32_t g_425;
    int64_t *g_476;
    int64_t **g_475;
    uint8_t ***g_489;
    uint8_t ****g_488;
    uint8_t *****g_487;
    int8_t *g_558;
    int8_t g_568[4];
    S1 *g_589;
    S1 **g_588[7][2][6];
    uint8_t *g_613;
    S1 ***g_626;
    int64_t *g_684;
    S1 ****g_925;
    int32_t *g_998;
    int32_t **g_997;
    int32_t *g_1091;
    uint16_t *g_1097;
    uint16_t **g_1096;
    int32_t g_1242;
    S0 *g_1269;
    S0 **g_1268[1][10];
    int32_t g_1288;
    uint64_t g_1340;
    S1 g_1376;
    uint32_t *g_1433;
    uint8_t g_1480;
    int64_t ***g_1558;
    int64_t ****g_1557;
    int32_t g_1611;
    uint32_t g_1624;
    S0 ***g_1662;
    S0 ****g_1661;
    uint16_t *g_1772;
    uint8_t ***g_1835;
    int32_t g_1910;
    int64_t g_1936;
    int8_t **g_1956;
    int8_t g_1955;
    int16_t g_2080;
    uint64_t g_2082;
    int64_t *g_2145;
    int8_t g_2175;
    int8_t g_2174;
    int32_t g_2194;
    int32_t g_2196;
    S1 ****g_2245;
    uint64_t g_2535;
    S1 g_2592;
    uint32_t *g_2651[6][5][4];
    uint32_t **g_2650;
    uint8_t g_2670;
    int8_t g_2716;
};
__device__ uint8_t  func_4(uint16_t  , S0  , uint32_t  , int32_t  , int64_t  , S2 * );
__device__ uint64_t  func_10(uint16_t  , uint8_t  , int32_t  , S2 * );
__device__ int64_t  func_1(S2 * p_2846)
{ 
    int32_t l_14 = 0;
    S0 l_1678 {};
    uint32_t l_2601[2];
    int32_t l_2835[9][2][10] {};
    int i;
    for (i = 0; i < 2; i++)
        l_2601[i] = 9;
    if (func_4(func_10(l_14, 0, l_2601[1], p_2846) , l_1678, p_2846->g_305, l_2835[7][1][2], p_2846->g_568[1], p_2846)^ 1)
    return 0;
}
__device__ uint8_t  func_4(uint16_t  , S0  p_6, uint32_t  , int32_t  , int64_t  , S2 * )
{ 
    return p_6.f2;
}
__device__ uint64_t  func_10(uint16_t  p_11, uint8_t  , int32_t  p_13, S2 * p_2846)
{ 
    uint64_t *l_2604 = &p_2846->g_1340;    uint64_t *l_2617 = &p_2846->g_2082;
    *l_2617 |= *l_2604 = p_13 == 0 ^ -4;
    return p_11;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_2847;
    S2* p_2846 = &c_2847;
    S2 c_2848 {
        0, 
        2, 
        nullptr, 
        {}, 
        {}, 
        1, 
        {}, 
        0, 
        0, 
        0, 
        &p_2846->g_57.f6, 
        {}, 
        5, 
        nullptr, 
        &p_2846->g_180, 
        {}, 
        0, 
        0, 
        0, 
        7, 
        8, 
        4, 
        9, 
        5, 
        0, 
        0, 
        8, 
        {}, 
        2, 
        nullptr, 
        &p_2846->g_476, 
        &p_2846->g_179, 
        &p_2846->g_489, 
        &p_2846->g_488, 
        &p_2846->g_57.f7, 
        {}, 
        &p_2846->g_57, 
        {}, 
        nullptr, 
        &p_2846->g_588[1][1][0], 
        &p_2846->g_304, 
        &p_2846->g_626, 
        nullptr, 
        &p_2846->g_998, 
        nullptr, 
        &p_2846->g_57.f1, 
        &p_2846->g_1097, 
        0, 
        nullptr, 
        {}, 
        1, 
        4073709551615, 
        {}, 
        &p_2846->g_307, 
        3, 
        &p_2846->g_475, 
        &p_2846->g_1558, 
        7, 
        4, 
        &p_2846->g_1268[0][6], 
        &p_2846->g_1662, 
        nullptr, 
        &p_2846->g_179, 
        0, 
        0, 
        &p_2846->g_558, 
        {}, 
        0, 
        5, 
        nullptr, 
        {}, 
        {}, 
        {}, 
        2, 
        &p_2846->g_626, 
        9, 
        {}, 
        {}, 
        &p_2846->g_2651[5][0][0], 
        {}, 
        1};
    c_2847 = c_2848;
    func_1(p_2846);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2846->g_2082, , );
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
