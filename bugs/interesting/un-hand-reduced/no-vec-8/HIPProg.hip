#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S1 {
    int64_t g_101;
    uint16_t g_103[4][3];
    uint32_t g_159;
    int64_t g_221[2];
    int8_t g_223;
    int16_t g_224;
    int32_t g_227;
    int16_t g_228;
    int8_t g_231;
    uint32_t g_232;
    uint32_t g_240;
    uint8_t g_281;
    uint32_t g_316;
    uint8_t g_403;
    uint64_t g_425;
    uint64_t *g_424;
    uint32_t g_439;
    int32_t ***g_475[5];
    uint8_t g_493;
    int64_t *g_502;
    int64_t **g_501;
    uint16_t g_618;
    uint64_t g_636;
    int8_t g_668;
    int32_t ****g_770;
    int32_t g_769;
    int64_t g_795;
    uint32_t g_915;
    uint16_t *g_918;
    int64_t g_1065;
    int *g_1105;
    int **g_1104;
    int64_t g_1250;
    int32_t *g_1270[8][2];
    int32_t **g_1269;
    uint16_t *g_1336;
    uint32_t *g_1353;
    uint32_t **g_1352[5][2][4];
    uint32_t ***g_1351;
    int8_t g_1411;
    int8_t g_1594;
    int64_t g_1664;
    int32_t g_1667;
    int64_t g_1751;
    uint64_t g_1769;
    int8_t g_1815;
    uint8_t g_1865;
    uint32_t *g_1899;
};
__device__ uint64_t  func_9(uint32_t  , S1 * );
__device__ uint32_t  func_1(S1 * p_1919)
{ 
    uint16_t l_2[10][7][3] ;
    func_9(*p_1919->g_1336 , p_1919) ;
    return l_2[8][3][1];
}
__device__ uint64_t  func_9(uint32_t  p_10, S1 * p_1919)
{
        for (p_1919->g_281 = 0; p_1919->g_281 <= 1; p_1919->g_281 += 1)
        { 
            int64_t l_1688 = 9;
            p_1919->g_221[p_1919->g_281] |= safe_sub_func_int32_t_s_s(0 || p_10, l_1688) ;
        }
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S1 c_1920;
    S1* p_1919 = &c_1920;
    S1 c_1921 {
        6, 
        0, 
        0, 0, 0, 0, 0, 0, 0, 0, {}, 
        0, 
        {}, 
        9, 
        0, 
        1, 
        0, 
        {}, 
        4073709551610, 
        3, 
        8, 
        {}, 
        7, 
        4073709551612, 
        &p_1919->g_425, 
        0, 
        {}, 
        5, 
        &p_1919->g_221[1], 
        &p_1919->g_502, 
        {}, 
        {}, 
        0, 
        &p_1919->g_475[3], 
        {}, 
        2, 
        7, 
        nullptr, 
        {}, 
        nullptr, 
        &p_1919->g_1105, 
        {}, 
        {}, 
        &p_1919->g_1270[3][0], 
        &p_1919->g_103[1][2], 
        &p_1919->g_159, 
        {}, 
        &p_1919->g_1352[4][0][3], 
        1, 
        {}, 
        {}, 
        5, 
        {}, 
        {}, 
        6, 
        9, 
        nullptr};
    c_1920 = c_1921;
    func_1(p_1919);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 2; i++)
        transparent_crc(p_1919->g_221[i], , );
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
