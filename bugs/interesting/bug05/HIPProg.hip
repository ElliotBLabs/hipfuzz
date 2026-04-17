#include <hip/hip_runtime.h>

#define HIP_CHECK(expression)                                               \
  {                                                                         \
    const hipError_t err = expression;                                      \
    if (err != hipSuccess) {                                                \
      fprintf(stderr, "HIP error: %s at %d\n", hipGetErrorString(err),      \
              __LINE__);                                                    \
      exit(EXIT_FAILURE);                                                   \
    }                                                                       \
  }

struct U1 {};
struct U2 {
   int32_t  f0;
};
struct U3 {};
struct S5 {
    U2 g_8[10];
    int32_t g_72;
    int32_t *g_71;
    int64_t g_76;
    int g_161;
    uint64_t g_173;
    uint32_t g_321;
    U3 g_350;
    uint64_t *g_431;
    uint64_t **g_430;
    uint8_t ****g_503;
    U1 g_504;
    uint32_t *g_685;
    uint32_t **g_684;
    uint64_t g_856;
    uint8_t *g_2027;
    int64_t *g_2125[2];
    int64_t *g_2124;
    int8_t g_2231;
    uint32_t g_2372[9];
    int32_t *g_2547;
    uint16_t g_2660;
    int32_t g_2668;
    int64_t ***g_2779[10][1][9];
    int64_t ****g_2778[5];
    int64_t *****g_2777;
    U3 *g_2821;
    uint16_t g_2853;
    int32_t *g_2905;
    int32_t g_2999;
    uint8_t g_3011;
    int64_t g_3165;
    U1 *g_3209;
    uint32_t g_3234;
    uint32_t g_3272;
    uint8_t g_3284;
    int8_t g_3317;
    uint32_t **g_3338;
    uint64_t ***g_3423;
    int32_t *g_3425;
    int8_t *g_3444;
    int8_t **g_3443;
    uint16_t *g_3449;
    U1 *g_3479;
    U1 ***g_3478;
    uint32_t g_3539;
    uint8_t *****g_3546;
    uint8_t g_3547[7];
    int32_t g_3579;
    uint32_t g_3740;
};

__device__ U3  func_1(S5 * p_3836)
{
    uint64_t *l_1519 = &p_3836->g_856;
    *l_1519 |= *p_3836->g_431 = -3L | p_3836->g_8[7].f0;
    return *p_3836->g_2821;
}

__global__ void hipsmith_kernel(uint64_t *results) {
    S5 c_3837;
    S5* p_3836 = &c_3837;
    U1 **p_3836_99;
    S5 c_3838 {
        {}, 
        9, 
        &p_3836->g_72, 
        3, 
        0, 
        3, 
        5, 
        {}, 
        &p_3836->g_173, 
        &p_3836->g_431, 
        nullptr, 
        {}, 
        &p_3836->g_321, 
        &p_3836->g_685, 
        9, 
        nullptr, 
        &p_3836->g_76, &p_3836->g_76, 
        nullptr, 
        1, 
        4073709551615, 4073709551615, 7, 4073709551615, 4073709551615, 7, 4073709551615, 4073709551615, 7, 
        &p_3836->g_8[7].f0, 
        1, 
        {}, 
        {}, 
        &p_3836->g_2779[6][0][4], nullptr, &p_3836->g_2779[6][0][4], nullptr, &p_3836->g_2779[6][0][4], 
        &p_3836->g_2778[1], 
        &p_3836->g_350, 
        9, 
        nullptr, 
        {}, 
        1, 
        0, 
        nullptr, 
        {}, 
        4, 
        5, 
        5, 
        &p_3836->g_685, 
        &p_3836->g_430, 
        &p_3836->g_72, 
        nullptr, 
        &p_3836->g_3444, 
        nullptr, 
        nullptr, 
        &p_3836_99, 
        0, 
        &p_3836->g_503, 
        2, 3, 2, 3, 2, 3, 2, 
        5, 
        0};
    c_3837 = c_3838;
    func_1(p_3836);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_3836->g_856;
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
    for (size_t i = 0; i < h_results.size(); ++i)
    printf("Thread %zu CRC: %lu\n", i, h_results[i]);
    return 0;
}
