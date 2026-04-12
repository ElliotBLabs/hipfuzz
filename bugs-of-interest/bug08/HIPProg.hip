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
   int32_t  f1;
};
struct U4 {
   int64_t  f0;};
struct S5 {
    int32_t g_7;
    int16_t g_10;
    U0 g_11;
    int g_22;
    U4 g_61;
    int32_t *g_65;
    int g_68;
    uint16_t g_94;
    int16_t g_95;
    int8_t g_101;
    int8_t g_103;
    int32_t g_105;
    int32_t g_104;
    uint32_t g_112;
    uint32_t g_117;
    int64_t g_126;
    uint16_t g_184;
    uint8_t g_220;
    uint8_t g_236;
    U4 g_269;
    uint8_t g_294;
    uint8_t *g_339;
    uint8_t g_338;
    int16_t g_401;
    int64_t *g_443;
    int64_t **g_442;
    uint8_t g_532;
    int g_541;
    uint8_t g_626;
    uint64_t g_647;
    uint64_t g_661[7][3][4];
    int64_t *g_663;
    U0 *g_671[9];
    int g_782[2][1][8];
    int *g_781[6];
    uint8_t g_7924;
    U0 **g_806;
    U0 ***g_805;
    U0 ****g_804;
    uint32_t g_873;
    int16_t g_958;
    int64_t g_964;
    uint8_t g_966;
    uint16_t *g_977;
    int64_t *g_1013;
    int16_t g_1037;
    uint32_t *g_1074;
    int8_t g_1114;
    uint64_t *g_1137;
    uint64_t **g_1136;
    uint16_t g_1171;
    int32_t *g_1231;
    int16_t g_1251;
    uint16_t g_1259;
    uint64_t g_1317;
    uint8_t ****g_1375[1];
    uint8_t *****g_1374;
    uint64_t g_1398;
    int32_t g_1413;
    int16_t *g_1484;
    int *g_1494;
    int **g_1493;
    int16_t **g_1509;
    int16_t ***g_1508;
    int32_t g_1540;
};

__device__ U0  func_1(S5 * p_1562)
{
    U0 l_840[9] {};
    **p_1562->g_806 = l_840[7];
    int16_t l_1030 {39008};
    p_1562->g_661[5][1][1] |= l_1030  ^ p_1562->g_236;
        
    return {};
}

__global__ void hipsmith_kernel(uint64_t *results) {
    S5 c_1563;
    S5* p_1562 = &c_1563;
    U0 ***p_1562_37;
    int *p_1562_60;
    S5 c_1564 {
        4, 
        1, 
        {}, 
        {}, 
        {}, 
        nullptr, 
        {}, 
        5, 
        4, 
        0, 
        0, 
        {}, 
        {}, 
        0, 
        4, 
        2, 
        4, 
        0, 
        1, 
        {}, 
        {}, 
        nullptr, 
        {}, 
        9, 
        &p_1562->g_269.f0, 
        &p_1562->g_443, 
        7, 
        {}, 
        5, 
        0, 
        {}, 
        nullptr, 
        &p_1562->g_11, &p_1562->g_11, &p_1562->g_11, &p_1562->g_11, &p_1562->g_11, &p_1562->g_11, &p_1562->g_11, &p_1562->g_11, &p_1562->g_11, 
        {}, 
        &p_1562->g_782[1][0][2], &p_1562->g_782[1][0][2], &p_1562->g_782[1][0][2], &p_1562->g_782[1][0][2], &p_1562->g_782[1][0][2], &p_1562->g_782[1][0][2], 
        {}, 
        &p_1562->g_671[4], 
        &p_1562->g_806, 
        &p_1562_37, 
        4, 
        7, 
        4, 
        {}, 
        nullptr, 
        nullptr, 
        0, 
        nullptr, 
        4, 
        &p_1562->g_647, 
        &p_1562->g_1137, 
        {}, 
        nullptr, 
        0, 
        {}, 
        4073709551615, 
        {}, 
        &p_1562->g_1375[0], 
        4, 
        0, 
        &p_1562->g_401, 
        &p_1562->g_68, 
        &p_1562_60, 
        &p_1562->g_1484, 
        &p_1562->g_1509, 
        0};
    c_1563 = c_1564;
    func_1(p_1562);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 7; i++)
        for (int j = 0; j < 3; j++)
            for (int k = 0; k < 4; k++)
                crc64_context ^= p_1562->g_661[i][j][k];
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
