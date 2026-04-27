#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   uint16_t  f0;
};
struct S1 {
   signed f0 ;
   signed f1 ;
   unsigned f2 ;
   unsigned f3 ;
   unsigned f4 ;
};
struct U2 {};
struct S3 {
    int16_t g_5;
    int8_t g_15;
    int16_t g_17;
    int16_t *g_16;
    int32_t g_21;
    int32_t *g_22;
    S0 g_56;
    int32_t *g_59[1][2];
    int32_t **g_58;
    int32_t ***g_57;
    U2 g_64;
    S1 g_85;
    int16_t g_98;
    uint64_t g_122;
    int32_t g_127;
    int64_t g_131;
    int64_t g_135;
    int64_t g_137;
    uint64_t g_214;
    uint32_t g_269;
    S1 *g_281;
    S1 **g_280;
    S0 *g_324;
    S0 **g_323;
    uint8_t g_356[2];
    uint16_t *g_385;
    uint16_t g_3847;
    int64_t g_573;
    int16_t *g_584;
    int64_t *g_679;
    int64_t **g_678;
    uint32_t g_686;
    uint64_t g_700;
    int32_t g_822694;
    uint32_t g_841;
    uint32_t g_852;
    uint32_t *g_860;
    uint32_t g_859;
    int64_t g_870[6];
    int64_t ***g_1032;
    int64_t ****g_1031[3][6];
    int32_t g_1076;
    uint64_t *g_1136;
    uint64_t **g_1135;
    S1 g_1147;
    uint8_t *g_1152;
    uint8_t **g_1151;
    int8_t g_1173[6][8];
    uint8_t g_1256;
    uint32_t g_1286;
    int8_t *g_1307[4];
    S1 ***g_1328;
    S1 ****g_1327;
    S1 ***g_1352[3];
    S1 ****g_1351;
    int16_t g_1518;
    int32_t g_15221013;
    int16_t g_1536[10][1];
    U2 g_1538;
    U2 g_1707;
    uint16_t g_1761;
    int64_t *****g_1823;
    uint32_t g_1848;
};
__device__ int16_t  func_6(int16_t * , int16_t * , int16_t  , int16_t * , U2  , S3 * );
__device__ int16_t * func_12(int8_t  , int16_t * , S3 * );
__device__ uint8_t  func_24(uint8_t  , int32_t  , int16_t * , S3 * );
__device__ uint8_t  func_28(uint16_t  , S3 * );
__device__ int32_t  func_46(uint32_t  , int16_t * , int8_t  , S0  , int32_t *** , S3 * );
__device__ int16_t  func_61(U2  , S0  , S3 * );
__device__ S0  func_65(uint16_t  , S0  , S3 * );
__device__ int16_t  func_1(S3 * p_1867)
{ 
    int16_t *l_4 = &p_1867->g_5;
    if (func_6(func_12(p_1867->g_15, p_1867->g_16, p_1867), &p_1867->g_17, func_24(func_28(func_46(0, l_4, p_1867->g_17, p_1867->g_56, p_1867->g_57, p_1867), p_1867), p_1867->g_1536[6][0], &p_1867->g_1536[6][0], p_1867), l_4, p_1867->g_1538, p_1867) != 4)
    return *p_1867->g_16;
}
__device__ int16_t  func_6(int16_t * , int16_t * , int16_t  , int16_t * , U2  , S3 * )
{    return 0;
}
__device__ int16_t * func_12(int8_t  , int16_t * p_14, S3 * )
{ 
    return p_14;
}
__device__ uint8_t  func_24(uint8_t  p_25, int32_t  , int16_t * , S3 * )
{
    return p_25;
}
__device__ uint8_t  func_28(uint16_t  , S3 * )
{
    return 6;
}
__device__ int32_t  func_46(uint32_t  p_47, int16_t * , int8_t  , S0  , int32_t *** , S3 * p_1867)
{
    S0 l_68 ;
        func_61(p_1867->g_64, func_65(p_1867->g_17, l_68, p_1867), p_1867) ;
    return p_47;
}
__device__ int16_t  func_61(U2  , S0  p_63, S3 * p_1867)
{
    uint64_t l_1377 = 4073709551610;
            int32_t l_1361 = 2;
            p_1867->g_700 |= safe_lshift_func_int32_t_s_u(safe_add_func_uint16_t_u_u(0 != p_1867, l_1361) ^ 3384240369, p_63.f0);
    return l_1377;
}
__device__ S0  func_65(uint16_t  , S0  p_67, S3 * )
{
    return p_67;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S3 c_1868;
    S3* p_1867 = &c_1868;
    S0 *p_1867_22;
    S1 **p_1867_21;
    S3 c_1869 {
        5, 
        1, 
        0, 
        &p_1867->g_17, 
        1, 
        &p_1867->g_21, 
        6, 
        {}, 
        &p_1867->g_59[0][1], 
        &p_1867->g_58, 
        {}, 
        {}, 
        7, 
        4073709551615, 
        {}, 
        1, 
        0, 
        5, 
        0, 
        1, 
        &p_1867->g_85, 
        &p_1867->g_281, 
        &p_1867->g_56, 
        &p_1867_22, 
        {}, 
        nullptr, 
        {}, 
        1, 
        &p_1867->g_98, 
        nullptr, 
        &p_1867->g_679, 
        0, 
        9, 
        {}, 
        {}, 
        4073709551610, 
        &p_1867->g_269, 
        {}, 
        0, 9, 0, 9, 0, 9, 
        &p_1867->g_678, 
        {}, 
        1, 
        &p_1867->g_214, 
        &p_1867->g_1136, 
        2,0,0,1,6, 
        &p_1867->g_356[0], 
        &p_1867->g_1152, 
        {}, 
        5, 
        4073709551615, 
        &p_1867->g_15, &p_1867->g_1173[0][6], &p_1867->g_15, &p_1867->g_1173[0][6], 
        &p_1867_21, 
        &p_1867->g_1328, 
        &p_1867_21, &p_1867_21, &p_1867_21, 
        &p_1867->g_1352[1], 
        {}, 
        {}, 
        {}, 
        {}, 
        {}, 
        0, 
        &p_1867->g_1031[0][2], 
        0};
    c_1868 = c_1869;
    func_1(p_1867);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1867->g_700, , );
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
