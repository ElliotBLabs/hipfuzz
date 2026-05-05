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
   int8_t  f0;
   int8_t  f1;
   int32_t  f2;
   uint32_t  f3;
   int8_t  f4;
   int32_t  f5;
   int32_t  f6;
};
struct S1 {
   int64_t  f0;
   uint8_t  f1;
   signed f2 ;
   int8_t  f3;
   uint32_t  f4;
   signed f5 ;
   uint32_t  f6;
};
union U2 {
   uint32_t  f0;
   S0  f1;
};
struct U4 {};
struct U5 {
   S0  f0;
};
struct S6 {
    U5 g_20;
    S0 *g_40;
    S0 **g_39;
    int32_t *g_78;
    int32_t **g_77[8];
    int32_t g_103;
    int32_t g_112;
    int8_t *g_116;
    int8_t **g_115[2];
    S0 g_121;
    S0 *g_120[4];
    S1 g_138;
    U2 g_141;
    uint16_t g_144;
    int32_t g_198;
    uint64_t g_226;
    int16_t g_283;
    int32_t g_294;
    U4 g_296[7];
    U4 *g_295;
    int64_t g_310;
    int32_t g_357;
    uint32_t g_415;
    uint32_t g_418;
    int8_t ***g_496;
    int8_t ****g_495;
    int g_508;
    int *g_507;
    S0 *g_518;
    uint8_t *g_574;
    U2 g_751;
    U4 **g_847;
    U4 ***g_846;
    int **g_852;
    int ***g_851;
    int16_t *g_887;
    S1 g_917;
    int32_t g_938;
    uint32_t g_1061;
};
__device__ U2  func_21();

__device__ S1  func_1(S6 * p_1094)
{ 
    p_1094->g_141 = func_21();
    return {};
}
__device__ U2  func_21()
{ 
    return {};
}

__global__ void hipsmith_kernel(uint64_t *results) {
    S6 c_1095;
    S6* p_1094 = &c_1095;
    int p_1094_26;
    int *p_1094_29;
    int **p_1094_35;
    U4 **p_1094_33;
    U4 *p_1094_21;
    S0 *p_1094_3;
    S6 c_1096 {
        7,5,5,4,1,2,0, 
        &p_1094->g_20.f0, 
        &p_1094_3, 
        &p_1094->g_20.f0.f6, 
        &p_1094->g_78, &p_1094->g_78, &p_1094->g_78, &p_1094->g_78, &p_1094->g_78, &p_1094->g_78, &p_1094->g_78, &p_1094->g_78, 
        1, 
        1, 
        &p_1094->g_20.f0.f1, 
        &p_1094->g_116, &p_1094->g_116, 
        2,0,2,0,5,1,4, 
        &p_1094->g_121, &p_1094->g_121, &p_1094->g_121, &p_1094->g_121, 
        5,0,3,0,5,2,1, 
        640841, 
        1, 
        0, 
        7, 
        2, 
        8, 
        {}, 
        &p_1094->g_296[4], 
        0, 
        {}, 
        4073709551608, 
        5, 
        &p_1094->g_115[1], 
        &p_1094->g_496, 
        {}, 
        &p_1094_26, 
        &p_1094->g_20.f0, 
        &p_1094->g_138.f1, 
        {}, 
        &p_1094_21, 
        &p_1094_33, 
        &p_1094_29, 
        &p_1094_35, 
        nullptr, 
        {}, 
        2, 
        5};
    c_1095 = c_1096;
    func_1(p_1094);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^=p_1094->g_141.f0;
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
