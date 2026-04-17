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

struct S0 {
    uint64_t g_81[6][8][1];
    int32_t g_90;
    int32_t *g_162;
    uint8_t g_300;
    uint64_t g_310;
    uint32_t **g_495;
    int32_t g_717;
    uint32_t ***g_969;
    uint64_t *g_1198;
    int32_t *g_1521;
    uint16_t g_1574;
    uint32_t g_1690;
    uint64_t g_1834;
    uint16_t g_1988;
    int32_t g_2070;
    uint32_t g_2083;
    uint64_t **g_2174;
    uint32_t g_2213;
    int32_t *g_2237;
};
__device__ int32_t  func_1(S0 * p_2397)
{ 
    for (int i = 0; i < 3; i++)
        p_2397->g_310 |= safe_sub_func_int8_t_s_s(0 != *p_2397->g_1521, 51);
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_2398;
    S0* p_2397 = &c_2398;
    S0 c_2399 {
        {}, 
        9, 
        nullptr, 
        9, 
        8, 
        nullptr, 
        5, 
        &p_2397->g_495, 
        &p_2397->g_81[4][6][0], 
        &p_2397->g_717, 
        {}, 
        4073709551615, 
        {}, 
        5, 
        5, 
        {}, 
        &p_2397->g_1198, 
        5, 
        &p_2397->g_90};
    c_2398 = c_2399;
    func_1(p_2397);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_2397->g_310;
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
