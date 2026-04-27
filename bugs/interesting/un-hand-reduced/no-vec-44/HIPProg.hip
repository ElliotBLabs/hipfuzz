#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S1 {
   int32_t  f2;
   int64_t  f3;
   uint32_t  f5;
};
struct S2 {
   unsigned f0 ;
   unsigned f1 ;
   unsigned f2 ;
   unsigned f3 ;
   unsigned f4 ;
   signed f5 ;
   signed f6 ;
   signed f7 ;
   signed f8 ;
};
struct S4 {};
struct U6 {};
union U7 {
   uint64_t  f0;
   S1  f1;
};
struct S8 {
    U6 g_4;
    S1 g_22;
    S1 g_92;
    int8_t g_141[9];
    uint32_t *g_144;
    U7 g_150;
    S2 g_156;
    S2 *g_158;
    S1 g_159;
    uint8_t g_179;
    int16_t g_183;
    uint64_t g_200;
    uint16_t g_216;
    int32_t *g_221;
    int32_t **g_220;
    int32_t g_265;
    S4 g_287;
    int g_360;
    uint16_t g_397;
    int64_t g_415;
    uint32_t g_416;
    uint8_t g_517;
    int16_t g_524;
    uint32_t g_562;
    U6 *g_566;
    U6 **g_565;
    int32_t *g_586;
    int64_t g_620;
    int8_t g_621;
    int16_t g_622;
    S4 *g_678;
    S4 g_677;
    uint32_t g_703;
    int32_t g_844;
    uint8_t g_867;
    uint32_t g_885;
    uint16_t g_897;
    uint8_t *g_927;
    uint8_t g_926;
    int16_t *g_936;
    uint16_t g_972;
    int *g_976;
    U7 g_1054;
    int g_1079;
    S2 *g_1148;
    int32_t g_1154;
    uint16_t g_1155;
    int *g_1186;
    int8_t *g_1230;
    uint32_t *g_1248;
    int32_t g_1263;
    int32_t g_1268;
};
__device__ U7  func_15(U6  , S1  , uint8_t  , uint32_t  , uint32_t  , S8 * );
__device__ S4  func_1(S8 * p_1289)
{ 
    U6 l_21 ;
    int8_t l_1199[3][7][3] {};
    U7 *l_1201 = &p_1289->g_150;
    S4 l_1202 ;
    *l_1201 = func_15(l_21, p_1289->g_22, 0, 0, l_1199[0][5][0], p_1289);
    return l_1202;
}
__device__ U7  func_15(U6  , S1  , uint8_t  , uint32_t  , uint32_t  , S8 * )
{ 
    U7 l_1200 {};
    return l_1200;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S8 c_1290;
    S8* p_1289 = &c_1290;
    U6 *p_1289_32;
    S8 c_1291 {
        {}, 
        {}, 
        {}, 
        0, 3, 0, 3, 0, 3, 0, 3, 0, 
        &p_1289->g_22.f5, 
        6403638716, 
        0,9,1,5,9,0,0,7,6, 
        &p_1289->g_156, 
        {}, 
        {}, 
        8, 
        {}, 
        7, 
        nullptr, 
        &p_1289->g_221, 
        0, 
        {}, 
        {}, 
        3, 
        0, 
        4, 
        5, 
        {}, 
        {}, 
        &p_1289->g_4, 
        &p_1289_32, 
        &p_1289->g_92.f2, 
        0, 
        3, 
        0, 
        &p_1289->g_287, 
        {}, 
        0, 
        0, 
        5, 
        8, 
        2, 
        nullptr, 
        {}, 
        nullptr, 
        6, 
        nullptr, 
        {}, 
        {}, 
        nullptr, 
        1, 
        3, 
        nullptr, 
        nullptr, 
        &p_1289->g_703, 
        2, 
        {}};
    c_1290 = c_1291;
    func_1(p_1289);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1289->g_150.f0, , );
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
