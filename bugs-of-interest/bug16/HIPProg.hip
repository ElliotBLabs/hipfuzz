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

struct S0 {
  unsigned f0;
};
struct S1 {
  uint8_t g_15;
  S0 g_34[6];
  uint16_t g_51[7][4];
  int64_t g_88;
  int8_t g_101;
  int8_t *g_129[8];
  uint8_t g_135[2];
  int32_t g_142;
  uint16_t *g_160;
  int64_t g_180;
  uint32_t g_181;
  int16_t g_195;
  int8_t **g_197;
  int16_t g_207;
  uint64_t g_214;
  int64_t g_231;
  uint64_t g_232;
  S0 g_276;
  S0 g_275;
  uint8_t g_284;
  uint32_t g_297;
  int8_t g_470;
  uint32_t *g_593;
  uint64_t *g_619;
  uint64_t g_618;
  uint64_t g_617;
  uint16_t g_628;
  int64_t g_641;
  uint32_t g_646;
  uint32_t g_680;
  int32_t g_697;
  int16_t ***g_699[8];
  int16_t ****g_698;
  uint32_t g_781;
  int32_t g_851;
  int16_t g_899;
  int8_t g_1017;
  uint32_t **g_1027;
  uint32_t ***g_1026;
  uint32_t ****g_1025;
  uint32_t *****g_1024;
  int32_t *g_1033;
  int32_t g_1032;
  uint16_t *g_1090;
  uint16_t *g_1091;
  int8_t ***g_1169;
  int8_t ****g_1168;
  int8_t ****g_1171;
  int64_t *g_1363;
  int64_t **g_1362;
  int64_t ***g_1361[10];
  uint32_t g_1376;
  int8_t g_1414;
  int64_t ****g_1606;
  int64_t g_1605;
  int32_t *g_1812;
  int32_t g_1832;
  uint16_t g_1865;
  uint32_t g_1925;
  int32_t g_2128;
  uint16_t g_2298;
  uint64_t g_2323;
  uint16_t g_2401;
  uint32_t g_2455;
  int32_t *g_2491;
  int32_t g_2518;
};

__device__ int32_t func_1(S1 *p_2553) {
  *p_2553->g_619 |= safe_sub_func_int8_t_s_s(-9, p_2553->g_129[4] == 0);
  return 0;
}


__global__ void hipsmith_kernel(uint64_t *results) {
  S1 c_2554;
  S1 *p_2553 = &c_2554;
  S1 c_2555{4,
            {},
            {},
            0,
            0,
            &p_2553->g_101,
            &p_2553->g_101,
            &p_2553->g_101,
            &p_2553->g_101,
            &p_2553->g_101,
            &p_2553->g_101,
            &p_2553->g_101,
            &p_2553->g_101,
            5,
            5,
            0,
            &p_2553->g_51[1][1],
            1,
            0,
            {},
            &p_2553->g_129[4],
            {},
            1,
            4073709551615,
            2,
            0,
            0,
            1,
            8,
            2,
            &p_2553->g_297,
            &p_2553->g_214,
            {},
            {},
            0,
            0,
            8,
            {},
            {},
            {},
            &p_2553->g_699[2],
            1,
            0,
            1,
            0,
            &p_2553->g_593,
            &p_2553->g_1027,
            &p_2553->g_1026,
            &p_2553->g_1025,
            nullptr,
            {},
            &p_2553->g_51[0][3],
            nullptr,
            &p_2553->g_197,
            &p_2553->g_1169,
            &p_2553->g_1169,
            &p_2553->g_88,
            &p_2553->g_1363,
            {},
            0,
            {},
            &p_2553->g_1361[8],
            {},
            nullptr,
            1,
            {},
            0,
            4,
            4,
            2,
            8,
            0,
            &p_2553->g_851,
            {}};
  c_2554 = c_2555;
  func_1(p_2553);
  uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
  crc64_context ^= p_2553->g_214;
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
