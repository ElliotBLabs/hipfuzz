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
  unsigned f4;
};
struct S2 {
  int32_t g_8;
  int32_t g_33;
  uint16_t g_62;
  uint8_t g_66;
  uint16_t g_72;
  uint8_t g_74;
  int32_t *g_88;
  int16_t g_90;
  uint8_t *g_96;
  int16_t g_108;
  uint32_t g_109;
  uint64_t g_129;
  int g_139;
  int64_t g_140;
  int8_t g_141;
  S0 g_339;
  uint8_t ***g_357[1][8][5];
  uint8_t ****g_356;
  int16_t g_366;
  uint8_t g_367;
  uint32_t g_377;
  int g_381;
  int64_t g_424;
  int16_t g_453;
  uint64_t g_456;
  uint8_t *****g_473;
  S0 *g_478;
  S0 **g_477;
  uint64_t **g_480;
  uint16_t *g_549;
  int8_t *g_583;
  uint32_t g_634;
  int32_t g_682;
  int32_t g_685;
  uint16_t g_686;
  int32_t g_714;
  int32_t g_716;
  uint32_t g_717;
  int32_t **g_775;
  int32_t ***g_774;
  uint32_t *g_784;
  uint32_t g_831;
  int64_t *g_870;
  int64_t **g_869;
  uint8_t g_926;
  uint64_t ***g_1038;
  uint64_t ****g_1037;
  int64_t g_1053;
  uint8_t g_1097;
  int32_t g_1302;
  int32_t g_1351;
};

__device__ int32_t func_1(S2 *p_1387) {
  p_1387->g_1302 ^= safe_div_func_int64_t_s_s(4294967295, *p_1387->g_583);
  return {};
}

__global__ void hipsmith_kernel(uint64_t *results) {
  S2 c_1388;
  S2 *p_1387 = &c_1388;
  S2 c_1389{0,
            1,
            1,
            {},
            4,
            3,
            &p_1387->g_33,
            8,
            nullptr,
            0,
            3,
            0,
            {},
            0,
            1,
            {},
            {},
            &p_1387->g_357[0][6][4],
            2,
            8,
            7,
            {},
            0,
            6,
            9,
            &p_1387->g_356,
            nullptr,
            &p_1387->g_478,
            nullptr,
            &p_1387->g_62,
            &p_1387->g_141,
            0,
            3,
            5,
            5,
            1,
            0,
            9,
            nullptr,
            &p_1387->g_775,
            nullptr,
            3,
            &p_1387->g_424,
            &p_1387->g_870,
            5,
            &p_1387->g_480,
            &p_1387->g_1038,
            0,
            5,
            0,
            {}};
  c_1388 = c_1389;
  func_1(p_1387);
  uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
  crc64_context ^= p_1387->g_1302;
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
