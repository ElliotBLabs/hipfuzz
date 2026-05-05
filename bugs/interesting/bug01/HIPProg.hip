#include <hip/hip_runtime.h>

#define HIP_CHECK(expression)                                                \
    {                                                                        \
        const hipError_t err = expression;                                   \
        if (err != hipSuccess)                                               \
        {                                                                    \
            fprintf(stderr, "HIP error: %s at %d\n", hipGetErrorString(err), \
                    __LINE__);                                               \
            exit(EXIT_FAILURE);                                              \
        }                                                                    \
    }

struct S2
{
    uint16_t g_866;
    long4 g_963;
    ushort4 g_1535;
};
__device__ int8_t func_1(S2 *p_3308)
{
    (p_3308->g_866 = make_ushort1(p_3308->g_963.y).x) && (p_3308->g_866 = (make_ushort1(p_3308->g_1535.z) >> 16).x);
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *results)
{
    S2 c_3309, c_3310{
                   .g_963 = make_long4(0, 4, 0, 4)};
    S2 *p_3308 = &c_3309;
    c_3309 = c_3310;
    func_1(p_3308);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    crc64_context ^= p_3308->g_866;
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}
// ------------------------------------------------------------------
// Host Main
// ------------------------------------------------------------------
int main(int argc, const char *argv[])
{
    // Config
    const unsigned int num_threads = 4;
    const unsigned int block_size = 4;
    // Host Alloc
    std::vector<uint64_t> h_results(num_threads);
    const size_t results_bytes = sizeof(uint64_t) * h_results.size();
    // Device Alloc
    uint64_t *d_results;
    HIP_CHECK(hipMalloc((void **)&d_results, results_bytes));
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
    {
        printf("Thread %zu CRC: %lu\n", i, h_results[i]);
    }
    return 0;
}
