#include <hip/hip_runtime.h>

#define HIP_CHECK(expression)                                               \
  {                                                                         \
    const hipError_t err = expression;                                      \
    if (err != hipSuccess) {                                                \
      fprintf(stderr, "HIP error: %s at %d\n", hipGetErrorString(err),      \
              __LINE__);                                                    \
      exit(EXIT_FAILURE);                                                   \
    }                                                                       \
  }

struct U0 {
   signed f0 ;
};
struct U2 {
   int16_t  f0;
};
struct U3 {
   int8_t  f0;
};
union U4 {
   uint32_t  f3;
   uint16_t  f4;
};
struct S5 {
    uint32_t g_4[7][4][1];
    int32_t g_17;
    int32_t g_19;
    uint32_t g_21;
    int g_26;
    uint32_t g_72;
    uint16_t g_79;
    int32_t g_132;
    uint8_t g_134;
    uint32_t *g_161;
    int64_t g_167;
    int32_t *g_177[5];
    int32_t **g_176;
    U3 g_207;
    uint32_t g_265;
    U3 g_291;
    uint64_t *g_303[4];
    int8_t *g_323;
    U4 g_351;
    U0 g_402[8];
    uint32_t *g_477;
    U2 g_511;
    uint32_t *g_534;
    uint32_t *g_535[9][3];
    int16_t *g_662;
    int16_t g_779;
    uint64_t **g_931[4];
    int *g_975;
    int **g_974[5];
    int ***g_973;
    uint32_t **g_1020;
    uint32_t ***g_1019;
    uint32_t ****g_1018;
    U2 *g_1100;
    uint16_t *g_1120;
    int32_t g_1208;
    uint8_t g_1292;
    uint8_t *g_1291;
    int32_t g_1321;
    uint64_t g_1382;
    int32_t g_1403;
    uint8_t g_1483[5][8];
    int8_t *g_1495;
    uint16_t g_1548;
    U3 *g_1563[8];
    U3 **g_1562;
    int32_t g_1599;
    U4 *g_1659[7][5][2];
    int32_t *g_1667;
    int32_t g_1702;
    uint16_t **g_1737[6][5];
    uint16_t ***g_1736[9][4];
    uint16_t ****g_1735[3];
    uint16_t *****g_1734;
    U4 g_1748;
    uint8_t g_1801;
    int32_t g_1832;
    uint64_t g_1846;
    int32_t *g_2095;
    int8_t g_2127;
    uint16_t *g_2181;
    int16_t g_2183;
    U0 *g_2216[7];
    U0 **g_2215;
    uint8_t g_2270;
    uint32_t g_2313;
    int32_t ***g_2454;
    int32_t ****g_2453;
    uint32_t g_2709;
    U4 **g_2902;
    U4 ***g_2901;
    U2 *g_2938;
    U2 ***g_2937;
    U2 ****g_2936;
    U3 g_3064;
    int8_t *g_3065;
    U0 ***g_3084;
    U0 ****g_3083;
    int32_t g_3085;
    int32_t g_3086;
};

__device__ uint16_t  func_1(S5 * p_3152)
{ 
    p_3152->g_167 |= (p_3152|| p_3152) -10;
    return 3;
}

__global__ void hipsmith_kernel(uint64_t *results) {
    S5 c_3153;
    S5* p_3152 = &c_3153;
    U2 **p_3152_71;
    int *p_3152_27;
    int **p_3152_28_4;
    U3 *p_3152_44_1;
    S5 c_3154 {
        {}, 
        1, 
        6, 
        9, 
        0, 
        0, 
        8, 
        1, 
        0, 
        &p_3152->g_72, 
        1, 
        &p_3152->g_132, nullptr, &p_3152->g_132, nullptr, &p_3152->g_132, 
        &p_3152->g_177[2], 
        3, 
        0, 
        0, 
        nullptr, nullptr, nullptr, nullptr, 
        nullptr, 
        1, 
        6, 6, 6, 6, 6, 6, 6, 6, 
        nullptr, 
        9, 
        &p_3152->g_351.f3, 
        &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, &p_3152->g_265, 
        &p_3152->g_511.f0, 
        7, 
        &p_3152->g_303[2], nullptr, &p_3152->g_303[2], nullptr, 
        &p_3152->g_26, 
        &p_3152_27, &p_3152_27, &p_3152_27, &p_3152_27, &p_3152_27, 
        &p_3152_28_4, 
        &p_3152->g_161, 
        &p_3152->g_1020, 
        &p_3152->g_1019, 
        &p_3152->g_511, 
        &p_3152->g_351.f4, 
        8, 
        4, 
        &p_3152->g_1292, 
        4, 
        9, 
        5, 
        3, 5, 4, 3, 3, 6, 4, 7, 3, 5, 4, 3, 3, 6, 4, 7, 3, 5, 4, 3, 3, 6, 4, 7, 3, 5, 4, 3, 3, 6, 4, 7, 3, 5, 4, 3, 3, 6, 4, 7, 
        &p_3152->g_291.f0, 
        1, 
        &p_3152->g_291, &p_3152->g_291, nullptr, &p_3152->g_291, &p_3152->g_291, nullptr, &p_3152->g_291, &p_3152->g_291, 
        &p_3152_44_1, 
        1, 
        {}, 
        &p_3152->g_132, 
        8, 
        &p_3152->g_1120, nullptr, &p_3152->g_1120, nullptr, &p_3152->g_1120, &p_3152->g_1120, nullptr, &p_3152->g_1120, nullptr, &p_3152->g_1120, &p_3152->g_1120, nullptr, &p_3152->g_1120, nullptr, &p_3152->g_1120, &p_3152->g_1120, nullptr, &p_3152->g_1120, nullptr, &p_3152->g_1120, &p_3152->g_1120, nullptr, &p_3152->g_1120, nullptr, &p_3152->g_1120, {}, 
        {}, 
        &p_3152->g_1736[4][3], &p_3152->g_1736[4][3], &p_3152->g_1736[4][3], 
        &p_3152->g_1735[1], 
        9, 
        1, 
        1, 
        0, 
        nullptr, 
        1, 
        &p_3152->g_1748.f4, 
        2, 
        {}, 
        &p_3152->g_2216[6], 
        9, 
        8, 
        nullptr, 
        &p_3152->g_2454, 
        {}, 
        &p_3152->g_1659[4][1][1], 
        &p_3152->g_2902, 
        nullptr, 
        &p_3152_71, 
        &p_3152->g_2937, 
        {}, 
        nullptr, 
        &p_3152->g_2215, 
        &p_3152->g_3084, 
        0, 
        1};
    c_3153 = c_3154;
    func_1(p_3152);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_3152->g_167;
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
