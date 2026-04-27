#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct U0 {
   uint16_t  f4;
};
struct U1 {
   int32_t  f3;
};
union U2 {
   uint64_t  f0;
   int32_t  f3;
};
struct S4 {
    int32_t g_4[10][6][2];
    int32_t g_19;
    int32_t g_20;
    int g_28;
    uint32_t g_29;
    int64_t g_32;
    uint64_t g_36;
    int64_t *g_53;
    U1 g_61;
    U1 *g_60;
    int32_t g_67[6];
    int32_t *g_66;
    int16_t g_70;
    uint16_t g_88;
    uint32_t g_90;
    int32_t g_92;
    U0 g_94;
    U0 *g_96[3];
    int16_t *g_119;
    int64_t g_155[3][4][5];
    int g_163;
    int8_t g_165;
    uint32_t g_232;
    uint64_t g_245;
    uint8_t g_272;
    int64_t g_277;
    U2 g_299;
    U2 *g_298;
    int32_t *g_319;
    U1 **g_344;
    U1 ***g_343;
    int8_t g_359;
    uint64_t *g_400;
    uint8_t g_455;
    uint8_t g_514;
    uint64_t **g_570;
    uint64_t ***g_569[3];
    int32_t **g_663;
    uint16_t g_664;
    int32_t g_689;
    uint32_t g_728;
    uint8_t g_761[6];
    uint16_t g_838[7];
    int *g_917;
    uint32_t g_918;
    int64_t *g_946;
    int64_t **g_945;
    int16_t g_948;
    U0 g_1138;
    uint32_t *g_1172;
    uint32_t **g_1171;
    uint32_t ***g_1170;
    uint32_t ****g_1169;
    uint32_t ****g_1173;
    U2 g_1189;
    int32_t g_1199;
    int64_t g_1206;
    int8_t g_1432;
    uint64_t g_1434;
    uint32_t *****g_1447;
    U1 g_1452;
    U1 g_1525;
    int32_t *g_1535;
    uint32_t g_1567;
    int32_t ***g_1597[2];
    int32_t ****g_1596;
    int g_1620;
    uint32_t g_1674;
    uint8_t g_1678;
    uint32_t g_1709;
    U0 g_1746;
    U1 g_1751;
    int32_t g_1760;
    uint16_t **g_1877;
    uint16_t ***g_1876;
    uint32_t ****g_1976;
    uint32_t *g_2043;
    uint32_t **g_2042;
    uint64_t ****g_2083;
    uint8_t g_2138;
    uint16_t *g_2161;
    uint32_t g_2317;
    int8_t *g_2340;
    int8_t *g_2342;
    int8_t **g_2341;
    int32_t g_2367;
    int32_t *g_2384;
};
__device__ int8_t  func_13(int64_t  , S4 * );
__device__ uint64_t  func_1(S4 * p_2389)
{
    int64_t *l_31 = &p_2389->g_32;
    *l_31 |= func_13(0, p_2389) ;
    return 0;
}
__device__ int8_t  func_13(int64_t  , S4 * p_2389)
{
    for (p_2389->g_20 = -4; p_2389->g_20 != -1; ++p_2389->g_20)
        if (p_2389->g_4[0][1][1])
            break;
    return p_2389->g_20;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S4 c_2390;
    S4* p_2389 = &c_2390;
    S4 c_2391 {
        {}, 
        5, 
        9, 
        1, 
        5, 
        1, 
        3, 
        nullptr, 
        2, 
        &p_2389->g_61, 
        5, 0, 5, 0, 5, 0, 
        &p_2389->g_67[4], 
        0, 
        3, 
        7, 
        1, 
        0, 
        &p_2389->g_94, &p_2389->g_94, &p_2389->g_94, 
        &p_2389->g_70, 
        {}, 
        0, 
        0, 
        3, 
        1, 
        3, 
        9, 
        4073709551610, 
        &p_2389->g_299, 
        &p_2389->g_299.f3, 
        nullptr, 
        &p_2389->g_344, 
        {}, 
        &p_2389->g_299.f0, 
        0, 
        1, 
        &p_2389->g_400, 
        &p_2389->g_570, &p_2389->g_570, &p_2389->g_570, 
        &p_2389->g_319, 
        3, 
        0, 
        7, 
        3, 3, 3, 3, 3, 3, 
        9, 5, 9, 5, 9, 5, 9, 
        &p_2389->g_163, 
        0, 
        &p_2389->g_155[2][2][1], 
        &p_2389->g_946, 
        {}, 
        {}, 
        nullptr, 
        &p_2389->g_1172, 
        &p_2389->g_1171, 
        &p_2389->g_1170, 
        &p_2389->g_1170, 
        {}, 
        0, 
        0, 
        3, 
        4073709551614, 
        &p_2389->g_1173, 
        {}, 
        {}, 
        &p_2389->g_61.f3, 
        5, 
        {}, 
        &p_2389->g_1597[1], 
        {}, 
        3, 
        0, 
        3, 
        {}, 
        {}, 
        7, 
        nullptr, 
        &p_2389->g_1877, 
        &p_2389->g_1170, 
        &p_2389->g_918, 
        &p_2389->g_2043, 
        &p_2389->g_569[1], 
        0, 
        &p_2389->g_1746.f4, 
        1, 
        nullptr, 
        &p_2389->g_1432, 
        &p_2389->g_2342, 
        {}, 
        &p_2389->g_19};
    c_2390 = c_2391;
    func_1(p_2389);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2389->g_32, , );
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
