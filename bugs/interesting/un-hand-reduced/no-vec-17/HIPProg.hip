#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int64_t g_20;
    int32_t g_92;
    int32_t g_93;
    int64_t g_126[4][6];
    uint64_t g_157;
    int64_t *g_307;
    uint16_t g_459[1][2][2];
    int8_t g_593;
    int8_t *g_592;
    uint64_t g_752;
    uint8_t g_889;
    int16_t **g_976[9][4];
    int32_t *g_1103;
    uint8_t g_1136[9];
    uint64_t g_1201[10][2];
    uint64_t *g_1277;
    uint64_t **g_1276;
    int32_t g_1304;
    uint32_t g_1305;
    int32_t g_1329;
    uint16_t g_1330;
    int32_t **g_1342;
    uint32_t g_1373;
    uint32_t g_1460[9][7];
    int8_t g_1481;
    uint8_t g_1482;
    uint8_t g_1504;
    int16_t g_1562;
    int8_t **g_1576;
    int8_t ***g_1575;
    int32_t g_1592;
    int16_t ***g_1611;
    int16_t ****g_1610;
    int64_t **g_1651;
    int64_t ***g_1650;
    int16_t *g_1655;
    int8_t ****g_1676[4][4];
    int32_t g_1683;
    int8_t g_1701;
    uint16_t g_1702;
    int64_t g_1739;
    int32_t *g_1748;
    uint16_t g_1770;
    uint8_t g_1773;
    int8_t ****g_1794;
    int32_t g_1800;
    int8_t g_1883;
    int64_t ****g_1891;
    uint16_t g_1918;
    uint16_t g_1943;
    uint16_t g_2002;
    int32_t *g_2031;
    uint32_t g_2049;
    int32_t g_2079;
    int64_t g_2081[7];
    uint16_t g_2083;
    uint8_t g_2089;
    uint8_t *g_2219;
    uint8_t **g_2218[3];
    uint8_t ***g_2217;
    int64_t g_2255;
    int8_t g_2256;
    uint64_t g_2257;
};
__device__ int32_t  func_10(uint8_t  , uint64_t  , uint32_t  , uint64_t  , S0 * );
__device__ uint8_t  func_15(uint8_t  , int32_t  , int64_t  , int32_t  , S0 * );
__device__ int16_t  func_1(S0 * p_2261)
{
    uint32_t l_21 = 3
     ;
    func_10(func_15(0, p_2261->g_20, 0, 0, p_2261), 0, p_2261->g_1800, l_21, p_2261) ;
    return 0;
}
__device__ int32_t  func_10(uint8_t  , uint64_t  , uint32_t  , uint64_t  , S0 * p_2261)
{
    int32_t *l_2253 = &p_2261->g_2079;
    for (p_2261->g_593 = p_2261->g_889 = p_2261->g_752 = 0; p_2261->g_752 <= 1; p_2261->g_752 += 1)
                    **p_2261->g_1276 |= -5 ^ p_2261->g_459[p_2261->g_889][p_2261->g_593][p_2261->g_752];
    return *l_2253;
}
__device__ uint8_t  func_15(uint8_t  , int32_t  , int64_t  , int32_t  , S0 * p_2261)
{ 
    return p_2261->g_1460[5][3];
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_2262;
    S0* p_2261 = &c_2262;
    S0 c_2263 {
        0, 
        0, 
        0, 
        {}, 
        4, 
        &p_2261->g_126[3][3], 
        {}, 
        4, 
        &p_2261->g_593, 
        3, 
        2, 
        {}, 
        &p_2261->g_92, 
        5, 5, 2, 5, 5, 2, 
        5, 
        9, 
        2, 
        1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 
        &p_2261->g_157, 
        &p_2261->g_1277, 
        3, 
        7, 
        6, 
        2, 
        &p_2261->g_1103, 
        4073709551615, 
        8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 8, 4073709551615, 0, 0, 2, 4073709551615, 4073709551615, 
        1, 
        0, 
        3, 
        0, 
        &p_2261->g_592, 
        &p_2261->g_1576, 
        3, 
        &p_2261->g_976[8][1], 
        &p_2261->g_1611, 
        &p_2261->g_307, 
        &p_2261->g_1651, 
        nullptr, 
        &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, {}, &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, &p_2261->g_1575, 
        1, 
        3, 
        7, 
        3, 
        &p_2261->g_93, 
        1, 
        0, 
        &p_2261->g_1575, 
        0, 
        0, 
        &p_2261->g_1650, 
        {}, 
        3, 
        1, 
        &p_2261->g_93, 
        1, 
        0, 
        9, 5, 9, 5, 9, 5, 9, 
        1, 
        0, 
        &p_2261->g_1136[1], 
        &p_2261->g_2219, &p_2261->g_2219, &p_2261->g_2219, 
        &p_2261->g_2218[2], 
        1, 
        {}, 
        1};
    c_2262 = c_2263;
    func_1(p_2261);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2261->g_157, , );
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
