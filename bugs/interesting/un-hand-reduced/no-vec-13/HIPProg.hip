#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
    int8_t g_34[6][10];
    int32_t g_84;
    int32_t *g_83;
    int64_t g_129[4];
    uint64_t g_135;
    int64_t *g_167[2];
    int64_t **g_166;
    uint64_t g_175;
    uint16_t g_205;
    int32_t g_209;
    uint8_t g_210;
    uint8_t g_248;
    uint8_t *g_263;
    int16_t g_401;
    uint16_t g_402;
    uint32_t g_411;
    uint32_t g_459[10][8];
    int16_t *g_469[10][1];
    int16_t **g_468;
    uint8_t g_499;
    uint64_t ***g_512;
    int32_t g_516;
    uint64_t *g_561;
    uint64_t g_560;
    uint32_t g_602;
    int32_t g_630;
    int64_t g_632;
    uint16_t g_633;
    int16_t g_643;
    uint16_t g_644;
    int32_t **g_664;
    int32_t ***g_663;
    uint32_t g_724;
    uint32_t g_785;
    uint64_t **g_845;
    int32_t *g_998;
    uint16_t g_1033;
    int16_t ***g_1060;
    int16_t ****g_1059;
    uint32_t g_1100;
    uint16_t g_1149;
    uint64_t g_1178;
    int16_t g_1251;
    int32_t g_1254;
    int64_t g_1256;
    uint8_t g_1258;
    int64_t ***g_1273;
    int64_t *g_1274;
    int64_t g_1353;
    uint8_t g_1354;
    uint8_t **g_1441;
    uint8_t ***g_1440;
    uint8_t ****g_1439;
    uint8_t *g_1476;
    uint16_t g_1584;
    uint8_t g_1636;
    uint8_t g_1760;
    int8_t *g_1961;
    int8_t **g_1960;
    int32_t ****g_2021;
    int32_t *****g_2020;
    int8_t g_2051;
    int32_t g_2054;
    int16_t g_2055;
    int8_t g_2056;
    uint16_t g_2057;
    uint32_t g_2161;
    uint64_t ****g_2185;
    uint64_t g_2184;
    int16_t *****g_2208;
    int64_t g_2236;
    int16_t g_2289;
    uint32_t g_2290;
    uint16_t *g_2432;
    uint16_t g_2431;
    uint16_t g_2430;
    int64_t g_2555;
    int8_t **g_2558[4][9];
    uint16_t g_2794;
    int8_t ***g_2883;
    int8_t ****g_2882;
    uint16_t *g_2900;
    int8_t g_2946;
    int8_t g_2988;
    uint32_t g_2990;
    int64_t ****g_3106;
    int64_t *****g_3105;
    uint32_t *g_3161[9];
    uint32_t **g_3160;
    uint32_t g_3198;
    uint32_t g_3238;
    int8_t g_3291;
    int64_t g_3292;
    int16_t g_3293;
    uint64_t g_3296;
    int32_t g_3351;
    int8_t g_3479;
    uint8_t g_3533;
    uint32_t g_3537;
    int8_t *****g_3556;
};
__device__ int16_t  func_14(int8_t  , uint32_t  , int32_t  , int8_t  , uint8_t  , S0 * );
__device__ uint32_t  func_1(S0 * p_3557)
{ 
    uint16_t l_11 = 5;
    uint8_t l_2445 = 5;
    func_14(0, l_11, l_11, l_11, l_2445, p_3557)  ;
    return p_3557->g_516;
}
__device__ int16_t  func_14(int8_t  , uint32_t  , int32_t  p_17, int8_t  p_18, uint8_t  , S0 * p_3557)
{
    int i;
            uint64_t l_2523 = 10;
                int32_t l_2495[2];
                for (i = 0; i < 2; i++)
                    l_2495[i] = 8;
                        uint32_t l_2528 = 1;
                        p_3557->g_2555 |= safe_sub_func_int8_t_s_s(safe_sub_func_uint64_t_u_u(safe_div_func_int32_t_s_s(l_2495[0], 0) == p_18, l_2523), l_2528)  ;
    return p_17;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S0 c_3558;
    S0* p_3557 = &c_3558;
    S0 c_3559 {
        {}, 
        0, 
        &p_3557->g_84, 
        1, 0, 0, 
        5, 
        6, 
        &p_3557->g_129[3], &p_3557->g_129[3], 
        &p_3557->g_167[1], 
        1, 
        1, 
        8, 
        1, 
        3, 
        &p_3557->g_248, 
        5, 
        8, 
        6, 
        0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 0, 6, 4073709551615, 6, 
        &p_3557->g_401, &p_3557->g_401, &p_3557->g_401, &p_3557->g_401, &p_3557->g_401, &p_3557->g_401, &p_3557->g_401, &p_3557->g_401, &p_3557->g_401, {}, 
        &p_3557->g_469[8][0], 
        4, 
        nullptr, 
        2, 
        &p_3557->g_135, 
        {}, 
        1, 
        1, 
        6, 
        0, 
        0, 
        2, 
        &p_3557->g_83, 
        &p_3557->g_664, 
        {}, 
        5, 
        &p_3557->g_561, 
        &p_3557->g_516, 
        9, 
        &p_3557->g_468, 
        &p_3557->g_1060, 
        5, 
        0, 
        6, 
        4, 
        3, 
        1, 
        {}, 
        nullptr, 
        nullptr, 
        0, 
        1, 
        &p_3557->g_263, 
        &p_3557->g_1441, 
        &p_3557->g_1440, 
        nullptr, 
        5, 
        {}, 
        7, 
        &p_3557->g_34[3][9], 
        &p_3557->g_1961, 
        &p_3557->g_663, 
        &p_3557->g_2021, 
        5, 
        0, 
        0, 
        9, 
        4, 
        {}, 
        &p_3557->g_512, 
        {}, 
        &p_3557->g_1059, 
        {}, 
        0, 
        9, 
        &p_3557->g_644, 
        {}, 
        {}, 
        0, 
        {}, 
        {}, 
        &p_3557->g_2558[1][1], 
        &p_3557->g_2883, 
        &p_3557->g_633, 
        {}, 
        0, 
        5, 
        &p_3557->g_1273, 
        &p_3557->g_3106, 
        {}, 
        &p_3557->g_3161[0], 
        1, 
        7, 
        5, 
        3, 
        3, 
        8, 
        {}, 
        3, 
        2, 
        {}, 
        &p_3557->g_2882};
    c_3558 = c_3559;
    func_1(p_3557);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_3557->g_2555, , );
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
