#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   int32_t  f0;
};
struct S1 {
   int8_t  f1;
};
struct S2 {
   uint16_t  f1;
};
struct U5 {
   int32_t  f1;
};
struct S6 {
    int32_t g_2;
    int32_t g_5;
    uint64_t g_11;
    uint64_t g_20[3][10][5];
    uint64_t *g_19;
    S2 g_74;
    S2 g_80;
    uint8_t g_88;
    uint8_t g_93;
    U5 g_99;
    int g_106;
    S1 g_117;
    int32_t **g_118;
    uint64_t g_141;
    int16_t g_146;
    uint16_t *g_220;
    uint16_t **g_219;
    uint16_t ***g_218;
    uint32_t g_271;
    int32_t *g_288;
    S0 g_294;
    int g_322[3][2][7];
    int *g_321;
    int32_t g_334;
    uint32_t g_336;
    S2 *g_346;
    int *g_376;
    int **g_375;
    int64_t *g_462;
    int8_t *g_515;
    uint8_t *g_554[9];
    uint8_t **g_553;
    uint64_t g_568;
    int64_t g_589;
    int8_t g_592;
    int32_t g_595;
    uint32_t g_597[2][10];
    int **g_621;
    int8_t g_640;
    uint32_t g_642;
    uint64_t g_685;
    uint32_t g_729;
    uint32_t g_754[3][4];
    int32_t g_807;
    int32_t g_808;
    int8_t g_809;
    uint16_t g_810;
    uint32_t g_841;
    int32_t g_873;
    int16_t g_874;
    int32_t g_875;
    int32_t g_880;
    int32_t g_881;
    uint16_t ****g_926;
    uint16_t *****g_925;
    int32_t g_954;
    uint64_t **g_1069;
    uint64_t ***g_1068;
    int32_t g_1154;
    uint32_t g_1155;
    uint32_t *g_1171;
    U5 *g_1195;
    U5 **g_1194;
    int32_t ***g_1276;
    uint8_t g_1412;
    S1 *g_1445;
    S1 **g_1444;
    uint64_t ****g_1560;
    uint8_t g_1617;
    int16_t g_1625;
    uint32_t g_1626;
};
__device__ uint64_t  func_15(uint64_t * , uint64_t * , uint16_t  , S6 * );
__device__ S2  func_1(S6 * p_1645)
{ 
    int64_t l_22 = 5;
    S2 l_1639[8] ;
        uint64_t *l_21 = &p_1645->g_20[2][2][0];
            func_15(p_1645->g_19, l_21, l_22, p_1645) ;
            return l_1639[2];
}
__device__ uint64_t  func_15(uint64_t * , uint64_t * p_17, uint16_t  , S6 * p_1645)
{
            S0 l_1511 {7};
                uint8_t l_1549 = 251;
                for (; ; )
                { 
                    *p_17 |= safe_lshift_func_int16_t_s_s(safe_add_func_int8_t_s_s(l_1511.f0 && p_1645 , l_1549), 0) ;
                        break;
                }
                return **p_1645->g_1069;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S6 c_1646;
    S6* p_1645 = &c_1646;
    S6 c_1647 {
        0, 
        3, 
        {}, 
        {}, 
        &p_1645->g_20[2][3][2], 
        {}, 
        {}, 
        3, 
        5, 
        {}, 
        {}, 
        {}, 
        nullptr, 
        8, 
        9, 
        &p_1645->g_74.f1, 
        &p_1645->g_220, 
        &p_1645->g_219, 
        {}, 
        &p_1645->g_99.f1, 
        {}, 
        {}, 
        &p_1645->g_322[1][1][4], 
        {}, 
        0, 
        &p_1645->g_74, 
        &p_1645->g_106, 
        &p_1645->g_376, 
        nullptr, 
        &p_1645->g_117.f1, 
        &p_1645->g_93, &p_1645->g_88, &p_1645->g_93, &p_1645->g_88, &p_1645->g_93, &p_1645->g_88, &p_1645->g_93, &p_1645->g_88, &p_1645->g_93, 
        &p_1645->g_554[7], 
        6, 
        4, 
        7, 
        1, 
        1, 9, 7, 2, 2, 7, 9, 1, 7, 1, 1, 9, 7, 2, 2, 7, 9, 1, 7, 1, 
        &p_1645->g_321, 
        7, 
        0, 
        4073709551610, 
        9, 
        5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
        3, 
        5, 
        0, 
        0, 
        0, 
        6, 
        7, 
        0, 
        0, 
        0, 
        &p_1645->g_218, 
        &p_1645->g_926, 
        0, 
        &p_1645->g_19, 
        &p_1645->g_1069, 
        0, 
        4073709551607, 
        nullptr, 
        nullptr, 
        &p_1645->g_1195, 
        &p_1645->g_118, 
        6, 
        &p_1645->g_117, 
        &p_1645->g_1445, 
        &p_1645->g_1068, 
        1, 
        0, 
        4073709551615};
    c_1646 = c_1647;
    func_1(p_1645);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 3; i++)
        for (int j = 0; j < 10; j++)
            for (int k = 0; k < 5; k++)
                transparent_crc(p_1645->g_20[i][j][k], , );
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
