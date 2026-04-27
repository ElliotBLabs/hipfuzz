#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct U0 {};
struct S2 {
    int32_t g_3;
    int64_t g_11;
    uint16_t g_13;
    uint16_t g_16;
    uint16_t *g_19;
    int64_t g_26;
    int64_t *g_25;
    int32_t g_37[9];
    uint64_t g_38;
    uint8_t g_41;
    U0 g_42;
    int32_t g_69;
    uint8_t g_71;
    int16_t g_99;
    int8_t g_101[10];
    uint32_t g_138;
    int16_t g_218;
    int g_251;
    uint64_t *g_284;
    uint64_t **g_283;
    uint32_t g_395;
    uint32_t g_425;
    int32_t g_428;
    int32_t g_435;
    int32_t g_450;
    uint8_t g_491;
    int32_t g_581;
    uint32_t g_605[7];
    int8_t *g_670;
    int8_t **g_669;
    int32_t g_837;
    int64_t g_863;
    int32_t *g_988;
    int *g_1105;
    int **g_1104;
    int g_1140[7];
    uint32_t *g_1149;
    uint32_t *g_1154;
    uint64_t ***g_1201;
    uint64_t ****g_1200[3][5][10];
    uint64_t g_1199;
    int64_t **g_1221[8];
    int64_t ***g_1220;
};
__device__ int32_t  func_4(uint8_t  , int64_t  , uint16_t  , U0  , uint32_t  , S2 * );
__device__ uint64_t  func_20(uint16_t * , uint16_t * , int64_t * , uint8_t  , S2 * );
__device__ uint64_t  func_29;
__device__ uint16_t  func_1(S2 * p_1266)
{    uint32_t l_43 = 8;
    uint16_t l_1265 = func_4(func_20(&p_1266->g_16, &p_1266->g_16, p_1266->g_25, p_1266->g_3, p_1266) , 0, p_1266->g_37[5], p_1266->g_42, l_43, p_1266)
    ;
    return l_1265;
}
__device__ int32_t  func_4(uint8_t  , int64_t  , uint16_t  , U0  , uint32_t  , S2 * )
{
    uint16_t l_822 {};    return l_822;
}
__device__ uint64_t  func_20(uint16_t * , uint16_t * , int64_t * , uint8_t  , S2 * p_1266)
{    p_1266->g_38 |= safe_sub_func_int8_t_s_s(131, func_29 && p_1266);
    return p_1266->g_3;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_1267;
    S2* p_1266 = &c_1267;
    S2 c_1268 {
        5, 
        5, 
        5, 
        0, 
        &p_1266->g_16, 
        0, 
        &p_1266->g_26, 
        {}, 
        9, 
        0, 
        {}, 
        {}, 
        8, 
        {}, 
        {}, 
        1, 
        4, 
        {}, 
        &p_1266->g_38, 
        &p_1266->g_284, 
        1, 
        1, 
        3, 
        1, 
        {}, 
        8, 
        3, 
        6, 6, 6, 6, 6, 6, 6, 
        &p_1266->g_101[1], 
        &p_1266->g_670, 
        0, 
        0, 
        nullptr, 
        nullptr, 
        &p_1266->g_1105, 
        0, 1, 0, 1, 0, 1, 0, 
        nullptr, 
        nullptr, 
        &p_1266->g_283, 
        &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, &p_1266->g_1201, {}, {}, 
        {}, 
        {}, 
        &p_1266->g_1221[7]};
    c_1267 = c_1268;
    func_1(p_1266);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1266->g_38, , );
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
    for (size_t i = 0; i < h_results.size(); ++i) {
        printf("Thread %zu CRC: %lu\n", i, h_results[i]);
    }
    return 0;
}
