#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct U0 {};
struct U2 {};
struct S3 {
    int32_t g_5;
    int32_t *g_4[5];
    U0 g_13;
    int g_56;
    uint16_t g_74;
    uint8_t g_75;
    uint16_t *g_131;
    uint16_t **g_130;
    uint32_t *g_203[2][6];
    int8_t g_206;
    int32_t g_207;
    int64_t g_242[1][6][4];
    int64_t g_244;
    int64_t g_335;
    uint16_t g_356;
    int16_t g_383;
    uint8_t g_468;
    uint64_t g_533;
    int64_t *g_545;
    int8_t g_589;
    int64_t g_590[10];
    U2 g_591[4][1][1];
    uint64_t **g_635;
    uint8_t *g_684;
    uint8_t **g_683;
    uint32_t g_720;
    uint16_t ***g_747;
    uint16_t ****g_746;
    int16_t g_771;
    uint64_t ***g_818;
    uint64_t ****g_817;
    int64_t *g_959;
    uint32_t g_1015;
    uint64_t *g_1157;
    int *g_1216;
    int g_1215;
    U0 *g_1223;
    U0 **g_1222;
    uint16_t *****g_1246;
    int64_t g_1295;
    uint64_t g_1319;
    int8_t g_1478;
    uint8_t g_1579;
    uint32_t **g_1585;
    uint32_t ***g_1584;
    uint32_t *g_1627;
    int64_t *g_1631;
    int64_t g_1660;
    int32_t g_1738;
    int32_t *g_1737;
    uint64_t g_1739;
    U0 g_1741;
    int32_t **g_1756;
    int32_t ***g_1755;
    int32_t ****g_1754;
    int32_t *****g_1753;
    int64_t **g_1792;
    int64_t ***g_1791;
    int32_t g_2085;
    int32_t g_2086;
    int32_t **g_2095;
    int32_t **g_2097;
    int64_t g_2111;
    U2 *g_2124;
    U2 **g_2123;
    uint64_t g_2169;
    int8_t g_2249;
    int8_t g_2248;
    int8_t g_2342;
    
    U2 ****g_2773;
    uint64_t g_2842;
    uint32_t g_2871;
    int16_t g_2899;
    int64_t g_2900;
};
__device__ U2  func_8(int32_t ** , int32_t  , U0  , S3 * );
__device__ int32_t  func_1(S3 * p_2957)
{ 
    int32_t **l_12 = &p_2957->g_4[4];
    func_8(l_12, **l_12, p_2957->g_13, p_2957) ;
    return p_2957->g_383;
}
__device__ U2  func_8(int32_t ** , int32_t  , U0  , S3 * p_2957)
{
    int64_t *l_1732 = &p_2957->g_1295;
    int64_t *l_1733 = &p_2957->g_590[1];
    *l_1733 |= *l_1732 |= -10 ;
    return **p_2957->g_2123;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S3 c_2958;
    S3* p_2957 = &c_2958;
    int p_2957_3;
    U2 ***p_2957_77_1;
    U2 *p_2957_67;
    U0 *p_2957_40;
    S3 c_2959 {
        2, 
        &p_2957->g_5, &p_2957->g_5, &p_2957->g_5, &p_2957->g_5, &p_2957->g_5, 
        {}, 
        3, 
        3, 
        1, 
        nullptr, 
        &p_2957->g_131, 
        {}, 
        1, 
        {}, 
        {}, 
        0, 
        0, 
        2, 
        5, 
        0, 
        4, 
        &p_2957->g_242[0][2][1], 
        5, 
        {}, 
        {}, 
        nullptr, 
        &p_2957->g_468, 
        &p_2957->g_684, 
        7, 
        &p_2957->g_130, 
        &p_2957->g_747, 
        {}, 
        &p_2957->g_635, 
        &p_2957->g_818, 
        nullptr, 
        4073709551611, 
        &p_2957->g_533, 
        &p_2957_3, 
        {}, 
        &p_2957->g_13, 
        &p_2957_40, 
        &p_2957->g_746, 
        2, 
        0, 
        0, 
        {}, 
        &p_2957->g_203[1][1], 
        &p_2957->g_1585, 
        nullptr, 
        nullptr, 
        0, 
        3, 
        &p_2957->g_1738, 
        4073709551615, 
        {}, 
        &p_2957->g_4[4], 
        &p_2957->g_1756, 
        &p_2957->g_1755, 
        &p_2957->g_1754, 
        &p_2957->g_1631, 
        &p_2957->g_1792, 
        0, 
        5, 
        &p_2957->g_4[1], 
        &p_2957->g_4[1], 
        8, 
        &p_2957->g_591[1][0][0], 
        &p_2957_67, 
        5, 
        5, 
        {}, 
        {}, 
        &p_2957_77_1, 
        9, 
        5, 
        1, 
        5};
    c_2958 = c_2959;
    func_1(p_2957);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    for (int i = 0; i < 10; i++)
        transparent_crc(p_2957->g_590[i], , );
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
