#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   int64_t  f0;
   uint64_t  f6;
};
struct S1 {
   int16_t  f3;
};
struct U3 {
   S0  f3;
};
struct S4 {
    S0 g_108[2];
    S1 g_122;
    U3 g_163;
    S1 *g_173[2];
    int g_192;
    uint64_t *g_194;
    S0 g_220;
    uint64_t ***g_234;
    int32_t *g_340;
    U3 g_451;
    S0 *g_561;
    S0 *g_564;
    S0 **g_563;
    int32_t g_607;
    int64_t g_643;
    int *g_683;
    int64_t g_745;
    int32_t g_769;
    uint16_t ***g_914[8];
    uint16_t ****g_913;
    int8_t *g_942;
    int32_t **g_957;
    int32_t g_956;
    int16_t *g_1032;
    int16_t **g_1031[8][10];
    S0 g_1071;
    int64_t g_1168;
    int32_t g_1169;
    int *g_1271;
    int **g_1270;
    int **g_1327;
    uint64_t ****g_1384;
    uint64_t g_1383;
    uint32_t g_1391;
    uint32_t g_1548;
    int16_t ***g_1609;
    int16_t ****g_1608;
    uint8_t g_1633;
    S1 **g_1642;
    S0 g_1725;
    S0 ****g_1724[3][6][5];
    S0 *****g_1723;
    int8_t g_1794;
    int32_t *g_1821;
    int32_t g_1820;
    int32_t g_1829;
    int32_t g_1831;
    int64_t g_1881;
    int8_t g_1950;
    uint32_t g_2003;
};
__device__ uint64_t  func_1(S4 * p_2005)
{
    int64_t *l_1453 = &p_2005->g_108[0].f0;
    uint32_t l_2004 = 6;
        for (; p_2005->g_451.f3.f6 <= 2; p_2005->g_451.f3.f6 += 1)
                *l_1453 |= safe_add_func_int64_t_s_s(0 > p_2005->g_1071.f0, -10);
return l_2004;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S4 c_2006;
    S4* p_2005 = &c_2006;
    S4 c_2007 {
        {}, 
        3, 
        {}, 
        {}, 
        {}, 
        &p_2005->g_108[0].f6, 
        {}, 
        {}, 
        0, 
        {}, 
        nullptr, 
        &p_2005->g_220, 
        &p_2005->g_564, 
        0, 
        7, 
        nullptr, 
        {}, 
        3096316, 
        {}, 
        &p_2005->g_914[2], 
        nullptr, 
        &p_2005->g_340, 
        {}, 
        &p_2005->g_122.f3, 
        {}, 
        {}, 
        {}, 
        3, 
        &p_2005->g_192, 
        &p_2005->g_1271, 
        &p_2005->g_1271, 
        &p_2005->g_234, 
        {}, 
        3, 
        60506694, 
        &p_2005->g_1031[1][4], 
        &p_2005->g_1609, 
        5, 
        &p_2005->g_173[1], 
        {}, 
        {}, 
        &p_2005->g_1724[2][5][4], 
        5, 
        nullptr, 
        {}, 
        {}, 
        2, 
        2, 
        0, 
        4073709551610};
    c_2006 = c_2007;
    func_1(p_2005);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 2; i++)
        transparent_crc(p_2005->g_108[i].f0, , );
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
