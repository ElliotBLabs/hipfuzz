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
struct U0 {
   int32_t  f0;
};
struct S3 {
    int32_t g_3;
    int64_t g_8;
    int32_t *g_84;
    int32_t *g_85[7];
    uint8_t g_89;
    uint8_t g_105[9];
    int8_t g_107;
    uint8_t g_119;
    int16_t g_150;
    uint32_t g_152;
    uint32_t *g_151;
    uint16_t g_158;
    uint32_t g_174;
    uint64_t g_186;
    uint16_t g_233;
    int g_234;
    U0 g_237;
    uint16_t *g_239;
    uint16_t **g_238;
    int16_t g_285[2];
    int64_t *g_325;
    int64_t **g_324;
    int64_t ***g_323;
    uint16_t g_369;
    int g_483;
    int g_482;
    uint16_t ***g_692[3];
    uint16_t ****g_691;
    int32_t **g_705;
    int32_t ***g_704;
    uint32_t g_730;
    int64_t g_733;
    int32_t g_789;
    int64_t g_877;
    U0 g_890[9];
    U0 **g_889;
    uint64_t g_900;
    int32_t g_1046;
    uint32_t g_1067;
    uint32_t *g_1141;
    uint16_t *****g_1215;
    uint32_t *g_1262;
    uint32_t g_1261;
    int *g_1264;
    int **g_1263;
    int32_t g_1294[4];
    int ***g_1309;
    int32_t *g_1337;
    int8_t g_1529;
    uint8_t g_1561;
    int64_t g_1635;
    int *g_1647;
    uint32_t g_1722;
    uint32_t g_1759;
};
__device__ int16_t  func_1(S3 * p_1794)
{
    p_1794->g_8 |= safe_sub_func_int32_t_s_s(safe_mod_func_uint16_t_u_u(p_1794->g_3 <= 0, 3), 208);
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S3 c_1795;
    S3* p_1794 = &c_1795;
    int p_1794_3;
    U0 *p_1794_38_4_0_0;
    int *p_1794_47;
    int **p_1794_48;
    S3 c_1796 {
        2, 
        6, 
        &p_1794->g_3, 
        nullptr, nullptr, &p_1794->g_3, nullptr, nullptr, &p_1794->g_3, nullptr, 
        3, 
        4, 9, 4, 9, 4, 9, 4, 9, 4, 
        7, 
        7, 
        6, 
        8, 
        &p_1794->g_152, 
        0, 
        4, 
        8, 
        9, 
        1, 
        3, 
        &p_1794->g_233, 
        &p_1794->g_239, 
        1, 1, 
        nullptr, 
        &p_1794->g_325, 
        &p_1794->g_324, 
        6, 
        {}, 
        {}, 
        &p_1794->g_238, &p_1794->g_238, &p_1794->g_238, 
        &p_1794->g_692[0], 
        &p_1794->g_84, 
        &p_1794->g_705, 
        2, 
        {}, 
        8, 
        0, 
        {}, 
        &p_1794_38_4_0_0, 
        {}, 
        0, 
        1, 
        nullptr, 
        &p_1794->g_691, 
        nullptr, 
        {}, 
        &p_1794_3, 
        &p_1794_47, 
        9, 9, 9, 9, 
        &p_1794_48, 
        &p_1794->g_1294[3], 
        9, 
        8, 
        9, 
        nullptr, 
        1, 
        9};
    c_1795 = c_1796;
    func_1(p_1794);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_1794->g_8;
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
