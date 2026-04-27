#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S1 {
    int32_t g_7;
    int32_t g_17[10][6];
    int32_t g_19;
    int32_t *g_18;
    uint8_t g_44;
    uint8_t g_47;
    uint8_t g_49;
    int g_56;
    uint16_t g_88;
    uint16_t g_94;
    int32_t **g_95;
    uint32_t g_133;
    int32_t g_146;
    int16_t g_159;
    int64_t g_175;
    int32_t g_176;
    int64_t g_214;
    uint8_t g_228;
    int32_t g_238;
    int32_t g_245;
    int64_t g_246;
    uint32_t g_247;
    uint32_t g_253;
    uint32_t *g_266[1];
    uint32_t **g_265;
    int32_t g_277;
    int8_t g_278;
    uint8_t g_279;
    int16_t g_315;
    int64_t g_342[9][6][4];
    uint64_t g_353;
    int32_t g_417;
    int32_t *g_444;
    int8_t g_447;
    uint8_t g_448;
    int64_t g_456;
    int32_t *g_676[6][10][3];
    uint32_t g_738;
    uint32_t g_850;
    uint32_t ***g_882;
    uint32_t ****g_881;
    int32_t ***g_896;
    int32_t ****g_895;
    int16_t g_1073;
    int32_t *g_1207;
    int32_t g_1206;
    uint64_t *g_1295;
    int32_t g_1313[2];
    int64_t g_1314;
    int8_t g_1316;
};
__device__ uint64_t  func_1(S1 * p_1322)
{
            int64_t *l_899 = &p_1322->g_214;
            p_1322->g_342[0][0][3] |= *l_899 |= -5 ;
    return p_1322->g_342[2][1][1];
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S1 c_1323;
    S1* p_1322 = &c_1323;
    S1 c_1324 {
        0, 
        {}, 
        1, 
        &p_1322->g_19, 
        4, 
        5, 
        {}, 
        {}, 
        1, 
        {}, 
        &p_1322->g_18, 
        7, 
        1, 
        0, 
        0, 
        1, 
        0, 
        {}, 
        0, 
        3, 
        1, 
        1, 
        4073709551607, 
        {}, 
        &p_1322->g_266[0], 
        8, 
        9, 
        {}, 
        0, 
        {}, 
        2, 
        1, 
        &p_1322->g_277, 
        2, 
        3, 
        {}, 
        &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, &p_1322->g_146, {}, {}, {}, {}, {}, {}, {}, {}, {}, 
        4073709551615, 
        0, 
        &p_1322->g_265, 
        &p_1322->g_882, 
        &p_1322->g_95, 
        &p_1322->g_896, 
        {}, 
        &p_1322->g_17[7][2], 
        {}, 
        nullptr, 
        1, 0, 
        0, 
        1};
    c_1323 = c_1324;
    func_1(p_1322);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 9; i++)
        for (int j = 0; j < 6; j++)
            for (int k = 0; k < 4; k++)
                transparent_crc(p_1322->g_342[i][j][k], , );
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
