#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   uint16_t  f0;
   int8_t  f1;
   int64_t  f2;
   int32_t  f3;
   int64_t  f4;
   int16_t  f5;
   uint32_t  f6;
   uint8_t  f7;
   uint64_t  f8;
};
struct S1 {   int64_t  f1;};
union U2 {
   uint32_t  f0;
   S0  f1;
};
struct U3 {
   S0  f0;
};
struct S4 {
    uint32_t g_7;
    U3 g_52[10][8][1];
    S1 g_79;
    S1 *g_88;
    S1 g_87;
    int32_t g_109;
    int32_t *g_111;
    uint64_t *g_129;
    uint64_t **g_156;
    int16_t g_184;
    int16_t g_198;
    int16_t *g_216;
    int8_t g_219;
    uint16_t g_234;
    int8_t g_257;
    int32_t g_261;
    int64_t g_303;
    int64_t *g_304;
    int32_t g_542;
    uint64_t g_569;
    U3 g_646;
    U2 g_647;
    int32_t g_653;
    uint16_t *g_672;
    uint16_t **g_671;
    uint16_t **g_673;
    S0 g_685;
    S1 **g_691;
    S1 ***g_720;
    S0 *g_727[2];
    S0 **g_726;
    S0 ***g_725[5];
    int16_t **g_798;
    U2 *g_889;
    int32_t g_964;
    int32_t *g_1032;
    U3 g_1072;
};
__device__ U2  func_18(uint32_t  , int8_t  , uint32_t  , S4 * );
__device__ S1  func_1(S4 * p_1082)
{
    S1 l_17 {};
    *p_1082->g_889 = func_18(l_17.f1, 0, p_1082->g_685.f8, p_1082) ;
    return *p_1082->g_88;
}
__device__ U2  func_18(uint32_t  , int8_t  , uint32_t  , S4 * )
    { 
        U2 l_1038 {};
        return l_1038;
    }
__global__ void hipsmith_kernel(uint64_t *results) {
    S4 c_1083;
    S4* p_1082 = &c_1083;
    S1 **p_1082_4_2;
    S1 *p_1082_3;
    S4 c_1084 {
        1, 
        {}, 
        {}, 
        &p_1082->g_79, 
        {}, 
        0, 
        &p_1082->g_52[3][7][0].f0.f3, 
        nullptr, 
        &p_1082->g_129, 
        {}, 
        {}, 
        nullptr, 
        0, 
        5, 
        0, 
        {}, 
        {}, 
        &p_1082->g_52[3][7][0].f0.f2, 
        5, 
        {}, 
        {}, 
        50480947, 
        1, 
        nullptr, 
        &p_1082->g_672, 
        &p_1082->g_672, 
        5,1,7,2,5,1,4073709551611,6,1, 
        &p_1082_3, 
        &p_1082_4_2, 
        &p_1082->g_685, &p_1082->g_685, 
        &p_1082->g_727[0], 
        &p_1082->g_726, &p_1082->g_726, &p_1082->g_726, &p_1082->g_726, &p_1082->g_726, 
        &p_1082->g_216, 
        &p_1082->g_647, 
        7, 
        nullptr, 
        {}};
    c_1083 = c_1084;
    func_1(p_1082);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1082->g_647.f0, , );
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
