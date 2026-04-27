#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   int32_t  f0;
};
union U1 {
   uint16_t  f0;
   S0  f1;
   int32_t  f4;
};
struct S2 {
    int32_t g_7[8][6][5];
    int32_t g_9;
    S0 g_41;
    uint16_t g_43;
    uint64_t g_55;
    int8_t g_76;
    int32_t *g_92;
    int32_t **g_91;
    int32_t g_967;
    uint8_t g_105;
    uint32_t *g_117;
    int16_t g_120;
    int8_t g_132;
    int8_t *g_131;
    uint32_t g_141;
    S0 g_143;
    uint64_t *g_170;
    uint8_t *g_229;
    uint8_t **g_228;
    uint8_t g_230;
    uint64_t g_242;
    int64_t g_264;
    S0 g_283;
    S0 *g_287;
    int64_t *g_319;
    int64_t **g_318;
    U1 g_331;
    uint64_t g_355;
    int64_t g_429;
    int32_t g_467;
    uint16_t **g_478;
    uint16_t ***g_477;
    uint8_t *g_479;
    uint64_t g_577;
    uint32_t g_697;
    int32_t g_776;
    uint32_t g_777;
    int32_t g_779;
    int16_t *g_816;
};
__device__ int32_t  func_2(U1  , S2 * );
__device__ int32_t  func_10(uint16_t  , int32_t  , int8_t  , int32_t * , uint64_t  , S2 * );
__device__ int64_t  func_18(int32_t  , S0  , S2 * );
__device__ uint16_t  func_1(S2 * p_831)
{ 
    U1 l_4 ;
    func_2(l_4, p_831);
    return p_831->g_429;
}
__device__ int32_t  func_2(U1  p_3, S2 * p_831)
{
    for (p_3.f1.f0 = 0; p_3.f0 <= 3; p_3.f0 += 1)
    { 
        int32_t *l_6 = &p_831->g_7[2][3][3];
        S0 l_21 ;
        for (; p_831->g_9 <= 4; p_831->g_9 += 1)
                    func_10(p_831->g_7[2][3][3], *l_6, safe_sub_func_int64_t_s_s(func_18(p_831->g_7[6][0][2], l_21, p_831), 3), 0, p_3.f0, p_831);
    }
    return p_3.f4;
}
__device__ int32_t  func_10(uint16_t  , int32_t  p_12, int8_t  p_13, int32_t * , uint64_t  , S2 * p_831)
{
        p_831->g_355 |= (p_12 || 0 ) ^ p_13 ;
    return p_831->g_777;
}
__device__ int64_t  func_18(int32_t  , S0  , S2 * )
{ 
    uint32_t l_22 = 1;
    return l_22;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_832;
    S2* p_831 = &c_832;
    S2 c_833 {
        {}, 
        0, 
        9, 
        {}, 
        8, 
        0, 
        &p_831->g_7[2][3][3], 
        &p_831->g_92, 
        {}, 
        5, 
        nullptr, 
        1, 
        3, 
        &p_831->g_132, 
        3, 
        4, 
        &p_831->g_55, 
        &p_831->g_105, 
        &p_831->g_229, 
        4, 
        {}, 
        0, 
        {}, 
        &p_831->g_283, 
        &p_831->g_264, 
        &p_831->g_319, 
        {}, 
        7, 
        7, 
        0, 
        nullptr, 
        &p_831->g_478, 
        nullptr, 
        1, 
        {}, 
        0, 
        0, 
        0, 
        nullptr};
    c_832 = c_833;
    func_1(p_831);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_831->g_355, , );
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
