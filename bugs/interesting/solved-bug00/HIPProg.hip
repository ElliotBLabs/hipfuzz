#include <hip/hip_runtime.h>
#include "HIPSmith.h"
#include "safe_math_macros.h"
#define a(b, c, d) transparent_crc_(&e, b, , )
struct f {
   uint8_t  g;
};
struct aa {
    int64_t ae;
    int8_t j;
    f k;
    uint32_t l;
    uint8_t *m;
    int32_t n[4];
    int32_t *o;
    uint32_t *p;
    int32_t q;
    int32_t ***r;
    int8_t *s;
    int32_t ****t;
    int64_t a;
    uint16_t ab;
    uint32_t **ac;
    uint64_t ad;
    uint32_t ***e;
    int32_t af;
    uint64_t ag;
    int64_t *ah;
    f ai;
    int8_t **aj;
    uint32_t ak;
    int16_t al[0];
    uint16_t *am;
    int64_t an;
    uint8_t ao;
    uint16_t ap;
    uint64_t *aq;
    uint32_t ar;
    int8_t as;
    uint8_t at;
    int32_t au;
    uint32_t *av;
    f *****aw;
    int64_t ax;
    uint64_t ay;
    int8_t az;
    uint64_t ba;
    int16_t *bb;
    int16_t **c;
};
__device__ int8_t  bc(int32_t  , int64_t  , f  , int16_t  , uint32_t  , aa * );
__device__ uint8_t  bd(int32_t  , uint32_t  , f  , aa * );
__device__ uint32_t  be(int8_t  , int8_t  , uint8_t  , int64_t  , aa * );
__device__ uint8_t  bf(aa * bg)
{ 
    int32_t bh = 0;
    f bi 
    ;
    // accesses al[4] but we define it is al[0]
    bc(bh, *bg->m =   bd(bg->ae, be(bg->ae, bh, bh, bg->ae, bg), bg->k, bg)     , bi, bg->ae, bg->al[4], bg) 
    ;
        *bg->p = *bg->m                ;
        return 0;
}
__device__ int8_t  bc(int32_t  , int64_t  , f  , int16_t  , uint32_t  , aa * bg)
{ 
    uint8_t bj[][2][7] {};
        int32_t bk = 0;
        uint64_t *bl = &bg->ad
        ;
        *bl |= safe_add_func_int64_t_s_s(*bg->am  < 3, -8L)  ;
                    return bj[bk][bk][bg->ao];
}
__device__ uint8_t  bd(int32_t  , uint32_t  , f  , aa * bg)
{ 
    if (*bg->o)
        for (; ; )
        ;
    return 0;
}
__device__ uint32_t  be(int8_t  , int8_t  , uint8_t  , int64_t  , aa * )
{ 
    return 0;
}
__global__ void hipsmith_kernel(uint64_t *bm) {
    aa bn;
    aa* bg = &bn;
    f ****bo;
    aa bp {
        2, 
        2, 
        {}, 
        5, 
        &bg->k.g, 
        {}, 
        &bg->n[2], 
        &bg->l, 
        1, 
        nullptr, 
        &bg->j, 
        &bg->r, 
        1, 
        5, 
        nullptr, 
        8, 
        &bg->ac, 
        0, 
        2, 
        nullptr, 
        {}, 
        &bg->s, 
        4073709551615, 
        {}, 
        &bg->ab, 
        {}, 
        2, 
        {}, 
        nullptr, 
        {}, 
        {}, 
        {}, 
        2, 
        &bg->ak, 
        &bo, 
        0, 
        1, 
        0, 
        2, 
        nullptr, 
        &bg->bb};
    bn = bp;
    bf(bg);
    uint64_t e = 8719476735,  bq =  blockIdx.x;
    a(bg->ad, , );
    bm[bq] = e ;
}
// ------------------------------------------------------------------
// Host Main
// ------------------------------------------------------------------
int main(int argc, const char* argv[]) {
    // Config
    const unsigned int num_threads = 1;
    const unsigned int block_size = 1;

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