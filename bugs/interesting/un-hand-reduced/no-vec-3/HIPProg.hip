#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    uint16_t g_12;
    uint32_t g_42[8];
    int32_t g_49;
    int32_t g_55;
    int32_t *g_54;
    uint64_t g_72;
    int16_t g_76;
    uint16_t g_108;
    int8_t g_112;
    uint32_t g_114;
    uint8_t g_134;
    uint8_t g_136;
    uint32_t g_157;
    int64_t g_175;
    uint32_t g_299;
    uint64_t *g_301;
    uint64_t **g_300;
    int64_t g_317[4];
    uint32_t g_318;
    uint32_t g_399;
    int32_t g_4623;
    uint8_t g_466;
    uint16_t *g_521[5][10][5];
    uint16_t **g_520;
    int8_t g_57810;
    int8_t g_583;
    int32_t **g_606;
    int32_t ***g_605;
    int32_t ****g_604[1][6][9];
    int32_t *****g_603;
    int64_t *g_613;
    int64_t g_662[1];
    int32_t g_675;
    uint32_t g_682;
    int32_t g_705;
    uint8_t g_738[7];
    uint32_t g_859;
    uint64_t **g_1098;
    int32_t g_1163;
    uint16_t g_1195;
    uint64_t *g_1290;
    int32_t *g_1309;
    int32_t **g_1308;
    uint64_t ***g_1368;
    uint64_t ****g_1367;
    int16_t g_1393[7];
    uint8_t g_1402;
    uint64_t g_1454;
    int32_t *g_1574;
    uint32_t *g_1600;
    uint16_t *g_1630;
    uint32_t **g_2005;
    uint32_t g_2004;
    uint8_t g_2134;
    uint32_t g_2141;
    uint64_t *****g_2266;
    int32_t g_2468;
    int64_t g_2485;
    uint16_t ***g_2614[10];
    int32_t g_2627;
    int16_t *g_2640;
    int16_t **g_2639[5];
    int16_t ***g_2638;
    int16_t ***g_2641;
    int8_t *g_2668;
    int8_t **g_2667;
    uint64_t g_2699;
    uint16_t ****g_2730;
    uint32_t *g_2998;
    uint8_t *g_3059;
};
__device__ uint64_t  func_24(uint8_t  , uint32_t  , S0 * );
__device__ int32_t  func_1(S0 * p_3168)
{
    func_24(0, p_3168->g_662[0], p_3168);
    return 0;
}
__device__ uint64_t  func_24(uint8_t  p_25, uint32_t  p_26, S0 * p_3168)
{
    for (; p_3168->g_399 < 9; ++p_3168->g_399)
    {
        uint64_t *l_722 = &p_3168->g_72;
        p_3168->g_76 && (*l_722 |= safe_add_func_uint64_t_u_u(18446744073709551607, safe_lshift_func_uint32_t_u_u(0 || p_3168, p_25))) 
        ;
    }
    return p_26;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_3169;
    S0* p_3168 = &c_3169;
    S0 c_3170 {
        1, 
        4073709551615, 4073709551615, 4073709551615, 4073709551615, 4073709551615, 4073709551615, 4073709551615, 4073709551615, 
        2, 
        2, 
        &p_3168->g_55, 
        3, 
        10, 
        8, 
        2, 
        8, 
        1, 
        4, 
        1, 
        2, 
        0, 
        nullptr, 
        &p_3168->g_301, 
        {}, 
        {}, 
        5, 
        {}, 
        2, 
        {}, 
        &p_3168->g_521[1][9][0], 
        {}, 
        5, 
        &p_3168->g_54, 
        &p_3168->g_606, 
        {}, 
        &p_3168->g_604[0][5][0], 
        &p_3168->g_317[2], 
        {}, 
        9, 
        1, 
        {}, 
        {}, 
        0, 
        &p_3168->g_301, 
        1, 
        9, 
        nullptr, 
        nullptr, 
        &p_3168->g_1309, 
        nullptr, 
        &p_3168->g_1368, 
        {}, 
        5, 
        6, 
        &p_3168->g_49, 
        &p_3168->g_42[0], 
        nullptr, 
        &p_3168->g_1600, 
        {}, 
        5, 
        4073709551613, 
        &p_3168->g_1367, 
        1, 
        3, 
        {}, 
        0, 
        &p_3168->g_1393[1], 
        {}, 
        &p_3168->g_2639[4], 
        &p_3168->g_2639[2], 
        nullptr, 
        &p_3168->g_2668, 
        8, 
        &p_3168->g_2614[7], 
        nullptr, 
        &p_3168->g_738[4]};
    c_3169 = c_3170;
    func_1(p_3168);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_3168->g_72, , );
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
