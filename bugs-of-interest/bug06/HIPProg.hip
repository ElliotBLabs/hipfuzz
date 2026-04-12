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

#include "safe_math_macros.h"

struct S2 {
   signed f2 ;
};
struct U4 {
   uint64_t  f0;
};
struct S5 {
    int64_t g_97;
    uint32_t g_98;
    int g_104[4];
    int16_t **g_107;
    int32_t *g_117;
    int32_t **g_116;
    uint32_t g_120;
    uint64_t g_134;
    int g_138;
    uint32_t g_145;
    int16_t ***g_147;
    S2 g_162;
    S2 *g_161;
    uint16_t g_184[8];
    int8_t g_207;
    int8_t g_245;
    uint8_t g_246;
    U4 g_257;
    int16_t g_327;
    uint16_t g_343;
    uint32_t **g_380;
    uint32_t ***g_379;
    int g_403;
    int *g_472;
    int **g_471;
    int8_t *g_489;
    uint64_t g_512;
    uint64_t g_511;
    int16_t g_570;
    uint32_t g_579;
    int16_t ***g_582;
    int *g_598;
    int16_t g_610;
    uint32_t g_611;
    int64_t g_688;
    int32_t g_689;
    int32_t g_690;
    uint16_t g_692;
    S2 **g_728;
    U4 g_749;
    uint32_t g_852;
    int8_t **g_865;
    int32_t ***g_911;
    uint64_t g_938;
    uint8_t g_963;
    int32_t g_975;
    int32_t g_977;
    int64_t g_1130;
    uint16_t *g_1285;
    uint16_t **g_1284;
    uint16_t ***g_1283;
    uint16_t g_1311;
    int64_t g_1443;
    int *g_1506;
    int g_1508;
    int8_t ***g_1510;
    int8_t ****g_1509;
    int16_t ****g_1519;
    int16_t *****g_1518;
    int32_t g_1551;
};

__device__ uint16_t  func_1(S5 * p_1552)
{
    p_1552->g_97 |= safe_add_func_int64_t_s_s(0 < *p_1552->g_489, 18446744073709551610) ;
    return 0;
}

__global__ void hipsmith_kernel(uint64_t *results) {
    S5 c_1553;
    S5* p_1552 = &c_1553;
    S5 c_1554 {
        6, 
        3, 
        {}, 
        nullptr, 
        nullptr, 
        &p_1552->g_117, 
        2, 
        4, 
        {}, 
        0, 
        &p_1552->g_107, 
        {}, 
        &p_1552->g_162, 
        {}, 
        0, 
        {}, 
        7, 
        {}, 
        2, 
        7, 
        nullptr, 
        &p_1552->g_380, 
        {}, 
        nullptr, 
        &p_1552->g_472, 
        &p_1552->g_245, 
        {}, 
        {}, 
        3, 
        0, 
        &p_1552->g_107, 
        &p_1552->g_403, 
        0, 
        {}, 
        3, 
        0, 
        1, 
        4, 
        &p_1552->g_161, 
        {}, 
        {}, 
        &p_1552->g_489, 
        &p_1552->g_116, 
        0, 
        8, 
        2, 
        7, 
        0, 
        &p_1552->g_184[0], 
        &p_1552->g_1285, 
        &p_1552->g_1284, 
        6, 
        {}, 
        &p_1552->g_104[0], 
        {}, 
        &p_1552->g_865, 
        &p_1552->g_1510, 
        nullptr, 
        &p_1552->g_1519, 
        1};
    c_1553 = c_1554;
    func_1(p_1552);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_1552->g_97;
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
