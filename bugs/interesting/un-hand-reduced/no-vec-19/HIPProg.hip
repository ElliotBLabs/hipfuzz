#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {};
struct U1 {};
struct S2 {
    int32_t g_13[6];
    uint64_t g_54;
    int64_t g_68;
    int32_t *g_107;
    int32_t **g_106;
    uint32_t g_121
    ;
};
__device__ int32_t * func_23(int32_t ** , int8_t  , S2 * );
__device__ int32_t  func_33(int64_t  , int32_t ** , uint32_t  , S2 * );
__device__ S0  func_40(int32_t ** , uint32_t  , int32_t * , int32_t * , S2 * );
__device__ int32_t ** func_45(uint8_t  , U1  , int16_t  , S2 * );
__device__ U1  func_1(S2 * p_1867)
{ 
    int32_t l_2[4] ;
    int32_t *l_4 = &l_2[2];
    U1 l_1866 ;
    if (func_23(&l_4, 0, p_1867) )
    return l_1866;
}
__device__ int32_t * func_23(int32_t ** p_24, int8_t  , S2 * p_1867)
{ 
    func_33(p_1867->g_13[5], p_24, 0, p_1867);
    return *p_24;
}
__device__ int32_t  func_33(int64_t  , int32_t ** , uint32_t  , S2 * p_1867)
{ 
    int16_t l_49 = 9;
    U1 l_50[2][4] ;
    func_40(func_45(l_49, l_50[0][2], 0, p_1867), p_1867->g_13[5], 0, 0, p_1867);
    return 0;
}
__device__ S0  func_40(int32_t ** p_41, uint32_t  , int32_t * , int32_t * , S2 * p_1867)
{
    S0 l_269 ;
        for (p_1867->g_121 = 0; p_1867->g_121 != 12; p_1867->g_121 = safe_add_func_uint16_t_u_u(p_1867->g_121, 4))
        {
            int64_t *l_200 = &p_1867->g_68;
            **p_41 = *l_200 |= safe_add_func_int32_t_s_s(p_1867->g_54 > 0, 4294967291) ;
        }
    return l_269;
}
__device__ int32_t ** func_45(uint8_t  , U1  , int16_t  , S2 * p_1867)
{
    return p_1867->g_106;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_1868;
    S2* p_1867 = &c_1868;
    S2 c_1869 {
        {}, 
        {}, 
        1, 
        &p_1867->g_13[1], 
        &p_1867->g_107, 
        3};
    c_1868 = c_1869;
    func_1(p_1867);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1867->g_68, , );
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
