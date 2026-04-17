#include "safe_math_macros.h"
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
  
struct U0 {
  uint32_t f0;
};
struct S1 {
  int64_t g_42;
  int8_t g_57;
  U0 g_64;
  uint32_t g_127;
  int32_t g_154[4];
  int32_t ***g_178;
  int8_t *g_206;
  int32_t ****g_284;
  uint16_t g_453;
  uint32_t **g_533;
  uint64_t g_606;
  uint32_t ***g_623;
  uint64_t g_822;
  uint32_t g_928;
  uint64_t g_1001;
  U0 ***g_1080;
  U0 ****g_1079;
  uint16_t g_1270;
  uint8_t g_1281;
  int64_t *g_1309;
  int64_t **g_1308;
  U0 g_1528;
  int8_t **g_1652;
  int8_t ***g_1651;
  uint32_t g_1657;
  int16_t g_1766[10];
  uint16_t *g_1812;
  uint32_t ****g_1832;
  uint32_t g_1831;
  int32_t g_1954;
  uint16_t g_2126;
  int64_t g_21688;
  uint8_t g_2222;
  uint16_t g_2259;
  uint64_t *g_2323;
  uint32_t g_2356;
  int8_t g_2423;
  uint8_t g_2469;
  int32_t g_2529;
  int32_t g_2558;
  uint32_t *g_2592;
  U0 *****g_2614;
  int64_t g_2619;
  uint64_t g_2621;
  int8_t g_2647;
  uint64_t g_2681;
  int16_t *g_2729;
  int16_t **g_2728;
};
__device__ int8_t func_10(int32_t, int64_t, U0, int16_t, uint32_t, S1 *);
__device__ uint8_t func_1(S1 *p_2749) {
  int32_t l_4 = 0;
  U0 l_1818{};
  func_10(l_4, 0, l_1818, p_2749->g_42, p_2749->g_1766[4], p_2749);
  return 0;
}
__device__ int8_t func_10(int32_t, int64_t, U0 p_13, int16_t, uint32_t p_15,
                          S1 *p_2749) {
  uint64_t *l_2277 = &p_2749->g_606;
  *l_2277 |= safe_add_func_int64_t_s_s(
      (safe_lshift_func_int8_t_s_u(p_15, p_13.f0) & *p_2749->g_1812) < 3, -8);
  return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
  S1 c_2750;
  S1 *p_2749 = &c_2750;
  U0 **p_2749_20;
  U0 ***p_2749_36;
  U0 ****p_2749_37;
  S1 c_2751{2,
            2,
            {},
            5,
            {},
            nullptr,
            &p_2749->g_57,
            &p_2749->g_178,
            5,
            nullptr,
            8,
            &p_2749->g_533,
            8,
            2,
            2,
            &p_2749_20,
            &p_2749_36,
            1,
            0,
            nullptr,
            &p_2749->g_1309,
            {},
            &p_2749->g_206,
            &p_2749->g_1652,
            4073709551615,
            {},
            &p_2749->g_453,
            &p_2749->g_623,
            {},
            {},
            {},
            {},
            2,
            {},
            nullptr,
            {},
            {},
            {},
            1,
            2,
            &p_2749->g_1657,
            &p_2749_37,
            0,
            1,
            0,
            2,
            nullptr,
            &p_2749->g_2729};
  c_2750 = c_2751;
  func_1(p_2749);
  uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
  crc64_context ^= p_2749->g_606;
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
