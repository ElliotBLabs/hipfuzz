// ------------------------------------------------------------------
// Standard Headers
// ------------------------------------------------------------------
#include <cstdint>
#include <cstddef>
#include <climits>
#include <cstring>
#include <iostream>

// ------------------------------------------------------------------
// HIP Runtime
// ------------------------------------------------------------------
#include <hip/hip_runtime.h>

// ------------------------------------------------------------------
// Project Headers
// ------------------------------------------------------------------
#include "HIPSmith.h"
#include "safe_math_macros.h"

#define uint8_t unsigned char
#define int8_t char
// ------------------------------------------------------------------
// Macros & Metadata
// ------------------------------------------------------------------
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, Y, Z)
// Seed: 666457904

/* --- Struct/Union Declarations --- */
// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint8_t hip_const_1;
__constant__ int64_t hip_const_2;
__constant__ int64_t hip_const_3;
__constant__ int32_t hip_const_4[8];
__constant__ int8_t hip_const_5[7];
__constant__ uint8_t hip_const_6;
__constant__ uint32_t hip_const_7[2];
__constant__ int32_t hip_const_8;
__constant__ uint32_t hip_const_9;
__constant__ int16_t hip_const_10[6];
__constant__ uint64_t hip_const_11;
__constant__ uint64_t hip_const_12;
__constant__ int16_t hip_const_13;
__constant__ int16_t hip_const_14;
__constant__ int16_t hip_const_15;
__constant__ int8_t hip_const_16;
__constant__ int8_t hip_const_17[1][7][4];
__constant__ uint32_t hip_const_18[8][3];

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint8_t host_hip_const_1 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        int64_t host_hip_const_2 = 1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        int64_t host_hip_const_3 = (-3L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int32_t host_hip_const_4[8] = {0xB13638ECL, 0xB13638ECL, (-1L), 0xB13638ECL, 0xB13638ECL, (-1L), 0xB13638ECL, 0xB13638ECL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        int8_t host_hip_const_5[7] = {0x3BL, 0x3BL, 0x3BL, 0x3BL, 0x3BL, 0x3BL, 0x3BL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint8_t host_hip_const_6 = 0x53L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        uint32_t host_hip_const_7[2] = {0x2263126FL, 0x2263126FL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        int32_t host_hip_const_8 = (-1L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        uint32_t host_hip_const_9 = 6UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        int16_t host_hip_const_10[6] = {0x5165L, 0x5165L, 0x1D8FL, 0x5165L, 0x5165L, 0x1D8FL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
        uint64_t host_hip_const_11 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_11, &host_hip_const_11, sizeof(host_hip_const_11)));
        uint64_t host_hip_const_12 = 0x05B2906C902DAFBBLL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_12, &host_hip_const_12, sizeof(host_hip_const_12)));
        int16_t host_hip_const_13 = 2L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_13, &host_hip_const_13, sizeof(host_hip_const_13)));
        int16_t host_hip_const_14 = 0xC9C3L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_14, &host_hip_const_14, sizeof(host_hip_const_14)));
        int16_t host_hip_const_15 = 0x9F49L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_15, &host_hip_const_15, sizeof(host_hip_const_15)));
        int8_t host_hip_const_16 = 0xF2L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_16, &host_hip_const_16, sizeof(host_hip_const_16)));
        int8_t host_hip_const_17[1][7][4] = {{{(-6L), 0x6CL, 0x99L, 0x99L}, {(-6L), 0x6CL, 0x99L, 0x99L}, {(-6L), 0x6CL, 0x99L, 0x99L}, {(-6L), 0x6CL, 0x99L, 0x99L}, {(-6L), 0x6CL, 0x99L, 0x99L}, {(-6L), 0x6CL, 0x99L, 0x99L}, {(-6L), 0x6CL, 0x99L, 0x99L}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_17, &host_hip_const_17, sizeof(host_hip_const_17)));
        uint32_t host_hip_const_18[8][3] = {{0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}, {0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}, {0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}, {0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}, {0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}, {0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}, {0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}, {0x7E80D68FL, 0x7E80D68FL, 18446744073709551609UL}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_18, &host_hip_const_18, sizeof(host_hip_const_18)));
}

struct S0 {
    uint1 g_35;
    int1 g_88;
    ushort3 g_93;
    uchar1 g_97;
    uint8_t g_148[2][2];
    int32_t *g_153;
    int4 g_163;
    ushort2 g_169;
    uint16_t g_172;
    uint64_t *g_208[5];
    uint64_t **g_207[7];
    int32_t **g_214;
    short3 g_223;
    long4 g_296;
    long3 g_316;
    int3 g_342;
    int8_t g_363;
    uint32_t g_373;
    uchar2 g_390;
    int32_t *g_438;
    uint64_t ***g_453;
    uint64_t ****g_452;
    int2 g_495;
    char1 g_503;
    int32_t ***g_523;
    int32_t ****g_522;
    uchar2 g_534;
    long3 g_557;
    long4 g_562;
    uint64_t g_580;
    ulong1 g_584;
    short2 g_613;
    ulong4 g_649;
    uint32_t **g_731;
    int32_t *****g_737;
    ushort3 g_784;
    short1 g_787;
    uint32_t ***g_818;
    char3 g_835;
    int8_t g_871[5][6][6];
    int16_t g_889;
    uint16_t g_890;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S0 * p_893);
__device__ uint32_t  func_8(int16_t  p_9, int16_t  p_10, uint16_t  p_11, struct S0 * p_893);
__device__ uint64_t  func_19(uint64_t * p_20, int32_t  p_21, int16_t  p_22, int32_t  p_23, struct S0 * p_893);
__device__ int32_t  func_24(uint32_t  p_25, uint64_t * p_26, uint64_t * p_27, int32_t  p_28, uint16_t  p_29, struct S0 * p_893);
__device__ uint64_t  func_31(uint32_t  p_32, struct S0 * p_893);
__device__ int32_t  func_37(int32_t  p_38, uint64_t  p_39, int16_t  p_40, uint16_t  p_41, struct S0 * p_893);
__device__ uint16_t  func_46(uint64_t * p_47, uint16_t  p_48, int16_t  p_49, int32_t  p_50, uint16_t  p_51, struct S0 * p_893);
__device__ uint64_t * func_119(int32_t ** p_120, struct S0 * p_893);
__device__ int32_t ** func_121(int32_t  p_122, int32_t * p_123, uint32_t  p_124, int32_t ** p_125, struct S0 * p_893);
__device__ int32_t * func_130(int16_t * p_131, struct S0 * p_893);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_16 hip_const_3 hip_const_7 p_893->g_35 hip_const_6 hip_const_13 hip_const_8 hip_const_11 hip_const_12 hip_const_4 hip_const_2 hip_const_14 p_893->g_88 p_893->g_93 p_893->g_97 p_893->g_148 hip_const_18 p_893->g_163 p_893->g_169 p_893->g_172 p_893->g_153 p_893->g_207 hip_const_5 p_893->g_214 p_893->g_223 hip_const_1 hip_const_10 hip_const_9 p_893->g_296 p_893->g_316 p_893->g_342 p_893->g_390 hip_const_17 p_893->g_438 p_893->g_363 p_893->g_453 p_893->g_452 p_893->g_495 p_893->g_503 p_893->g_373 p_893->g_522 p_893->g_208 p_893->g_580 p_893->g_584 p_893->g_523 p_893->g_613 p_893->g_562 p_893->g_649 p_893->g_534 p_893->g_737 p_893->g_784 p_893->g_787 p_893->g_818 p_893->g_835 p_893->g_890
 * writes: p_893->g_148 p_893->g_153 p_893->g_172 p_893->g_169 p_893->g_207 p_893->g_163 p_893->g_88 p_893->g_214 p_893->g_363 p_893->g_373 p_893->g_522 p_893->g_208 p_893->g_342 p_893->g_495 p_893->g_35 p_893->g_438 p_893->g_580 p_893->g_731 p_893->g_452 p_893->g_523 p_893->g_818 p_893->g_890
 */
__device__ uint32_t  func_1(struct S0 * p_893)
{ /* block id: 0 */
    uint64_t *l_16[9] = {&hip_const_12, &hip_const_12, &hip_const_12, &hip_const_12, &hip_const_12, &hip_const_12, &hip_const_12, &hip_const_12, &hip_const_12};
    __shared__ int32_t l_17;
    l_17 = 0xAB4D258DL;
    int32_t l_18 = 0x835A7AB5L;
    int3 l_30 = make_int3(0x8E01AFECL, 5L, 0x8E01AFECL);
    __shared__ int3 l_36;
    l_36 = make_int3(0x33AED5EBL, 0x88B1495DL, 0x33AED5EBL);
    int32_t l_56 = 0xDB06D673L;
    uint8_t l_57 = 0x49L;
    uint64_t l_87 = 0UL;
    uint32_t l_748 = 18446744073709551615UL;
    uint16_t l_886 = 1UL;
    int32_t *l_887 = &l_18;
    int32_t *l_888[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int i;
    l_30.y = ((make_uchar4(1UL, 0xF9L, 0xD9L, 0x5FL).z , ((safe_lshift_func_int32_t_s_u((make_short2((-3L), 0xCDA7L).x | ((safe_mod_func_uint32_t_u_u(func_8((safe_sub_func_uint32_t_u_u((safe_lshift_func_int64_t_s_u(1L, (l_18 = (l_17 = hip_const_16)))), (func_19(&hip_const_12, func_24(l_30.x, (make_uint4((func_31(hip_const_16, p_893) ^ ((safe_div_func_int16_t_s_s((hip_const_7[0] && (((+(make_ushort3(((make_uint1(make_uint1(p_893->g_35.x).x).x & make_int2(l_36.x, l_36.x).x) <= func_37(((safe_sub_func_int32_t_s_s(hip_const_6, ((((((make_uint2((safe_add_func_uint16_t_u_u(func_46(((safe_sub_func_uint8_t_u_u((((safe_sub_func_int16_t_s_s(l_56, l_36.y)) & hip_const_13) > l_57), (-10L))) , l_16[7]), l_56, hip_const_8, l_30.y, l_36.y, p_893), l_30.y)), 0UL) ^ make_uint2(0xC87538C7L, 0xC87538C7L))) & make_uint2(0xB559E040L, 0xB559E040L))) ^ make_uint2(0x3C6490BBL, 0x3C6490BBL))).y)) || hip_const_7[0]), hip_const_7[1], l_36.z, l_57, p_893)), 2UL, 65535UL).z != hip_const_2)) , l_30.z) , hip_const_16)), l_87)) , hip_const_11)), 0UL, 4294967295UL, 0xA7E5B635L).y , &hip_const_12), &hip_const_11, l_56, hip_const_14, p_893), hip_const_4[1], l_30.z, p_893) , l_57))), l_87, l_748, p_893), p_893->g_784.x)) == hip_const_11)), 24)) , 0x0D113A14L)) ^ l_886);
    --p_893->g_890;
    return p_893->g_835.y;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_4 p_893->g_438 hip_const_18 p_893->g_316 p_893->g_495 p_893->g_784 p_893->g_787 hip_const_13 p_893->g_363 p_893->g_522 p_893->g_523 p_893->g_737 p_893->g_373 p_893->g_818 p_893->g_835 hip_const_14 p_893->g_390 hip_const_6 p_893->g_649 p_893->g_153 p_893->g_207 p_893->g_97
 * writes: p_893->g_438 p_893->g_163 p_893->g_452 p_893->g_495 p_893->g_363 p_893->g_523 p_893->g_373 p_893->g_818 p_893->g_148 p_893->g_153 p_893->g_207
 */
__device__ uint32_t  func_8(int16_t  p_9, int16_t  p_10, uint16_t  p_11, struct S0 * p_893)
{ /* block id: 244 */
    int32_t *l_749 = &hip_const_4[6];
    int32_t **l_750 = &p_893->g_438;
    uint8_t l_775 = 0xB3L;
    int32_t l_783 = 0L;
    ulong1 l_786 = make_ulong1(18446744073709551611UL);
    int1 l_850 = make_int1(6L);
    int16_t *l_864 = nullptr;
    int i;
    (*l_750) = l_749;
    if (((p_893->g_163.z = (*l_749)) , ((safe_mul(make_int2((*l_749), (nullptr != &p_893->g_172)), ((make_int2(0xB6D5CF1BL, 0L) ^ make_int2(0x8BFE896DL, 0x901F8F76L)))))).y))
    { /* block id: 247 */
        uint64_t *****l_755 = &p_893->g_452;
        int32_t l_764 = (-6L);
        int32_t ***l_774 = &l_750;
        int32_t *l_776 = nullptr;
        int32_t *l_777 = nullptr;
        __shared__ int32_t *l_778;
        l_778 = nullptr;
        p_893->g_495.y ^= (((safe_div_func_uint16_t_u_u((p_10 > ((((&p_893->g_453 != ((*l_755) = nullptr)) , (safe_rshift_func_int32_t_s_u((~(safe_add_func_uint64_t_u_u((!make_ulong4((((((safe_sub(make_ushort3(6UL, p_9, 1UL), ((make_ushort3((safe_mul_func_int8_t_s_s((**l_750), l_764)), 1UL, (((safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s(3L, 0xB8DB5AE8L)), 3)), (safe_div_func_int32_t_s_s(make_int3(0xCB8163EEL, (safe_unary_minus_func_uint32_t_u(0x5D4791CCL)), 6L).z, p_9)))) , nullptr) != l_774)) & make_ushort3(0UL, 0UL, 0UL)))))).x <= 65530UL) > p_11) , 18446744073709551615UL), p_10, 18446744073709551615UL, 18446744073709551615UL).y), (*l_749)))), hip_const_18[1][2]))) & (***l_774)) >= (**l_750))), l_775)) | p_893->g_316.z) > (***l_774));
    }
    else
    { /* block id: 250 */
        int8_t l_785[7][7] = {{0xA4L, 9L, 0x0CL, (-1L), 0x0CL, 9L, 0xA4L}, {0xA4L, 9L, 0x0CL, (-1L), 0x0CL, 9L, 0xA4L}, {0xA4L, 9L, 0x0CL, (-1L), 0x0CL, 9L, 0xA4L}, {0xA4L, 9L, 0x0CL, (-1L), 0x0CL, 9L, 0xA4L}, {0xA4L, 9L, 0x0CL, (-1L), 0x0CL, 9L, 0xA4L}, {0xA4L, 9L, 0x0CL, (-1L), 0x0CL, 9L, 0xA4L}, {0xA4L, 9L, 0x0CL, (-1L), 0x0CL, 9L, 0xA4L}};
        short3 l_792 = make_short3(1L, 0xE13EL, 1L);
        __shared__ int8_t *l_793;
        l_793 = &hip_const_17[0][3][0];
        int8_t *l_794 = nullptr;
        int8_t *l_795 = &hip_const_5[2];
        int8_t *l_796 = &hip_const_5[0];
        int8_t *l_797 = &hip_const_17[0][3][0];
        int8_t *l_798 = &hip_const_17[0][3][0];
        int8_t *l_799 = nullptr;
        int8_t *l_800[10] = {&l_785[5][4], &p_893->g_363, &l_785[5][4], &p_893->g_363, &l_785[5][4], &p_893->g_363, &l_785[5][4], &p_893->g_363, &l_785[5][4], &p_893->g_363};
        int32_t l_851 = (-1L);
        int32_t l_854 = 0x18F7C115L;
        __shared__ uint16_t l_855;
        l_855 = 0xDCCCL;
        int i, j;
        if ((safe_div_func_int8_t_s_s((~(safe_sub_func_int16_t_s_s(l_783, make_ushort3(p_893->g_784.z, p_893->g_784.z, p_893->g_784.z).y))), (p_893->g_363 |= (((l_785[1][4] | (make_ulong4(l_786.x, l_786.x, l_786.x, l_786.x).y || (*l_749))) , p_10) || (((make_short4(p_893->g_787.x, p_893->g_787.x, p_893->g_787.x, p_893->g_787.x) ^ ((safe_mod(((safe_mul(make_short4((!hip_const_13), 1L, make_short2((-1L), p_9).x, (-9L)), make_short4(8L, 0x72F3L, 0x5106L, 9L)))), make_short4(l_792.y, l_792.y, l_792.y, l_792.y)))))).z > (+(make_uchar3(0x54L, ((+(**l_750)) < l_792.x), p_10).y & l_785[2][6]))))))))
        { /* block id: 252 */
            __shared__ int8_t l_838;
            l_838 = 0x4EL;
            int32_t l_840 = (-1L);
            __shared__ uint32_t ***l_841;
            l_841 = nullptr;
            int32_t l_843 = 0x776750EFL;
            int32_t l_852 = 0L;
            int32_t l_853 = 0x4B87B468L;
            short2 l_862 = make_short2(0xD4C3L, 1L);
            int i;
            for (p_10 = 0; (p_10 <= 29); p_10++)
            { /* block id: 255 */
                int32_t *l_807 = nullptr;
                int32_t l_847 = 1L;
                int32_t *l_848 = nullptr;
                int32_t *l_849[10] = {&l_843, &l_843, &l_843, &l_843, &l_843, &l_843, &l_843, &l_843, &l_843, &l_843};
                int i;
                for (p_11 = 0; (p_11 <= 27); p_11 = safe_add_func_int16_t_s_s(p_11, 8))
                { /* block id: 258 */
                    uint64_t l_822 = 0x552F8075E0507189LL;
                    __shared__ uint32_t l_846;
                    l_846 = 1UL;
                    for (p_9 = 0; (p_9 <= 26); p_9 = safe_add_func_uint32_t_u_u(p_9, 4))
                    { /* block id: 261 */
                        __shared__ uint32_t *l_810;
                        l_810 = &p_893->g_373;
                        char2 l_815 = make_char2(0xE7L, 0xF7L);
                        uint32_t ****l_819[5][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                        uint8_t *l_829 = &hip_const_6;
                        uint8_t *l_830 = &p_893->g_148[0][1];
                        __shared__ int16_t *l_839;
                        l_839 = &hip_const_10[4];
                        int16_t *l_842 = &hip_const_10[4];
                        int16_t **l_844 = &l_842;
                        int32_t *l_845 = &l_843;
                        int i, j;
                        (**p_893->g_737) = (*p_893->g_522);
                        (*l_750) = l_807;
                        l_845 = func_130(((*l_844) = (((safe_mul_func_uint32_t_u_u(p_11, ((++(*l_810)) , ((make_char1(l_815.y).x , (p_9 || (l_843 = ((p_893->g_818 = p_893->g_818) != ((safe_sub_func_uint64_t_u_u((((l_822++) , ((safe_sub_func_int32_t_s_s(((safe_add_func_int64_t_s_s(p_9, (((0L <= ((*l_830) = 1UL)) >= (safe_div_func_int16_t_s_s((((safe_mul(make_char2(p_893->g_835.z, p_893->g_835.z), make_char2(make_char1(8L).x, 0x84L)))).y ^ ((l_840 = (l_822 | (safe_add_func_int16_t_s_s(hip_const_14, (((((((p_893->g_390.x & 0x45BBFB95DE3D5A84LL) ^ hip_const_6) == 0L) <= 0x8D58179D24AA2698LL) & 0xA50F3896L) <= 1UL) <= l_838))))) < p_10)), (*l_749)))) > 0x2ABCL))) <= p_10), l_838)) | 0x6D779C694B254AE4LL)) , l_838), p_10)) , l_841))))) | 0L)))) && p_893->g_649.z) , nullptr)), p_893);
                        l_846 = 0x6C13B5D2L;
                    }
                }
                ++l_855;
                return p_893->g_363;
            }
            l_852 = (safe_lshift_func_int16_t_s_s(((safe_mod_func_int32_t_s_s(l_862.x, p_893->g_97.x)) >= 0xF362L), 0));
        }
        else
        { /* block id: 279 */
            int32_t *l_863 = &l_851;
            (*l_750) = l_863;
        }
    }
    for (p_11 = 0; (p_11 <= 4); p_11 += 1)
    { /* block id: 285 */
        int64_t l_870 = 0x42416CC876B49219LL;
        __shared__ int32_t l_872;
        l_872 = 0x8CF4C7F7L;
        int32_t l_873 = 0x875D58A5L;
        int32_t l_874 = 0x29F37D11L;
        int32_t l_875 = 0x3FB908E9L;
        // attempting a hip shared for loop
        __shared__ int32_t l_876[7][2][8];
        for (int i = 0; i < 7; i++)
        {
            for (int j = 0; j < 2; j++)
            {
                for (int k = 0; k < 8; k++)
                    l_876[i][j][k] = 1L;
            }
        }
        int i, j, k;
        (*l_750) = func_130(l_864, p_893);
        for (l_783 = 0; (l_783 <= 4); l_783 += 1)
        { /* block id: 289 */
            int8_t l_865[6][2][4] = {{{(-10L), (-10L), (-4L), 5L}, {(-10L), (-10L), (-4L), 5L}}, {{(-10L), (-10L), (-4L), 5L}, {(-10L), (-10L), (-4L), 5L}}, {{(-10L), (-10L), (-4L), 5L}, {(-10L), (-10L), (-4L), 5L}}, {{(-10L), (-10L), (-4L), 5L}, {(-10L), (-10L), (-4L), 5L}}, {{(-10L), (-10L), (-4L), 5L}, {(-10L), (-10L), (-4L), 5L}}, {{(-10L), (-10L), (-4L), 5L}, {(-10L), (-10L), (-4L), 5L}}};
            int32_t *l_866 = &hip_const_4[6];
            int32_t *l_867 = nullptr;
            int32_t *l_868 = nullptr;
            int32_t *l_869[10] = {&hip_const_4[2], nullptr, &hip_const_4[2], nullptr, &hip_const_4[2], nullptr, &hip_const_4[2], nullptr, &hip_const_4[2], nullptr};
            int16_t l_877 = 4L;
            uint32_t l_878[8][9] = {{0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}, {0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}, {0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}, {0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}, {0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}, {0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}, {0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}, {0x6DCDBAC0L, 0x6DCDBAC0L, 0x3F255FD8L, 4294967294UL, 0xF409F9A5L, 4294967294UL, 0x3F255FD8L, 0x6DCDBAC0L, 0x6DCDBAC0L}};
            int32_t *****l_885[3][6][3] = {{{&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}}, {{&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}}, {{&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}, {&p_893->g_522, &p_893->g_522, &p_893->g_522}}};
            int i, j, k;
            ++l_878[7][4];
            l_876[2][0][3] = (hip_const_18[1][2] | (safe_div_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(0x5726AE10C1616789LL, (p_10 > (l_885[1][4][2] == &p_893->g_522)))), (*l_749))));
        }
    }
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_153 hip_const_4 p_893->g_207 p_893->g_580 p_893->g_97 p_893->g_534 hip_const_12 p_893->g_438 p_893->g_737 hip_const_17 hip_const_2 p_893->g_613 p_893->g_363 p_893->g_390
 * writes: p_893->g_153 p_893->g_207 p_893->g_438 p_893->g_580 p_893->g_731 p_893->g_363
 */
__device__ uint64_t  func_19(uint64_t * p_20, int32_t  p_21, int16_t  p_22, int32_t  p_23, struct S0 * p_893)
{ /* block id: 221 */
    int16_t *l_660 = &hip_const_15;
    int32_t **l_661 = &p_893->g_438;
    int32_t l_669 = 0x61139F7CL;
    ulong1 l_670 = make_ulong1(18446744073709551615UL);
    __shared__ int32_t *l_673;
    l_673 = &hip_const_8;
    uint8_t l_722 = 1UL;
    uchar3 l_727 = make_uchar3(0UL, 0x33L, 0UL);
    uint32_t *l_729 = &hip_const_7[0];
    __shared__ uint32_t **l_728;
    l_728 = &l_729;
    uint32_t ***l_730 = nullptr;
    int32_t *****l_736 = &p_893->g_522;
    int8_t *l_740 = &hip_const_5[3];
    int8_t *l_741 = &hip_const_5[0];
    int8_t *l_742 = nullptr;
    int8_t *l_743 = &hip_const_5[5];
    int8_t *l_744 = &hip_const_5[0];
    int8_t *l_745 = &hip_const_5[0];
    int8_t *l_746 = &hip_const_5[1];
    __shared__ int8_t *l_747;
    l_747 = &p_893->g_363;
    int i;
    (*l_661) = func_130(l_660, p_893);
    for (p_893->g_580 = (-17); (p_893->g_580 >= 21); p_893->g_580 = safe_add_func_int16_t_s_s(p_893->g_580, 8))
    { /* block id: 225 */
        int32_t *l_664 = nullptr;
        int32_t *l_675 = &hip_const_8;
        __shared__ int32_t **l_674;
        l_674 = &l_675;
        int32_t l_678 = (-1L);
        int32_t *l_679 = nullptr;
        __shared__ int32_t *l_680;
        l_680 = nullptr;
        int32_t l_681 = 0x5BC4E2E0L;
        uint32_t l_682[3][5][8] = {{{0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}}, {{0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}}, {{0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}, {0UL, 0UL, 0UL, 8UL, 0x55FEA8DFL, 0x4A704455L, 0x55FEA8DFL, 8UL}}};
        int i, j, k;
        (*l_661) = l_664;
        l_681 ^= ((safe_mul_func_uint8_t_u_u((((p_893->g_97.x && (safe_lshift_func_uint64_t_u_s(l_669, 53))) , (p_23 , ((make_ulong2(l_670.x, l_670.x).y , p_893->g_534.y) , ((safe_mod_func_int64_t_s_s(((p_22 ^ (l_673 == ((*l_674) = &p_21))) , (safe_rshift_func_int8_t_s_u(make_char1(0xC0L).x, p_22))), (l_678 || 6UL))) >= p_22)))) , 0UL), p_893->g_580)) != p_21);
        l_682[2][0][4] ^= (-1L);
        return (*p_20);
    }
    for (p_21 = (-13); (p_21 != (-1)); p_21 = safe_add_func_uint16_t_u_u(p_21, 6))
    { /* block id: 234 */
        int64_t *l_691 = &hip_const_3;
        int64_t *l_692 = nullptr;
        int64_t *l_693 = nullptr;
        int64_t *l_694 = nullptr;
        int64_t *l_695 = nullptr;
        int64_t *l_696 = &hip_const_3;
        int64_t *l_697 = nullptr;
        int64_t *l_698 = &hip_const_3;
        int64_t *l_699 = &hip_const_2;
        int32_t l_700 = 0x8AF2646DL;
        __shared__ ushort2 l_703;
        l_703 = make_ushort2(65535UL, 0x1949L);
        uint4 l_706 = make_uint4(1UL, 0x27346146L, 1UL, 0x27346146L);
        int32_t *l_719 = nullptr;
        int32_t *l_720 = nullptr;
        int32_t *l_721[9] = {nullptr, &hip_const_4[2], nullptr, &hip_const_4[2], nullptr, &hip_const_4[2], nullptr, &hip_const_4[2], nullptr};
        int i;
    }
    (*l_661) = ((safe_lshift_func_uint8_t_u_u(((((safe_lshift_func_uint32_t_u_s(make_uint3((**l_661), 4294967295UL, 0xB23FFAA6L).z, 11)) , ((make_uchar2(l_727.z, l_727.z).y , l_728) == (p_893->g_731 = &l_729))) , make_uchar4((p_22 , 249UL), ((((safe_sub_func_int8_t_s_s((**l_661), ((*l_747) ^= (((((((safe_sub(make_int4(0xE7BE43A8L, ((l_736 != p_893->g_737) , (safe_add_func_uint32_t_u_u((hip_const_17[0][3][0] ^ 1UL), hip_const_4[4]))), 0xDC15EC8EL, (-1L)), make_int4(0x22C7E0B4L, 0x22C7E0B4L, 0x22C7E0B4L, 0x22C7E0B4L)))).w != 0x17094652L) , p_22) , hip_const_2) & p_893->g_613.y) , p_21)))) != (**l_661)) ^ p_23) , hip_const_4[5]), p_893->g_390.x, 0xA3L).x) >= p_23), 3)) , (*l_661));
    return (**l_661);
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_88 p_893->g_93 p_893->g_97 hip_const_2 p_893->g_148 hip_const_8 hip_const_6 hip_const_4 hip_const_12 hip_const_18 hip_const_7 p_893->g_163 p_893->g_169 p_893->g_172 p_893->g_35 p_893->g_153 p_893->g_207 hip_const_5 p_893->g_214 p_893->g_223 hip_const_1 hip_const_14 hip_const_10 hip_const_16 hip_const_9 p_893->g_316 hip_const_11 p_893->g_342 p_893->g_390 hip_const_3 hip_const_17 p_893->g_438 p_893->g_363 p_893->g_453 p_893->g_452 p_893->g_495 p_893->g_503 p_893->g_296 p_893->g_373 p_893->g_522 p_893->g_208 p_893->g_580 p_893->g_584 p_893->g_523 p_893->g_613 p_893->g_562 p_893->g_649
 * writes: p_893->g_148 p_893->g_153 p_893->g_172 p_893->g_169 p_893->g_207 p_893->g_163 p_893->g_88 p_893->g_214 p_893->g_363 p_893->g_373 p_893->g_522 p_893->g_208 p_893->g_342 p_893->g_495 p_893->g_35
 */
__device__ int32_t  func_24(uint32_t  p_25, uint64_t * p_26, uint64_t * p_27, int32_t  p_28, uint16_t  p_29, struct S0 * p_893)
{ /* block id: 20 */
    ushort3 l_94 = make_ushort3(0xC5D4L, 5UL, 0xC5D4L);
    __shared__ uchar2 l_99;
    l_99 = make_uchar2(9UL, 1UL);
    int32_t *l_114 = &hip_const_4[4];
    int32_t l_143 = 0xC76149A4L;
    int32_t l_146 = 0L;
    uint64_t ***l_276 = &p_893->g_207[2];
    uint64_t ***l_277[3];
    uint1 l_347 = make_uint1(4294967295UL);
    uint1 l_416 = make_uint1(0x3F954FDBL);
    ushort3 l_463 = make_ushort3(65535UL, 0x4D54L, 65535UL);
    __shared__ ushort2 l_468;
    l_468 = make_ushort2(1UL, 0x9CFDL);
    int32_t l_478 = 0xF414E0ADL;
    uchar4 l_485 = make_uchar4(1UL, 0x36L, 1UL, 0x36L);
    long1 l_529 = make_long1((-1L));
    long3 l_554 = make_long3(0xAEC8519B97B3AF6ELL, 4L, 0xAEC8519B97B3AF6ELL);
    __shared__ long2 l_561;
    l_561 = make_long2(0L, 0L);
    int32_t ***l_607[3];
    long3 l_612 = make_long3(0L, 0xF4D530418B9ABAAELL, 0L);
    uint16_t l_633 = 0UL;
    ulong3 l_643 = make_ulong3(0xB81921F77651120CLL, 0UL, 0xB81921F77651120CLL);
    __shared__ ulong3 l_648;
    l_648 = make_ulong3(18446744073709551615UL, 9UL, 18446744073709551615UL);
    ulong1 l_652 = make_ulong1(0xC039FDACCA4815CELL);
    int i;
    for (int i = 0; i < 3; i++)
        l_277[i] = &p_893->g_207[5];
    for (int i = 0; i < 3; i++)
        l_607[i] = &p_893->g_214;
    if (make_int3(p_893->g_88.x, p_893->g_88.x, p_893->g_88.x).x)
    { /* block id: 21 */
        uchar1 l_98 = make_uchar1(255UL);
        uchar3 l_102 = make_uchar3(0x78L, 255UL, 0x78L);
        uchar4 l_103 = make_uchar4(8UL, 249UL, 8UL, 249UL);
        uchar2 l_104 = make_uchar2(1UL, 6UL);
        uchar3 l_107 = make_uchar3(251UL, 0x05L, 251UL);
        int32_t *l_126 = &hip_const_8;
        __shared__ int32_t *l_127;
        l_127 = &hip_const_8;
        __shared__ int32_t *l_128;
        l_128 = &hip_const_8;
        int32_t *l_129 = &hip_const_8;
        uint64_t *l_138 = &hip_const_11;
        uint64_t *l_139 = &hip_const_11;
        __shared__ int32_t l_140;
        l_140 = 9L;
        __shared__ uint64_t *l_141;
        l_141 = &hip_const_11;
        uint64_t *l_142 = &hip_const_12;
        uint64_t *l_144 = &hip_const_11;
        // attempting a hip shared for loop
        __shared__ uint64_t *l_145[1][7];
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 7; j++)
                l_145[i][j] = &hip_const_12;
        }
        int32_t l_147 = (-4L);
        int8_t *l_269 = &hip_const_17[0][6][1];
        __shared__ int8_t *l_270;
        l_270 = &hip_const_17[0][6][3];
        int8_t *l_271[2];
        uint64_t ***l_274 = &p_893->g_207[3];
        __shared__ uint32_t l_292;
        l_292 = 18446744073709551610UL;
        int32_t l_309 = 0xAAA6224BL;
        __shared__ int64_t l_325;
        l_325 = 1L;
        int16_t l_352 = 0L;
        __shared__ uint8_t l_394;
        l_394 = 1UL;
        int1 l_444 = make_int1(0x544F0982L);
        int32_t *l_451 = nullptr;
        uint8_t l_477 = 0xB7L;
        __shared__ uchar2 l_490;
        l_490 = make_uchar2(255UL, 246UL);
        __shared__ int1 l_511;
        l_511 = make_int1(0x61C9425CL);
        int2 l_515 = make_int2(0xF7C87E3BL, (-9L));
        long4 l_556 = make_long4(0x5A922C990645D82ALL, 0x4E77618C1D69EB12LL, 0x5A922C990645D82ALL, 0x4E77618C1D69EB12LL);
        __shared__ long1 l_563;
        l_563 = make_long1(0L);
        ushort3 l_610 = make_ushort3(1UL, 0UL, 1UL);
        __shared__ int32_t ***l_611;
        l_611 = &p_893->g_214;
        int i, j;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 7; j++)
                l_145[i][j] = &hip_const_12;
        }
        for (int i = 0; i < 2; i++)
            l_271[i] = nullptr;
        if (((safe_div_func_uint64_t_u_u(((((make_ulong3((safe_lshift_func_int16_t_s_u((((make_ushort4(p_893->g_93.z, p_893->g_93.z, p_893->g_93.z, p_893->g_93.z) ^ make_ushort4(l_94.z, l_94.z, l_94.z, l_94.z))).w != (safe_mul_func_uint8_t_u_u(((~((((((((make_uchar3(p_893->g_97.x, p_893->g_97.x, p_893->g_97.x) & ((make_uchar3(l_98.x, l_98.x, l_98.x) | make_uchar3(l_99.y, l_99.y, l_99.y))))) ^ ((((safe_mul(make_uchar3(l_102.y, l_102.y, l_102.y), make_uchar3(0x1EL, 0x15L, (hip_const_2 >= (~0x94L)))))) & make_uchar3(l_103.x, l_103.x, l_103.x))))) & make_uchar3(l_104.x, l_104.x, l_104.x))) ^ ((~((safe_add(make_uchar3(l_107.z, l_107.z, l_107.z), make_uchar3(0x04L, 0x55L, (safe_add_func_uint32_t_u_u(((((safe_div(make_long3((safe_div_func_uint8_t_u_u((l_114 != nullptr), (l_146 |= ((l_147 = (make_ulong2(18446744073709551615UL, (((((safe_mul_func_uint64_t_u_u(func_46(&hip_const_11, ((safe_sub_func_int8_t_s_s(func_46(func_119(func_121((p_28 = (0L != 1L)), func_130(((((safe_mod_func_uint16_t_u_u(7UL, make_short2((safe_mod_func_int32_t_s_s((safe_add_func_int64_t_s_s(((p_893->g_148[1][0]--) == (safe_div_func_uint32_t_u_u((((hip_const_8 ^ hip_const_6) || (*l_114)) >= hip_const_12), 0xC1B7AFBAL))), (*l_114))), hip_const_18[1][2])), l_140).x)) >= l_104.x) <= (-1L)) , &hip_const_10[0]), p_893), hip_const_5[0], p_893->g_214, p_893), p_893), p_25, p_893->g_88.x, hip_const_10[0], p_893->g_35.x, p_893), 1L)) , p_893->g_163.w), p_25, p_29, l_104.y, p_893), p_25)) >= 9UL) , l_140) || (*l_114)) && 1L)).x && (*l_114))) >= (*p_26))))), hip_const_18[1][2], (-7L)), make_long3((-6L), (-6L), (-6L))))).x || 0x6953CCBC9E5EE9B9LL) , p_893->g_93.x), l_140)))))))))))).z, p_29))), 15)), (*l_114), 0x4CBC2A9CAC048399LL) ^ make_ulong3(0xEB9F4AA1E9C32DDDLL, 0xEB9F4AA1E9C32DDDLL, 0xEB9F4AA1E9C32DDDLL))) ^ make_ulong3(1UL, 1UL, 1UL))).z, 0xF96E11731A217AB7LL)) , p_29))
        { /* block id: 61 */
            uint64_t ****l_275[5] = {&l_274, &l_274, &l_274, &l_274, &l_274};
            uint16_t *l_289[4];
            __shared__ uint8_t *l_290;
            l_290 = &hip_const_1;
            uint8_t *l_291[8][1][6] = {{{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}, {{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}, {{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}, {{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}, {{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}, {{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}, {{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}, {{&hip_const_1, nullptr, &p_893->g_148[1][0], &p_893->g_148[1][0], nullptr, nullptr}}};
            int32_t *l_293 = &l_146;
            int32_t l_326 = 8L;
            int32_t l_369 = 0x26D7295AL;
            uint8_t l_405 = 0x6CL;
            ushort1 l_467 = make_ushort1(0x7C94L);
            uint1 l_470 = make_uint1(0x4B1FA80BL);
            long2 l_473 = make_long2(0x833D4720638FEC1CLL, (-8L));
            __shared__ char2 l_506;
            l_506 = make_char2((-1L), (-9L));
            int4 l_514 = make_int4(0L, 0x15935FFDL, 0L, 0x15935FFDL);
            uint32_t *l_516 = &hip_const_18[4][0];
            int32_t l_581[1];
            int i, j, k;
            for (int i = 0; i < 4; i++)
                l_289[i] = &p_893->g_172;
            for (int i = 0; i < 1; i++)
                l_581[i] = 0xFDC910C9L;
lbl_403:
            p_893->g_88.x |= ((((255UL || (l_146 ^= (safe_mod_func_uint8_t_u_u(((((l_276 = l_274) != l_277[2]) != (p_893->g_148[1][0] = ((safe_add_func_int8_t_s_s(p_28, ((safe_sub_func_int16_t_s_s(((((p_29 = ((~(safe_sub_func_int64_t_s_s((0x91L && p_29), (!0x3785568F75EC2EFDLL)))) , (safe_mul_func_uint8_t_u_u(((safe_unary_minus_func_int16_t_s((safe_div_func_uint32_t_u_u((hip_const_16 & 0x0A0DB183L), (*l_114))))) || (*l_114)), l_107.x)))) , p_26) != nullptr) <= p_25), 2L)) >= p_28))) , hip_const_9))) || p_893->g_93.x), 1UL)))) | p_893->g_223.x) < 0xE44C6F29L) ^ l_292);
            if (((*l_293) = 0L))
            { /* block id: 68 */
                ushort2 l_329 = make_ushort2(0x5772L, 6UL);
                int3 l_376 = make_int3(0x2FEEDA54L, 1L, 0x2FEEDA54L);
                __shared__ uint32_t *l_378;
                l_378 = &hip_const_7[1];
                int8_t *l_393 = &hip_const_5[0];
                uint2 l_419 = make_uint2(0xAB08D283L, 4UL);
                uint2 l_420 = make_uint2(5UL, 1UL);
                int16_t l_434 = 0xDEDDL;
                __shared__ short3 l_449;
                l_449 = make_short3(0x6332L, 0x8BA2L, 0x6332L);
                int64_t *l_498[4][6] = {{nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_3}, {nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_3}, {nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_3}, {nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_3}};
                uint32_t *l_517 = &hip_const_9;
                // attempting a hip shared for loop
                __shared__ int32_t l_518[4];
                for (int i = 0; i < 4; i++)
                    l_518[i] = 0x264F0687L;
                int32_t l_519 = 0x3F6AA859L;
                __shared__ int32_t *l_520;
                l_520 = nullptr;
                int32_t *l_521[2][5][4] = {{{&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}}, {{&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}, {&l_369, &hip_const_8, nullptr, nullptr}}};
                int i, j, k;
                for (int i = 0; i < 4; i++)
                    l_518[i] = 0x264F0687L;
lbl_377:
                if ((((*l_114) , &p_27) == &p_893->g_208[0]))
                { /* block id: 69 */
                    int8_t l_312 = 0x17L;
                    l_143 = (safe_mul_func_int64_t_s_s(make_long2(p_893->g_296.x, p_893->g_296.x).x, ((*l_293) = l_103.x)));
                    for (p_28 = 22; (p_28 != (-2)); --p_28)
                    { /* block id: 74 */
                        __shared__ ushort4 l_315;
                        l_315 = make_ushort4(0x0562L, 0x0104L, 0x0562L, 0x0104L);
                        __shared__ int64_t *l_317;
                        l_317 = &hip_const_2;
                        int64_t *l_318 = nullptr;
                        int64_t *l_319 = nullptr;
                        int64_t *l_320[5][1][8] = {{{&hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr}}, {{&hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr}}, {{&hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr}}, {{&hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr}}, {{&hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr}}};
                        int32_t l_321 = 0x65CD0574L;
                        int32_t l_324 = 0x1F02B386L;
                        uchar1 l_332 = make_uchar1(0x53L);
                        int i, j, k;
                        (*l_293) = (l_326 ^= (((safe_div_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((l_324 = (((safe_rshift_func_int32_t_s_s((p_25 , (safe_sub_func_uint8_t_u_u(l_309, (hip_const_4[6] != (9UL < (((safe_sub_func_uint64_t_u_u((l_321 |= ((l_312 >= (safe_add_func_uint64_t_u_u(((make_ushort4(l_315.w, l_315.w, l_315.w, l_315.w).w ^ p_29) , (*l_293)), l_315.z))) & (l_140 ^= make_long1(p_893->g_316.z).x))), (safe_rshift_func_int8_t_s_u(p_893->g_316.x, 5)))) , l_147) >= p_28)))))), p_29)) || (-4L)) == p_893->g_93.y)), l_325)), (*p_27))) , 0x46L) <= 0L));
                        (*l_293) = (safe_sub_func_int16_t_s_s((&l_274 != nullptr), ((make_ushort3(l_329.y, l_329.y, l_329.y).y == (p_893->g_223.y < (l_321 = ((safe_add(make_uchar1(l_332.x), ((safe_mul(make_uchar1(255UL), make_uchar1(0x69L))))))).x))) > (((l_140 = (safe_unary_minus_func_int16_t_s(((l_324 ^= (safe_lshift_func_int32_t_s_s((((*l_293) && 1L) , (((safe_div_func_uint16_t_u_u((((safe_lshift_func_int32_t_s_s(make_int2(p_893->g_342.x, p_893->g_342.x).x, (safe_rshift_func_int32_t_s_u(p_28, ((safe_mod(make_uint2(4294967295UL, 0xC8A47113L), make_uint2(l_347.x, l_347.x)))).y)))) , (safe_sub_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u((make_char4(0L, 0xD1L, 5L, 0xD9L).w < p_893->g_148[1][0]), 3)) > (&hip_const_2 == &hip_const_2)), 0xBD7EL))) , p_25), l_98.x)) > l_352) , 0x5A61A390L)), 3))) , hip_const_14)))) >= p_29) || 0L))));
                    }
                }
                else
                { /* block id: 85 */
                    uint32_t l_359 = 0xF93BFC38L;
                    __shared__ int32_t *l_360;
                    l_360 = &hip_const_8;
                    int32_t *l_361 = nullptr;
                    int32_t *l_362 = &hip_const_8;
                    int32_t *l_364 = &l_309;
                    uint64_t ***l_370 = &p_893->g_207[6];
                    uint32_t *l_371 = nullptr;
                    uint32_t *l_372 = &p_893->g_373;
                    int32_t ***l_374 = &p_893->g_214;
                    int64_t *l_375[2];
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_375[i] = nullptr;
                    (*l_293) ^= (safe_sub_func_int32_t_s_s((+(safe_sub_func_int64_t_s_s((((p_28 & (~((l_376.x = (l_309 = (((((((*l_374) = &l_364) == &l_293) != p_893->g_223.x) < 0x19070582BCD2E3A9LL) | (*p_26)) || 0x51L))) | l_329.y))) , 0xC4E1FA58L) && (**p_893->g_214)), hip_const_10[4]))), hip_const_9));
                    if (l_325)
                        goto lbl_377;
                    (*l_276) = &p_893->g_208[0];
                    return p_29;
                }
                if (((*l_114) ^ ((0xFA31EC76F50C885CLL < l_103.z) , (((((*l_293) = l_329.x) , (l_140 ^= ((safe_mod_func_int8_t_s_s((((safe_mul_func_int8_t_s_s(((make_char3((-1L), (p_893->g_342.y >= (safe_unary_minus_func_int8_t_s((-8L)))), 0x90L).x >= (((safe_add_func_int8_t_s_s((nullptr != &p_893->g_148[1][0]), ((~((((safe_mul(((((safe_mod(((make_uchar3(p_893->g_390.x, p_893->g_390.x, p_893->g_390.x) | ((make_uchar3(1UL, 0UL, 255UL) & make_uchar3(((((safe_rshift_func_int8_t_s_s(make_char2(0xE6L, 4L).y, 3)) , nullptr) == l_393) != p_28), 1UL, 0x28L))))), make_uchar3(1UL, 1UL, 1UL)))) ^ make_uchar3(0xB4L, 0xB4L, 0xB4L))), make_uchar3(0xD4L, 0xD4L, 0xD4L)))) & make_uchar3(247UL, 247UL, 247UL))))).y)) ^ 0xC3759426L) , (*l_293))) == hip_const_12), 255UL)) == 0x3057L) | 1UL), hip_const_18[1][2])) && l_376.y))) < 0x34L) , l_394))))
                { /* block id: 100 */
                    int32_t **l_395 = nullptr;
                    __shared__ int32_t **l_396;
                    l_396 = nullptr;
                    int32_t **l_397 = nullptr;
                    int32_t **l_398 = &l_114;
                    (*l_398) = &l_326;
                    for (l_140 = 27; (l_140 > 29); l_140 = safe_add_func_uint8_t_u_u(l_140, 4))
                    { /* block id: 104 */
                        (*l_114) = (safe_add_func_uint64_t_u_u(0xAD42B0A2042FC192LL, (0x94DB26A752FAC160LL <= (*p_27))));
                    }
                }
                else
                { /* block id: 107 */
                    char2 l_407 = make_char2(0xBAL, 1L);
                    int32_t l_411 = 8L;
                    __shared__ uint2 l_423;
                    l_423 = make_uint2(0x68845FD4L, 0UL);
                    int16_t l_435 = 0xF92EL;
                    int i;
                    if (p_25)
                    { /* block id: 108 */
                        uint64_t l_404 = 18446744073709551611UL;
                        if (p_29)
                            goto lbl_403;
                        l_376.z = 1L;
                        (*l_293) &= (l_404 = 0x27D1F8EBL);
                        return p_29;
                    }
                    else
                    { /* block id: 114 */
                        uint8_t l_406 = 0x06L;
                        int16_t *l_408 = &l_352;
                        int32_t **l_409 = &p_893->g_153;
                        int32_t *l_410 = &l_147;
                        (*l_293) |= l_405;
                        (*l_293) = (l_406 ^ (make_char2(l_407.y, l_407.y).x < ((p_893->g_97.x , &l_326) == (l_410 = nullptr))));
                        l_143 = 0x23A9A361L;
                        l_411 = 1L;
                    }
                    for (l_405 = 0; (l_405 >= 27); l_405 = safe_add_func_int32_t_s_s(l_405, 7))
                    { /* block id: 123 */
                        if (p_29)
                            goto lbl_403;
                    }
                    if (((safe_sub_func_int8_t_s_s((((*p_26) , nullptr) == &l_114), hip_const_3)) | (((((((make_uint1(l_416.x) | ((safe_mul(make_uint1(4UL), make_uint1(l_419.y)))))) ^ make_uint1(l_420.y))) ^ ((make_uint1(0x2CEF0461L) ^ ((safe_sub(make_uint1(0xA9D6C35AL), make_uint1(l_423.x)))))))).x , ((((safe_rshift_func_uint64_t_u_s(1UL, (safe_sub_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(((make_uchar2(p_25, 0xEBL).y <= ((*l_114) , ((safe_div_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_s(((+p_893->g_172) > 6UL), l_434)) > l_98.x), hip_const_17[0][3][0])) ^ (*l_293)))) <= p_25), 0x4CAF5227L)), (*l_114))))) , p_28) , p_893->g_88.x) || hip_const_5[0]))))
                    { /* block id: 126 */
                        (*l_293) &= 0L;
                        if (l_405)
                            goto lbl_377;
                        (*l_293) &= l_435;
                    }
                    else
                    { /* block id: 130 */
                        int32_t *l_436[5];
                        int32_t **l_437 = &l_436[0];
                        int i;
                        for (int i = 0; i < 5; i++)
                            l_436[i] = &l_326;
                        (*l_437) = l_436[1];
                        return p_893->g_148[0][1];
                    }
                    p_893->g_153 = p_893->g_438;
                }
                for (p_893->g_363 = 0; (p_893->g_363 > (-29)); p_893->g_363--)
                { /* block id: 138 */
                    int32_t *l_450[3][3] = {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}};
                    uint32_t *l_456[4];
                    uint32_t **l_455 = &l_456[3];
                    int i, j;
                    for (int i = 0; i < 4; i++)
                        l_456[i] = nullptr;
                    for (l_147 = 0; (l_147 != (-12)); l_147 = safe_sub_func_uint32_t_u_u(l_147, 2))
                    { /* block id: 141 */
                        __shared__ uint32_t l_443;
                        l_443 = 0x42B074A6L;
                        uint64_t *****l_454 = &p_893->g_452;
                    }
                    (*l_293) = (((*l_455) = &hip_const_7[0]) == &p_893->g_373);
                    for (p_25 = 0; (p_25 <= 1); p_25 += 1)
                    { /* block id: 152 */
                        int i, j;
                        if (p_893->g_148[p_25][p_25])
                            break;
                        if (p_29)
                            continue;
                    }
                    for (l_143 = 18; (l_143 <= (-15)); l_143 = safe_sub_func_int8_t_s_s(l_143, 6))
                    { /* block id: 158 */
                        ushort3 l_464 = make_ushort3(65527UL, 0x268CL, 65527UL);
                        ushort3 l_469 = make_ushort3(65532UL, 0xFA14L, 65532UL);
                        long3 l_476 = make_long3(0x107CF9725A535950LL, 0x1FD21F01897BB54BLL, 0x107CF9725A535950LL);
                        int i;
                        (**p_893->g_452) = (*p_893->g_453);
                        p_893->g_88.x &= ((*l_293) = (!(l_478 &= (((*l_293) || ((*l_114) & ((((safe_mod(((safe_unary_minus(((make_long2((+(+((p_893->g_148[1][0] == ((safe_div(((make_ushort4(l_463.x, l_463.x, l_463.x, l_463.x) ^ make_ushort4(l_464.z, l_464.z, l_464.z, l_464.z))), ((~make_ushort4((0x6825L || hip_const_4[6]), (!((((safe_add(make_ushort1(l_467.x), ((make_ushort1(l_468.y) ^ make_ushort1(1UL)))))) ^ make_ushort1(l_469.y))).x), 0xDB0DL, 65535UL)))))).z) > make_uint4(l_470.x, l_470.x, l_470.x, l_470.x).x))), ((~((safe_div(make_long4(l_473.x, l_473.x, l_473.x, l_473.x), make_long4(0x76DC1C526B0E1D86LL, 0x3C8A001506C4F258LL, 5L, (-1L))))))).z) ^ ((safe_sub(make_long2(l_476.x, l_476.x), make_long2(p_25, 0x3DA4405A9FEDD1D0LL))))))))), make_long2(1L, (p_25 && l_477))))).x , p_29) != p_893->g_97.x))) == (*l_114)))));
                    }
                }
                if ((make_uint4((safe_mul_func_int16_t_s_s(((p_28 = (p_893->g_148[1][0] > (safe_div_func_uint8_t_u_u(((((safe_lshift_func_int8_t_s_u(((((((((make_uchar1(l_485.w) ^ ((safe_add(((safe_div(make_uchar1(l_490.x), make_uchar1((l_519 &= (make_short1(1L).x || (safe_mod_func_uint8_t_u_u(((l_518[0] = (((((safe_add_func_int32_t_s_s(p_25, make_int4(p_893->g_495.y, p_893->g_495.y, p_893->g_495.y, p_893->g_495.y).z)) ^ p_893->g_93.z) < (((safe_rshift_func_uint32_t_u_u(((l_146 = (l_376.z = p_28)) < (safe_mul_func_int16_t_s_s(p_29, (4294967295UL != (((safe_sub_func_int8_t_s_s(((((make_char3(p_893->g_503.x, p_893->g_503.x, p_893->g_503.x) & make_char3(((~((safe_add(make_char1((make_char1((-8L)).x , hip_const_4[6])), make_char1(l_506.x)))))).x, 0x89L, ((safe_lshift_func_int32_t_s_s(((p_29 & (((safe_add_func_int32_t_s_s(((make_int2(l_511.x, l_511.x) & ((safe_add(make_int2((-3L), 5L), make_int2(((make_int3(l_514.z, l_514.z, l_514.z) ^ make_int3(l_515.x, l_515.x, l_515.x))).z, 0x0B0FD689L)))))).y, (((*l_114) > p_29) != (-1L)))) , hip_const_14) & (*l_114))) , p_25), (*l_114))) || l_449.y)))).y <= p_893->g_503.x) & 65533UL), p_28)) , l_516) == &hip_const_18[0][0]))))), 31)) , hip_const_14) , 0x71A7L)) , nullptr) != (*p_893->g_452))) , p_25), p_893->g_316.z)))))))), make_uchar1(0x6DL)))))) ^ make_uchar1(0UL))) & make_uchar1(0xF1L))).x >= p_893->g_296.x) <= 0x39FFL), (*l_114))) & 0xE460425BL) != p_29) , 0UL), p_893->g_97.x)))) , p_28), 0x3F7AL)), 4UL, 4294967289UL, 0x680E869EL).w > p_25))
                { /* block id: 170 */
                    for (p_893->g_373 = 0; (p_893->g_373 <= 4); p_893->g_373 += 1)
                    { /* block id: 173 */
                        (*l_293) = (0x7D8E0714DF50196CLL == 0xE4C0A0851C7AA157LL);
                    }
                }
                else
                { /* block id: 176 */
                    int32_t *****l_524 = &p_893->g_522;
                    (*l_524) = p_893->g_522;
                }
            }
            else
            { /* block id: 179 */
                uint32_t l_535 = 0x4C1F0387L;
                char3 l_537 = make_char3(0L, 0x81L, 0L);
                uint64_t *l_546 = &hip_const_11;
                long1 l_558 = make_long1(0xB8F7A2ED855E3258LL);
                uint32_t *l_579 = nullptr;
                int64_t *l_596 = nullptr;
                __shared__ int64_t *l_597;
                l_597 = nullptr;
                // attempting a hip shared for loop
                __shared__ int32_t l_598[3][10][8];
                for (int i = 0; i < 3; i++)
                {
                    for (int j = 0; j < 10; j++)
                    {
                        for (int k = 0; k < 8; k++)
                            l_598[i][j][k] = 0L;
                    }
                }
                int64_t *l_599 = nullptr;
                int64_t *l_600[5][2][6] = {{{nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {nullptr, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}};
                int32_t ***l_606[5][3] = {{&p_893->g_214, &p_893->g_214, nullptr}, {&p_893->g_214, &p_893->g_214, nullptr}, {&p_893->g_214, &p_893->g_214, nullptr}, {&p_893->g_214, &p_893->g_214, nullptr}, {&p_893->g_214, &p_893->g_214, nullptr}};
                int i, j, k;
                for (p_29 = 0; (p_29 == 24); p_29 = safe_add_func_uint16_t_u_u(p_29, 3))
                { /* block id: 182 */
                    long4 l_549 = make_long4((-5L), 0xB36FF8A205D57CABLL, (-5L), 0xB36FF8A205D57CABLL);
                    long3 l_555 = make_long3(7L, 0x9FA06F48A93D07BBLL, 7L);
                    long4 l_570 = make_long4(0xD92BEB2506BE9C09LL, 1L, 0xD92BEB2506BE9C09LL, 1L);
                    __shared__ int64_t *l_571;
                    l_571 = &hip_const_2;
                    int64_t *l_572 = &hip_const_3;
                    __shared__ int64_t *l_573;
                    l_573 = nullptr;
                    int32_t l_574 = (-10L);
                    int16_t *l_585 = &hip_const_15;
                    __shared__ int16_t *l_586;
                    l_586 = &hip_const_15;
                    int16_t *l_587 = &hip_const_10[4];
                    int i;
                    if ((*l_293))
                        break;
                    l_574 = ((((safe_rshift_func_uint64_t_u_u(((make_long3(l_529.x, l_529.x, l_529.x).x == ((safe_sub_func_int64_t_s_s((safe_mod_func_int8_t_s_s((make_uchar1(p_893->g_534.y).x ^ l_535), p_29)), (safe_unary_minus_func_int8_t_s(make_char4(l_537.x, l_537.x, l_537.x, l_537.x).z)))) >= (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_s(l_537.x, 3)), 1)))) > (safe_div_func_int16_t_s_s(0x8853L, (safe_rshift_func_uint64_t_u_u(((((**p_893->g_453) = (***p_893->g_452)) == l_546) < ((safe_add(make_long1(l_549.w), ((safe_mod(((safe_sub(((make_long1(l_554.y) ^ ((make_long1(l_555.x) ^ ((make_long1(0x71E9C7087AEA02C4LL) ^ ((make_long1(l_556.y) ^ make_long1(p_893->g_557.y))))))))), make_long1(l_558.x)))), ((safe_add(((make_long1(l_561.x) ^ make_long1(p_893->g_562.y))), ((make_long1(l_563.x) & make_long1(0x43853552CA9F399BLL)))))))))))).x), (safe_mod_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((l_537.y >= (make_long2(((make_long4(l_570.y, l_570.y, l_570.y, l_570.y) | make_long4((-6L), (p_893->g_316.y ^= (-1L)), ((p_29 == 0xBFB13606L) , (-1L)), p_893->g_163.x))).z, p_28).x < (-1L))), p_29)), l_535))))))), 33)) & p_29) ^ hip_const_10[3]) , 0x3FFE4227L);
                    l_515.x ^= (safe_mul_func_uint16_t_u_u(p_893->g_503.x, (safe_mod_func_uint32_t_u_u(((nullptr == l_579) , (p_893->g_296.w <= (((((p_893->g_580 , &p_893->g_148[1][0]) != &p_893->g_148[1][0]) , (!(l_581[0] != (safe_rshift_func_uint8_t_u_s((make_ulong4(p_893->g_584.x, p_893->g_584.x, p_893->g_584.x, p_893->g_584.x).w > (((*l_293) &= p_893->g_148[1][0]) ^ p_893->g_342.z)), p_893->g_584.x))))) == (-8L)) , 1UL))), p_25))));
                    for (l_352 = 0; (l_352 < (-8)); l_352 = safe_sub_func_int64_t_s_s(l_352, 2))
                    { /* block id: 191 */
                        return hip_const_7[0];
                    }
                }
                p_893->g_342.x = make_int1((p_29 | (((p_25 >= (safe_sub_func_uint64_t_u_u((+(safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s(p_893->g_223.z, (((p_893->g_557.x = ((*l_293) = (l_598[1][5][5] = p_25))) & (safe_unary_minus_func_uint32_t_u(make_uint3(1UL, (safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u(((l_606[4][1] != l_607[2]) | (&p_893->g_523 == nullptr)), hip_const_10[4])), 0x8611L)), 4294967294UL).y))) && 0x5A8A8EB0B8718228LL))), p_25))), (*p_27)))) > (*p_27)) == 1UL))).x;
            }
        }
        else
        { /* block id: 200 */
            uint3 l_620 = make_uint3(7UL, 2UL, 7UL);
            int32_t l_621 = 0x750D7306L;
            uint8_t *l_622 = &l_477;
            __shared__ int32_t l_627;
            l_627 = 6L;
            __shared__ int32_t l_628;
            l_628 = 0x0F800CAAL;
            uint16_t *l_629 = nullptr;
            uint16_t *l_630 = nullptr;
            uint16_t *l_631 = &p_893->g_172;
            int i;
            p_893->g_495.y = ((safe_add_func_int16_t_s_s((make_ushort1(l_610.y).x | ((*p_893->g_522) == l_611)), (((+0x078800115F61235CLL) != make_long3(l_612.y, l_612.y, l_612.y).z) , make_short1(p_893->g_613.y).x))) < ((safe_mul_func_uint16_t_u_u(make_ushort2(((nullptr == &hip_const_9) <= (safe_add_func_uint8_t_u_u(((*l_622) &= (safe_mod_func_int32_t_s_s((!(l_621 = l_620.x)), (p_893->g_342.y = make_int2((-2L), 0L).x)))), (((p_893->g_562.y , (p_28 <= (((*l_631) = (safe_rshift_func_uint64_t_u_u((l_628 ^= (l_627 = (safe_div_func_int64_t_s_s(4L, p_893->g_97.x)))), (*p_27)))) | 65533UL))) , p_28) || p_28)))), p_893->g_296.w).x, l_620.x)) , (-1L)));
        }
    }
    else
    { /* block id: 209 */
        int32_t l_632 = 0xE49FE2B4L;
        ulong2 l_640 = make_ulong2(18446744073709551608UL, 0x4D30CF4157FA2CD5LL);
        // attempting a hip shared for loop
        __shared__ uint32_t *l_655[8];
        for (int i = 0; i < 8; i++)
            l_655[i] = nullptr;
        int16_t l_656 = 1L;
        uint64_t l_657[1][4];
        int i, j;
        for (int i = 0; i < 8; i++)
            l_655[i] = nullptr;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 4; j++)
                l_657[i][j] = 0xB3045357BF20D3B1LL;
        }
        --l_633;
        l_657[0][2] ^= (safe_mod_func_uint16_t_u_u(((p_893->g_35.x = (((((safe_div(make_ulong4(((p_29 , &p_28) != nullptr), 0UL, 0x483395F495A6A74ALL, 0UL), make_ulong4(l_640.x, l_640.x, l_640.x, l_640.x)))) | ((safe_lshift(((make_ulong4(l_643.z, l_643.z, l_643.z, l_643.z) ^ ((safe_add(((safe_mod(make_ulong4((nullptr == &hip_const_8), (p_25 , (*l_114)), make_ulong2(l_648.y, l_648.y).y, 0x0859DDC02D21D7E6LL), ((make_ulong4(p_893->g_649.x, p_893->g_649.x, p_893->g_649.x, p_893->g_649.x) ^ ((((safe_div(make_ulong4(l_652.x, l_652.x, l_652.x, l_652.x), make_ulong4(0xC8DD27BB095D906CLL, 0xFB45780B3F4AE906LL, make_ulong1(0xF2ED750C721C4407LL).x, 1UL)))) | make_ulong4((((safe_rshift_func_uint8_t_u_s(((l_632 = 0L) && (-1L)), 4)) != l_640.y) | 0xB9L), l_640.y, 0x1C757A3A44AD962ELL, 0x9FC2DE6B48912786LL)))))))), make_ulong4(0xB5445B7A275E21A8LL, 0xB5445B7A275E21A8LL, 0xB5445B7A275E21A8LL, 0xB5445B7A275E21A8LL)))))), make_ulong4(0x4B0C7F05EAC00D0ALL, 0x4B0C7F05EAC00D0ALL, 0x4B0C7F05EAC00D0ALL, 0x4B0C7F05EAC00D0ALL)))))).w != (*p_27))) || 0x119B5508L), l_656));
        for (p_893->g_363 = 0; (p_893->g_363 == (-15)); p_893->g_363--)
        { /* block id: 216 */
            if ((*l_114))
                break;
        }
    }
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_3
 * writes:
 */
__device__ uint64_t  func_31(uint32_t  p_32, struct S0 * p_893)
{ /* block id: 3 */
    return hip_const_3;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_13 hip_const_4
 * writes:
 */
__device__ int32_t  func_37(int32_t  p_38, uint64_t  p_39, int16_t  p_40, uint16_t  p_41, struct S0 * p_893)
{ /* block id: 15 */
    int32_t *l_79 = &hip_const_4[6];
    int32_t **l_78 = &l_79;
    __shared__ int32_t *l_80;
    l_80 = &hip_const_4[4];
    int32_t *l_81 = &hip_const_4[6];
    // attempting a hip shared for loop
    __shared__ int32_t l_82[2][7];
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 7; j++)
            l_82[i][j] = 0x296D3241L;
    }
    __shared__ int32_t *l_83;
    l_83 = &hip_const_4[7];
    int32_t *l_84 = &hip_const_4[4];
    int32_t *l_85[6] = {&hip_const_4[2], &hip_const_4[2], &hip_const_4[6], &hip_const_4[2], &hip_const_4[2], &hip_const_4[6]};
    int32_t l_86 = 0x1BE7324BL;
    int i, j;
    (*l_78) = nullptr;
    l_82[0][4] = hip_const_13;
    l_86 = p_40;
    return (*l_80);
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_3 hip_const_11 hip_const_12 hip_const_7
 * writes:
 */
__device__ uint16_t  func_46(uint64_t * p_47, uint16_t  p_48, int16_t  p_49, int32_t  p_50, uint16_t  p_51, struct S0 * p_893)
{ /* block id: 5 */
    ulong2 l_58 = make_ulong2(0UL, 0UL);
    int32_t *l_59 = &hip_const_4[6];
    int32_t *l_60 = &hip_const_4[6];
    int32_t *l_61[9] = {nullptr, &hip_const_4[5], nullptr, &hip_const_4[5], nullptr, &hip_const_4[5], nullptr, &hip_const_4[5], nullptr};
    uint32_t l_62 = 0xB87B6FF5L;
    int1 l_63 = make_int1((-9L));
    int4 l_66 = make_int4(0xEC928903L, 0x96CDD171L, 0xEC928903L, 0x96CDD171L);
    int16_t *l_69 = &hip_const_15;
    __shared__ int16_t *l_70;
    l_70 = nullptr;
    int16_t *l_71 = &hip_const_13;
    int16_t *l_72 = &hip_const_10[4];
    __shared__ int16_t *l_73;
    l_73 = &hip_const_14;
    int16_t *l_74 = &hip_const_10[5];
    int16_t *l_75 = &hip_const_10[4];
    uint64_t l_76 = 4UL;
    int16_t l_77 = 0x9299L;
    int i;
    l_62 = l_58.y;
    l_77 |= ((((make_int1(l_63.x) ^ ((((make_int1((l_59 == nullptr)) ^ ((safe_rshift(make_int1((-1L)), make_int1(l_66.x)))))) | ((safe_lshift(make_int1(((0x773AL == (p_48 != (func_31((((l_59 != &hip_const_4[6]) , (l_76 &= 4L)) != (nullptr == &hip_const_14)), p_893) & p_50))) | (*p_47))), make_int1(0xE4EBB7C4L)))))))) & make_int1(0L))).x;
    for (p_50 = 5; (p_50 >= 1); p_50 -= 1)
    { /* block id: 11 */
        return p_51;
    }
    return hip_const_7[0];
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_14 hip_const_7 p_893->g_88 p_893->g_153 hip_const_4
 * writes: p_893->g_153
 */
__device__ uint64_t * func_119(int32_t ** p_120, struct S0 * p_893)
{ /* block id: 49 */
    int8_t l_247 = 0x1CL;
    uint64_t *l_248 = &hip_const_11;
    // attempting a hip shared for loop
    __shared__ uint64_t *l_249[7][1];
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 1; j++)
            l_249[i][j] = &hip_const_12;
    }
    int32_t l_250[7][1][6] = {{{1L, (-7L), 1L, 0x9984349FL, (-4L), 0x99181E83L}}, {{1L, (-7L), 1L, 0x9984349FL, (-4L), 0x99181E83L}}, {{1L, (-7L), 1L, 0x9984349FL, (-4L), 0x99181E83L}}, {{1L, (-7L), 1L, 0x9984349FL, (-4L), 0x99181E83L}}, {{1L, (-7L), 1L, 0x9984349FL, (-4L), 0x99181E83L}}, {{1L, (-7L), 1L, 0x9984349FL, (-4L), 0x99181E83L}}, {{1L, (-7L), 1L, 0x9984349FL, (-4L), 0x99181E83L}}};
    short4 l_253 = make_short4(0xA9F6L, 5L, 0xA9F6L, 5L);
    uint8_t *l_260 = &p_893->g_148[1][0];
    int32_t l_261[10];
    // attempting a hip shared for loop
    __shared__ int8_t *l_262[1];
    for (int i = 0; i < 1; i++)
        l_262[i] = nullptr;
    int i, j, k;
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 1; j++)
            l_249[i][j] = &hip_const_12;
    }
    for (int i = 0; i < 10; i++)
        l_261[i] = 0xDD971F16L;
    for (int i = 0; i < 1; i++)
        l_262[i] = nullptr;
    if (((safe_sub(make_int1(0x894AB442L), ((make_int1((safe_add_func_uint32_t_u_u((safe_rshift_func_uint64_t_u_s(((l_250[5][0][1] = l_247) && (((l_261[7] = (safe_lshift_func_uint64_t_u_u((make_ushort4(0x9F50L, make_ushort2(0x5B5DL, 0x8199L).y, ((nullptr != &l_247) < (hip_const_14 , l_250[5][0][1])), 0xD236L).w < make_short2(l_253.x, l_253.x).x), (safe_add_func_uint16_t_u_u((safe_add_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((l_260 == (l_253.z , &p_893->g_148[1][1])), (0x6BL <= hip_const_7[0]))), l_261[7])), l_250[5][0][1]))))) == p_893->g_88.x) & (**p_120))), 0)), 4294967292UL))) ^ make_int1(0xCB3B7618L)))))).x)
    { /* block id: 52 */
        int1 l_263 = make_int1(0L);
        // attempting a hip shared for loop
        __shared__ int32_t *l_264[10];
        for (int i = 0; i < 10; i++)
            l_264[i] = nullptr;
        uint32_t l_265 = 0x4E383DFEL;
        int i;
        for (int i = 0; i < 10; i++)
            l_264[i] = nullptr;
        (*p_120) = (make_int4(l_263.x, l_263.x, l_263.x, l_263.x).w , l_264[6]);
        l_265--;
    }
    else
    { /* block id: 55 */
        int32_t *l_268 = &l_261[3];
        (*p_120) = l_268;
    }
    return l_249[1][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_223 p_893->g_153 hip_const_4 hip_const_18 p_893->g_169 p_893->g_93 hip_const_1 p_893->g_163
 * writes: p_893->g_153 p_893->g_169 p_893->g_163
 */
__device__ int32_t ** func_121(int32_t  p_122, int32_t * p_123, uint32_t  p_124, int32_t ** p_125, struct S0 * p_893)
{ /* block id: 41 */
    __shared__ int32_t *l_215;
    l_215 = &hip_const_4[5];
    uint64_t **l_219 = &p_893->g_208[4];
    int64_t l_222 = 1L;
    uint16_t *l_226[1][4];
    int32_t l_229[8];
    int32_t *l_230 = &hip_const_4[6];
    int32_t *l_231 = nullptr;
    int32_t *l_232 = &hip_const_4[3];
    int32_t *l_233 = nullptr;
    int32_t *l_234 = &hip_const_4[6];
    int32_t *l_235 = nullptr;
    int32_t *l_236 = &hip_const_4[6];
    int32_t l_237 = 0x0952EE98L;
    int32_t *l_238 = nullptr;
    int32_t *l_239 = nullptr;
    __shared__ int32_t **l_240;
    l_240 = &l_238;
    int i, j;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 4; j++)
            l_226[i][j] = nullptr;
    }
    for (int i = 0; i < 8; i++)
        l_229[i] = 1L;
    p_893->g_153 = l_215;
    p_893->g_163.x &= (safe_lshift_func_int32_t_s_u((l_237 = ((safe_unary_minus_func_uint64_t_u((l_219 == (((l_229[4] = ((safe_mul_func_uint32_t_u_u((&hip_const_13 == &hip_const_10[4]), make_int4(l_222, (make_short4(p_893->g_223.z, p_893->g_223.z, p_893->g_223.z, p_893->g_223.z).x , (((safe_mul_func_uint16_t_u_u(((+(*p_893->g_153)) ^ (*p_123)), ((p_122 & hip_const_18[7][2]) , (++p_893->g_169.y)))) == (&hip_const_4[5] == l_215)) || (*l_215))), (*p_123), 0xA023C09FL).w)) >= p_893->g_93.y)) >= (*l_215)) , l_219)))) >= (*l_215))), hip_const_1));
    (*l_240) = &l_229[4];
    return &p_893->g_153;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_7 p_893->g_163 p_893->g_169 p_893->g_172 p_893->g_97 p_893->g_35 p_893->g_148 p_893->g_153 hip_const_4 p_893->g_207
 * writes: p_893->g_153 p_893->g_172 p_893->g_169 p_893->g_207
 */
__device__ int32_t * func_130(int16_t * p_131, struct S0 * p_893)
{ /* block id: 24 */
    ushort3 l_156 = make_ushort3(0x62AAL, 65535UL, 0x62AAL);
    int2 l_166 = make_int2(5L, 0xEF432E68L);
    uint16_t *l_170 = nullptr;
    __shared__ uint16_t *l_171;
    l_171 = &p_893->g_172;
    __shared__ int32_t l_173;
    l_173 = 0x05C0E476L;
    ushort3 l_186 = make_ushort3(0x5187L, 65535UL, 0x5187L);
    __shared__ uint8_t *l_187;
    l_187 = &hip_const_6;
    uint8_t *l_188 = &hip_const_1;
    uint8_t *l_189 = &hip_const_1;
    __shared__ uint8_t *l_190;
    l_190 = &hip_const_6;
    uint8_t *l_191 = &hip_const_1;
    int32_t l_192 = 8L;
    int8_t *l_193 = nullptr;
    int8_t *l_194[3];
    __shared__ int32_t l_195;
    l_195 = (-1L);
    int32_t l_196 = 0x454160E1L;
    uint32_t l_197 = 0UL;
    int32_t *l_198 = &hip_const_4[6];
    __shared__ int32_t *l_199;
    l_199 = &hip_const_4[1];
    int32_t *l_200 = nullptr;
    int32_t *l_201 = &hip_const_4[5];
    int32_t *l_202 = nullptr;
    int32_t *l_213 = &hip_const_4[1];
    int i;
    for (int i = 0; i < 3; i++)
        l_194[i] = &hip_const_5[0];
    p_893->g_153 = &hip_const_4[5];
    l_166.y = ((make_int4((-3L), 0L, 0xD098C665L, 1L) ^ make_int4(1L, 0x6FF569DEL, (safe_mul_func_uint16_t_u_u((make_ushort2(l_156.y, l_156.y).y > (+(safe_lshift_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((((((l_196 ^= make_uchar2(((hip_const_7[0] != (safe_lshift_func_int32_t_s_s(((make_int1(p_893->g_163.y) ^ ((safe_mul(make_int1(make_int4(l_166.x, l_166.x, l_166.x, l_166.x).w), make_int1(((l_195 &= (((nullptr != &p_893->g_153) , (+(((safe_rshift_func_uint8_t_u_u((l_192 &= ((l_173 |= (p_893->g_169.x = ((*l_171) |= make_ushort2(p_893->g_169.y, p_893->g_169.y).x))) & make_short2(((safe_add_func_uint16_t_u_u(p_893->g_97.x, (hip_const_7[0] <= ((make_short4(((safe_lshift_func_uint32_t_u_s((safe_lshift_func_int16_t_s_u(p_893->g_35.x, (0x7A05L | (safe_lshift_func_int64_t_s_u(((safe_div_func_int8_t_s_s((((safe_div(make_ushort1(l_186.y), make_ushort1(((1UL <= (l_156.x < 1UL)) == l_166.x))))).x , l_186.x), p_893->g_148[1][0])) & 0x5F4BB7FEAD5EC58BLL), 18))))), l_156.x)) , 0L), 0L, l_186.z, (-1L)).y | l_186.y) , 0UL)))) > l_186.x), 0xEB16L).x)), l_166.y)) > l_186.z) , l_156.x))) && 2L)) <= l_186.y))))))).x, l_166.x))) <= 0x08L), l_156.x).x) || 0UL) , l_166.y) | l_166.x) && (*p_893->g_153)) != l_166.y), l_186.z)), 2)))), l_186.y)), l_197))).w;
    if ((*p_893->g_153))
    { /* block id: 33 */
        int32_t *l_203 = &hip_const_4[1];
        return l_203;
    }
    else
    { /* block id: 35 */
        uint8_t l_204 = 0UL;
        uint64_t ***l_209 = nullptr;
        uint64_t ***l_210 = &p_893->g_207[5];
        int32_t *l_211 = nullptr;
        int32_t *l_212[6] = {nullptr, nullptr, &l_196, nullptr, nullptr, &l_196};
        int i;
        ++l_204;
        (*l_210) = p_893->g_207[5];
        l_192 ^= (*p_893->g_153);
    }
    return l_213;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S0 c_894;
    struct S0* p_893 = &c_894;
    struct S0 c_895 = {
        .g_35 = make_uint1(1UL),
        .g_88 = make_int1(0L),
        .g_93 = make_ushort3(0x5E79L, 65533UL, 0x5E79L),
        .g_97 = make_uchar1(0xDFL),
        .g_148 = {{0xECL, 0UL}, {0xECL, 0UL}},
        .g_153 = &hip_const_4[6],
        .g_163 = make_int4(9L, 0xAB0B14FCL, 9L, 0xAB0B14FCL),
        .g_169 = make_ushort2(6UL, 0x0F81L),
        .g_172 = 0x3A1EL,
        .g_208 = {nullptr, &hip_const_11, nullptr, &hip_const_11, nullptr},
        .g_207 = {&p_893->g_208[0], &p_893->g_208[0], &p_893->g_208[0], &p_893->g_208[0], &p_893->g_208[0], &p_893->g_208[0], &p_893->g_208[0]},
        .g_214 = nullptr,
        .g_223 = make_short3(0x1C7CL, (-1L), 0x1C7CL),
        .g_296 = make_long4((-1L), 0x4755E3F350D279C5LL, (-1L), 0x4755E3F350D279C5LL),
        .g_316 = make_long3(0x3DAD876D7F5B296CLL, 0xF98C2746B81B9BB4LL, 0x3DAD876D7F5B296CLL),
        .g_342 = make_int3(0x86DBEE4DL, (-8L), 0x86DBEE4DL),
        .g_363 = 0xE5L,
        .g_373 = 6UL,
        .g_390 = make_uchar2(255UL, 0x97L),
        .g_438 = nullptr,
        .g_453 = &p_893->g_207[5],
        .g_452 = &p_893->g_453,
        .g_495 = make_int2(0xAF9E2C30L, 0x928C250FL),
        .g_503 = make_char1((-1L)),
        .g_523 = &p_893->g_214,
        .g_522 = &p_893->g_523,
        .g_534 = make_uchar2(254UL, 0x05L),
        .g_557 = make_long3(1L, 0xFF28D7DD029A9FE3LL, 1L),
        .g_562 = make_long4((-1L), 0xA1694FD9A4FE0EFCLL, (-1L), 0xA1694FD9A4FE0EFCLL),
        .g_580 = 18446744073709551609UL,
        .g_584 = make_ulong1(0xE8E110F413133742LL),
        .g_613 = make_short2(0x39EEL, 1L),
        .g_649 = make_ulong4(1UL, 0x4FCC6BF423096DD4LL, 1UL, 0x4FCC6BF423096DD4LL),
        .g_731 = nullptr,
        .g_737 = &p_893->g_522,
        .g_784 = make_ushort3(1UL, 0xB947L, 1UL),
        .g_787 = make_short1((-9L)),
        .g_818 = &p_893->g_731,
        .g_835 = make_char3(0xDDL, 0x3BL, 0xDDL),
        .g_871 = {{{0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}}, {{0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}}, {{0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}}, {{0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}}, {{0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}, {0x3BL, (-6L), 0x85L, (-1L), 0x1AL, 0x85L}}},
        .g_889 = 0x1E47L,
        .g_890 = 0xB351L,
    };
    c_894 = c_895;

    // Execute core logic
    func_1(p_893);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(hip_const_4[i], "hip_const_4[i]", print_hash_value);

    }
    for (int i = 0; i < 7; i++)
    {
        transparent_crc(hip_const_5[i], "hip_const_5[i]", print_hash_value);

    }
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(hip_const_7[i], "hip_const_7[i]", print_hash_value);

    }
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9, "hip_const_9", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        transparent_crc(hip_const_10[i], "hip_const_10[i]", print_hash_value);

    }
    transparent_crc(hip_const_11, "hip_const_11", print_hash_value);
    transparent_crc(hip_const_12, "hip_const_12", print_hash_value);
    transparent_crc(hip_const_13, "hip_const_13", print_hash_value);
    transparent_crc(hip_const_14, "hip_const_14", print_hash_value);
    transparent_crc(hip_const_15, "hip_const_15", print_hash_value);
    transparent_crc(hip_const_16, "hip_const_16", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 7; j++)
        {
            for (int k = 0; k < 4; k++)
            {
                transparent_crc(hip_const_17[i][j][k], "hip_const_17[i][j][k]", print_hash_value);

            }
        }
    }
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            transparent_crc(hip_const_18[i][j], "hip_const_18[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_893->g_35.x, "p_893->g_35.x", print_hash_value);
    transparent_crc(p_893->g_88.x, "p_893->g_88.x", print_hash_value);
    transparent_crc(p_893->g_93.x, "p_893->g_93.x", print_hash_value);
    transparent_crc(p_893->g_93.y, "p_893->g_93.y", print_hash_value);
    transparent_crc(p_893->g_93.z, "p_893->g_93.z", print_hash_value);
    transparent_crc(p_893->g_97.x, "p_893->g_97.x", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            transparent_crc(p_893->g_148[i][j], "p_893->g_148[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_893->g_163.x, "p_893->g_163.x", print_hash_value);
    transparent_crc(p_893->g_163.y, "p_893->g_163.y", print_hash_value);
    transparent_crc(p_893->g_163.z, "p_893->g_163.z", print_hash_value);
    transparent_crc(p_893->g_163.w, "p_893->g_163.w", print_hash_value);
    transparent_crc(p_893->g_169.x, "p_893->g_169.x", print_hash_value);
    transparent_crc(p_893->g_169.y, "p_893->g_169.y", print_hash_value);
    transparent_crc(p_893->g_172, "p_893->g_172", print_hash_value);
    transparent_crc(p_893->g_223.x, "p_893->g_223.x", print_hash_value);
    transparent_crc(p_893->g_223.y, "p_893->g_223.y", print_hash_value);
    transparent_crc(p_893->g_223.z, "p_893->g_223.z", print_hash_value);
    transparent_crc(p_893->g_296.x, "p_893->g_296.x", print_hash_value);
    transparent_crc(p_893->g_296.y, "p_893->g_296.y", print_hash_value);
    transparent_crc(p_893->g_296.z, "p_893->g_296.z", print_hash_value);
    transparent_crc(p_893->g_296.w, "p_893->g_296.w", print_hash_value);
    transparent_crc(p_893->g_316.x, "p_893->g_316.x", print_hash_value);
    transparent_crc(p_893->g_316.y, "p_893->g_316.y", print_hash_value);
    transparent_crc(p_893->g_316.z, "p_893->g_316.z", print_hash_value);
    transparent_crc(p_893->g_342.x, "p_893->g_342.x", print_hash_value);
    transparent_crc(p_893->g_342.y, "p_893->g_342.y", print_hash_value);
    transparent_crc(p_893->g_342.z, "p_893->g_342.z", print_hash_value);
    transparent_crc(p_893->g_363, "p_893->g_363", print_hash_value);
    transparent_crc(p_893->g_373, "p_893->g_373", print_hash_value);
    transparent_crc(p_893->g_390.x, "p_893->g_390.x", print_hash_value);
    transparent_crc(p_893->g_390.y, "p_893->g_390.y", print_hash_value);
    transparent_crc(p_893->g_495.x, "p_893->g_495.x", print_hash_value);
    transparent_crc(p_893->g_495.y, "p_893->g_495.y", print_hash_value);
    transparent_crc(p_893->g_503.x, "p_893->g_503.x", print_hash_value);
    transparent_crc(p_893->g_534.x, "p_893->g_534.x", print_hash_value);
    transparent_crc(p_893->g_534.y, "p_893->g_534.y", print_hash_value);
    transparent_crc(p_893->g_557.x, "p_893->g_557.x", print_hash_value);
    transparent_crc(p_893->g_557.y, "p_893->g_557.y", print_hash_value);
    transparent_crc(p_893->g_557.z, "p_893->g_557.z", print_hash_value);
    transparent_crc(p_893->g_562.x, "p_893->g_562.x", print_hash_value);
    transparent_crc(p_893->g_562.y, "p_893->g_562.y", print_hash_value);
    transparent_crc(p_893->g_562.z, "p_893->g_562.z", print_hash_value);
    transparent_crc(p_893->g_562.w, "p_893->g_562.w", print_hash_value);
    transparent_crc(p_893->g_580, "p_893->g_580", print_hash_value);
    transparent_crc(p_893->g_584.x, "p_893->g_584.x", print_hash_value);
    transparent_crc(p_893->g_613.x, "p_893->g_613.x", print_hash_value);
    transparent_crc(p_893->g_613.y, "p_893->g_613.y", print_hash_value);
    transparent_crc(p_893->g_649.x, "p_893->g_649.x", print_hash_value);
    transparent_crc(p_893->g_649.y, "p_893->g_649.y", print_hash_value);
    transparent_crc(p_893->g_649.z, "p_893->g_649.z", print_hash_value);
    transparent_crc(p_893->g_649.w, "p_893->g_649.w", print_hash_value);
    transparent_crc(p_893->g_784.x, "p_893->g_784.x", print_hash_value);
    transparent_crc(p_893->g_784.y, "p_893->g_784.y", print_hash_value);
    transparent_crc(p_893->g_784.z, "p_893->g_784.z", print_hash_value);
    transparent_crc(p_893->g_787.x, "p_893->g_787.x", print_hash_value);
    transparent_crc(p_893->g_835.x, "p_893->g_835.x", print_hash_value);
    transparent_crc(p_893->g_835.y, "p_893->g_835.y", print_hash_value);
    transparent_crc(p_893->g_835.z, "p_893->g_835.z", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 6; k++)
            {
                transparent_crc(p_893->g_871[i][j][k], "p_893->g_871[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_893->g_889, "p_893->g_889", print_hash_value);
    transparent_crc(p_893->g_890, "p_893->g_890", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

