#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int32_t g_4;
    int8_t g_26;
    int32_t *g_91;
    int32_t **g_90;
    uint8_t g_107;
    uint32_t g_136;
    int32_t g_187[7];
    uint16_t g_197;
    uint32_t *g_264;
    uint32_t **g_263;
    uint64_t g_270;
    int64_t g_279;
    uint8_t *g_336;
    uint8_t **g_335;
    int8_t g_390;
    uint64_t *g_432;
    int16_t g_447;
    int8_t *g_486;
    uint8_t g_510;
    uint8_t *g_562;
    int32_t g_597;
    uint8_t g_609;
    uint64_t g_638;
    uint32_t **g_658[3];
    int16_t g_697;
    int8_t g_698;
    int32_t g_699;
    uint64_t g_702;
    int32_t g_707;
    int32_t ***g_726[6];
    int32_t ****g_725[1][1][7];
    int32_t g_772;
    int16_t g_794;
    int16_t g_930;
    uint32_t g_931;
    uint32_t g_1013;
    uint16_t *g_1025;
    uint64_t *g_1090;
    int32_t *****g_1138;
    uint8_t g_1149[4];
    int8_t *g_1172;
    int32_t g_1273;
    uint32_t g_1275[7];
    int16_t *g_1371;
    int64_t g_1373;
    uint32_t g_1376;
    uint64_t g_1411;
    int16_t *g_1424;
    int8_t *g_1448;
    int16_t g_1491;
    uint8_t g_1562[4];
    int16_t **g_1677;
};
__device__ int16_t  func_1(S0 * p_1761)
{ 
    uint64_t l_2[6][1][4] ;
            uint64_t *l_1504 = &p_1761->g_638;
                for (p_1761->g_447 = 0; p_1761->g_447 <= 0; p_1761->g_447 += 1)
                    *p_1761->g_91 = *l_1504 |= l_2[1][p_1761->g_447][2]-- != 0 ^ -5;
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_1762;
    S0* p_1761 = &c_1762;
    S0 c_1763 {
        15, 
        0, 
        &p_1761->g_4, 
        &p_1761->g_91, 
        11, 
        11, 
        2, 2, 2, 2, 9, 2, 
        12, 
        1, 
        &p_1761->g_136, 
        &p_1761->g_264, 
        1, 
        11, 
        &p_1761->g_107, 
        &p_1761->g_336, 
        1, 
        nullptr, 
        12, 
        &p_1761->g_26, 
        11, 
        nullptr, 
        5, 
        3, 
        7, &p_1761->g_264, &p_1761->g_264, 
        0, 
        9, 
        5, 
        2, 
        0, 
        1, 
        &p_1761->g_90, &p_1761->g_90, &p_1761->g_90, &p_1761->g_90, &p_1761->g_90, &p_1761->g_90, 
        &p_1761->g_726[4], &p_1761->g_726[4], &p_1761->g_726[4], &p_1761->g_726[4], &p_1761->g_726[4], &p_1761->g_726[4], &p_1761->g_726[4], 
        1, 
        12, 
        13, 
        8, 
        6, 
        &p_1761->g_197, 
        nullptr, 
        &p_1761->g_725[0][0][0], 
        3, 3, 3, 3, 
        nullptr, 
        0, 
        0, 0, 0, 0, 0, 0, 0, 
        &p_1761->g_794, 
        6, 
        10, 
        7, 
        nullptr, 
        nullptr, 
        0, 
        15, 15, 15, 15, 
        &p_1761->g_1371};
    c_1762 = c_1763;
    func_1(p_1761);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1761->g_638, , );
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
