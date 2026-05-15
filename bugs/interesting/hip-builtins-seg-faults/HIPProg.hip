#include "safe_math_macros.h"
#include <hip/hip_runtime.h>
struct S1
{
};
struct S3
{
    int *g_62;
    int32_t g_67;
    int32_t g_73;
    int64_t g_109;
    int32_t *g_128;
    int32_t ****g_436;
    int g_521;
};
__device__ int32_t func_35(uint32_t, S1, S3 *);
__device__ int16_t func_1(S3 *p_1507)
{
    uint8_t l_17 = 5;
    S1 l_51;
    int32_t *l_1506 = &p_1507->g_67;
    safe_sub_func_uint32_t_u_u(l_17, blockDim.y) || func_35(0, l_51, p_1507),
        ***p_1507->g_436 = l_1506;
    return *l_1506;
}
__device__ int32_t func_35(uint32_t p_36, S1, S3 *p_1507)
{
    int32_t *l_70 = &p_1507->g_67;
    int32_t *l_133 = &p_1507->g_73;
    *l_133 |= (p_1507->g_128 = l_70, *l_70);
    return p_36;
}
__global__ void hipsmith_kernel()
{
    S3 c_1508, c_1509{.g_67 = 3, .g_109 = -2};
    S3 *p_1507 = &c_1508;
    c_1508 = c_1509;
    func_1(p_1507);
}
