#include <hip/hip_runtime.h>
#include "safe_math_macros.h"
#define HIP_CHECK(expression)                                               \
  {                                                                         \
    const hipError_t err = expression;                                      \
    if (err != hipSuccess) {                                                \
      fprintf(stderr, "HIP error: %s at %d\n", hipGetErrorString(err),      \
              __LINE__);                                                    \
      exit(EXIT_FAILURE);                                                   \
    }                                                                       \
  }
struct U1 {
  uint16_t f0;
};
struct U3 {
  uint16_t f0;
};
struct S4 {
  int g_3374;
  uint8_t g_49;
  U3 g_50;
  uint64_t g_61;
  uint64_t *g_80;
  uint64_t **g_79;
  uint32_t g_87;
  int64_t g_93[10];
  uint64_t g_111;
  int8_t g_128;
  int64_t g_129;
  int8_t g_130;
  int16_t g_131;
  int64_t g_133;
  int32_t g_134;
  int32_t g_136[6];
  int g_156;
  uint16_t g_191;
  U1 g_194[3];
  uint8_t g_200;
  int32_t g_317;
  uint8_t g_319;
  int32_t *g_323;
  int32_t **g_322;
  uint16_t **g_331;
  uint16_t ***g_330;
  int g_357;
  int8_t g_370;
  int32_t g_437;
  int8_t g_521;
  uint64_t g_560;
  int g_574;
  int **g_573[5][3][8];
  U3 g_575;
  int32_t g_693;
  uint8_t g_771;
  int8_t *g_847;
  int8_t **g_846;
  int64_t *g_897;
  U3 *g_913;
  U3 **g_912;
  U3 ***g_911;
  uint8_t g_934;
  int32_t *g_983;
  uint32_t g_990;
  uint32_t g_1026;
  uint64_t g_1108;
  uint32_t *g_1111;
  uint8_t *g_1239;
  uint8_t **g_1238;
  uint64_t g_1252;
  int32_t g_1253;
  int ***g_1268;
  int ****g_1267;
  uint32_t g_1385;
  uint16_t ****g_1501;
  uint16_t *****g_1500;
  uint16_t g_1566;
  int16_t *g_1680;
  int *g_1691;
  int **g_1690;
  uint8_t g_1715;
  int **g_1727;
  int32_t g_1800;
  int16_t g_1845;
  int32_t g_1872;
  int32_t g_1945;
  U1 *g_1948;
  U1 ***g_1947;
  uint8_t ***g_1955;
  uint8_t ****g_1965;
  uint8_t *****g_1964;
  int64_t g_2155;
  uint32_t g_2167;
  uint32_t **g_2211;
  uint8_t g_2345;
  int8_t ***g_2369;
  int8_t ****g_2368;
  int32_t g_2391;
  U3 g_2393;
  U3 g_2430;
  uint32_t g_2525[2][9];
  int g_2656;
  int8_t g_2658;
  U1 g_2747;
  uint8_t g_2891;
  uint64_t g_3249;
  uint8_t g_3393;
  int32_t g_3481;
  int32_t ***g_3521;
  int32_t ****g_3520;
  int32_t *****g_3519;
  uint8_t g_3549;
  int64_t g_3635;
  uint32_t g_36409;
  uint32_t g_3665;
};

__device__ int32_t func_1(S4 *p_3669) {
  p_3669->g_129 |= safe_sub_func_int32_t_s_s(p_3669->g_93[8] != 0, 8);
  return {};
}

__global__ void hipsmith_kernel(uint64_t *results) {
  S4 c_3670;
  S4 *p_3669 = &c_3670;
  U1 **p_3669_67;
  int *p_3669_31_7, *p_3669_59;
  U3 *p_3669_39;
  S4 c_3671{{},
            5,
            0,
            0,
            nullptr,
            &p_3669->g_80,
            6,
            3,
            3,
            3,
            3,
            3,
            3,
            3,
            3,
            3,
            3,
            0,
            2,
            6,
            0,
            3,
            1,
            0,
            {},
            {},
            {},
            {},
            {},
            6,
            0,
            nullptr,
            &p_3669->g_323,
            nullptr,
            &p_3669->g_331,
            {},
            7,
            4,
            0,
            5,
            {},
            {},
            {},
            {},
            3,
            &p_3669->g_128,
            &p_3669->g_847,
            nullptr,
            &p_3669->g_575,
            &p_3669_39,
            &p_3669->g_912,
            0,
            &p_3669->g_136[1],
            1,
            2,
            5,
            &p_3669->g_1026,
            &p_3669->g_49,
            &p_3669->g_1239,
            3,
            3,
            &p_3669->g_573[3][0][6],
            &p_3669->g_1268,
            5,
            &p_3669->g_330,
            &p_3669->g_1501,
            5,
            nullptr,
            nullptr,
            &p_3669_59,
            5,
            &p_3669_31_7,
            4,
            0,
            1,
            7,
            nullptr,
            &p_3669_67,
            &p_3669->g_1238,
            &p_3669->g_1955,
            &p_3669->g_1965,
            0,
            9,
            &p_3669->g_1111,
            1,
            &p_3669->g_846,
            &p_3669->g_2369,
            4,
            {},
            {},
            {},
            {},
            0,
            {},
            {},
            4073709551610,
            {},
            2,
            &p_3669->g_322,
            &p_3669->g_3521,
            &p_3669->g_3520,
            {},
            7,
            {},
            1};
  c_3670 = c_3671;
  func_1(p_3669);
  uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
  crc64_context ^= p_3669->g_129;
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
