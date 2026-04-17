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
  signed f4;
};
struct S1 {};
struct S2 {};
struct U3 {};
struct S5 {
  S0 g_2;
  int32_t g_5;
  uint32_t g_13;
  uint32_t g_22;
  uint64_t g_26;
  U3 g_29;
  uint32_t g_35[1][3];
  uint32_t *g_34;
  uint64_t g_80;
  uint32_t g_87;
  int32_t g_96;
  uint8_t g_98;
  uint8_t g_106;
  int32_t **g_108;
  int32_t ***g_107;
  int64_t g_137;
  uint16_t g_166;
  uint8_t g_173;
  S0 g_205;
  uint64_t g_224;
  uint64_t g_237;
  int32_t g_258;
  int8_t g_260;
  uint8_t g_261;
  int32_t g_266;
  int64_t g_346;
  int8_t g_347;
  int16_t g_349;
  uint32_t g_351;
  uint32_t g_360;
  S0 g_370[10];
  S0 **g_369;
  int g_377[1][5];
  int *g_376;
  S2 g_378;
  uint16_t g_404;
  uint8_t *g_416;
  int32_t g_428;
  uint32_t g_459;
  int32_t g_462;
  int32_t g_464;
  int32_t g_465;
  int8_t g_467;
  U3 *g_607;
  U3 **g_606;
  S1 g_677;
  int16_t g_854;
  S2 *g_869;
  S2 **g_868;
  S2 ***g_867;
  uint32_t g_904;
  int64_t g_916;
  uint64_t *g_981;
  uint64_t g_980;
  int8_t *g_1067;
  int32_t g_1211;
  S1 g_1229;
  U3 g_1253;
  S2 g_1284;
  int32_t g_1369;
  int g_1408;
  S1 *g_1449;
  S1 **g_1448;
  uint16_t *g_1509[2][10][9];
  uint16_t **g_1508;
  uint32_t g_1688;
  uint8_t g_1729;
};

__device__ uint32_t func_1(S5 *p_1736) {
  p_1736->g_137 |= safe_add_func_int32_t_s_s(safe_rshift_func_int8_t_s_s(248, 0), 0 < p_1736->g_205.f4);
  return 0;
}

__global__ void hipsmith_kernel(uint64_t *results) {
  S5 c_1737;
  S5 *p_1736 = &c_1737;
  S2 **p_1736_49;
  S2 *p_1736_48;
  U3 *p_1736_44;
  S1 *p_1736_62;
  S0 *p_1736_31_5;
  S5 c_1738{{},
            5,
            4073709551615,
            8,
            5,
            {},
            {},
            &p_1736->g_35[0][1],
            4,
            4,
            4,
            {},
            3,
            nullptr,
            &p_1736->g_108,
            1,
            8,
            0,
            {},
            9,
            4073709551615,
            0,
            3,
            5,
            0,
            5,
            {},
            2,
            5,
            2,
            {},
            &p_1736_31_5,
            {},
            &p_1736->g_377[0][2],
            {},
            0,
            nullptr,
            0,
            1,
            7,
            {},
            {},
            1,
            &p_1736->g_29,
            &p_1736_44,
            {},
            0,
            &p_1736->g_378,
            &p_1736_48,
            &p_1736_49,
            3,
            1,
            nullptr,
            {},
            nullptr,
            {},
            {},
            {},
            {},
            0,
            {},
            nullptr,
            &p_1736_62,
            {},
            &p_1736->g_1509[1][5][3],
            8,
            {}};
  c_1737 = c_1738;
  func_1(p_1736);
  uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
  crc64_context ^= p_1736->g_137;
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
