#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {};
struct S1 {
   uint8_t  f0;
};
struct S2 {
    uint32_t g_26;
    int32_t g_54[4][1];
    uint16_t g_122;
    int16_t g_187;
    uint64_t g_198;
    uint32_t g_202[9][10][2];
    int64_t g_239;
    int32_t g_241[10][8];
    int8_t g_280;
    int32_t g_290;
    int64_t *g_665[2];
    int64_t **g_664;
    int32_t g_699;
    uint64_t g_713;
    uint32_t *g_776;
    uint32_t **g_775;
    uint32_t ***g_774;
    uint8_t g_827;
    int32_t g_873;
    int32_t *g_920;
    uint32_t g_1062;
    int8_t *g_1068;
    int8_t **g_1067;
    S1 g_1076[7];
    S0 g_1082;
    int32_t g_1133;
    int16_t g_1167;
    uint64_t g_1277;
    uint16_t *g_1314;
    uint16_t **g_1313;
    uint16_t ***g_1312;
    S1 *****g_1398;
    uint32_t ****g_1407;
    uint32_t g_1436;
    int64_t g_1442;
    uint32_t *g_1448;
    int32_t g_1477;
    int32_t *g_1486;
    int32_t *g_1488;
    int16_t *g_1633;
    int16_t *g_1649;
    int16_t **g_1648;
    int64_t ***g_1658;
    S0 **g_1678;
    S0 ***g_1677;
    uint8_t g_1766;
    S1 ****g_1793;
    uint32_t *****g_1798;
    uint32_t g_1799;
    uint64_t g_1871;
    int32_t g_1883;
    int32_t g_1954;
};
__device__ uint16_t  func_1(S2 * p_1990)
{
            int16_t *l_1100 = &p_1990->g_187;
            uint64_t *l_1101 = &p_1990->g_198;
            if (*l_1101 |= safe_add_func_int32_t_s_s(0 < *l_1100 , 4294967288)) 
    return *p_1990->g_920;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S2 c_1991;
    S2* p_1990 = &c_1991;
    S1 ****p_1990_20;
    S0 **p_1990_55;
    S1 ***p_1990_21;
    S0 *p_1990_19;
    S2 c_1992 {
        4073709551608, 
        {}, 
        5, 
        7, 
        1, 
        {}, 
        5, 
        {} 
        , 
        {}, 
        0, 
        {}, 
        &p_1990->g_665[1], 
        {}, 
        4073709551615, 
        &p_1990->g_202[0][4][1], 
        &p_1990->g_776, 
        &p_1990->g_775, 
        {}, 
        3, 
        &p_1990->g_54[3][0], 
        4073709551615, 
        &p_1990->g_280, 
        &p_1990->g_1068, 
        {}, 
        {}, 
        5, 
        2, 
        2, 
        &p_1990->g_122, 
        &p_1990->g_1314, 
        &p_1990->g_1313, 
        &p_1990_20, 
        &p_1990->g_774, 
        0, 
        0, 
        &p_1990->g_26, 
        {}, 
        &p_1990->g_290, 
        &p_1990->g_241[3][5], 
        nullptr, 
        &p_1990->g_1167, 
        &p_1990->g_1649, 
        &p_1990->g_664, 
        &p_1990_19, 
        &p_1990_55, 
        0, 
        &p_1990_21, 
        &p_1990->g_1407, 
        {}, 
        0, 
        1, 
        {}};
    c_1991 = c_1992;
    func_1(p_1990);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1990->g_198, , );
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
