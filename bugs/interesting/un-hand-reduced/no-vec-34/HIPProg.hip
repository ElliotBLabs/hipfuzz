#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S1 {
   uint16_t  f1;
   int  f8;
   };
struct S2 {
   uint16_t  f2;
};
struct S3 {
    int32_t g_2;
    uint32_t g_34;
    uint32_t g_40;
    int32_t g_58;
    int32_t g_73;
    uint32_t g_79;
    uint32_t g_83;
    int32_t g_89;
    int32_t g_93;
    uint32_t g_123;
    int16_t g_126;
    int32_t g_129;
    int32_t *g_131;
    int8_t g_134;
    int16_t g_135;
    uint32_t g_142;
    int8_t g_160;
    int16_t g_162;
    uint32_t g_163;
    S2 g_187;
    S1 g_199;
    uint32_t g_203;
    int64_t g_217;
    int32_t **g_240;
    int32_t ***g_239;
    uint32_t **g_253[2];
    uint32_t ***g_252;
    uint8_t g_314;
    int16_t *g_325;
    int *g_332;
    uint16_t *g_364;
    uint16_t **g_363;
    uint16_t ***g_362;
    uint64_t g_411;
    uint32_t g_414;
    int32_t ****g_432;
    S2 *g_509;
    S2 **g_508;
    S2 ***g_507;
    int **g_544;
    int32_t g_577;
    uint16_t **g_585;
    int8_t g_656;
    uint32_t g_686;
    int32_t *g_693;
    S2 g_783;
    uint8_t g_798;
    int32_t g_911;
    uint64_t g_917;
    uint8_t g_927;
};
__device__ uint8_t  func_1(S3 * p_1042)
{
        int32_t l_971[][1][5] {{}, {}, 2791966429};
            p_1042->g_917 |= safe_lshift_func_uint16_t_u_u(**p_1042->g_363, 3) ^ l_971[2][0][0] ;
    return p_1042->g_783.f2;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S3 c_1043;
    S3* p_1042 = &c_1043;
    S3 c_1044 {
        3, 
        2, 
        1, 
        0, 
        {}, 
        4, 
        4073709551610, 
        1, 
        9, 
        0, 
        4, 
        2, 
        &p_1042->g_129, 
        5, 
        7, 
        1, 
        8, 
        0, 
        7, 
        {}, 
        {}, 
        4073709551615, 
        0, 
        &p_1042->g_131, 
        &p_1042->g_240, 
        {}, 
        &p_1042->g_253[0], 
        7, 
        nullptr, 
        &p_1042->g_199.f8, 
        &p_1042->g_199.f1, 
        &p_1042->g_364, 
        &p_1042->g_363, 
        4, 
        4073709551610, 
        &p_1042->g_239, 
        &p_1042->g_187, 
        &p_1042->g_509, 
        &p_1042->g_508, 
        &p_1042->g_332, 
        {}, 
        &p_1042->g_364, 
        7, 
        5, 
        nullptr, 
        {}, 
        9, 
        5, 
        8, 
        {}};
    c_1043 = c_1044;
    func_1(p_1042);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_1042->g_917, , );
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
