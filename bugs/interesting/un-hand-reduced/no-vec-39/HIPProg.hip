#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S3 {
    uint8_t g_14[1];
    uint64_t g_38;
    int32_t g_42;
    uint32_t g_43;
    uint32_t g_101;
    int64_t g_103;
    int32_t g_108;
    uint16_t g_142;
    int8_t g_163[2];
    int32_t g_166[8];
    int *g_180;
    int32_t *g_209[3][10];
    uint32_t *g_256;
    uint32_t **g_255;
    int64_t *g_260;
    int16_t g_265;
    int8_t g_276;
    uint32_t g_277;
    int g_314;
    uint16_t *g_372;
    int g_379;
    uint32_t *g_383;
    uint32_t **g_382;
    uint8_t *g_507;
    uint8_t **g_506;
    uint8_t ***g_505;
    int16_t g_509;
    uint64_t ***g_609;
    uint64_t ****g_608;
    uint64_t g_623;
    int8_t *g_701;
    int32_t **g_769;
    int32_t ***g_768;
    int *g_800;
    int **g_799;
    int **g_918[4][7];
    int64_t *g_931;
    int64_t **g_933;
    int64_t ***g_932;
    uint16_t g_1026;
    uint64_t g_1039[7];
    uint64_t *****g_1073[6];
    uint64_t g_1081;
};
__device__ int32_t  func_1(S3 * p_1179)
{ 
    uint8_t l_12 = 5;
    uint32_t l_34[9];
    uint64_t *l_37 = &p_1179->g_38;
    uint64_t l_1178 = *l_37 |= safe_sub_func_uint64_t_u_u(p_1179 && l_34, l_12);
    return l_1178;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S3 c_1180;
    S3* p_1179 = &c_1180;
    int *p_1179_42;
    S3 c_1181 {
        {}, 
        5, 
        9, 
        3, 
        0, 
        7, 
        4, 
        3, 
        7, 
        3, 0, 0, 0, 0, 0, 0, 
        6, 
        5, 
        nullptr, 
        &p_1179->g_108, &p_1179->g_42, &p_1179->g_42, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, &p_1179->g_42, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, &p_1179->g_42, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, &p_1179->g_42, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, &p_1179->g_42, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, &p_1179->g_42, &p_1179->g_42, &p_1179->g_108, &p_1179->g_42, 
        &p_1179->g_43, 
        &p_1179->g_256, 
        &p_1179->g_103, 
        6, 
        1, 
        5, 
        1, 
        &p_1179->g_142, 
        9, 
        &p_1179->g_101, 
        &p_1179->g_383, 
        &p_1179->g_14[0], 
        &p_1179->g_507, 
        &p_1179->g_506, 
        0, 
        nullptr, 
        &p_1179->g_609, 
        1, 
        nullptr, 
        &p_1179->g_209[2][2], 
        &p_1179->g_769, 
        nullptr, 
        &p_1179_42, 
        &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, &p_1179_42, 
        nullptr, 
        &p_1179->g_260, 
        &p_1179->g_933, 
        5, 
        1, 2, 1, 2, 1, 2, 1, 
        &p_1179->g_608, nullptr, &p_1179->g_608, nullptr, &p_1179->g_608, nullptr, 
        9};
    c_1180 = c_1181;
    func_1(p_1179);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1179->g_38, , );
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
