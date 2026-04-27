#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   signed f0 ;
   signed f5 ;
   unsigned f8 ;
};
struct U1 {
   uint64_t  f0;
};
struct S2 {
    int32_t g_21;
    uint8_t g_25;
    uint16_t g_35;
    S0 g_55[1][6][3];
    U1 g_56;
    int32_t *g_103;
    int32_t **g_102;
    uint32_t g_130;
    int32_t g_131;
    int16_t g_138;
    int8_t g_159;
    int32_t g_183;
    int32_t *g_182;
    uint8_t *g_226;
    uint8_t g_225;
    uint64_t g_246;
    int64_t g_267;
    int64_t g_266;
    int64_t g_271;
    int8_t g_396;
    uint8_t *g_441;
    uint8_t g_440;
    uint32_t g_447;
    int32_t ***g_515;
    int32_t ***g_516;
    uint32_t g_523;
    int64_t g_524;
    S0 *g_551;
    uint8_t g_610;
    int32_t g_641;
    int32_t ****g_649;
    int32_t *****g_648;
    uint16_t *g_746;
    uint16_t g_745;
    int32_t g_794;
    uint32_t g_826;
    int16_t g_848;
    int8_t g_851;
    int32_t g_852;
    uint16_t g_990;
    int32_t *g_1012;
    uint32_t *g_1059;
    uint32_t **g_1058;
    int32_t g_1187;
    int32_t g_1191;
    int64_t g_1196;
    uint8_t g_1323;
};
__device__ int32_t  func_2(int16_t  , uint32_t  , S0  , uint64_t  , S2 * );
__device__ int64_t  func_1(S2 * p_1325)
{    S0 l_593[] {2,2,4,2,1,6,5,1093,220, 1,9,0,6,0,5,6,4,9513};
    int32_t l_594 = 6;
    int32_t l_1324[6][7][6] ;
    func_2(p_1325->g_159, p_1325->g_396, l_593[5], l_594, p_1325);
    return l_1324[2][3][4];
}
__device__ int32_t  func_2(int16_t  p_3, uint32_t  , S0  p_5, uint64_t  , S2 * p_1325)
{
        p_5.f5 = safe_unary_minus_func_int8_t_s(0 == p_3 ^ p_5.f8) ;
        p_1325->g_56.f0 |= p_5.f5;
    return p_5.f0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_1326;
    S2* p_1325 = &c_1326;
    S2 c_1327 {
        8, 
        9, 
        0, 
        {}, 
        {}, 
        &p_1325->g_21, 
        &p_1325->g_103, 
        5, 
        2, 
        0, 
        1, 
        8, 
        &p_1325->g_183, 
        &p_1325->g_25, 
        {}, 
        4, 
        6, 
        {}, 
        {}, 
        7, 
        nullptr, 
        {}, 
        4, 
        &p_1325->g_102, 
        nullptr, 
        2, 
        1, 
        &p_1325->g_55[0][1][0], 
        9, 
        7, 
        &p_1325->g_516, 
        &p_1325->g_649, 
        &p_1325->g_35, 
        {}, 
        1, 
        9, 
        2, 
        3, 
        3, 
        4, 
        &p_1325->g_852, 
        &p_1325->g_523, 
        &p_1325->g_1059, 
        0, 
        0, 
        6, 
        5};
    c_1326 = c_1327;
    func_1(p_1325);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1325->g_56.f0, , );
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
