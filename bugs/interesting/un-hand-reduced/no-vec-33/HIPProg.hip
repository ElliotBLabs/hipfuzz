#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
union U0 {
   int16_t  f0;
};
struct U1 {
   uint32_t  f0;
};
struct S2 {
    int32_t *g_11;
    int32_t g_20;
    int16_t g_25;
    int32_t g_27;
    U0 g_33;
    int32_t g_68;
    int8_t g_72;
    U1 g_75;
    U1 *g_74[4][1][10];
    uint32_t g_79;
    int16_t g_89;
    int32_t g_90;
    uint8_t g_92;
    int8_t g_140;
    uint8_t *g_144[8];
    int32_t *g_148;
    int64_t g_191;
    int16_t g_204;
    uint16_t g_205;
    uint64_t g_225;
    U0 g_316[8];
    uint8_t g_368;
    U0 *g_411;
    U0 **g_410;
    int16_t g_510;
    int8_t g_511;
    uint32_t g_512;
    U1 *g_523;
    uint16_t g_546;
    uint32_t *g_552;
    int32_t g_578;
    uint32_t g_5805;
    int32_t g_590;
    uint64_t g_591;
    int64_t g_651;
    int64_t g_652;
    uint32_t g_654;
    int32_t g_681;
    uint32_t g_682;
    uint8_t **g_697;
    uint8_t ***g_696;
    uint32_t g_760;
    U0 ***g_801;
    uint8_t *g_827;
    uint16_t g_847;
    int32_t *g_852;
    int32_t g_915;
    uint32_t *g_1058;
    uint32_t **g_1057;
    uint32_t g_1136;
    uint64_t g_1161;
    uint32_t g_1194;
    U0 *g_1199;
    U0 ****g_1203;
    U0 *****g_1202;
    uint16_t g_1325;
    int32_t g_1363;
    uint32_t g_1463;
};
__device__ int32_t * func_2(int64_t  , int32_t  , S2 * );
__device__ U0  func_42(int16_t  , uint16_t  , U1  , U1 * , S2 * );
__device__ int16_t  func_1(S2 * p_1608)
{
    func_2(0, p_1608->g_25, p_1608);
    return p_1608->g_681;
}
__device__ int32_t * func_2(int64_t  , int32_t  p_4, S2 * p_1608)
{
    U1 l_73 ;
    func_42(p_4, 0, l_73, p_1608->g_74[2][0][4], p_1608);
    return &p_1608->g_590;
}
__device__ U0  func_42(int16_t  p_43, uint16_t  , U1  , U1 * , S2 * p_1608)
{
    int i;
    for (; p_43 ; ++p_43)
    {
        U0 *l_859[4];
        for (i = 0; i < 4; i++)
            l_859[i] = &p_1608->g_33;
                p_1608->g_652 |= nullptr != l_859[2]  ^ -1;
    }
    return ***p_1608->g_801;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_1609;
    S2* p_1608 = &c_1609;
    U0 ***p_1608_42;
    S2 c_1610 {
        nullptr, 
        0, 
        2, 
        5, 
        7, 
        8, 
        {}, 
        {}, 
        {}, 
        0, 
        {}, 
        0, 
        1, 
        2, 
        {}, 
        nullptr, 
        2, 
        0, 
        5, 
        4, 
        {}, 
        4, 
        &p_1608->g_33, 
        &p_1608->g_411, 
        0, 
        {}, 
        {}, 
        nullptr, 
        {}, 
        &p_1608->g_75.f0, 
        0, 
        {}, 
        5, 
        {}, 
        {}, 
        1, 
        {}, 
        0, 
        6, 
        &p_1608->g_144[1], 
        &p_1608->g_697, 
        7, 
        &p_1608->g_410, 
        nullptr, 
        0, 
        nullptr, 
        0, 
        &p_1608->g_79, 
        &p_1608->g_1058, 
        2, 
        0, 
        4, 
        &p_1608->g_316[3], 
        &p_1608_42, 
        &p_1608->g_1203, 
        2, 
        3, 
        0};
    c_1609 = c_1610;
    func_1(p_1608);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1608->g_652, , );
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
