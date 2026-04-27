#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int32_t g_22;
    int32_t *g_21;
    int32_t g_40;
    int16_t g_41[8];
    uint64_t g_67;
    int64_t g_76;
    uint32_t g_83;
    uint32_t g_113;
    uint32_t *g_112;
    int64_t g_162;
    int8_t g_167;
    int32_t g_178;
    uint32_t g_184;
    uint16_t g_189;
    int16_t g_224;
    int16_t g_227;
    int32_t g_265;
    int32_t g_267;
    int64_t g_268;
    uint32_t g_269;
    uint64_t *g_307;
    uint64_t g_306;
    uint32_t g_328;
    int32_t *g_333;
    uint8_t g_345;
    uint8_t *g_344;
    uint32_t g_394;
    uint16_t *g_407;
    uint16_t g_477;
    int8_t *g_499;
    int8_t **g_498;
    int64_t g_520;
    uint8_t g_537;
    int64_t g_575;
    int32_t g_576;
    uint32_t *g_582;
    uint8_t g_587;
};__device__ int64_t  func_1(S0 * p_698)
{
        int16_t l_688 = 8;
        uint32_t l_689 = 5;
        int64_t *l_693 = &p_698->g_162;
        *l_693 |= safe_sub_func_uint8_t_u_u(safe_mul_func_int64_t_s_s(*p_698->g_582, l_688), l_689) ^ -6L ;
        return l_688;
    }
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_699;
    S0* p_698 = &c_699;
    S0 c_700 {
        1, 
        &p_698->g_22, 
        5, 
        {}, 
        2, 
        0, 
        {}, 
        1, 
        &p_698->g_113, 
        2, 
        1, 
        4, 
        5, 
        {}, 
        5, 
        9, 
        0, 
        0, 
        0, 
        0, 
        nullptr, 
        {}, 
        5, 
        nullptr, 
        4, 
        &p_698->g_345, 
        9, 
        nullptr, 
        5, 
        &p_698->g_167, 
        &p_698->g_499, 
        {}, 
        {}, 
        4, 
        0, 
        &p_698->g_394, 
        9};
    c_699 = c_700;
    func_1(p_698);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_698->g_162, , );
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
