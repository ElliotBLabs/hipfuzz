#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, , )
struct S1 {
    int32_t g_2[6][8][5];
    int32_t g_5[1][8];
    uint32_t g_154[2];
    int8_t g_245;
    int32_t *g_576[4];
    int32_t **g_575;
    int16_t g_592;
    int64_t *g_640;
    int64_t *g_639;
    uint32_t g_675;
    int32_t ****g_744[10];
    int32_t g_743;
    int16_t g_1270;
    int16_t g_1269;
    int8_t *g_1732;
    int32_t g_1762;
    uint32_t g_1778;
    int16_t g_1839;
    int8_t *g_2018;
    uint32_t *g_2036;
    uint16_t g_2120;
    int64_t g_2121;
    uint32_t *g_2208;
    int ****g_2227;
    int *****g_2226;
    uint8_t g_2333;
    uint32_t g_2419;
    int64_t g_2482;
    int32_t *g_2594;
};
__device__ int8_t  func_1(S1 * p_2693)
{
    int32_t *****l_2545[5];
    int i;
    for (i = 0; i < 5; i++)
        l_2545[i] = nullptr;
        for (i = 0; i < 2; i++)
            **p_2693->g_575 &= p_2693->g_2482 |= safe_add_func_int16_t_s_s(safe_add_func_uint64_t_u_u(&p_2693->g_744[1] == l_2545[4], 0), 65531);
    return *p_2693->g_1732;
}
__global__ void hipsmith_kernel(uint64_t *results) {
    S1 c_2694;
    S1* p_2693 = &c_2694;
    int ****p_2693_66;
    int ***p_2693_25;
    S1 c_2695 {
        {}, 
        {}, 
        {}, 
        0, 
        &p_2693->g_5[0][2], &p_2693->g_5[0][2], &p_2693->g_5[0][2], &p_2693->g_5[0][2], 
        &p_2693->g_576[2], 
        5, 
        nullptr, 
        nullptr, 
        {}, 
        {}, 
        0, 
        1, 
        4073709551608, 
        &p_2693->g_245, 
        5, 
        1, 
        4, 
        nullptr, 
        &p_2693->g_154[0], 
        6, 
        1, 
        nullptr, 
        &p_2693_25, 
        &p_2693_66, 
        8, 
        {}, 
        3, 
        &p_2693->g_2[5][7][4]};
    c_2694 = c_2695;
    func_1(p_2693);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    transparent_crc(p_2693->g_2482, , );
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
