#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct U1 {};
struct U2 {
   int16_t  f0;
};
struct S3 {
    int32_t g_13;
    uint8_t g_82[7][6][1];
    U1 g_104;
    uint8_t *g_116;
    int32_t *g_151;
    uint32_t g_167;
    int8_t *g_203;
    uint32_t *g_306[1][7];
    uint32_t **g_305;
    uint32_t g_318;
    int32_t **g_361;
    int32_t ***g_360;
    U2 *g_427;
    int *g_454;
    int g_453;
    int g_452;
    int32_t g_500;
    int16_t g_504;
    int16_t g_505;
    uint64_t g_506;
    int32_t g_591[6][7];
    uint16_t g_592;
    uint8_t g_657;
    int8_t g_667;
    uint16_t g_668;
    uint8_t g_749;
    int64_t g_758;
    int8_t **g_896;
    int8_t ***g_895;
    uint8_t **g_898;
    uint8_t ***g_897;
    int8_t g_931;
    int16_t g_934;
    uint32_t g_935;
    int8_t g_938;
    uint16_t g_939;
    U2 g_964;
    uint64_t *g_1018;
    uint64_t **g_1017;
    uint32_t g_1038;
    U2 g_1077;
    U2 g_1076;
    int16_t g_1164;
    U2 g_1210;
    int32_t g_1289;
    uint8_t ****g_1491[9][2];
    uint8_t *****g_1490;
    uint64_t g_1661;
    int32_t *g_1694;
    int32_t **g_1693;
    int32_t ***g_1692;
    uint32_t g_1796;
    int8_t g_1832;
    uint16_t g_1833;
    int32_t g_1948;
    int16_t *g_1998[10][10][2];
    int16_t **g_1997;
    uint16_t g_2058;
    int32_t g_2063;
    int32_t g_2067;
    uint32_t g_2068;
    uint32_t g_2083;
    uint32_t ***g_2167;
    uint32_t ****g_2166;
    int g_2351;
    int32_t g_2371;
    int32_t ***g_2401;
};
__device__ U1  func_1(S3 * p_2402)
{
    U2 l_2386 {45875};
    int32_t **l_2399 = nullptr;
    **p_2402->g_1017 |= safe_lshift_func_uint8_t_u_u(*p_2402->g_1692 != l_2399, 6) | l_2386.f0;
    return p_2402->g_104;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S3 c_2403;
    S3* p_2402 = &c_2403;
    int p_2402_6;
    S3 c_2404 {
        1, 
        {}, 
        {}, 
        &p_2402->g_82[0][1][0], 
        &p_2402->g_13, 
        2, 
        nullptr, 
        &p_2402->g_167, &p_2402->g_167, &p_2402->g_167, &p_2402->g_167, &p_2402->g_167, &p_2402->g_167, &p_2402->g_167, 
        &p_2402->g_306[0][4], 
        0, 
        &p_2402->g_151, 
        &p_2402->g_361, 
        nullptr, 
        &p_2402_6, 
        7, 
        {}, 
        3, 
        1, 
        2, 
        4, 
        {}, 
        5, 
        5, 
        1, 
        {}, 
        1, 
        0, 
        &p_2402->g_203, 
        &p_2402->g_896, 
        &p_2402->g_116, 
        &p_2402->g_898, 
        1, 
        2, 
        1, 
        0, 
        {}, 
        {}, 
        &p_2402->g_506, 
        &p_2402->g_1018, 
        {}, 
        {}, 
        {}, 
        4, 
        7, 
        1, 
        {}, 
        &p_2402->g_1491[8][1], 
        {}, 
        &p_2402->g_591[3][0], 
        &p_2402->g_1694, 
        &p_2402->g_1693, 
        1, 
        {}, 
        9, 
        0, 
        {}, 
        &p_2402->g_1998[6][3][0], 
        1, 
        0, 
        2, 
        8, 
        {}, 
        nullptr, 
        &p_2402->g_2167, 
        {}, 
        1, 
        &p_2402->g_1693};
    c_2403 = c_2404;
    func_1(p_2402);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2402->g_506, , );
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
