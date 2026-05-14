struct S2
{
};
struct S4
{
};
struct U6
{
};
__device__ S2 hip_device_10;
__device__ int32_t hip_device_11;
__device__ U6 hip_device_13;
struct S8
{
    S4 g_11;
    int32_t g_128[3];
    int32_t g_461[10][9][1];
    U6 g_930;
};
__device__ int32_t *func_2(int32_t *, S2, int32_t *, S4, S8 *);
__device__ int32_t *func_7(int32_t *, S4, S8 *);
__device__ uint8_t func_1(S8 *p_2584)
{
    int32_t *l_10[][1][6]{&hip_device_11, &hip_device_11, &hip_device_11,
                          &hip_device_11, &hip_device_11};
    int32_t *l_2055[10][8];
    S4 l_2056;
    func_2(func_7(l_10[0][0][4], p_2584->g_11, p_2584), hip_device_10,
           l_2055[7][7], l_2056, p_2584);
    return 0;
}
__device__ int32_t *func_2(int32_t *p_3, S2, int32_t *, S4, S8 *p_2584)
{
    *p_3 = 0;
    return &p_2584->g_128[2];
}
__device__ int32_t *func_7(int32_t *p_8, S4, S8 *p_2584)
{
lbl_2048:
{
    U6 *l_2008 = &p_2584->g_930;
    int32_t *l_2010 = &p_2584->g_461[0][0][0];
    U6 *l_2006;
    U6 **l_2009 = &l_2008;
    l_2006 = &hip_device_13;
    if (l_2006 == *l_2009)
        return l_2010;
    if (p_2584)
        goto lbl_2048;
}
    return p_8;
}
__global__ void hipsmith_kernel()
{
    S8 p_2584;
    func_1(&p_2584);
}
