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
// Seed: 1677090792

/* --- Struct/Union Declarations --- */
// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint8_t hip_const_1[3];
__constant__ uint8_t hip_const_2;
__constant__ int8_t hip_const_3[10];
__constant__ uint32_t hip_const_4;
__constant__ int16_t hip_const_5;
__constant__ uint16_t hip_const_6;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint8_t host_hip_const_1[3] = {247UL, 247UL, 247UL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint8_t host_hip_const_2 = 5UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        int8_t host_hip_const_3[10] = {(-1L), 0xA8L, 0x6DL, 0x6DL, 0xA8L, (-1L), 0xA8L, 0x6DL, 0x6DL, 0xA8L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        uint32_t host_hip_const_4 = 0x56A9EF72L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        int16_t host_hip_const_5 = 0L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint16_t host_hip_const_6 = 65533UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
}

struct S0 {
    int64_t g_15;
    ulong2 g_19;
    ulong4 g_24;
    long4 g_26;
    int16_t g_64;
    int32_t g_66;
    int32_t *g_97[3];
    int32_t *g_106;
    int16_t *g_132;
    int16_t **g_131[9][5][5];
    int8_t g_134;
    int16_t g_135;
    long2 g_163;
    char1 g_166;
    int8_t g_167;
    uchar1 g_175;
    uint32_t g_194;
    char4 g_216;
    uint32_t g_275;
    uint16_t g_296;
    uint4 g_304;
    uint2 g_310;
    uint2 g_311;
    ulong2 g_316;
    uint8_t *g_353[5][7][7];
    uint8_t **g_352[2][9];
    uint8_t ***g_351;
    long3 g_389;
    int1 g_402;
    int1 g_416;
    int8_t *g_448[4];
    int8_t **g_447;
    int8_t ***g_446;
    uint32_t g_501;
    short3 g_538;
    uint32_t g_542;
    uint32_t g_561;
    int64_t *g_607[5];
    int64_t **g_606;
    uint3 g_622;
    int1 g_635;
    int2 g_636;
    uint32_t g_648;
    uint64_t *g_658[2][6];
    int32_t g_659[4][5];
    char1 g_673;
    ulong1 g_689;
    uint64_t **g_718;
    uint64_t **g_719[1][6];
    char2 g_724;
    ushort3 g_725;
    char1 g_738;
    short4 g_745;
    int2 g_754;
    ushort3 g_762;
    short3 g_769;
    ulong1 g_844;
    int3 g_881;
    uint4 g_933;
    uint1 g_982;
    uint4 g_983;
    uint8_t g_999;
    ushort4 g_1055;
    int4 g_1058;
    char3 g_1063;
    int32_t **g_1066;
    short4 g_1135;
    uint8_t g_1197;
    ushort4 g_1228;
    ushort4 g_1229;
    ushort3 g_1230;
    int1 g_1233;
    uint8_t ***g_1251;
    char1 g_1301;
    ushort1 g_1312;
    ushort4 g_1349;
    uint64_t ***g_1377;
    char3 g_1407;
    char4 g_1408;
    uchar2 g_1418;
    int32_t g_1453[6];
    char2 g_1470;
    ulong4 g_1474;
    ulong2 g_1480;
    short1 g_1485;
    ushort2 g_1506;
    int16_t ***g_1576;
    int16_t ****g_1575;
    int16_t *****g_1574[3][4][9];
    char3 g_1584;
    long3 g_1597;
    uint8_t g_1618;
    ulong1 g_1631;
    int4 g_1634;
    int4 g_1648;
    ushort2 g_1720;
    int32_t *g_1804;
    uchar2 g_1822;
    uchar1 g_1825;
    long4 g_1854;
    uint2 g_1880;
    uint2 g_1883;
    long3 g_1919;
    uint1 g_1921;
    int8_t *g_1926[5];
    short4 g_1942;
    ulong2 g_2014;
    int8_t ****g_2025;
    int8_t *****g_2024[2];
    int2 g_2064;
    uint3 g_2066;
    uint16_t g_2073;
    uint4 g_2091;
    ushort4 g_2122;
    uchar2 g_2151;
    uint64_t g_2159;
    int2 g_2180;
    int4 g_2184;
    ulong4 g_2205;
    ushort1 g_2240;
    long3 g_2404;
    short4 g_2419;
    short2 g_2478;
    short2 g_2479;
    uchar4 g_2502;
    short3 g_2534;
    int4 g_2538;
    char2 g_2557;
    long1 g_2574;
    ushort3 g_2582;
    uint64_t ****g_2592;
    uint64_t *****g_2591;
    uint64_t *****g_2665;
    int64_t ***g_2688;
    int64_t ****g_2687;
    int64_t *****g_2686;
    int3 g_2699;
    ushort4 g_2705;
    ushort1 g_2708;
    ushort2 g_2712;
    int32_t *g_2781;
    int32_t **g_2780;
    ulong3 g_2795;
    ushort3 g_2814;
    int1 g_2822;
    uchar1 g_2830;
    uint1 g_2833;
    int8_t g_2838;
    int32_t **g_2841[10];
    uint1 g_2876;
    int64_t *g_2880;
    ushort4 g_2885;
    int3 g_2898;
    short2 g_2910;
    short2 g_2911;
    int32_t g_2956;
    char3 g_2965;
    int3 g_3028;
    int16_t g_3076;
    short1 g_3099;
    int4 g_3116;
    int2 g_3121;
    ulong4 g_3133;
    long3 g_3140;
    long2 g_3141;
    short1 g_3160;
    short1 g_3161;
    short3 g_3174;
    ushort2 g_3200;
    uint16_t g_3228;
    int32_t ***g_3241[4][8][6];
    int1 g_3277;
    ushort3 g_3287;
    int3 g_3342;
    int32_t ****g_3346;
    ushort1 g_3378;
    uint8_t ****g_3384[6][7];
    uint8_t *****g_3383;
    ushort4 g_3398;
    ushort2 g_3409;
    int8_t g_3427;
    int1 g_3428;
    int3 g_3434;
    ulong3 g_3444;
    ulong4 g_3445;
    long4 g_3452;
    long3 g_3453;
    long2 g_3477;
    uint32_t *g_3513[2];
    uint32_t **g_3512;
    int3 g_3516;
    uint16_t *g_3553;
    uint16_t **g_3552;
    ulong2 g_3603;
    long2 g_3620;
    uchar2 g_3634;
    uint32_t g_3659;
    ushort3 g_3678;
    ushort3 g_3679;
    uint8_t g_3720;
    uchar4 g_3742;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S0 * p_3766);
__device__ uint32_t  func_4(uint64_t  p_5, uint8_t  p_6, int32_t  p_7, struct S0 * p_3766);
__device__ int32_t  func_27(uint8_t  p_28, struct S0 * p_3766);
__device__ int64_t * func_30(uint8_t  p_31, struct S0 * p_3766);
__device__ int32_t * func_37(uint16_t  p_38, int64_t  p_39, struct S0 * p_3766);
__device__ int16_t ** func_68(uint64_t  p_69, int32_t  p_70, uint64_t  p_71, struct S0 * p_3766);
__device__ uint64_t  func_72(uint8_t  p_73, int16_t * p_74, uint64_t  p_75, uint64_t  p_76, struct S0 * p_3766);
__device__ uint8_t  func_83(int16_t * p_84, int16_t * p_85, int32_t  p_86, int16_t  p_87, uint8_t  p_88, struct S0 * p_3766);
__device__ int16_t * func_89(int16_t  p_90, struct S0 * p_3766);
__device__ int32_t * func_91(int8_t * p_92, int8_t * p_93, struct S0 * p_3766);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_5 hip_const_4 hip_const_3 p_3766->g_19 p_3766->g_24 p_3766->g_26 hip_const_1 p_3766->g_15 p_3766->g_2538 p_3766->g_166 p_3766->g_1066 p_3766->g_1197 p_3766->g_132 p_3766->g_106 p_3766->g_2876 p_3766->g_2880 p_3766->g_2687 p_3766->g_2688 p_3766->g_606 p_3766->g_738 p_3766->g_2885 p_3766->g_999 p_3766->g_194 p_3766->g_2898 p_3766->g_1720 p_3766->g_2795 p_3766->g_2910 p_3766->g_2911 p_3766->g_1453 p_3766->g_310 p_3766->g_1618 p_3766->g_561 p_3766->g_2965 p_3766->g_64 p_3766->g_3028 p_3766->g_2841 p_3766->g_2705 p_3766->g_97 p_3766->g_1480 p_3766->g_673 p_3766->g_1880 p_3766->g_2686 p_3766->g_607 p_3766->g_501 p_3766->g_66 p_3766->g_1474 p_3766->g_2814 p_3766->g_2592 p_3766->g_2780 p_3766->g_2781 p_3766->g_2205 p_3766->g_1919 p_3766->g_3174 p_3766->g_3228 p_3766->g_2159 p_3766->g_542 p_3766->g_2419 p_3766->g_622 p_3766->g_389 p_3766->g_1377 p_3766->g_2591 p_3766->g_3277 p_3766->g_216 p_3766->g_769 p_3766->g_2699 p_3766->g_2091 p_3766->g_648 p_3766->g_3512 p_3766->g_2712 p_3766->g_3552 p_3766->g_275 p_3766->g_2838 p_3766->g_311 p_3766->g_3603 p_3766->g_745 p_3766->g_933 p_3766->g_1251 p_3766->g_352 p_3766->g_3659 p_3766->g_3133 p_3766->g_1634 p_3766->g_3678 p_3766->g_3679 p_3766->g_1228 p_3766->g_724 p_3766->g_3477 p_3766->g_3720
 * writes: p_3766->g_106 p_3766->g_1197 p_3766->g_607 p_3766->g_999 p_3766->g_194 p_3766->g_1720 p_3766->g_1453 p_3766->g_1618 p_3766->g_561 p_3766->g_64 p_3766->g_1880 p_3766->g_2841 p_3766->g_2159 p_3766->g_2025 p_3766->g_2687 p_3766->g_3076 p_3766->g_501 p_3766->g_66 p_3766->g_97 p_3766->g_1377 p_3766->g_3228 p_3766->g_3241 p_3766->g_135 p_3766->g_3512 p_3766->g_3553 p_3766->g_275 p_3766->g_2838 p_3766->g_310 p_3766->g_3659
 */
__device__ uint32_t  func_1(struct S0 * p_3766)
{ /* block id: 0 */
    int64_t *l_14[8] = {&p_3766->g_15, &p_3766->g_15, &p_3766->g_15, &p_3766->g_15, &p_3766->g_15, &p_3766->g_15, &p_3766->g_15, &p_3766->g_15};
    int32_t l_16 = (-1L);
    ulong2 l_25 = make_ulong2(0x0881DDA8DB8846B5LL, 0UL);
    int8_t *l_34[2][9][6] = {{{nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}}, {{nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}, {nullptr, &hip_const_3[5], &hip_const_3[4], nullptr, &hip_const_3[4], nullptr}}};
    int32_t l_35 = 0L;
    uint8_t l_2881 = 0x1DL;
    uint32_t l_2882 = 0xC6FDD9CEL;
    int16_t l_3243 = 1L;
    int32_t l_3258 = 0x8123FE39L;
    int32_t l_3259 = 0xA87B9837L;
    int32_t l_3260 = (-1L);
    int32_t l_3261 = 0L;
    uint8_t l_3262 = 249UL;
    uint64_t ****l_3280[5] = {&p_3766->g_1377, &p_3766->g_1377, &p_3766->g_1377, &p_3766->g_1377, &p_3766->g_1377};
    uint16_t *l_3288 = nullptr;
    uint16_t *l_3289 = &hip_const_6;
    int32_t l_3290 = 7L;
    uint32_t *l_3291[6][1] = {{&p_3766->g_194}, {&p_3766->g_194}, {&p_3766->g_194}, {&p_3766->g_194}, {&p_3766->g_194}, {&p_3766->g_194}};
    uint32_t l_3292 = 4294967287UL;
    int32_t *l_3293 = &l_35;
    char4 l_3300 = make_char4(0xDCL, (-1L), 0xDCL, (-1L));
    ushort4 l_3301 = make_ushort4(65530UL, 0x4372L, 65530UL, 0x4372L);
    int32_t **l_3302 = &p_3766->g_2781;
    uint8_t *l_3309 = nullptr;
    uint8_t *l_3310 = nullptr;
    uint8_t *l_3311 = &l_2881;
    uint16_t l_3312 = 65526UL;
    uint16_t l_3330 = 1UL;
    long4 l_3455 = make_long4(0x7E4991D3B3F1D5E0LL, 0x9169C985F398F037LL, 0x7E4991D3B3F1D5E0LL, 0x9169C985F398F037LL);
    uint8_t l_3471 = 7UL;
    uint1 l_3486 = make_uint1(4294967295UL);
    uint16_t l_3507 = 0x4C25L;
    int32_t l_3508 = 5L;
    int2 l_3519 = make_int2((-1L), (-5L));
    int32_t ****l_3521 = &p_3766->g_3241[1][0][0];
    int32_t l_3532 = (-1L);
    uint8_t ***l_3556 = &p_3766->g_352[0][6];
    int8_t ****l_3584 = nullptr;
    ulong3 l_3602 = make_ulong3(0x6A2F89F941FD73A5LL, 0xA5B0B60EEEB2DE19LL, 0x6A2F89F941FD73A5LL);
    int64_t l_3609 = 0x620E12151E35FF2BLL;
    uint32_t l_3643 = 0UL;
    int32_t l_3699[7][1][9] = {{{0L, 0x2E2C56CBL, 0xE2441A63L, 0x2ABC8394L, 0x2E2C56CBL, 1L, 0x2E2C56CBL, 0x2ABC8394L, 0xE2441A63L}}, {{0L, 0x2E2C56CBL, 0xE2441A63L, 0x2ABC8394L, 0x2E2C56CBL, 1L, 0x2E2C56CBL, 0x2ABC8394L, 0xE2441A63L}}, {{0L, 0x2E2C56CBL, 0xE2441A63L, 0x2ABC8394L, 0x2E2C56CBL, 1L, 0x2E2C56CBL, 0x2ABC8394L, 0xE2441A63L}}, {{0L, 0x2E2C56CBL, 0xE2441A63L, 0x2ABC8394L, 0x2E2C56CBL, 1L, 0x2E2C56CBL, 0x2ABC8394L, 0xE2441A63L}}, {{0L, 0x2E2C56CBL, 0xE2441A63L, 0x2ABC8394L, 0x2E2C56CBL, 1L, 0x2E2C56CBL, 0x2ABC8394L, 0xE2441A63L}}, {{0L, 0x2E2C56CBL, 0xE2441A63L, 0x2ABC8394L, 0x2E2C56CBL, 1L, 0x2E2C56CBL, 0x2ABC8394L, 0xE2441A63L}}, {{0L, 0x2E2C56CBL, 0xE2441A63L, 0x2ABC8394L, 0x2E2C56CBL, 1L, 0x2E2C56CBL, 0x2ABC8394L, 0xE2441A63L}}};
    int64_t ***l_3748[1][2];
    int32_t l_3751 = 1L;
    int i, j, k;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
            l_3748[i][j] = &p_3766->g_606;
    }
    if (((make_int4((-2L), (make_uint2((hip_const_5 != ((safe_mod_func_int32_t_s_s(hip_const_5, func_4((((safe_rshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s((((hip_const_4 < ((l_16 ^= hip_const_3[4]) >= ((safe_add(make_ulong2(p_3766->g_19.x, p_3766->g_19.x), ((safe_div(((safe_sub(make_ulong2(p_3766->g_24.w, p_3766->g_24.w), make_ulong2(l_25.y, l_25.y)))), make_ulong2(0x7FC0336AE3D4752ELL, 9UL))))))).x)) == ((make_long3(p_3766->g_26.y, p_3766->g_26.y, p_3766->g_26.y).x , func_27(l_25.x, p_3766)) | (func_27((((***p_3766->g_2687) = func_30((make_ushort4(((safe_lshift_func_uint16_t_u_s((hip_const_1[1] , make_ushort2(((l_35 = p_3766->g_19.x) < ((l_25.y , l_34[1][2][3]) != l_34[1][2][3])), 65534UL).x), p_3766->g_15)) | hip_const_3[4]), 1UL, p_3766->g_24.x, l_25.y).y ^ l_25.x), p_3766)) == l_14[3]), p_3766) <= 0x9E7BB9EFL))) == 18446744073709551615UL), l_25.x)), l_25.y)) && p_3766->g_738.x) , l_2881), l_2882, l_25.x, p_3766))) | l_25.x)), 0UL).y , l_16), 1L, 0xAB2956CCL) ^ make_int4(0x4BA08F48L, 0x4BA08F48L, 0x4BA08F48L, 0x4BA08F48L))).z)
    { /* block id: 1320 */
        return p_3766->g_2419.z;
    }
    else
    { /* block id: 1322 */
        int32_t *l_3242 = &l_35;
        int32_t *l_3244 = nullptr;
        int32_t *l_3245 = nullptr;
        int32_t *l_3246 = nullptr;
        int32_t *l_3247 = nullptr;
        int32_t *l_3248 = &p_3766->g_2956;
        int32_t *l_3249 = &p_3766->g_66;
        int32_t *l_3250 = nullptr;
        int32_t *l_3251 = nullptr;
        int32_t *l_3252 = nullptr;
        int32_t *l_3253 = nullptr;
        int32_t *l_3254 = nullptr;
        int32_t *l_3255 = nullptr;
        int32_t *l_3256 = nullptr;
        int32_t *l_3257[6];
        int i;
        for (int i = 0; i < 6; i++)
            l_3257[i] = &l_35;
        --l_3262;
    }
    (*p_3766->g_1066) = &l_16;
lbl_3684:
    (*p_3766->g_1066) = l_3293;
    if ((!(safe_sub_func_int16_t_s_s((((safe_mod_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s((*l_3293), make_char1(l_3300.x).x)), make_ushort3(l_3301.y, l_3301.y, l_3301.y).y)) > ((nullptr != l_3302) & (-6L))) || (p_3766->g_622.z | (((*l_3293) = (*l_3293)) == (p_3766->g_389.y ^ 7L)))), (safe_mod_func_int64_t_s_s(((((safe_sub_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((*l_3311) = make_uchar1(5UL).x), 4)), ((*p_3766->g_2592) != (**p_3766->g_2591)))) , 4L) & p_3766->g_3277.x) <= l_3312), 0x853992771E90CE19LL))))))
    { /* block id: 1333 */
        int32_t l_3313 = 0x4027B903L;
        int1 l_3338 = make_int1(0x2B2B4186L);
        int1 l_3339 = make_int1(1L);
        int16_t ****l_3349 = &p_3766->g_1576;
        int64_t l_3371 = 0L;
        uint8_t l_3376 = 0x5DL;
        uint8_t l_3433 = 0x2EL;
        ulong1 l_3441 = make_ulong1(1UL);
        ulong3 l_3442 = make_ulong3(0x65ADD6AB31B02E15LL, 1UL, 0x65ADD6AB31B02E15LL);
        int64_t l_3446 = 1L;
        long1 l_3454 = make_long1((-8L));
        int64_t **l_3456 = &l_14[4];
        ushort3 l_3474 = make_ushort3(65527UL, 0xE55DL, 65527UL);
        char3 l_3493 = make_char3(0x6FL, 1L, 0x6FL);
        int32_t **l_3506 = nullptr;
        uint8_t l_3515 = 0x67L;
        int32_t l_3530[9];
        uint32_t l_3548 = 4294967287UL;
        uint16_t **l_3554 = nullptr;
        int i;
        for (int i = 0; i < 9; i++)
            l_3530[i] = 0xA325CF16L;
        (**p_3766->g_1066) = (*p_3766->g_106);
        (**p_3766->g_1066) = l_3313;
        for (p_3766->g_135 = 15; (p_3766->g_135 < 20); p_3766->g_135 = safe_add_func_int16_t_s_s(p_3766->g_135, 1))
        { /* block id: 1338 */
            int16_t ****l_3350 = &p_3766->g_1576;
            int32_t l_3351 = 0x857B7381L;
            int32_t l_3377 = 0x12DA5DDAL;
            char4 l_3381 = make_char4(0xADL, 0xD7L, 0xADL, 0xD7L);
            int64_t l_3385 = 0x811B5D4EAE271A14LL;
            int i;
        }
        if ((4L <= l_3433))
        { /* block id: 1387 */
            ulong1 l_3443 = make_ulong1(0UL);
            int16_t *l_3447[3];
            int32_t *l_3457 = &l_3313;
            int32_t l_3458 = 1L;
            int32_t *l_3459 = nullptr;
            int32_t *l_3460 = nullptr;
            int32_t *l_3461 = nullptr;
            int32_t *l_3462 = &p_3766->g_1453[0];
            int32_t *l_3463 = nullptr;
            int32_t *l_3464 = nullptr;
            int32_t *l_3465 = nullptr;
            int32_t *l_3466 = &p_3766->g_2956;
            int32_t *l_3467 = nullptr;
            int32_t *l_3468 = nullptr;
            int32_t *l_3469 = nullptr;
            int32_t *l_3470 = &p_3766->g_1453[4];
            int i;
            for (int i = 0; i < 3; i++)
                l_3447[i] = &p_3766->g_64;
            (*l_3293) |= (p_3766->g_216.x , (p_3766->g_769.z , make_int3(p_3766->g_3434.z, p_3766->g_3434.z, p_3766->g_3434.z).x));
            (*l_3457) = make_int3((safe_add_func_int64_t_s_s(((l_3339.x != (safe_mul_func_uint64_t_u_u(((safe_div(make_ulong1(l_3441.x), ((((make_ulong1(l_3442.z) & ((((make_ulong1(0x1644AB23A6AAAB93LL) ^ make_ulong1(l_3443.x))) ^ make_ulong1(p_3766->g_3444.y))))) & make_ulong1(p_3766->g_3445.y)))))).x, l_3443.x))) < ((l_3446 , l_3447[1]) == nullptr)), ((*l_3293) = (((safe_mul(((safe_sub(make_long1(p_3766->g_3452.y), make_long1(p_3766->g_3453.x)))), ((make_long1(l_3454.x) ^ make_long1(l_3455.w)))))).x || ((l_3443.x , nullptr) == l_3456))))), 0xB8BCB16CL, 0xB8AEF67DL).z;
            (*p_3766->g_1066) = &l_3313;
            l_3471--;
        }
        else
        { /* block id: 1393 */
            int64_t ****l_3482 = nullptr;
            int32_t l_3483 = (-1L);
            uint8_t *l_3494 = nullptr;
            ushort1 l_3501 = make_ushort1(0x1DE1L);
            int32_t *****l_3522 = nullptr;
            int32_t *****l_3523[9][10] = {{&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}, {&l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, &l_3521, nullptr}};
            int8_t *l_3546 = nullptr;
            uint32_t l_3547 = 0x037144DBL;
            int16_t *l_3549 = nullptr;
            int16_t *l_3550 = nullptr;
            int16_t *l_3551 = &p_3766->g_64;
            int16_t l_3555[10][2] = {{0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}, {0xE56CL, 0xE947L}};
            int i, j;
            for (l_3433 = 0; (l_3433 <= 4); l_3433 += 1)
            { /* block id: 1396 */
                int8_t l_3487[2][8] = {{1L, 1L, 0xC0L, 1L, 1L, 0xC0L, 1L, 1L}, {1L, 1L, 0xC0L, 1L, 1L, 0xC0L, 1L, 1L}};
                int32_t l_3488 = 1L;
                uint8_t *l_3495 = &p_3766->g_1618;
                uint8_t *l_3498 = &l_3262;
                int16_t *l_3509 = nullptr;
                int16_t *l_3510 = nullptr;
                int16_t *l_3511[5][7][7] = {{{&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}}, {{&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}}, {{&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}}, {{&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}}, {{&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}, {&p_3766->g_64, nullptr, nullptr, &p_3766->g_135, &l_3243, nullptr, nullptr}}};
                uint32_t ***l_3514 = &p_3766->g_3512;
                int i, j, k;
                l_3483 = (p_3766->g_2699.z || ((((make_ushort4(l_3474.z, l_3474.z, l_3474.z, l_3474.z) ^ make_ushort4(make_ushort3(0x73B8L, 0xE3B6L, make_ushort4(l_3371, 7UL, 65529UL, (0x83235585A81DD5D9LL <= ((safe_mul(((make_long3(make_long2(p_3766->g_3477.x, p_3766->g_3477.x).x, (safe_add_func_uint64_t_u_u((l_3313 |= (l_3488 = ((l_3338.x &= (((safe_add_func_uint32_t_u_u((nullptr != l_3482), (l_3483 >= (safe_lshift_func_uint32_t_u_s(((l_3339.x = ((4294967293UL < make_uint3(l_3486.x, l_3486.x, l_3486.x).y) <= (((&l_3243 != nullptr) , 0xFF9CB838L) || p_3766->g_538.x))) != p_3766->g_216.y), 5))))) != 0L) | l_3487[1][7])) , (*l_3293)))), l_3442.z)), 0L) ^ make_long3(0xA1AF803D108DC1D8LL, 0xA1AF803D108DC1D8LL, 0xA1AF803D108DC1D8LL))), make_long3(0x1A78EA7163BDAD1BLL, 0x1A78EA7163BDAD1BLL, 0x1A78EA7163BDAD1BLL)))).z)).x).x, 7UL, (*l_3293), 65531UL))).y && 0x2E72L) <= 0xB3975D8581EC702CLL));
                (*p_3766->g_1066) = &l_3313;
                (*p_3766->g_106) = (((safe_mul_func_int16_t_s_s(((*l_3293) = (l_3483 = ((safe_mul_func_int64_t_s_s((((make_char2(l_3493.y, l_3493.y) ^ make_char2((-6L), (-3L)))).x > (make_int4(4L, (((l_3495 = l_3494) == (((**l_3302) = (safe_rshift_func_int8_t_s_s(l_3483, 5))) , l_3498)) == (safe_sub_func_uint32_t_u_u((((-1L) | ((((*l_3311) = (~(make_ushort2(l_3501.x, l_3501.x).y | (safe_add_func_uint16_t_u_u(65533UL, ((((0x18469046L <= (nullptr == l_3506)) != (*p_3766->g_106)) , 65527UL) ^ 1UL)))))) , l_3488) == (-1L))) < l_3487[1][7]), p_3766->g_135))), 4L, l_3507).y , l_3501.x)), l_3508)) >= p_3766->g_2091.w))), p_3766->g_648)) | l_3501.x) != hip_const_1[0]);
                (*l_3514) = p_3766->g_3512;
                for (p_3766->g_194 = 0; (p_3766->g_194 <= 0); p_3766->g_194 += 1)
                { /* block id: 1412 */
                    char1 l_3520 = make_char1(1L);
                    int i;
                    if (l_3515)
                    { /* block id: 1413 */
                        (*p_3766->g_106) ^= make_int1(p_3766->g_3516.z).x;
                        (*l_3293) &= (*p_3766->g_106);
                        (*l_3293) = ((*l_3293) ^ make_char3(0xCDL, (safe_lshift_func_int8_t_s_s(l_3519.x, 5)), make_char2(l_3520.x, l_3520.x).x).y);
                    }
                    else
                    { /* block id: 1417 */
                        return p_3766->g_2712.x;
                    }
                    if ((*l_3293))
                        continue;
                }
            }
            (*p_3766->g_1066) = &l_3483;
            (*l_3293) = (&p_3766->g_3241[2][1][1] == (l_3521 = l_3521));
            (**p_3766->g_1066) = make_int4(0xA34071E9L, ((((safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((safe_mul_func_int64_t_s_s(l_3530[4], (!(*l_3293)))), (((safe_unary_minus_func_uint8_t_u(l_3532)) , ((safe_sub(make_ulong3((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint32_t_u_s(((*p_3766->g_2781) , ((safe_unary_minus_func_int16_t_s(((*l_3551) = ((safe_lshift_func_int64_t_s_s((safe_div_func_uint32_t_u_u(((safe_add(make_uint1(((((**p_3766->g_446) = (***p_3766->g_2025)) != l_3546) , ((*l_3293) != ((l_3547 , ((0UL | l_3548) | (*l_3293))) || (*p_3766->g_106))))), make_uint1(0UL)))).x, 0x374484A8L)), 35)) , (*l_3293))))) ^ p_3766->g_316.y)), (*p_3766->g_106))), (*l_3293))), 0x05A4AAC46587A760LL, 0x0B9C45D188285970LL), make_ulong3(0x0273394210AB9CA2LL, 0x0273394210AB9CA2LL, 0x0273394210AB9CA2LL)))).z) < l_3454.x))), p_3766->g_1312.x)) , p_3766->g_3552) != l_3554) ^ (*l_3293)), 0L, l_3555[1][0]).z;
        }
    }
    else
    { /* block id: 1430 */
        int8_t l_3561 = 0x97L;
        int32_t l_3564 = (-5L);
        uint16_t *l_3565[9] = {nullptr, &p_3766->g_2073, nullptr, &p_3766->g_2073, nullptr, &p_3766->g_2073, nullptr, &p_3766->g_2073, nullptr};
        int32_t *l_3579 = &p_3766->g_66;
        int8_t ****l_3587 = &p_3766->g_446;
        uchar2 l_3635 = make_uchar2(0x38L, 255UL);
        int32_t l_3651 = 0L;
        int32_t l_3654 = 1L;
        int16_t *l_3682 = nullptr;
        uint8_t *l_3690[2];
        int32_t *l_3752 = nullptr;
        int32_t *l_3753 = nullptr;
        int32_t *l_3754 = nullptr;
        int32_t *l_3755 = &l_3258;
        int32_t *l_3756 = nullptr;
        int32_t *l_3757 = nullptr;
        int32_t *l_3758 = &l_3564;
        int32_t *l_3759 = &l_3290;
        int32_t *l_3760 = nullptr;
        int32_t *l_3761 = &l_3261;
        int32_t *l_3762[8][4];
        ulong2 l_3763 = make_ulong2(0UL, 0x6CFD2AAB7BF93C25LL);
        int i, j;
        for (int i = 0; i < 2; i++)
            l_3690[i] = nullptr;
        for (int i = 0; i < 8; i++)
        {
            for (int j = 0; j < 4; j++)
                l_3762[i][j] = &p_3766->g_2956;
        }
        if ((l_3556 == nullptr))
        { /* block id: 1431 */
            uint8_t **l_3559 = &l_3311;
            int32_t l_3560 = (-1L);
            uint64_t l_3566[9] = {18446744073709551615UL, 0xA82D269A62DAC39FLL, 18446744073709551615UL, 0xA82D269A62DAC39FLL, 18446744073709551615UL, 0xA82D269A62DAC39FLL, 18446744073709551615UL, 0xA82D269A62DAC39FLL, 18446744073709551615UL};
            int32_t l_3571 = 5L;
            int16_t l_3578 = (-1L);
            int8_t ****l_3585 = &p_3766->g_446;
            uint32_t l_3610 = 4294967291UL;
            int32_t l_3641 = (-1L);
            int32_t l_3650 = (-4L);
            int32_t l_3652 = 7L;
            int32_t l_3653 = 0xECA0ADB7L;
            int32_t l_3655 = 0x7003B070L;
            int32_t l_3656 = 0L;
            int32_t l_3657 = 0xD7551396L;
            int32_t l_3658 = 0xA1A16B74L;
            int8_t l_3675 = 0xC0L;
            uint4 l_3692 = make_uint4(0xD1C9BFA9L, 0UL, 0xD1C9BFA9L, 0UL);
            int32_t l_3700 = 0x2A6CD348L;
            int8_t l_3721 = 0x85L;
            int i;
            if ((((safe_add_func_uint64_t_u_u(((((((*p_3766->g_3552) = (((((nullptr != l_3559) || (0L >= ((l_3560 || (0x7037L <= (((((**p_3766->g_2688) = func_30(l_3561, p_3766)) != (((safe_add_func_uint64_t_u_u((*l_3293), (l_3564 ^= 0x18AF62F62330F086LL))) > 1L) , nullptr)) ^ l_3561) >= l_3561))) , l_3561))) && (*p_3766->g_132)) , 255UL) , l_3565[5])) != l_3565[5]) , 0xC5L) > (-4L)) , l_3566[6]), 0x401A71B0934BFCA9LL)) > 0xCAL) , 0x11814A66L))
            { /* block id: 1435 */
                return l_3561;
            }
            else
            { /* block id: 1437 */
                int8_t l_3576[6][1] = {{(-3L)}, {(-3L)}, {(-3L)}, {(-3L)}, {(-3L)}, {(-3L)}};
                int32_t l_3577 = 0L;
                int i, j;
                l_3579 = &l_3560;
            }
            for (p_3766->g_275 = (-24); (p_3766->g_275 <= 54); ++p_3766->g_275)
            { /* block id: 1446 */
                int8_t *****l_3586 = &p_3766->g_2025;
                int32_t l_3590 = 0x3D30447FL;
                for (p_3766->g_2838 = 0; (p_3766->g_2838 < (-17)); --p_3766->g_2838)
                { /* block id: 1449 */
                    return p_3766->g_311.x;
                }
                (*l_3293) |= (l_3584 == (l_3587 = ((*l_3586) = l_3585)));
                (*l_3293) = ((safe_lshift_func_uint8_t_u_u(((*l_3579) != (-7L)), l_3590)) > ((safe_sub_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_u((((7UL < (((safe_unary_minus_func_uint8_t_u((safe_add_func_uint16_t_u_u(l_3566[5], ((safe_div_func_int16_t_s_s(((safe_lshift_func_uint64_t_u_u((+((make_ulong2(l_3602.z, l_3602.z) | make_ulong2(p_3766->g_3603.x, p_3766->g_3603.x))).y), ((safe_unary_minus_func_uint16_t_u(1UL)) > (+(*p_3766->g_132))))) < ((p_3766->g_310.y = ((safe_rshift_func_uint64_t_u_s((*l_3579), (make_long4(0x7BDA2250544DF11ELL, (safe_rshift_func_int8_t_s_u(l_3609, 2)), (-2L), l_3590).w , 1L))) == p_3766->g_745.z)) > 4294967295UL)), (*l_3579))) , (*l_3579)))))) , 0x4B2775F8L) , 0xDEL)) && 4UL) && l_3590), (*l_3293))) == 1L), 0x33L)) >= l_3610));
            }
            (*l_3579) |= (nullptr != &p_3766->g_1575);
            for (p_3766->g_2159 = 26; (p_3766->g_2159 >= 60); p_3766->g_2159 = safe_add_func_uint32_t_u_u(p_3766->g_2159, 7))
            { /* block id: 1461 */
                int4 l_3615 = make_int4(0x40C694B4L, (-3L), 0x40C694B4L, (-3L));
                int16_t *l_3623 = nullptr;
                int16_t *l_3624 = &p_3766->g_135;
                uint32_t l_3633[10][1][4] = {{{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}, {{0UL, 0x0242F93AL, 0UL, 0x0242F93AL}}};
                int32_t l_3640 = (-8L);
                int32_t l_3642 = (-5L);
                int32_t *l_3644 = &p_3766->g_1453[3];
                int32_t *l_3645 = nullptr;
                int32_t *l_3646 = nullptr;
                int32_t *l_3647 = &l_3290;
                int32_t *l_3648 = nullptr;
                int32_t *l_3649[4][7] = {{nullptr, nullptr, &l_3560, nullptr, &l_3560, nullptr, nullptr}, {nullptr, nullptr, &l_3560, nullptr, &l_3560, nullptr, nullptr}, {nullptr, nullptr, &l_3560, nullptr, &l_3560, nullptr, nullptr}, {nullptr, nullptr, &l_3560, nullptr, &l_3560, nullptr, nullptr}};
                uint32_t l_3685 = 0x6E561EA1L;
                uint8_t *l_3691[2];
                short4 l_3695 = make_short4(0x97F4L, (-2L), 0x97F4L, (-2L));
                int i, j, k;
                for (int i = 0; i < 2; i++)
                    l_3691[i] = &l_3471;
                (*l_3579) = (l_3559 == ((safe_mod_func_int16_t_s_s(((make_int4(l_3615.z, l_3615.z, l_3615.z, l_3615.z).x | (((((safe_add(((safe_lshift(make_long3(p_3766->g_3620.y, p_3766->g_3620.y, p_3766->g_3620.y), make_long3((((l_3642 = ((l_3641 ^= (l_3640 = (safe_div_func_int64_t_s_s(((l_3560 , ((*l_3624) = 1L)) ^ ((safe_mod_func_int16_t_s_s(((((*l_3293) = (((safe_mod_func_int32_t_s_s(((safe_rshift_func_int32_t_s_s((safe_add_func_uint32_t_u_u(l_3633[0][0][0], ((*l_3293) && ((make_uchar3(p_3766->g_3634.y, p_3766->g_3634.y, p_3766->g_3634.y) ^ ((~((((make_uchar3(l_3635.y, l_3635.y, l_3635.y) ^ make_uchar3(((**l_3559) = 0x19L), ((~(safe_lshift_func_uint8_t_u_s(0x62L, ((((safe_mod_func_int8_t_s_s((0x5699354FBC6739B9LL || (*l_3579)), l_3578)) | (*l_3579)) == (-7L)) > 0x12F2L)))) || 0x592CL), (*l_3579)))) ^ make_uchar3(0x38L, 0x38L, 0x38L))))))).z))), 21)) , 0L), 1UL)) , 18446744073709551610UL) == l_3615.y)) , (*l_3579)) | l_3571), (-1L))) , p_3766->g_2538.z)), l_3566[6])))) == p_3766->g_1063.z)) >= l_3643) >= l_3571), l_3566[4], (*l_3579))))), make_long3(0L, 0L, 0L)))) ^ make_long3((-7L), (-7L), (-7L)))).z , (*l_3293))) | l_3633[0][0][0]), p_3766->g_933.x)) , (*p_3766->g_1251)));
                (*p_3766->g_1066) = &l_3641;
                p_3766->g_3659--;
                for (l_3656 = 2; (l_3656 >= 0); l_3656 -= 1)
                { /* block id: 1473 */
                    uint8_t l_3668[3];
                    int16_t *l_3683 = &p_3766->g_3076;
                    int32_t l_3698 = 0x8F95A39AL;
                    int8_t ***l_3745 = &p_3766->g_447;
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_3668[i] = 0xBDL;
                    if ((*l_3579))
                        break;
                    (*p_3766->g_1066) = func_37((safe_rshift_func_uint32_t_u_u(1UL, ((safe_rshift_func_int64_t_s_u((((*l_3293) = ((((l_3675 |= ((-8L) != (safe_add_func_uint16_t_u_u((0xDB15L & 0x447BL), ((l_3668[1] , (safe_sub_func_uint8_t_u_u(((*l_3311)--), (((p_3766->g_3133.z && 0x9E86L) == (safe_mod_func_uint16_t_u_u(((*l_3647) , p_3766->g_1634.z), 0x6488L))) <= 0x2637L)))) , (-9L)))))) && l_3668[1]) <= (*l_3293)) >= 0L)) , l_3652), (*l_3579))) || l_3668[1]))), l_3658, p_3766);
                    if ((safe_lshift_func_int8_t_s_u(((*l_3579) = l_3668[1]), (((*l_3293) = make_ushort4(p_3766->g_3678.y, p_3766->g_3678.y, p_3766->g_3678.y, p_3766->g_3678.y).w) == (!((*p_3766->g_132) & make_ushort3(p_3766->g_3679.x, p_3766->g_3679.x, p_3766->g_3679.x).x))))))
                    { /* block id: 1481 */
                        (**p_3766->g_1066) = (safe_rshift_func_uint8_t_u_s(((l_3683 = l_3682) == l_3682), 6));
                        if (p_3766->g_15)
                            goto lbl_3684;
                    }
                    else
                    { /* block id: 1485 */
                        uint16_t l_3688 = 0xA4EEL;
                        uint3 l_3689 = make_uint3(0xAFC69FA8L, 0x88E8DE12L, 0xAFC69FA8L);
                        int32_t ***l_3697 = &l_3302;
                        int32_t ****l_3696[4][6] = {{&l_3697, &l_3697, &l_3697, &l_3697, &l_3697, &l_3697}, {&l_3697, &l_3697, &l_3697, &l_3697, &l_3697, &l_3697}, {&l_3697, &l_3697, &l_3697, &l_3697, &l_3697, &l_3697}, {&l_3697, &l_3697, &l_3697, &l_3697, &l_3697, &l_3697}};
                        int i, j;
                        (*l_3644) = ((*l_3644) , ((l_3685 == (safe_rshift_func_int16_t_s_s(((*l_3579) < (l_3688 == ((((make_uint4(l_3689.x, l_3689.x, l_3689.x, l_3689.x) & make_uint4(((l_3690[0] == l_3691[0]) <= 4294967295UL), make_uint3(l_3692.y, l_3692.y, l_3692.y).z, 0x23C689B7L, (((((make_uint1((safe_add_func_int8_t_s_s(((((*l_3683) = make_short4(l_3695.x, l_3695.x, l_3695.x, l_3695.x).z) < (l_3698 = ((nullptr != l_3696[1][0]) > 0x10B1B941L))) && 0xED68367C9252E57ELL), l_3699[3][0][3]))) ^ make_uint1(0x32C64FC7L))) | make_uint1(9UL))).x >= 4294967295UL)))) ^ make_uint4(0x5E8AD480L, 0x5E8AD480L, 0x5E8AD480L, 0x5E8AD480L))).w)), 12))) == 0xE95580D957DEAFFBLL));
                        return p_3766->g_3028.z;
                    }
                    for (l_3610 = 0; (l_3610 <= 2); l_3610 += 1)
                    { /* block id: 1493 */
                        uint32_t l_3706 = 0xCA86B7F7L;
                        long4 l_3709 = make_long4(0x68BEA3C830416393LL, 0x027655B96C97FDCCLL, 0x68BEA3C830416393LL, 0x027655B96C97FDCCLL);
                        uint64_t l_3719 = 1UL;
                        int32_t *l_3749[3][9] = {{&p_3766->g_66, &l_3642, &p_3766->g_66, &l_3652, nullptr, nullptr, nullptr, nullptr, nullptr}, {&p_3766->g_66, &l_3642, &p_3766->g_66, &l_3652, nullptr, nullptr, nullptr, nullptr, nullptr}, {&p_3766->g_66, &l_3642, &p_3766->g_66, &l_3652, nullptr, nullptr, nullptr, nullptr, nullptr}};
                        int i, j, k;
                        (*l_3644) = (l_3700 , ((safe_add_func_uint32_t_u_u(make_uint3(4294967293UL, (safe_unary_minus_func_uint64_t_u((l_3706 = (safe_mul_func_int8_t_s_s(l_3571, l_3668[1]))))), 0xF24E963FL).x, (*l_3579))) | (((safe_sub_func_uint16_t_u_u(((make_long4(((~make_long1(l_3709.y))).x, 0x50A7E5C26E1C05ADLL, make_long2(0x77555DD1EE389250LL, 0L).y, 3L).z != (((*l_3647) = ((p_3766->g_1228.z == ((((safe_mod_func_int16_t_s_s(0x72EFL, (safe_mod_func_int32_t_s_s((safe_div_func_uint32_t_u_u((((4L != ((safe_div_func_uint16_t_u_u((((safe_unary_minus_func_uint32_t_u(p_3766->g_724.y)) | l_3578) > 0L), (*l_3644))) || l_3698)) != (*p_3766->g_132)) , l_3719), p_3766->g_3477.y)), p_3766->g_3720)))) , l_3578) > (*l_3579)) == (*l_3293))) ^ 1UL)) != 4L)) >= l_3655), (*l_3579))) == 0UL) , (*l_3579))));
                    }
                }
            }
        }
        else
        { /* block id: 1504 */
            int8_t *l_3750 = nullptr;
            (*p_3766->g_1066) = (*p_3766->g_1066);
        }
        (*l_3293) ^= l_3751;
        l_3763.y--;
    }
    return p_3766->g_724.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_3766->g_2885 p_3766->g_999 p_3766->g_194 p_3766->g_2898 p_3766->g_1720 p_3766->g_2795 p_3766->g_2910 p_3766->g_2911 p_3766->g_1453 p_3766->g_132 hip_const_5 p_3766->g_310 p_3766->g_1618 p_3766->g_561 p_3766->g_2965 p_3766->g_64 p_3766->g_3028 p_3766->g_2841 p_3766->g_2705 p_3766->g_97 p_3766->g_1066 p_3766->g_1480 p_3766->g_673 p_3766->g_1880 p_3766->g_2686 p_3766->g_2688 p_3766->g_606 p_3766->g_607 p_3766->g_501 p_3766->g_106 p_3766->g_15 hip_const_4 p_3766->g_19 hip_const_1 hip_const_3 p_3766->g_66 p_3766->g_1474 p_3766->g_2814 p_3766->g_2592 p_3766->g_2780 p_3766->g_2781 p_3766->g_2205 p_3766->g_1919 p_3766->g_3174 p_3766->g_3228 p_3766->g_2159 p_3766->g_542
 * writes: p_3766->g_999 p_3766->g_194 p_3766->g_1720 p_3766->g_1453 p_3766->g_1618 p_3766->g_561 p_3766->g_64 p_3766->g_1880 p_3766->g_2841 p_3766->g_106 p_3766->g_2159 p_3766->g_2025 p_3766->g_2687 p_3766->g_3076 p_3766->g_501 p_3766->g_66 p_3766->g_97 p_3766->g_1377 p_3766->g_3228 p_3766->g_3241
 */
__device__ uint32_t  func_4(uint64_t  p_5, uint8_t  p_6, int32_t  p_7, struct S0 * p_3766)
{ /* block id: 1134 */
    ushort4 l_2886 = make_ushort4(1UL, 0x83B3L, 1UL, 0x83B3L);
    int32_t l_2887 = 0xDF20BF3DL;
    int32_t l_2888 = (-1L);
    uint32_t l_2891 = 1UL;
    int1 l_2953 = make_int1((-1L));
    int32_t ***l_2968 = &p_3766->g_2841[2];
    int64_t l_3003 = 0x437C55C4D8E0A0C5LL;
    int32_t l_3016 = 0x34FACF28L;
    int64_t ****l_3046 = &p_3766->g_2688;
    uint16_t l_3050 = 0x628CL;
    uint64_t *****l_3051 = &p_3766->g_2592;
    int8_t ****l_3052 = &p_3766->g_446;
    int32_t l_3059 = 0xC43A0957L;
    uint64_t *l_3060 = nullptr;
    int32_t *l_3061[3][7] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
    int8_t l_3062 = 0x03L;
    uint32_t l_3063 = 0xEDF63201L;
    uint16_t l_3066 = 0xEE46L;
    uint32_t l_3067 = 0UL;
    short4 l_3070 = make_short4(0L, 0x14ACL, 0L, 0x14ACL);
    int16_t l_3071 = 1L;
    uint8_t ***l_3072 = &p_3766->g_352[1][0];
    int8_t *l_3073 = nullptr;
    int8_t *l_3074 = nullptr;
    int8_t *l_3075[4];
    uint8_t *l_3077 = nullptr;
    uint8_t *l_3078 = &p_3766->g_999;
    uint8_t l_3079 = 255UL;
    uint8_t l_3080 = 0xCFL;
    int3 l_3117 = make_int3(0x6B2EAC3DL, 0xA2D582C4L, 0x6B2EAC3DL);
    short1 l_3173 = make_short1(0x1800L);
    ushort2 l_3178 = make_ushort2(65535UL, 9UL);
    int8_t l_3211 = 0L;
    int i, j;
    for (int i = 0; i < 4; i++)
        l_3075[i] = nullptr;
    if ((safe_div_func_int16_t_s_s(7L, ((make_ushort4(p_3766->g_2885.z, p_3766->g_2885.z, p_3766->g_2885.z, p_3766->g_2885.z) ^ make_ushort4(l_2886.x, l_2886.x, l_2886.x, l_2886.x))).x)))
    { /* block id: 1135 */
        int32_t l_2889[5][10] = {{0x24BEDF0EL, (-1L), 0x24BEDF0EL, 1L, (-1L), 0x3C46E4B7L, 0xBEDDD42DL, 0xEE217BC5L, 0x031487F5L, 6L}, {0x24BEDF0EL, (-1L), 0x24BEDF0EL, 1L, (-1L), 0x3C46E4B7L, 0xBEDDD42DL, 0xEE217BC5L, 0x031487F5L, 6L}, {0x24BEDF0EL, (-1L), 0x24BEDF0EL, 1L, (-1L), 0x3C46E4B7L, 0xBEDDD42DL, 0xEE217BC5L, 0x031487F5L, 6L}, {0x24BEDF0EL, (-1L), 0x24BEDF0EL, 1L, (-1L), 0x3C46E4B7L, 0xBEDDD42DL, 0xEE217BC5L, 0x031487F5L, 6L}, {0x24BEDF0EL, (-1L), 0x24BEDF0EL, 1L, (-1L), 0x3C46E4B7L, 0xBEDDD42DL, 0xEE217BC5L, 0x031487F5L, 6L}};
        int32_t *l_2890 = &l_2887;
        int3 l_2894 = make_int3(8L, (-1L), 8L);
        short4 l_2924 = make_short4((-2L), 0x1BE0L, (-2L), 0x1BE0L);
        int32_t ***l_2966 = &p_3766->g_2841[7];
        uint32_t l_3002 = 0UL;
        int64_t *l_3039 = nullptr;
        int64_t *l_3040[5] = {nullptr, &p_3766->g_15, nullptr, &p_3766->g_15, nullptr};
        uint32_t l_3041[1][9][6] = {{{6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}, {6UL, 0UL, 4294967295UL, 4294967295UL, 0UL, 6UL}}};
        int16_t l_3044 = 5L;
        int64_t ****l_3045 = &p_3766->g_2688;
        uint64_t *l_3049 = &p_3766->g_2159;
        int8_t *****l_3053 = nullptr;
        int8_t *****l_3054 = &p_3766->g_2025;
        int i, j, k;
lbl_2964:
        --l_2891;
        for (p_3766->g_999 = 1; (p_3766->g_999 <= 4); p_3766->g_999 += 1)
        { /* block id: 1139 */
            uint16_t l_2934 = 0x86F8L;
            int32_t l_2951 = 5L;
            int32_t l_2954 = 0x9BF70663L;
            int32_t l_2955 = 0x7DABC0E0L;
            int32_t l_2958 = 1L;
            int32_t l_2959 = (-1L);
            int32_t l_2960 = 0xC8D02FD3L;
            int4 l_3029 = make_int4(0x7D36365DL, 0x6BCA1D92L, 0x7D36365DL, 0x6BCA1D92L);
            int32_t *l_3030[1];
            int i;
            for (int i = 0; i < 1; i++)
                l_3030[i] = nullptr;
            (*l_2890) &= make_int3(l_2894.x, l_2894.x, l_2894.x).z;
            for (p_3766->g_194 = 1; (p_3766->g_194 <= 4); p_3766->g_194 += 1)
            { /* block id: 1143 */
                int16_t l_2907[3];
                int32_t ***l_2912 = &p_3766->g_2841[(p_3766->g_999 + 4)];
                int32_t l_2949 = 0xF826DF30L;
                int32_t l_2950 = 1L;
                int32_t l_2952[10][8][3] = {{{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}, {{0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}, {0x053A334EL, 1L, 0xF48C78C1L}}};
                int32_t l_2957 = 2L;
                uint16_t l_2961 = 0UL;
                int i, j, k;
                for (int i = 0; i < 3; i++)
                    l_2907[i] = 0x53A2L;
                for (l_2888 = 0; (l_2888 <= 4); l_2888 += 1)
                { /* block id: 1146 */
                    uint32_t l_2897 = 18446744073709551608UL;
                    uint32_t l_2933 = 0xE07C6EE3L;
                    int32_t *l_2939 = nullptr;
                    int32_t *l_2940 = nullptr;
                    int32_t *l_2941 = nullptr;
                    int32_t *l_2942 = nullptr;
                    int32_t *l_2943 = nullptr;
                    int32_t *l_2944 = &p_3766->g_1453[4];
                    int32_t l_2945[9] = {0x39B17DDCL, 1L, 0x39B17DDCL, 1L, 0x39B17DDCL, 1L, 0x39B17DDCL, 1L, 0x39B17DDCL};
                    int32_t *l_2946 = &p_3766->g_1453[4];
                    int32_t *l_2947 = nullptr;
                    int32_t *l_2948[1];
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_2948[i] = nullptr;
                    if ((safe_rshift_func_uint32_t_u_s(l_2897, make_int3(p_3766->g_2898.z, p_3766->g_2898.z, p_3766->g_2898.z).y)))
                    { /* block id: 1147 */
                        uint16_t *l_2903 = nullptr;
                        uint16_t *l_2904 = nullptr;
                        uint16_t *l_2905 = nullptr;
                        uint16_t *l_2906[2][1];
                        int32_t l_2913 = 0xA92FD8E7L;
                        int32_t *l_2914 = nullptr;
                        int32_t *l_2915 = nullptr;
                        int32_t *l_2916 = nullptr;
                        int32_t *l_2917 = &p_3766->g_1453[2];
                        int i, j;
                        for (int i = 0; i < 2; i++)
                        {
                            for (int j = 0; j < 1; j++)
                                l_2906[i][j] = nullptr;
                        }
                        (*l_2917) ^= (safe_mul_func_int64_t_s_s(((safe_add_func_uint64_t_u_u(((p_3766->g_1720.y &= (l_2887 == (0x1FD02636B3A374EELL == l_2897))) ^ (l_2907[1] &= p_3766->g_2795.x)), 0L)) < 0x24B5L), (((safe_rshift(((make_short2(p_3766->g_2910.x, p_3766->g_2910.x) & make_short2(p_3766->g_2911.y, p_3766->g_2911.y))), make_short2(0x5EDAL, ((*l_2890) != ((l_2912 != ((+(!(l_2897 | p_6))) , &p_3766->g_2841[(p_3766->g_999 + 4)])) >= l_2913)))))).x , l_2913)));
                        (*l_2890) = (safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((safe_div_func_int16_t_s_s(0xF7D9L, ((make_short3(l_2924.z, l_2924.z, l_2924.z) ^ make_short3(0xE1B6L, (p_7 | 0x71AC5305L), 0x1F92L))).y)), ((safe_div_func_uint16_t_u_u((*l_2890), (safe_mod_func_uint64_t_u_u(l_2897, ((safe_div_func_int16_t_s_s((((safe_sub(make_uint4(0UL, 0x03664D96L, 0UL, (p_6 | ((*p_3766->g_132) | l_2933))), make_uint4(0xD45A69CCL, (l_2887 ^ l_2934), l_2897, p_3766->g_194)))).x , l_2933), p_6)) && p_5))))) || 18446744073709551612UL))), p_7));
                        (*l_2917) &= (safe_sub_func_int32_t_s_s(((safe_rshift_func_int32_t_s_u(p_5, p_7)) , (*l_2890)), make_int3(p_5, 3L, 0L).z));
                    }
                    else
                    { /* block id: 1153 */
                        if (p_6)
                            break;
                        return p_3766->g_310.x;
                    }
                    l_2961--;
                }
                if (l_2907[0])
                    continue;
            }
            for (p_3766->g_1618 = 0; (p_3766->g_1618 <= 4); p_3766->g_1618 += 1)
            { /* block id: 1163 */
                ushort2 l_2990 = make_ushort2(0UL, 0x6289L);
                int32_t l_3004 = 0xD83A799AL;
                int32_t l_3009 = (-3L);
                int i;
                for (l_2958 = 4; (l_2958 >= 0); l_2958 -= 1)
                { /* block id: 1166 */
                    ushort3 l_2981 = make_ushort3(0UL, 0xA6CCL, 0UL);
                    int32_t l_3008 = 0x01066D7BL;
                    int32_t l_3017 = (-1L);
                    uint16_t l_3018 = 1UL;
                    int i;
                    if (p_3766->g_1453[p_3766->g_999])
                        break;
                    for (p_7 = 1; (p_7 >= 0); p_7 -= 1)
                    { /* block id: 1170 */
                        if (l_2958)
                            goto lbl_2964;
                    }
                    for (p_3766->g_561 = 0; (p_3766->g_561 <= 4); p_3766->g_561 += 1)
                    { /* block id: 1175 */
                        int32_t ****l_2967 = &l_2966;
                        int8_t *l_3005 = &hip_const_3[6];
                        int8_t *l_3006[3][7][6] = {{{&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}}, {{&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}}, {{&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}, {&p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr, &p_3766->g_2838, nullptr}}};
                        int32_t l_3007 = 9L;
                        int32_t *l_3010 = &l_3009;
                        int32_t *l_3011 = &p_3766->g_66;
                        int32_t *l_3012 = &p_3766->g_1453[4];
                        int32_t *l_3013 = nullptr;
                        int32_t *l_3014[2][1];
                        int16_t l_3015 = 6L;
                        int i, j, k;
                        for (int i = 0; i < 2; i++)
                        {
                            for (int j = 0; j < 1; j++)
                                l_3014[i][j] = &p_3766->g_2956;
                        }
                        p_3766->g_1453[(p_3766->g_561 + 1)] = (make_char4(p_3766->g_2965.z, p_3766->g_2965.z, p_3766->g_2965.z, p_3766->g_2965.z).z >= (p_6 = p_6));
                        (*l_2890) = ((((*l_2967) = l_2966) != l_2968) | make_long3(0xBA625846C946996ELL, (-8L), 0x8B5B46442CE38473LL).z);
                        l_3009 |= (safe_lshift_func_uint16_t_u_u(((l_3008 = (p_3766->g_1453[p_3766->g_999] = (l_3007 ^= ((safe_add_func_int8_t_s_s(((p_7 < (safe_div_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(((safe_mul_func_int32_t_s_s(p_5, (((((*l_2890) = ((((make_ushort3(l_2981.y, l_2981.y, l_2981.y) ^ ((safe_rshift(((((safe_sub(make_ushort3((p_7 >= (((safe_rshift_func_int64_t_s_s((*l_2890), 20)) , (*p_3766->g_132)) , (safe_lshift_func_int64_t_s_u(1L, 7)))), 0x5323L, 1UL), make_ushort3(0xE3C5L, make_ushort2(l_2990.y, l_2990.y).x, 0xF8EBL)))) & ((safe_sub(make_ushort3(1UL, ((l_3004 = (safe_lshift_func_int16_t_s_u((safe_unary_minus_func_uint32_t_u((safe_sub_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((((p_5 && (safe_div_func_int16_t_s_s(make_short4(p_3766->g_1453[p_3766->g_999], 0xE046L, p_7, (*l_2890)).x, 0x7A30L))) , l_3002) ^ p_7), l_3003)), 0UL)))), 6))) | 65535UL), 0x3434L), make_ushort3(0xBE69L, 0xBE69L, 0xBE69L)))))), make_ushort3(16, 16, 16)))))).y > 0x2876L) | p_6)) >= 4294967291UL) >= 255UL) ^ p_5))) ^ l_2981.z), p_7)), p_5)), 0x493D15E7L))) <= p_7), p_6)) & 0x6681L)))) != p_6), 2));
                        ++l_3018;
                    }
                    for (p_3766->g_64 = 1; (p_3766->g_64 <= 4); p_3766->g_64 += 1)
                    { /* block id: 1190 */
                        uint32_t *l_3023[9];
                        int i;
                        for (int i = 0; i < 9; i++)
                            l_3023[i] = &p_3766->g_194;
                        p_7 = (l_3004 != (safe_lshift_func_uint8_t_u_s(((p_3766->g_1880.x = p_6) >= ((safe_lshift(((safe_div(make_int4(p_3766->g_3028.z, p_3766->g_3028.z, p_3766->g_3028.z, p_3766->g_3028.z), make_int4(l_3029.x, l_3029.x, l_3029.x, l_3029.x)))), make_int4(32, 32, 32, 32)))).x), 1)));
                        (*l_2968) = p_3766->g_2841[(p_3766->g_999 + 4)];
                    }
                }
            }
            l_2888 &= (*l_2890);
        }
        (*p_3766->g_1066) = (((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(0x562CL, ((make_uint2((safe_rshift_func_int8_t_s_u(((safe_mod_func_int16_t_s_s((l_3016 ^ (((*l_2890) = (l_3041[0][4][0] = (&l_3016 != nullptr))) , ((((0xECF41B2DEBF68C54LL > (((p_5 <= make_long4((-8L), (-1L), ((p_5 , 0L) >= (safe_mod_func_int8_t_s_s(0L, p_7))), 0x4C5737349066F9C5LL).x) == p_5) >= p_7)) <= l_3044) != (-8L)) <= 2L))), p_7)) <= p_7), 4)), 0x7EB93281L).y , l_3045) != l_3046))), p_3766->g_2705.y)) >= p_5) , (**l_2966));
        p_7 &= ((safe_sub_func_uint8_t_u_u((((l_2894.z ^= (((((*l_3049) = 0x378DFF322139DDCFLL) > ((((*l_2890) = (l_3050 ^ (((((&p_3766->g_2592 != (l_3051 = &p_3766->g_2592)) , (((*l_3054) = l_3052) == l_3052)) && ((safe_mod_func_int16_t_s_s(0L, ((safe_lshift_func_int8_t_s_s((*l_2890), (*l_2890))) , 65535UL))) != 0xB399L)) , l_3059) | p_6))) < 1UL) && 0x49CAL)) , 18446744073709551615UL) > l_2888)) , l_3049) != l_3060), p_6)) ^ p_3766->g_1480.y);
    }
    else
    { /* block id: 1208 */
        return p_3766->g_673.x;
    }
    l_3063++;
    if (p_6)
    { /* block id: 1212 */
        return p_3766->g_1880.y;
    }
    else
    { /* block id: 1214 */
        (*p_3766->g_2686) = l_3046;
    }
    if ((((l_3080 ^= (((l_3066 = (-6L)) , (((l_3079 = (l_3067 , (safe_mod_func_uint8_t_u_u(make_uchar3(246UL, ((make_short4(0xD543L, make_short3(l_3070.x, l_3070.x, l_3070.x).y, (-5L), 2L).y | (*p_3766->g_132)) <= ((*l_3078) = (((***l_3046) != (***l_3046)) < (((p_3766->g_3076 = (&p_3766->g_352[0][6] == (l_3071 , l_3072))) != p_6) >= p_7)))), p_6).x, p_7)))) , 0x5A326539L) , p_7)) == p_6)) | 0xA0347A65L) >= p_5))
    { /* block id: 1222 */
        int16_t *****l_3083 = nullptr;
        int32_t l_3090 = 0L;
        for (p_3766->g_501 = (-13); (p_3766->g_501 == 33); ++p_3766->g_501)
        { /* block id: 1225 */
            uint16_t *l_3085[4];
            uint16_t **l_3084[9];
            uint16_t ***l_3086 = &l_3084[5];
            uint16_t **l_3088 = nullptr;
            uint16_t ***l_3087 = &l_3088;
            int32_t l_3089 = (-4L);
            int i;
            for (int i = 0; i < 4; i++)
                l_3085[i] = nullptr;
            for (int i = 0; i < 9; i++)
                l_3084[i] = &l_3085[1];
            if (p_5)
                break;
            p_7 ^= (l_3083 != &p_3766->g_1575);
            (*l_3087) = ((*l_3086) = l_3084[5]);
            (*p_3766->g_1066) = func_37(l_3089, l_3089, p_3766);
        }
        l_3090 ^= p_6;
    }
    else
    { /* block id: 1233 */
        int3 l_3091 = make_int3(0x536951D9L, 1L, 0x536951D9L);
        int4 l_3097 = make_int4(0x885050B4L, 0x251CAD82L, 0x885050B4L, 0x251CAD82L);
        int3 l_3120 = make_int3((-4L), 0xD1621B5CL, (-4L));
        ulong2 l_3132 = make_ulong2(18446744073709551615UL, 1UL);
        uint64_t ****l_3144 = &p_3766->g_1377;
        uint8_t l_3154 = 0x02L;
        int32_t *l_3192 = &l_2888;
        uint8_t ****l_3193 = &l_3072;
        uint32_t l_3209 = 18446744073709551615UL;
        int i;
        p_7 |= (l_3091.y ^= 1L);
        p_7 = l_3091.x;
        for (p_7 = 0; (p_7 <= 9); p_7 += 1)
        { /* block id: 1239 */
            uint8_t l_3092 = 0xF8L;
            int8_t *l_3096 = &hip_const_3[4];
            for (p_3766->g_3076 = 7; (p_3766->g_3076 >= 0); p_3766->g_3076 -= 1)
            { /* block id: 1242 */
                int8_t *l_3095 = &hip_const_3[7];
                int i;
                ++l_3092;
                (*p_3766->g_1066) = func_91(l_3095, l_3096, p_3766);
                for (l_3059 = 9; (l_3059 >= 0); l_3059 -= 1)
                { /* block id: 1247 */
                    int i;
                    (**l_2968) = (**l_2968);
                }
                if ((*p_3766->g_106))
                    continue;
            }
        }
        if (make_int2(l_3097.z, l_3097.z).y)
        { /* block id: 1253 */
            int32_t l_3098 = 4L;
            return l_3098;
        }
        else
        { /* block id: 1255 */
            int32_t l_3102 = (-1L);
            int32_t l_3108 = 0x108B80B5L;
            int32_t l_3109 = 9L;
            int32_t l_3110[5] = {0x76454D48L, 0x3DC99E3AL, 0x76454D48L, 0x3DC99E3AL, 0x76454D48L};
            int32_t l_3115 = 1L;
            short1 l_3148 = make_short1(0xE20EL);
            uint32_t l_3166 = 0UL;
            int32_t l_3177 = 0x252D19AFL;
            uint1 l_3183 = make_uint1(1UL);
            int16_t l_3227 = 0x9365L;
            int i;
            for (l_2888 = 3; (l_2888 >= 1); l_2888 -= 1)
            { /* block id: 1258 */
                int16_t *l_3103 = nullptr;
                int16_t *l_3104 = &l_3071;
                uint16_t *l_3107[7][7][5] = {{{nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}}, {{nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}}, {{nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}}, {{nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}}, {{nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}}, {{nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}}, {{nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}, {nullptr, &p_3766->g_296, nullptr, nullptr, nullptr}}};
                int32_t l_3111 = 1L;
                int32_t l_3112 = 0xDDD78773L;
                short3 l_3162 = make_short3(0x2D3AL, 0L, 0x2D3AL);
                int32_t l_3212 = 0L;
                int32_t l_3214 = 0x2B5BB7EFL;
                int32_t l_3217 = 0x2A00407CL;
                int32_t l_3219 = 0x452595ABL;
                int1 l_3220 = make_int1(0xFEA0578BL);
                uint16_t l_3223 = 8UL;
                int32_t ***l_3234 = &p_3766->g_2780;
                uint2 l_3237 = make_uint2(0xEE329AEBL, 0x7A4FAE4FL);
                int i, j, k;
                if (((((make_int4(0x9459ACA7L, (p_7 | (make_short1(p_3766->g_3099.x).x & ((safe_rshift_func_int64_t_s_u(l_3102, (make_ushort3(0x4827L, 0x16CFL, p_5).z < ((*l_3104) = p_6)))) <= (safe_div_func_int16_t_s_s(p_7, (l_3115 = (p_3766->g_725.z++))))))), ((make_int4(p_3766->g_3116.y, p_3766->g_3116.y, p_3766->g_3116.y, p_3766->g_3116.y) | ((~make_int4(l_3117.x, l_3117.x, l_3117.x, l_3117.x))))).x, ((((safe_lshift(((make_int1((nullptr == &p_6)) ^ make_int1(l_3120.z))), make_int1(32)))) ^ make_int1(p_3766->g_3121.y))).x) ^ ((((safe_add(make_int4(0L, (((l_3097.y = (safe_mod_func_uint32_t_u_u((safe_div_func_int16_t_s_s(((make_ushort4(0x9800L, 2UL, (((safe_add_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(1UL, make_uint4(1UL, 0x0D030DB4L, 4294967295UL, 4294967295UL).x)), ((make_ulong4(l_3132.y, l_3132.y, l_3132.y, l_3132.y) ^ ((((((make_ulong4(0UL, l_3111, 18446744073709551615UL, 18446744073709551608UL) ^ make_ulong4(18446744073709551611UL, 18446744073709551611UL, 18446744073709551611UL, 18446744073709551611UL))) & make_ulong4(0UL, 0UL, 0UL, 0UL))) ^ make_ulong4(0UL, 0UL, 0UL, 0UL))))).y)) && 0x74L) && p_3766->g_844.x), 2UL).x > 0x6FCDL) , (-10L)), l_3111)), p_3766->g_2404.x))) == 0x9F3F6622L) == p_5), 0xEF4252F5L, (-4L)), make_int4(1L, 1L, 1L, 1L)))) & make_int4(1L, 1L, 1L, 1L))))) ^ make_int4((-1L), (-1L), (-1L), (-1L)))).w)
                { /* block id: 1263 */
                    if (l_3097.y)
                        break;
                }
                else
                { /* block id: 1265 */
                    return p_3766->g_1474.z;
                }
                if (((l_3120.y |= ((!(p_3766->g_673.x , make_ulong2(p_3766->g_3133.y, p_3766->g_3133.y).y)) ^ ((((safe_mul(((safe_sub(((~((safe_mul(make_long2(p_3766->g_3140.z, p_3766->g_3140.z), ((make_long2(p_3766->g_3141.x, p_3766->g_3141.x) ^ make_long2(((safe_mod_func_int8_t_s_s((0L == ((l_3111 && p_5) , (0UL & ((*p_3766->g_2591) != l_3144)))), (safe_div_func_int32_t_s_s((p_7 = p_7), (0xA22D5120L & p_3766->g_983.w))))) , (-5L)), 6L)))))))), make_long2(0x6B129CE10A8C196BLL, 0x6B129CE10A8C196BLL)))), make_long2(0xEB9CF7B030A699C1LL, 0xEB9CF7B030A699C1LL)))) ^ make_long2(2L, 2L))).x)) & 0UL))
                { /* block id: 1270 */
                    uint32_t *l_3147 = nullptr;
                    int4 l_3152 = make_int4(2L, (-9L), 2L, (-9L));
                    short2 l_3159 = make_short2(8L, 0x37E8L);
                    int32_t l_3168 = (-2L);
                    int i;
                    if (((l_3147 = &p_3766->g_275) != nullptr))
                    { /* block id: 1272 */
                        l_3120.x = (make_short2(l_3148.x, l_3148.x).y , p_5);
                        p_7 = (p_3766->g_2814.y < (safe_rshift_func_uint8_t_u_s(p_5, 2)));
                    }
                    else
                    { /* block id: 1275 */
                        uint64_t ***l_3151 = &p_3766->g_719[0][0];
                        int32_t l_3153 = 5L;
                        (**l_3051) = l_3151;
                        p_7 = (l_3152.z | p_6);
                        l_3154--;
                    }
                    for (p_5 = 0; (p_5 <= 2); p_5 += 1)
                    { /* block id: 1282 */
                        uint8_t **l_3165 = &l_3078;
                        int32_t l_3167 = (-1L);
                        int i;
                        l_3168 ^= (((*p_3766->g_2780) != nullptr) < (l_3167 &= ((safe_lshift(make_short4(((make_short2(l_3159.y, l_3159.y) & ((make_short2(p_3766->g_3160.x, p_3766->g_3160.x) | make_short2(p_3766->g_3161.x, p_3766->g_3161.x))))).y, ((*l_3104) = (nullptr != (*p_3766->g_1066))), p_5, 0x6B17L), make_short4((0x0E2CL <= (make_short3(l_3162.y, l_3162.y, l_3162.y).z | ((l_3166 = (l_3110[4] , (l_3097.x > ((*p_3766->g_351) == l_3165)))) != 0L))), (-1L), (-1L), 9L)))).y));
                        p_3766->g_97[p_5] = &l_3110[0];
                    }
                }
                else
                { /* block id: 1289 */
                    uint32_t l_3189 = 1UL;
                    int32_t l_3213 = 7L;
                    int32_t l_3215 = 1L;
                    int32_t l_3216 = 0x22475620L;
                    int32_t l_3218 = 0x34E4A4D3L;
                    int32_t l_3221 = 0xD5499053L;
                    int32_t l_3222 = (-1L);
                    if ((p_7 || ((safe_mul_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s(((~make_short3(l_3173.x, l_3173.x, l_3173.x))).x, make_short4(p_3766->g_3174.x, p_3766->g_3174.x, p_3766->g_3174.x, p_3766->g_3174.x).y)), (p_5 & (safe_lshift_func_int16_t_s_u((l_3177 , (-1L)), make_ushort3(l_3178.x, l_3178.x, l_3178.x).x))))) > (safe_mul_func_int16_t_s_s(l_3112, ((safe_sub_func_uint8_t_u_u((1UL >= make_uint3(l_3183.x, l_3183.x, l_3183.x).y), (make_ushort3(((safe_mod_func_int16_t_s_s(0x10D2L, (safe_unary_minus_func_int8_t_s(((safe_mul_func_uint16_t_u_u(0xFF68L, ((l_3111 = 8L) > 0xF78A8F34L))) | 0xAD8E409DL))))) ^ 0xB93AL), 9UL, 0x6E80L).y , l_3132.y))) & p_3766->g_2205.x))))))
                    { /* block id: 1291 */
                        l_3189--;
                        (**l_2968) = l_3192;
                        p_7 = (l_3193 == &p_3766->g_1251);
                    }
                    else
                    { /* block id: 1295 */
                        int8_t ***l_3210 = &p_3766->g_447;
                        (**l_2968) = nullptr;
                        p_7 = (0x91F15750D38D75EELL >= ((safe_mul_func_uint16_t_u_u(((safe_div(((safe_lshift(make_ushort4(p_3766->g_3200.x, p_3766->g_3200.x, p_3766->g_3200.x, p_3766->g_3200.x), make_ushort4(16, 16, 16, 16)))), make_ushort4(0xEC5DL, 0x5E6AL, 0xB852L, 8UL)))).z, ((safe_rshift_func_uint8_t_u_u((((safe_lshift_func_uint64_t_u_u(0xF37F005968A9E5AELL, 46)) <= (0xCC05FF854A3EA954LL <= (p_6 , (safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s((l_3209 & 7L), (!(nullptr != l_3210)))), 15))))) && p_7), l_3148.x)) != l_3211))) ^ p_3766->g_1919.y));
                    }
                    p_7 = (p_7 == p_3766->g_3174.y);
                    p_7 = p_7;
                    l_3223--;
                }
                if ((*l_3192))
                { /* block id: 1303 */
                    int32_t l_3226[4];
                    int i;
                    for (int i = 0; i < 4; i++)
                        l_3226[i] = 3L;
                    p_3766->g_3228++;
                }
                else
                { /* block id: 1305 */
                    int32_t ***l_3231[5];
                    int32_t ****l_3232 = nullptr;
                    int32_t ****l_3233[6];
                    int32_t l_3240 = (-1L);
                    int i;
                    for (int i = 0; i < 5; i++)
                        l_3231[i] = &p_3766->g_2780;
                    for (int i = 0; i < 6; i++)
                        l_3233[i] = &l_3231[3];
                    l_3234 = l_3231[1];
                    l_3240 = (safe_div_func_uint32_t_u_u(((make_uint2(0xA1A7A552L, 4294967286UL) ^ make_uint2(l_3237.y, l_3237.y))).y, (safe_lshift_func_int32_t_s_s(0x735C29FDL, 20))));
                }
                for (p_3766->g_2159 = 1; (p_3766->g_2159 <= 4); p_3766->g_2159 += 1)
                { /* block id: 1311 */
                    (**l_2968) = &p_7;
                    return hip_const_4;
                }
            }
            p_3766->g_3241[0][0][5] = &p_3766->g_2841[9];
        }
    }
    return p_3766->g_542;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ int32_t  func_27(uint8_t  p_28, struct S0 * p_3766)
{ /* block id: 2 */
    int16_t l_29 = 0xB5F7L;
    return l_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_3766->g_2538 p_3766->g_166 p_3766->g_1066 p_3766->g_1197 p_3766->g_132 hip_const_5 p_3766->g_106 p_3766->g_2876 p_3766->g_2880
 * writes: p_3766->g_106 p_3766->g_1197
 */
__device__ int64_t * func_30(uint8_t  p_31, struct S0 * p_3766)
{ /* block id: 5 */
    uint64_t l_36[5];
    int64_t *l_46 = &p_3766->g_15;
    uint8_t l_60[3][9] = {{0x0EL, 5UL, 0xFDL, 5UL, 0x0EL, 246UL, 0x0EL, 5UL, 0xFDL}, {0x0EL, 5UL, 0xFDL, 5UL, 0x0EL, 246UL, 0x0EL, 5UL, 0xFDL}, {0x0EL, 5UL, 0xFDL, 5UL, 0x0EL, 246UL, 0x0EL, 5UL, 0xFDL}};
    int3 l_2646 = make_int3((-9L), 0x126CB231L, (-9L));
    int32_t l_2657 = (-1L);
    uint64_t *****l_2663[3];
    int8_t **l_2681 = &p_3766->g_1926[0];
    uint32_t l_2689 = 0x64667D13L;
    int16_t *l_2691 = nullptr;
    uint8_t l_2694[4] = {0xE2L, 0x30L, 0xE2L, 0x30L};
    uint32_t l_2755 = 1UL;
    long1 l_2785 = make_long1(0x476C0A7F37EF88C8LL);
    int16_t l_2800 = 0x9919L;
    ushort3 l_2813 = make_ushort3(65535UL, 0xA968L, 65535UL);
    int32_t l_2843 = 0x14910FACL;
    uint64_t l_2845 = 18446744073709551612UL;
    uint16_t *l_2848 = nullptr;
    uint16_t l_2849 = 0x634BL;
    long1 l_2860 = make_long1(0xE24B18DD0A308A33LL);
    int32_t l_2863 = 0xBEC1017CL;
    uint8_t *l_2866 = &p_3766->g_1197;
    uint32_t *l_2869 = &l_2689;
    int32_t *l_2877 = nullptr;
    int32_t *l_2878 = nullptr;
    int32_t *l_2879 = &l_2843;
    int i, j;
    for (int i = 0; i < 5; i++)
        l_36[i] = 18446744073709551615UL;
    for (int i = 0; i < 3; i++)
        l_2663[i] = &p_3766->g_2592;
    for (p_31 = 0; (p_31 <= 4); p_31 += 1)
    { /* block id: 8 */
        int64_t *l_47[4] = {nullptr, nullptr, nullptr, nullptr};
        long1 l_48 = make_long1(0x6B1F15F1D345D190LL);
        int32_t l_53 = 0x7E981C31L;
        uint8_t *l_54 = &hip_const_1[1];
        uint8_t *l_55 = &hip_const_1[1];
        uint8_t *l_56 = &hip_const_1[0];
        int32_t l_57 = 0x916A5C54L;
        uint8_t *l_58 = &hip_const_1[1];
        uint8_t *l_59[4][5][9] = {{{&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}}, {{&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}}, {{&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}}, {{&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}, {&hip_const_2, &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_2, &hip_const_1[1], &hip_const_1[1], &hip_const_2}}};
        int16_t *l_63[2];
        int32_t *l_2640 = &l_57;
        int32_t *l_2641 = &p_3766->g_1453[4];
        int8_t *****l_2642 = &p_3766->g_2025;
        int32_t l_2647 = 0x24983CB9L;
        int32_t l_2648 = 0xC341B6DDL;
        int32_t l_2649 = 0x3052D177L;
        int32_t l_2650 = 0x8F629416L;
        int32_t l_2651 = 0x0EB73749L;
        int32_t l_2652 = 0x75B7AFF4L;
        int16_t l_2653 = 0x3F21L;
        int32_t l_2654 = 0L;
        int32_t l_2655 = (-9L);
        int2 l_2656 = make_int2(0L, (-1L));
        uint32_t l_2658 = 18446744073709551615UL;
        uchar4 l_2664 = make_uchar4(253UL, 0xACL, 253UL, 0xACL);
        int2 l_2676 = make_int2(1L, 0x9EA94E9AL);
        uint8_t l_2677 = 0x83L;
        int64_t ***l_2685 = &p_3766->g_606;
        int64_t ****l_2684 = &l_2685;
        int64_t *****l_2683 = &l_2684;
        ushort2 l_2713 = make_ushort2(65528UL, 0x2AFCL);
        uint8_t ****l_2759 = &p_3766->g_351;
        short1 l_2767 = make_short1((-7L));
        int64_t **l_2799 = &l_47[0];
        int32_t l_2801 = (-1L);
        uint64_t l_2819[9][9] = {{0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}, {0xE4992A64EDEC206FLL, 7UL, 0UL, 0xEDDE5273E7301423LL, 0xB267212BB5A6081ALL, 0xB267212BB5A6081ALL, 0xEDDE5273E7301423LL, 0UL, 7UL}};
        int8_t l_2837[5];
        int i, j, k;
        for (int i = 0; i < 2; i++)
            l_63[i] = &p_3766->g_64;
        for (int i = 0; i < 5; i++)
            l_2837[i] = 0xA1L;
    }
    (*p_3766->g_1066) = ((l_2863 = ((((l_2849++) ^ ((safe_add_func_uint8_t_u_u((l_2646.x ^ p_31), (safe_add_func_int16_t_s_s(((make_ushort4((l_60[1][7] & (((safe_mod_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((make_long1(l_2860.x) ^ make_long1((safe_sub_func_uint64_t_u_u(p_31, ((l_60[0][2] < 1L) , l_60[0][2])))))).x, ((l_2843 &= (-1L)) && 0xBD22C11D5DDCBF7ELL))), 0x0EC3L)) ^ l_2863) && p_31)), 0x63CDL, 1UL, 0UL).x , p_3766->g_2538.w) ^ p_31), p_3766->g_166.x)))) | 1L)) & 4294967294UL) , 6L)) , &l_2863);
    (*l_2879) = (safe_mul_func_int16_t_s_s(((0x8518L && l_36[3]) && ((make_uchar2(((*l_2866) ^= l_2863), ((*p_3766->g_132) ^ ((+(safe_sub_func_uint8_t_u_u((((*l_2869)--) , ((((*p_3766->g_106) = l_2657) == (p_31 , 0x9BB3EC0CL)) == (safe_lshift_func_uint64_t_u_u((((safe_lshift_func_int8_t_s_u((0xBCDE5606L ^ make_uint4(p_3766->g_2876.x, p_3766->g_2876.x, p_3766->g_2876.x, p_3766->g_2876.x).x), ((*l_2866) = l_2694[1]))) & p_31) <= 0x8EB1L), l_60[2][3])))), l_60[1][1]))) , l_2845))).y | l_2860.x) , p_31)), l_60[2][4]));
    return p_3766->g_2880;
}


/* ------------------------------------------ */
/* 
 * reads : p_3766->g_1066 p_3766->g_106
 * writes:
 */
__device__ int32_t * func_37(uint16_t  p_38, int64_t  p_39, struct S0 * p_3766)
{ /* block id: 12 */
    int32_t *l_65[10] = {&p_3766->g_66, &p_3766->g_66, &p_3766->g_66, &p_3766->g_66, &p_3766->g_66, &p_3766->g_66, &p_3766->g_66, &p_3766->g_66, &p_3766->g_66, &p_3766->g_66};
    int32_t l_67 = (-8L);
    int16_t *l_77 = &p_3766->g_64;
    int8_t *l_80 = &hip_const_3[2];
    int2 l_1103 = make_int2(0x76CA346AL, (-1L));
    int3 l_1147 = make_int3(0L, 1L, 0L);
    uint64_t **l_1188 = nullptr;
    uint32_t l_1193 = 18446744073709551607UL;
    char1 l_1204 = make_char1(0L);
    int8_t ***l_1262[1][6][5] = {{{nullptr, nullptr, &p_3766->g_447, nullptr, nullptr}, {nullptr, nullptr, &p_3766->g_447, nullptr, nullptr}, {nullptr, nullptr, &p_3766->g_447, nullptr, nullptr}, {nullptr, nullptr, &p_3766->g_447, nullptr, nullptr}, {nullptr, nullptr, &p_3766->g_447, nullptr, nullptr}, {nullptr, nullptr, &p_3766->g_447, nullptr, nullptr}}};
    int16_t l_1264 = 0x0F45L;
    uint16_t l_1269 = 0x71B9L;
    uint8_t ***l_1280 = &p_3766->g_352[0][6];
    uint3 l_1316 = make_uint3(0UL, 1UL, 0UL);
    uint32_t l_1317 = 0x277027CDL;
    int16_t ***l_1321 = &p_3766->g_131[0][3][0];
    int16_t ****l_1320 = &l_1321;
    int8_t l_1327 = 1L;
    int16_t l_1328 = 0xDBE0L;
    ushort2 l_1350 = make_ushort2(0x0546L, 0x9FE7L);
    uint32_t l_1364 = 0xD68EBCB3L;
    ulong1 l_1443 = make_ulong1(0UL);
    char3 l_1482 = make_char3(0x0DL, (-10L), 0x0DL);
    char4 l_1567 = make_char4(0x2AL, 0xC3L, 0x2AL, 0xC3L);
    int32_t l_1611 = 0L;
    ushort1 l_1640 = make_ushort1(0x081BL);
    int16_t *****l_1659 = nullptr;
    int64_t l_1667[2];
    ushort2 l_1715 = make_ushort2(1UL, 0xFA5EL);
    int32_t *l_1782 = nullptr;
    ushort3 l_1789 = make_ushort3(0xEDD3L, 0x4279L, 0xEDD3L);
    int32_t l_1803 = 0xB5EFAB4AL;
    short1 l_1831 = make_short1((-1L));
    long4 l_1853 = make_long4(9L, 0x3676FFB4CEC8CE91LL, 9L, 0x3676FFB4CEC8CE91LL);
    uint8_t l_1908[9];
    long1 l_1959 = make_long1((-7L));
    int16_t l_1985[4];
    int8_t l_1992 = (-2L);
    int32_t l_1993 = 3L;
    int32_t l_1995 = (-7L);
    int8_t ****l_2023 = &p_3766->g_446;
    int8_t *****l_2022 = &l_2023;
    int32_t *l_2029 = &l_1803;
    int32_t *l_2031 = &p_3766->g_66;
    int32_t *l_2047 = nullptr;
    int32_t l_2056 = 6L;
    uint16_t *l_2099 = nullptr;
    uint16_t **l_2098 = &l_2099;
    uchar1 l_2121 = make_uchar1(4UL);
    int3 l_2136 = make_int3(0xE76DD329L, 1L, 0xE76DD329L);
    int32_t *l_2177 = &l_1993;
    int32_t **l_2176 = &l_2177;
    int2 l_2179 = make_int2(0x370587FDL, 0L);
    int32_t l_2241 = 0x910AABA7L;
    int8_t l_2250 = 0xA4L;
    uchar3 l_2265 = make_uchar3(0xE8L, 0x78L, 0xE8L);
    int32_t l_2296[10] = {0xFE4EDD8AL, 0xDCB138E5L, 0xFE4EDD8AL, 0xDCB138E5L, 0xFE4EDD8AL, 0xDCB138E5L, 0xFE4EDD8AL, 0xDCB138E5L, 0xFE4EDD8AL, 0xDCB138E5L};
    int4 l_2343 = make_int4(0x3FA73667L, 0x9DE6748BL, 0x3FA73667L, 0x9DE6748BL);
    int32_t *l_2383 = &p_3766->g_66;
    int4 l_2389 = make_int4(0xEAEF271FL, 0x78DB4ABDL, 0xEAEF271FL, 0x78DB4ABDL);
    uint1 l_2390 = make_uint1(0x30AE218EL);
    int64_t **l_2418[9] = {&p_3766->g_607[1], nullptr, &p_3766->g_607[1], nullptr, &p_3766->g_607[1], nullptr, &p_3766->g_607[1], nullptr, &p_3766->g_607[1]};
    int32_t *l_2432 = nullptr;
    short3 l_2447 = make_short3(0x1289L, (-1L), 0x1289L);
    uint32_t l_2462 = 0UL;
    uint16_t l_2489 = 0xDD18L;
    int8_t l_2528[4][9] = {{1L, 0xB0L, 1L, 0xE7L, 8L, 1L, 0x75L, 0x75L, 1L}, {1L, 0xB0L, 1L, 0xE7L, 8L, 1L, 0x75L, 0x75L, 1L}, {1L, 0xB0L, 1L, 0xE7L, 8L, 1L, 0x75L, 0x75L, 1L}, {1L, 0xB0L, 1L, 0xE7L, 8L, 1L, 0x75L, 0x75L, 1L}};
    int8_t *l_2530 = nullptr;
    char4 l_2558 = make_char4(0L, 0xEBL, 0L, 0xEBL);
    uint64_t l_2559 = 18446744073709551615UL;
    int64_t l_2594 = 0x45E7B68F70E7DCCBLL;
    int64_t l_2636 = 0xA9B416DA9A6796EALL;
    int i, j, k;
    for (int i = 0; i < 2; i++)
        l_1667[i] = 4L;
    for (int i = 0; i < 9; i++)
        l_1908[i] = 0UL;
    for (int i = 0; i < 4; i++)
        l_1985[i] = 1L;
    return (*p_3766->g_1066);
}


/* ------------------------------------------ */
/* 
 * reads : p_3766->g_194 p_3766->g_501
 * writes: p_3766->g_194 p_3766->g_501
 */
__device__ int16_t ** func_68(uint64_t  p_69, int32_t  p_70, uint64_t  p_71, struct S0 * p_3766)
{ /* block id: 91 */
    int1 l_280 = make_int1(0L);
    int32_t l_286 = 0L;
    int32_t l_289 = 0x1904DDF8L;
    int32_t l_291[3];
    uint16_t l_299 = 0xBF97L;
    uint16_t l_330 = 65529UL;
    int8_t l_370 = 5L;
    uint4 l_384 = make_uint4(0UL, 0x2A6155CBL, 0UL, 0x2A6155CBL);
    int32_t *l_411 = &l_286;
    long3 l_432 = make_long3(7L, 0x62424BF5854CD0C4LL, 7L);
    uint8_t **l_436[5];
    int8_t ***l_505 = &p_3766->g_447;
    long1 l_533 = make_long1((-6L));
    int16_t **l_544 = &p_3766->g_132;
    uint8_t **l_563 = &p_3766->g_353[0][1][5];
    int32_t l_589 = 0x4FED9C12L;
    int32_t l_617 = (-3L);
    int32_t *l_623 = &l_289;
    int4 l_637 = make_int4(0L, 0x334F1FCDL, 0L, 0x334F1FCDL);
    int8_t l_639[8][5] = {{0L, 0x5DL, 0x5CL, 0x5DL, 0L}, {0L, 0x5DL, 0x5CL, 0x5DL, 0L}, {0L, 0x5DL, 0x5CL, 0x5DL, 0L}, {0L, 0x5DL, 0x5CL, 0x5DL, 0L}, {0L, 0x5DL, 0x5CL, 0x5DL, 0L}, {0L, 0x5DL, 0x5CL, 0x5DL, 0L}, {0L, 0x5DL, 0x5CL, 0x5DL, 0L}, {0L, 0x5DL, 0x5CL, 0x5DL, 0L}};
    char1 l_674 = make_char1(0x5AL);
    uchar1 l_681 = make_uchar1(0UL);
    uint16_t l_775 = 65535UL;
    int64_t l_778 = 7L;
    uint8_t l_830 = 254UL;
    int8_t l_849[1][7];
    ulong4 l_851 = make_ulong4(0xC94208C00AC44BC4LL, 18446744073709551615UL, 0xC94208C00AC44BC4LL, 18446744073709551615UL);
    int32_t l_900 = (-5L);
    int32_t *l_909 = nullptr;
    int64_t l_914 = 0xEDB0C9C28F60DC6FLL;
    int32_t l_1003[6][5] = {{0x055091CFL, 0x055091CFL, 0x75148F1FL, 0xD2FA6F3DL, 0L}, {0x055091CFL, 0x055091CFL, 0x75148F1FL, 0xD2FA6F3DL, 0L}, {0x055091CFL, 0x055091CFL, 0x75148F1FL, 0xD2FA6F3DL, 0L}, {0x055091CFL, 0x055091CFL, 0x75148F1FL, 0xD2FA6F3DL, 0L}, {0x055091CFL, 0x055091CFL, 0x75148F1FL, 0xD2FA6F3DL, 0L}, {0x055091CFL, 0x055091CFL, 0x75148F1FL, 0xD2FA6F3DL, 0L}};
    short4 l_1029 = make_short4(8L, 1L, 8L, 1L);
    uint64_t l_1096 = 0xDF90FC3245E5A12DLL;
    int16_t ***l_1098 = &l_544;
    int16_t ****l_1097 = &l_1098;
    uint64_t **l_1101 = &p_3766->g_658[1][4];
    int i, j;
    for (int i = 0; i < 3; i++)
        l_291[i] = (-1L);
    for (int i = 0; i < 5; i++)
        l_436[i] = &p_3766->g_353[0][2][5];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 7; j++)
            l_849[i][j] = 0x7EL;
    }
    for (p_3766->g_194 = 13; (p_3766->g_194 == 30); p_3766->g_194 = safe_add_func_int32_t_s_s(p_3766->g_194, 1))
    { /* block id: 94 */
        uchar1 l_271 = make_uchar1(254UL);
        uint32_t *l_274 = &p_3766->g_275;
        int4 l_281 = make_int4(0x66112EBCL, (-1L), 0x66112EBCL, (-1L));
        uint8_t *l_287 = &hip_const_2;
        uint8_t *l_288 = &hip_const_1[1];
        int32_t l_290 = 1L;
        uint8_t *l_292 = &hip_const_1[1];
        uint8_t *l_293 = &hip_const_1[1];
        uint8_t *l_294 = nullptr;
        uint8_t *l_295 = &hip_const_1[1];
        uint4 l_309 = make_uint4(0xB066DA58L, 0x9995B76EL, 0xB066DA58L, 0x9995B76EL);
        int8_t l_325 = (-1L);
        char2 l_350 = make_char2(0x78L, 0xEFL);
        int8_t l_400 = 0xBBL;
        short3 l_417 = make_short3(0x1C81L, 6L, 0x1C81L);
        uint4 l_426 = make_uint4(4294967287UL, 4294967292UL, 4294967287UL, 4294967292UL);
        int64_t *l_457 = nullptr;
        int16_t **l_536 = nullptr;
        uint1 l_541 = make_uint1(1UL);
        uint32_t l_572 = 0x29C52A4CL;
        uint32_t l_598 = 5UL;
        int8_t *l_626 = nullptr;
        uint16_t *l_629 = nullptr;
        int64_t l_640 = 0xD44DE931BB4C01A8LL;
        short4 l_708 = make_short4((-1L), 0xED15L, (-1L), 0xED15L);
        ushort2 l_714 = make_ushort2(3UL, 65535UL);
        uint64_t **l_716 = nullptr;
        int i;
    }
    for (p_3766->g_501 = (-14); (p_3766->g_501 != 51); p_3766->g_501 = safe_add_func_int32_t_s_s(p_3766->g_501, 5))
    { /* block id: 309 */
        int4 l_764 = make_int4(0x942F04A3L, 8L, 0x942F04A3L, 8L);
        short3 l_770 = make_short3(0xBE4CL, 0x7EC1L, 0xBE4CL);
        int16_t *l_815 = &hip_const_5;
        int8_t l_822[10][2][2] = {{{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}, {{3L, 9L}, {3L, 9L}}};
        int32_t l_868 = 0x63B28BB1L;
        uint32_t l_956 = 3UL;
        uint8_t l_958 = 0x82L;
        int32_t *l_959 = &l_291[2];
        char3 l_964 = make_char3(0L, 0xACL, 0L);
        short3 l_993 = make_short3(0x76FEL, 0xE2B4L, 0x76FEL);
        uint64_t *l_1028 = nullptr;
        uint32_t l_1030 = 4294967295UL;
        int16_t l_1041 = 0xA49DL;
        short4 l_1052 = make_short4(1L, 0L, 1L, 0L);
        int32_t l_1080[8][3];
        int8_t *l_1088 = nullptr;
        int16_t ****l_1099 = nullptr;
        int i, j, k;
        for (int i = 0; i < 8; i++)
        {
            for (int j = 0; j < 3; j++)
                l_1080[i][j] = 0xCFD3E2FEL;
        }
    }
    (*l_623) = (nullptr == l_1101);
    return &p_3766->g_132;
}


/* ------------------------------------------ */
/* 
 * reads : p_3766->g_166 p_3766->g_132 hip_const_5 p_3766->g_66 p_3766->g_167 p_3766->g_19
 * writes: p_3766->g_194 p_3766->g_15 p_3766->g_66 p_3766->g_167 p_3766->g_97
 */
__device__ uint64_t  func_72(uint8_t  p_73, int16_t * p_74, uint64_t  p_75, uint64_t  p_76, struct S0 * p_3766)
{ /* block id: 65 */
    uint16_t l_226[10] = {0x8E73L, 65531UL, 0x8E73L, 65531UL, 0x8E73L, 65531UL, 0x8E73L, 65531UL, 0x8E73L, 65531UL};
    uint32_t *l_227 = &p_3766->g_194;
    char4 l_228 = make_char4((-7L), 0x2BL, (-7L), 0x2BL);
    long1 l_237 = make_long1((-1L));
    int64_t *l_238 = nullptr;
    int64_t *l_239 = nullptr;
    int64_t *l_240 = nullptr;
    int64_t *l_241[6] = {&p_3766->g_15, &p_3766->g_15, nullptr, &p_3766->g_15, &p_3766->g_15, nullptr};
    int32_t l_242 = 0xD27C7863L;
    int32_t *l_247 = &p_3766->g_66;
    int16_t *l_261 = &hip_const_5;
    uint16_t l_262 = 0xE70AL;
    int4 l_263 = make_int4(0xAD8558D5L, (-1L), 0xAD8558D5L, (-1L));
    int i;
    (*l_247) |= (((*l_227) = l_226[7]) != (p_3766->g_166.x >= ((make_char3(make_char3(l_228.w, l_228.w, l_228.w).x, 0x20L, 1L) | ((make_char3((0xAB29L != (0x45L > 255UL)), ((safe_add(((safe_add(((safe_div(make_char4((safe_mod_func_int32_t_s_s((((l_242 = make_long2(l_237.x, l_237.x).y) < ((safe_add_func_uint64_t_u_u(0x7B80CB62A19D67C5LL, ((safe_div_func_uint8_t_u_u(l_237.x, (((((make_long4(6L, 8L, (p_3766->g_15 = (252UL && p_73)), 0x26107CED499C8587LL) ^ make_long4(1L, 1L, 1L, 1L))) ^ make_long4(1L, 1L, 1L, 1L))).w || l_226[4]))) == (*p_3766->g_132)))) & l_226[3])) ^ 0xD2DBL), 0x5D1FD822L)), p_75, 0xF0L, 2L), make_char4(0L, 0L, 0L, 0L)))), make_char4(0L, 0L, 0L, 0L)))), make_char4((-1L), (-1L), (-1L), (-1L))))).z, l_228.z) ^ make_char3(1L, 1L, 1L))))).z));
    for (p_3766->g_66 = 1; (p_3766->g_66 >= 9); p_3766->g_66 = safe_add_func_int16_t_s_s(p_3766->g_66, 1))
    { /* block id: 72 */
        for (p_3766->g_167 = (-7); (p_3766->g_167 >= 5); ++p_3766->g_167)
        { /* block id: 75 */
            int32_t *l_252[3][1];
            int i, j;
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 1; j++)
                    l_252[i][j] = &l_242;
            }
            for (p_73 = 0; (p_73 <= 5); p_73 += 1)
            { /* block id: 78 */
                int32_t **l_253[5][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                uint32_t l_254 = 4294967295UL;
                int i, j;
                p_3766->g_97[1] = l_252[1][0];
                l_252[0][0] = &p_3766->g_66;
                return l_254;
            }
        }
    }
    if ((safe_sub_func_int16_t_s_s(0L, (safe_sub_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(((*l_247) || ((make_uint3(p_3766->g_19.x, (l_261 == nullptr), 4294967295UL).x , l_262) > make_uint2(((&p_73 != nullptr) < (*l_247)), 0x60C76813L).y)), 248UL)), 0xD995L)))))
    { /* block id: 85 */
        return l_263.x;
    }
    else
    { /* block id: 87 */
        uint8_t *l_265 = &hip_const_1[1];
        uint8_t **l_264 = &l_265;
        uint8_t ***l_266 = &l_264;
        (*l_266) = l_264;
    }
    return p_73;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ uint8_t  func_83(int16_t * p_84, int16_t * p_85, int32_t  p_86, int16_t  p_87, uint8_t  p_88, struct S0 * p_3766)
{ /* block id: 63 */
    int8_t l_225 = 0xFDL;
    return l_225;
}


/* ------------------------------------------ */
/* 
 * reads : p_3766->g_15 p_3766->g_97 p_3766->g_64 hip_const_4 p_3766->g_19 p_3766->g_106 p_3766->g_131 p_3766->g_26 p_3766->g_24 p_3766->g_134 hip_const_1 p_3766->g_135 p_3766->g_66 hip_const_3 hip_const_6 p_3766->g_163 p_3766->g_166 p_3766->g_175 p_3766->g_194 p_3766->g_216 p_3766->g_132 hip_const_5
 * writes: p_3766->g_66 p_3766->g_106 p_3766->g_134 p_3766->g_135 p_3766->g_97 p_3766->g_167 p_3766->g_194
 */
__device__ int16_t * func_89(int16_t  p_90, struct S0 * p_3766)
{ /* block id: 15 */
    int8_t *l_94[7];
    int32_t **l_144[3];
    long4 l_165 = make_long4(0x405CEAB9BFD8F9DCLL, 0x5DAB0FEA248F7BE4LL, 0x405CEAB9BFD8F9DCLL, 0x5DAB0FEA248F7BE4LL);
    uint4 l_178 = make_uint4(0xE1DBCCE7L, 0x101A31BCL, 0xE1DBCCE7L, 0x101A31BCL);
    uint2 l_181 = make_uint2(0x6AD60D6BL, 0x7701A7DCL);
    int8_t **l_221 = &l_94[5];
    int8_t *l_222 = &hip_const_3[4];
    int16_t *l_223 = &p_3766->g_64;
    int i;
    for (int i = 0; i < 7; i++)
        l_94[i] = &hip_const_3[4];
    for (int i = 0; i < 3; i++)
        l_144[i] = &p_3766->g_97[1];
    p_3766->g_97[1] = func_91(l_94[5], &hip_const_3[3], p_3766);
    p_3766->g_97[2] = &p_3766->g_66;
    for (p_3766->g_134 = 0; (p_3766->g_134 != 24); p_3766->g_134 = safe_add_func_uint16_t_u_u(p_3766->g_134, 4))
    { /* block id: 36 */
        long4 l_153 = make_long4(0L, 0xF7AEC48A50E592CALL, 0L, 0xF7AEC48A50E592CALL);
        long4 l_164 = make_long4(0xF5BDECA5BA27C460LL, 0xE333570BABF467C7LL, 0xF5BDECA5BA27C460LL, 0xE333570BABF467C7LL);
        int32_t l_168 = 0xBD9C482CL;
        uint32_t *l_205 = &p_3766->g_194;
        int16_t *l_220 = &p_3766->g_135;
        int i;
        for (p_3766->g_66 = 2; (p_3766->g_66 != (-14)); --p_3766->g_66)
        { /* block id: 39 */
            int32_t l_154 = 0x36F85E4FL;
            int32_t l_192 = 0x61F22465L;
            uint32_t *l_193 = &p_3766->g_194;
            int32_t l_195 = 0xA33B8ED1L;
            uint8_t l_196 = 255UL;
            uint32_t l_198 = 0UL;
            l_154 = (!(p_3766->g_24.z != (safe_rshift_func_int64_t_s_u(((safe_lshift(make_long4(l_153.y, l_153.y, l_153.y, l_153.y), make_long4(64, 64, 64, 64)))).y, 15))));
            if ((+make_int4((safe_sub_func_int64_t_s_s(make_long3((-1L), 0x21D4C4B4CCDFE2BBLL, (safe_rshift_func_int16_t_s_u(((safe_lshift_func_uint8_t_u_s(2UL, 2)) != (!make_ushort4(0xB528L, hip_const_6, ((((l_168 = (((safe_lshift(((make_long2(p_3766->g_163.x, p_3766->g_163.x) ^ make_long2(l_164.y, l_164.y))), make_long2(l_165.y, l_165.y)))).y > (+(make_char4(p_3766->g_166.x, p_3766->g_166.x, p_3766->g_166.x, p_3766->g_166.x).w , (p_3766->g_167 = p_90))))) && 3UL) & (l_196 = ((safe_lshift(((safe_rshift(make_int1((safe_mod_func_uint8_t_u_u(make_uchar1(p_3766->g_175.x).x, (l_154 = p_3766->g_24.x)))), make_int1((l_195 = (((0x3A65F83DL >= ((*l_193) |= (safe_div_func_uint32_t_u_u(((((make_uint4(0x1DE0336CL, ((~make_uint1(l_178.x))).x, (safe_lshift_func_uint32_t_u_s(make_uint4(l_181.y, l_181.y, l_181.y, l_181.y).w, (l_192 &= (safe_mod_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s((9L >= (((safe_lshift_func_uint8_t_u_s((p_3766->g_166.x && (safe_mod_func_uint64_t_u_u(p_90, hip_const_1[2]))), l_153.y)) & hip_const_3[4]) | 5L)), 0x3F4F6D35L)), 7)), p_90))))), 4294967295UL) ^ make_uint4(0UL, 0UL, 0UL, 0UL))) ^ make_uint4(0x4091520AL, 0x4091520AL, 0x4091520AL, 0x4091520AL))).y, 0x32E4EC8CL)))) >= p_3766->g_26.y) > 6L)))))), make_int1(32)))).x)) ^ 0L), 0x5432L).w)), hip_const_4))).y, hip_const_3[6])), 5L, 0x17803233L, p_90).w))
            { /* block id: 48 */
                l_168 = 2L;
            }
            else
            { /* block id: 50 */
                int16_t *l_197 = nullptr;
                return l_197;
            }
            if (p_90)
                continue;
            if (l_198)
                break;
        }
        l_168 = (l_153.z <= (safe_mod_func_int16_t_s_s(((*l_220) = (((safe_rshift_func_int32_t_s_s(0xAD76B04DL, p_90)) ^ (safe_rshift_func_uint16_t_u_s(((p_3766->g_166.x , (-10L)) , ((((*l_205)++) & 0xD9DEA424L) >= (safe_rshift_func_uint32_t_u_s((make_char4(hip_const_6, 0xEEL, 0x5CL, 0x2EL).y != (safe_div_func_uint8_t_u_u(make_uchar3(p_90, 0x83L, 255UL).z, ((safe_rshift(((((((safe_lshift(make_char3(p_3766->g_216.y, p_3766->g_216.y, p_3766->g_216.y), make_char3(8, 8, 8)))) ^ make_char3((safe_lshift_func_uint16_t_u_s((safe_unary_minus_func_uint32_t_u((0L || 0xB18EEE2E21426223LL))), (*p_3766->g_132))), 7L, 1L))) ^ make_char3(1L, 1L, 1L))), make_char3(8, 8, 8)))).z))), 26)))), l_153.y))) , 0x72CAL)), (*p_3766->g_132))));
    }
    p_3766->g_97[0] = func_91(((*l_221) = l_94[3]), (p_90 , l_222), p_3766);
    return l_223;
}


/* ------------------------------------------ */
/* 
 * reads : p_3766->g_15 p_3766->g_97 p_3766->g_64 hip_const_4 p_3766->g_19 p_3766->g_106 p_3766->g_131 p_3766->g_26 p_3766->g_24 p_3766->g_134 hip_const_1 p_3766->g_135 p_3766->g_66 hip_const_3
 * writes: p_3766->g_66 p_3766->g_106 p_3766->g_134 p_3766->g_135
 */
__device__ int32_t * func_91(int8_t * p_92, int8_t * p_93, struct S0 * p_3766)
{ /* block id: 16 */
    uint32_t l_95 = 1UL;
    int32_t *l_96 = &p_3766->g_66;
    int32_t *l_102 = nullptr;
    int32_t **l_103 = nullptr;
    int32_t *l_105 = nullptr;
    int32_t **l_104[9] = {&p_3766->g_97[1], &p_3766->g_97[1], &l_105, &p_3766->g_97[1], &p_3766->g_97[1], &l_105, &p_3766->g_97[1], &p_3766->g_97[1], &l_105};
    int16_t l_107 = (-6L);
    int16_t **l_136[3];
    uint64_t l_137 = 18446744073709551611UL;
    uint32_t l_143 = 4294967295UL;
    int i;
    for (int i = 0; i < 3; i++)
        l_136[i] = &p_3766->g_132;
    l_107 = (l_95 <= (p_3766->g_15 , (0x00EB00D6L && (((*l_96) = 0x49B816A8L) != (p_3766->g_97[1] == ((safe_sub_func_uint32_t_u_u((((0x91L <= (safe_lshift_func_uint32_t_u_s(((l_102 = l_96) == (p_3766->g_106 = l_96)), (p_3766->g_64 && 0x11L)))) , hip_const_4) != p_3766->g_19.x), 7UL)) , p_3766->g_106))))));
    for (l_95 = 27; (l_95 == 1); l_95 = safe_sub_func_uint8_t_u_u(l_95, 4))
    { /* block id: 23 */
        char2 l_122 = make_char2(0L, 0x81L);
        int16_t *l_123 = &p_3766->g_64;
        int16_t **l_124 = &l_123;
        int8_t *l_133 = &p_3766->g_134;
        uint8_t *l_138 = &hip_const_2;
        uint8_t *l_139 = &hip_const_1[1];
        uint8_t *l_140 = &hip_const_2;
        uint8_t *l_141[5] = {&hip_const_1[1], nullptr, &hip_const_1[1], nullptr, &hip_const_1[1]};
        int2 l_142 = make_int2(0L, 0xAF93AE58L);
        int i;
        (*l_96) = (safe_add_func_uint8_t_u_u((((safe_sub_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(((safe_mod_func_int8_t_s_s((make_uchar1((((l_142.y = ((safe_add_func_uint8_t_u_u((l_122.y && (((*l_124) = l_123) == &p_3766->g_64)), (!(safe_sub_func_int8_t_s_s((safe_add_func_uint16_t_u_u((((-2L) <= (((p_3766->g_135 ^= (safe_div_func_int8_t_s_s((p_3766->g_131[0][3][0] != &p_3766->g_132), (((*l_133) |= ((p_3766->g_26.w > make_char2(0x87L, 0L).y) != p_3766->g_24.w)) , (hip_const_1[1] & 1L))))) , l_136[0]) != l_136[0])) | l_137), (*l_96))), l_122.x))))) , l_122.y)) , 0xD59F51D5L) || 0UL)).x && hip_const_1[1]), hip_const_3[4])) , 1UL), l_122.x)), 1UL)) ^ 0x1000105832D05602LL) == l_122.y), l_122.x));
        if (l_143)
            break;
    }
    return &p_3766->g_66;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S0 c_3767;
    struct S0* p_3766 = &c_3767;
    struct S0 c_3768 = {
        .g_15 = 0L,
        .g_19 = make_ulong2(2UL, 18446744073709551615UL),
        .g_24 = make_ulong4(0xCEE24B2E809B4AF7LL, 0xD48407374FD52280LL, 0xCEE24B2E809B4AF7LL, 0xD48407374FD52280LL),
        .g_26 = make_long4(0xF29C214F1636717BLL, 3L, 0xF29C214F1636717BLL, 3L),
        .g_64 = (-3L),
        .g_66 = 7L,
        .g_97 = {nullptr, nullptr, nullptr},
        .g_106 = nullptr,
        .g_132 = &hip_const_5,
        .g_131 = {{{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}, {{&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}, {&p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132, &p_3766->g_132}}},
        .g_134 = 0x87L,
        .g_135 = 0L,
        .g_163 = make_long2((-8L), 0L),
        .g_166 = make_char1(1L),
        .g_167 = 0xBCL,
        .g_175 = make_uchar1(255UL),
        .g_194 = 0x40BFAE5DL,
        .g_216 = make_char4(0L, 1L, 0L, 1L),
        .g_275 = 6UL,
        .g_296 = 0x3D29L,
        .g_304 = make_uint4(0xA5B5B071L, 0x5F16452FL, 0xA5B5B071L, 0x5F16452FL),
        .g_310 = make_uint2(0xADD3FD6EL, 4294967293UL),
        .g_311 = make_uint2(0x58627F00L, 2UL),
        .g_316 = make_ulong2(18446744073709551614UL, 18446744073709551613UL),
        .g_353 = {{{&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}}, {{&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}}, {{&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}}, {{&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}}, {{&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}, {&hip_const_1[2], &hip_const_1[1], nullptr, &hip_const_1[2], nullptr, &hip_const_1[1], &hip_const_1[1]}}},
        .g_352 = {{&p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5]}, {&p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5], nullptr, &p_3766->g_353[0][1][5]}},
        .g_351 = &p_3766->g_352[0][6],
        .g_389 = make_long3(4L, (-6L), 4L),
        .g_402 = make_int1(1L),
        .g_416 = make_int1(3L),
        .g_448 = {nullptr, nullptr, nullptr, nullptr},
        .g_447 = &p_3766->g_448[2],
        .g_446 = &p_3766->g_447,
        .g_501 = 0x1C11EBEDL,
        .g_538 = make_short3(1L, 0x0CAAL, 1L),
        .g_542 = 4UL,
        .g_561 = 0xCA349E40L,
        .g_607 = {&p_3766->g_15, nullptr, &p_3766->g_15, nullptr, &p_3766->g_15},
        .g_606 = &p_3766->g_607[3],
        .g_622 = make_uint3(0x84E5B8E9L, 4294967294UL, 0x84E5B8E9L),
        .g_635 = make_int1(9L),
        .g_636 = make_int2(0x49AC2E08L, 0x0DEF44A6L),
        .g_648 = 0xF7DBEAE5L,
        .g_658 = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}},
        .g_659 = {{5L, 0xDEB652E7L, 0x97996BC1L, 0xDEB652E7L, 5L}, {5L, 0xDEB652E7L, 0x97996BC1L, 0xDEB652E7L, 5L}, {5L, 0xDEB652E7L, 0x97996BC1L, 0xDEB652E7L, 5L}, {5L, 0xDEB652E7L, 0x97996BC1L, 0xDEB652E7L, 5L}},
        .g_673 = make_char1(0x94L),
        .g_689 = make_ulong1(0x8C4705FB5F05827ELL),
        .g_718 = &p_3766->g_658[1][2],
        .g_719 = {{&p_3766->g_658[0][5], &p_3766->g_658[0][5], nullptr, &p_3766->g_658[0][5], &p_3766->g_658[0][5], nullptr}},
        .g_724 = make_char2(0xBDL, 1L),
        .g_725 = make_ushort3(0xED7BL, 0x9015L, 0xED7BL),
        .g_738 = make_char1(0xB4L),
        .g_745 = make_short4(0x71B9L, (-6L), 0x71B9L, (-6L)),
        .g_754 = make_int2(3L, 1L),
        .g_762 = make_ushort3(0UL, 0x8751L, 0UL),
        .g_769 = make_short3((-1L), 0x5894L, (-1L)),
        .g_844 = make_ulong1(1UL),
        .g_881 = make_int3(0x1594E108L, 0L, 0x1594E108L),
        .g_933 = make_uint4(0x15FE990FL, 4UL, 0x15FE990FL, 4UL),
        .g_982 = make_uint1(0x00F3F882L),
        .g_983 = make_uint4(0UL, 0x9163B5F7L, 0UL, 0x9163B5F7L),
        .g_999 = 0x7FL,
        .g_1055 = make_ushort4(65533UL, 65533UL, 65533UL, 65533UL),
        .g_1058 = make_int4(0x09C055F0L, (-10L), 0x09C055F0L, (-10L)),
        .g_1063 = make_char3(0xD8L, 0xF6L, 0xD8L),
        .g_1066 = &p_3766->g_106,
        .g_1135 = make_short4(0x2150L, 1L, 0x2150L, 1L),
        .g_1197 = 3UL,
        .g_1228 = make_ushort4(0xC7CEL, 0UL, 0xC7CEL, 0UL),
        .g_1229 = make_ushort4(1UL, 1UL, 1UL, 1UL),
        .g_1230 = make_ushort3(0UL, 8UL, 0UL),
        .g_1233 = make_int1(9L),
        .g_1251 = &p_3766->g_352[0][6],
        .g_1301 = make_char1(0L),
        .g_1312 = make_ushort1(0UL),
        .g_1349 = make_ushort4(65526UL, 0x9ACFL, 65526UL, 0x9ACFL),
        .g_1377 = &p_3766->g_719[0][1],
        .g_1407 = make_char3((-8L), 1L, (-8L)),
        .g_1408 = make_char4(3L, 0x91L, 3L, 0x91L),
        .g_1418 = make_uchar2(255UL, 5UL),
        .g_1453 = {0xA08F10A1L, 0xA08F10A1L, 1L, 0xA08F10A1L, 0xA08F10A1L, 1L},
        .g_1470 = make_char2(1L, 0x5EL),
        .g_1474 = make_ulong4(0UL, 0UL, 0UL, 0UL),
        .g_1480 = make_ulong2(0xC9B9ACB0AB6DC2D8LL, 18446744073709551615UL),
        .g_1485 = make_short1((-5L)),
        .g_1506 = make_ushort2(65535UL, 0x02E7L),
        .g_1576 = &p_3766->g_131[0][3][0],
        .g_1575 = &p_3766->g_1576,
        .g_1574 = {{{&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}}, {{&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}}, {{&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}, {&p_3766->g_1575, &p_3766->g_1575, nullptr, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575, &p_3766->g_1575}}},
        .g_1584 = make_char3(0L, 0x64L, 0L),
        .g_1597 = make_long3(1L, (-10L), 1L),
        .g_1618 = 0x7AL,
        .g_1631 = make_ulong1(0xB7579CC0EB66A255LL),
        .g_1634 = make_int4(0xE69DD10AL, 0x35D72B6DL, 0xE69DD10AL, 0x35D72B6DL),
        .g_1648 = make_int4((-1L), 0L, (-1L), 0L),
        .g_1720 = make_ushort2(0UL, 6UL),
        .g_1804 = nullptr,
        .g_1822 = make_uchar2(7UL, 0UL),
        .g_1825 = make_uchar1(0xE1L),
        .g_1854 = make_long4((-4L), 0x57F7B213D0EE7010LL, (-4L), 0x57F7B213D0EE7010LL),
        .g_1880 = make_uint2(0x95C9C5B2L, 1UL),
        .g_1883 = make_uint2(1UL, 1UL),
        .g_1919 = make_long3(0xCF8C3DAD0BAEE16ELL, 1L, 0xCF8C3DAD0BAEE16ELL),
        .g_1921 = make_uint1(0xD3DD4AC9L),
        .g_1926 = {&hip_const_3[8], &hip_const_3[8], &hip_const_3[8], &hip_const_3[8], &hip_const_3[8]},
        .g_1942 = make_short4(0L, (-1L), 0L, (-1L)),
        .g_2014 = make_ulong2(0UL, 1UL),
        .g_2025 = &p_3766->g_446,
        .g_2024 = {&p_3766->g_2025, &p_3766->g_2025},
        .g_2064 = make_int2(7L, 0x3F11E41DL),
        .g_2066 = make_uint3(4294967294UL, 0xEA0CFDCCL, 4294967294UL),
        .g_2073 = 1UL,
        .g_2091 = make_uint4(1UL, 0x8717C18AL, 1UL, 0x8717C18AL),
        .g_2122 = make_ushort4(65532UL, 0xBAF0L, 65532UL, 0xBAF0L),
        .g_2151 = make_uchar2(0xFFL, 1UL),
        .g_2159 = 18446744073709551606UL,
        .g_2180 = make_int2(8L, 0xCAC9D5BBL),
        .g_2184 = make_int4(7L, 0x2C9D94EDL, 7L, 0x2C9D94EDL),
        .g_2205 = make_ulong4(0xD750943585693481LL, 0x4DDAC9487FBB5ADALL, 0xD750943585693481LL, 0x4DDAC9487FBB5ADALL),
        .g_2240 = make_ushort1(0x9308L),
        .g_2404 = make_long3(0x8294C6C565FC9BC6LL, 4L, 0x8294C6C565FC9BC6LL),
        .g_2419 = make_short4(0x4F9CL, 1L, 0x4F9CL, 1L),
        .g_2478 = make_short2(0x010AL, 0xBF80L),
        .g_2479 = make_short2(0L, 1L),
        .g_2502 = make_uchar4(0xE6L, 6UL, 0xE6L, 6UL),
        .g_2534 = make_short3(0xAFB0L, 0x410BL, 0xAFB0L),
        .g_2538 = make_int4((-1L), 0L, (-1L), 0L),
        .g_2557 = make_char2((-4L), 0x61L),
        .g_2574 = make_long1(1L),
        .g_2582 = make_ushort3(1UL, 2UL, 1UL),
        .g_2592 = &p_3766->g_1377,
        .g_2591 = &p_3766->g_2592,
        .g_2665 = nullptr,
        .g_2688 = &p_3766->g_606,
        .g_2687 = &p_3766->g_2688,
        .g_2686 = &p_3766->g_2687,
        .g_2699 = make_int3(0L, 1L, 0L),
        .g_2705 = make_ushort4(0xCEADL, 1UL, 0xCEADL, 1UL),
        .g_2708 = make_ushort1(65535UL),
        .g_2712 = make_ushort2(4UL, 0UL),
        .g_2781 = &p_3766->g_659[1][3],
        .g_2780 = &p_3766->g_2781,
        .g_2795 = make_ulong3(0xA7D9CD950E0EC1BCLL, 0xA1DF22FA738B71D7LL, 0xA7D9CD950E0EC1BCLL),
        .g_2814 = make_ushort3(0x9029L, 5UL, 0x9029L),
        .g_2822 = make_int1(0x3D3F1361L),
        .g_2830 = make_uchar1(247UL),
        .g_2833 = make_uint1(0xF62C9477L),
        .g_2838 = (-6L),
        .g_2841 = {&p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1], &p_3766->g_97[1]},
        .g_2876 = make_uint1(1UL),
        .g_2880 = nullptr,
        .g_2885 = make_ushort4(0x10A1L, 0xE571L, 0x10A1L, 0xE571L),
        .g_2898 = make_int3(0L, 0xB7ABF592L, 0L),
        .g_2910 = make_short2(1L, (-1L)),
        .g_2911 = make_short2(0xE334L, 0x0064L),
        .g_2956 = 0xBCFAD4FAL,
        .g_2965 = make_char3(0x81L, (-3L), 0x81L),
        .g_3028 = make_int3(0L, (-5L), 0L),
        .g_3076 = 0L,
        .g_3099 = make_short1(5L),
        .g_3116 = make_int4((-4L), (-1L), (-4L), (-1L)),
        .g_3121 = make_int2(9L, 0x56229AD8L),
        .g_3133 = make_ulong4(18446744073709551609UL, 0xF9AE815573C5F068LL, 18446744073709551609UL, 0xF9AE815573C5F068LL),
        .g_3140 = make_long3((-1L), 0x01ED1315F3CF442BLL, (-1L)),
        .g_3141 = make_long2((-1L), (-8L)),
        .g_3160 = make_short1(0xBE5AL),
        .g_3161 = make_short1(0L),
        .g_3174 = make_short3(0xCC23L, 5L, 0xCC23L),
        .g_3200 = make_ushort2(65527UL, 65529UL),
        .g_3228 = 0x007EL,
        .g_3241 = {{{&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}}, {{&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}}, {{&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}}, {{&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}, {&p_3766->g_2841[4], &p_3766->g_2841[5], nullptr, &p_3766->g_1066, &p_3766->g_1066, &p_3766->g_2841[4]}}},
        .g_3277 = make_int1(0x6ED93B09L),
        .g_3287 = make_ushort3(0x6129L, 0x9D91L, 0x6129L),
        .g_3342 = make_int3(0x91D06B26L, 0x6ECC00E0L, 0x91D06B26L),
        .g_3346 = nullptr,
        .g_3378 = make_ushort1(0x02B9L),
        .g_3384 = {{nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr}, {nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr}, {nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr}, {nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr}, {nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr}, {nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr, &p_3766->g_1251, nullptr}},
        .g_3383 = &p_3766->g_3384[5][5],
        .g_3398 = make_ushort4(0x5826L, 0UL, 0x5826L, 0UL),
        .g_3409 = make_ushort2(65535UL, 65535UL),
        .g_3427 = 0xD1L,
        .g_3428 = make_int1(0x2AE7A90AL),
        .g_3434 = make_int3(0x1C566728L, 9L, 0x1C566728L),
        .g_3444 = make_ulong3(1UL, 0xB4E39CF528AEB2CELL, 1UL),
        .g_3445 = make_ulong4(1UL, 18446744073709551607UL, 1UL, 18446744073709551607UL),
        .g_3452 = make_long4(0xE449B72443F2222DLL, (-9L), 0xE449B72443F2222DLL, (-9L)),
        .g_3453 = make_long3(0x83FECABFD13865B3LL, (-3L), 0x83FECABFD13865B3LL),
        .g_3477 = make_long2(0xBC4D2BB94D77B2F0LL, 1L),
        .g_3513 = {&p_3766->g_542, &p_3766->g_542},
        .g_3512 = &p_3766->g_3513[1],
        .g_3516 = make_int3(0x23371247L, 0xF1ADB2BCL, 0x23371247L),
        .g_3553 = nullptr,
        .g_3552 = &p_3766->g_3553,
        .g_3603 = make_ulong2(18446744073709551608UL, 0UL),
        .g_3620 = make_long2(1L, 0x60A8C9BA8F97866BLL),
        .g_3634 = make_uchar2(0x31L, 255UL),
        .g_3659 = 18446744073709551615UL,
        .g_3678 = make_ushort3(0x22B3L, 1UL, 0x22B3L),
        .g_3679 = make_ushort3(0xF018L, 0x72ADL, 0xF018L),
        .g_3720 = 0xF3L,
        .g_3742 = make_uchar4(0x7EL, 0x42L, 0x7EL, 0x42L),
    };
    c_3767 = c_3768;

    // Execute core logic
    func_1(p_3766);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(hip_const_1[i], "hip_const_1[i]", print_hash_value);

    }
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        transparent_crc(hip_const_3[i], "hip_const_3[i]", print_hash_value);

    }
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(hip_const_5, "hip_const_5", print_hash_value);
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    transparent_crc(p_3766->g_15, "p_3766->g_15", print_hash_value);
    transparent_crc(p_3766->g_19.x, "p_3766->g_19.x", print_hash_value);
    transparent_crc(p_3766->g_19.y, "p_3766->g_19.y", print_hash_value);
    transparent_crc(p_3766->g_24.x, "p_3766->g_24.x", print_hash_value);
    transparent_crc(p_3766->g_24.y, "p_3766->g_24.y", print_hash_value);
    transparent_crc(p_3766->g_24.z, "p_3766->g_24.z", print_hash_value);
    transparent_crc(p_3766->g_24.w, "p_3766->g_24.w", print_hash_value);
    transparent_crc(p_3766->g_26.x, "p_3766->g_26.x", print_hash_value);
    transparent_crc(p_3766->g_26.y, "p_3766->g_26.y", print_hash_value);
    transparent_crc(p_3766->g_26.z, "p_3766->g_26.z", print_hash_value);
    transparent_crc(p_3766->g_26.w, "p_3766->g_26.w", print_hash_value);
    transparent_crc(p_3766->g_64, "p_3766->g_64", print_hash_value);
    transparent_crc(p_3766->g_66, "p_3766->g_66", print_hash_value);
    transparent_crc(p_3766->g_134, "p_3766->g_134", print_hash_value);
    transparent_crc(p_3766->g_135, "p_3766->g_135", print_hash_value);
    transparent_crc(p_3766->g_163.x, "p_3766->g_163.x", print_hash_value);
    transparent_crc(p_3766->g_163.y, "p_3766->g_163.y", print_hash_value);
    transparent_crc(p_3766->g_166.x, "p_3766->g_166.x", print_hash_value);
    transparent_crc(p_3766->g_167, "p_3766->g_167", print_hash_value);
    transparent_crc(p_3766->g_175.x, "p_3766->g_175.x", print_hash_value);
    transparent_crc(p_3766->g_194, "p_3766->g_194", print_hash_value);
    transparent_crc(p_3766->g_216.x, "p_3766->g_216.x", print_hash_value);
    transparent_crc(p_3766->g_216.y, "p_3766->g_216.y", print_hash_value);
    transparent_crc(p_3766->g_216.z, "p_3766->g_216.z", print_hash_value);
    transparent_crc(p_3766->g_216.w, "p_3766->g_216.w", print_hash_value);
    transparent_crc(p_3766->g_275, "p_3766->g_275", print_hash_value);
    transparent_crc(p_3766->g_296, "p_3766->g_296", print_hash_value);
    transparent_crc(p_3766->g_304.x, "p_3766->g_304.x", print_hash_value);
    transparent_crc(p_3766->g_304.y, "p_3766->g_304.y", print_hash_value);
    transparent_crc(p_3766->g_304.z, "p_3766->g_304.z", print_hash_value);
    transparent_crc(p_3766->g_304.w, "p_3766->g_304.w", print_hash_value);
    transparent_crc(p_3766->g_310.x, "p_3766->g_310.x", print_hash_value);
    transparent_crc(p_3766->g_310.y, "p_3766->g_310.y", print_hash_value);
    transparent_crc(p_3766->g_311.x, "p_3766->g_311.x", print_hash_value);
    transparent_crc(p_3766->g_311.y, "p_3766->g_311.y", print_hash_value);
    transparent_crc(p_3766->g_316.x, "p_3766->g_316.x", print_hash_value);
    transparent_crc(p_3766->g_316.y, "p_3766->g_316.y", print_hash_value);
    transparent_crc(p_3766->g_389.x, "p_3766->g_389.x", print_hash_value);
    transparent_crc(p_3766->g_389.y, "p_3766->g_389.y", print_hash_value);
    transparent_crc(p_3766->g_389.z, "p_3766->g_389.z", print_hash_value);
    transparent_crc(p_3766->g_402.x, "p_3766->g_402.x", print_hash_value);
    transparent_crc(p_3766->g_416.x, "p_3766->g_416.x", print_hash_value);
    transparent_crc(p_3766->g_501, "p_3766->g_501", print_hash_value);
    transparent_crc(p_3766->g_538.x, "p_3766->g_538.x", print_hash_value);
    transparent_crc(p_3766->g_538.y, "p_3766->g_538.y", print_hash_value);
    transparent_crc(p_3766->g_538.z, "p_3766->g_538.z", print_hash_value);
    transparent_crc(p_3766->g_542, "p_3766->g_542", print_hash_value);
    transparent_crc(p_3766->g_561, "p_3766->g_561", print_hash_value);
    transparent_crc(p_3766->g_622.x, "p_3766->g_622.x", print_hash_value);
    transparent_crc(p_3766->g_622.y, "p_3766->g_622.y", print_hash_value);
    transparent_crc(p_3766->g_622.z, "p_3766->g_622.z", print_hash_value);
    transparent_crc(p_3766->g_635.x, "p_3766->g_635.x", print_hash_value);
    transparent_crc(p_3766->g_636.x, "p_3766->g_636.x", print_hash_value);
    transparent_crc(p_3766->g_636.y, "p_3766->g_636.y", print_hash_value);
    transparent_crc(p_3766->g_648, "p_3766->g_648", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            transparent_crc(p_3766->g_659[i][j], "p_3766->g_659[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3766->g_673.x, "p_3766->g_673.x", print_hash_value);
    transparent_crc(p_3766->g_689.x, "p_3766->g_689.x", print_hash_value);
    transparent_crc(p_3766->g_724.x, "p_3766->g_724.x", print_hash_value);
    transparent_crc(p_3766->g_724.y, "p_3766->g_724.y", print_hash_value);
    transparent_crc(p_3766->g_725.x, "p_3766->g_725.x", print_hash_value);
    transparent_crc(p_3766->g_725.y, "p_3766->g_725.y", print_hash_value);
    transparent_crc(p_3766->g_725.z, "p_3766->g_725.z", print_hash_value);
    transparent_crc(p_3766->g_738.x, "p_3766->g_738.x", print_hash_value);
    transparent_crc(p_3766->g_745.x, "p_3766->g_745.x", print_hash_value);
    transparent_crc(p_3766->g_745.y, "p_3766->g_745.y", print_hash_value);
    transparent_crc(p_3766->g_745.z, "p_3766->g_745.z", print_hash_value);
    transparent_crc(p_3766->g_745.w, "p_3766->g_745.w", print_hash_value);
    transparent_crc(p_3766->g_754.x, "p_3766->g_754.x", print_hash_value);
    transparent_crc(p_3766->g_754.y, "p_3766->g_754.y", print_hash_value);
    transparent_crc(p_3766->g_762.x, "p_3766->g_762.x", print_hash_value);
    transparent_crc(p_3766->g_762.y, "p_3766->g_762.y", print_hash_value);
    transparent_crc(p_3766->g_762.z, "p_3766->g_762.z", print_hash_value);
    transparent_crc(p_3766->g_769.x, "p_3766->g_769.x", print_hash_value);
    transparent_crc(p_3766->g_769.y, "p_3766->g_769.y", print_hash_value);
    transparent_crc(p_3766->g_769.z, "p_3766->g_769.z", print_hash_value);
    transparent_crc(p_3766->g_844.x, "p_3766->g_844.x", print_hash_value);
    transparent_crc(p_3766->g_881.x, "p_3766->g_881.x", print_hash_value);
    transparent_crc(p_3766->g_881.y, "p_3766->g_881.y", print_hash_value);
    transparent_crc(p_3766->g_881.z, "p_3766->g_881.z", print_hash_value);
    transparent_crc(p_3766->g_933.x, "p_3766->g_933.x", print_hash_value);
    transparent_crc(p_3766->g_933.y, "p_3766->g_933.y", print_hash_value);
    transparent_crc(p_3766->g_933.z, "p_3766->g_933.z", print_hash_value);
    transparent_crc(p_3766->g_933.w, "p_3766->g_933.w", print_hash_value);
    transparent_crc(p_3766->g_982.x, "p_3766->g_982.x", print_hash_value);
    transparent_crc(p_3766->g_983.x, "p_3766->g_983.x", print_hash_value);
    transparent_crc(p_3766->g_983.y, "p_3766->g_983.y", print_hash_value);
    transparent_crc(p_3766->g_983.z, "p_3766->g_983.z", print_hash_value);
    transparent_crc(p_3766->g_983.w, "p_3766->g_983.w", print_hash_value);
    transparent_crc(p_3766->g_999, "p_3766->g_999", print_hash_value);
    transparent_crc(p_3766->g_1055.x, "p_3766->g_1055.x", print_hash_value);
    transparent_crc(p_3766->g_1055.y, "p_3766->g_1055.y", print_hash_value);
    transparent_crc(p_3766->g_1055.z, "p_3766->g_1055.z", print_hash_value);
    transparent_crc(p_3766->g_1055.w, "p_3766->g_1055.w", print_hash_value);
    transparent_crc(p_3766->g_1058.x, "p_3766->g_1058.x", print_hash_value);
    transparent_crc(p_3766->g_1058.y, "p_3766->g_1058.y", print_hash_value);
    transparent_crc(p_3766->g_1058.z, "p_3766->g_1058.z", print_hash_value);
    transparent_crc(p_3766->g_1058.w, "p_3766->g_1058.w", print_hash_value);
    transparent_crc(p_3766->g_1063.x, "p_3766->g_1063.x", print_hash_value);
    transparent_crc(p_3766->g_1063.y, "p_3766->g_1063.y", print_hash_value);
    transparent_crc(p_3766->g_1063.z, "p_3766->g_1063.z", print_hash_value);
    transparent_crc(p_3766->g_1135.x, "p_3766->g_1135.x", print_hash_value);
    transparent_crc(p_3766->g_1135.y, "p_3766->g_1135.y", print_hash_value);
    transparent_crc(p_3766->g_1135.z, "p_3766->g_1135.z", print_hash_value);
    transparent_crc(p_3766->g_1135.w, "p_3766->g_1135.w", print_hash_value);
    transparent_crc(p_3766->g_1197, "p_3766->g_1197", print_hash_value);
    transparent_crc(p_3766->g_1228.x, "p_3766->g_1228.x", print_hash_value);
    transparent_crc(p_3766->g_1228.y, "p_3766->g_1228.y", print_hash_value);
    transparent_crc(p_3766->g_1228.z, "p_3766->g_1228.z", print_hash_value);
    transparent_crc(p_3766->g_1228.w, "p_3766->g_1228.w", print_hash_value);
    transparent_crc(p_3766->g_1229.x, "p_3766->g_1229.x", print_hash_value);
    transparent_crc(p_3766->g_1229.y, "p_3766->g_1229.y", print_hash_value);
    transparent_crc(p_3766->g_1229.z, "p_3766->g_1229.z", print_hash_value);
    transparent_crc(p_3766->g_1229.w, "p_3766->g_1229.w", print_hash_value);
    transparent_crc(p_3766->g_1230.x, "p_3766->g_1230.x", print_hash_value);
    transparent_crc(p_3766->g_1230.y, "p_3766->g_1230.y", print_hash_value);
    transparent_crc(p_3766->g_1230.z, "p_3766->g_1230.z", print_hash_value);
    transparent_crc(p_3766->g_1233.x, "p_3766->g_1233.x", print_hash_value);
    transparent_crc(p_3766->g_1301.x, "p_3766->g_1301.x", print_hash_value);
    transparent_crc(p_3766->g_1312.x, "p_3766->g_1312.x", print_hash_value);
    transparent_crc(p_3766->g_1349.x, "p_3766->g_1349.x", print_hash_value);
    transparent_crc(p_3766->g_1349.y, "p_3766->g_1349.y", print_hash_value);
    transparent_crc(p_3766->g_1349.z, "p_3766->g_1349.z", print_hash_value);
    transparent_crc(p_3766->g_1349.w, "p_3766->g_1349.w", print_hash_value);
    transparent_crc(p_3766->g_1407.x, "p_3766->g_1407.x", print_hash_value);
    transparent_crc(p_3766->g_1407.y, "p_3766->g_1407.y", print_hash_value);
    transparent_crc(p_3766->g_1407.z, "p_3766->g_1407.z", print_hash_value);
    transparent_crc(p_3766->g_1408.x, "p_3766->g_1408.x", print_hash_value);
    transparent_crc(p_3766->g_1408.y, "p_3766->g_1408.y", print_hash_value);
    transparent_crc(p_3766->g_1408.z, "p_3766->g_1408.z", print_hash_value);
    transparent_crc(p_3766->g_1408.w, "p_3766->g_1408.w", print_hash_value);
    transparent_crc(p_3766->g_1418.x, "p_3766->g_1418.x", print_hash_value);
    transparent_crc(p_3766->g_1418.y, "p_3766->g_1418.y", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        transparent_crc(p_3766->g_1453[i], "p_3766->g_1453[i]", print_hash_value);

    }
    transparent_crc(p_3766->g_1470.x, "p_3766->g_1470.x", print_hash_value);
    transparent_crc(p_3766->g_1470.y, "p_3766->g_1470.y", print_hash_value);
    transparent_crc(p_3766->g_1474.x, "p_3766->g_1474.x", print_hash_value);
    transparent_crc(p_3766->g_1474.y, "p_3766->g_1474.y", print_hash_value);
    transparent_crc(p_3766->g_1474.z, "p_3766->g_1474.z", print_hash_value);
    transparent_crc(p_3766->g_1474.w, "p_3766->g_1474.w", print_hash_value);
    transparent_crc(p_3766->g_1480.x, "p_3766->g_1480.x", print_hash_value);
    transparent_crc(p_3766->g_1480.y, "p_3766->g_1480.y", print_hash_value);
    transparent_crc(p_3766->g_1485.x, "p_3766->g_1485.x", print_hash_value);
    transparent_crc(p_3766->g_1506.x, "p_3766->g_1506.x", print_hash_value);
    transparent_crc(p_3766->g_1506.y, "p_3766->g_1506.y", print_hash_value);
    transparent_crc(p_3766->g_1584.x, "p_3766->g_1584.x", print_hash_value);
    transparent_crc(p_3766->g_1584.y, "p_3766->g_1584.y", print_hash_value);
    transparent_crc(p_3766->g_1584.z, "p_3766->g_1584.z", print_hash_value);
    transparent_crc(p_3766->g_1597.x, "p_3766->g_1597.x", print_hash_value);
    transparent_crc(p_3766->g_1597.y, "p_3766->g_1597.y", print_hash_value);
    transparent_crc(p_3766->g_1597.z, "p_3766->g_1597.z", print_hash_value);
    transparent_crc(p_3766->g_1618, "p_3766->g_1618", print_hash_value);
    transparent_crc(p_3766->g_1631.x, "p_3766->g_1631.x", print_hash_value);
    transparent_crc(p_3766->g_1634.x, "p_3766->g_1634.x", print_hash_value);
    transparent_crc(p_3766->g_1634.y, "p_3766->g_1634.y", print_hash_value);
    transparent_crc(p_3766->g_1634.z, "p_3766->g_1634.z", print_hash_value);
    transparent_crc(p_3766->g_1634.w, "p_3766->g_1634.w", print_hash_value);
    transparent_crc(p_3766->g_1648.x, "p_3766->g_1648.x", print_hash_value);
    transparent_crc(p_3766->g_1648.y, "p_3766->g_1648.y", print_hash_value);
    transparent_crc(p_3766->g_1648.z, "p_3766->g_1648.z", print_hash_value);
    transparent_crc(p_3766->g_1648.w, "p_3766->g_1648.w", print_hash_value);
    transparent_crc(p_3766->g_1720.x, "p_3766->g_1720.x", print_hash_value);
    transparent_crc(p_3766->g_1720.y, "p_3766->g_1720.y", print_hash_value);
    transparent_crc(p_3766->g_1822.x, "p_3766->g_1822.x", print_hash_value);
    transparent_crc(p_3766->g_1822.y, "p_3766->g_1822.y", print_hash_value);
    transparent_crc(p_3766->g_1825.x, "p_3766->g_1825.x", print_hash_value);
    transparent_crc(p_3766->g_1854.x, "p_3766->g_1854.x", print_hash_value);
    transparent_crc(p_3766->g_1854.y, "p_3766->g_1854.y", print_hash_value);
    transparent_crc(p_3766->g_1854.z, "p_3766->g_1854.z", print_hash_value);
    transparent_crc(p_3766->g_1854.w, "p_3766->g_1854.w", print_hash_value);
    transparent_crc(p_3766->g_1880.x, "p_3766->g_1880.x", print_hash_value);
    transparent_crc(p_3766->g_1880.y, "p_3766->g_1880.y", print_hash_value);
    transparent_crc(p_3766->g_1883.x, "p_3766->g_1883.x", print_hash_value);
    transparent_crc(p_3766->g_1883.y, "p_3766->g_1883.y", print_hash_value);
    transparent_crc(p_3766->g_1919.x, "p_3766->g_1919.x", print_hash_value);
    transparent_crc(p_3766->g_1919.y, "p_3766->g_1919.y", print_hash_value);
    transparent_crc(p_3766->g_1919.z, "p_3766->g_1919.z", print_hash_value);
    transparent_crc(p_3766->g_1921.x, "p_3766->g_1921.x", print_hash_value);
    transparent_crc(p_3766->g_1942.x, "p_3766->g_1942.x", print_hash_value);
    transparent_crc(p_3766->g_1942.y, "p_3766->g_1942.y", print_hash_value);
    transparent_crc(p_3766->g_1942.z, "p_3766->g_1942.z", print_hash_value);
    transparent_crc(p_3766->g_1942.w, "p_3766->g_1942.w", print_hash_value);
    transparent_crc(p_3766->g_2014.x, "p_3766->g_2014.x", print_hash_value);
    transparent_crc(p_3766->g_2014.y, "p_3766->g_2014.y", print_hash_value);
    transparent_crc(p_3766->g_2064.x, "p_3766->g_2064.x", print_hash_value);
    transparent_crc(p_3766->g_2064.y, "p_3766->g_2064.y", print_hash_value);
    transparent_crc(p_3766->g_2066.x, "p_3766->g_2066.x", print_hash_value);
    transparent_crc(p_3766->g_2066.y, "p_3766->g_2066.y", print_hash_value);
    transparent_crc(p_3766->g_2066.z, "p_3766->g_2066.z", print_hash_value);
    transparent_crc(p_3766->g_2073, "p_3766->g_2073", print_hash_value);
    transparent_crc(p_3766->g_2091.x, "p_3766->g_2091.x", print_hash_value);
    transparent_crc(p_3766->g_2091.y, "p_3766->g_2091.y", print_hash_value);
    transparent_crc(p_3766->g_2091.z, "p_3766->g_2091.z", print_hash_value);
    transparent_crc(p_3766->g_2091.w, "p_3766->g_2091.w", print_hash_value);
    transparent_crc(p_3766->g_2122.x, "p_3766->g_2122.x", print_hash_value);
    transparent_crc(p_3766->g_2122.y, "p_3766->g_2122.y", print_hash_value);
    transparent_crc(p_3766->g_2122.z, "p_3766->g_2122.z", print_hash_value);
    transparent_crc(p_3766->g_2122.w, "p_3766->g_2122.w", print_hash_value);
    transparent_crc(p_3766->g_2151.x, "p_3766->g_2151.x", print_hash_value);
    transparent_crc(p_3766->g_2151.y, "p_3766->g_2151.y", print_hash_value);
    transparent_crc(p_3766->g_2159, "p_3766->g_2159", print_hash_value);
    transparent_crc(p_3766->g_2180.x, "p_3766->g_2180.x", print_hash_value);
    transparent_crc(p_3766->g_2180.y, "p_3766->g_2180.y", print_hash_value);
    transparent_crc(p_3766->g_2184.x, "p_3766->g_2184.x", print_hash_value);
    transparent_crc(p_3766->g_2184.y, "p_3766->g_2184.y", print_hash_value);
    transparent_crc(p_3766->g_2184.z, "p_3766->g_2184.z", print_hash_value);
    transparent_crc(p_3766->g_2184.w, "p_3766->g_2184.w", print_hash_value);
    transparent_crc(p_3766->g_2205.x, "p_3766->g_2205.x", print_hash_value);
    transparent_crc(p_3766->g_2205.y, "p_3766->g_2205.y", print_hash_value);
    transparent_crc(p_3766->g_2205.z, "p_3766->g_2205.z", print_hash_value);
    transparent_crc(p_3766->g_2205.w, "p_3766->g_2205.w", print_hash_value);
    transparent_crc(p_3766->g_2240.x, "p_3766->g_2240.x", print_hash_value);
    transparent_crc(p_3766->g_2404.x, "p_3766->g_2404.x", print_hash_value);
    transparent_crc(p_3766->g_2404.y, "p_3766->g_2404.y", print_hash_value);
    transparent_crc(p_3766->g_2404.z, "p_3766->g_2404.z", print_hash_value);
    transparent_crc(p_3766->g_2419.x, "p_3766->g_2419.x", print_hash_value);
    transparent_crc(p_3766->g_2419.y, "p_3766->g_2419.y", print_hash_value);
    transparent_crc(p_3766->g_2419.z, "p_3766->g_2419.z", print_hash_value);
    transparent_crc(p_3766->g_2419.w, "p_3766->g_2419.w", print_hash_value);
    transparent_crc(p_3766->g_2478.x, "p_3766->g_2478.x", print_hash_value);
    transparent_crc(p_3766->g_2478.y, "p_3766->g_2478.y", print_hash_value);
    transparent_crc(p_3766->g_2479.x, "p_3766->g_2479.x", print_hash_value);
    transparent_crc(p_3766->g_2479.y, "p_3766->g_2479.y", print_hash_value);
    transparent_crc(p_3766->g_2502.x, "p_3766->g_2502.x", print_hash_value);
    transparent_crc(p_3766->g_2502.y, "p_3766->g_2502.y", print_hash_value);
    transparent_crc(p_3766->g_2502.z, "p_3766->g_2502.z", print_hash_value);
    transparent_crc(p_3766->g_2502.w, "p_3766->g_2502.w", print_hash_value);
    transparent_crc(p_3766->g_2534.x, "p_3766->g_2534.x", print_hash_value);
    transparent_crc(p_3766->g_2534.y, "p_3766->g_2534.y", print_hash_value);
    transparent_crc(p_3766->g_2534.z, "p_3766->g_2534.z", print_hash_value);
    transparent_crc(p_3766->g_2538.x, "p_3766->g_2538.x", print_hash_value);
    transparent_crc(p_3766->g_2538.y, "p_3766->g_2538.y", print_hash_value);
    transparent_crc(p_3766->g_2538.z, "p_3766->g_2538.z", print_hash_value);
    transparent_crc(p_3766->g_2538.w, "p_3766->g_2538.w", print_hash_value);
    transparent_crc(p_3766->g_2557.x, "p_3766->g_2557.x", print_hash_value);
    transparent_crc(p_3766->g_2557.y, "p_3766->g_2557.y", print_hash_value);
    transparent_crc(p_3766->g_2574.x, "p_3766->g_2574.x", print_hash_value);
    transparent_crc(p_3766->g_2582.x, "p_3766->g_2582.x", print_hash_value);
    transparent_crc(p_3766->g_2582.y, "p_3766->g_2582.y", print_hash_value);
    transparent_crc(p_3766->g_2582.z, "p_3766->g_2582.z", print_hash_value);
    transparent_crc(p_3766->g_2699.x, "p_3766->g_2699.x", print_hash_value);
    transparent_crc(p_3766->g_2699.y, "p_3766->g_2699.y", print_hash_value);
    transparent_crc(p_3766->g_2699.z, "p_3766->g_2699.z", print_hash_value);
    transparent_crc(p_3766->g_2705.x, "p_3766->g_2705.x", print_hash_value);
    transparent_crc(p_3766->g_2705.y, "p_3766->g_2705.y", print_hash_value);
    transparent_crc(p_3766->g_2705.z, "p_3766->g_2705.z", print_hash_value);
    transparent_crc(p_3766->g_2705.w, "p_3766->g_2705.w", print_hash_value);
    transparent_crc(p_3766->g_2708.x, "p_3766->g_2708.x", print_hash_value);
    transparent_crc(p_3766->g_2712.x, "p_3766->g_2712.x", print_hash_value);
    transparent_crc(p_3766->g_2712.y, "p_3766->g_2712.y", print_hash_value);
    transparent_crc(p_3766->g_2795.x, "p_3766->g_2795.x", print_hash_value);
    transparent_crc(p_3766->g_2795.y, "p_3766->g_2795.y", print_hash_value);
    transparent_crc(p_3766->g_2795.z, "p_3766->g_2795.z", print_hash_value);
    transparent_crc(p_3766->g_2814.x, "p_3766->g_2814.x", print_hash_value);
    transparent_crc(p_3766->g_2814.y, "p_3766->g_2814.y", print_hash_value);
    transparent_crc(p_3766->g_2814.z, "p_3766->g_2814.z", print_hash_value);
    transparent_crc(p_3766->g_2822.x, "p_3766->g_2822.x", print_hash_value);
    transparent_crc(p_3766->g_2830.x, "p_3766->g_2830.x", print_hash_value);
    transparent_crc(p_3766->g_2833.x, "p_3766->g_2833.x", print_hash_value);
    transparent_crc(p_3766->g_2838, "p_3766->g_2838", print_hash_value);
    transparent_crc(p_3766->g_2876.x, "p_3766->g_2876.x", print_hash_value);
    transparent_crc(p_3766->g_2885.x, "p_3766->g_2885.x", print_hash_value);
    transparent_crc(p_3766->g_2885.y, "p_3766->g_2885.y", print_hash_value);
    transparent_crc(p_3766->g_2885.z, "p_3766->g_2885.z", print_hash_value);
    transparent_crc(p_3766->g_2885.w, "p_3766->g_2885.w", print_hash_value);
    transparent_crc(p_3766->g_2898.x, "p_3766->g_2898.x", print_hash_value);
    transparent_crc(p_3766->g_2898.y, "p_3766->g_2898.y", print_hash_value);
    transparent_crc(p_3766->g_2898.z, "p_3766->g_2898.z", print_hash_value);
    transparent_crc(p_3766->g_2910.x, "p_3766->g_2910.x", print_hash_value);
    transparent_crc(p_3766->g_2910.y, "p_3766->g_2910.y", print_hash_value);
    transparent_crc(p_3766->g_2911.x, "p_3766->g_2911.x", print_hash_value);
    transparent_crc(p_3766->g_2911.y, "p_3766->g_2911.y", print_hash_value);
    transparent_crc(p_3766->g_2956, "p_3766->g_2956", print_hash_value);
    transparent_crc(p_3766->g_2965.x, "p_3766->g_2965.x", print_hash_value);
    transparent_crc(p_3766->g_2965.y, "p_3766->g_2965.y", print_hash_value);
    transparent_crc(p_3766->g_2965.z, "p_3766->g_2965.z", print_hash_value);
    transparent_crc(p_3766->g_3028.x, "p_3766->g_3028.x", print_hash_value);
    transparent_crc(p_3766->g_3028.y, "p_3766->g_3028.y", print_hash_value);
    transparent_crc(p_3766->g_3028.z, "p_3766->g_3028.z", print_hash_value);
    transparent_crc(p_3766->g_3076, "p_3766->g_3076", print_hash_value);
    transparent_crc(p_3766->g_3099.x, "p_3766->g_3099.x", print_hash_value);
    transparent_crc(p_3766->g_3116.x, "p_3766->g_3116.x", print_hash_value);
    transparent_crc(p_3766->g_3116.y, "p_3766->g_3116.y", print_hash_value);
    transparent_crc(p_3766->g_3116.z, "p_3766->g_3116.z", print_hash_value);
    transparent_crc(p_3766->g_3116.w, "p_3766->g_3116.w", print_hash_value);
    transparent_crc(p_3766->g_3121.x, "p_3766->g_3121.x", print_hash_value);
    transparent_crc(p_3766->g_3121.y, "p_3766->g_3121.y", print_hash_value);
    transparent_crc(p_3766->g_3133.x, "p_3766->g_3133.x", print_hash_value);
    transparent_crc(p_3766->g_3133.y, "p_3766->g_3133.y", print_hash_value);
    transparent_crc(p_3766->g_3133.z, "p_3766->g_3133.z", print_hash_value);
    transparent_crc(p_3766->g_3133.w, "p_3766->g_3133.w", print_hash_value);
    transparent_crc(p_3766->g_3140.x, "p_3766->g_3140.x", print_hash_value);
    transparent_crc(p_3766->g_3140.y, "p_3766->g_3140.y", print_hash_value);
    transparent_crc(p_3766->g_3140.z, "p_3766->g_3140.z", print_hash_value);
    transparent_crc(p_3766->g_3141.x, "p_3766->g_3141.x", print_hash_value);
    transparent_crc(p_3766->g_3141.y, "p_3766->g_3141.y", print_hash_value);
    transparent_crc(p_3766->g_3160.x, "p_3766->g_3160.x", print_hash_value);
    transparent_crc(p_3766->g_3161.x, "p_3766->g_3161.x", print_hash_value);
    transparent_crc(p_3766->g_3174.x, "p_3766->g_3174.x", print_hash_value);
    transparent_crc(p_3766->g_3174.y, "p_3766->g_3174.y", print_hash_value);
    transparent_crc(p_3766->g_3174.z, "p_3766->g_3174.z", print_hash_value);
    transparent_crc(p_3766->g_3200.x, "p_3766->g_3200.x", print_hash_value);
    transparent_crc(p_3766->g_3200.y, "p_3766->g_3200.y", print_hash_value);
    transparent_crc(p_3766->g_3228, "p_3766->g_3228", print_hash_value);
    transparent_crc(p_3766->g_3277.x, "p_3766->g_3277.x", print_hash_value);
    transparent_crc(p_3766->g_3287.x, "p_3766->g_3287.x", print_hash_value);
    transparent_crc(p_3766->g_3287.y, "p_3766->g_3287.y", print_hash_value);
    transparent_crc(p_3766->g_3287.z, "p_3766->g_3287.z", print_hash_value);
    transparent_crc(p_3766->g_3342.x, "p_3766->g_3342.x", print_hash_value);
    transparent_crc(p_3766->g_3342.y, "p_3766->g_3342.y", print_hash_value);
    transparent_crc(p_3766->g_3342.z, "p_3766->g_3342.z", print_hash_value);
    transparent_crc(p_3766->g_3378.x, "p_3766->g_3378.x", print_hash_value);
    transparent_crc(p_3766->g_3398.x, "p_3766->g_3398.x", print_hash_value);
    transparent_crc(p_3766->g_3398.y, "p_3766->g_3398.y", print_hash_value);
    transparent_crc(p_3766->g_3398.z, "p_3766->g_3398.z", print_hash_value);
    transparent_crc(p_3766->g_3398.w, "p_3766->g_3398.w", print_hash_value);
    transparent_crc(p_3766->g_3409.x, "p_3766->g_3409.x", print_hash_value);
    transparent_crc(p_3766->g_3409.y, "p_3766->g_3409.y", print_hash_value);
    transparent_crc(p_3766->g_3427, "p_3766->g_3427", print_hash_value);
    transparent_crc(p_3766->g_3428.x, "p_3766->g_3428.x", print_hash_value);
    transparent_crc(p_3766->g_3434.x, "p_3766->g_3434.x", print_hash_value);
    transparent_crc(p_3766->g_3434.y, "p_3766->g_3434.y", print_hash_value);
    transparent_crc(p_3766->g_3434.z, "p_3766->g_3434.z", print_hash_value);
    transparent_crc(p_3766->g_3444.x, "p_3766->g_3444.x", print_hash_value);
    transparent_crc(p_3766->g_3444.y, "p_3766->g_3444.y", print_hash_value);
    transparent_crc(p_3766->g_3444.z, "p_3766->g_3444.z", print_hash_value);
    transparent_crc(p_3766->g_3445.x, "p_3766->g_3445.x", print_hash_value);
    transparent_crc(p_3766->g_3445.y, "p_3766->g_3445.y", print_hash_value);
    transparent_crc(p_3766->g_3445.z, "p_3766->g_3445.z", print_hash_value);
    transparent_crc(p_3766->g_3445.w, "p_3766->g_3445.w", print_hash_value);
    transparent_crc(p_3766->g_3452.x, "p_3766->g_3452.x", print_hash_value);
    transparent_crc(p_3766->g_3452.y, "p_3766->g_3452.y", print_hash_value);
    transparent_crc(p_3766->g_3452.z, "p_3766->g_3452.z", print_hash_value);
    transparent_crc(p_3766->g_3452.w, "p_3766->g_3452.w", print_hash_value);
    transparent_crc(p_3766->g_3453.x, "p_3766->g_3453.x", print_hash_value);
    transparent_crc(p_3766->g_3453.y, "p_3766->g_3453.y", print_hash_value);
    transparent_crc(p_3766->g_3453.z, "p_3766->g_3453.z", print_hash_value);
    transparent_crc(p_3766->g_3477.x, "p_3766->g_3477.x", print_hash_value);
    transparent_crc(p_3766->g_3477.y, "p_3766->g_3477.y", print_hash_value);
    transparent_crc(p_3766->g_3516.x, "p_3766->g_3516.x", print_hash_value);
    transparent_crc(p_3766->g_3516.y, "p_3766->g_3516.y", print_hash_value);
    transparent_crc(p_3766->g_3516.z, "p_3766->g_3516.z", print_hash_value);
    transparent_crc(p_3766->g_3603.x, "p_3766->g_3603.x", print_hash_value);
    transparent_crc(p_3766->g_3603.y, "p_3766->g_3603.y", print_hash_value);
    transparent_crc(p_3766->g_3620.x, "p_3766->g_3620.x", print_hash_value);
    transparent_crc(p_3766->g_3620.y, "p_3766->g_3620.y", print_hash_value);
    transparent_crc(p_3766->g_3634.x, "p_3766->g_3634.x", print_hash_value);
    transparent_crc(p_3766->g_3634.y, "p_3766->g_3634.y", print_hash_value);
    transparent_crc(p_3766->g_3659, "p_3766->g_3659", print_hash_value);
    transparent_crc(p_3766->g_3678.x, "p_3766->g_3678.x", print_hash_value);
    transparent_crc(p_3766->g_3678.y, "p_3766->g_3678.y", print_hash_value);
    transparent_crc(p_3766->g_3678.z, "p_3766->g_3678.z", print_hash_value);
    transparent_crc(p_3766->g_3679.x, "p_3766->g_3679.x", print_hash_value);
    transparent_crc(p_3766->g_3679.y, "p_3766->g_3679.y", print_hash_value);
    transparent_crc(p_3766->g_3679.z, "p_3766->g_3679.z", print_hash_value);
    transparent_crc(p_3766->g_3720, "p_3766->g_3720", print_hash_value);
    transparent_crc(p_3766->g_3742.x, "p_3766->g_3742.x", print_hash_value);
    transparent_crc(p_3766->g_3742.y, "p_3766->g_3742.y", print_hash_value);
    transparent_crc(p_3766->g_3742.z, "p_3766->g_3742.z", print_hash_value);
    transparent_crc(p_3766->g_3742.w, "p_3766->g_3742.w", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

