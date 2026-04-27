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
  uint8_t f0;
  int32_t f1;
  uint32_t f2;
};
struct S1 {
  uint16_t f1;
  uint8_t f2;
  int8_t f4;
};
struct S2 {
  int16_t f6;
  int16_t f7;
};
struct S3 {
  int32_t g_3;
  int64_t g_46;
  int8_t g_51;
  S1 g_52;
  uint64_t g_54;
  int32_t g_65;
  uint64_t *g_75;
  S0 g_111;
  uint16_t *g_112;
  int32_t g_146;
  int32_t g_151[5][4][8];
  S2 g_152;
  S2 g_154;
  int8_t g_190;
  S0 *g_274[6][5][7];
  S0 **g_273;
  int16_t *g_350;
  int16_t **g_349[5];
  int16_t ***g_348;
  int32_t g_406;
  int64_t g_453;
  uint64_t g_513;
  uint8_t *g_514;
  int8_t *g_541;
  int8_t **g_540;
  S1 g_549;
  int32_t *g_564;
  uint64_t *g_661;
  S2 *g_737;
  S2 **g_736[10];
  uint8_t *g_833;
  uint64_t *g_865;
  int64_t g_884;
  uint32_t g_980;
  uint32_t g_1107;
  int16_t ****g_1122[10][6][4];
  int16_t *****g_1121;
  S0 *g_1149;
  uint32_t g_1161;
  S1 **g_1169;
  S1 ***g_1168;
  int32_t g_1226;
  uint8_t g_1233;
  S2 ***g_1317;
  S2 g_1316;
  int16_t g_1410;
  uint8_t g_1473;
  uint64_t g_1513;
};
__device__ int8_t func_8(S0, int32_t *, S3 *);
__device__ S0 func_11(int8_t, int8_t, int32_t *, int64_t, S3 *);
__device__ uint32_t func_16(int32_t, S0, uint32_t, S3 *);
__device__ S0 func_21(S0, int32_t *, S3 *);
__device__ S0 func_24(S1, int32_t, int32_t *, uint64_t, S3 *);
__device__ S1 func_29(int32_t *, int32_t, uint32_t, S3 *);
__device__ int32_t *func_35(uint64_t, int32_t, uint8_t, int32_t *, S3 *);
__device__ uint64_t func_1(S3 *p_1515) {
  int32_t *l_2 = &p_1515->g_3;
  int8_t *l_50 = &p_1515->g_51;
  uint64_t l_62 = 8;
  uint32_t l_340 = 4073709551611;
  uint64_t l_1514 = *l_50 = func_8(
      func_11(func_16(1,
                      func_21(func_24(func_29(func_35(0, l_62, p_1515->g_52.f4,
                                                      &p_1515->g_3, p_1515),
                                              p_1515->g_146, l_340, p_1515),
                                      *l_2, l_2, *l_2, p_1515),
                              &p_1515->g_146, p_1515),
                      p_1515->g_406, p_1515) |
                  p_1515->g_111.f1,
              *l_2, &p_1515->g_3, *l_2, p_1515),
      &p_1515->g_3, p_1515);
  return l_1514;
}
__device__ int8_t func_8(S0, int32_t *, S3 *p_1515) { return *p_1515->g_541; }
__device__ S0 func_11(int8_t p_12, int8_t, int32_t *, int64_t, S3 *p_1515) {
  S0 *l_824 = &p_1515->g_111;
  if (**p_1515->g_540 = safe_div_func_uint64_t_u_u(4294967294, p_12))
    return *l_824;
}
__device__ uint32_t func_16(int32_t p_17, S0, uint32_t p_19, S3 *p_1515) {
  if (safe_sub_func_int64_t_s_s(*p_1515->g_112, p_17)) {
    int32_t l_743;
    int32_t **l_754 = &p_1515->g_564;
    *l_754 = &l_743;
  }
  return p_19;
}
__device__ S0 func_21(S0, int32_t *, S3 *) {
  S0 l_717;
  return l_717;
}
__device__ S0 func_24(S1, int32_t, int32_t *, uint64_t, S3 *p_1515) {
  S0 l_357;
  for (p_1515->g_52.f4 = 9;;)
    return l_357;
}
__device__ S1 func_29(int32_t *p_30, int32_t, uint32_t, S3 *p_1515) {
  S1 l_344;
  *p_30 = p_1515->g_154.f6;
  return l_344;
}
__device__ int32_t *func_35(uint64_t, int32_t, uint8_t, int32_t *, S3 *p_1515) {
  uint16_t *l_68 = &p_1515->g_52.f1;
  if ((*l_68)-- <= 0)
    return &p_1515->g_151[3][3][7];
}
__global__ void hipsmith_kernel(uint64_t *results) {
  S3 c_1516;
  S3 *p_1515 = &c_1516;
  S3 c_1517{3,
            0,
            3,
            {},
            3,
            2,
            nullptr,
            5,
            6,
            40,
            &p_1515->g_52.f1,
            1,
            {},
            {},
            {},
            8,
            {},
            &p_1515->g_274[2][1][6],
            &p_1515->g_152.f7,
            &p_1515->g_350,
            &p_1515->g_350,
            &p_1515->g_350,
            &p_1515->g_350,
            &p_1515->g_350,
            &p_1515->g_349[1],
            3,
            {},
            {},
            nullptr,
            &p_1515->g_190,
            &p_1515->g_541,
            {},
            nullptr,
            nullptr,
            {},
            {},
            &p_1515->g_52.f2,
            nullptr,
            {},
            {},
            {},
            {},
            &p_1515->g_1122[5][5][1],
            nullptr,
            {},
            nullptr,
            &p_1515->g_1169,
            0,
            {},
            &p_1515->g_736[0],
            {},
            9,
            {},
            7};
  c_1516 = c_1517;
  func_1(p_1515);
  uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
  crc64_context ^= p_1515->g_51;
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
