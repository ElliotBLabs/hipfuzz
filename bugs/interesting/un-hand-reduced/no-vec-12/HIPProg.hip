#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int32_t g_11;
    int64_t g_36;
    uint8_t g_65;
    int32_t *g_107;
    int32_t **g_106[7];
    int32_t ***g_105;
    uint32_t g_112;
    uint32_t g_123;
    uint64_t g_130;
    uint8_t g_132;
    uint32_t g_167[8];
    uint16_t g_207;
    int16_t g_221;
    int32_t ***g_255;
    int32_t ****g_254;
    int64_t g_303;
    int8_t g_325;
    int16_t g_350;
    uint32_t *g_399;
    uint32_t **g_398[5][6][7];
    uint16_t g_403[5][3][5];
    uint16_t *g_459;
    uint16_t **g_458;
    uint64_t g_486;
    int32_t g_555;
    int32_t g_556;
    int32_t *g_659;
    uint8_t g_698;
    uint64_t g_717;
    uint32_t g_810;
    uint32_t g_885;
    uint16_t ***g_899;
    uint16_t ****g_898;
    int32_t g_1003;
    int32_t **g_1002[2][4][6];
    int32_t ***g_1001;
    int32_t ****g_1000;
    uint64_t g_1006;
    int32_t g_1041;
    int16_t *g_1113;
    int16_t **g_1112;
    uint32_t g_1187;
    int32_t g_1209;
    uint64_t g_1304;
    int32_t g_1354;
    uint64_t g_1388;
    int64_t g_1395;
    int8_t *g_1453;
    int8_t **g_1452;
    int8_t **g_1457;
    uint16_t g_1660;
    int16_t g_1738;
    int64_t g_1968;
    uint32_t g_2132;
    uint8_t g_2133;
    int64_t g_2208[10][7];
    uint32_t *g_2301;
    uint32_t **g_2300;
    uint32_t ***g_2395;
    uint32_t g_2394;
    int16_t g_2416;
    uint64_t *g_2457;
    uint8_t *g_2472;
    uint8_t **g_2471;
    uint8_t ***g_2470;
    uint8_t ****g_2469;
    int64_t g_2507;
    int64_t *g_2524;
    uint32_t ***g_2790;
    uint32_t ****g_2789;
    int32_t g_2813;
    uint32_t g_2859;
    int8_t ***g_2914[3];
    int8_t ****g_2913;
    int8_t g_3263;
    int32_t g_3265;
    int32_t g_3267;
    uint8_t **g_3310;
    uint64_t **g_3504;
    uint64_t ***g_3503;
    int32_t g_3513;
    int64_t g_3576;
    uint32_t g_3675;
    int64_t **g_3686;
    int64_t g_3716;
    int32_t g_3774;
    int32_t g_3824;
    int8_t ***g_3859;
    uint16_t g_4066;
    int32_t g_4121;
    int64_t g_4190;
    uint32_t ****g_4193;
};
__device__ uint32_t  func_2(int32_t  , int32_t  , uint32_t  , S0 * );
__device__ uint64_t  func_1(S0 * p_4196)
{
    int8_t l_4195 = p_4196->g_4190 |= -9L ^ func_2(0, p_4196->g_11, 0, p_4196);
    return l_4195;
}
__device__ uint32_t  func_2(int32_t  , int32_t  , uint32_t  , S0 * p_4196)
{ 
    int32_t *l_4188 = &p_4196->g_2813;    **p_4196->g_105 = l_4188;
    return *l_4188;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_4197;
    S0* p_4196 = &c_4197;
    S0 c_4198 {
        5, 
        0, 
        {}, 
        &p_4196->g_11, 
        &p_4196->g_107, &p_4196->g_107, &p_4196->g_107, &p_4196->g_107, &p_4196->g_107, &p_4196->g_107, &p_4196->g_107, 
        &p_4196->g_106[5], 
        1, 
        5, 
        4, 
        5, 
        4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 4073709551615, 1, 
        {}, 
        0, 
        &p_4196->g_106[6], 
        &p_4196->g_255, 
        0, 
        0, 
        {}, 
        &p_4196->g_123, 
        {}, 
        {}, 
        &p_4196->g_403[2][2][2], 
        &p_4196->g_459, 
        4, 
        0, 
        6, 
        &p_4196->g_11, 
        1, 
        4073709551615, 
        1, 
        4, 
        &p_4196->g_458, 
        &p_4196->g_899, 
        {}, 
        {}, 
        &p_4196->g_1002[1][0][0], 
        &p_4196->g_1001, 
        0, 
        0, 
        &p_4196->g_221, 
        &p_4196->g_1113, 
        5, 
        6, 
        {}, 
        2, 
        0, 
        {}, 
        &p_4196->g_325, 
        &p_4196->g_1453, 
        &p_4196->g_1453, 
        0, 
        {}, 
        2, 
        1, 
        3, 
        {}, 
        &p_4196->g_885, 
        &p_4196->g_2301, 
        &p_4196->g_2300, 
        {}, 
        6, 
        &p_4196->g_1388, 
        &p_4196->g_2133, 
        &p_4196->g_2472, 
        &p_4196->g_2471, 
        &p_4196->g_2470, 
        4, 
        &p_4196->g_2208[7][5], 
        &p_4196->g_398[2][2][5], 
        &p_4196->g_2790, 
        0, 
        4073709551610, 
        {}, 
        &p_4196->g_2914[0], 
        7, 
        5, 
        0, 
        &p_4196->g_2472, 
        nullptr, 
        &p_4196->g_3504, 
        0, 
        {}, 
        {}, 
        &p_4196->g_2524, 
        {}, 
        5, 
        6, 
        &p_4196->g_1457, 
        5, 
        {}, 
        1, 
        &p_4196->g_2790};
    c_4197 = c_4198;
    func_1(p_4196);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_4196->g_4190, , );
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
