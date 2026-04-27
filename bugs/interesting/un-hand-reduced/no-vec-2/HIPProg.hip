#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S0 {
   uint16_t  f0;
   int32_t  f1;
   int8_t  f4;
};
union U1 {
   int32_t  f0;
   S0  f3;
};
struct U2 {
   int64_t  f0;
};
struct S3 {
    U2 g_39[3][8];
    S0 g_71;
    int32_t g_73[6][6][5];
    U1 g_95;
    uint8_t g_391;
    uint8_t *g_390[7];
    int32_t ***g_475;
    uint64_t g_515;
    S0 g_556;
    int32_t g_574;
    uint64_t *g_594;
    uint32_t g_633;
    uint16_t g_637;
    uint8_t g_653;
    int64_t g_654;
    int8_t g_655;
    U1 *g_700;
    uint64_t **g_852;
    int8_t g_1140;
    uint32_t g_1145[10][5];
    S0 *g_1150[5];
    S0 **g_1149;
    int64_t g_1220;
    uint32_t g_1246;
    uint32_t g_1291;
    uint32_t *g_1325;
    uint32_t **g_1324;
    uint32_t ***g_1323;
    uint32_t ****g_1322[8][6];
    int32_t g_1342;
    S0 *g_1358;
    int32_t ****g_1478;
    int32_t *****g_1477;
    uint8_t *g_1600;
    int8_t *g_1624;
    int8_t *g_1698;
    uint32_t g_1755;
    int16_t *g_1865;
    int16_t g_1864;
    uint8_t g_2025;
    uint8_t g_2035;
    uint16_t g_2069[2];
    uint32_t *****g_2083;
    U2 ***g_2104;
    uint16_t ****g_2113;
    int8_t g_2136;
    int8_t *g_2173;
    uint64_t g_2178;
    int32_t *g_2314;
    uint8_t **g_2345;
    uint8_t ***g_2344[9][1][5];
    uint8_t ****g_2343;
    int32_t g_2346;
    uint16_t *****g_2446;
    uint32_t g_2583;
    int16_t g_2663;
    uint64_t ***g_2734;
    uint64_t ****g_2733;
    U2 ****g_2765;
    U2 g_2764;
    uint32_t g_2843;
    U2 g_3039;
    uint64_t **g_3068;
    int32_t g_3156;
    uint16_t g_3169;
    int32_t g_3188;
    uint32_t *g_3253;
    int8_t g_3256;
    int16_t g_3350;
    int32_t g_3392;
};
__device__ U1  func_33(int32_t  , S3 * );
__device__ int32_t  func_35(U2  , int16_t  , int32_t  , S3 * );
__device__ uint8_t  func_1(S3 * p_3401)
{ 
    int32_t l_16 = 6;
    int32_t l_2624[4];
    uint16_t l_3400 = 1;
    if (p_3401->g_95 = func_33(func_35(p_3401->g_39[2][6], l_16, p_3401->g_39[2][6].f0, p_3401), p_3401) , l_2624)
    return l_3400;
}
__device__ U1  func_33(int32_t  , S3 * )
{
    U1 l_1758 {};
    return l_1758;
}
__device__ int32_t  func_35(U2  , int16_t  , int32_t  p_38, S3 * )
{ 
    return p_38;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S3 c_3402;
    S3* p_3401 = &c_3402;
    S0 *p_3401_35_3;
    U2 ***p_3401_58;
    U2 **p_3401_17_1_4;
    S3 c_3403 {
        {}, 
        {}, 
        {}, 
        85194, 
        5, 
        &p_3401->g_391, &p_3401->g_391, &p_3401->g_391, &p_3401->g_391, &p_3401->g_391, &p_3401->g_391, 
        nullptr, 
        nullptr, 
        3, 
        {}, 
        {}, 
        nullptr, 
        2, 
        5, 
        4, 
        0, 
        0, 
        nullptr, 
        &p_3401->g_594, 
        {}, 
        {}, 
        &p_3401->g_71, &p_3401->g_71, &p_3401->g_71, &p_3401->g_71, &p_3401->g_71, 
        &p_3401_35_3, 
        0, 
        1, 
        0, 
        nullptr, 
        &p_3401->g_1325, 
        &p_3401->g_1324, 
        {}, 
        {}, 
        &p_3401->g_556, 
        &p_3401->g_475, 
        &p_3401->g_1478, 
        nullptr, 
        nullptr, 
        nullptr, 
        1, 
        nullptr, 
        {}, 
        4, 
        5, 
        0, 0, 
        &p_3401->g_1322[7][0], 
        &p_3401_17_1_4, 
        nullptr, 
        0, 
        nullptr, 
        2, 
        &p_3401->g_73[5][2][4], 
        &p_3401->g_390[6], 
        {}, 
        &p_3401->g_2344[7][0][2], 
        {}, 
        &p_3401->g_2113, 
        8, 
        {}, 
        &p_3401->g_852, 
        &p_3401->g_2734, 
        &p_3401_58, 
        {}, 
        1, 
        {}, 
        &p_3401->g_594, 
        3, 
        {}, 
        4, 
        &p_3401->g_1145[7][2], 
        1, 
        0, 
        0};
    c_3402 = c_3403;
    func_1(p_3401);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_3401->g_95.f0, , );
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
