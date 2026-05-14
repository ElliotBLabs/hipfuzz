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
// Seed: 1577289768

/* --- Struct/Union Declarations --- */
struct S0 {
   unsigned f0 : 30;
   uint16_t  f1;
   int32_t  f2;
   uint64_t  f3;
   signed f4 : 30;
};

struct S1 {
   int64_t  f0;
   signed f1 : 15;
   signed f2 : 26;
   signed f3 : 18;
   signed f4 : 22;
   unsigned f5 : 28;
};

struct S2 {
   uint32_t  f0;
   int32_t  f1;
   signed f2 : 17;
   struct S1  f3;
   signed f4 : 8;
   signed f5 : 9;
   unsigned f6 : 17;
   signed f7 : 13;
   signed f8 : 30;
};

union U3 {
   uint64_t  f0;
   uint16_t  f1;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ struct S2 hip_const_1;
__constant__ int16_t hip_const_2;
__constant__ uint32_t hip_const_3;
__constant__ uint32_t hip_const_4;
__constant__ struct S2 hip_const_5;
__constant__ union U3 hip_const_6;
__constant__ int16_t hip_const_7;
__constant__ int32_t hip_const_8;
__constant__ struct S0 hip_const_9;
__constant__ union U3 hip_const_10[6];
__constant__ int16_t hip_const_11[8][4];

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        struct S2 host_hip_const_1 = {4294967295UL,-6L,56,{1L,60,7324,163,36,10343},8,2,333,34,-11541};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        int16_t host_hip_const_2 = 0xE360L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        uint32_t host_hip_const_3 = 0x41311E2DL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        uint32_t host_hip_const_4 = 0xEBBD4856L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        struct S2 host_hip_const_5 = {0x398963ECL,9L,-337,{-2L,47,-2703,473,-1918,4306},4,8,98,4,7611};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        union U3 host_hip_const_6 = {0x5161E33ECDC0F1FALL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        int16_t host_hip_const_7 = 0x3EEDL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        int32_t host_hip_const_8 = 0x1B5F7A0DL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        struct S0 host_hip_const_9 = {32760,0x36A7L,1L,0xFC7DF39F3C5A4A10LL,-12964};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        union U3 host_hip_const_10[6] = {{7UL}, {0UL}, {7UL}, {0UL}, {7UL}, {0UL}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
        int16_t host_hip_const_11[8][4] = {{0x20C3L, 3L, (-5L), 3L}, {0x20C3L, 3L, (-5L), 3L}, {0x20C3L, 3L, (-5L), 3L}, {0x20C3L, 3L, (-5L), 3L}, {0x20C3L, 3L, (-5L), 3L}, {0x20C3L, 3L, (-5L), 3L}, {0x20C3L, 3L, (-5L), 3L}, {0x20C3L, 3L, (-5L), 3L}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_11, &host_hip_const_11, sizeof(host_hip_const_11)));
}

struct S4 {
    int8_t g_23;
    uint64_t *g_65;
    struct S0 g_68;
    uint4 g_74;
    uint64_t **g_77;
    int4 g_100;
    ushort2 g_104;
    ushort3 g_105;
    ulong4 g_110;
    int32_t *g_111;
    long3 g_146;
    ushort3 g_149;
    char2 g_171;
    uint8_t *g_175;
    struct S2 g_178;
    int16_t *g_183;
    int8_t *g_208;
    uint32_t g_248;
    int2 g_249;
    long3 g_279;
    long3 g_280;
    long4 g_283;
    struct S0 *g_309;
    struct S0 **g_308;
    uint16_t *g_341;
    uint16_t *g_344;
    uint1 g_364;
    uint1 g_367;
    uint8_t g_401;
    struct S0 *g_410;
    int2 g_411;
    union U3 *g_445;
    int8_t g_457;
    char4 g_507;
    int3 g_555;
    int3 g_558;
    int2 g_560;
    int1 g_561;
    ushort1 g_596;
    ushort1 g_605;
    uint4 g_615;
    short4 g_623;
    uchar4 g_638;
    int32_t **g_657;
    int32_t ***g_656[1];
    int32_t ****g_655;
    int32_t *****g_654[1];
    long4 g_683;
    uint64_t ***g_712[2][9];
    union U3 **g_725;
    union U3 ***g_724[10];
    long3 g_754;
    struct S2 *g_767[10][10][2];
    struct S2 **g_766;
    struct S2 ***g_765;
    struct S1 *g_833;
    int8_t g_886;
    char2 g_908;
    uchar2 g_916;
    struct S2 ***g_928[10];
    short4 g_940;
    uint32_t g_974;
    uint3 g_1004;
    uint8_t g_1047;
    int4 g_1058;
    uchar2 g_1078;
    short3 g_1101;
    ulong4 g_1153;
    long1 g_1222;
    int32_t g_1264;
    uchar4 g_1372;
    long2 g_1382;
    short2 g_1404;
    int2 g_1418;
    int2 g_1420;
    ulong2 g_1421;
    uint3 g_1446;
    int64_t g_1579;
    struct S1 **g_1602;
    struct S1 ***g_1601[8][2][6];
    struct S1 ****g_1600[2];
    int4 g_1617;
    uchar4 g_1631;
    uchar2 g_1633;
    uint2 g_1636;
    int4 g_1661;
    uint2 g_1667;
    ushort3 g_1679;
    int64_t g_1700;
    uint16_t g_1706;
    int2 g_1770;
    char3 g_1780;
    char4 g_1782;
    union U3 ****g_1786;
    int2 g_1839;
    int64_t *g_1843;
    int64_t **g_1842;
    struct S0 ***g_1849;
    struct S0 ****g_1848[9][6];
    ushort4 g_1890;
    ushort1 g_1891;
    long1 g_1898;
    long3 g_1904;
    long3 g_1923;
    short1 g_1931;
    struct S2 ****g_1946[6][6][7];
    struct S2 *****g_1945;
    uint1 g_1996;
    uint32_t g_2072;
    long2 g_2112;
    long3 g_2113;
    long3 g_2154;
    struct S0 *****g_2183;
    struct S0 *****g_2185;
    int1 g_2208;
    uint16_t g_2306[10][5];
    ushort2 g_2344;
    int32_t g_2409;
    uchar4 g_2427;
    long2 g_2441;
    long4 g_2458;
    int4 g_2552;
    uchar1 g_2563;
    int4 g_2604;
    uint32_t **g_2614;
    struct S0 g_2618;
    int4 g_2682;
    long3 g_2744;
    int16_t **g_2761;
    int2 g_2806;
    long3 g_2873;
    uint2 g_2890;
    ushort1 g_2919;
    int4 g_2930;
    int4 g_2931;
    long4 g_2948;
    int1 g_2973;
    uint32_t ***g_3064;
    uint32_t ****g_3063[3];
    uint3 g_3065;
    int3 g_3066;
    int4 g_3075;
    char2 g_3093;
    char4 g_3094;
    uchar3 g_3095;
    int64_t g_3138;
    short4 g_3161;
    short3 g_3172;
    short4 g_3173;
    short3 g_3174;
    long1 g_3187;
    uint8_t g_3192;
    short1 g_3223;
    ushort1 g_3238;
    uchar1 g_3253;
    short2 g_3254;
    uint64_t ****g_3256;
    uint64_t *****g_3255;
    long3 g_3295;
    uint64_t *g_3301;
    ushort3 g_3306;
    ushort3 g_3310;
    ushort1 g_3314;
    ushort3 g_3336;
};


/* --- FORWARD DECLARATIONS --- */
__device__ struct S2  func_1(struct S4 * p_3366);
__device__ int16_t  func_7(uint32_t  p_8, struct S4 * p_3366);
__device__ uint32_t  func_9(uint8_t  p_10, struct S2  p_11, struct S4 * p_3366);
__device__ int8_t  func_41(uint16_t  p_42, uint64_t * p_43, int32_t  p_44, struct S4 * p_3366);
__device__ uint64_t * func_45(uint64_t * p_46, struct S4 * p_3366);
__device__ uint64_t * func_47(int16_t * p_48, uint64_t  p_49, struct S4 * p_3366);
__device__ struct S1  func_51(uint64_t * p_52, int64_t  p_53, int16_t  p_54, struct S4 * p_3366);
__device__ uint64_t * func_55(uint32_t  p_56, struct S4 * p_3366);
__device__ struct S2  func_59(struct S1  p_60, int16_t * p_61, struct S4 * p_3366);
__device__ struct S1  func_62(uint64_t * p_63, struct S0  p_64, struct S4 * p_3366);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_1.f3.f3 hip_const_5.f7 hip_const_9.f3 hip_const_6 hip_const_1.f2 p_3366->g_65 hip_const_9 p_3366->g_74 hip_const_5.f2 p_3366->g_171 hip_const_1.f3 p_3366->g_175 p_3366->g_110 hip_const_1 p_3366->g_111 p_3366->g_100 hip_const_5 p_3366->g_68.f3 p_3366->g_183 hip_const_11 hip_const_2 p_3366->g_146 p_3366->g_248 p_3366->g_249 p_3366->g_178.f3.f0 p_3366->g_279 p_3366->g_280 p_3366->g_283 p_3366->g_208 p_3366->g_23 p_3366->g_308 hip_const_10 p_3366->g_178.f1 p_3366->g_178.f6 p_3366->g_178.f8 hip_const_4 p_3366->g_341 p_3366->g_364 p_3366->g_367 p_3366->g_178.f0 p_3366->g_68.f1 p_3366->g_507 p_3366->g_178.f3 p_3366->g_401 p_3366->g_555 p_3366->g_558 p_3366->g_560 p_3366->g_561 p_3366->g_178.f2 p_3366->g_178.f5 p_3366->g_178.f4 p_3366->g_596 p_3366->g_605 p_3366->g_615 p_3366->g_623 p_3366->g_638 p_3366->g_654 p_3366->g_683 p_3366->g_724 p_3366->g_105 p_3366->g_754 p_3366->g_765 p_3366->g_833 p_3366->g_309 p_3366->g_68 p_3366->g_655 p_3366->g_656 p_3366->g_657 p_3366->g_886 p_3366->g_974 p_3366->g_149 p_3366->g_940 p_3366->g_1004 p_3366->g_725 p_3366->g_344 hip_const_7 p_3366->g_1839 p_3366->g_457 p_3366->g_1842 p_3366->g_1848 p_3366->g_1890 p_3366->g_1891 p_3366->g_1898 p_3366->g_1904 p_3366->g_1843 p_3366->g_1923 p_3366->g_1931 p_3366->g_104 p_3366->g_1945 p_3366->g_1996 p_3366->g_1786 p_3366->g_1617 p_3366->g_1421 p_3366->g_2072 p_3366->g_1418 p_3366->g_2112 p_3366->g_2113 p_3366->g_2154 p_3366->g_1849 p_3366->g_1602 p_3366->g_2208 p_3366->g_2306 p_3366->g_1047 p_3366->g_1264 p_3366->g_1946 p_3366->g_2614 p_3366->g_1579 p_3366->g_2185 p_3366->g_2183 p_3366->g_2806 p_3366->g_2618.f3 p_3366->g_1153 p_3366->g_2973 p_3366->g_1706 p_3366->g_3065 p_3366->g_3066 p_3366->g_3075 p_3366->g_3093 p_3366->g_3094 p_3366->g_3095 p_3366->g_2618 p_3366->g_2890 p_3366->g_3161 p_3366->g_3172 p_3366->g_3173 p_3366->g_3174 p_3366->g_3187 p_3366->g_2409 p_3366->g_3192 p_3366->g_3238 p_3366->g_3253 p_3366->g_3254 p_3366->g_3255 p_3366->g_1058 p_3366->g_3295 p_3366->g_3301 p_3366->g_3306 p_3366->g_3310 p_3366->g_3314 p_3366->g_3336
 * writes: p_3366->g_65 p_3366->g_68 p_3366->g_77 p_3366->g_23 p_3366->g_178 p_3366->g_111 p_3366->g_183 p_3366->g_100 p_3366->g_208 p_3366->g_146 p_3366->g_110 p_3366->g_308 p_3366->g_248 p_3366->g_341 p_3366->g_344 p_3366->g_280 p_3366->g_309 p_3366->g_410 p_3366->g_445 p_3366->g_401 p_3366->g_638 p_3366->g_712 p_3366->g_724 p_3366->g_507 p_3366->g_596 p_3366->g_279 p_3366->g_605 p_3366->g_765 p_3366->g_928 p_3366->g_974 p_3366->g_886 p_3366->g_767 p_3366->g_457 p_3366->g_1842 p_3366->g_1222 p_3366->g_1848 p_3366->g_940 p_3366->g_2072 p_3366->g_2183 p_3366->g_2185 p_3366->g_1890 p_3366->g_1946 p_3366->g_1945 p_3366->g_1579 p_3366->g_2306 p_3366->g_833 p_3366->g_175 p_3366->g_1047 p_3366->g_1264 p_3366->g_2618 p_3366->g_1004 p_3366->g_1600 p_3366->g_916 p_3366->g_2761 p_3366->g_1602 p_3366->g_1706 p_3366->g_3063 p_3366->g_3064 p_3366->g_2890 p_3366->g_2409 p_3366->g_1700 p_3366->g_766 p_3366->g_1780
 */
__device__ struct S2  func_1(struct S4 * p_3366)
{ /* block id: 0 */
    uint32_t l_4 = 18446744073709551615UL;
    uint64_t *l_16 = &hip_const_9.f3;
    uint64_t *l_17 = &hip_const_10[1].f0;
    uint64_t *l_18 = &hip_const_9.f3;
    uint64_t *l_19 = &hip_const_10[1].f0;
    int32_t l_20 = (-5L);
    int32_t l_21 = 0L;
    uint64_t *l_22[9];
    uint16_t l_24 = 0xCE79L;
    int16_t *l_31 = &hip_const_7;
    int16_t *l_32 = &hip_const_2;
    int16_t *l_33 = &hip_const_11[0][3];
    __shared__ int16_t *l_34;
    l_34 = &hip_const_7;
    int16_t *l_35 = nullptr;
    __shared__ int16_t *l_36;
    l_36 = &hip_const_11[1][1];
    int16_t *l_37[7][1][5] = {{{&hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1]}}, {{&hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1]}}, {{&hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1]}}, {{&hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1]}}, {{&hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1]}}, {{&hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1]}}, {{&hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1], &hip_const_7, &hip_const_11[6][1]}}};
    short3 l_40 = make_short3(5L, 0xE644L, 5L);
    uint64_t l_2255 = 0UL;
    int8_t *l_2969 = &p_3366->g_457;
    int8_t l_2970 = 0xE9L;
    int16_t l_2971 = 0L;
    struct S2 l_2972[1][2] = {{{0x7A8756F5L,1L,133,{0xE1D678D22FD4C3CELL,95,8139,306,245,7939},-12,-16,60,67,18971}, {0x7A8756F5L,1L,133,{0xE1D678D22FD4C3CELL,95,8139,306,245,7939},-12,-16,60,67,18971}}};
    uint32_t *l_3158[2][2] = {{nullptr, &hip_const_1.f0}, {nullptr, &hip_const_1.f0}};
    uint32_t l_3245 = 0xDEC5ABB5L;
    uint64_t *****l_3257 = &p_3366->g_3256;
    struct S1 *****l_3267 = &p_3366->g_1600[1];
    __shared__ union U3 l_3300;
    l_3300 = {4UL};
    // attempting a hip shared for loop
    __shared__ struct S1 ****l_3311[5][3];
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 3; j++)
            l_3311[i][j] = nullptr;
    }
    __shared__ uint16_t l_3322;
    l_3322 = 0x1E6FL;
    int32_t l_3348 = 0x6A2DAD46L;
    uint16_t l_3352 = 7UL;
    int i, j, k;
    for (int i = 0; i < 9; i++)
        l_22[i] = nullptr;
    if ((safe_sub_func_uint64_t_u_u((l_4++), (hip_const_1.f3.f3 < (func_7((p_3366->g_2890.y &= func_9((safe_add_func_uint16_t_u_u((!((safe_mul_func_int64_t_s_s(hip_const_5.f7, ((((*l_2969) = ((l_21 = (l_24--)) | ((safe_lshift_func_uint16_t_u_s((safe_mod_func_int16_t_s_s((l_20 = hip_const_9.f3), (safe_sub_func_uint32_t_u_u((l_40.z , l_40.x), (hip_const_6 , (func_41(l_40.y, func_45(func_47(&hip_const_11[2][1], (hip_const_1.f2 == 0x107178D33F623BA0LL), p_3366), p_3366), l_2255, p_3366) | 0x50L)))))), p_3366->g_1153.y)) && l_40.y))) , l_2970) ^ l_2255))) || l_2971)), l_40.z)), l_2972[0][0], p_3366)), p_3366) & l_3245)))))
    { /* block id: 1429 */
        struct S0 l_3252 = {18020,65530UL,0x6700432FL,0xB5FAC05FCAF600D4LL,-28759};
        int16_t l_3260 = 0x77C0L;
        __shared__ int16_t l_3261;
        l_3261 = 0L;
        uint32_t l_3262 = 18446744073709551610UL;
        struct S2 l_3273[6] = {{4294967292UL,-5L,-295,{0xE51160292229A36ELL,-170,-3115,-163,31,2560},8,-15,330,20,13959}, {4294967292UL,-5L,-295,{0xE51160292229A36ELL,-170,-3115,-163,31,2560},8,-15,330,20,13959}, {4294967292UL,-5L,-295,{0xE51160292229A36ELL,-170,-3115,-163,31,2560},8,-15,330,20,13959}, {4294967292UL,-5L,-295,{0xE51160292229A36ELL,-170,-3115,-163,31,2560},8,-15,330,20,13959}, {4294967292UL,-5L,-295,{0xE51160292229A36ELL,-170,-3115,-163,31,2560},8,-15,330,20,13959}, {4294967292UL,-5L,-295,{0xE51160292229A36ELL,-170,-3115,-163,31,2560},8,-15,330,20,13959}};
        ushort2 l_3307 = make_ushort2(0x4B6FL, 0x8391L);
        int32_t *l_3327 = &p_3366->g_2409;
        int i;
        if ((safe_add_func_int64_t_s_s((!((safe_mul(((make_long2((((&p_3366->g_724[4] == nullptr) , make_uchar1(255UL).x) > ((safe_lshift_func_uint32_t_u_s((l_3252 , ((l_2972[0][0].f4 = ((make_uint2(4294967295UL, (((make_uchar4(p_3366->g_3253.x, p_3366->g_3253.x, p_3366->g_3253.x, p_3366->g_3253.x).x >= l_2972[0][0].f7) , 0x561CL) > make_short1(p_3366->g_3254.x).x)).x & (((p_3366->g_3255 == l_3257) < (safe_mod_func_int32_t_s_s(0xBF62E6A6L, l_3260))) ^ 8UL)) && l_3252.f1)) | l_3252.f4)), l_2972[0][0].f3.f2)) <= 2UL)), 0x35C9A6D21B0195B8LL) | make_long2(6L, 6L))), make_long2(1L, 1L)))).y), l_3261)))
        { /* block id: 1431 */
            struct S1 *****l_3266 = nullptr;
            int32_t l_3272 = (-1L);
            uint16_t l_3279 = 7UL;
            __shared__ uint32_t l_3315;
            l_3315 = 0xFF961AB1L;
            l_3262 = 4L;
            for (l_21 = (-3); (l_21 <= 4); ++l_21)
            { /* block id: 1435 */
                char4 l_3265 = make_char4((-1L), (-2L), (-1L), (-2L));
                __shared__ int32_t *l_3276;
                l_3276 = nullptr;
                int32_t *l_3277 = nullptr;
                // attempting a hip shared for loop
                __shared__ int32_t *l_3278[8][2][8];
                for (int i = 0; i < 8; i++)
                {
                    for (int j = 0; j < 2; j++)
                    {
                        for (int k = 0; k < 8; k++)
                            l_3278[i][j][k] = nullptr;
                    }
                }
                union U3 **l_3280[8][6] = {{&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}, {&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}, {&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}, {&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}, {&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}, {&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}, {&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}, {&p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, &p_3366->g_445, nullptr}};
                int64_t l_3316 = 0x58216C10DF518787LL;
                struct S1 l_3317 = {-1L,62,4617,155,-1324,8618};
                struct S2 l_3325 = {0x96A02216L,0x67D682C8L,-299,{0x03A189BEC7C54E92LL,-73,5336,-40,-1819,8648},2,-9,129,5,-21184};
                int i, j, k;
                if (((((((*l_2969) = make_char1(l_3265.x).x) , l_3266) == l_3267) | (((((safe_mul_func_uint64_t_u_u(l_3252.f0, (l_3252.f0 >= l_3252.f4))) & (l_3279 = (((safe_div_func_uint32_t_u_u(((l_3272 < 0xFFDB434EL) , make_uint3((l_3273[2] , (safe_div_func_int64_t_s_s(0xBC28BBEDE7E56D92LL, (**p_3366->g_1842)))), 1UL, 0x025D1215L).y), l_3265.y)) > l_3272) & l_3273[2].f3.f4))) >= (-8L)) > l_3272) <= 0L)) != (*p_3366->g_1843)))
                { /* block id: 1438 */
                    struct S1 l_3285 = {0x001FCD465C56C76DLL,-96,3193,-255,1158,14420};
                    uint16_t *l_3296 = nullptr;
                    uint16_t *l_3297 = &l_3252.f1;
                    int32_t l_3298[7] = {(-1L), 0L, (-1L), 0L, (-1L), 0L, (-1L)};
                    __shared__ uint32_t l_3299;
                    l_3299 = 0x68622381L;
                    int i;
                    l_3298[5] ^= ((((**p_3366->g_1786) == l_3280[4][5]) | (safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s((((l_24 ^ 0xBCD1F540L) , l_3285) , (safe_unary_minus_func_uint8_t_u((safe_div_func_uint16_t_u_u(((*l_3297) = (safe_sub_func_uint16_t_u_u(0x8519L, (safe_rshift_func_int32_t_s_s((l_3285.f2 | make_long2((p_3366->g_1058.z >= (safe_sub_func_uint16_t_u_u((make_long2(p_3366->g_3295.z, p_3366->g_3295.z).y <= (l_3252 , 1UL)), 0xCE53L))), l_3272).x), 15))))), 0x1EB2L))))), l_3285.f2)), l_3279))) || l_3273[2].f3.f3);
                    l_3299 = l_2972[0][0].f3.f5;
                    l_3317 = (l_3300 , func_51(p_3366->g_3301, l_2970, (l_3285.f2 | (safe_rshift_func_int64_t_s_u(0xCF2429CABE6A2B58LL, ((*p_3366->g_3301) = ((((safe_rshift(((make_ushort4(p_3366->g_3306.z, p_3366->g_3306.z, p_3366->g_3306.z, p_3366->g_3306.z) ^ ((make_ushort4(l_3307.x, l_3307.x, l_3307.x, l_3307.x) ^ ((safe_div(make_ushort4(p_3366->g_3310.z, p_3366->g_3310.z, p_3366->g_3310.z, p_3366->g_3310.z), make_ushort4(make_ushort4((l_3311[1][1] != nullptr), 0x3E23L, (safe_lshift_func_uint32_t_u_s(l_3252.f2, ((make_ushort1(p_3366->g_3314.x).x || 65535UL) || l_3285.f4))), 1UL).w, l_3285.f5, l_3315, 0x72ADL)))))))), make_ushort4(0x2AA1L, 0x2AA1L, 0x2AA1L, 0x2AA1L)))).w || l_3316) ^ 0xA1L))))), p_3366));
                }
                else
                { /* block id: 1444 */
                    uint32_t l_3318 = 0x87EBBFD0L;
                    int32_t l_3321 = 0L;
                    if (l_3318)
                        break;
                    (*p_3366->g_657) = &l_20;
                    for (p_3366->g_248 = 0; (p_3366->g_248 >= 51); p_3366->g_248++)
                    { /* block id: 1449 */
                        ++l_3322;
                    }
                }
                l_2972[0][0].f4 = l_3307.y;
                l_3273[2].f2 |= l_3279;
                return l_3325;
            }
        }
        else
        { /* block id: 1457 */
            struct S2 l_3326[6] = {{4294967289UL,1L,-316,{1L,116,-931,-62,1284,15679},14,2,71,28,9076}, {4294967289UL,1L,-316,{1L,116,-931,-62,1284,15679},14,2,71,28,9076}, {4294967289UL,1L,-316,{1L,116,-931,-62,1284,15679},14,2,71,28,9076}, {4294967289UL,1L,-316,{1L,116,-931,-62,1284,15679},14,2,71,28,9076}, {4294967289UL,1L,-316,{1L,116,-931,-62,1284,15679},14,2,71,28,9076}, {4294967289UL,1L,-316,{1L,116,-931,-62,1284,15679},14,2,71,28,9076}};
            int i;
            return l_3326[2];
        }
        l_3327 = nullptr;
        return l_2972[0][0];
    }
    else
    { /* block id: 1462 */
        union U3 l_3343 = {0x04E7C17892DF2336LL};
        int32_t *l_3349 = nullptr;
        int32_t *l_3350 = &p_3366->g_2409;
        int8_t *l_3351[9] = {&l_2970, &l_2970, &l_2970, &l_2970, &l_2970, &l_2970, &l_2970, &l_2970, &l_2970};
        uint8_t l_3353[4][8] = {{1UL, 0xE5L, 255UL, 0xE5L, 1UL, 0xE5L, 255UL, 0xE5L}, {1UL, 0xE5L, 255UL, 0xE5L, 1UL, 0xE5L, 255UL, 0xE5L}, {1UL, 0xE5L, 255UL, 0xE5L, 1UL, 0xE5L, 255UL, 0xE5L}, {1UL, 0xE5L, 255UL, 0xE5L, 1UL, 0xE5L, 255UL, 0xE5L}};
        struct S2 l_3354 = {0UL,1L,-262,{0x1DCC9798B304DB0ALL,179,-5157,-24,315,16228},9,-0,22,33,-26819};
        __shared__ struct S2 *l_3355;
        l_3355 = nullptr;
        struct S2 *l_3356 = nullptr;
        __shared__ struct S2 *l_3357;
        l_3357 = &l_3354;
        struct S2 l_3358[6] = {{0x1B005505L,0x02750AC0L,-119,{0x480CF2ABC83944E2LL,-26,2123,290,994,15253},-6,-13,26,-53,19182}, {0x1B005505L,0x02750AC0L,-119,{0x480CF2ABC83944E2LL,-26,2123,290,994,15253},-6,-13,26,-53,19182}, {0xC95D9EC5L,0x4207B3D0L,292,{0xDF22320127E57FD0LL,-159,-7576,-476,-722,13398},-5,14,19,-10,-27275}, {0x1B005505L,0x02750AC0L,-119,{0x480CF2ABC83944E2LL,-26,2123,290,994,15253},-6,-13,26,-53,19182}, {0x1B005505L,0x02750AC0L,-119,{0x480CF2ABC83944E2LL,-26,2123,290,994,15253},-6,-13,26,-53,19182}, {0xC95D9EC5L,0x4207B3D0L,292,{0xDF22320127E57FD0LL,-159,-7576,-476,-722,13398},-5,14,19,-10,-27275}};
        struct S2 l_3365 = {1UL,0x3F069EE4L,32,{-5L,-159,-7977,-246,-1127,15121},-15,21,175,23,21425};
        int i, j;
        l_21 &= ((l_2972[0][0].f2 || ((l_2972[0][0].f6 && (((safe_sub_func_uint16_t_u_u((l_2972[0][0] , ((safe_mod_func_int64_t_s_s((safe_mod_func_int8_t_s_s((p_3366->g_1780.z = (((safe_sub(make_ushort2(p_3366->g_3336.y, p_3366->g_3336.y), ((safe_mod(make_ushort2((*p_3366->g_341), 8UL), make_ushort2(7UL, (safe_lshift_func_int8_t_s_u(((*l_2969) = (0x5BCD32BEL < ((*l_3350) = (((safe_lshift_func_int64_t_s_s((0x30L == make_uchar1(0x1DL).x), 37)) <= ((((l_3343 , ((safe_add_func_uint8_t_u_u((make_int2((-10L), 2L).y , ((((!(safe_sub_func_uint32_t_u_u(l_2972[0][0].f3.f4, 0xA4456694L))) | l_2255) ^ l_3348) , 0x15L)), p_3366->g_178.f3.f0)) | l_3343.f0)) , l_20) || 0x83L) < (-1L))) >= p_3366->g_507.z)))), l_3348))))))))).y == l_2972[0][0].f3.f2)), hip_const_1.f3.f0)), l_3352)) < l_3353[2][2])), 0xE255L)) > (*p_3366->g_183)) , (*l_3350))) | l_2255)) && (*p_3366->g_183));
        l_3358[4] = ((*l_3357) = l_3354);
        for (p_3366->g_1047 = 14; (p_3366->g_1047 != 46); ++p_3366->g_1047)
        { /* block id: 1471 */
            int2 l_3361 = make_int2(0x1425DA53L, 0xAC5AB4F9L);
            __shared__ short4 l_3364;
            l_3364 = make_short4(1L, 1L, 1L, 1L);
            int i;
            (*l_3350) = make_int3(l_2972[0][0].f0, make_int2(l_3361.y, l_3361.y).x, 0x7FC88C12L).z;
            for (p_3366->g_248 = 0; (p_3366->g_248 >= 35); p_3366->g_248 = safe_add_func_uint8_t_u_u(p_3366->g_248, 2))
            { /* block id: 1475 */
                (*l_3350) ^= (make_short3(l_3364.z, l_3364.z, l_3364.z).z < l_3364.x);
            }
            return l_3365;
        }
    }
    return l_2972[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_3161 p_3366->g_3172 p_3366->g_3173 p_3366->g_3174 p_3366->g_183 hip_const_11 hip_const_7 p_3366->g_655 p_3366->g_656 p_3366->g_657 p_3366->g_1843 hip_const_1.f3.f0 p_3366->g_3187 p_3366->g_2185 p_3366->g_1848 p_3366->g_2409 p_3366->g_111 p_3366->g_178.f0 p_3366->g_3192 p_3366->g_1602 p_3366->g_974 p_3366->g_765 p_3366->g_3238 p_3366->g_401
 * writes: p_3366->g_111 p_3366->g_2409 p_3366->g_178.f0 p_3366->g_1700 p_3366->g_833 p_3366->g_974 p_3366->g_766 p_3366->g_401
 */
__device__ int16_t  func_7(uint32_t  p_8, struct S4 * p_3366)
{ /* block id: 1361 */
    int16_t l_3159 = 0x1DE1L;
    struct S0 l_3160[6] = {{25399,2UL,-1L,0xDA6A9BC45C4B7EC5LL,-2583}, {25399,2UL,-1L,0xDA6A9BC45C4B7EC5LL,-2583}, {23277,0x726AL,0x3CC51435L,0x8927BD3461A33D72LL,-12741}, {25399,2UL,-1L,0xDA6A9BC45C4B7EC5LL,-2583}, {25399,2UL,-1L,0xDA6A9BC45C4B7EC5LL,-2583}, {23277,0x726AL,0x3CC51435L,0x8927BD3461A33D72LL,-12741}};
    __shared__ uint32_t l_3207;
    l_3207 = 0x758E92EDL;
    int32_t *l_3231 = nullptr;
    uint32_t l_3244[5];
    int i;
    for (int i = 0; i < 5; i++)
        l_3244[i] = 4294967295UL;
    if (l_3159)
    { /* block id: 1362 */
lbl_3241:
        l_3160[4] = l_3160[4];
    }
    else
    { /* block id: 1364 */
        __shared__ short3 l_3168;
        l_3168 = make_short3(0xDB46L, 0x6DD6L, 0xDB46L);
        short3 l_3169 = make_short3(0x801CL, 0x7467L, 0x801CL);
        struct S2 *l_3180 = &hip_const_5;
        int32_t l_3188 = 0L;
        int32_t l_3210 = 6L;
        int32_t *l_3243 = nullptr;
        int i;
        if ((make_short4(p_3366->g_3161.x, p_3366->g_3161.x, p_3366->g_3161.x, p_3366->g_3161.x).x & (safe_mul_func_uint16_t_u_u((safe_mul_func_uint64_t_u_u(l_3160[4].f4, make_long3((-2L), (safe_mod_func_int16_t_s_s(((((make_short2(l_3168.y, l_3168.y) ^ ((safe_unary_minus(make_short2(l_3169.z, l_3169.z)))))) ^ ((((safe_mod(make_short2(p_3366->g_3172.y, p_3366->g_3172.y), make_short2(p_3366->g_3173.x, p_3366->g_3173.x)))) ^ make_short2(p_3366->g_3174.y, p_3366->g_3174.y))))).y, (*p_3366->g_183))), (safe_sub_func_int16_t_s_s((*p_3366->g_183), ((make_short2(0xCCD7L, (-3L)) ^ make_short2(1L, 0x8629L))).y))).x)), ((safe_div_func_int32_t_s_s((-4L), p_8)) != l_3160[4].f0)))))
        { /* block id: 1365 */
            int32_t *l_3179 = &p_3366->g_2409;
            struct S2 *l_3181 = &hip_const_5;
            struct S2 *l_3182[1][9];
            int i, j;
            for (int i = 0; i < 1; i++)
            {
                for (int j = 0; j < 9; j++)
                    l_3182[i][j] = &hip_const_1;
            }
            (***p_3366->g_655) = l_3179;
            l_3188 &= ((*p_3366->g_111) = (((p_8 , ((l_3181 = l_3180) != l_3182[0][0])) >= (safe_div_func_uint64_t_u_u(((((safe_mod_func_int64_t_s_s((*p_3366->g_1843), make_long2(p_3366->g_3187.x, p_3366->g_3187.x).y)) == p_8) == ((l_3160[4] , (*p_3366->g_2185)) != nullptr)) < (5UL < p_8)), p_8))) | (*l_3179)));
        }
        else
        { /* block id: 1370 */
            uint3 l_3195 = make_uint3(4UL, 0x219A2446L, 4UL);
            uint16_t l_3196 = 65535UL;
            int8_t **l_3230 = &p_3366->g_208;
            int i;
            for (l_3188 = 1; (l_3188 >= 0); l_3188 -= 1)
            { /* block id: 1373 */
                int32_t ****l_3189 = &p_3366->g_656[0];
                uint32_t l_3201[8][3][6] = {{{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}, {{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}, {{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}, {{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}, {{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}, {{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}, {{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}, {{18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}, {18446744073709551615UL, 0xEC95B8C8L, 18446744073709551614UL, 0x049805F7L, 18446744073709551615UL, 0xF2254F9AL}}};
                struct S2 l_3212[8][1] = {{{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}, {{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}, {{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}, {{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}, {{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}, {{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}, {{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}, {{0xCE005AB1L,-5L,-63,{0xE34F9A325CF162C8LL,-152,-3555,443,774,5156},-10,16,80,-23,25445}}};
                struct S1 *l_3213[10] = {&hip_const_1.f3, nullptr, &hip_const_1.f3, nullptr, &hip_const_1.f3, nullptr, &hip_const_1.f3, nullptr, &hip_const_1.f3, nullptr};
                // attempting a hip shared for loop
                __shared__ struct S2 **l_3214[6][9];
                for (int i = 0; i < 6; i++)
                {
                    for (int j = 0; j < 9; j++)
                        l_3214[i][j] = nullptr;
                }
                union U3 *l_3216 = &hip_const_10[1];
                int i, j, k;
                for (p_3366->g_178.f0 = 0; (p_3366->g_178.f0 <= 9); p_3366->g_178.f0 += 1)
                { /* block id: 1376 */
                    uint32_t *l_3202 = &hip_const_5.f0;
                    uint32_t *l_3203 = &p_3366->g_2072;
                    __shared__ uint8_t *l_3204;
                    l_3204 = nullptr;
                    uint8_t *l_3205 = nullptr;
                    uint8_t *l_3206[5][6][8] = {{{&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}}, {{&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}}, {{&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}}, {{&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}}, {{&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}, {&p_3366->g_3192, nullptr, &p_3366->g_401, nullptr, &p_3366->g_3192, nullptr, nullptr, nullptr}}};
                    int32_t l_3208 = 3L;
                    int32_t *l_3209 = nullptr;
                    __shared__ struct S2 l_3211;
                    l_3211 = {4294967290UL,-1L,177,{0x3147F59EC1348862LL,82,-4637,104,1472,7680},-10,5,145,67,16852};
                    int i, j, k;
                    for (p_3366->g_1700 = 1; (p_3366->g_1700 >= 0); p_3366->g_1700 -= 1)
                    { /* block id: 1379 */
                        if (p_8)
                            break;
                    }
                    l_3210 = (l_3160[4].f4 = ((nullptr == l_3189) | ((safe_mod_func_int8_t_s_s(p_8, p_3366->g_3192)) || ((make_uchar1(0x18L) ^ ((safe_div(make_uchar1((l_3208 = (l_3207 |= ((l_3196 = make_uint3(l_3195.y, l_3195.y, l_3195.y).z) & (safe_mul_func_uint32_t_u_u(((*l_3203) = (safe_lshift_func_uint32_t_u_s(l_3201[2][2][3], 24))), (nullptr == &p_3366->g_1842))))))), make_uchar1(3UL)))))).x)));
                    l_3212[0][0] = l_3211;
                    for (l_3159 = 0; (l_3159 <= 9); l_3159 += 1)
                    { /* block id: 1391 */
                        if (l_3168.y)
                            break;
                        (*p_3366->g_1602) = l_3213[2];
                    }
                }
                for (p_3366->g_974 = 0; (p_3366->g_974 <= 1); p_3366->g_974 += 1)
                { /* block id: 1398 */
                    union U3 *l_3215 = &hip_const_10[1];
                    int32_t l_3229 = 0x441E233CL;
                    for (p_3366->g_178.f0 = 0; (p_3366->g_178.f0 <= 1); p_3366->g_178.f0 += 1)
                    { /* block id: 1401 */
                        int16_t *l_3224 = &hip_const_11[2][1];
                        int16_t *l_3225 = &hip_const_11[2][1];
                        int16_t *l_3226 = nullptr;
                        int16_t *l_3227 = &hip_const_11[2][1];
                        __shared__ int16_t *l_3228;
                        l_3228 = &l_3159;
                        __shared__ uint32_t *l_3234;
                        l_3234 = nullptr;
                        uint32_t *l_3235 = nullptr;
                        uint32_t *l_3236 = nullptr;
                        uint32_t *l_3237[7] = {&l_3212[0][0].f0, &l_3212[0][0].f0, &l_3212[0][0].f0, &l_3212[0][0].f0, &l_3212[0][0].f0, &l_3212[0][0].f0, &l_3212[0][0].f0};
                        __shared__ int32_t *l_3239;
                        l_3239 = nullptr;
                        int32_t *l_3240 = &p_3366->g_2409;
                        int i, j, k;
                        (*p_3366->g_657) = nullptr;
                        (***p_3366->g_655) = (((l_3201[(l_3188 + 6)][(l_3188 + 1)][l_3188] > (((*p_3366->g_765) = l_3214[4][1]) == l_3214[4][5])) & (((make_int2(0x49AF4083L, 0xA31B8662L).x ^ ((((l_3201[(l_3188 + 3)][(l_3188 + 1)][(l_3188 + 3)] , l_3215) != (l_3207 , l_3216)) & (safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(make_char2(0L, ((make_char3(((safe_div_func_int16_t_s_s(((*l_3228) = make_short3(p_3366->g_3223.x, p_3366->g_3223.x, p_3366->g_3223.x).y), l_3229)) < ((l_3230 != nullptr) & p_8)), (-8L), 9L) & make_char3(0x57L, 0x57L, 0x57L))).z).y, 2)), l_3201[3][1][4]))) || l_3201[(l_3188 + 3)][(l_3188 + 1)][(l_3188 + 3)])) >= l_3229) >= l_3160[4].f0)) , l_3231);
                        (*l_3240) = (safe_lshift_func_int16_t_s_u(((p_8 |= l_3229) != 5UL), make_ushort3(p_3366->g_3238.x, p_3366->g_3238.x, p_3366->g_3238.x).z));
                    }
                    for (p_3366->g_401 = 0; (p_3366->g_401 <= 1); p_3366->g_401 += 1)
                    { /* block id: 1411 */
                        if (p_3366->g_3192)
                            goto lbl_3241;
                        l_3229 |= (-1L);
                        (*p_3366->g_657) = &l_3229;
                    }
                    for (l_3159 = 5; (l_3159 >= 0); l_3159 -= 1)
                    { /* block id: 1418 */
                        int32_t l_3242 = 0L;
                        int i, j, k;
                        l_3242 &= (~l_3201[(p_3366->g_974 + 6)][(l_3188 + 1)][(p_3366->g_974 + 4)]);
                        if (l_3201[l_3159][(l_3188 + 1)][(l_3188 + 4)])
                            break;
                    }
                }
                return (*p_3366->g_183);
            }
            l_3243 = &l_3210;
        }
    }
    return l_3244[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_2973 p_3366->g_1264 p_3366->g_1706 p_3366->g_2072 p_3366->g_1842 p_3366->g_1843 hip_const_1.f3.f0 p_3366->g_3065 p_3366->g_3066 p_3366->g_341 hip_const_9.f1 p_3366->g_3075 p_3366->g_68.f1 p_3366->g_3093 p_3366->g_3094 p_3366->g_3095 p_3366->g_605 p_3366->g_178.f3 p_3366->g_100 hip_const_1.f7 p_3366->g_178.f5 p_3366->g_23 p_3366->g_146 p_3366->g_638 p_3366->g_654 hip_const_5.f3 p_3366->g_886 p_3366->g_657 p_3366->g_655 p_3366->g_656 p_3366->g_2618
 * writes: p_3366->g_1264 p_3366->g_1706 p_3366->g_2072 p_3366->g_178.f3.f0 p_3366->g_3063 p_3366->g_68.f1 p_3366->g_605 p_3366->g_23 p_3366->g_401 p_3366->g_178.f5 p_3366->g_178.f0 p_3366->g_68.f3 p_3366->g_638 p_3366->g_111 p_3366->g_886 p_3366->g_3064 p_3366->g_178 p_3366->g_175
 */
__device__ uint32_t  func_9(uint8_t  p_10, struct S2  p_11, struct S4 * p_3366)
{ /* block id: 1239 */
    __shared__ struct S2 *l_2978;
    l_2978 = &p_3366->g_178;
    int32_t l_2982[5][1][8] = {{{1L, 0x65EE5EBFL, 1L, (-1L), 0x5B44261FL, (-1L), 1L, 0x65EE5EBFL}}, {{1L, 0x65EE5EBFL, 1L, (-1L), 0x5B44261FL, (-1L), 1L, 0x65EE5EBFL}}, {{1L, 0x65EE5EBFL, 1L, (-1L), 0x5B44261FL, (-1L), 1L, 0x65EE5EBFL}}, {{1L, 0x65EE5EBFL, 1L, (-1L), 0x5B44261FL, (-1L), 1L, 0x65EE5EBFL}}, {{1L, 0x65EE5EBFL, 1L, (-1L), 0x5B44261FL, (-1L), 1L, 0x65EE5EBFL}}};
    uint16_t l_3003 = 0x4F37L;
    uint8_t l_3006 = 3UL;
    uint32_t *l_3020 = nullptr;
    // attempting a hip shared for loop
    __shared__ uint32_t **l_3019[4][10];
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 10; j++)
            l_3019[i][j] = nullptr;
    }
    int64_t *l_3038 = nullptr;
    __shared__ char1 l_3056;
    l_3056 = make_char1(2L);
    int32_t l_3071 = 0x903E2901L;
    int32_t l_3072 = 0L;
    uint64_t *l_3079[4];
    int32_t l_3126 = (-1L);
    uint32_t l_3127 = 18446744073709551615UL;
    uint1 l_3144 = make_uint1(4294967292UL);
    int32_t *****l_3147 = &p_3366->g_655;
    __shared__ uint64_t l_3148;
    l_3148 = 0x45B591A1C7A6565FLL;
    struct S0 *l_3149 = &p_3366->g_2618;
    union U3 l_3151 = {0x466A1C2E72957769LL};
    uint8_t **l_3154 = nullptr;
    uint8_t **l_3155 = &p_3366->g_175;
    __shared__ int32_t *l_3156;
    l_3156 = nullptr;
    int32_t *l_3157 = &l_2982[3][0][0];
    int i, j, k;
    for (int i = 0; i < 4; i++)
        l_3079[i] = &p_3366->g_68.f3;
    if (make_int3(p_3366->g_2973.x, p_3366->g_2973.x, p_3366->g_2973.x).y)
    { /* block id: 1240 */
        __shared__ int8_t l_2974;
        l_2974 = 1L;
        int32_t *l_2975 = &p_3366->g_1264;
        int16_t ***l_2977 = &p_3366->g_2761;
        int16_t ****l_2976 = &l_2977;
        uint32_t l_2981 = 1UL;
        __shared__ struct S0 l_3001;
        l_3001 = {6753,0x50A0L,0xF3BBF43EL,18446744073709551613UL,-23058};
        struct S0 ****l_3027 = &p_3366->g_1849;
        int32_t l_3037 = 0L;
        union U3 l_3041[4] = {{1UL}, {1UL}, {1UL}, {1UL}};
        int64_t *l_3059 = &p_3366->g_178.f3.f0;
        __shared__ uint32_t ***l_3061;
        l_3061 = &p_3366->g_2614;
        uint32_t ****l_3060 = &l_3061;
        // attempting a hip shared for loop
        __shared__ uint32_t *****l_3062[1][1];
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 1; j++)
                l_3062[i][j] = &l_3060;
        }
        uint16_t *l_3069 = &hip_const_6.f1;
        int8_t *l_3070[7][10] = {{nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886, &p_3366->g_457, &p_3366->g_886, nullptr, &p_3366->g_886}};
        int i, j;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 1; j++)
                l_3062[i][j] = &l_3060;
        }
        (*l_2975) ^= l_2974;
        (*l_2976) = &p_3366->g_2761;
        for (p_3366->g_1706 = 0; (p_3366->g_1706 <= 1); p_3366->g_1706 += 1)
        { /* block id: 1245 */
            uint32_t l_3002 = 0UL;
            int32_t l_3016 = 0xC42B2B54L;
            __shared__ int2 l_3032;
            l_3032 = make_int2(0x584A650BL, 0x905D9D5CL);
            int32_t *l_3048[4];
            int i;
            for (int i = 0; i < 4; i++)
                l_3048[i] = nullptr;
            l_2978 = nullptr;
            (*l_2975) &= (safe_mod_func_int32_t_s_s(l_2981, l_2982[3][0][0]));
            for (p_3366->g_2072 = 0; (p_3366->g_2072 <= 1); p_3366->g_2072 += 1)
            { /* block id: 1250 */
                uint32_t l_2989 = 1UL;
                __shared__ int8_t **l_3042;
                l_3042 = nullptr;
                int1 l_3045 = make_int1(9L);
                int i;
            }
        }
        if ((safe_rshift_func_int32_t_s_s((make_ushort4(0xEC68L, (make_ulong2((((safe_add_func_uint16_t_u_u((((((((safe_rshift_func_int64_t_s_s((**p_3366->g_1842), (make_char2(l_3056.x, l_3056.x).y && (l_3072 = (l_3071 ^= ((safe_lshift_func_int8_t_s_s((*l_2975), ((((*l_3059) = p_11.f3.f2) , ((((p_3366->g_3063[1] = l_3060) == &p_3366->g_3064) > make_uint3(p_3366->g_3065.x, p_3366->g_3065.x, p_3366->g_3065.x).y) == l_3056.x)) < make_int4(p_3366->g_3066.z, p_3366->g_3066.z, p_3366->g_3066.z, p_3366->g_3066.z).x))) != ((safe_sub(make_ushort4(1UL, (l_3003 & (l_2982[3][0][3] ^= p_11.f1)), l_3006, (*l_2975)), make_ushort4(65530UL, 65530UL, 65530UL, 65530UL)))).w)))))) <= l_3006) && (*l_2975)) & (*l_2975)) , nullptr) == &l_3019[0][7]) <= 1UL), (*p_3366->g_341))) ^ (*l_2975)) == p_11.f6), p_11.f1).y ^ p_11.f3.f0), 1UL, 0xF225L).y != l_3056.x), (*l_2975))))
        { /* block id: 1291 */
            int32_t *l_3076 = nullptr;
            p_11.f3.f4 |= (((safe_sub_func_int8_t_s_s((0xD8C21609L & ((make_int1(1L) ^ make_int1(p_3366->g_3075.w))).x), p_11.f5)) == 2UL) && (*l_2975));
            l_3076 = &l_3071;
        }
        else
        { /* block id: 1294 */
            struct S1 ***l_3085 = &p_3366->g_1602;
            uint3 l_3102 = make_uint3(0x78B0D18DL, 4294967295UL, 0x78B0D18DL);
            int i;
            for (p_3366->g_68.f1 = 0; (p_3366->g_68.f1 >= 30); p_3366->g_68.f1++)
            { /* block id: 1297 */
                uint16_t l_3082 = 1UL;
                struct S1 ***l_3086 = &p_3366->g_1602;
                uint16_t *l_3105 = nullptr;
                uint16_t *l_3106 = &hip_const_9.f1;
                uint16_t *l_3107 = &hip_const_9.f1;
                uint16_t *l_3108[6][7][6] = {{{&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}}, {{&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}}, {{&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}}, {{&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}}, {{&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}}, {{&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}, {&p_3366->g_2618.f1, &p_3366->g_68.f1, nullptr, nullptr, nullptr, &l_3082}}};
                uint32_t l_3115 = 0UL;
                int i, j, k;
                if (((make_int4((func_51(l_3079[2], ((p_3366->g_605.x &= (safe_lshift_func_uint64_t_u_u(((l_3082 | (safe_sub_func_uint16_t_u_u((l_3085 != l_3086), make_short2(0x1A9BL, 9L).x))) , (safe_sub_func_uint32_t_u_u(p_11.f3.f4, ((((safe_div(make_uint3(1UL, (l_2982[2][0][7] & (safe_sub_func_int8_t_s_s(((((make_char3(p_3366->g_3093.y, p_3366->g_3093.y, p_3366->g_3093.y) ^ make_char3(0L, 0x71L, 0x41L))) ^ make_char3(p_3366->g_3094.z, p_3366->g_3094.z, p_3366->g_3094.z))).z, make_uchar3(p_3366->g_3095.x, p_3366->g_3095.x, p_3366->g_3095.x).x))), 0x19235B2CL), ((safe_mod(((((safe_sub(((((safe_rshift(make_uint3(4294967295UL, 4294967295UL, make_uint4(l_3102.x, l_3102.x, l_3102.x, l_3102.x).x), make_uint3(l_3102.y, 0x2197F681L, 0x50EF5CABL)))) | make_uint3(((((((safe_div_func_uint16_t_u_u(p_10, p_11.f3.f4)) <= (*l_2975)) & l_3102.z) != p_11.f2) & l_3082) | 0x7FB7480E6B68A0BFLL), p_11.f3.f4, p_11.f8))), make_uint3(0UL, 0UL, 0UL)))) ^ make_uint3(0xEA3F375EL, 0xEA3F375EL, 0xEA3F375EL))), make_uint3(1UL, 1UL, 1UL))))))) ^ make_uint3(0UL, 0UL, 0UL))).z))), 46))) ^ 0xAE1AL), (*l_2975), p_3366) , (-1L)), p_11.f5, 4L, p_11.f8) ^ make_int4((-8L), (-8L), (-8L), (-8L)))).y)
                { /* block id: 1299 */
                    int32_t l_3111 = 0xA9AFE31EL;
                    for (p_3366->g_1264 = 0; (p_3366->g_1264 >= 16); ++p_3366->g_1264)
                    { /* block id: 1302 */
                        int32_t *l_3114 = &l_3037;
                        p_11.f3.f4 = (l_3111 , 0xFFA35317L);
                        l_3001.f4 ^= ((-4L) & (p_11.f0--));
                        (*l_3114) ^= (p_11.f5 |= p_11.f3.f3);
                    }
                }
                else
                { /* block id: 1309 */
                    p_11.f3.f1 = (2L < l_3115);
                }
            }
        }
    }
    else
    { /* block id: 1314 */
        __shared__ long3 l_3117;
        l_3117 = make_long3(0L, 1L, 0L);
        // attempting a hip shared for loop
        __shared__ int32_t *l_3121[5][7][3];
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 7; j++)
            {
                for (int k = 0; k < 3; k++)
                    l_3121[i][j][k] = nullptr;
            }
        }
        uint32_t l_3123 = 0xDB760D75L;
        struct S0 *l_3150 = &p_3366->g_68;
        int i, j, k;
        if ((safe_unary_minus_func_int64_t_s(make_long4(l_3117.z, l_3117.z, l_3117.z, l_3117.z).w)))
        { /* block id: 1315 */
            struct S2 l_3120 = {0xF311212DL,0x3B3E15C4L,183,{-3L,129,-1536,358,109,1902},0,17,81,-1,-1730};
            for (p_3366->g_886 = (-4); (p_3366->g_886 <= 6); p_3366->g_886++)
            { /* block id: 1318 */
                int32_t *l_3122 = &l_3071;
                l_3122 = (l_3120 , l_3121[4][1][2]);
            }
            ++l_3123;
            (*p_3366->g_657) = &l_2982[1][0][3];
            ++l_3127;
        }
        else
        { /* block id: 1324 */
            uint64_t l_3139 = 9UL;
            for (p_11.f0 = (-2); (p_11.f0 == 29); p_11.f0++)
            { /* block id: 1327 */
                uint32_t ****l_3132 = &p_3366->g_3064;
                int32_t l_3137 = 0x3E881313L;
                int32_t *****l_3146 = &p_3366->g_655;
                if ((((*p_3366->g_1843) , (*p_3366->g_341)) != (((*l_3132) = &l_3019[0][4]) != nullptr)))
                { /* block id: 1329 */
                    int32_t *l_3136 = nullptr;
                    for (p_3366->g_2072 = 25; (p_3366->g_2072 >= 18); p_3366->g_2072--)
                    { /* block id: 1332 */
                        int16_t l_3135 = 4L;
                        l_3135 |= (p_11.f3.f3 = make_int3(0xD44AA516L, (-1L), (-9L)).y);
                        (***p_3366->g_655) = l_3136;
                    }
                    for (p_10 = 0; (p_10 <= 1); p_10 += 1)
                    { /* block id: 1339 */
                        l_3139--;
                        return p_11.f3.f3;
                    }
                }
                else
                { /* block id: 1343 */
                    if ((safe_mod_func_uint32_t_u_u(make_uint1(l_3144.x).x, p_11.f3.f1)))
                    { /* block id: 1344 */
                        struct S2 l_3145 = {0x2A06C7FFL,-1L,-218,{-1L,96,2906,-212,1308,10310},13,-6,240,9,29440};
                        (*l_2978) = l_3145;
                        l_3147 = l_3146;
                    }
                    else
                    { /* block id: 1347 */
                        return l_3148;
                    }
                    (***p_3366->g_655) = nullptr;
                }
            }
            l_3150 = l_3149;
        }
    }
    (*l_3157) &= ((l_3151 , l_3006) && (((safe_mul_func_int64_t_s_s((**p_3366->g_1842), (*p_3366->g_1843))) , (*l_3149)) , (p_11.f6 &= ((((*l_3155) = &p_10) != &p_10) != ((6UL || (p_11.f3.f0 <= l_3003)) & l_3072)))));
    return p_11.f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_68.f2 p_3366->g_655 p_3366->g_656 p_3366->g_657 p_3366->g_111 p_3366->g_2306 p_3366->g_1602 p_3366->g_100 hip_const_5 p_3366->g_1842 p_3366->g_1843 hip_const_1.f3.f0 p_3366->g_341 hip_const_9.f1 p_3366->g_555 p_3366->g_249 p_3366->g_183 hip_const_11 hip_const_7 p_3366->g_1047 p_3366->g_308 p_3366->g_149 p_3366->g_1264 p_3366->g_1945 p_3366->g_1946 p_3366->g_2614 p_3366->g_974 p_3366->g_1579 p_3366->g_2072 p_3366->g_2185 p_3366->g_1848 p_3366->g_2183 p_3366->g_1004 p_3366->g_401 p_3366->g_68.f3 p_3366->g_146 p_3366->g_605 p_3366->g_2806 p_3366->g_1849 p_3366->g_2618.f3 p_3366->g_178.f0 p_3366->g_248
 * writes: p_3366->g_68.f2 p_3366->g_111 p_3366->g_1579 p_3366->g_2306 p_3366->g_1842 p_3366->g_833 p_3366->g_100 p_3366->g_175 p_3366->g_1047 p_3366->g_309 p_3366->g_1264 p_3366->g_178.f1 p_3366->g_1946 p_3366->g_974 p_3366->g_2072 p_3366->g_2618 p_3366->g_457 p_3366->g_1004 p_3366->g_68.f3 p_3366->g_1600 p_3366->g_916 p_3366->g_2761 p_3366->g_1222 p_3366->g_178.f0 p_3366->g_1602 p_3366->g_248 p_3366->g_178
 */
__device__ int8_t  func_41(uint16_t  p_42, uint64_t * p_43, int32_t  p_44, struct S4 * p_3366)
{ /* block id: 923 */
    int32_t l_2266[8][7] = {{0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}, {0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}, {0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}, {0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}, {0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}, {0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}, {0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}, {0x728DB434L, (-6L), 0xC1400692L, 0x34808B45L, 0x7A25DB5DL, (-8L), 0x7A25DB5DL}};
    int64_t l_2269[9] = {0xC0663E77BAB7553CLL, 0xC0663E77BAB7553CLL, 0L, 0xC0663E77BAB7553CLL, 0xC0663E77BAB7553CLL, 0L, 0xC0663E77BAB7553CLL, 0xC0663E77BAB7553CLL, 0L};
    int32_t *****l_2279 = &p_3366->g_655;
    union U3 *l_2284[6][9] = {{nullptr, &hip_const_10[1], &hip_const_10[1], &hip_const_10[1], &hip_const_6, &hip_const_6, &hip_const_6, &hip_const_10[1], &hip_const_10[1]}, {nullptr, &hip_const_10[1], &hip_const_10[1], &hip_const_10[1], &hip_const_6, &hip_const_6, &hip_const_6, &hip_const_10[1], &hip_const_10[1]}, {nullptr, &hip_const_10[1], &hip_const_10[1], &hip_const_10[1], &hip_const_6, &hip_const_6, &hip_const_6, &hip_const_10[1], &hip_const_10[1]}, {nullptr, &hip_const_10[1], &hip_const_10[1], &hip_const_10[1], &hip_const_6, &hip_const_6, &hip_const_6, &hip_const_10[1], &hip_const_10[1]}, {nullptr, &hip_const_10[1], &hip_const_10[1], &hip_const_10[1], &hip_const_6, &hip_const_6, &hip_const_6, &hip_const_10[1], &hip_const_10[1]}, {nullptr, &hip_const_10[1], &hip_const_10[1], &hip_const_10[1], &hip_const_6, &hip_const_6, &hip_const_6, &hip_const_10[1], &hip_const_10[1]}};
    int32_t l_2292 = (-1L);
    int32_t l_2296 = 4L;
    int32_t l_2297 = 0xBE20F6F8L;
    int32_t l_2298 = 0L;
    __shared__ int16_t *l_2340;
    l_2340 = nullptr;
    int64_t **l_2345[1][2];
    __shared__ struct S1 *l_2355;
    l_2355 = &hip_const_5.f3;
    char4 l_2364 = make_char4(1L, 0x4BL, 1L, 0x4BL);
    int32_t l_2410[5][4];
    int2 l_2433 = make_int2(1L, (-1L));
    int64_t l_2480 = (-1L);
    int32_t l_2577 = 0x304337D2L;
    uint1 l_2581 = make_uint1(0x40FC1924L);
    __shared__ int64_t l_2596;
    l_2596 = (-1L);
    int1 l_2681 = make_int1(0xC716EC58L);
    uint16_t **l_2710 = &p_3366->g_341;
    __shared__ uchar3 l_2765;
    l_2765 = make_uchar3(1UL, 1UL, 1UL);
    __shared__ struct S2 *l_2766;
    l_2766 = nullptr;
    __shared__ uint16_t l_2767;
    l_2767 = 0x285CL;
    ulong4 l_2790 = make_ulong4(0x72D1BD0F3C89E724LL, 0x36A0C2B6C2FEF034LL, 0x72D1BD0F3C89E724LL, 0x36A0C2B6C2FEF034LL);
    long1 l_2793 = make_long1(0x650B19D18335B729LL);
    uint8_t **l_2796 = &p_3366->g_175;
    union U3 l_2798 = {0xD822505EC6C34A9FLL};
    union U3 l_2799 = {0UL};
    union U3 l_2802 = {0x4CD18AB0FB64FBFALL};
    __shared__ ushort4 l_2803;
    l_2803 = make_ushort4(0x5836L, 0x94A7L, 0x5836L, 0x94A7L);
    int32_t *l_2811 = nullptr;
    int32_t *l_2812 = nullptr;
    int32_t *l_2813 = nullptr;
    int32_t *l_2814 = &l_2410[4][2];
    struct S0 *l_2815 = nullptr;
    union U3 *l_2825[10];
    int2 l_2830 = make_int2(0x2E28880EL, 6L);
    uint64_t **l_2834 = &p_3366->g_65;
    uint64_t l_2840 = 3UL;
    __shared__ uint16_t l_2934;
    l_2934 = 0xA3FAL;
    int32_t l_2968 = 0x5EF44CBBL;
    int i, j;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
            l_2345[i][j] = &p_3366->g_1843;
    }
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 4; j++)
            l_2410[i][j] = (-6L);
    }
    for (int i = 0; i < 10; i++)
        l_2825[i] = &l_2802;
    for (p_3366->g_68.f2 = 0; (p_3366->g_68.f2 < 13); ++p_3366->g_68.f2)
    { /* block id: 926 */
        int32_t l_2263 = 0xC1D97442L;
        __shared__ int32_t l_2293;
        l_2293 = (-1L);
        int32_t l_2295 = 0xB4D35DECL;
        __shared__ int32_t l_2299;
        l_2299 = (-1L);
        int32_t l_2301 = 0L;
        __shared__ int32_t l_2302;
        l_2302 = 0x8947B8B6L;
        __shared__ int32_t l_2303;
        l_2303 = 0x1289D53DL;
        int32_t l_2304 = 0x70C55F7EL;
        int32_t l_2305 = 0x1C016380L;
        struct S1 *l_2356[3][9] = {{&hip_const_5.f3, &hip_const_1.f3, &p_3366->g_178.f3, &hip_const_5.f3, &hip_const_5.f3, &p_3366->g_178.f3, &hip_const_1.f3, &hip_const_5.f3, &p_3366->g_178.f3}, {&hip_const_5.f3, &hip_const_1.f3, &p_3366->g_178.f3, &hip_const_5.f3, &hip_const_5.f3, &p_3366->g_178.f3, &hip_const_1.f3, &hip_const_5.f3, &p_3366->g_178.f3}, {&hip_const_5.f3, &hip_const_1.f3, &p_3366->g_178.f3, &hip_const_5.f3, &hip_const_5.f3, &p_3366->g_178.f3, &hip_const_1.f3, &hip_const_5.f3, &p_3366->g_178.f3}};
        int32_t l_2411 = 0xFA950982L;
        __shared__ uint16_t *l_2422;
        l_2422 = &hip_const_9.f1;
        __shared__ int2 l_2435;
        l_2435 = make_int2(0x97C5ECC2L, 1L);
        // attempting a hip shared for loop
        __shared__ struct S0 l_2454[2];
        for (int i = 0; i < 2; i++)
            l_2454[i] = {19754,0xC7B4L,0xBE8296A7L,0UL,-14550};
        int4 l_2546 = make_int4(0xEE3ECAC3L, 1L, 0xEE3ECAC3L, 1L);
        struct S1 ****l_2557 = &p_3366->g_1601[5][0][3];
        __shared__ union U3 **l_2560;
        l_2560 = &l_2284[1][3];
        // attempting a hip shared for loop
        __shared__ uint16_t l_2568[7][2][9];
        for (int i = 0; i < 7; i++)
        {
            for (int j = 0; j < 2; j++)
            {
                for (int k = 0; k < 9; k++)
                    l_2568[i][j][k] = 0UL;
            }
        }
        uint32_t l_2597 = 4294967287UL;
        __shared__ uint16_t l_2600;
        l_2600 = 65535UL;
        int8_t *l_2635[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
        int32_t *l_2751 = &l_2410[4][2];
        int16_t **l_2762 = &p_3366->g_183;
        struct S2 l_2794 = {0x9361C8F6L,-4L,79,{2L,-2,6778,142,-1815,3120},14,19,176,47,26720};
        uint32_t ***l_2795 = &p_3366->g_2614;
        int i, j, k;
        (***p_3366->g_655) = &p_44;
        (****p_3366->g_655) ^= 0xD8029D14L;
        if (make_int1((-7L)).x)
        { /* block id: 929 */
            int4 l_2260 = make_int4(0x96AB81CEL, 0x595C66BEL, 0x96AB81CEL, 0x595C66BEL);
            uint32_t l_2270 = 0x00D7C190L;
            __shared__ int16_t l_2271;
            l_2271 = 0xE278L;
            int32_t l_2272 = 0x08F24768L;
            int16_t *l_2280[10] = {&hip_const_2, &hip_const_7, nullptr, nullptr, &hip_const_7, &hip_const_2, &hip_const_7, nullptr, nullptr, &hip_const_7};
            uint16_t l_2281[4][10][2] = {{{65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}}, {{65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}}, {{65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}}, {{65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}, {65527UL, 0x7B46L}}};
            __shared__ int64_t **l_2346;
            l_2346 = &p_3366->g_1843;
            struct S1 l_2388 = {0x2D8F629416B2144ALL,-109,-8121,-158,1600,6987};
            uint16_t l_2412[2][10][1] = {{{0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}}, {{0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}, {0xAFB2L}}};
            long4 l_2424 = make_long4(0x648BDF4AAAF717BCLL, 7L, 0x648BDF4AAAF717BCLL, 7L);
            int8_t l_2478 = 0xFEL;
            int16_t l_2479 = 0x4E19L;
            __shared__ int32_t l_2482;
            l_2482 = 0x97BC25EDL;
            int32_t *****l_2497 = &p_3366->g_655;
            int2 l_2551 = make_int2(2L, (-1L));
            int64_t l_2576 = 4L;
            __shared__ int32_t l_2580;
            l_2580 = 1L;
            uint64_t l_2603 = 9UL;
            __shared__ struct S0 l_2613;
            l_2613 = {12740,1UL,0x37BCFAD4L,18446744073709551615UL,29339};
            int i, j, k;
            if (((safe_rshift_func_int32_t_s_s(make_int2(l_2260.w, l_2260.w).y, 16)) > (((safe_rshift_func_uint64_t_u_s(0xB44F96E519818E68LL, 30)) | ((l_2272 = (l_2263 == (safe_div_func_uint16_t_u_u((l_2266[0][1] >= (safe_sub_func_int16_t_s_s((l_2269[0] & l_2270), 0L))), (p_42 = l_2271))))) && ((safe_mod_func_uint16_t_u_u((safe_rshift_func_int64_t_s_u((((safe_mul_func_int16_t_s_s(make_short3(0x06CDL, 0x2D51L, (p_3366->g_623.y &= ((l_2272 <= (l_2279 == nullptr)) ^ p_3366->g_1661.w))).z, (-7L))) , (****p_3366->g_655)) | l_2281[1][9][0]), l_2263)), p_42)) , l_2281[1][9][0]))) & l_2263)))
            { /* block id: 933 */
                int32_t l_2309 = (-7L);
                int32_t l_2310 = 7L;
                int32_t l_2311 = 0xDD1C1AEDL;
                int32_t l_2313[10][9] = {{0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}, {0x89B6C44FL, 0x89B6C44FL, (-5L), 0xF778B21BL, 0xD8ED3C79L, 0xF778B21BL, (-5L), 0x89B6C44FL, 0x89B6C44FL}};
                int16_t l_2320 = 0x09CEL;
                uint8_t l_2343[2];
                int32_t *l_2353 = nullptr;
                int i, j;
                for (int i = 0; i < 2; i++)
                    l_2343[i] = 0xC3L;
                for (p_3366->g_1579 = (-14); (p_3366->g_1579 <= (-1)); p_3366->g_1579 = safe_add_func_int16_t_s_s(p_3366->g_1579, 1))
                { /* block id: 936 */
                    union U3 *l_2285 = nullptr;
                    uint64_t *l_2290 = nullptr;
                    uint64_t *l_2291[2];
                    int32_t l_2294 = (-8L);
                    int32_t l_2300 = 0x04206FEDL;
                    __shared__ int32_t l_2315;
                    l_2315 = (-1L);
                    uint64_t l_2321 = 0x39FAD319D691A594LL;
                    uint64_t ****l_2328 = nullptr;
                    struct S1 l_2339 = {-5L,23,980,226,-821,3597};
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_2291[i] = nullptr;
                    l_2285 = l_2284[1][3];
                    if ((safe_div_func_int32_t_s_s(1L, (safe_sub_func_uint64_t_u_u((l_2303 ^= (p_3366->g_2306[8][0]--)), l_2260.z)))))
                    { /* block id: 940 */
                        int64_t l_2312 = 0x38A544C589DA9861LL;
                        int32_t l_2314 = 0x156F4A4AL;
                        __shared__ int32_t l_2316;
                        l_2316 = (-9L);
                        int32_t l_2317 = 0x47910F26L;
                        __shared__ int32_t l_2318;
                        l_2318 = (-2L);
                        int32_t l_2319[2][5][6] = {{{(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}}, {{(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}, {(-8L), (-8L), 0x58992F9AL, (-1L), 0xBC1297B7L, (-1L)}}};
                        int64_t l_2341 = (-1L);
                        int8_t *l_2342 = &p_3366->g_886;
                        int64_t ***l_2347 = &p_3366->g_1842;
                        int i, j, k;
                        l_2299 ^= make_int4(0x6166030CL, ((--l_2321) & ((safe_div_func_uint8_t_u_u(((((l_2260.y = p_42) > (safe_lshift_func_int16_t_s_u(0xF029L, 7))) | (nullptr == l_2328)) <= (p_3366->g_1931.x |= ((safe_mod_func_uint64_t_u_u((l_2309 , (safe_mod_func_int64_t_s_s((safe_add_func_int8_t_s_s(((*l_2342) = ((safe_rshift_func_int16_t_s_u((safe_mod_func_uint64_t_u_u(make_ulong1((func_59(l_2339, l_2340, p_3366) , ((**p_3366->g_1842) && (*p_3366->g_1843)))).x, p_44)), p_44)) > l_2341)), l_2301)), l_2343[0]))), 18446744073709551609UL)) == l_2272))), l_2312)) != l_2309)), (*****l_2279), (-3L)).z;
                        (*p_3366->g_111) &= ((l_2294 = (p_42 , (~(1UL && make_ushort1(p_3366->g_2344.y).x)))) ^ (l_2345[0][1] == ((*l_2347) = (l_2346 = (make_short2((-8L), p_42).y , &p_3366->g_1843)))));
                        return l_2302;
                    }
                    else
                    { /* block id: 951 */
                        int32_t *l_2348 = nullptr;
                        int32_t *l_2349[9][7][4] = {{{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}, {{nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}, {nullptr, &l_2297, &l_2295, &l_2313[2][8]}}};
                        __shared__ uint8_t l_2350;
                        l_2350 = 0x8AL;
                        int i, j, k;
                        --l_2350;
                        (***p_3366->g_655) = &l_2300;
                        (***p_3366->g_655) = (l_2353 = (***p_3366->g_655));
                        return l_2303;
                    }
                }
                (***p_3366->g_655) = &p_44;
            }
            else
            { /* block id: 960 */
                struct S1 *l_2354 = nullptr;
                int32_t l_2357[2];
                char4 l_2367 = make_char4(0xADL, 0xE1L, 0xADL, 0xE1L);
                uint64_t ***l_2374 = &p_3366->g_77;
                __shared__ uint1 l_2375;
                l_2375 = make_uint1(0UL);
                uchar2 l_2389 = make_uchar2(0x30L, 8UL);
                union U3 l_2392 = {0xF1C0D23D3AA5F466LL};
                int3 l_2432 = make_int3(1L, 0L, 1L);
                struct S0 l_2453[7] = {{30061,0xA1B5L,0L,0UL,-6859}, {30061,0xA1B5L,0L,0UL,-6859}, {30061,0xA1B5L,0L,0UL,-6859}, {30061,0xA1B5L,0L,0UL,-6859}, {30061,0xA1B5L,0L,0UL,-6859}, {30061,0xA1B5L,0L,0UL,-6859}, {30061,0xA1B5L,0L,0UL,-6859}};
                uint64_t l_2475 = 0xD3C11791185EBBEDLL;
                long3 l_2521 = make_long3(5L, 0L, 5L);
                __shared__ int32_t l_2525;
                l_2525 = (-8L);
                uint32_t l_2527 = 18446744073709551608UL;
                uint32_t l_2539 = 4294967295UL;
                int i;
                for (int i = 0; i < 2; i++)
                    l_2357[i] = (-7L);
                if (((((*p_3366->g_1602) = l_2354) == (l_2356[0][5] = l_2355)) , l_2357[1]))
                { /* block id: 963 */
                    ulong4 l_2382 = make_ulong4(18446744073709551609UL, 0xC255F736C9D4D5DBLL, 18446744073709551609UL, 0xC255F736C9D4D5DBLL);
                    int i;
                    (*****l_2279) = ((safe_sub_func_uint16_t_u_u(p_42, p_42)) & (safe_sub_func_uint32_t_u_u((safe_sub_func_int16_t_s_s(0xE099L, (p_44 > make_char4(((make_char3(l_2364.y, l_2364.y, l_2364.y) & ((((safe_add(make_char3(l_2367.x, l_2367.x, l_2367.x), make_char3((safe_add_func_int8_t_s_s(((safe_rshift_func_int64_t_s_s((safe_lshift_func_uint64_t_u_s(p_42, 22)), (p_42 != (((((l_2374 != nullptr) > make_uint4(l_2375.x, l_2375.x, l_2375.x, l_2375.x).x) ^ (safe_sub_func_int16_t_s_s(make_short1((safe_mod_func_int8_t_s_s(((make_ulong4(18446744073709551615UL, 18446744073709551610UL, 0x806D1C7AA58AF59CLL, ((~((safe_lshift(make_ulong4(l_2382.x, l_2382.x, l_2382.x, l_2382.x), make_ulong4(18446744073709551615UL, 18446744073709551615UL, 1UL, 0x9A33F73F7124E8F9LL)))))).y).x && l_2382.y) < 0x15L), 0x17L))).x, 5L))) , p_42) >= p_44)))) && 4294967292UL), l_2367.y)), 0x9BL, 0x68L)))) | make_char3(0xF9L, 0xF9L, 0xF9L))))).y, 0xA0L, l_2263, p_44).w))), 0L)));
                }
                else
                { /* block id: 965 */
                    __shared__ uint32_t l_2383;
                    l_2383 = 1UL;
                    if (l_2383)
                        break;
                    (****p_3366->g_655) ^= (-1L);
                }
                if (((*p_3366->g_111) = (safe_add_func_int8_t_s_s(((safe_add(make_char1((((l_2388 , &p_3366->g_1706) != nullptr) >= p_3366->g_1780.x)), make_char1(make_char4(0L, (l_2389.x & (safe_lshift_func_uint64_t_u_s(((l_2392 , (make_ulong4(l_2303, 18446744073709551610UL, ((0x2E54BB6B40ABCA3ALL > ((safe_lshift_func_int64_t_s_s((((((((safe_mul_func_int8_t_s_s((safe_lshift_func_int64_t_s_u((l_2388 , p_42), (*****l_2279))), 252UL)) != p_42) >= 9L) > 255UL) == p_3366->g_2154.z) | p_44) || (*****l_2279)), p_42)) != 0xC663E3D2L)) ^ p_42), 0x8230018E61C5F93CLL).y || l_2270)) , l_2392.f0), 48))), 9L, p_3366->g_1633.y).z)))).x, l_2270))))
                { /* block id: 970 */
                    int32_t *l_2399 = &p_3366->g_1264;
                    int32_t *l_2400 = &l_2292;
                    __shared__ int32_t *l_2401;
                    l_2401 = &l_2298;
                    int32_t *l_2402 = nullptr;
                    int32_t *l_2403 = &l_2296;
                    int32_t *l_2404 = nullptr;
                    int32_t *l_2405 = nullptr;
                    int32_t *l_2406 = &l_2272;
                    int32_t *l_2407 = &l_2295;
                    int32_t *l_2408[3];
                    struct S1 l_2417 = {0xBD01085CDE78E340LL,-145,4727,65,187,1044};
                    long3 l_2423 = make_long3(9L, 0xF3AF06BE2E86D4BDLL, 9L);
                    __shared__ struct S2 ***l_2438;
                    l_2438 = &p_3366->g_766;
                    uint8_t *l_2443[3][2][8] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                    int i, j, k;
                    for (int i = 0; i < 3; i++)
                        l_2408[i] = &l_2272;
                    l_2412[0][0][0]++;
                    if (((**p_3366->g_657) = (safe_lshift_func_uint64_t_u_u(((func_59(l_2417, &hip_const_2, p_3366) , (**p_3366->g_1842)) < (((safe_rshift_func_uint16_t_u_u(1UL, ((safe_sub(make_ushort3(0x5209L, (p_42 >= make_int2(8L, (l_2422 != (make_short4(0x8714L, (((~(((make_long4(l_2423.y, l_2423.y, l_2423.y, l_2423.y) & make_long4(l_2424.x, l_2424.x, l_2424.x, l_2424.x))).z == ((((safe_sub_func_uint32_t_u_u((*****l_2279), ((*l_2407) &= make_int3((~((make_int4(l_2367.z, 0xCE359449L, (-7L), (****p_3366->g_655)) ^ make_int4(9L, 9L, 9L, 9L))).z), 0x19601E81L, p_44).z))) | p_44) ^ (-2L)) | p_44))) ^ 1L) , (*p_3366->g_183)), 0x91A5L, (*****l_2279)).z , &p_3366->g_2306[8][4]))).y), l_2411), make_ushort3(1UL, 1UL, 1UL)))).x)) == 1UL) && 0L)), 6))))
                    { /* block id: 974 */
                        int8_t l_2434[7][8][1] = {{{0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}}, {{0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}}, {{0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}}, {{0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}}, {{0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}}, {{0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}}, {{0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}, {0xFDL}}};
                        int i, j, k;
                        (**p_3366->g_657) = ((make_uchar2(p_3366->g_2427.z, p_3366->g_2427.z).x >= (safe_rshift_func_uint16_t_u_u(make_ushort3(0x9B26L, make_ushort4(((*l_2400) &= ((p_42 ^ ((safe_add(((make_int3(l_2388.f3, p_44, 0x83F0B8A7L) ^ make_int3(l_2432.x, l_2432.x, l_2432.x))), ((~make_int3(l_2433.y, l_2433.y, l_2433.y)))))).z) <= p_3366->g_1931.x)), 0x3874L, 65530UL, 0x2829L).z, (l_2434[0][5][0] > ((0x3BAC2877L >= ((make_int3(l_2435.y, l_2435.y, l_2435.y) ^ make_int3((+(safe_mul_func_uint16_t_u_u((nullptr != l_2438), p_44))), 5L, (****p_3366->g_655)))).y) && 0xC9AD93938D4E5995LL))).x, (*p_3366->g_341)))) <= l_2388.f5);
                    }
                    else
                    { /* block id: 977 */
                        uint8_t **l_2442 = &p_3366->g_175;
                        l_2301 &= ((safe_sub_func_int64_t_s_s(make_long3(p_3366->g_2441.y, p_3366->g_2441.y, p_3366->g_2441.y).y, ((((*l_2442) = &p_3366->g_1047) != l_2443[0][0][2]) && p_44))) < 0L);
                        (*p_3366->g_657) = (***p_3366->g_655);
                    }
                    for (l_2392.f1 = 0; (l_2392.f1 > 4); l_2392.f1 = safe_add_func_int32_t_s_s(l_2392.f1, 5))
                    { /* block id: 984 */
                        int32_t l_2446 = 0xFCC6A980L;
                        int32_t l_2447[9][1][5] = {{{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}, {{0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L, 0xE0BDF1C5L, 0xAEEEE344L}}};
                        uint8_t l_2448 = 255UL;
                        int i, j, k;
                        l_2448--;
                    }
                }
                else
                { /* block id: 987 */
                    uint64_t l_2455[9] = {18446744073709551606UL, 18446744073709551606UL, 18446744073709551615UL, 18446744073709551606UL, 18446744073709551606UL, 18446744073709551615UL, 18446744073709551606UL, 18446744073709551606UL, 18446744073709551615UL};
                    // attempting a hip shared for loop
                    __shared__ union U3 l_2462[6][4][7];
                    for (int i = 0; i < 6; i++)
                    {
                        for (int j = 0; j < 4; j++)
                        {
                            for (int k = 0; k < 7; k++)
                                l_2462[i][j][k] = {0x61BA04F44DFC4909LL};
                        }
                    }
                    int32_t l_2469 = 0xEFC2B2A4L;
                    int32_t l_2471 = (-2L);
                    int32_t *l_2472 = nullptr;
                    int32_t *l_2473[3][5] = {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}};
                    int8_t l_2474 = 0x75L;
                    int32_t l_2481 = 0xADA5083EL;
                    uint8_t l_2483 = 9UL;
                    int i, j, k;
                    for (l_2297 = (-1); (l_2297 > 27); l_2297 = safe_add_func_uint8_t_u_u(l_2297, 6))
                    { /* block id: 990 */
                        int32_t l_2459 = 5L;
                        int8_t *l_2467 = nullptr;
                        int8_t *l_2468[4][2] = {{&p_3366->g_886, nullptr}, {&p_3366->g_886, nullptr}, {&p_3366->g_886, nullptr}, {&p_3366->g_886, nullptr}};
                        int32_t l_2470 = 0x9B75989CL;
                        int i, j;
                        l_2454[0] = l_2453[4];
                        (***p_3366->g_655) = &p_44;
                        l_2435.y |= (((l_2455[0] | (safe_div_func_int32_t_s_s(l_2455[0], (*****l_2279)))) < make_long1(p_3366->g_2458.x).x) | (l_2459 && (l_2471 = (make_uint3((safe_sub_func_uint32_t_u_u((((((l_2462[2][1][0] , &l_2455[0]) == p_43) , p_43) == ((safe_mod_func_int8_t_s_s((l_2469 &= ((safe_mod_func_int32_t_s_s(p_42, p_44)) || (-1L))), p_42)) , p_43)) | l_2455[0]), l_2470)), 0UL, 4294967295UL).y == p_44))));
                    }
                    l_2475++;
                    ++l_2483;
                    (***p_3366->g_655) = &l_2471;
                }
                if ((1L == (p_3366->g_555.x || l_2453[4].f4)))
                { /* block id: 1001 */
                    return p_42;
                }
                else
                { /* block id: 1003 */
                    union U3 l_2488 = {0x4414717EE3B18D5DLL};
                    int32_t l_2500 = 0x9FF40041L;
                    struct S0 *l_2503 = nullptr;
                    uint2 l_2511 = make_uint2(0x7C2DE48BL, 0x4EEA252FL);
                    __shared__ uint4 l_2514;
                    l_2514 = make_uint4(4294967295UL, 1UL, 4294967295UL, 1UL);
                    int32_t l_2534 = 0xA6EB223CL;
                    __shared__ int32_t l_2535;
                    l_2535 = 0x401B7561L;
                    __shared__ int32_t l_2536;
                    l_2536 = 0xD31DC9A5L;
                    int32_t l_2537 = (-7L);
                    __shared__ int32_t l_2538;
                    l_2538 = 0x2CA548B9L;
                    int i;
                    if (p_42)
                    { /* block id: 1004 */
                        uint32_t *l_2493 = &hip_const_1.f0;
                        uint32_t *l_2494 = &hip_const_4;
                        uint32_t *l_2495 = nullptr;
                        uint32_t *l_2496 = &p_3366->g_2072;
                        __shared__ uint8_t *l_2501;
                        l_2501 = &p_3366->g_1047;
                        int32_t l_2502 = 5L;
                        struct S0 *l_2504 = &l_2453[4];
                        l_2303 = ((l_2502 = (safe_sub_func_int8_t_s_s(((l_2488 = l_2392) , p_3366->g_249.y), ((*l_2501) &= ((make_long4((l_2454[1] , (((*l_2496) |= (safe_div_func_uint32_t_u_u(p_3366->g_561.x, p_44))) > (nullptr != l_2497))), (safe_rshift_func_uint64_t_u_s(0x7331E12E0FF2B6D5LL, l_2500)), 0x3BAA7C9E4992A64ELL, (*p_3366->g_1843)).x , (*p_3366->g_183)) == 0x9BEEL))))) >= l_2454[0].f0);
                        (*p_3366->g_308) = nullptr;
                        l_2504 = l_2503;
                    }
                    else
                    { /* block id: 1012 */
                        uint8_t *l_2505[1];
                        __shared__ long2 l_2506;
                        l_2506 = make_long2(0L, 7L);
                        int32_t l_2522 = 4L;
                        uint32_t *l_2526[10] = {nullptr, &p_3366->g_974, nullptr, &p_3366->g_974, nullptr, &p_3366->g_974, nullptr, &p_3366->g_974, nullptr, &p_3366->g_974};
                        int32_t *l_2528 = nullptr;
                        int32_t *l_2529 = &l_2296;
                        __shared__ int32_t *l_2530;
                        l_2530 = &l_2410[4][2];
                        int32_t *l_2531 = nullptr;
                        __shared__ int32_t *l_2532;
                        l_2532 = nullptr;
                        int32_t *l_2533[5];
                        int i;
                        for (int i = 0; i < 1; i++)
                            l_2505[i] = nullptr;
                        for (int i = 0; i < 5; i++)
                            l_2533[i] = &l_2295;
                        (*l_2529) = ((make_int3(0L, 4L, (((p_3366->g_401 = (p_3366->g_178.f3.f3 , 0UL)) , ((((make_long2(l_2506.y, l_2506.y) ^ make_long2(0xDB90864B89FA83B3LL, (l_2506.x & ((((((safe_sub_func_uint16_t_u_u(make_ushort2(0xD7CAL, make_ushort2(65530UL, 0x4F5EL).x).y, p_44)) , l_2506.x) & l_2488.f0) < ((make_uint1((((l_2454[0] , make_uint4(l_2511.x, l_2511.x, l_2511.x, l_2511.x).z) ^ (l_2527 = ((safe_mul_func_uint32_t_u_u(make_uint4(l_2514.y, l_2514.y, l_2514.y, l_2514.y).x, (safe_div_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((safe_rshift_func_int32_t_s_s(((l_2522 = ((make_long1(0x2E0F899CE3A8D19ELL) | make_long1(l_2521.y))).x) ^ (safe_sub_func_uint32_t_u_u(p_42, (p_42 , l_2475)))), l_2506.y)), 0xFF78AB2AE4D1B539LL)), p_3366->g_1418.x)))) != l_2525))) | 0xF84460CFL)) ^ make_uint1(0x1F6A1D16L))).x) | l_2367.z) == 0xC127333EL))))).x <= (-3L)) || 253UL)) <= p_42)) ^ make_int3(0x3EB0C3A7L, 0x3EB0C3A7L, 0x3EB0C3A7L))).y;
                        ++l_2539;
                        l_2454[0].f4 |= 0x9AF27E47L;
                        return p_3366->g_149.y;
                    }
                }
            }
            for (l_2388.f0 = 0; (l_2388.f0 > 8); ++l_2388.f0)
            { /* block id: 1025 */
                struct S2 ****l_2550[6];
                int32_t l_2553 = 0xE2E60FC3L;
                __shared__ int32_t l_2570;
                l_2570 = (-9L);
                int32_t l_2574 = (-1L);
                int32_t l_2578 = 0xB71BC3B9L;
                // attempting a hip shared for loop
                __shared__ int32_t l_2579[9];
                for (int i = 0; i < 9; i++)
                    l_2579[i] = 2L;
                int i;
                for (int i = 0; i < 6; i++)
                    l_2550[i] = &p_3366->g_928[9];
                for (int i = 0; i < 9; i++)
                    l_2579[i] = 2L;
                for (l_2478 = 0; (l_2478 != (-20)); l_2478 = safe_sub_func_int64_t_s_s(l_2478, 1))
                { /* block id: 1028 */
                    __shared__ int32_t *l_2547;
                    l_2547 = &p_3366->g_1264;
                    struct S1 ****l_2554 = &p_3366->g_1601[5][0][3];
                    union U3 l_2566 = {0xCC063E44D00443F1LL};
                    int32_t l_2571 = 0xF533CA4EL;
                    __shared__ int32_t l_2572;
                    l_2572 = 0x497DF65EL;
                    int32_t l_2573 = (-1L);
                    int32_t l_2575[3][2][6] = {{{0x9886208EL, 0x9886208EL, 0x75EDA492L, 0x9886208EL, 0x9886208EL, 0x75EDA492L}, {0x9886208EL, 0x9886208EL, 0x75EDA492L, 0x9886208EL, 0x9886208EL, 0x75EDA492L}}, {{0x9886208EL, 0x9886208EL, 0x75EDA492L, 0x9886208EL, 0x9886208EL, 0x75EDA492L}, {0x9886208EL, 0x9886208EL, 0x75EDA492L, 0x9886208EL, 0x9886208EL, 0x75EDA492L}}, {{0x9886208EL, 0x9886208EL, 0x75EDA492L, 0x9886208EL, 0x9886208EL, 0x75EDA492L}, {0x9886208EL, 0x9886208EL, 0x75EDA492L, 0x9886208EL, 0x9886208EL, 0x75EDA492L}}};
                    int i, j, k;
                    (*l_2547) &= make_int4(l_2546.x, l_2546.x, l_2546.x, l_2546.x).y;
                    for (p_3366->g_178.f1 = 23; (p_3366->g_178.f1 < 12); p_3366->g_178.f1 = safe_sub_func_int8_t_s_s(p_3366->g_178.f1, 5))
                    { /* block id: 1032 */
                        struct S1 *****l_2555 = nullptr;
                        struct S1 *****l_2556 = &p_3366->g_1600[0];
                        uint64_t *l_2567 = &l_2566.f0;
                        int32_t *l_2569[10] = {nullptr, &l_2410[4][2], nullptr, nullptr, &l_2410[4][2], nullptr, &l_2410[4][2], nullptr, nullptr, &l_2410[4][2]};
                        int i;
                        l_2433.x |= (((((l_2550[4] == ((*p_3366->g_1945) = (*p_3366->g_1945))) | (((make_int3(l_2551.x, l_2551.x, l_2551.x) ^ make_int3(make_int1(p_3366->g_2552.y).x, make_int4(l_2553, 0x8A83E539L, 0xDF06CA33L, (p_42 , ((*l_2547) ^= ((((*l_2556) = l_2554) != l_2557) != ((safe_mod_func_uint64_t_u_u(((l_2560 != nullptr) , ((*l_2567) = (safe_div_func_uint8_t_u_u(make_uchar4(p_3366->g_2563.x, p_3366->g_2563.x, p_3366->g_2563.x, p_3366->g_2563.x).y, (safe_add_func_int8_t_s_s(make_char3((-5L), 0xC0L, 0xE5L).y, ((((l_2566 , l_2546.z) != p_44) , 9L) <= (-6L)))))))), p_44)) == p_42))))).y, l_2303))).z ^ p_44)) ^ l_2568[2][0][5]) | p_44) == 0x088B60A7EF6C10A1LL);
                        ++l_2581.x;
                    }
                }
                for (l_2293 = (-3); (l_2293 == 20); l_2293 = safe_add_func_uint8_t_u_u(l_2293, 6))
                { /* block id: 1043 */
                    int32_t l_2593 = 0x6B4B327AL;
                    __shared__ int32_t l_2594;
                    l_2594 = (-1L);
                    int32_t l_2595[1];
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_2595[i] = 0L;
                    for (p_3366->g_974 = 0; (p_3366->g_974 <= 3); p_3366->g_974 += 1)
                    { /* block id: 1046 */
                        __shared__ int32_t *l_2586;
                        l_2586 = nullptr;
                        __shared__ int32_t *l_2587;
                        l_2587 = &l_2295;
                        __shared__ int32_t *l_2588;
                        l_2588 = nullptr;
                        __shared__ int32_t *l_2589;
                        l_2589 = &l_2304;
                        int32_t *l_2590 = &l_2578;
                        int32_t *l_2591 = nullptr;
                        int32_t *l_2592[9] = {&l_2295, &l_2295, nullptr, &l_2295, &l_2295, nullptr, &l_2295, &l_2295, nullptr};
                        int i, j;
                        l_2597--;
                        --l_2600;
                        if (l_2603)
                            continue;
                    }
                    return p_42;
                }
                if (make_int2(p_3366->g_2604.y, p_3366->g_2604.y).x)
                { /* block id: 1053 */
                    (****l_2279) = &p_44;
                    (****l_2279) = (****l_2497);
                }
                else
                { /* block id: 1056 */
                    int32_t *l_2605[3][5] = {{nullptr, nullptr, &l_2410[4][2], &l_2410[4][2], nullptr}, {nullptr, nullptr, &l_2410[4][2], &l_2410[4][2], nullptr}, {nullptr, nullptr, &l_2410[4][2], &l_2410[4][2], nullptr}};
                    uint64_t ****l_2612 = &p_3366->g_712[1][7];
                    uint64_t *****l_2611 = &l_2612;
                    __shared__ uint32_t *l_2616;
                    l_2616 = nullptr;
                    uint32_t **l_2615 = &l_2616;
                    int i, j;
                    (****l_2497) = l_2605[0][1];
                    l_2295 = 0x412B2C87L;
                    l_2292 &= (safe_add_func_int32_t_s_s((((safe_unary_minus_func_uint16_t_u((safe_rshift_func_uint8_t_u_u(((((*l_2611) = &p_3366->g_712[0][1]) != nullptr) , 1UL), (p_44 != l_2266[0][1]))))) , ((l_2454[0] , l_2613) , p_3366->g_2614)) == l_2615), l_2579[1]));
                    (*p_3366->g_657) = nullptr;
                }
            }
        }
        else
        { /* block id: 1064 */
            struct S0 ****l_2637 = nullptr;
            int8_t l_2640 = 0xF6L;
            int32_t l_2649 = 1L;
            int32_t l_2652 = 1L;
            __shared__ uint16_t l_2667;
            l_2667 = 65535UL;
            ulong1 l_2695 = make_ulong1(1UL);
            int32_t *l_2714 = &l_2292;
            uint32_t l_2724 = 0UL;
            struct S1 l_2736 = {8L,163,1145,-81,1121,10183};
            int16_t **l_2756 = &p_3366->g_183;
            int i;
            for (p_3366->g_974 = 0; (p_3366->g_974 <= 1); p_3366->g_974 += 1)
            { /* block id: 1067 */
                uint8_t l_2625 = 1UL;
                int8_t *l_2636[5][10][5] = {{{nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}}, {{nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}}, {{nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}}, {{nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}}, {{nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}, {nullptr, &p_3366->g_886, &p_3366->g_23, nullptr, &p_3366->g_886}}};
                __shared__ struct S0 ****l_2645;
                l_2645 = &p_3366->g_1849;
                __shared__ uint32_t *l_2646;
                l_2646 = nullptr;
                __shared__ uint32_t *l_2647;
                l_2647 = &hip_const_5.f0;
                uint32_t *l_2648 = nullptr;
                uint32_t *l_2650 = &hip_const_1.f0;
                // attempting a hip shared for loop
                __shared__ uint32_t *l_2651[4];
                for (int i = 0; i < 4; i++)
                    l_2651[i] = nullptr;
                uint16_t l_2713 = 0xDD7FL;
                int32_t l_2723[10][10] = {{(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}, {(-1L), (-8L), (-1L), 0x9EA7EDEAL, 0xB7E606ABL, 1L, (-7L), (-7L), 1L, 0xB7E606ABL}};
                int16_t ***l_2757 = nullptr;
                int16_t ***l_2758 = &l_2756;
                int16_t **l_2760[10];
                int16_t ***l_2759 = &l_2760[5];
                __shared__ char2 l_2779;
                l_2779 = make_char2(0x0EL, 0x35L);
                // attempting a hip shared for loop
                __shared__ int32_t *l_2781[10];
                for (int i = 0; i < 10; i++)
                    l_2781[i] = &l_2295;
                int i, j, k;
                for (int i = 0; i < 4; i++)
                    l_2651[i] = nullptr;
                for (int i = 0; i < 10; i++)
                    l_2760[i] = &p_3366->g_183;
                for (p_3366->g_2072 = 0; (p_3366->g_2072 <= 1); p_3366->g_2072 += 1)
                { /* block id: 1070 */
                    int32_t l_2624[2][4][6] = {{{0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}, {0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}, {0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}, {0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}}, {{0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}, {0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}, {0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}, {0x5643FE86L, 0xAC6B35D4L, 0x70B210B6L, 0L, 0x3B110001L, 0xC9A802C3L}}};
                    int i, j, k;
                    for (p_3366->g_1579 = 1; (p_3366->g_1579 >= 0); p_3366->g_1579 -= 1)
                    { /* block id: 1073 */
                        __shared__ struct S0 *l_2617;
                        l_2617 = &p_3366->g_2618;
                        int32_t *l_2619 = nullptr;
                        int32_t *l_2620 = &l_2292;
                        int32_t *l_2621 = &p_3366->g_2409;
                        int32_t *l_2622 = &l_2410[4][2];
                        int32_t *l_2623[10][10];
                        int8_t *l_2632 = &p_3366->g_457;
                        int i, j, k;
                        for (int i = 0; i < 10; i++)
                        {
                            for (int j = 0; j < 10; j++)
                                l_2623[i][j] = nullptr;
                        }
                        if (l_2568[(p_3366->g_974 + 5)][p_3366->g_1579][(p_3366->g_1579 + 2)])
                            break;
                        (*l_2617) = l_2454[p_3366->g_2072];
                        l_2625++;
                        p_44 ^= (((safe_sub_func_uint16_t_u_u(((l_2568[p_3366->g_2072][p_3366->g_1579][(p_3366->g_2072 + 1)] > 9L) <= (safe_rshift_func_int8_t_s_s(0xF2L, ((*l_2632) = 9L)))), l_2568[(p_3366->g_2072 + 5)][p_3366->g_2072][(p_3366->g_974 + 6)])) | (l_2624[0][2][0] < (safe_lshift_func_uint32_t_u_u(((l_2632 == (l_2636[4][5][0] = l_2635[5])) > ((*p_3366->g_2185) == l_2637)), 2)))) && p_42);
                    }
                }
                if ((((safe_div_func_uint64_t_u_u(l_2640, (((safe_sub_func_int16_t_s_s(p_44, (safe_lshift_func_int16_t_s_s(make_short3(5L, 0xFB4CL, 0xC697L).y, 8)))) , (((*p_3366->g_2183) != (l_2645 = nullptr)) | ((((l_2625 & (0x1ED0L || (~((p_3366->g_1004.z--) | (((-10L) >= 0x0BAA8E1ECEDC571DLL) != (-1L)))))) ^ 0xEFL) >= p_44) && l_2652))) && l_2454[0].f2))) > (-5L)) == p_44))
                { /* block id: 1084 */
                    uint16_t l_2674 = 0x731DL;
                    __shared__ short2 l_2702;
                    l_2702 = make_short2(0xF4FEL, 6L);
                    int i;
                    for (l_2600 = 0; (l_2600 <= 4); l_2600 += 1)
                    { /* block id: 1087 */
                        int i, j, k;
                        return l_2568[(p_3366->g_974 + 1)][p_3366->g_974][p_3366->g_974];
                    }
                    for (p_3366->g_2072 = 0; (p_3366->g_2072 <= 1); p_3366->g_2072 += 1)
                    { /* block id: 1092 */
                        int i, j, k;
                        return l_2568[p_3366->g_974][p_3366->g_2072][(p_3366->g_2072 + 5)];
                    }
                    (*p_3366->g_657) = (***p_3366->g_655);
                    for (l_2411 = 1; (l_2411 >= 0); l_2411 -= 1)
                    { /* block id: 1098 */
                        int32_t *l_2655 = nullptr;
                        int32_t *l_2656 = nullptr;
                        int32_t *l_2657 = nullptr;
                        int32_t *l_2658 = nullptr;
                        __shared__ int32_t *l_2659;
                        l_2659 = &l_2410[4][2];
                        int32_t *l_2660 = &l_2301;
                        __shared__ int32_t *l_2661;
                        l_2661 = &l_2649;
                        int32_t *l_2662 = &l_2295;
                        int32_t *l_2663 = &l_2304;
                        int32_t *l_2664 = nullptr;
                        int32_t *l_2665 = nullptr;
                        int32_t *l_2666 = &l_2292;
                        __shared__ int32_t *l_2670;
                        l_2670 = &l_2298;
                        int32_t *l_2671 = &l_2652;
                        int32_t l_2672 = 1L;
                        int32_t *l_2673[2];
                        __shared__ uint64_t *l_2703;
                        l_2703 = &p_3366->g_68.f3;
                        int i, j, k;
                        for (int i = 0; i < 2; i++)
                            l_2673[i] = &l_2652;
                        l_2667--;
                        ++l_2674;
                        (*l_2670) = (safe_add_func_int32_t_s_s(((*l_2671) &= ((make_int1(make_int1((-2L)).x) ^ make_int1(1L))).x), make_int4(((safe_rshift(make_int4(l_2681.x, l_2681.x, l_2681.x, l_2681.x), make_int4(p_3366->g_2682.w, p_3366->g_2682.w, p_3366->g_2682.w, p_3366->g_2682.w)))).x, (l_2568[(p_3366->g_974 + 2)][l_2411][(p_3366->g_974 + 5)] & (0x6545F56CL < (safe_rshift_func_int32_t_s_u((-6L), 10)))), 0x7441006BL, p_44).z));
                        p_44 = (safe_div_func_uint16_t_u_u((safe_lshift_func_uint32_t_u_u((safe_lshift_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((((safe_rshift(((make_ulong1(1UL) ^ make_ulong1(l_2695.x))), make_ulong1(64)))).x > ((safe_rshift_func_uint64_t_u_s(((((make_short2(((safe_div_func_int8_t_s_s(((safe_add_func_uint8_t_u_u(0UL, p_44)) ^ l_2674), p_42)) , 6L), make_short2(l_2702.y, l_2702.y).x).y | ((p_3366->g_401 == ((++(*l_2703)) & (((safe_lshift_func_int64_t_s_u((((safe_mul(make_char4(0xF5L, (l_2652 = ((((l_2710 = &p_3366->g_341) != nullptr) , (safe_mul_func_int16_t_s_s(((l_2454[p_3366->g_974] , 65535UL) || (*p_3366->g_183)), 0xF0AFL))) , 0x8CL)), (*****l_2279), l_2695.x), make_char4(1L, 1L, 1L, 1L)))).y && l_2702.x), p_42)) , l_2702.x) || l_2713))) , 0x0A9CL)) ^ 18446744073709551608UL) ^ 0x76A161F6L) | 0UL), p_42)) >= (*****l_2279))), 0UL)), 10)), 25)), p_44));
                    }
                }
                else
                { /* block id: 1108 */
                    __shared__ ulong4 l_2715;
                    l_2715 = make_ulong4(0x74338AD0385A9D34LL, 0x826F18035E20ECD6LL, 0x74338AD0385A9D34LL, 0x826F18035E20ECD6LL);
                    ushort2 l_2716 = make_ushort2(1UL, 0x6605L);
                    struct S1 *****l_2717 = &p_3366->g_1600[0];
                    int32_t l_2718 = 0x2260F757L;
                    int32_t l_2722[10];
                    int i;
                    for (int i = 0; i < 10; i++)
                        l_2722[i] = 0x8F959B7DL;
                    l_2714 = &p_44;
                    (*p_3366->g_1602) = nullptr;
                    if ((make_ulong3(l_2715.x, l_2715.x, l_2715.x).z != l_2625))
                    { /* block id: 1111 */
                        return p_44;
                    }
                    else
                    { /* block id: 1113 */
                        p_44 = (p_42 ^ make_ushort3(l_2716.x, l_2716.x, l_2716.x).y);
                    }
                    if ((l_2713 , (+(((((((*l_2717) = nullptr) != nullptr) , 0x42D8C729L) && ((p_43 != nullptr) && (nullptr == &l_2355))) | ((*l_2714) = ((**p_3366->g_1842) & p_42))) <= 0x0C6359982C87D355LL))))
                    { /* block id: 1118 */
                        int32_t *l_2719 = nullptr;
                        int32_t *l_2720 = nullptr;
                        int32_t *l_2721[9] = {&l_2304, &p_3366->g_2409, &l_2304, &p_3366->g_2409, &l_2304, &p_3366->g_2409, &l_2304, &p_3366->g_2409, &l_2304};
                        int i;
                        --l_2724;
                        if ((*l_2714))
                            continue;
                    }
                    else
                    { /* block id: 1121 */
                        if ((*p_3366->g_111))
                            break;
                    }
                }
                for (l_2597 = 0; (l_2597 <= 1); l_2597 += 1)
                { /* block id: 1127 */
                    uint64_t *l_2735 = &p_3366->g_68.f3;
                    uint64_t *l_2737 = &p_3366->g_2618.f3;
                    int i, j, k;
                    if ((safe_sub_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((*l_2737) = (safe_add_func_uint8_t_u_u(((0xE4BC614FL > ((0xDAL ^ (l_2723[6][8] &= (l_2568[(p_3366->g_974 + 4)][p_3366->g_974][(p_3366->g_974 + 3)] || (0x68DAD9C622708C33LL <= ((*l_2735) ^= ((~(*****l_2279)) > 0xB0C26578L)))))) , ((((*p_3366->g_1843) >= (make_ushort1(1UL).x != make_ushort2(65535UL, l_2568[(p_3366->g_974 + 4)][p_3366->g_974][(p_3366->g_974 + 3)]).y)) >= (l_2736 , p_44)) <= l_2568[(p_3366->g_974 + 4)][p_3366->g_974][(p_3366->g_974 + 3)]))) <= (*l_2714)), l_2713))), 18446744073709551615UL)), p_42)))
                    { /* block id: 1131 */
                        __shared__ char2 l_2740;
                        l_2740 = make_char2(1L, 0x32L);
                        __shared__ struct S2 ****l_2743;
                        l_2743 = &p_3366->g_765;
                        uint8_t *l_2750 = nullptr;
                        int i;
                        l_2751 = ((p_3366->g_916.y = ((safe_mod_func_int8_t_s_s((+make_char3(l_2740.y, l_2740.y, l_2740.y).y), ((safe_div_func_uint64_t_u_u((nullptr != l_2743), make_long3(p_3366->g_2744.y, p_3366->g_2744.y, p_3366->g_2744.y).z)) | ((safe_sub_func_int8_t_s_s((l_2303 = (safe_rshift_func_uint64_t_u_s((((((((***l_2279) != nullptr) ^ l_2740.x) >= (l_2293 = p_44)) , 0x0023B87CL) >= p_3366->g_974) & (safe_unary_minus_func_uint32_t_u((l_2454[l_2597] , p_44)))), p_44))), p_3366->g_146.x)) != p_42)))) ^ l_2454[l_2597].f0)) , nullptr);
                        return p_42;
                    }
                    else
                    { /* block id: 1137 */
                        return l_2713;
                    }
                }
                (*l_2751) ^= (p_44 = (((p_42 || (safe_mod_func_uint32_t_u_u(((l_2625 < ((p_3366->g_2761 = ((*l_2759) = ((*l_2758) = l_2756))) != (l_2762 = &p_3366->g_183))) || make_ushort4(((l_2767 = ((safe_sub_func_int16_t_s_s(7L, (p_44 <= (1L & (make_uchar4(l_2765.z, l_2765.z, l_2765.z, l_2765.z).w && (nullptr == l_2766)))))) & p_42)) != 18446744073709551614UL), 0x31B8L, (*l_2714), 65530UL).z), (**p_3366->g_657)))) | (*p_3366->g_1843)) >= (*l_2714)));
                for (l_2767 = 0; (l_2767 <= 1); l_2767 += 1)
                { /* block id: 1150 */
                    struct S2 l_2774 = {5UL,0x6BE14AC0L,-70,{0xC1484C546E932DE3LL,-24,-6705,48,1522,624},4,-9,119,-40,-7716};
                    uint32_t *l_2780[1][3][2];
                    int i, j, k;
                    for (int i = 0; i < 1; i++)
                    {
                        for (int j = 0; j < 3; j++)
                        {
                            for (int k = 0; k < 2; k++)
                                l_2780[i][j][k] = nullptr;
                        }
                    }
                    l_2774.f8 = ((((l_2568[(p_3366->g_974 + 3)][p_3366->g_974][(l_2767 + 3)] < make_long1(l_2568[(p_3366->g_974 + 3)][l_2767][(p_3366->g_974 + 1)]).x) < (l_2723[6][5] = (safe_add_func_uint64_t_u_u(((safe_add_func_uint16_t_u_u((l_2568[(p_3366->g_974 + 3)][l_2767][(p_3366->g_974 + 1)] == (safe_lshift_func_uint16_t_u_u((*p_3366->g_341), (0x2DL != (1UL >= (((*l_2714) = (l_2774 , ((make_char2(((safe_lshift_func_int8_t_s_s(make_char3(l_2779.y, l_2779.y, l_2779.y).y, 2)) > (l_2780[0][1][1] == nullptr)), p_3366->g_1996.x) | make_char2(2L, 2L))).y)) < p_42)))))), p_42)) < l_2736.f0), (-1L))))) && 0x45F1L) , p_42);
                    l_2781[9] = &p_44;
                }
            }
        }
        p_44 = (safe_div_func_uint16_t_u_u(((*l_2751) , ((safe_mul_func_int64_t_s_s((((p_3366->g_1222.x = ((safe_lshift_func_int64_t_s_u(((((safe_sub(make_ulong1(l_2790.x), ((make_ulong1((safe_sub_func_int16_t_s_s((p_42 , ((*l_2751) > p_44)), (((*l_2751) >= make_long1(l_2793.x).x) <= ((l_2794 , (nullptr == l_2795)) != (-7L)))))) ^ make_ulong1(0UL)))))).x , &p_3366->g_175) == l_2796), 15)) != p_3366->g_605.x)) | (**p_3366->g_1842)) ^ (*p_3366->g_183)), p_44)) | 0xFA0AL)), (*l_2751)));
    }
    p_44 = (safe_unary_minus_func_uint32_t_u((((((l_2799 = l_2798) , (0x6F33B32EL && (l_2269[0] > (safe_add_func_int32_t_s_s(l_2681.x, ((l_2802 , (*l_2710)) != nullptr)))))) | (make_ushort1(l_2803.x).x == (safe_sub_func_uint16_t_u_u((((make_int4(p_3366->g_2806.x, p_3366->g_2806.x, p_3366->g_2806.x, p_3366->g_2806.x) & make_int4(0x33087914L, 0x0AD66EF6L, ((*l_2814) = ((safe_lshift_func_int64_t_s_s((**p_3366->g_1842), make_long2(0xA4420D790D3A6B72LL, (((safe_rshift_func_uint8_t_u_s(make_uchar2((65535UL || (-3L)), 0x38L).x, 5)) || (*p_3366->g_183)) ^ 0x7D7CCED3L)).x)) ^ l_2296)), 0L))).x <= p_42), p_42)))) && p_42) , p_42)));
    (**p_3366->g_1849) = l_2815;
    for (l_2798.f0 = (-20); (l_2798.f0 != 36); l_2798.f0 = safe_add_func_int8_t_s_s(l_2798.f0, 7))
    { /* block id: 1167 */
        union U3 l_2823 = {18446744073709551608UL};
        uint64_t **l_2835[6] = {&p_3366->g_65, &p_3366->g_65, &p_3366->g_65, &p_3366->g_65, &p_3366->g_65, &p_3366->g_65};
        __shared__ int32_t *l_2838;
        l_2838 = &l_2410[2][3];
        int32_t l_2846 = 0x35EAA0ACL;
        int32_t l_2854 = 0x02720D34L;
        int32_t l_2858 = 0L;
        __shared__ int32_t l_2859;
        l_2859 = (-4L);
        __shared__ int32_t l_2861;
        l_2861 = 0x3720F492L;
        int32_t l_2863 = (-6L);
        __shared__ int16_t l_2864;
        l_2864 = 0x6CC2L;
        __shared__ struct S2 ***l_2871;
        l_2871 = &p_3366->g_766;
        __shared__ uchar2 l_2885;
        l_2885 = make_uchar2(0UL, 0UL);
        int64_t ***l_2932 = &l_2345[0][1];
        struct S2 l_2935 = {0x55C5293EL,0x3D3D53C7L,196,{0x4C945E9365C9465CLL,56,-415,-130,885,1818},-5,-15,111,54,25470};
        char4 l_2947 = make_char4(6L, 0xB0L, 6L, 0xB0L);
        struct S0 l_2955 = {11268,0x48F5L,-2L,18446744073709551615UL,30691};
        uint32_t ***l_2962 = &p_3366->g_2614;
        int i;
        for (p_3366->g_2618.f3 = 0; (p_3366->g_2618.f3 <= 8); p_3366->g_2618.f3 += 1)
        { /* block id: 1170 */
            uint8_t l_2820 = 250UL;
            __shared__ int32_t l_2847;
            l_2847 = 1L;
            int32_t l_2848 = 0L;
            int32_t l_2853 = 1L;
            int32_t l_2855 = 0x75BC86C8L;
            int3 l_2856 = make_int3(0xE5A0A7A1L, 0x9A7ACF68L, 0xE5A0A7A1L);
            __shared__ uint64_t *l_2877;
            l_2877 = &l_2840;
            __shared__ ushort4 l_2916;
            l_2916 = make_ushort4(0x681BL, 0x1865L, 0x681BL, 0x1865L);
            ushort2 l_2924 = make_ushort2(0xEFA1L, 0xFDEFL);
            struct S2 l_2927[1][8][1] = {{{{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}, {{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}, {{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}, {{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}, {{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}, {{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}, {{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}, {{0UL,0x1C05BCA0L,361,{0x9409DB1B78DC2566LL,37,-7141,446,1891,13187},-11,-18,166,-60,30049}}}};
            struct S1 **l_2964 = &p_3366->g_833;
            struct S2 *l_2967 = &p_3366->g_178;
            int i, j, k;
            (*l_2814) = (safe_div_func_uint8_t_u_u(l_2820, l_2820));
            if ((safe_add_func_uint32_t_u_u((p_42 < make_char2((-8L), 0x1DL).y), (&p_3366->g_2761 == (l_2823 , &p_3366->g_2761)))))
            { /* block id: 1172 */
                uint8_t l_2843 = 9UL;
                int32_t l_2852 = 0xFC00C0A2L;
                int32_t l_2857 = 1L;
                int32_t l_2860 = 2L;
                int32_t l_2862 = 0x2063D0A8L;
                uint64_t l_2865 = 1UL;
                for (l_2577 = 5; (l_2577 >= 0); l_2577 -= 1)
                { /* block id: 1175 */
                    union U3 **l_2824[3][10] = {{&l_2284[2][5], nullptr, &l_2284[2][5], &p_3366->g_445, &p_3366->g_445, &l_2284[1][3], &p_3366->g_445, &p_3366->g_445, &l_2284[1][3], &p_3366->g_445}, {&l_2284[2][5], nullptr, &l_2284[2][5], &p_3366->g_445, &p_3366->g_445, &l_2284[1][3], &p_3366->g_445, &p_3366->g_445, &l_2284[1][3], &p_3366->g_445}, {&l_2284[2][5], nullptr, &l_2284[2][5], &p_3366->g_445, &p_3366->g_445, &l_2284[1][3], &p_3366->g_445, &p_3366->g_445, &l_2284[1][3], &p_3366->g_445}};
                    int i, j;
                    l_2825[4] = nullptr;
                }
                p_44 = ((*l_2814) = (safe_mul_func_int32_t_s_s(0x64F311E3L, 0L)));
                if (make_int4(0x479C2134L, (safe_add_func_uint64_t_u_u(l_2820, l_2823.f0)), 0xC9B65863L, make_int1(l_2830.x).x).x)
                { /* block id: 1180 */
                    int32_t *l_2839 = &l_2298;
                    for (p_3366->g_457 = 8; (p_3366->g_457 >= 0); p_3366->g_457 -= 1)
                    { /* block id: 1183 */
                        int32_t *l_2836 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_2837[3][8][5];
                        for (int i = 0; i < 3; i++)
                        {
                            for (int j = 0; j < 8; j++)
                            {
                                for (int k = 0; k < 5; k++)
                                    l_2837[i][j][k] = nullptr;
                            }
                        }
                        int i, j, k;
                        p_44 ^= ((safe_unary_minus_func_uint32_t_u((~(((*l_2814) &= make_int1(0x0F4B6FCDL).x) && (safe_lshift_func_int8_t_s_u((l_2834 != l_2835[0]), 2)))))) && l_2820);
                        (****l_2279) = l_2838;
                    }
                    (*p_3366->g_657) = l_2839;
                    if ((****p_3366->g_655))
                        break;
                    --l_2840;
                }
                else
                { /* block id: 1191 */
                    __shared__ int32_t *l_2849;
                    l_2849 = &l_2410[1][2];
                    __shared__ int32_t *l_2850;
                    l_2850 = &l_2297;
                    int32_t *l_2851[5] = {nullptr, &p_3366->g_2409, nullptr, &p_3366->g_2409, nullptr};
                    int i;
                    --l_2843;
                    ++l_2865;
                    if (p_42)
                        break;
                }
            }
            else
            { /* block id: 1196 */
                int64_t l_2870 = 0x0C7320AD191AC109LL;
                struct S2 ***l_2872 = &p_3366->g_766;
                union U3 l_2876[3] = {{0x09D5428ACB93AF28LL}, {0x09D5428ACB93AF28LL}, {0x09D5428ACB93AF28LL}};
                __shared__ uint3 l_2888;
                l_2888 = make_uint3(18446744073709551615UL, 0x3C6991F1L, 18446744073709551615UL);
                __shared__ int32_t l_2889;
                l_2889 = (-9L);
                __shared__ int3 l_2891;
                l_2891 = make_int3((-5L), (-1L), (-5L));
                uint64_t ****l_2900 = &p_3366->g_712[1][8];
                ushort4 l_2913 = make_ushort4(0UL, 0UL, 0UL, 0UL);
                struct S1 l_2966 = {-1L,49,-4895,172,451,4168};
                int i;
                if ((safe_sub_func_int64_t_s_s((l_2870 || (l_2871 != l_2872)), ((make_long1(p_3366->g_2873.z) ^ make_long1((*l_2838)))).x)))
                { /* block id: 1197 */
                    int i;
                    l_2891.y = ((((safe_div_func_int64_t_s_s(((l_2269[p_3366->g_2618.f3] = ((p_42 , (l_2876[0] , p_43)) != l_2877)) <= (*l_2838)), (safe_div_func_uint8_t_u_u(make_uchar2(246UL, 1UL).y, (safe_add_func_int32_t_s_s((-7L), ((make_uchar1((safe_add_func_uint32_t_u_u((safe_unary_minus_func_uint32_t_u(p_44)), (-8L)))).x & ((make_uchar3(l_2885.x, l_2885.x, l_2885.x) ^ make_uchar3(255UL, (((safe_mod_func_uint32_t_u_u(((l_2889 = make_uint2(l_2888.z, l_2888.z).y) , make_uint1(p_3366->g_2890.y).x), p_3366->g_411.x)) | p_44) >= 0xD50BF413L), 0xECL))).y) & p_42))))))) & l_2848) || l_2889) & l_2888.y);
                }
                else
                { /* block id: 1201 */
                    int32_t *l_2892[9] = {nullptr, &l_2848, nullptr, &l_2848, nullptr, &l_2848, nullptr, &l_2848, nullptr};
                    __shared__ uint16_t l_2893;
                    l_2893 = 3UL;
                    uint64_t ****l_2899 = &p_3366->g_712[1][4];
                    uint64_t *****l_2898 = &l_2899;
                    uint64_t *****l_2901 = &l_2900;
                    uint64_t *****l_2902 = nullptr;
                    uint64_t ****l_2904[3][4] = {{&p_3366->g_712[0][6], &p_3366->g_712[0][6], &p_3366->g_712[1][8], &p_3366->g_712[0][6]}, {&p_3366->g_712[0][6], &p_3366->g_712[0][6], &p_3366->g_712[1][8], &p_3366->g_712[0][6]}, {&p_3366->g_712[0][6], &p_3366->g_712[0][6], &p_3366->g_712[1][8], &p_3366->g_712[0][6]}};
                    uint64_t *****l_2903 = &l_2904[0][1];
                    ushort1 l_2925 = make_ushort1(0xF8E7L);
                    ushort4 l_2926 = make_ushort4(0x911DL, 65535UL, 0x911DL, 65535UL);
                    uint16_t l_2933 = 0x13E7L;
                    int i, j;
                    --l_2893;
                    l_2891.x = ((safe_mul_func_int8_t_s_s(p_42, (((*l_2898) = &p_3366->g_712[0][1]) != ((*l_2903) = ((*l_2901) = l_2900))))) == (((safe_div_func_uint16_t_u_u((*p_3366->g_341), l_2847)) , ((((safe_rshift_func_uint8_t_u_s(((((make_uchar1(0x3FL).x <= (l_2927[0][1][0].f3.f2 = (make_ulong2(((((safe_add_func_uint32_t_u_u(((((make_ushort4(l_2913.y, l_2913.y, l_2913.y, l_2913.y) & ((safe_mod(make_ushort4(l_2916.x, l_2916.x, l_2916.x, l_2916.x), ((((safe_rshift(make_ushort4(p_3366->g_2919.x, p_3366->g_2919.x, p_3366->g_2919.x, p_3366->g_2919.x), make_ushort4(16, 16, 16, 16)))) ^ ((((safe_mod(((((safe_mul(make_ushort4(l_2924.x, l_2924.x, l_2924.x, l_2924.x), make_ushort4(l_2925.x, l_2925.x, l_2925.x, l_2925.x)))) ^ make_ushort4(l_2926.z, l_2926.z, l_2926.z, l_2926.z))), make_ushort4(0x641EL, ((l_2927[0][1][0] , &p_43) == (l_2834 = &p_43)), (safe_mul_func_int32_t_s_s(((make_int4(p_3366->g_2930.z, p_3366->g_2930.z, p_3366->g_2930.z, p_3366->g_2930.z) ^ make_int4(p_3366->g_2931.w, p_3366->g_2931.w, p_3366->g_2931.w, p_3366->g_2931.w))).z, (65535UL || (*p_3366->g_341)))), 0UL)))) & make_ushort4(1UL, 1UL, 1UL, 1UL)))))))))).z , &p_3366->g_1842) != l_2932), p_42)) | p_44) , (**p_3366->g_1842)) >= 0x24493AAC9C8BECD8LL), 0x2E3B87FAD47DEC9FLL).x != l_2927[0][1][0].f3.f4))) >= 0x0534L) , l_2933) & l_2924.y), p_44)) != l_2934) , &l_2877) == nullptr)) >= (*l_2838)));
                }
                for (l_2296 = 5; (l_2296 >= 0); l_2296 -= 1)
                { /* block id: 1212 */
                    p_44 = (*l_2838);
                    p_44 ^= 0L;
                }
                for (l_2859 = 0; (l_2859 <= 8); l_2859 += 1)
                { /* block id: 1218 */
                    int64_t l_2940 = 0L;
                    uint32_t *l_2956 = &hip_const_1.f0;
                    __shared__ uint32_t *l_2957;
                    l_2957 = nullptr;
                    uint32_t *l_2958 = nullptr;
                    uint32_t *l_2959[3];
                    uint32_t ****l_2963 = &l_2962;
                    struct S1 ***l_2965 = &p_3366->g_1602;
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_2959[i] = nullptr;
                    p_44 = ((l_2935 , ((*l_2838) ^= (safe_rshift_func_int64_t_s_s((l_2269[p_3366->g_2618.f3] ^= (l_2888.x | (safe_div_func_int16_t_s_s((l_2940 > ((*l_2877) = (safe_div_func_uint64_t_u_u((((safe_mul_func_int32_t_s_s((safe_div_func_uint64_t_u_u((make_char4(l_2947.x, l_2947.x, l_2947.x, l_2947.x).x == 3UL), make_long2(p_3366->g_2948.x, p_3366->g_2948.x).x)), (safe_rshift_func_int64_t_s_s(0L, ((safe_lshift_func_uint64_t_u_s((safe_div_func_uint64_t_u_u((l_2955 , (((*l_2963) = ((--p_3366->g_178.f0) , l_2962)) == nullptr)), 0xCF1B9AFD18F87360LL)), p_44)) & p_44))))) || l_2924.y) , 3UL), p_44)))), p_44)))), 12)))) ^ (**p_3366->g_1842));
                    (*l_2965) = l_2964;
                    for (p_3366->g_248 = 0; (p_3366->g_248 <= 2); p_3366->g_248 += 1)
                    { /* block id: 1228 */
                        int i, j;
                        if (l_2266[(p_3366->g_248 + 5)][(p_3366->g_248 + 1)])
                            break;
                        l_2966 = (*l_2355);
                    }
                }
            }
            (*l_2967) = l_2927[0][1][0];
        }
    }
    return l_2968;
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_341 hip_const_9.f1 p_3366->g_1842 p_3366->g_1848 p_3366->g_833 p_3366->g_178.f3 p_3366->g_100 hip_const_5 hip_const_9.f2 hip_const_9.f4 p_3366->g_655 p_3366->g_656 p_3366->g_657 p_3366->g_638 p_3366->g_1843 hip_const_1.f3.f0 p_3366->g_1923 p_3366->g_1931 p_3366->g_104 p_3366->g_1945 p_3366->g_1898 p_3366->g_183 hip_const_11 hip_const_7 p_3366->g_1996 p_3366->g_1786 p_3366->g_724 p_3366->g_1617 p_3366->g_1421 p_3366->g_940 p_3366->g_178.f0 p_3366->g_2072 p_3366->g_68.f2 p_3366->g_1418 p_3366->g_2112 p_3366->g_2113 p_3366->g_308 p_3366->g_2154 p_3366->g_1849 p_3366->g_974 p_3366->g_1602 p_3366->g_2208 p_3366->g_401 p_3366->g_1890 p_3366->g_558 p_3366->g_605 p_3366->g_1839 p_3366->g_457 p_3366->g_178.f1 p_3366->g_1891 p_3366->g_283 p_3366->g_1904
 * writes: p_3366->g_457 p_3366->g_1842 p_3366->g_100 p_3366->g_178.f1 p_3366->g_77 p_3366->g_111 p_3366->g_638 p_3366->g_1222 p_3366->g_1848 p_3366->g_605 p_3366->g_344 p_3366->g_940 p_3366->g_178.f0 p_3366->g_2072 p_3366->g_309 p_3366->g_178.f3 p_3366->g_974 p_3366->g_2183 p_3366->g_2185 p_3366->g_1890 p_3366->g_1946 p_3366->g_1945
 */
__device__ uint64_t * func_45(uint64_t * p_46, struct S4 * p_3366)
{ /* block id: 749 */
    int32_t l_1819 = 7L;
    struct S1 *l_1834 = &p_3366->g_178.f3;
    int32_t l_1835 = 7L;
    uint16_t *l_1836 = nullptr;
    uint16_t *l_1837[6][7] = {{&hip_const_9.f1, &hip_const_9.f1, nullptr, nullptr, &hip_const_9.f1, &hip_const_9.f1, &hip_const_9.f1}, {&hip_const_9.f1, &hip_const_9.f1, nullptr, nullptr, &hip_const_9.f1, &hip_const_9.f1, &hip_const_9.f1}, {&hip_const_9.f1, &hip_const_9.f1, nullptr, nullptr, &hip_const_9.f1, &hip_const_9.f1, &hip_const_9.f1}, {&hip_const_9.f1, &hip_const_9.f1, nullptr, nullptr, &hip_const_9.f1, &hip_const_9.f1, &hip_const_9.f1}, {&hip_const_9.f1, &hip_const_9.f1, nullptr, nullptr, &hip_const_9.f1, &hip_const_9.f1, &hip_const_9.f1}, {&hip_const_9.f1, &hip_const_9.f1, nullptr, nullptr, &hip_const_9.f1, &hip_const_9.f1, &hip_const_9.f1}};
    __shared__ int32_t l_1838;
    l_1838 = 0xB1E3F738L;
    int16_t *l_1853[5][1][6] = {{{nullptr, &hip_const_11[2][1], nullptr, &hip_const_11[5][0], &hip_const_11[5][0], nullptr}}, {{nullptr, &hip_const_11[2][1], nullptr, &hip_const_11[5][0], &hip_const_11[5][0], nullptr}}, {{nullptr, &hip_const_11[2][1], nullptr, &hip_const_11[5][0], &hip_const_11[5][0], nullptr}}, {{nullptr, &hip_const_11[2][1], nullptr, &hip_const_11[5][0], &hip_const_11[5][0], nullptr}}, {{nullptr, &hip_const_11[2][1], nullptr, &hip_const_11[5][0], &hip_const_11[5][0], nullptr}}};
    int32_t l_1878[8];
    int16_t l_1880 = 0L;
    int8_t l_1941 = 0x01L;
    struct S0 ****l_1955 = &p_3366->g_1849;
    ushort1 l_1997 = make_ushort1(0x4DDAL);
    short2 l_2008 = make_short2(0xC434L, 1L);
    int16_t l_2095 = 0L;
    long1 l_2115 = make_long1(7L);
    long2 l_2157 = make_long2(0x8494996E4913418ALL, 0x80BB8D7F3334007ALL);
    struct S0 *****l_2182 = &p_3366->g_1848[7][3];
    struct S0 l_2199 = {24415,0xC8E0L,0x49926417L,0x2B970F101DF66205LL,17066};
    int3 l_2211 = make_int3(0x72AE7E61L, 0xBE7BBAB2L, 0x72AE7E61L);
    struct S2 l_2219[8][2][5] = {{{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}, {{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}, {{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}, {{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}, {{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}, {{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}, {{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}, {{{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}, {{1UL,0x5259F5F1L,-156,{6L,178,5344,-7,446,1450},-4,5,281,82,1981}, {1UL,0x0A19C8C8L,354,{-7L,40,-5675,135,-1118,1072},-11,15,7,-47,-2376}, {5UL,0xE75E2006L,-117,{-4L,45,-621,86,916,127},-13,-1,40,13,21345}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}, {0x24F236F3L,0L,-316,{0x5EDD1119B878891BLL,37,912,-343,188,16367},3,2,229,-34,30421}}}};
    __shared__ struct S2 ****l_2240;
    l_2240 = &p_3366->g_928[9];
    uint8_t l_2249 = 0xD8L;
    int64_t l_2250 = 1L;
    uint64_t *l_2254[9][10][2] = {{{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}, {{nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}, {nullptr, &p_3366->g_68.f3}}};
    int i, j, k;
    for (int i = 0; i < 8; i++)
        l_1878[i] = 0xBC741313L;
lbl_2243:
    if ((l_1819 | (l_1819 && (((*p_3366->g_341) && make_ushort4((l_1838 |= ((safe_mul_func_int8_t_s_s((((l_1835 = ((safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(0x1BE1L, 5)), (((make_short4(((((safe_mod(((make_uchar4(0UL, l_1819, ((safe_rshift_func_uint64_t_u_s((safe_mod_func_int8_t_s_s((safe_mod_func_int16_t_s_s((((l_1819 | ((l_1834 != l_1834) ^ (((((l_1819 || l_1819) ^ l_1835) == l_1835) & 0x9B1DL) , l_1835))) , 1L) , 1L), l_1835)), 0x08L)), p_3366->g_605.x)) == 0xFF758B0BCD4C30CFLL), 0x03L) ^ make_uchar4(250UL, 250UL, 250UL, 250UL))), make_uchar4(0xDCL, 0xDCL, 0xDCL, 0xDCL)))).y || 0xDCL) < l_1819), l_1835, 0x53D2L, 0x6776L).w , l_1819) > l_1835) == 0x59D0CF6AL))) | 0x6A146E6DL)) || (-1L)) == l_1819), l_1819)) <= 0UL)), 0xE969L, 8UL, 1UL).x) | 0xFEF239FBL))))
    { /* block id: 752 */
        __shared__ char3 l_1852;
        l_1852 = make_char3(0x70L, 0x49L, 0x70L);
        int32_t l_1857 = 0xCEEA6090L;
        int32_t l_1858[3][5] = {{(-10L), 7L, 1L, 1L, 7L}, {(-10L), 7L, 1L, 1L, 7L}, {(-10L), 7L, 1L, 1L, 7L}};
        int8_t l_1879 = 4L;
        // attempting a hip shared for loop
        __shared__ uint8_t l_1881[9][10][1];
        for (int i = 0; i < 9; i++)
        {
            for (int j = 0; j < 10; j++)
            {
                for (int k = 0; k < 1; k++)
                    l_1881[i][j][k] = 0xF9L;
            }
        }
        __shared__ ulong1 l_1899;
        l_1899 = make_ulong1(0x9E8B58F24F34848BLL);
        // attempting a hip shared for loop
        __shared__ uint64_t **l_1907[5];
        for (int i = 0; i < 5; i++)
            l_1907[i] = nullptr;
        struct S0 ****l_1947 = &p_3366->g_1849;
        int16_t l_1975 = 0x946EL;
        uint64_t *l_1980 = nullptr;
        uint8_t l_1984 = 3UL;
        short2 l_1995 = make_short2(0x0F36L, 0xF29CL);
        int32_t *l_1998 = &l_1835;
        uint32_t l_2025 = 18446744073709551615UL;
        int64_t l_2030 = 0x8693C7600895DDEELL;
        __shared__ int8_t **l_2046;
        l_2046 = nullptr;
        int1 l_2083 = make_int1((-3L));
        int2 l_2084 = make_int2(0x18CBF4EBL, 0x37579165L);
        int64_t l_2103[3][10] = {{0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L}, {0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L}, {0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L, 0x445F3BBA168ACDA1LL, 3L}};
        uint8_t l_2144 = 251UL;
        struct S1 *l_2174[8] = {&p_3366->g_178.f3, &p_3366->g_178.f3, nullptr, &p_3366->g_178.f3, &p_3366->g_178.f3, nullptr, &p_3366->g_178.f3, &p_3366->g_178.f3};
        struct S0 l_2177[4] = {{11211,0UL,0x8830AE21L,1UL,-15943}, {11211,0UL,0x8830AE21L,1UL,-15943}, {11211,0UL,0x8830AE21L,1UL,-15943}, {11211,0UL,0x8830AE21L,1UL,-15943}};
        uint64_t l_2192 = 0x3044D10ACB2E23F6LL;
        union U3 *l_2200 = &hip_const_10[1];
        int1 l_2230 = make_int1(0x7322099DL);
        struct S2 ****l_2242[5][3] = {{&p_3366->g_765, &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_765, &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_765, &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_765, &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_765, &p_3366->g_765, &p_3366->g_765}};
        int i, j, k;
        for (int i = 0; i < 5; i++)
            l_1907[i] = nullptr;
        if (make_int2(p_3366->g_1839.x, p_3366->g_1839.x).y)
        { /* block id: 753 */
            union U3 l_1847 = {0x62903FEF63F66FD7LL};
            __shared__ long2 l_1851;
            l_1851 = make_long2(0xED015881643C28C4LL, 0L);
            int32_t l_1854 = 0x96E1C7ECL;
            int i;
            for (p_3366->g_457 = 20; (p_3366->g_457 != 14); p_3366->g_457 = safe_sub_func_int64_t_s_s(p_3366->g_457, 2))
            { /* block id: 756 */
                int64_t ***l_1844 = &p_3366->g_1842;
                struct S0 ****l_1850 = nullptr;
                (*l_1844) = p_3366->g_1842;
                l_1854 |= (((-3L) > (l_1847 , (p_3366->g_1848[7][3] != l_1850))) > (make_long3(l_1851.x, l_1851.x, l_1851.x).y ^ (make_char2(l_1852.z, l_1852.z).y ^ (func_59((*p_3366->g_833), (l_1819 , l_1853[0][0][1]), p_3366) , l_1847.f0))));
            }
        }
        else
        { /* block id: 760 */
            int32_t l_1872[2][3] = {{0L, 0L, 0x140D48A4L}, {0L, 0L, 0x140D48A4L}};
            int32_t l_1877[6] = {0xDF496B38L, 0xDF496B38L, (-6L), 0xDF496B38L, 0xDF496B38L, (-6L)};
            uint64_t **l_1905 = nullptr;
            uint64_t ***l_1906 = &p_3366->g_77;
            uint64_t **l_1909 = nullptr;
            uint64_t ***l_1908 = &l_1909;
            uint64_t l_1924[10][9][2] = {{{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}, {{0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}, {0x703F7E1A8B6355B1LL, 0xAC9275188B396326LL}}};
            int1 l_1925 = make_int1((-1L));
            int32_t l_1937 = 0x79D55EDAL;
            union U3 l_1950 = {18446744073709551615UL};
            int64_t l_1966[2];
            __shared__ uint16_t l_1977;
            l_1977 = 0xF437L;
            int32_t *l_1982 = nullptr;
            // attempting a hip shared for loop
            __shared__ int32_t *l_1983[9];
            for (int i = 0; i < 9; i++)
                l_1983[i] = nullptr;
            int i, j, k;
            for (int i = 0; i < 2; i++)
                l_1966[i] = 0x1BB2F67ED2C3CD4FLL;
            for (p_3366->g_178.f1 = 0; (p_3366->g_178.f1 < 7); p_3366->g_178.f1++)
            { /* block id: 763 */
                int32_t *l_1859 = &l_1857;
                int32_t *l_1860 = &l_1858[2][4];
                __shared__ int32_t *l_1861;
                l_1861 = nullptr;
                int32_t *l_1862 = nullptr;
                int32_t *l_1863 = &l_1858[2][3];
                int32_t *l_1864 = &l_1835;
                int32_t *l_1865 = &l_1857;
                int32_t *l_1866 = &l_1858[2][3];
                int32_t *l_1867 = &l_1858[0][4];
                int32_t *l_1868 = nullptr;
                int32_t *l_1869 = nullptr;
                int32_t *l_1870 = nullptr;
                __shared__ int32_t *l_1871;
                l_1871 = nullptr;
                int32_t *l_1873 = nullptr;
                int32_t *l_1874 = nullptr;
                int32_t *l_1875 = nullptr;
                int32_t *l_1876[10] = {&l_1858[2][3], nullptr, nullptr, nullptr, nullptr, &l_1858[2][3], nullptr, nullptr, nullptr, nullptr};
                int i;
                l_1881[2][2][0]++;
            }
            if ((safe_div_func_uint32_t_u_u(((((safe_mul_func_uint64_t_u_u(l_1877[1], 0xB7F4CA5C093C56C5LL)) & (safe_mul_func_uint16_t_u_u(make_ushort2(p_3366->g_1890.z, p_3366->g_1890.z).y, make_ushort1(p_3366->g_1891.x).x))) > (make_uchar2(p_3366->g_283.w, 0x0CL).y , (((((safe_rshift_func_uint16_t_u_u(l_1877[3], (safe_div_func_uint64_t_u_u(make_ulong2((((safe_rshift(make_long3(p_3366->g_1898.x, p_3366->g_1898.x, p_3366->g_1898.x), make_long3(64, 64, 64)))).y < l_1852.y), make_ulong4(make_ulong1(l_1899.x).x, 1UL, 0UL, 0xC936268A61E69C4BLL).x).x, (safe_div_func_uint32_t_u_u((((safe_mul_func_uint16_t_u_u((make_long3(p_3366->g_1904.z, p_3366->g_1904.z, p_3366->g_1904.z).z | (-1L)), ((l_1858[0][0] &= (((*l_1906) = l_1905) == ((*l_1908) = l_1907[4]))) >= (l_1857 = (0x165DD9C75B2FF600LL && l_1852.y))))) < 0UL) , l_1899.x), hip_const_9.f2)))))) && 0x7758CCA3L) == hip_const_9.f4) != l_1877[2]) || l_1858[2][3]))) <= 0x6732894DL), l_1872[0][0])))
            { /* block id: 770 */
                // attempting a hip shared for loop
                __shared__ uint8_t *l_1912[9];
                for (int i = 0; i < 9; i++)
                    l_1912[i] = &p_3366->g_401;
                int32_t *l_1926 = nullptr;
                int32_t *l_1927 = nullptr;
                int32_t *l_1928 = nullptr;
                int32_t *l_1929 = nullptr;
                int32_t *l_1930 = nullptr;
                int64_t *l_1932 = nullptr;
                int64_t *l_1933 = nullptr;
                __shared__ int64_t *l_1934;
                l_1934 = nullptr;
                // attempting a hip shared for loop
                __shared__ int64_t *l_1935[9];
                for (int i = 0; i < 9; i++)
                    l_1935[i] = nullptr;
                __shared__ int32_t l_1936;
                l_1936 = (-1L);
                uint32_t l_1938 = 2UL;
                union U3 ****l_1951 = &p_3366->g_724[9];
                int32_t l_1965 = 0x64F9ED4FL;
                int32_t l_1967 = 0xECB6853DL;
                int32_t l_1968 = (-5L);
                int32_t l_1969 = 0x98262B84L;
                int32_t l_1972 = 0L;
                int32_t l_1973[5];
                int i;
                for (int i = 0; i < 9; i++)
                    l_1935[i] = nullptr;
                for (int i = 0; i < 5; i++)
                    l_1973[i] = (-9L);
                (***p_3366->g_655) = &l_1878[1];
                (*p_3366->g_657) = nullptr;
                if ((safe_mod_func_int32_t_s_s((0x46L | ((l_1857 = (--p_3366->g_638.z)) | make_char3((make_uchar2(((((*p_3366->g_1843) > (*p_3366->g_1843)) & ((((safe_add_func_uint16_t_u_u(l_1877[0], (l_1937 = ((safe_mod_func_uint64_t_u_u(make_ulong4(0x485F5B6DA9B72B2BLL, 0x3FE0CB6E95DC3745LL, 0x5A73C26EFFDCFF3ELL, ((((safe_div_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((make_long3(p_3366->g_1923.y, p_3366->g_1923.y, p_3366->g_1923.y).z >= (((l_1835 = (l_1924[0][5][1] , (l_1925.x = ((~make_int2(l_1925.x, l_1925.x))).y))) <= l_1838) ^ l_1819)), make_short3(p_3366->g_1931.x, p_3366->g_1931.x, p_3366->g_1931.x).z)), l_1872[0][0])) ^ (l_1878[6] = (p_3366->g_1222.x = (**p_3366->g_1842)))) <= (**p_3366->g_1842)) || (**p_3366->g_1842))).z, (*p_3366->g_1843))) & l_1936)))) ^ 0x0CL) == 1L) <= l_1819)) <= 0x07D7L), 1UL).y == p_3366->g_104.x), l_1881[2][2][0], (-1L)).y)), (-1L))))
                { /* block id: 780 */
                    ++l_1938;
                }
                else
                { /* block id: 782 */
                    struct S0 ****l_1948 = &p_3366->g_1849;
                    int32_t l_1954 = 0x5E1DF65AL;
                    int32_t l_1970 = 7L;
                    int32_t l_1971 = 0xA87A30CFL;
                    int32_t l_1974 = 1L;
                    int32_t l_1976 = 1L;
                    uint64_t *l_1981 = &l_1924[0][5][1];
                    if (l_1941)
                    { /* block id: 783 */
                        int4 l_1944 = make_int4((-3L), 2L, (-3L), 2L);
                        __shared__ struct S0 *****l_1949;
                        l_1949 = &p_3366->g_1848[8][4];
                        int32_t l_1956 = 0xC2AC1020L;
                        int32_t *l_1957 = nullptr;
                        __shared__ int32_t *l_1958;
                        l_1958 = &l_1878[1];
                        int32_t *l_1959 = &l_1937;
                        int32_t *l_1960 = nullptr;
                        int32_t *l_1961 = &l_1877[1];
                        int32_t *l_1962 = nullptr;
                        __shared__ int32_t *l_1963;
                        l_1963 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_1964[5];
                        for (int i = 0; i < 5; i++)
                            l_1964[i] = nullptr;
                        int i;
                        for (int i = 0; i < 5; i++)
                            l_1964[i] = nullptr;
                        l_1956 |= ((make_int2((((safe_rshift(make_int2(l_1944.x, l_1944.x), make_int2(32, 32)))).y || (nullptr != p_3366->g_1945)), (((*l_1949) = (l_1948 = l_1947)) != ((((((l_1950 , l_1951) != l_1951) >= ((safe_mod_func_int32_t_s_s((l_1878[1] , (l_1878[7] != ((l_1954 & l_1878[1]) >= l_1954))), p_3366->g_1898.x)) , l_1878[7])) < 255UL) & 250UL) , l_1955))) ^ make_int2(0x0AC305EBL, 0x0AC305EBL))).x;
                        l_1977--;
                        return l_1980;
                    }
                    else
                    { /* block id: 789 */
                        (***p_3366->g_655) = &l_1974;
                        return p_46;
                    }
                }
            }
            else
            { /* block id: 794 */
                return p_46;
            }
            l_1984++;
            for (l_1937 = 0; (l_1937 > (-10)); --l_1937)
            { /* block id: 800 */
                (*p_3366->g_657) = &l_1835;
            }
        }
        if ((((*l_1998) ^= (make_ushort4(0xD011L, (*p_3366->g_341), ((((safe_mul_func_int32_t_s_s((safe_add_func_int8_t_s_s((safe_mul_func_int16_t_s_s(make_short2(l_1995.x, l_1995.x).x, (l_1858[1][0] = (*p_3366->g_183)))), l_1819)), make_uint3(p_3366->g_1996.x, p_3366->g_1996.x, p_3366->g_1996.x).z)) , (*p_3366->g_183)) || make_ushort1(((&l_1947 == &p_3366->g_1848[2][0]) || (~l_1852.y))).x) <= ((0UL & make_ushort3(l_1997.x, l_1997.x, l_1997.x).x) & (((p_3366->g_605.x = (*p_3366->g_341)) && 0xFF7BL) ^ 0xB746A1D72E085029LL))), 0xF874L).z | (*p_3366->g_341))) | 1UL))
        { /* block id: 807 */
            uint32_t l_1999 = 18446744073709551612UL;
            int8_t *l_2011[1];
            struct S2 l_2016 = {4294967286UL,0xE3D49E81L,23,{0x8C0FE5D28C39EBC0LL,-86,-6437,293,260,7076},-14,-6,236,11,-23917};
            __shared__ uint16_t **l_2021;
            l_2021 = &p_3366->g_344;
            int32_t l_2024 = (-9L);
            int16_t l_2028[7][4];
            uint16_t l_2029[4][4] = {{3UL, 0x2ADDL, 0x9FB9L, 0x2ADDL}, {3UL, 0x2ADDL, 0x9FB9L, 0x2ADDL}, {3UL, 0x2ADDL, 0x9FB9L, 0x2ADDL}, {3UL, 0x2ADDL, 0x9FB9L, 0x2ADDL}};
            __shared__ uint8_t l_2031;
            l_2031 = 247UL;
            int8_t **l_2049 = &p_3366->g_208;
            int4 l_2058 = make_int4((-8L), 0x8D06FC7AL, (-8L), 0x8D06FC7AL);
            union U3 l_2079 = {1UL};
            uint32_t l_2080 = 18446744073709551615UL;
            long4 l_2114 = make_long4(0xFCA07465493E4C89LL, (-1L), 0xFCA07465493E4C89LL, (-1L));
            uint64_t *l_2117 = nullptr;
            uint32_t l_2127 = 0xB03D1D0DL;
            int i, j;
            for (int i = 0; i < 1; i++)
                l_2011[i] = nullptr;
            for (int i = 0; i < 7; i++)
            {
                for (int j = 0; j < 4; j++)
                    l_2028[i][j] = (-4L);
            }
            (*l_1998) |= ((nullptr != &p_3366->g_401) < (make_ulong4(1UL, l_1999, 0x7203B889871DC9EFLL, 0x25B8FFA1A9E5BDA3LL).x >= ((*p_3366->g_183) >= ((nullptr != (*p_3366->g_1786)) >= p_3366->g_1617.w))));
            l_2016.f8 = (l_1835 = ((((safe_lshift_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((l_1878[6] = (l_2016.f2 = (p_3366->g_1421.y == (safe_div_func_int16_t_s_s((p_3366->g_940.w |= ((make_short2(l_2008.x, l_2008.x) ^ ((((((safe_mod(((make_short2((((((l_1838 = l_1997.x) ^ l_2008.y) || (make_long1(((l_1999 | (make_uchar4(0UL, ((safe_lshift(make_uchar4(4UL, 0xE0L, (make_uint1(4294967295UL).x | (safe_mod_func_int32_t_s_s(((l_2016 , (safe_mod_func_uint64_t_u_u((l_2016.f3.f3 ^= (safe_sub_func_uint64_t_u_u((((*l_2021) = &p_3366->g_1706) != l_1837[4][1]), (safe_sub_func_uint64_t_u_u((--l_2025), 1UL))))), (((((l_1941 <= (*l_1998)) || l_2016.f8) , nullptr) == nullptr) & l_2028[6][2])))) != l_1835), l_2016.f4))), 1UL), make_uchar4(8, 8, 8, 8)))).z, 0x82L, l_1819).z , 0x5D2F56E5L)) ^ l_2029[2][3])).x , 0xA9E8L)) != l_2030) > (*l_1998)), 0x2E5FL) ^ make_short2(6L, 6L))), make_short2(0xAA65L, 0xAA65L)))) ^ make_short2(0L, 0L))) ^ make_short2(0xF5A6L, 0xF5A6L))))).x), 0xC154L))))), 1)), 30)) ^ 1UL) | l_2016.f3.f5) | l_2031));
            if (l_2028[3][1])
            { /* block id: 818 */
                __shared__ uint8_t l_2041;
                l_2041 = 9UL;
                int32_t l_2045 = 0x9F2164BCL;
                int3 l_2052 = make_int3(0L, 0x51B371DAL, 0L);
                uint32_t *l_2071[3][4][4] = {{{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}};
                int16_t *l_2090 = &l_2028[5][0];
                struct S0 *l_2116 = nullptr;
                uint64_t *l_2130 = &hip_const_9.f3;
                int i, j, k;
lbl_2096:
                for (p_3366->g_178.f0 = 1; (p_3366->g_178.f0 <= 4); p_3366->g_178.f0 += 1)
                { /* block id: 821 */
                    uint64_t l_2034[3][2][8] = {{{0xC9552A4F72AE58BELL, 0xB199227F9090AD4ALL, 0xC9552A4F72AE58BELL, 1UL, 18446744073709551609UL, 18446744073709551607UL, 0xA07E9177336E9F51LL, 18446744073709551612UL}, {0xC9552A4F72AE58BELL, 0xB199227F9090AD4ALL, 0xC9552A4F72AE58BELL, 1UL, 18446744073709551609UL, 18446744073709551607UL, 0xA07E9177336E9F51LL, 18446744073709551612UL}}, {{0xC9552A4F72AE58BELL, 0xB199227F9090AD4ALL, 0xC9552A4F72AE58BELL, 1UL, 18446744073709551609UL, 18446744073709551607UL, 0xA07E9177336E9F51LL, 18446744073709551612UL}, {0xC9552A4F72AE58BELL, 0xB199227F9090AD4ALL, 0xC9552A4F72AE58BELL, 1UL, 18446744073709551609UL, 18446744073709551607UL, 0xA07E9177336E9F51LL, 18446744073709551612UL}}, {{0xC9552A4F72AE58BELL, 0xB199227F9090AD4ALL, 0xC9552A4F72AE58BELL, 1UL, 18446744073709551609UL, 18446744073709551607UL, 0xA07E9177336E9F51LL, 18446744073709551612UL}, {0xC9552A4F72AE58BELL, 0xB199227F9090AD4ALL, 0xC9552A4F72AE58BELL, 1UL, 18446744073709551609UL, 18446744073709551607UL, 0xA07E9177336E9F51LL, 18446744073709551612UL}}};
                    int32_t l_2042 = (-5L);
                    int8_t **l_2048[2];
                    int8_t ***l_2047[7][9] = {{&l_2048[0], &l_2048[0], &l_2048[1], &l_2048[1], &l_2048[1], &l_2048[0], &l_2048[0], &l_2048[0], &l_2048[1]}, {&l_2048[0], &l_2048[0], &l_2048[1], &l_2048[1], &l_2048[1], &l_2048[0], &l_2048[0], &l_2048[0], &l_2048[1]}, {&l_2048[0], &l_2048[0], &l_2048[1], &l_2048[1], &l_2048[1], &l_2048[0], &l_2048[0], &l_2048[0], &l_2048[1]}, {&l_2048[0], &l_2048[0], &l_2048[1], &l_2048[1], &l_2048[1], &l_2048[0], &l_2048[0], &l_2048[0], &l_2048[1]}, {&l_2048[0], &l_2048[0], &l_2048[1], &l_2048[1], &l_2048[1], &l_2048[0], &l_2048[0], &l_2048[0], &l_2048[1]}, {&l_2048[0], &l_2048[0], &l_2048[1], &l_2048[1], &l_2048[1], &l_2048[0], &l_2048[0], &l_2048[0], &l_2048[1]}, {&l_2048[0], &l_2048[0], &l_2048[1], &l_2048[1], &l_2048[1], &l_2048[0], &l_2048[0], &l_2048[0], &l_2048[1]}};
                    int1 l_2055 = make_int1((-7L));
                    int i, j, k;
                    for (int i = 0; i < 2; i++)
                        l_2048[i] = &l_2011[0];
                    l_2045 = (((safe_div_func_int16_t_s_s(0x3C19L, (--l_2034[1][0][5]))) != ((((*p_3366->g_183) ^ l_1878[1]) > ((safe_div_func_uint64_t_u_u(l_2041, l_2042)) <= make_ulong1(6UL).x)) & (*l_1998))) > (safe_div_func_uint16_t_u_u(l_2042, l_1878[1])));
                    if (l_1997.x)
                        break;
                    l_2049 = l_2046;
                    l_2016.f8 = ((*l_1998) = ((safe_rshift(make_int3(l_2052.y, l_2052.y, l_2052.y), make_int3(32, 32, 32)))).y);
                    for (l_1857 = 2; (l_1857 >= 0); l_1857 -= 1)
                    { /* block id: 830 */
                        int i, j;
                        l_1858[l_1857][p_3366->g_178.f0] = make_int4(((safe_div(make_int1(l_2055.x), ((safe_mod(make_int1(l_2058.z), make_int1(3L))))))).x, 0x92FEEC02L, 1L, 8L).w;
                    }
                }
                if ((l_2080 = (l_2041 , (safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int32_t_s_s((((0xFB8EL == (make_uint3((safe_mod_func_int32_t_s_s((l_2016.f3.f3 , (safe_mul_func_uint32_t_u_u((p_3366->g_2072 |= (safe_rshift_func_int32_t_s_u(0x7B1DD2FAL, 4))), (l_1835 = 1UL)))), (safe_mul_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(((((-1L) <= (safe_mod_func_int64_t_s_s((l_2079 , 7L), l_2079.f0))) , 0x9C014F17L) >= l_2008.x), l_2029[2][3])), (-1L))))), l_2028[6][2], 0xE4D44342L).y > p_3366->g_638.y)) , 0UL) ^ 0L), p_3366->g_68.f2)) < 1UL), l_2052.x)), l_2052.z)))))
                { /* block id: 837 */
                    __shared__ long1 l_2089;
                    l_2089 = make_long1((-5L));
                    int32_t l_2105 = 1L;
                    int i;
                    if ((safe_mul_func_uint32_t_u_u((l_2045 &= (((make_int1(l_2083.x) & make_int1(l_2084.x))).x || ((safe_mul_func_int32_t_s_s(make_int1(0xEDE902DBL).x, (safe_mod_func_int32_t_s_s((*l_1998), ((((+l_2089.x) >= ((func_59(l_2016.f3, l_2090, p_3366) , (l_2008.y , (**p_3366->g_1842))) == ((((safe_sub_func_uint8_t_u_u((safe_rshift_func_uint64_t_u_u(18446744073709551609UL, l_2095)), (*l_1998))) , l_2089.x) == l_2089.x) ^ l_2089.x))) & p_3366->g_1418.x) ^ 0x23D4B781852EE5B0LL))))) > 0x92E5B281F42D5069LL))), l_1941)))
                    { /* block id: 839 */
                        struct S1 l_2097 = {1L,-113,-4421,438,-933,12766};
                        int32_t *l_2098 = nullptr;
                        int32_t *l_2099 = &l_1858[0][3];
                        int32_t *l_2100 = nullptr;
                        int32_t *l_2101 = &l_1878[1];
                        int32_t *l_2102 = nullptr;
                        int32_t *l_2104 = nullptr;
                        int32_t *l_2106[4][4][9] = {{{nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}}, {{nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}}, {{nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}}, {{nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}, {nullptr, &l_2024, &l_2105, nullptr, nullptr, nullptr, &l_2105, nullptr, nullptr}}};
                        __shared__ uint8_t l_2107;
                        l_2107 = 0xC1L;
                        int i, j, k;
                        (*l_1998) = l_2058.w;
                        if (l_2031)
                            goto lbl_2096;
                        l_2097 = l_2097;
                        ++l_2107;
                    }
                    else
                    { /* block id: 844 */
                        (*l_1998) |= (safe_add_func_uint64_t_u_u(make_ulong1(0x2C30FEFEAD66D335LL).x, ((((((make_long4(p_3366->g_2112.x, p_3366->g_2112.x, p_3366->g_2112.x, p_3366->g_2112.x) | make_long4(p_3366->g_2113.z, p_3366->g_2113.z, p_3366->g_2113.z, p_3366->g_2113.z))) ^ make_long4(l_2114.x, l_2114.x, l_2114.x, l_2114.x))) ^ make_long4(l_2115.x, l_2115.x, l_2115.x, l_2115.x))).z));
                        (*p_3366->g_308) = l_2116;
                    }
                    return l_2117;
                }
                else
                { /* block id: 849 */
                    int32_t *l_2118 = &l_1878[1];
                    int32_t *l_2119 = nullptr;
                    int32_t *l_2120 = nullptr;
                    int32_t *l_2121 = &l_1835;
                    int32_t *l_2122 = nullptr;
                    int32_t *l_2123 = nullptr;
                    __shared__ int32_t *l_2124;
                    l_2124 = &p_3366->g_1264;
                    int32_t *l_2125 = nullptr;
                    int32_t *l_2126[2];
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_2126[i] = &l_1878[1];
                    l_2127++;
                    return l_2130;
                }
            }
            else
            { /* block id: 853 */
                __shared__ struct S1 *l_2131;
                l_2131 = &l_2016.f3;
                int32_t *l_2132 = &l_1878[2];
                int32_t *l_2133 = nullptr;
                int32_t *l_2134 = nullptr;
                int32_t *l_2135 = &l_1858[2][1];
                int32_t *l_2136 = nullptr;
                int32_t *l_2137 = &l_1835;
                int32_t *l_2138 = nullptr;
                int32_t *l_2139 = &p_3366->g_1264;
                __shared__ int32_t *l_2140;
                l_2140 = &l_1857;
                int32_t *l_2141 = &l_1878[1];
                int32_t *l_2142[2];
                int32_t l_2143 = 5L;
                int i;
                for (int i = 0; i < 2; i++)
                    l_2142[i] = &l_1878[3];
                (*l_2131) = ((*l_1834) = l_2016.f3);
                l_2144--;
                (***p_3366->g_655) = &l_1857;
            }
        }
        else
        { /* block id: 859 */
            union U3 ****l_2168 = &p_3366->g_724[9];
            int32_t l_2169 = 4L;
            struct S1 l_2187 = {0xC6E7316DF7CDE79BLL,176,-2796,-43,-1509,5869};
            struct S0 l_2198 = {10774,3UL,-1L,0xB2EA789D9CB5DC14LL,5132};
            char4 l_2212 = make_char4(0xA7L, 0L, 0xA7L, 0L);
            __shared__ uint8_t *l_2215;
            l_2215 = nullptr;
            __shared__ uint8_t *l_2216;
            l_2216 = nullptr;
            int32_t l_2239[10] = {0xD8DB38CFL, 0x18970480L, 0xD8DB38CFL, 0x18970480L, 0xD8DB38CFL, 0x18970480L, 0xD8DB38CFL, 0x18970480L, 0xD8DB38CFL, 0x18970480L};
            struct S2 ****l_2241 = &p_3366->g_928[9];
            int i;
            for (l_1838 = (-5); (l_1838 < 28); l_1838++)
            { /* block id: 862 */
                uint1 l_2158 = make_uint1(0xD7F6A212L);
                union U3 ****l_2167 = &p_3366->g_724[1];
                __shared__ uint64_t *l_2175;
                l_2175 = &p_3366->g_68.f3;
                __shared__ struct S0 *****l_2184;
                l_2184 = &p_3366->g_1848[7][3];
                int16_t *l_2188 = &l_1975;
                int32_t l_2189 = 0x5A2F596CL;
                union U3 **l_2201[1][5][5] = {{{&l_2200, nullptr, &p_3366->g_445, &p_3366->g_445, nullptr}, {&l_2200, nullptr, &p_3366->g_445, &p_3366->g_445, nullptr}, {&l_2200, nullptr, &p_3366->g_445, &p_3366->g_445, nullptr}, {&l_2200, nullptr, &p_3366->g_445, &p_3366->g_445, nullptr}, {&l_2200, nullptr, &p_3366->g_445, &p_3366->g_445, nullptr}}};
                int i, j, k;
                if (make_int3(0xADC8AE4FL, ((*l_1998) = ((+(((safe_div_func_uint32_t_u_u((safe_unary_minus_func_int64_t_s(((safe_add(make_long1(p_3366->g_2154.x), ((((safe_rshift(make_long1(0xBAB90215921EEF51LL), make_long1((**p_3366->g_1842))))) ^ make_long1(l_2157.y)))))).x)), make_uint3(l_2158.x, l_2158.x, l_2158.x).y)) == (safe_div_func_int16_t_s_s(l_2158.x, (safe_div_func_uint16_t_u_u(((safe_mul_func_uint32_t_u_u(((safe_add_func_uint64_t_u_u((nullptr == &p_3366->g_886), l_2158.x)) > (((**l_1955) != (**l_1955)) == 1L)), ((l_2167 != l_2168) && (*p_3366->g_341)))) || l_1997.x), l_2158.x))))) >= (*l_1998))) && l_2158.x)), l_1997.x).x)
                { /* block id: 864 */
                    int32_t *l_2172 = &l_2169;
                    struct S1 *l_2173 = nullptr;
                    l_2169 = l_2169;
                    for (p_3366->g_974 = (-26); (p_3366->g_974 > 56); p_3366->g_974 = safe_add_func_uint32_t_u_u(p_3366->g_974, 8))
                    { /* block id: 868 */
                        (*p_3366->g_657) = l_2172;
                        l_2174[3] = l_2173;
                        return l_2175;
                    }
                    (*l_1998) |= l_2158.x;
                    if ((*l_1998))
                        continue;
                }
                else
                { /* block id: 875 */
                    __shared__ int64_t l_2186;
                    l_2186 = 0xACB1955257F1481FLL;
                    if (l_2095)
                    { /* block id: 876 */
                        struct S0 l_2176 = {21677,5UL,0x3DF1483FL,0x4F1ECE4EE6C2EF46LL,20592};
                        l_2177[2] = l_2176;
                        (*l_1998) ^= (l_2189 = ((safe_rshift(((make_int3((((func_59((((l_2115.x < 1UL) , (l_2169 != ((l_2008.x || ((safe_div_func_uint16_t_u_u(l_2176.f0, (((p_3366->g_2183 = l_2182) == (p_3366->g_2185 = l_2184)) | l_2186))) < 9UL)) , l_2186))) , l_2187), l_2188, p_3366) , 0x7F7F6B01FDD981C9LL) & l_2176.f2) < 1L), l_2187.f3, (-4L)) ^ make_int3((-2L), (-2L), (-2L)))), make_int3(32, 32, 32)))).y);
                        l_1834 = (*p_3366->g_1602);
                    }
                    else
                    { /* block id: 883 */
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_2190[7];
                        for (int i = 0; i < 7; i++)
                            l_2190[i] = &l_2169;
                        int32_t l_2191 = 0x449A65C9L;
                        uint32_t *l_2197 = &p_3366->g_974;
                        uint32_t **l_2196 = &l_2197;
                        uint32_t ***l_2195 = &l_2196;
                        int i;
                        for (int i = 0; i < 7; i++)
                            l_2190[i] = &l_2169;
                        l_2192++;
                        if ((*l_1998))
                            continue;
                        (*l_2195) = nullptr;
                    }
                }
                l_2199 = l_2198;
                if (l_1941)
                    break;
                l_2200 = l_2200;
            }
            if (hip_const_5.f3.f2)
                goto lbl_2243;
            l_2198 = l_2198;
            l_2083.x |= ((safe_add_func_uint8_t_u_u((safe_add_func_int32_t_s_s((l_1835 = l_2169), 4UL)), l_2115.x)) , ((*l_1998) = ((safe_sub_func_uint64_t_u_u(6UL, (l_2187.f0 , (**p_3366->g_1842)))) < ((*l_1834) , (l_2198.f2 == ((make_int1(p_3366->g_2208.x) | ((((safe_lshift(((make_int1(l_2211.y) ^ make_int1(((((make_char4(l_2212.y, l_2212.y, l_2212.y, l_2212.y).z >= (l_2169 = (safe_add_func_uint32_t_u_u(l_2008.x, l_2199.f4)))) , p_3366->g_401) > p_3366->g_1890.w) ^ 246UL)))), make_int1(32)))) ^ make_int1(0L))))).x)))));
            (*l_1998) = (safe_lshift_func_uint32_t_u_u(make_uint2(((~0xBEFC206AL) == ((((l_2198.f0 && (l_2219[7][1][2] , l_2212.w)) == (*l_1998)) , ((*l_1998) , ((safe_mod_func_int16_t_s_s(((safe_mod_func_int8_t_s_s(make_char1((safe_add_func_int32_t_s_s((((l_2240 = ((*p_3366->g_1945) = (l_2241 = (((*l_1998) >= ((safe_add_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(make_int4(make_int4(l_2230.x, l_2230.x, l_2230.x, l_2230.x).x, (safe_div_func_int32_t_s_s(make_int4(1L, 0xEA574E50L, (+((make_char1((safe_sub_func_int64_t_s_s(((make_long3(0L, (-4L), (-10L)) ^ make_long3((safe_mod_func_uint16_t_u_u(65528UL, (p_3366->g_1890.z |= ((!make_char2(((l_2187.f3 ^= ((l_2199 , p_3366->g_558.z) , l_2187.f2)) <= 0L), 0x2AL).x) | 0UL)))), 5L, 0x659A444F0FE95978LL))).y, l_2239[6]))).x && 5UL) && l_1941)), (-4L)).y, (*l_1998))), 4L, 0x53398A78L).x, (*l_1998))), l_1997.x)) & (*p_3366->g_341))) , l_2240)))) != l_2242[2][0]) || (*l_1998)), 0x901B8249L))).x, (*l_1998))) <= l_1880), (*p_3366->g_341))) > 1L))) < l_1880)), 6UL).x, l_2169));
        }
    }
    else
    { /* block id: 905 */
        p_3366->g_1945 = &p_3366->g_1946[0][1][2];
    }
    for (l_1835 = 0; (l_1835 >= 0); l_1835 -= 1)
    { /* block id: 911 */
        int32_t *l_2244[4] = {&l_1878[1], nullptr, &l_1878[1], nullptr};
        int64_t l_2245 = (-2L);
        uint32_t l_2246 = 0UL;
        int4 l_2251 = make_int4((-8L), 2L, (-8L), 2L);
        int i;
        l_2246--;
        l_2249 = make_int1(0x7BCF0CE0L).x;
        l_2199.f4 &= (l_2250 , make_int1(l_2251.w).x);
    }
    l_2211.z = l_2219[7][1][2].f3.f2;
    for (l_2199.f3 = 0; (l_2199.f3 == 49); l_2199.f3 = safe_add_func_uint8_t_u_u(l_2199.f3, 6))
    { /* block id: 919 */
        return p_46;
    }
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_308 p_3366->g_178.f4 hip_const_1.f5 p_3366->g_558 p_3366->g_724 p_3366->g_105 p_3366->g_561 p_3366->g_178.f3 p_3366->g_100 hip_const_1.f7 p_3366->g_178.f5 p_3366->g_23 p_3366->g_146 p_3366->g_638 p_3366->g_654 hip_const_5.f3 p_3366->g_833 hip_const_5 p_3366->g_309 p_3366->g_68 p_3366->g_655 p_3366->g_656 p_3366->g_657 p_3366->g_183 hip_const_11 hip_const_7 hip_const_9.f4 p_3366->g_605 hip_const_2 p_3366->g_341 hip_const_9.f1 p_3366->g_974 p_3366->g_65 p_3366->g_149 p_3366->g_74 p_3366->g_940 p_3366->g_1004 p_3366->g_725 p_3366->g_344 p_3366->g_111 p_3366->g_886 hip_const_9 p_3366->g_171 hip_const_1.f3 p_3366->g_175 p_3366->g_110 hip_const_1 p_3366->g_248 p_3366->g_249 p_3366->g_279 p_3366->g_280 p_3366->g_283 p_3366->g_208 hip_const_10 p_3366->g_178.f1 p_3366->g_178.f6 p_3366->g_178.f8 hip_const_4 p_3366->g_364 p_3366->g_367 p_3366->g_178.f0 p_3366->g_507 p_3366->g_401 p_3366->g_555 p_3366->g_560 p_3366->g_178.f2 p_3366->g_596 p_3366->g_615 p_3366->g_623 p_3366->g_683 p_3366->g_754 p_3366->g_765
 * writes: p_3366->g_309 p_3366->g_712 p_3366->g_724 p_3366->g_507 p_3366->g_596 p_3366->g_279 p_3366->g_23 p_3366->g_401 p_3366->g_178.f5 p_3366->g_178.f0 p_3366->g_68.f3 p_3366->g_638 p_3366->g_111 p_3366->g_178.f3 p_3366->g_100 p_3366->g_410 p_3366->g_68.f2 p_3366->g_605 p_3366->g_765 p_3366->g_928 p_3366->g_974 p_3366->g_178 p_3366->g_886 p_3366->g_767 p_3366->g_65 p_3366->g_68 p_3366->g_77 p_3366->g_183 p_3366->g_208 p_3366->g_146 p_3366->g_110 p_3366->g_308 p_3366->g_248 p_3366->g_341 p_3366->g_344 p_3366->g_280 p_3366->g_445
 */
__device__ uint64_t * func_47(int16_t * p_48, uint64_t  p_49, struct S4 * p_3366)
{ /* block id: 5 */
    uchar3 l_50 = make_uchar3(0x41L, 254UL, 0x41L);
    uint64_t **l_66 = &p_3366->g_65;
    int16_t **l_180 = nullptr;
    int16_t *l_182 = &hip_const_11[2][1];
    int16_t **l_181[7][2] = {{&l_182, &l_182}, {&l_182, &l_182}, {&l_182, &l_182}, {&l_182, &l_182}, {&l_182, &l_182}, {&l_182, &l_182}, {&l_182, &l_182}};
    ulong2 l_188 = make_ulong2(0x14F5B04E45F982F0LL, 18446744073709551615UL);
    int64_t *l_189 = &hip_const_5.f3.f0;
    int64_t *l_190[9] = {&p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0, &p_3366->g_178.f3.f0};
    int32_t l_191 = 2L;
    __shared__ int3 l_196;
    l_196 = make_int3(0xA0033338L, 7L, 0xA0033338L);
    uint32_t *l_197[10] = {&hip_const_1.f0, &hip_const_4, &hip_const_1.f0, &hip_const_4, &hip_const_1.f0, &hip_const_4, &hip_const_1.f0, &hip_const_4, &hip_const_1.f0, &hip_const_4};
    int8_t l_198 = 5L;
    int8_t l_659 = (-6L);
    __shared__ uint8_t l_664;
    l_664 = 0xB1L;
    uint1 l_671 = make_uint1(0x9BE4ED6DL);
    int32_t l_696 = 0x07CB0461L;
    int32_t l_699 = 0x3AEF2662L;
    __shared__ struct S0 *l_700;
    l_700 = &p_3366->g_68;
    __shared__ struct S0 ***l_701;
    l_701 = &p_3366->g_308;
    int32_t **l_707 = &p_3366->g_111;
    int8_t **l_708 = &p_3366->g_208;
    union U3 *l_763 = &hip_const_6;
    uint16_t l_773 = 0UL;
    __shared__ int64_t l_793;
    l_793 = (-1L);
    int32_t l_799 = 0xDE608948L;
    int64_t l_801 = 0xFFAB950FA30F078ALL;
    __shared__ int16_t l_816;
    l_816 = 1L;
    ushort3 l_822 = make_ushort3(4UL, 1UL, 4UL);
    long3 l_838 = make_long3(0xBE70B17006D2F4CELL, (-1L), 0xBE70B17006D2F4CELL);
    struct S2 ***l_925 = &p_3366->g_766;
    char3 l_929 = make_char3((-1L), (-4L), (-1L));
    __shared__ int32_t *****l_960;
    l_960 = &p_3366->g_655;
    int2 l_965 = make_int2(0x24CED16DL, (-1L));
    uint8_t l_1042 = 1UL;
    __shared__ union U3 ***l_1062;
    l_1062 = &p_3366->g_725;
    __shared__ struct S1 *l_1065;
    l_1065 = &hip_const_1.f3;
    uint16_t l_1123 = 65535UL;
    uint64_t *l_1136 = &hip_const_9.f3;
    uint16_t l_1197 = 65535UL;
    __shared__ uint64_t l_1280;
    l_1280 = 0UL;
    __shared__ uint8_t l_1323;
    l_1323 = 0UL;
    uint16_t *l_1329 = nullptr;
    int3 l_1347 = make_int3(0x46ABBB72L, 0x503CF64BL, 0x46ABBB72L);
    uchar4 l_1357 = make_uchar4(0UL, 0xF4L, 0UL, 0xF4L);
    long2 l_1375 = make_long2((-1L), 0x4C7F7B395AB80205LL);
    int16_t l_1391 = 0x19B3L;
    short3 l_1405 = make_short3(0xE120L, 0L, 0xE120L);
    __shared__ int64_t *l_1451;
    l_1451 = &l_801;
    uint64_t *l_1526 = &hip_const_9.f3;
    int32_t **l_1528 = &p_3366->g_111;
    char2 l_1556 = make_char2(0xC4L, 0x09L);
    struct S1 ***l_1628 = &p_3366->g_1602;
    uchar1 l_1632 = make_uchar1(248UL);
    __shared__ int64_t l_1727;
    l_1727 = 0x94BCA523A4458DFDLL;
    __shared__ char3 l_1778;
    l_1778 = make_char3(0xA0L, 0L, 0xA0L);
    char3 l_1779 = make_char3(0xC9L, 1L, 0xC9L);
    char1 l_1783 = make_char1((-1L));
    uint64_t *l_1818 = &hip_const_9.f3;
    int i, j;
lbl_1326:
    if ((((((make_uchar3(l_50.y, l_50.y, l_50.y) ^ make_uchar3((func_51(func_55((safe_mul_func_int64_t_s_s((func_59(func_62(((*l_66) = p_3366->g_65), hip_const_9, p_3366), (p_3366->g_183 = p_48), p_3366) , make_long3((safe_mul_func_uint64_t_u_u(make_ulong2(l_188.y, l_188.y).y, (l_191 &= l_50.y))), 1L, 0x82760A48CD341528LL).y), (safe_rshift_func_uint32_t_u_u((l_198 |= ((((safe_add(((~make_uint2(0xDAD0AC49L, 5UL))), make_uint2(3UL, ((((make_uint4(((-1L) & make_int1(l_196.z).x), 1UL, 0x184A4C1BL, (65535UL < hip_const_5.f3.f5)) ^ make_uint4(0x7D60034FL, 0x7D60034FL, 0x7D60034FL, 0x7D60034FL))) | make_uint4(0xF984D086L, 0xF984D086L, 0xF984D086L, 0xF984D086L))).x)))).x , l_66) == l_66)), hip_const_1.f1)))), p_3366), p_49, (*p_48), p_3366) , p_3366->g_283.x), 255UL, l_659))) ^ make_uchar3(248UL, 248UL, 248UL))).z < p_49))
    { /* block id: 254 */
        int64_t l_660 = (-7L);
        int32_t l_661 = 1L;
        int32_t *l_662[1];
        int8_t l_663 = 1L;
        __shared__ ulong3 l_680;
        l_680 = make_ulong3(1UL, 18446744073709551615UL, 1UL);
        long2 l_686 = make_long2((-10L), (-1L));
        uint1 l_689 = make_uint1(0x2EF09E5FL);
        uint8_t *l_697 = nullptr;
        int32_t l_698 = 0x24F459EFL;
        int i;
        for (int i = 0; i < 1; i++)
            l_662[i] = nullptr;
        ++l_664;
        l_699 |= (((safe_div(((safe_mod(make_uint1(l_671.x), ((((safe_sub(((make_uint1((safe_div_func_int16_t_s_s(((make_uint1((l_196.x = p_3366->g_283.y)).x ^ p_49) , (!(-1L))), (safe_mul_func_uint32_t_u_u((safe_rshift_func_uint64_t_u_s(make_ulong2(l_680.x, l_680.x).x, 36)), (safe_sub_func_uint32_t_u_u(l_198, ((p_3366->g_178.f3.f0 = ((make_long4(p_3366->g_683.z, p_3366->g_683.z, p_3366->g_683.z, p_3366->g_683.z) ^ ((safe_mod(make_long4(l_686.x, l_686.x, l_686.x, l_686.x), make_long4(0L, (4294967293UL == (make_char3((safe_sub_func_uint32_t_u_u(make_uint3(l_689.x, l_689.x, l_689.x).x, l_671.x)), 6L, 0x7FL).z , l_671.x)), 3L, hip_const_5.f1)))))).z) >= (!((l_698 = (safe_rshift_func_int32_t_s_u((l_696 = (safe_sub_func_int8_t_s_s((safe_sub_func_int16_t_s_s(make_short2(0xE38EL, ((l_191 |= 0x10FD1D152E3A61BALL) , 2L)).x, (*p_48))), p_49))), p_49))) | p_49)))))))))) | make_uint1(0x8EDE02B1L))), make_uint1(1UL)))) ^ make_uint1(0x5E9E877FL)))))), make_uint1(0x73330624L)))).x != p_49);
        l_696 |= 3L;
    }
    else
    { /* block id: 263 */
        int32_t **l_706 = &p_3366->g_111;
        int32_t l_781 = (-1L);
        int32_t l_782 = (-1L);
        int1 l_783 = make_int1(0x62855D8FL);
        int32_t l_794 = 6L;
        // attempting a hip shared for loop
        __shared__ int32_t l_797[6];
        for (int i = 0; i < 6; i++)
            l_797[i] = 0xBAAEDD01L;
        struct S2 ***l_807 = &p_3366->g_766;
        struct S0 l_818 = {2153,9UL,0x206639C3L,18446744073709551610UL,-23382};
        __shared__ uint64_t l_850;
        l_850 = 18446744073709551615UL;
        uint64_t ****l_919 = &p_3366->g_712[0][1];
        __shared__ int32_t l_931;
        l_931 = 0xA7AECE29L;
        uint32_t l_937 = 4294967295UL;
        // attempting a hip shared for loop
        __shared__ uint64_t l_977[3];
        for (int i = 0; i < 3; i++)
            l_977[i] = 0UL;
        struct S1 **l_980 = &p_3366->g_833;
        union U3 l_1102 = {8UL};
        union U3 *l_1118 = &hip_const_10[1];
        int i;
        for (int i = 0; i < 3; i++)
            l_977[i] = 0UL;
lbl_713:
        (*p_3366->g_308) = l_700;
        if (((nullptr == l_701) < (safe_mod_func_uint32_t_u_u(make_uint4(8UL, 0x618CED44L, (((l_707 = l_706) != l_706) == (&p_3366->g_208 != l_708)), 0x97BA0F4BL).w, p_3366->g_178.f4))))
        { /* block id: 266 */
            uint64_t ***l_709 = nullptr;
            uint64_t ****l_710 = &l_709;
            uint64_t ****l_711[4];
            uint32_t *l_739[8][2] = {{&hip_const_5.f0, &hip_const_5.f0}, {&hip_const_5.f0, &hip_const_5.f0}, {&hip_const_5.f0, &hip_const_5.f0}, {&hip_const_5.f0, &hip_const_5.f0}, {&hip_const_5.f0, &hip_const_5.f0}, {&hip_const_5.f0, &hip_const_5.f0}, {&hip_const_5.f0, &hip_const_5.f0}, {&hip_const_5.f0, &hip_const_5.f0}};
            int32_t l_742 = (-1L);
            uint64_t l_750 = 0x6C46631DFD11376CLL;
            union U3 *l_762 = &hip_const_10[5];
            int32_t l_785 = 0x4F44BCD8L;
            int32_t l_787 = (-5L);
            int32_t l_789[8][7][3] = {{{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}, {{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}, {{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}, {{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}, {{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}, {{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}, {{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}, {{(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}, {(-1L), 0x75535B4AL, 0L}}};
            int8_t l_848 = 0x01L;
            int64_t l_849 = 0L;
            int32_t *l_853 = &l_696;
            int32_t *l_854 = &l_794;
            ushort4 l_877 = make_ushort4(0x1449L, 0UL, 0x1449L, 0UL);
            int8_t *l_880 = &p_3366->g_23;
            union U3 ****l_950 = &p_3366->g_724[5];
            struct S1 **l_983[10][2][7] = {{{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}, {{&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}, {&p_3366->g_833, nullptr, &p_3366->g_833, nullptr, &p_3366->g_833, &p_3366->g_833, &p_3366->g_833}}};
            uint4 l_999 = make_uint4(0x147619BDL, 1UL, 0x147619BDL, 1UL);
            // attempting a hip shared for loop
            __shared__ struct S0 l_1005[8][3];
            for (int i = 0; i < 8; i++)
            {
                for (int j = 0; j < 3; j++)
                    l_1005[i][j] = {19617,2UL,0x4859BA1FL,0xBF4CB70EE0C20397LL,-18473};
            }
            uint64_t l_1090 = 0xB588117FE7C21FADLL;
            int i, j, k;
            for (int i = 0; i < 4; i++)
                l_711[i] = nullptr;
            if (((((*l_710) = l_709) != (p_3366->g_712[0][1] = &l_66)) < p_49))
            { /* block id: 269 */
                union U3 ****l_726 = &p_3366->g_724[0];
                union U3 ***l_728[5][3][4] = {{{nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}}, {{nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}}, {{nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}}, {{nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}}, {{nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}, {nullptr, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725}}};
                union U3 ****l_727 = &l_728[3][2][3];
                int8_t *l_740[4][9][5] = {{{&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}}, {{&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}}, {{&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}}, {{&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}, {&l_198, &l_198, &l_659, &p_3366->g_23, nullptr}}};
                uint64_t l_741[6] = {0x5C4FC16E4D9F4DB5LL, 0x5C4FC16E4D9F4DB5LL, 0xC924D01FBA144F87LL, 0x5C4FC16E4D9F4DB5LL, 0x5C4FC16E4D9F4DB5LL, 0xC924D01FBA144F87LL};
                uint16_t *l_743 = nullptr;
                uint16_t *l_744 = nullptr;
                uint16_t *l_745 = nullptr;
                uint16_t *l_746 = &hip_const_6.f1;
                uint16_t *l_747 = &hip_const_9.f1;
                uint16_t *l_748 = nullptr;
                // attempting a hip shared for loop
                __shared__ uint16_t *l_749[10];
                for (int i = 0; i < 10; i++)
                    l_749[i] = &hip_const_10[1].f1;
                int32_t l_751 = 0xD3DB5E3CL;
                struct S0 l_761 = {21293,7UL,0x409D178EL,18446744073709551615UL,-23377};
                int32_t l_784 = 0x6378D98BL;
                int32_t l_788 = 0L;
                int32_t l_790 = 0x855C1967L;
                int32_t l_791 = (-2L);
                // attempting a hip shared for loop
                __shared__ int32_t l_792[9];
                for (int i = 0; i < 9; i++)
                    l_792[i] = 0L;
                int8_t l_796[1];
                uint32_t l_802 = 1UL;
                int i, j, k;
                for (int i = 0; i < 1; i++)
                    l_796[i] = 0xF2L;
                if (hip_const_1.f5)
                    goto lbl_713;
                l_751 = (safe_sub_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u((p_3366->g_596.x = (((-1L) & ((safe_lshift_func_uint8_t_u_u((p_3366->g_558.y , 255UL), (safe_add_func_int64_t_s_s((safe_div_func_int8_t_s_s((((*l_726) = p_3366->g_724[9]) == ((*l_727) = &p_3366->g_725)), (p_3366->g_507.w = (safe_rshift_func_uint32_t_u_u((safe_mul_func_uint64_t_u_u((!(safe_lshift_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(make_uchar3(0x2AL, (4294967295UL >= (safe_add_func_uint8_t_u_u((+((p_49 < (nullptr == l_739[4][1])) >= p_49)), p_49))), p_49).x, (-1L))), p_49))), (-2L))), p_49))))), l_741[3])))) < l_742)) == l_741[3])), p_49)) <= l_750), 3UL));
                l_742 = ((-1L) < p_3366->g_105.y);
                if (l_741[3])
                { /* block id: 277 */
                    union U3 *l_764 = &hip_const_6;
                    __shared__ struct S2 ***l_769;
                    l_769 = &p_3366->g_766;
                    struct S2 ****l_768 = &l_769;
                    int32_t l_772 = 0xADEE88D8L;
                    int32_t l_786[3];
                    int16_t l_798 = 0x85CDL;
                    int32_t l_800 = (-10L);
                    ulong3 l_806 = make_ulong3(18446744073709551615UL, 5UL, 18446744073709551615UL);
                    uint64_t *l_819 = &l_761.f3;
                    uint32_t l_823 = 0UL;
                    struct S2 l_834 = {0x20713BFCL,0x59B9D548L,301,{8L,-141,-7872,-239,1740,11717},15,17,176,-11,26295};
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_786[i] = (-8L);
                    if (((safe_lshift_func_uint8_t_u_s(((make_long2(p_3366->g_754.y, p_3366->g_754.y).y | (p_3366->g_279.y = (+(-1L)))) != (((~(safe_sub_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(((7L ^ 0x11L) != ((make_int3((safe_mod_func_uint64_t_u_u(((l_761 , l_762) == (l_764 = l_763)), (p_49 ^= (p_3366->g_765 != ((*l_768) = nullptr))))), 0L, 0xA71D5C30L) ^ ((((safe_div(((((make_int3(l_772, l_750, 0x5F7854B6L) | make_int3(9L, 9L, 9L))) | make_int3(0x77593CE3L, 0x77593CE3L, 0x77593CE3L))), make_int3(0x7001877FL, 0x7001877FL, 0x7001877FL)))) ^ make_int3(0x9896BBECL, 0x9896BBECL, 0x9896BBECL))))).x), 1)), 0UL))) & 0x52L) , 0xB4L)), p_3366->g_561.x)) | l_773))
                    { /* block id: 282 */
                        int32_t l_776 = 0xB591E388L;
                        __shared__ int32_t *l_777;
                        l_777 = &l_696;
                        int32_t *l_778 = &l_742;
                        int32_t *l_779 = &l_742;
                        int32_t *l_780[1];
                        // attempting a hip shared for loop
                        __shared__ int16_t l_795[7];
                        for (int i = 0; i < 7; i++)
                            l_795[i] = (-1L);
                        int i;
                        for (int i = 0; i < 1; i++)
                            l_780[i] = &l_699;
                        l_751 = (safe_rshift_func_int64_t_s_u((0x63E69BD6E9A8DB06LL <= l_776), 2));
                        if (l_699)
                            goto lbl_805;
lbl_805:
                        l_802++;
                        (*l_777) |= (((((((l_786[0] ^ 0x01D8L) , make_ulong4(l_806.x, l_806.x, l_806.x, l_806.x).w) >= p_49) , 4294967295UL) || (*l_778)) || (((nullptr != l_807) ^ p_49) >= (safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((p_49 , p_49), 1)), l_750)))) & 1L);
                    }
                    else
                    { /* block id: 287 */
                        uint32_t l_817 = 4294967288UL;
                        struct S0 l_820 = {20713,0x06C4L,0L,1UL,-16734};
                        struct S1 l_821 = {1L,152,4217,-422,-608,6635};
                        struct S2 l_826[1] = {{1UL,0x35AF60CAL,-119,{0x0CF0D72D5C67CC20LL,-174,-6831,-132,727,14946},3,3,42,20,7209}};
                        struct S1 *l_832 = &hip_const_1.f3;
                        struct S1 **l_831[6] = {&l_832, &l_832, &l_832, &l_832, &l_832, &l_832};
                        __shared__ struct S0 **l_835;
                        l_835 = &p_3366->g_410;
                        int i;
                        l_834 = func_59(((l_787 |= (safe_div_func_uint64_t_u_u(p_49, (safe_sub_func_uint32_t_u_u(make_uint2(0xBD839DD5L, 3UL).x, l_816))))) , (l_817 , ((*p_3366->g_833) = (l_818 , func_51((l_821 , ((make_ushort4(l_822.y, l_822.y, l_822.y, l_822.y).x < (l_823++)) , &l_741[3])), p_49, l_790, p_3366))))), &hip_const_7, p_3366);
                        (*l_835) = ((**l_701) = (*p_3366->g_308));
                    }
                    for (l_798 = 2; (l_798 >= 0); l_798 -= 1)
                    { /* block id: 299 */
                        int i;
                        l_786[l_798] = (safe_mul_func_int8_t_s_s(l_786[l_798], ((make_long2(l_838.x, l_838.x).x , nullptr) != ((**p_3366->g_308) , nullptr))));
                        if (l_761.f4)
                            continue;
                        (***p_3366->g_655) = &l_786[2];
                        if (p_49)
                            continue;
                    }
                }
                else
                { /* block id: 305 */
                    int32_t *l_839 = nullptr;
                    int32_t *l_840 = &l_785;
                    int32_t *l_841 = &l_784;
                    int32_t *l_842 = &l_191;
                    int32_t *l_843 = &l_794;
                    int32_t *l_844 = nullptr;
                    int32_t *l_845 = nullptr;
                    __shared__ int32_t *l_846;
                    l_846 = nullptr;
                    int32_t *l_847[1][7][5];
                    int i, j, k;
                    for (int i = 0; i < 1; i++)
                    {
                        for (int j = 0; j < 7; j++)
                        {
                            for (int k = 0; k < 5; k++)
                                l_847[i][j][k] = &l_789[1][5][1];
                        }
                    }
                    l_850++;
                    l_854 = (l_853 = &l_789[3][6][0]);
                }
            }
            else
            { /* block id: 310 */
                union U3 l_876 = {0xC7D6946E347A37AELL};
                for (p_3366->g_68.f2 = 0; (p_3366->g_68.f2 == 21); ++p_3366->g_68.f2)
                { /* block id: 313 */
                    __shared__ int8_t l_885;
                    l_885 = 0x38L;
                    for (l_818.f2 = 15; (l_818.f2 != 17); l_818.f2++)
                    { /* block id: 316 */
                        int32_t l_865 = 1L;
                        (*l_854) = (safe_div_func_int16_t_s_s((+(safe_rshift_func_int16_t_s_u((nullptr != &p_3366->g_309), 11))), (safe_rshift_func_uint8_t_u_s((l_865 < (safe_lshift_func_int16_t_s_s((safe_add_func_int8_t_s_s(make_char1((safe_mul_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((safe_add_func_int16_t_s_s((l_876 , (make_ushort2(l_877.x, l_877.x).x , (safe_lshift_func_uint32_t_u_s((&l_848 == (l_880 = &p_3366->g_23)), ((safe_add_func_int64_t_s_s(((p_3366->g_74.x != (((safe_add_func_int64_t_s_s(0L, hip_const_1.f0)) || l_885) < p_3366->g_886)) <= l_865), 1UL)) , 1L))))), l_865)), 0xC8B4L)), 0x9DL))).x, p_49)), l_885))), p_49))));
                    }
                }
                for (l_876.f1 = (-29); (l_876.f1 == 54); l_876.f1 = safe_add_func_int8_t_s_s(l_876.f1, 6))
                { /* block id: 323 */
                    uint64_t *l_889 = nullptr;
                    return l_889;
                }
            }
            for (p_3366->g_178.f0 = 0; (p_3366->g_178.f0 > 31); ++p_3366->g_178.f0)
            { /* block id: 329 */
                uint8_t *l_898 = nullptr;
                __shared__ uint8_t *l_899;
                l_899 = &p_3366->g_401;
                int32_t l_909 = 0L;
                int32_t l_933 = 0xFAAFD6C6L;
                int32_t l_935[7][3][10] = {{{1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}}, {{1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}}, {{1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}}, {{1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}}, {{1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}}, {{1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}}, {{1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}, {1L, 0x8831D030L, (-1L), 0x8831D030L, 1L, 0xC74DA99DL, 0x1972C535L, (-1L), 8L, 0x8831D030L}}};
                uint8_t l_952[2];
                int2 l_959 = make_int2(0x50C927D9L, (-1L));
                int4 l_966 = make_int4(1L, 0x336B1861L, 1L, 0x336B1861L);
                int32_t l_972 = 0x61A99DF3L;
                uint32_t l_1016 = 0UL;
                struct S0 l_1030 = {12651,0xE33EL,3L,0UL,-289};
                uint64_t l_1103 = 18446744073709551608UL;
                int i, j, k;
                for (int i = 0; i < 2; i++)
                    l_952[i] = 0UL;
                if (((safe_div_func_uint8_t_u_u(0x20L, (p_49 && ((*l_899) = (safe_div_func_int16_t_s_s((*p_3366->g_183), (-4L))))))) < ((hip_const_9.f4 , 0x03L) <= make_char2(0L, ((safe_mul_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((((safe_add_func_int8_t_s_s((-4L), (((make_char2(p_3366->g_908.y, p_3366->g_908.y) ^ make_char2(0xA7L, 8L))).y | 0xD2L))) < (*l_853)) ^ l_909) && 0x0DFEDF05788D459ELL), (*l_853))), (*p_48))), p_3366->g_558.x)) >= 0xB0L)).y)))
                { /* block id: 331 */
                    uint16_t *l_910 = nullptr;
                    uint16_t *l_911[5][6][1] = {{{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}};
                    char1 l_924 = make_char1((-1L));
                    int32_t l_936 = 0x21CEC5E4L;
                    union U3 ****l_951[6];
                    int32_t l_967 = 0xC4B46C8AL;
                    int32_t *l_968 = &l_789[3][1][2];
                    int32_t *l_969 = &l_909;
                    int32_t *l_970 = &l_794;
                    int32_t *l_971[8][6][5] = {{{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}, {{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}, {{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}, {{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}, {{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}, {{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}, {{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}, {{nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}, {nullptr, &l_909, nullptr, &l_782, &l_933}}};
                    int32_t l_973 = 0xEB5BBFC1L;
                    int i, j, k;
                    for (int i = 0; i < 6; i++)
                        l_951[i] = &p_3366->g_724[6];
                    if ((((++p_3366->g_605.x) | (*p_48)) <= (safe_sub_func_uint8_t_u_u(make_uchar3(p_3366->g_916.x, p_3366->g_916.x, p_3366->g_916.x).z, (safe_mod_func_int64_t_s_s(((nullptr != l_919) | (safe_sub_func_uint8_t_u_u((+255UL), (-1L)))), (safe_add_func_int8_t_s_s(((*l_880) ^= l_909), make_char2(l_924.x, l_924.x).y))))))))
                    { /* block id: 334 */
                        struct S2 ****l_926 = &p_3366->g_765;
                        __shared__ struct S2 ****l_927;
                        l_927 = nullptr;
                        int32_t ****l_930 = &p_3366->g_656[0];
                        int32_t l_932 = 0xD8001FA2L;
                        int32_t l_934 = 0x636F5849L;
                        uint16_t *l_941 = nullptr;
                        p_3366->g_928[9] = ((*l_926) = l_925);
                        (*l_853) |= (((p_49 |= (make_char2(l_929.y, l_929.y).y < (l_930 == l_930))) <= (--l_937)) && make_short4(p_3366->g_940.z, p_3366->g_940.z, p_3366->g_940.z, p_3366->g_940.z).w);
                        (*l_853) = (p_49 , (((nullptr == l_941) | (safe_sub_func_int32_t_s_s(((hip_const_2 && (-8L)) , (p_3366->g_68.f0 <= ((safe_div(((safe_add(make_uint4(0x7534A329L, 0xB6F1CD11L, 0x623CD00DL, 0x70E9D6FCL), make_uint4(0xE36F5B10L, (safe_rshift_func_int64_t_s_u((l_950 == l_951[2]), (l_933 = (l_952[1] ^ l_933)))), hip_const_4, 2UL)))), make_uint4(0x7E72257FL, 0x7E72257FL, 0x7E72257FL, 0x7E72257FL)))).w)), 0xD30E080BL))) <= (*l_854)));
                    }
                    else
                    { /* block id: 342 */
                        struct S2 ***l_963 = &p_3366->g_766;
                        struct S2 ****l_964 = &l_925;
                        l_967 = (safe_sub_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_rshift_func_uint32_t_u_s(((p_49 == ((make_uint4(4294967290UL, 1UL, 0xE7A75CE6L, ((make_int3(l_959.x, l_959.x, l_959.x).x | ((((p_3366->g_654[0] = ((*p_3366->g_833) , l_960)) == nullptr) > 1UL) == (safe_rshift_func_int32_t_s_u(((*l_853) = (l_963 != (l_807 = ((*l_964) = &p_3366->g_766)))), (l_936 = ((((make_int2(l_965.y, l_965.y) | make_int2(l_966.y, l_966.y))).y > p_49) < (l_935[6][0][5] = 0x36B7D3EB4A91FC6ELL))))))) , 4294967295UL)) ^ make_uint4(0x3682F6F9L, 0x3682F6F9L, 0x3682F6F9L, 0x3682F6F9L))).w) <= (*p_3366->g_341)), 25)), 1L)), (-8L)));
                    }
                    p_3366->g_974--;
                    --l_977[1];
                }
                else
                { /* block id: 353 */
                    __shared__ struct S1 ***l_981;
                    l_981 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ struct S1 ***l_982[5][4][10];
                    for (int i = 0; i < 5; i++)
                    {
                        for (int j = 0; j < 4; j++)
                        {
                            for (int k = 0; k < 10; k++)
                                l_982[i][j][k] = &l_980;
                        }
                    }
                    int i, j, k;
                    l_983[9][0][2] = l_980;
                    (*l_854) |= 0L;
                }
            }
        }
        else
        { /* block id: 397 */
            int8_t *l_1106 = nullptr;
            int8_t *l_1107 = nullptr;
            int8_t *l_1108 = nullptr;
            // attempting a hip shared for loop
            __shared__ int8_t *l_1109[7][2];
            for (int i = 0; i < 7; i++)
            {
                for (int j = 0; j < 2; j++)
                    l_1109[i][j] = &l_659;
            }
            struct S2 *l_1110 = &p_3366->g_178;
            uint16_t *l_1111 = &hip_const_10[1].f1;
            uint16_t *l_1112 = &hip_const_10[1].f1;
            uint16_t *l_1113 = &hip_const_10[1].f1;
            __shared__ uint16_t *l_1114;
            l_1114 = &hip_const_10[1].f1;
            uint16_t *l_1115 = nullptr;
            int32_t l_1116 = 0x241AA77DL;
            __shared__ int3 l_1117;
            l_1117 = make_int3(0x8C1CDA81L, 5L, 0x8C1CDA81L);
            int i, j;
            (*l_1110) = func_59((**l_980), ((safe_lshift_func_int8_t_s_u((+(l_931 = p_49)), 2)) , &hip_const_11[6][2]), p_3366);
            l_1117.y = ((l_1116 = p_49) >= 0UL);
            l_1118 = &l_1102;
        }
    }
lbl_1258:
    for (l_816 = 0; (l_816 < 19); l_816++)
    { /* block id: 407 */
        return (*l_66);
    }
    for (p_3366->g_886 = 1; (p_3366->g_886 >= 0); p_3366->g_886 -= 1)
    { /* block id: 412 */
        __shared__ int32_t l_1121;
        l_1121 = 0xE851D976L;
        int32_t l_1122 = 0x9361E3C4L;
        int3 l_1126 = make_int3(0x9C67C850L, 0x51F8EE92L, 0x9C67C850L);
        __shared__ ulong2 l_1156;
        l_1156 = make_ulong2(3UL, 0x67ABBC46CB3E191CLL);
        uchar2 l_1165 = make_uchar2(0x00L, 0x47L);
        uint16_t l_1183 = 0UL;
        int32_t l_1184 = (-1L);
        int32_t l_1188 = (-1L);
        int32_t l_1192 = 0L;
        __shared__ int32_t l_1195;
        l_1195 = 0x24857291L;
        int32_t l_1196 = 0xABF3345EL;
        struct S1 l_1236 = {0xCC272986763FC820LL,-55,7245,252,390,16282};
        int32_t *l_1238 = nullptr;
        union U3 *l_1251 = &hip_const_6;
        uint64_t l_1266 = 0xFB9EB749781D787BLL;
        uint64_t l_1305 = 1UL;
        int3 l_1348 = make_int3(0x1FDD1CC8L, 0x276D0EC7L, 0x1FDD1CC8L);
        int32_t l_1349 = 0x5D58CB6FL;
        __shared__ ushort4 l_1350;
        l_1350 = make_ushort4(0xA287L, 0xAFF2L, 0xA287L, 0xAFF2L);
        int32_t **l_1353 = &p_3366->g_111;
        int32_t *l_1354 = nullptr;
        struct S2 l_1355 = {4294967295UL,1L,-83,{0xC56B59662E8D6911LL,70,-6987,160,1854,14079},-13,13,330,46,6033};
        struct S2 *l_1356 = &p_3366->g_178;
        uint32_t *l_1358[4][10] = {{&p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0}, {&p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0}, {&p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0}, {&p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0, &p_3366->g_178.f0, &hip_const_5.f0, &p_3366->g_178.f0}};
        uint32_t **l_1359 = nullptr;
        uint32_t **l_1360 = &l_197[5];
        int1 l_1361 = make_int1(0xA8CD08BBL);
        char3 l_1398 = make_char3(0x67L, 0x79L, 0x67L);
        int8_t l_1415 = 0L;
        ulong2 l_1470 = make_ulong2(0xAD06CD280FA7E882LL, 18446744073709551609UL);
        uint32_t l_1515 = 0UL;
        __shared__ uint16_t **l_1559;
        l_1559 = &p_3366->g_341;
        uint8_t *l_1574 = &p_3366->g_1047;
        ushort4 l_1620 = make_ushort4(0UL, 0x5085L, 0UL, 0x5085L);
        uint64_t l_1695 = 0x30C202EAB385FAE1LL;
        int32_t l_1701 = 0xA2B7F3A4L;
        __shared__ union U3 ***l_1719;
        l_1719 = nullptr;
        int16_t l_1736[5];
        uint16_t l_1737 = 65528UL;
        uint64_t l_1741 = 7UL;
        struct S1 ***l_1744 = &p_3366->g_1602;
        int8_t l_1748 = 0x29L;
        struct S1 *l_1817 = nullptr;
        int i, j;
        for (int i = 0; i < 5; i++)
            l_1736[i] = 0x4242L;
        l_1122 &= ((1L == (~p_49)) < l_1121);
        for (l_1042 = 0; (l_1042 <= 8); l_1042 += 1)
        { /* block id: 416 */
            int64_t l_1139 = 4L;
            uint64_t l_1179 = 7UL;
            int32_t l_1191 = 0xAFBDBC59L;
            ulong2 l_1203 = make_ulong2(0UL, 0x7F621684894AE66ALL);
            union U3 *l_1250 = &hip_const_6;
            long4 l_1257 = make_long4((-4L), 4L, (-4L), 4L);
            int32_t l_1299 = 1L;
            int32_t l_1303 = 0xC64230C3L;
            struct S0 l_1333 = {4910,1UL,-1L,18446744073709551607UL,-16913};
            __shared__ int4 l_1340;
            l_1340 = make_int4(0x75415997L, (-1L), 0x75415997L, (-1L));
            __shared__ uint32_t l_1342;
            l_1342 = 0xCCA67E5AL;
            int i;
            if (l_1123)
            { /* block id: 417 */
                __shared__ int32_t l_1135;
                l_1135 = 0x7DFF2D63L;
                int32_t l_1189 = (-2L);
                int32_t l_1190 = 0L;
                int32_t l_1193 = 0x8A5D292BL;
                int32_t l_1194 = (-9L);
                __shared__ char4 l_1205;
                l_1205 = make_char4((-6L), 0xA9L, (-6L), 0xA9L);
                uchar3 l_1211 = make_uchar3(254UL, 0xE7L, 254UL);
                int i;
                l_1135 ^= ((((make_int3(0x40856A5AL, 2L, (safe_add_func_uint32_t_u_u((make_int3(l_1126.x, l_1126.x, l_1126.x).z , (safe_mul_func_int32_t_s_s(((l_197[(p_3366->g_886 + 4)] == ((safe_lshift_func_uint8_t_u_u((safe_add_func_int32_t_s_s(p_49, (safe_rshift_func_uint16_t_u_u((*p_3366->g_341), 15)))), hip_const_5.f6)) , &hip_const_4)) , 1L), p_49))), ((*p_3366->g_833) , p_49)))) ^ make_int3(1L, 1L, 1L))) | make_int3((-1L), (-1L), (-1L)))).x;
                if (make_int2(0x382CAAB4L, p_49).y)
                { /* block id: 419 */
                    ulong2 l_1152 = make_ulong2(0UL, 18446744073709551615UL);
                    int32_t l_1176[7][3];
                    __shared__ uint64_t *l_1177;
                    l_1177 = &hip_const_10[1].f0;
                    uint64_t *l_1178[3][1][8] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                    int32_t *l_1180 = &l_696;
                    long2 l_1227 = make_long2((-1L), 0x7ADFAFA863EB8934LL);
                    int i, j, k;
                    for (int i = 0; i < 7; i++)
                    {
                        for (int j = 0; j < 3; j++)
                            l_1176[i][j] = 4L;
                    }
                    for (l_793 = 1; (l_793 >= 0); l_793 -= 1)
                    { /* block id: 422 */
                        return l_1136;
                    }
                    if (((safe_sub(make_int4(l_1139, (-4L), (-1L), ((*l_1180) |= ((*p_3366->g_183) >= ((safe_sub_func_uint16_t_u_u((((((((((0xCCL >= ((safe_div_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((((safe_mod_func_uint64_t_u_u(((safe_add_func_uint8_t_u_u((((((safe_lshift(make_ulong1(l_1152.y), make_ulong1(p_3366->g_1153.x)))) | ((safe_div(make_ulong1(l_1156.x), ((safe_mul(((safe_lshift(make_ulong1(0x31656A5B69295CAFLL), make_ulong1(64)))), make_ulong1(p_49))))))))).x || (p_49 = (safe_lshift_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((make_uchar2(l_1165.y, l_1165.y).y , (((p_49 , (safe_div_func_uint32_t_u_u(((safe_sub_func_int16_t_s_s((l_1176[2][2] = (safe_lshift_func_uint32_t_u_u((l_1139 != p_49), (safe_rshift_func_uint32_t_u_u(4294967292UL, (safe_rshift_func_uint32_t_u_s((((hip_const_5.f8 == 0x04A672D7L) | p_49) < p_49), 25))))))), 0xD013L)) <= p_3366->g_68.f4), l_1152.x))) >= l_1152.y) , p_49)), l_1139)), p_3366->g_279.y)))), 1UL)) ^ l_1122), 0xE0F0D75D2EE13316LL)) >= (*p_48)) , p_49), l_1139)), 4294967288UL)) >= l_1152.y)) > 0L) , (*p_3366->g_183)) != l_1152.y) | l_1126.y) && 0x3B3BL) > (*p_3366->g_183)) , l_1179) >= l_1152.y), l_1152.y)) <= l_1165.x)))), make_int4((-1L), (-1L), (-1L), (-1L))))).z)
                    { /* block id: 428 */
                        int32_t l_1185 = (-4L);
                        __shared__ int32_t *l_1186;
                        l_1186 = &l_1184;
                        int32_t *l_1187[10] = {nullptr, nullptr, &l_1176[3][1], &l_1176[3][1], nullptr, nullptr, nullptr, &l_1176[3][1], &l_1176[3][1], nullptr};
                        uint16_t *l_1200[4][5] = {{nullptr, &l_1197, &hip_const_9.f1, nullptr, nullptr}, {nullptr, &l_1197, &hip_const_9.f1, nullptr, nullptr}, {nullptr, &l_1197, &hip_const_9.f1, nullptr, nullptr}, {nullptr, &l_1197, &hip_const_9.f1, nullptr, nullptr}};
                        ushort3 l_1204 = make_ushort3(65533UL, 65530UL, 65533UL);
                        int i, j;
                        l_1122 = (safe_div_func_int32_t_s_s(l_1183, 0x469F430AL));
                        --l_1197;
                        if ((*l_1180))
                            break;
                        l_1184 = (l_1192 = ((p_3366->g_596.x = p_49) > (255UL > (make_uint4(0x53FF7DEFL, (safe_add_func_uint64_t_u_u(make_ulong3(l_1203.x, l_1203.x, l_1203.x).y, (((p_49 ^ ((((l_1189 = (p_3366->g_149.z = (+make_ushort4(l_1204.x, l_1204.x, l_1204.x, l_1204.x).x))) ^ l_1191) ^ 3UL) , ((make_char2(0L, 0x79L) & make_char2(l_1205.z, l_1205.z))).y)) | ((l_1192 , make_ulong1(1UL).x) >= p_49)) ^ (l_1194 = p_3366->g_623.z)))), 0xC44EDA72L, (p_49 > p_3366->g_754.x)).x >= 0x82EEACDDL))));
                    }
                    else
                    { /* block id: 438 */
                        int8_t l_1208 = 0x5EL;
                        int32_t l_1237 = 1L;
                        l_1237 |= ((safe_rshift_func_uint32_t_u_s((func_51((*l_66), l_1208, (((safe_sub_func_uint8_t_u_u(make_uchar1(l_1211.y).x, (((safe_sub_func_uint32_t_u_u((65535UL & (safe_sub_func_int64_t_s_s(((safe_unary_minus(((safe_rshift(make_long3((p_49 , ((safe_lshift(((safe_lshift(make_long2(p_3366->g_1222.x, p_3366->g_1222.x), make_long2(64, 64)))), make_long2(64, 64)))).y), (-6L), 0xAD28B6134DE2F635LL), make_long3(64, 64, 64))))))).y, (p_3366->g_149.z , ((((safe_div_func_uint64_t_u_u((safe_add_func_int64_t_s_s(make_long2(l_1227.y, l_1227.y).y, (safe_lshift_func_int8_t_s_u(0xB6L, 6)))), 0x3BD19CA15B4D2DB1LL)) > (safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(p_49, (safe_rshift_func_uint16_t_u_s((((l_1236 , (*p_3366->g_183)) || 0x9DC4L) & l_1208), (*p_3366->g_183))))), 8))) && 254UL) > 9UL))))), hip_const_2)) < 0UL) >= p_49))) , 9L) | 0x0E78307EL), p_3366) , p_3366->g_74.y), p_49)) > p_3366->g_940.x);
                    }
                    l_1135 &= p_49;
                }
                else
                { /* block id: 442 */
                    __shared__ int32_t *l_1239;
                    l_1239 = nullptr;
                    int32_t *l_1240 = nullptr;
                    int32_t *l_1241 = nullptr;
                    __shared__ int32_t *l_1242;
                    l_1242 = &l_1192;
                    int32_t *l_1243[5][8];
                    uint64_t l_1244 = 0x5A6209AD8F772300LL;
                    int i, j;
                    for (int i = 0; i < 5; i++)
                    {
                        for (int j = 0; j < 8; j++)
                            l_1243[i][j] = &l_1190;
                    }
                    l_1238 = &l_1196;
                    --l_1244;
                    for (l_793 = 1; (l_793 <= 8); l_793 += 1)
                    { /* block id: 447 */
                        uint64_t l_1247 = 0x3C12FBFC288BF3F7LL;
                        l_1247--;
                    }
                }
            }
            else
            { /* block id: 451 */
                __shared__ int32_t ***l_1275;
                l_1275 = &p_3366->g_657;
                union U3 **l_1276 = &p_3366->g_445;
                int32_t l_1286 = 6L;
                int64_t l_1295 = (-2L);
                int32_t l_1298 = 0x8BC60FD8L;
                int32_t l_1300 = (-4L);
                int32_t l_1302 = 0x6388789AL;
                int16_t l_1327 = 6L;
                struct S0 l_1336 = {23505,0xC741L,0xCF375065L,0xB09F651278BE8294LL,28660};
                for (l_659 = 0; (l_659 <= 1); l_659 += 1)
                { /* block id: 454 */
                    long2 l_1256 = make_long2(0x9ABAF8C924F56612LL, 0L);
                    int32_t l_1263 = 0x51BE1925L;
                    int32_t l_1265 = 0x9E61483AL;
                    int64_t l_1294 = 8L;
                    int32_t l_1296 = 0x1E388DCDL;
                    int32_t l_1297 = (-1L);
                    int32_t l_1301 = 0x79A5EA7AL;
                    __shared__ int32_t l_1304;
                    l_1304 = 0xF4D17FBEL;
                    struct S1 l_1312 = {-1L,13,-5055,413,-1773,12903};
                    __shared__ union U3 ****l_1314;
                    l_1314 = &p_3366->g_724[9];
                    int32_t *l_1318 = nullptr;
                    int32_t *l_1319 = &l_1184;
                    __shared__ int32_t *l_1320;
                    l_1320 = nullptr;
                    int32_t *l_1321 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ int32_t *l_1322[3];
                    for (int i = 0; i < 3; i++)
                        l_1322[i] = &l_1301;
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_1322[i] = &l_1301;
                    l_1251 = l_1250;
                    if ((safe_sub_func_int64_t_s_s(((safe_mod(make_long3(l_1256.x, l_1256.x, l_1256.x), make_long3(l_1257.y, l_1257.y, l_1257.y)))).z, p_3366->g_1004.z)))
                    { /* block id: 456 */
                        int32_t *l_1259 = &l_191;
                        __shared__ int32_t *l_1260;
                        l_1260 = &l_1122;
                        int32_t *l_1261 = &l_1184;
                        int32_t *l_1262[7] = {nullptr, &l_699, nullptr, &l_699, nullptr, &l_699, nullptr};
                        __shared__ int8_t *l_1279;
                        l_1279 = &p_3366->g_23;
                        int i;
                        if (p_3366->g_178.f3.f5)
                            goto lbl_1258;
                        ++l_1266;
                        (*p_3366->g_657) = ((((safe_rshift_func_int8_t_s_s((-1L), ((*l_1279) = (safe_lshift_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u((&l_1251 != (*l_1062)), (((nullptr == l_1275) , &l_1251) == l_1276))), (safe_lshift_func_uint64_t_u_s(6UL, 17))))))) == (0x55L == (*l_1260))) | 0x807AE6A3A33DA0B4LL) , nullptr);
                        if ((*l_1259))
                            break;
                    }
                    else
                    { /* block id: 462 */
                        int32_t *l_1283 = nullptr;
                        __shared__ int32_t *l_1284;
                        l_1284 = &l_1122;
                        int32_t *l_1285 = &l_1265;
                        __shared__ int32_t *l_1287;
                        l_1287 = nullptr;
                        int32_t *l_1288 = nullptr;
                        __shared__ int32_t *l_1289;
                        l_1289 = &l_1263;
                        int32_t *l_1290 = &l_1188;
                        int32_t *l_1291 = nullptr;
                        int32_t *l_1292 = &l_1122;
                        int32_t *l_1293[9] = {&l_1122, &p_3366->g_1264, &l_1122, &p_3366->g_1264, &l_1122, &p_3366->g_1264, &l_1122, &p_3366->g_1264, &l_1122};
                        int i;
                        --l_1280;
                        l_1305--;
                    }
                    for (l_1192 = 0; (l_1192 <= 1); l_1192 += 1)
                    { /* block id: 468 */
                        union U3 ****l_1313 = &p_3366->g_724[9];
                        uint16_t *l_1315 = &hip_const_6.f1;
                        uint16_t *l_1316 = nullptr;
                        uint16_t *l_1317 = &hip_const_10[1].f1;
                        l_1303 ^= (p_49 < (~((l_1301 ^= (((safe_div(make_ushort4(0UL, ((p_3366->g_149.x = (safe_rshift_func_int16_t_s_u((+(l_1312 , ((&p_3366->g_725 != &p_3366->g_725) == (-1L)))), (hip_const_2 || (l_1313 == l_1314))))) || (*p_3366->g_183)), 0x322DL, 65535UL), make_ushort4(65535UL, 65535UL, 65535UL, 65535UL)))).z ^ 0xCF85L)) > p_49)));
                        l_1191 = l_1312.f1;
                    }
                    --l_1323;
                    for (l_1286 = 0; (l_1286 <= 1); l_1286 += 1)
                    { /* block id: 477 */
                        if (l_816)
                            goto lbl_1326;
                    }
                }
                if ((p_49 >= l_1327))
                { /* block id: 481 */
                    uint16_t *l_1328 = nullptr;
                    int32_t *l_1330 = &l_1302;
                    (*l_1330) |= ((l_1329 = l_1328) != p_3366->g_344);
                    if ((*l_1330))
                        break;
                    for (l_1179 = 0; (l_1179 <= 1); l_1179 += 1)
                    { /* block id: 487 */
                        return (*l_66);
                    }
                    (*l_1330) ^= ((safe_lshift_func_uint64_t_u_u(((l_1333 , &p_3366->g_928[9]) != &p_3366->g_928[6]), 29)) != (safe_rshift_func_uint64_t_u_u(make_ulong1(0x9B17C5A66D76AF6BLL).x, p_49)));
                }
                else
                { /* block id: 491 */
                    int8_t l_1339 = 0x45L;
                    int3 l_1341 = make_int3(9L, (-8L), 9L);
                    int i;
                    (*p_3366->g_657) = nullptr;
                    (*p_3366->g_657) = &l_1122;
                    for (p_3366->g_178.f3.f0 = 1; (p_3366->g_178.f3.f0 >= 0); p_3366->g_178.f3.f0 -= 1)
                    { /* block id: 496 */
                        int32_t *l_1337 = &l_1192;
                        int32_t *l_1338[8][2][3] = {{{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}, {{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}, {{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}, {{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}, {{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}, {{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}, {{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}, {{&l_1300, nullptr, &l_1302}, {&l_1300, nullptr, &l_1302}}};
                        int i, j, k;
                        l_1336 = (*l_700);
                        --l_1342;
                    }
                    (****p_3366->g_655) = ((safe_div(make_int4(l_1347.x, l_1347.x, l_1347.x, l_1347.x), make_int4(l_1348.z, l_1348.z, l_1348.z, l_1348.z)))).x;
                }
                if (p_49)
                    continue;
            }
            if (l_1349)
                break;
            for (l_1280 = 0; (l_1280 <= 8); l_1280 += 1)
            { /* block id: 507 */
                for (l_1196 = 8; (l_1196 >= 0); l_1196 -= 1)
                { /* block id: 510 */
                    for (l_699 = 0; (l_699 <= 8); l_699 += 1)
                    { /* block id: 513 */
                        int i, j, k;
                        p_3366->g_767[(l_1196 + 1)][l_699][p_3366->g_886] = (make_ushort1(make_ushort1(l_1350.z).x).x , nullptr);
                        (*p_3366->g_657) = nullptr;
                    }
                }
            }
            for (l_1303 = 3; (l_1303 <= 8); l_1303 += 1)
            { /* block id: 521 */
                (*p_3366->g_308) = (**l_701);
            }
        }
    }
    return (*l_66);
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_23 p_3366->g_178.f3 p_3366->g_401 p_3366->g_555 p_3366->g_558 hip_const_5.f1 p_3366->g_560 p_3366->g_561 p_3366->g_178.f8 hip_const_1.f6 p_3366->g_178.f2 p_3366->g_100 hip_const_1.f7 p_3366->g_178.f5 p_3366->g_178.f0 p_3366->g_68.f3 p_3366->g_178.f4 p_3366->g_596 p_3366->g_605 p_3366->g_615 p_3366->g_623 p_3366->g_183 hip_const_11 p_3366->g_146 p_3366->g_638 p_3366->g_654 hip_const_5.f3
 * writes: p_3366->g_23 p_3366->g_401 p_3366->g_68.f3 p_3366->g_178.f5 p_3366->g_178.f0 p_3366->g_638 p_3366->g_111
 */
__device__ struct S1  func_51(uint64_t * p_52, int64_t  p_53, int16_t  p_54, struct S4 * p_3366)
{ /* block id: 189 */
    // attempting a hip shared for loop
    __shared__ int32_t l_526[3];
    for (int i = 0; i < 3; i++)
        l_526[i] = 1L;
    union U3 l_527 = {9UL};
    struct S1 l_535 = {-9L,-74,3505,-444,-266,5435};
    // attempting a hip shared for loop
    __shared__ int32_t l_544[5];
    for (int i = 0; i < 5; i++)
        l_544[i] = 1L;
    int64_t l_545 = (-10L);
    int4 l_556 = make_int4(0xED52A008L, 0x8A1BBAA0L, 0xED52A008L, 0x8A1BBAA0L);
    int64_t l_591 = (-2L);
    __shared__ uint3 l_608;
    l_608 = make_uint3(4294967295UL, 4294967293UL, 4294967295UL);
    uint64_t ***l_612 = &p_3366->g_77;
    __shared__ int64_t l_618;
    l_618 = 0L;
    __shared__ int32_t *****l_658;
    l_658 = nullptr;
    int i;
    for (int i = 0; i < 3; i++)
        l_526[i] = 1L;
    for (int i = 0; i < 5; i++)
        l_544[i] = 1L;
    for (p_3366->g_23 = 2; (p_3366->g_23 >= 0); p_3366->g_23 -= 1)
    { /* block id: 192 */
        struct S1 l_534[10] = {{0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}, {0x841528CBFB14CB8FLL,10,-4855,175,1336,9676}};
        uint32_t l_536 = 18446744073709551615UL;
        uint16_t *l_543[5] = {&hip_const_9.f1, nullptr, &hip_const_9.f1, nullptr, &hip_const_9.f1};
        int32_t *l_546 = nullptr;
        uint16_t l_547[7][10] = {{65535UL, 0xC3D6L, 4UL, 4UL, 0xC3D6L, 65535UL, 0x5362L, 3UL, 0xF231L, 0x03B1L}, {65535UL, 0xC3D6L, 4UL, 4UL, 0xC3D6L, 65535UL, 0x5362L, 3UL, 0xF231L, 0x03B1L}, {65535UL, 0xC3D6L, 4UL, 4UL, 0xC3D6L, 65535UL, 0x5362L, 3UL, 0xF231L, 0x03B1L}, {65535UL, 0xC3D6L, 4UL, 4UL, 0xC3D6L, 65535UL, 0x5362L, 3UL, 0xF231L, 0x03B1L}, {65535UL, 0xC3D6L, 4UL, 4UL, 0xC3D6L, 65535UL, 0x5362L, 3UL, 0xF231L, 0x03B1L}, {65535UL, 0xC3D6L, 4UL, 4UL, 0xC3D6L, 65535UL, 0x5362L, 3UL, 0xF231L, 0x03B1L}, {65535UL, 0xC3D6L, 4UL, 4UL, 0xC3D6L, 65535UL, 0x5362L, 3UL, 0xF231L, 0x03B1L}};
        __shared__ int16_t **l_552;
        l_552 = &p_3366->g_183;
        __shared__ int32_t *l_569;
        l_569 = nullptr;
        short3 l_601 = make_short3(0xBDB1L, (-1L), 0xBDB1L);
        int32_t l_631 = 0xE3E36D0BL;
        struct S2 *l_650 = &p_3366->g_178;
        struct S2 **l_649 = &l_650;
        struct S2 ***l_648 = &l_649;
        int i, j;
        if ((l_527 , (l_547[3][9] = (!(safe_rshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u((safe_mod_func_int8_t_s_s(((p_3366->g_178.f3 , (l_534[3] , l_535)) , l_536), (l_534[3].f1 && (safe_add_func_int64_t_s_s(p_54, ((make_ulong2(0x08D8F6926B6EAA8FLL, (safe_add_func_uint16_t_u_u(l_526[0], (l_544[0] = (safe_sub_func_int8_t_s_s(l_535.f0, 0x19L)))))) ^ make_ulong2(0x83D849FAC22516CFLL, 0x83D849FAC22516CFLL))).x))))), p_3366->g_178.f3.f3)), l_545))))))
        { /* block id: 195 */
            __shared__ uint3 l_550;
            l_550 = make_uint3(4294967295UL, 4294967295UL, 4294967295UL);
            int16_t **l_551[4][1][5] = {{{&p_3366->g_183, &p_3366->g_183, nullptr, &p_3366->g_183, &p_3366->g_183}}, {{&p_3366->g_183, &p_3366->g_183, nullptr, &p_3366->g_183, &p_3366->g_183}}, {{&p_3366->g_183, &p_3366->g_183, nullptr, &p_3366->g_183, &p_3366->g_183}}, {{&p_3366->g_183, &p_3366->g_183, nullptr, &p_3366->g_183, &p_3366->g_183}}};
            struct S2 l_557 = {4294967291UL,0x22F43147L,330,{0xEEFEBF4ECA4C2347LL,-120,5242,-423,-405,13658},-13,8,137,-37,7618};
            int2 l_559 = make_int2(0xC6BFD13FL, 0xAEFCFACEL);
            ulong3 l_586 = make_ulong3(0x1E1FE0B28D5FC346LL, 8UL, 0x1E1FE0B28D5FC346LL);
            short2 l_624 = make_short2(0x11DCL, (-1L));
            int16_t l_630 = 0x9F01L;
            int i, j, k;
            if ((make_uint4(l_550.z, l_550.z, l_550.z, l_550.z).y != (l_551[2][0][2] != (l_535 , l_552))))
            { /* block id: 196 */
                uint32_t l_563 = 4UL;
                // attempting a hip shared for loop
                __shared__ int32_t *l_570[4][10][6];
                for (int i = 0; i < 4; i++)
                {
                    for (int j = 0; j < 10; j++)
                    {
                        for (int k = 0; k < 6; k++)
                            l_570[i][j][k] = nullptr;
                    }
                }
                __shared__ struct S2 l_577;
                l_577 = {0x64DB37CCL,-1L,211,{-1L,-117,4866,-225,-1743,3703},4,17,169,-66,26637};
                int2 l_613 = make_int2(4L, 0xF8F5B9E0L);
                int4 l_614 = make_int4(1L, (-1L), 1L, (-1L));
                short3 l_622 = make_short3((-1L), 0x0770L, (-1L));
                uint32_t l_632 = 0xC5C0EC69L;
                uint8_t l_635 = 0xE7L;
                int i, j, k;
                for (p_3366->g_401 = 0; (p_3366->g_401 <= 2); p_3366->g_401 += 1)
                { /* block id: 199 */
                    int32_t **l_568[7][2][6] = {{{&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}, {&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}}, {{&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}, {&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}}, {{&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}, {&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}}, {{&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}, {&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}}, {{&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}, {&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}}, {{&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}, {&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}}, {{&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}, {&p_3366->g_111, nullptr, nullptr, &l_546, &p_3366->g_111, &p_3366->g_111}}};
                    int32_t ***l_567 = &l_568[1][0][5];
                    uint64_t *l_589 = &hip_const_6.f0;
                    uint64_t *l_590 = &p_3366->g_68.f3;
                    int i, j, k;
                    if (((make_int4(1L, ((safe_lshift(((make_int2(p_3366->g_555.x, p_3366->g_555.x) ^ ((make_int2(l_556.y, l_556.y) & make_int2(((l_557 , 4294967295UL) == ((make_int1(p_3366->g_558.x) ^ make_int1(make_int4(l_559.y, l_559.y, l_559.y, l_559.y).z))).x), hip_const_5.f1))))), make_int2(32, 32)))).y, (-7L), 0x7EBE4CE7L) ^ ((make_int4(p_3366->g_560.y, p_3366->g_560.y, p_3366->g_560.y, p_3366->g_560.y) | make_int4(p_3366->g_561.x, p_3366->g_561.x, p_3366->g_561.x, p_3366->g_561.x))))).y)
                    { /* block id: 200 */
                        int32_t *l_562[7][2];
                        int i, j;
                        for (int i = 0; i < 7; i++)
                        {
                            for (int j = 0; j < 2; j++)
                                l_562[i][j] = nullptr;
                        }
                        l_563 ^= 0x3CD9EB86L;
                    }
                    else
                    { /* block id: 202 */
                        int32_t **l_565[8][6] = {{&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}, {&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}, {&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}, {&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}, {&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}, {&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}, {&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}, {&p_3366->g_111, &p_3366->g_111, &l_546, &p_3366->g_111, &p_3366->g_111, &l_546}};
                        int32_t ***l_564[8] = {&l_565[0][4], &l_565[2][5], &l_565[0][4], &l_565[2][5], &l_565[0][4], &l_565[2][5], &l_565[0][4], &l_565[2][5]};
                        int32_t ****l_566[3][9][9] = {{{&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}}, {{&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}}, {{&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}, {&l_564[7], &l_564[6], &l_564[7], &l_564[6], &l_564[6], nullptr, &l_564[7], &l_564[6], &l_564[6]}}};
                        union U3 *l_571 = nullptr;
                        union U3 **l_572 = &l_571;
                        int i, j, k;
                        l_567 = l_564[6];
                        l_570[1][8][5] = l_569;
                        if (p_53)
                            break;
                        (*l_572) = l_571;
                    }
                    p_3366->g_178.f5 &= (safe_lshift_func_int64_t_s_u((((safe_mul_func_uint64_t_u_u(make_ulong4(0UL, (l_577 , (safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(l_544[0], 11)), (p_3366->g_178.f8 && (hip_const_1.f6 | (l_557.f5 == (p_53 , p_3366->g_178.f2))))))), (safe_lshift_func_int8_t_s_s((safe_add_func_int64_t_s_s(l_586.x, ((*l_590) = (safe_sub_func_int32_t_s_s(p_53, 0x497B0EEEL))))), p_53)), l_591).x, p_3366->g_100.w)) ^ p_53) != hip_const_1.f7), 14));
                }
                for (p_3366->g_178.f0 = 0; (p_3366->g_178.f0 <= 2); p_3366->g_178.f0 += 1)
                { /* block id: 213 */
                    uint32_t l_592 = 18446744073709551615UL;
                    int32_t l_602[3];
                    uint64_t ***l_611 = &p_3366->g_77;
                    __shared__ short3 l_619;
                    l_619 = make_short3(0x89B2L, 8L, 0x89B2L);
                    __shared__ int32_t l_629;
                    l_629 = 2L;
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_602[i] = 1L;
                    l_556.z = p_53;
                    if (p_54)
                        break;
                    for (l_545 = 0; (l_545 >= 0); l_545 -= 1)
                    { /* block id: 218 */
                        ++l_592;
                        return l_535;
                    }
                    for (p_3366->g_68.f3 = 0; (p_3366->g_68.f3 <= 2); p_3366->g_68.f3 += 1)
                    { /* block id: 224 */
                        struct S1 l_595[9][3] = {{{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}, {{0xBC94C4C1CB80065ALL,-147,-748,363,-1679,8663}, {0x427E97F1D509660ELL,154,-566,-3,1754,7170}, {0x96954EDE08386260LL,-154,-4138,-38,-1905,12025}}};
                        int i, j;
                        if (l_526[p_3366->g_23])
                            break;
                        l_556.x |= (l_629 = (((((make_ulong4(18446744073709551615UL, 0x9C431083C7D2F99DLL, 0UL, (p_3366->g_178.f4 < ((l_595[0][2] , (make_ushort1(p_3366->g_596.x).x || ((((safe_lshift_func_uint16_t_u_u((((((safe_add(make_short4(l_601.x, l_601.x, l_601.x, l_601.x), ((make_short4((l_602[1] = 0x0D4EL), l_595[0][2].f0, 0x3E2AL, (safe_mod_func_uint16_t_u_u(make_ushort2(p_3366->g_605.x, p_3366->g_605.x).x, (safe_rshift_func_uint32_t_u_u(make_uint1(l_608.x).x, ((l_557.f8 = (0xF0587122C8DAB944LL >= (safe_div_func_int32_t_s_s(((l_611 != l_612) & ((make_int3(l_613.x, l_613.x, l_613.x) ^ make_int3(l_614.x, l_614.x, l_614.x))).x), make_uint1(p_3366->g_615.w).x)))) & (safe_lshift_func_uint8_t_u_s(l_618, 2)))))))) | make_short4(l_619.y, l_619.y, l_619.y, l_619.y)))))) ^ ((safe_div(make_short4(l_622.z, l_622.z, l_622.z, l_622.z), ((make_short4(p_3366->g_623.x, p_3366->g_623.x, p_3366->g_623.x, p_3366->g_623.x) ^ make_short4(l_624.y, l_624.y, l_624.y, l_624.y)))))))).x < (safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s(p_54, p_53)), (*p_3366->g_183)))), l_619.y)) | p_53) >= 1UL) == p_3366->g_100.y))) , 7UL))) | make_ulong4(0x688848BB249399F6LL, 0x688848BB249399F6LL, 0x688848BB249399F6LL, 0x688848BB249399F6LL))).w || p_53) > (-1L)) < p_3366->g_146.y));
                        l_632++;
                        --l_635;
                    }
                    for (l_630 = 0; (l_630 <= 2); l_630 += 1)
                    { /* block id: 235 */
                        p_3366->g_638.y++;
                    }
                }
            }
            else
            { /* block id: 239 */
                // attempting a hip shared for loop
                __shared__ struct S0 ***l_641[10];
                for (int i = 0; i < 10; i++)
                    l_641[i] = &p_3366->g_308;
                // attempting a hip shared for loop
                __shared__ struct S0 ***l_643[5];
                for (int i = 0; i < 5; i++)
                    l_643[i] = &p_3366->g_308;
                struct S0 ****l_642 = &l_643[3];
                struct S2 *l_646[10][10] = {{&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}, {&hip_const_5, &hip_const_5, &hip_const_5, &p_3366->g_178, &p_3366->g_178, &l_557, &l_557, &hip_const_5, &l_557, &hip_const_5}};
                __shared__ struct S2 **l_645;
                l_645 = &l_646[9][0];
                struct S2 ***l_644 = &l_645;
                __shared__ struct S2 ****l_647;
                l_647 = nullptr;
                int i, j;
                (*l_642) = l_641[5];
                l_648 = l_644;
            }
        }
        else
        { /* block id: 243 */
            for (l_591 = 2; (l_591 >= 0); l_591 -= 1)
            { /* block id: 246 */
                __shared__ int32_t **l_651;
                l_651 = &p_3366->g_111;
                struct S1 *l_652 = &hip_const_5.f3;
                struct S1 *l_653 = &l_534[7];
                (*l_651) = &l_631;
                (*l_653) = l_535;
            }
        }
    }
    l_658 = p_3366->g_654[0];
    return hip_const_5.f3;
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_111 p_3366->g_65 hip_const_9 hip_const_1 p_3366->g_100 hip_const_5 p_3366->g_68.f3 p_3366->g_183 hip_const_11 p_3366->g_110 hip_const_2 p_3366->g_146 p_3366->g_248 p_3366->g_249 p_3366->g_178.f3.f0 p_3366->g_279 p_3366->g_280 p_3366->g_283 p_3366->g_208 p_3366->g_23 p_3366->g_308 hip_const_10 p_3366->g_178.f1 p_3366->g_178.f6 p_3366->g_178.f8 hip_const_4 p_3366->g_341 p_3366->g_364 p_3366->g_367 p_3366->g_178.f0 p_3366->g_68.f1 p_3366->g_507
 * writes: p_3366->g_111 p_3366->g_68 p_3366->g_77 p_3366->g_178 p_3366->g_100 p_3366->g_208 p_3366->g_146 p_3366->g_23 p_3366->g_65 p_3366->g_110 p_3366->g_308 p_3366->g_248 p_3366->g_341 p_3366->g_344 p_3366->g_280 p_3366->g_309 p_3366->g_410 p_3366->g_445
 */
__device__ uint64_t * func_55(uint32_t  p_56, struct S4 * p_3366)
{ /* block id: 48 */
    int32_t *l_199 = nullptr;
    int32_t **l_200 = nullptr;
    int32_t **l_201 = &p_3366->g_111;
    __shared__ uint64_t **l_202;
    l_202 = &p_3366->g_65;
    struct S0 l_203 = {16936,9UL,0xD0839F4DL,0x4978F3150E26671CLL,15761};
    __shared__ int32_t l_255;
    l_255 = (-2L);
    // attempting a hip shared for loop
    __shared__ int32_t l_256[6];
    for (int i = 0; i < 6; i++)
        l_256[i] = 0xCD4982FDL;
    // attempting a hip shared for loop
    __shared__ int8_t l_258[1][8][9];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            for (int k = 0; k < 9; k++)
                l_258[i][j][k] = 0x34L;
        }
    }
    int32_t l_287 = 0xC9077AF8L;
    __shared__ ulong2 l_326;
    l_326 = make_ulong2(0xB15D15D4A3BA4B14LL, 18446744073709551615UL);
    __shared__ long2 l_338;
    l_338 = make_long2((-1L), 0L);
    __shared__ uint16_t *l_343;
    l_343 = &hip_const_9.f1;
    union U3 *l_346 = &hip_const_10[4];
    union U3 **l_345 = &l_346;
    union U3 **l_349 = &l_346;
    __shared__ int32_t l_352;
    l_352 = 0x8C526702L;
    int32_t l_360 = 0L;
    __shared__ struct S0 **l_442;
    l_442 = &p_3366->g_410;
    uint32_t l_443 = 0xADFA4ADCL;
    char1 l_516 = make_char1(4L);
    struct S1 *l_520[8] = {nullptr, &hip_const_5.f3, nullptr, &hip_const_5.f3, nullptr, &hip_const_5.f3, nullptr, &hip_const_5.f3};
    struct S1 **l_519 = &l_520[7];
    int i, j, k;
    for (int i = 0; i < 6; i++)
        l_256[i] = 0xCD4982FDL;
lbl_266:
    (*l_201) = l_199;
    if ((l_202 != (p_56 , l_202)))
    { /* block id: 50 */
        struct S0 *l_204[5] = {&l_203, nullptr, &l_203, nullptr, &l_203};
        int i;
        (*l_201) = (*l_201);
        (*l_201) = p_3366->g_111;
        p_3366->g_68 = l_203;
    }
    else
    { /* block id: 54 */
        uint32_t l_207[5][9][1] = {{{6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}}, {{6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}}, {{6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}}, {{6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}}, {{6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}, {6UL}}};
        int32_t l_252 = 1L;
        int32_t l_253 = 0x424097C1L;
        int32_t l_254[5][3] = {{7L, 7L, 2L}, {7L, 7L, 2L}, {7L, 7L, 2L}, {7L, 7L, 2L}, {7L, 7L, 2L}};
        long3 l_284 = make_long3((-8L), 0x1E78B4661D7D39FCLL, (-8L));
        struct S2 l_306[1][7] = {{{4294967295UL,0xE8B0A5A0L,252,{0L,113,281,322,335,3985},-14,-13,94,-34,12891}, {4294967295UL,0xE8B0A5A0L,252,{0L,113,281,322,335,3985},-14,-13,94,-34,12891}, {0x7CB92451L,-1L,-114,{0x548A0079CE1E44C2LL,102,4671,-435,938,15233},12,-10,220,66,9417}, {4294967295UL,0xE8B0A5A0L,252,{0L,113,281,322,335,3985},-14,-13,94,-34,12891}, {4294967295UL,0xE8B0A5A0L,252,{0L,113,281,322,335,3985},-14,-13,94,-34,12891}, {0x7CB92451L,-1L,-114,{0x548A0079CE1E44C2LL,102,4671,-435,938,15233},12,-10,220,66,9417}, {4294967295UL,0xE8B0A5A0L,252,{0L,113,281,322,335,3985},-14,-13,94,-34,12891}}};
        char2 l_320 = make_char2(7L, 0x34L);
        uint16_t **l_342 = &p_3366->g_341;
        union U3 **l_347[4] = {&l_346, &l_346, &l_346, &l_346};
        union U3 ***l_348[4][3][7] = {{{&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}}, {{&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}}, {{&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}}, {{&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}, {&l_347[3], &l_347[2], &l_347[3], nullptr, &l_345, &l_347[3], &l_345}}};
        int4 l_383 = make_int4(0xFFC0F8F9L, 0x819D8A49L, 0xFFC0F8F9L, 0x819D8A49L);
        uint8_t *l_400 = &p_3366->g_401;
        uint64_t *l_463 = &hip_const_9.f3;
        uint8_t l_466 = 0UL;
        int3 l_486 = make_int3(0x82507E10L, 0x03F66C7EL, 0x82507E10L);
        uint64_t *l_497 = nullptr;
        uint64_t *l_498 = &l_203.f3;
        struct S2 l_499 = {4294967295UL,0xEBA9C274L,249,{0xE464845EF82C1397LL,180,-2815,421,1095,5010},-1,21,274,75,-6149};
        char1 l_504 = make_char1(0x90L);
        struct S2 *l_513 = &hip_const_5;
        struct S2 **l_512 = &l_513;
        uint64_t ****l_514 = nullptr;
        uint64_t ***l_515 = &p_3366->g_77;
        struct S2 l_517 = {0x61FB3F02L,0L,-1,{1L,-132,1266,461,1065,6679},-5,-4,31,15,-15746};
        struct S2 *l_518 = &l_306[0][2];
        __shared__ struct S1 ***l_521;
        l_521 = nullptr;
        struct S1 ***l_522 = nullptr;
        struct S1 ***l_523 = nullptr;
        struct S1 **l_525 = &l_520[7];
        struct S1 ***l_524 = &l_525;
        int i, j, k;
        if ((func_59(func_62((*l_202), l_203, p_3366), &hip_const_2, p_3366) , 5L))
        { /* block id: 55 */
            int16_t **l_235[7] = {&p_3366->g_183, &p_3366->g_183, &p_3366->g_183, &p_3366->g_183, &p_3366->g_183, &p_3366->g_183, &p_3366->g_183};
            int32_t l_244 = 0xB95AF0C2L;
            int32_t l_259 = (-3L);
            __shared__ int32_t l_260;
            l_260 = 0x59B07DB6L;
            __shared__ uint8_t l_290;
            l_290 = 248UL;
            int i;
            for (p_56 = 0; (p_56 != 1); p_56 = safe_add_func_uint32_t_u_u(p_56, 1))
            { /* block id: 58 */
                long3 l_218 = make_long3(1L, 0x614259A3E50D7487LL, 1L);
                int16_t **l_234 = &p_3366->g_183;
                int32_t l_257 = 2L;
                uint32_t l_261 = 0xD81E27CAL;
                union U3 *l_264 = &hip_const_10[5];
                long4 l_285 = make_long4(0xBF9CC3CFD5BAA619LL, 0xFB258EC9980F64D7LL, 0xBF9CC3CFD5BAA619LL, 0xFB258EC9980F64D7LL);
                __shared__ int32_t *l_288;
                l_288 = nullptr;
                int32_t *l_289[4][2] = {{&l_257, &l_253}, {&l_257, &l_253}, {&l_257, &l_253}, {&l_257, &l_253}};
                int i, j;
                l_207[1][2][0] = p_56;
                if ((((p_3366->g_208 = &p_3366->g_23) != &p_3366->g_23) <= (((p_56 , 0xC99BL) , (*l_201)) != p_3366->g_111)))
                { /* block id: 61 */
                    __shared__ uint64_t l_211;
                    l_211 = 0x6A020E8A28EE43EFLL;
                    int32_t *l_250 = &l_244;
                    for (p_3366->g_68.f3 = 1; (p_3366->g_68.f3 == 21); p_3366->g_68.f3++)
                    { /* block id: 64 */
                        struct S0 **l_223 = nullptr;
                        __shared__ struct S0 **l_224;
                        l_224 = nullptr;
                        struct S0 **l_225 = nullptr;
                        __shared__ struct S0 *l_227;
                        l_227 = nullptr;
                        struct S0 **l_226 = &l_227;
                        __shared__ int32_t l_242;
                        l_242 = (-1L);
                        int64_t *l_243[9] = {nullptr, &hip_const_1.f3.f0, nullptr, &hip_const_1.f3.f0, nullptr, &hip_const_1.f3.f0, nullptr, &hip_const_1.f3.f0, nullptr};
                        int32_t *l_245 = nullptr;
                        __shared__ int32_t *l_246;
                        l_246 = nullptr;
                        int32_t *l_247 = &l_244;
                        int i;
                        l_211--;
                        (*l_247) = (((safe_mod(((safe_mod(make_long3(l_218.z, l_218.z, l_218.z), ((safe_add(make_long3(0xD597A77BCCCA7BEFLL, (p_3366->g_146.x |= ((safe_mul_func_int16_t_s_s((((((*l_226) = &p_3366->g_68) != nullptr) || ((safe_sub_func_uint32_t_u_u((safe_mul_func_uint64_t_u_u(((safe_add_func_int32_t_s_s((((((l_234 == l_235[6]) == ((safe_mod_func_uint32_t_u_u((safe_mod_func_int16_t_s_s(((*p_3366->g_65) < ((((+(safe_mul_func_uint16_t_u_u(1UL, (65535UL != (*p_3366->g_183))))) >= p_56) ^ 0x5614B441L) ^ p_3366->g_110.w)), 0x997AL)), p_56)) < 3UL)) && 0x3DL) & p_56) != p_56), hip_const_5.f3.f4)) != l_242), (*p_3366->g_65))), 0x74A03D86L)) , hip_const_2)) >= p_56), 0xC690L)) & l_218.z)), (-1L)), make_long3((-1L), (-1L), (-1L)))))))), make_long3((-1L), (-1L), (-1L))))).x ^ l_244);
                        if (p_3366->g_248)
                            continue;
                        if (l_244)
                            continue;
                    }
                    (*l_250) = (make_long1((make_int3(p_3366->g_249.x, p_3366->g_249.x, p_3366->g_249.x).y <= l_211)).x || (*p_3366->g_65));
                    if (l_244)
                        continue;
                }
                else
                { /* block id: 74 */
                    int32_t *l_251[1];
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_251[i] = nullptr;
                    ++l_261;
                    (*l_201) = nullptr;
                    if (p_56)
                    { /* block id: 77 */
                        (*l_201) = l_251[0];
                    }
                    else
                    { /* block id: 79 */
                        __shared__ union U3 **l_265;
                        l_265 = &l_264;
                        (*l_265) = l_264;
                        if (l_203.f3)
                            goto lbl_266;
                        (*l_201) = p_3366->g_111;
                        (*l_201) = p_3366->g_111;
                    }
                    for (p_3366->g_178.f3.f0 = 14; (p_3366->g_178.f3.f0 == (-29)); --p_3366->g_178.f3.f0)
                    { /* block id: 87 */
                        long1 l_286 = make_long1(0xB97B2DCD3B6AD5CALL);
                        int i;
                        l_287 = (safe_rshift_func_uint32_t_u_u((safe_lshift_func_int64_t_s_s(p_56, ((safe_add(((safe_mod(((safe_mod(make_long4(p_3366->g_279.y, p_3366->g_279.y, p_3366->g_279.y, p_3366->g_279.y), make_long4(p_3366->g_280.y, p_3366->g_280.y, p_3366->g_280.y, p_3366->g_280.y)))), make_long4(1L, ((((safe_lshift(make_long4(p_3366->g_283.z, p_3366->g_283.z, p_3366->g_283.z, p_3366->g_283.z), make_long4(l_284.y, l_284.y, l_284.y, l_284.y)))) & make_long4(l_285.x, l_285.x, l_285.x, l_285.x))).x, 0x3FBCB82769F14144LL, 0x0896BF1FCE55A843LL)))), make_long4(l_286.x, l_286.x, l_286.x, l_286.x)))).w)), make_uint4(4294967295UL, 0x4B74000FL, 4294967295UL, 0xCAF494B8L).x));
                    }
                }
                l_290++;
            }
            return (*l_202);
        }
        else
        { /* block id: 94 */
            __shared__ char2 l_297;
            l_297 = make_char2(1L, 0x00L);
            uint64_t *l_298 = nullptr;
            // attempting a hip shared for loop
            __shared__ uint64_t *l_303[7][9];
            for (int i = 0; i < 7; i++)
            {
                for (int j = 0; j < 9; j++)
                    l_303[i][j] = &hip_const_6.f0;
            }
            struct S1 l_325[8] = {{-3L,160,-4807,103,80,10087}, {4L,177,7178,-216,-1093,7800}, {-3L,160,-4807,103,80,10087}, {4L,177,7178,-216,-1093,7800}, {-3L,160,-4807,103,80,10087}, {4L,177,7178,-216,-1093,7800}, {-3L,160,-4807,103,80,10087}, {4L,177,7178,-216,-1093,7800}};
            int32_t l_327 = 0xEB83244BL;
            int i, j;
            if (make_int3((safe_div_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(0x47L, make_char2(l_297.y, l_297.y).x)), ((*p_3366->g_208) &= (0xE67EL < l_297.y)))), (l_298 != ((*l_202) = l_298)), ((p_56 == (safe_mul_func_uint32_t_u_u((p_56 != (safe_mul_func_uint64_t_u_u((~(p_3366->g_110.z--)), 0x6598D26FAC27E42FLL))), 0xBE341A81L))) && l_297.x)).y)
            { /* block id: 98 */
                struct S2 *l_307[1];
                struct S0 ***l_310 = &p_3366->g_308;
                struct S0 **l_312 = &p_3366->g_309;
                __shared__ struct S0 ***l_311;
                l_311 = &l_312;
                int i;
                for (int i = 0; i < 1; i++)
                    l_307[i] = &l_306[0][1];
                p_3366->g_178 = l_306[0][1];
                (*l_311) = ((*l_310) = p_3366->g_308);
                for (p_3366->g_248 = 15; (p_3366->g_248 == 39); p_3366->g_248++)
                { /* block id: 104 */
                    int32_t *l_315 = nullptr;
                    __shared__ int32_t *l_316;
                    l_316 = &l_254[0][1];
                    (*l_316) |= make_int4(0x9E591069L, (-6L), (-8L), (-9L)).y;
                }
            }
            else
            { /* block id: 107 */
                struct S2 l_319[8][6][5] = {{{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}, {{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}, {{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}, {{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}, {{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}, {{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}, {{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}, {{{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}, {{0x3165EE85L,-4L,52,{0x4E6350A332D48D92LL,120,6935,94,-1835,8465},15,-6,212,-78,2523}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {0x2E24CA42L,0L,11,{0xC24016D57432EABELL,-113,-4083,421,-1870,4921},-9,13,14,67,-15989}, {4294967291UL,1L,-171,{8L,-13,-4892,232,2001,5143},-7,20,346,-52,-13246}}}};
                int i, j, k;
                l_327 |= ((safe_add(((make_int1((hip_const_10[2] , make_int2(0L, (l_319[7][0][1] , ((make_char4(l_320.x, l_320.x, l_320.x, l_320.x).y & ((nullptr == &p_3366->g_308) , make_uchar4(((safe_mul_func_int16_t_s_s((*p_3366->g_183), (safe_mod_func_int32_t_s_s((1UL ^ (l_325[6] , (((((hip_const_1.f6 >= make_ulong3(l_326.y, l_326.y, l_326.y).y) , p_3366->g_111) != (*l_201)) , p_3366->g_178.f1) || 65535UL))), p_3366->g_178.f6)))) != p_3366->g_178.f8), 1UL, hip_const_4, l_306[0][1].f4).y)) != hip_const_5.f1))).y)) ^ make_int1(0xBEEA884BL))), make_int1(0xBD112002L)))).x;
                return (*l_202);
            }
        }
        if (((safe_mod_func_int8_t_s_s(((safe_mod_func_int32_t_s_s(((safe_add_func_uint32_t_u_u((((safe_lshift_func_uint16_t_u_u((make_short2(0x2692L, 7L).y == (safe_mul_func_int64_t_s_s((p_56 & p_56), make_long1(l_338.y).x))), ((((make_uint4((((safe_sub_func_int16_t_s_s((hip_const_5.f7 >= p_56), (((*l_342) = p_3366->g_341) == (p_3366->g_344 = l_343)))) , l_345) == (l_349 = l_347[3])), 4294967295UL, (safe_mul_func_uint32_t_u_u(p_56, 0xA54A9079L)), 0x7DADCAC0L).x >= hip_const_9.f1) > (-1L)) ^ l_254[4][0]) ^ 254UL))) != 0x8E292773L) | 0L), 1L)) == hip_const_9.f1), p_56)) , l_352), p_56)) , 6L))
        { /* block id: 115 */
            int32_t *l_353 = &l_252;
            int32_t *l_354 = &l_253;
            int32_t *l_355 = nullptr;
            int32_t *l_356 = &l_254[1][0];
            int32_t *l_357 = nullptr;
            int32_t *l_358 = &l_254[2][2];
            int32_t *l_359[3][9][9] = {{{nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}}, {{nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}}, {{nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}, {nullptr, &l_252, nullptr, &l_252, &l_253, &l_253, &l_254[1][1], &l_252, nullptr}}};
            uint16_t l_361[4] = {0x9FEEL, 65535UL, 0x9FEEL, 65535UL};
            int16_t *l_370 = &hip_const_2;
            int16_t *l_371[8][3] = {{&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}, {&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}, {&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}, {&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}, {&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}, {&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}, {&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}, {&hip_const_7, &hip_const_11[1][0], &hip_const_11[2][1]}};
            int i, j, k;
            (*l_201) = l_353;
            ++l_361[3];
            if ((~((l_306[0][1].f3.f2 = (((0x4ED8FE34L != (0x2769D47070B95939LL < ((make_uint4(p_3366->g_364.x, p_3366->g_364.x, p_3366->g_364.x, p_3366->g_364.x).x == (safe_div_func_int64_t_s_s((p_3366->g_280.y = ((*p_3366->g_111) & make_uint3(p_3366->g_367.x, p_3366->g_367.x, p_3366->g_367.x).x)), hip_const_1.f5))) & 0UL))) >= (safe_mul_func_int64_t_s_s(1L, 0x751CA857D445FD07LL))) == 0x12419952L)) && (safe_div_func_uint32_t_u_u((l_306[0][1].f3.f1 = (((0x67F373DCBAC6DF45LL && 18446744073709551606UL) && (*p_3366->g_208)) != 0xCA677689L)), (*p_3366->g_111))))))
            { /* block id: 121 */
                __shared__ struct S1 *l_374;
                l_374 = &hip_const_5.f3;
                struct S1 *l_375 = nullptr;
                struct S1 *l_376 = &l_306[0][1].f3;
                (*l_376) = l_306[0][1].f3;
            }
            else
            { /* block id: 123 */
                ushort1 l_377 = make_ushort1(1UL);
                uint64_t l_380 = 18446744073709551615UL;
                int i;
                --l_377.x;
                --l_380;
            }
            (**l_201) = make_int1(l_383.w).x;
        }
        else
        { /* block id: 128 */
            uint64_t *l_384[3];
            struct S1 *l_394[6][5][2] = {{{&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}}, {{&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}}, {{&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}}, {{&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}}, {{&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}}, {{&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}, {&l_306[0][1].f3, &hip_const_1.f3}}};
            int32_t l_408[10][4] = {{0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}, {0x3B6427ABL, 0x3B6427ABL, 0L, (-3L)}};
            int8_t l_461 = 0xA7L;
            __shared__ union U3 *l_462;
            l_462 = &hip_const_10[3];
            __shared__ int1 l_485;
            l_485 = make_int1(0x622EE0FDL);
            int32_t *l_487 = &l_254[1][2];
            int32_t *l_488 = &l_408[8][0];
            int i, j, k;
            for (int i = 0; i < 3; i++)
                l_384[i] = &p_3366->g_68.f3;
            for (p_56 = 0; (p_56 <= 0); p_56 += 1)
            { /* block id: 131 */
                return l_384[1];
            }
            for (p_3366->g_178.f0 = (-9); (p_3366->g_178.f0 != 32); ++p_3366->g_178.f0)
            { /* block id: 136 */
                uint16_t l_387[10][3][6] = {{{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}, {{0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}, {0UL, 0xC6E3L, 65535UL, 65535UL, 0xC6E3L, 0x1774L}}};
                int i, j, k;
                ++l_387[9][2][3];
            }
            for (p_3366->g_178.f1 = 0; (p_3366->g_178.f1 == 18); p_3366->g_178.f1 = safe_add_func_uint16_t_u_u(p_3366->g_178.f1, 1))
            { /* block id: 141 */
                int32_t l_412 = 0x5AB1D1A0L;
                union U3 l_429 = {0UL};
                uint64_t **l_447 = &p_3366->g_65;
                char1 l_467 = make_char1(3L);
                int8_t **l_470 = &p_3366->g_208;
                int32_t l_481 = 0L;
                uint32_t l_482 = 0xFDCC7BF6L;
                int i;
                if (p_3366->g_68.f1)
                { /* block id: 142 */
                    __shared__ struct S1 **l_395;
                    l_395 = &l_394[3][2][1];
                    uint64_t l_407 = 18446744073709551609UL;
                    if ((safe_mul_func_int32_t_s_s((((*l_395) = l_394[3][2][1]) != nullptr), (safe_add_func_uint16_t_u_u(65533UL, p_56)))))
                    { /* block id: 144 */
                        int64_t l_402 = (-1L);
                        __shared__ int8_t *l_409;
                        l_409 = nullptr;
                        p_3366->g_410 = ((*p_3366->g_308) = ((((safe_lshift_func_int16_t_s_s((~(*p_3366->g_183)), (*p_3366->g_183))) != (l_400 == &p_3366->g_401)) & (make_char3(0xB3L, (p_3366->g_171.y ^ l_254[2][0]), (p_3366->g_171.y &= ((*p_3366->g_208) = ((((*l_400) = l_402) , ((l_408[8][0] = make_ulong1((safe_lshift_func_uint8_t_u_u(((hip_const_1.f3 , ((((safe_lshift_func_int64_t_s_s(((p_3366->g_149.x && 1L) <= p_3366->g_149.y), 10)) != l_383.z) >= 0x21B4L) == p_56)) ^ l_407), p_56))).x) & p_56)) , (*p_3366->g_208))))).z & 0x2AL)) , nullptr));
                        l_412 |= ((make_int1(0x9ED3C136L) ^ make_int1(p_3366->g_411.y))).x;
                    }
                    else
                    { /* block id: 152 */
                        int32_t *l_413 = nullptr;
                        int32_t *l_414 = &l_408[8][0];
                        int32_t *l_415[9][10] = {{&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}, {&l_360, &l_360, nullptr, &l_253, &l_254[4][2], &l_253, nullptr, &l_360, &l_360, nullptr}};
                        uint32_t l_416 = 0x39A7D0DBL;
                        int i, j;
                        ++l_416;
                        if (l_412)
                            continue;
                    }
                }
                else
                { /* block id: 156 */
                    struct S1 l_428 = {-1L,135,2166,-41,-1442,15916};
                    int32_t *l_444 = &l_254[1][2];
                    uint64_t ***l_446[6][10] = {{nullptr, nullptr, &p_3366->g_77, nullptr, nullptr, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, nullptr, nullptr}, {nullptr, nullptr, &p_3366->g_77, nullptr, nullptr, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, nullptr, nullptr}, {nullptr, nullptr, &p_3366->g_77, nullptr, nullptr, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, nullptr, nullptr}, {nullptr, nullptr, &p_3366->g_77, nullptr, nullptr, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, nullptr, nullptr}, {nullptr, nullptr, &p_3366->g_77, nullptr, nullptr, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, nullptr, nullptr}, {nullptr, nullptr, &p_3366->g_77, nullptr, nullptr, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, nullptr, nullptr}};
                    int i, j;
                    (*l_444) |= ((safe_rshift_func_int8_t_s_u((safe_mul_func_uint64_t_u_u((safe_unary_minus_func_int8_t_s((safe_div_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(0x472FL, (l_428 , 0x7B7DL))), l_412)))), (l_443 = ((((+(l_429 , (safe_rshift_func_uint8_t_u_s(254UL, l_429.f0)))) && ((safe_rshift_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((safe_mod_func_int64_t_s_s((safe_add_func_uint32_t_u_u(((safe_rshift_func_uint64_t_u_u(0xB560C8C6029B5A61LL, (&p_3366->g_309 == l_442))) == 0x6481L), p_56)), 0x996BC1231A33DEB6LL)) || l_429.f0), p_56)) != l_429.f0), 1)) && 0L)) >= p_3366->g_146.z) < l_408[8][0])))), hip_const_5.f0)) | 255UL);
                    (*l_349) = (p_3366->g_445 = (*l_345));
                    if (((&p_3366->g_65 != (l_447 = &l_384[1])) || 65535UL))
                    { /* block id: 162 */
                        int64_t l_448 = (-4L);
                        int32_t *l_449 = &l_408[8][0];
                        __shared__ int32_t *l_450;
                        l_450 = &l_252;
                        int32_t *l_451 = &l_252;
                        int32_t *l_452 = nullptr;
                        int32_t *l_453 = &l_252;
                        int32_t *l_454 = &l_253;
                        __shared__ int32_t *l_455;
                        l_455 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_456[3];
                        for (int i = 0; i < 3; i++)
                            l_456[i] = &l_252;
                        __shared__ uint16_t l_458;
                        l_458 = 0xEFB7L;
                        int i;
                        for (int i = 0; i < 3; i++)
                            l_456[i] = &l_252;
                        l_458++;
                        if (l_461)
                            break;
                        l_462 = nullptr;
                        if (p_56)
                            continue;
                    }
                    else
                    { /* block id: 167 */
                        l_444 = l_444;
                    }
                    return l_463;
                }
                l_383.w = ((((safe_mod_func_uint8_t_u_u((l_412 , l_466), make_char1(l_467.x).x)) == (safe_add_func_int32_t_s_s((((*l_470) = &l_258[0][6][6]) == &p_3366->g_23), ((l_481 &= (safe_lshift_func_int16_t_s_s((safe_mul_func_int32_t_s_s(l_383.z, (safe_mul_func_uint16_t_u_u(((safe_add_func_int64_t_s_s(((l_429 , 0x91L) , (~(!(p_56 , (safe_sub_func_uint64_t_u_u(l_306[0][1].f5, p_56)))))), p_56)) < p_56), l_306[0][1].f3.f3)))), (*p_3366->g_183)))) & hip_const_5.f3.f5)))) && 0x1FF4L) != l_482);
            }
            (*l_488) = ((*l_487) = ((safe_rshift(((make_int3(l_485.x, l_485.x, l_485.x) ^ make_int3(l_486.z, l_486.z, l_486.z))), make_int3(32, 32, 32)))).z);
        }
        l_486.z = ((safe_mul_func_int8_t_s_s(((l_466 , &p_3366->g_344) != nullptr), ((safe_rshift_func_int64_t_s_s((((((((safe_rshift_func_uint64_t_u_u(hip_const_1.f4, ((*l_498) = ((+(&hip_const_10[1] != &hip_const_6)) > ((safe_sub_func_uint16_t_u_u((!p_56), 0UL)) || 0x876DL))))) | (-9L)) & p_3366->g_283.y) , p_3366->g_283.w) != p_56) , nullptr) == nullptr), p_3366->g_178.f8)) , p_56))) < p_56);
        (*l_524) = (l_519 = ((l_499 , (((safe_lshift_func_int64_t_s_s((((safe_add_func_int8_t_s_s(((*p_3366->g_208) = ((((make_char2(l_504.x, l_504.x) | ((((((safe_add(make_char2(p_3366->g_507.z, p_3366->g_507.z), ((safe_mod(((safe_sub(make_char2(((&l_306[0][1] != ((*l_512) = &p_3366->g_178)) > (&p_3366->g_77 == (l_515 = nullptr))), (-10L)), ((~make_char2(l_516.x, l_516.x)))))), make_char2(((((*l_518) = l_517) , &l_306[0][1]) != (l_203 , nullptr)), (*p_3366->g_208)))))))) & make_char2(0L, 0L))) ^ make_char2(7L, 7L))))) ^ make_char2((-1L), (-1L)))).x), 0x5EL)) ^ p_56) || hip_const_5.f0), l_486.y)) ^ p_56) != 1L)) , l_519));
    }
    return (*l_202);
}


/* ------------------------------------------ */
/* 
 * reads : p_3366->g_100 hip_const_5
 * writes: p_3366->g_100
 */
__device__ struct S2  func_59(struct S1  p_60, int16_t * p_61, struct S4 * p_3366)
{ /* block id: 43 */
    int2 l_184 = make_int2(0x5F225732L, 6L);
    int32_t *l_185[8][4][1] = {{{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}};
    int i, j, k;
    p_3366->g_100.x ^= make_int2(l_184.y, l_184.y).x;
    return hip_const_5;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_9 p_3366->g_74 p_3366->g_65 hip_const_5.f2 p_3366->g_171 hip_const_1.f3 p_3366->g_175 p_3366->g_110 hip_const_1 p_3366->g_111
 * writes: p_3366->g_68 p_3366->g_77 p_3366->g_23 p_3366->g_178 p_3366->g_111
 */
__device__ struct S1  func_62(uint64_t * p_63, struct S0  p_64, struct S4 * p_3366)
{ /* block id: 7 */
    struct S0 *l_67 = &p_3366->g_68;
    ulong4 l_71 = make_ulong4(0UL, 0UL, 0UL, 0UL);
    __shared__ uint64_t *l_78;
    l_78 = &hip_const_10[1].f0;
    // attempting a hip shared for loop
    __shared__ uint64_t *l_79[3][5];
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 5; j++)
            l_79[i][j] = &hip_const_10[1].f0;
    }
    int32_t l_80 = (-5L);
    long4 l_81 = make_long4((-1L), 0x0EF1A53783AD51ACLL, (-1L), 0x0EF1A53783AD51ACLL);
    uint32_t *l_82[5];
    int32_t l_83[2];
    __shared__ uchar2 l_86;
    l_86 = make_uchar2(255UL, 249UL);
    uchar1 l_87 = make_uchar1(0x0FL);
    struct S1 l_117[2] = {{3L,-6,-4314,150,-543,6495}, {3L,-6,-4314,150,-543,6495}};
    __shared__ int64_t l_137;
    l_137 = 0x42BF8CB437D6875BLL;
    __shared__ int32_t **l_179;
    l_179 = &p_3366->g_111;
    int i, j;
    for (int i = 0; i < 5; i++)
        l_82[i] = &hip_const_4;
    for (int i = 0; i < 2; i++)
        l_83[i] = (-6L);
    (*l_67) = hip_const_9;
    if ((safe_div_func_uint8_t_u_u((make_ulong1(l_71.y).x && (safe_sub_func_uint8_t_u_u((&p_3366->g_65 != (make_uint1(p_3366->g_74.z).x , &p_63)), ((l_83[1] = ((safe_sub_func_int32_t_s_s(((p_3366->g_77 = nullptr) == &p_63), ((l_80 = make_ulong4(0UL, 18446744073709551610UL, 18446744073709551615UL, (*p_3366->g_65)).y) > make_long4(l_81.x, l_81.x, l_81.x, l_81.x).y))) & (&p_64 == &p_3366->g_68))) , 0xC6L)))), ((safe_lshift(((((((make_uchar3(l_86.x, l_86.x, l_86.x) | make_uchar3(l_87.x, l_87.x, l_87.x))) ^ ((safe_mul(((~((safe_div(make_uchar3(0xAAL, 0x2FL, l_87.x), make_uchar3(5UL, 5UL, 5UL)))))), make_uchar3(0x3FL, 0x3FL, 0x3FL)))))) & make_uchar3(0x07L, 0x07L, 0x07L))), make_uchar3(8, 8, 8)))).z)))
    { /* block id: 12 */
        int32_t *l_93 = &l_83[1];
        int32_t **l_92 = &l_93;
        int32_t l_129 = (-1L);
        int32_t l_130 = 0xB4CCDFE2L;
        int32_t l_131 = (-10L);
        int32_t l_132 = 0x9A68D69DL;
        // attempting a hip shared for loop
        __shared__ int32_t l_133[9][3];
        for (int i = 0; i < 9; i++)
        {
            for (int j = 0; j < 3; j++)
                l_133[i][j] = 0x82E12F5BL;
        }
        int32_t l_135 = 0L;
        // attempting a hip shared for loop
        __shared__ int64_t l_136[4][4][2];
        for (int i = 0; i < 4; i++)
        {
            for (int j = 0; j < 4; j++)
            {
                for (int k = 0; k < 2; k++)
                    l_136[i][j][k] = 1L;
            }
        }
        uint8_t l_138 = 255UL;
        __shared__ struct S0 l_145;
        l_145 = {23665,6UL,0L,18446744073709551608UL,32307};
        __shared__ int32_t *l_159;
        l_159 = &l_83[0];
        int32_t *l_160 = &l_132;
        int32_t *l_161[8] = {&l_129, &l_129, &l_80, &l_129, &l_129, &l_80, &l_129, &l_129};
        uint32_t l_162 = 4294967295UL;
        int i, j, k;
        (*l_92) = &l_83[1];
        for (p_64.f1 = (-25); (p_64.f1 < 49); p_64.f1 = safe_add_func_int8_t_s_s(p_64.f1, 9))
        { /* block id: 16 */
            struct S2 l_112 = {4294967295UL,8L,-5,{-8L,-172,-3863,-172,-1909,13046},-5,-17,212,-82,17186};
            int32_t *l_113 = &l_80;
            int32_t *l_118 = &l_83[1];
            int32_t *l_119 = &l_80;
            int32_t *l_120 = &l_83[1];
            int32_t *l_121 = &l_83[1];
            int32_t *l_122 = nullptr;
            int32_t *l_123 = &l_83[0];
            int32_t l_124 = 0x6254A217L;
            int32_t *l_125 = nullptr;
            __shared__ int32_t *l_126;
            l_126 = &l_83[0];
            int32_t *l_127 = &l_80;
            // attempting a hip shared for loop
            __shared__ int32_t *l_128[5][5];
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 5; j++)
                    l_128[i][j] = &l_80;
            }
            int32_t l_134 = 0x289A5802L;
            uint8_t l_156 = 252UL;
            uint16_t *l_157[1];
            __shared__ uint8_t *l_158;
            l_158 = &l_138;
            int i, j;
            for (int i = 0; i < 1; i++)
                l_157[i] = &hip_const_6.f1;
            for (l_80 = 3; (l_80 >= 1); l_80 -= 1)
            { /* block id: 19 */
                ushort1 l_103 = make_ushort1(0x2F6DL);
                uint8_t *l_114 = nullptr;
                uint8_t *l_115 = nullptr;
                uint8_t *l_116 = nullptr;
                int i;
                if (((safe_mod(((safe_sub(((make_int4(p_3366->g_100.z, p_3366->g_100.z, p_3366->g_100.z, p_3366->g_100.z) ^ make_int4(1L, 0x822E2C57L, (p_64.f4 || (l_83[1] = ((((make_ushort4(1UL, ((safe_mul(make_ushort1(l_103.x), ((((make_ushort1(0x1114L) ^ make_ushort1(p_3366->g_104.y))) ^ make_ushort1(p_3366->g_105.y)))))).x, 0UL, ((0x04L | (safe_rshift_func_int32_t_s_s((0xE64EF7B2L > (safe_mod_func_uint32_t_u_u((make_ulong2(p_3366->g_110.x, p_3366->g_110.x).x != (((p_3366->g_111 == (l_112 , ((*l_92) = l_113))) | 6L) <= p_64.f0)), p_64.f1))), l_103.x))) || p_64.f3)) ^ make_ushort4(0xD49CL, 0xD49CL, 0xD49CL, 0xD49CL))).x , l_103.x) , p_3366->g_68.f1))), 0xAA6E91FFL))), make_int4(0x6F7C90A9L, 0x6F7C90A9L, 0x6F7C90A9L, 0x6F7C90A9L)))), make_int4(0L, 0L, 0L, 0L)))).z)
                { /* block id: 22 */
                    return l_117[1];
                }
                else
                { /* block id: 24 */
                    (*l_92) = l_113;
                }
            }
            l_138--;
            (*l_126) |= make_int3((((*l_92) = p_3366->g_111) == &l_134), (safe_sub_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u(((*l_158) &= (l_145 , ((4294967293UL & (make_long2(p_3366->g_146.z, p_3366->g_146.z).y <= ((nullptr == l_79[2][2]) != ((safe_div_func_uint64_t_u_u((*p_63), (-4L))) & (make_ushort4(1UL, 0xEA81L, make_ushort2(p_3366->g_149.z, p_3366->g_149.z).x, (l_117[1].f2 &= ((safe_sub_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((nullptr == &hip_const_4) >= p_64.f0), 0x02L)), l_145.f0)), l_71.w)) ^ l_156))).z >= hip_const_1.f7))))) , 0x46L))), hip_const_1.f3.f3)) <= p_3366->g_149.x), p_64.f1)), p_64.f2).x;
        }
        ++l_162;
    }
    else
    { /* block id: 35 */
        ushort3 l_165 = make_ushort3(0xE531L, 0UL, 0xE531L);
        __shared__ int8_t *l_172;
        l_172 = &p_3366->g_23;
        uint8_t *l_176 = nullptr;
        struct S2 *l_177 = &p_3366->g_178;
        int i;
        (*l_177) = (make_int4(0x93CFB2F0L, 0x162D6F5CL, p_64.f3, ((make_ushort2(l_165.y, l_165.y).y > p_64.f1) | ((safe_unary_minus_func_int64_t_s((safe_sub_func_int32_t_s_s((safe_mul_func_int64_t_s_s((p_64.f4 < (hip_const_5.f2 & ((make_char2(p_3366->g_171.y, p_3366->g_171.y) | make_char2((hip_const_1.f3 , ((*l_172) = hip_const_1.f3.f0)), (safe_add_func_int32_t_s_s(((p_3366->g_175 == l_176) == ((l_80 = (((0xCE426B522DBA9DB8LL >= p_64.f2) <= 0xEFE6A03987274B98LL) < l_117[1].f0)) == p_3366->g_110.w)), p_64.f3))))).y)), (*p_63))), 0x8A4B93ACL)))) , l_117[1].f0))).z , hip_const_1);
    }
    (*l_179) = p_3366->g_111;
    return l_117[1];
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S4 c_3367;
    struct S4* p_3366 = &c_3367;
    struct S4 c_3368 = {
        .g_23 = 9L,
        .g_65 = &hip_const_9.f3,
        .g_68 = {31929,0x8A6FL,0x98232C37L,0x822E8431F4830711LL,-11205},
        .g_74 = make_uint4(0UL, 0UL, 0UL, 0UL),
        .g_77 = &p_3366->g_65,
        .g_100 = make_int4(1L, 0xFAA63A17L, 1L, 0xFAA63A17L),
        .g_104 = make_ushort2(65535UL, 0xFAD7L),
        .g_105 = make_ushort3(7UL, 1UL, 7UL),
        .g_110 = make_ulong4(0x81DC2E7BD33CEA4ALL, 18446744073709551606UL, 0x81DC2E7BD33CEA4ALL, 18446744073709551606UL),
        .g_111 = nullptr,
        .g_146 = make_long3((-10L), 0x8BF895B2C4312D83LL, (-10L)),
        .g_149 = make_ushort3(0x27DBL, 0x629AL, 0x27DBL),
        .g_171 = make_char2(1L, (-2L)),
        .g_175 = nullptr,
        .g_178 = {0xF510D637L,0x67B2451EL,129,{0xABF67B714C4D434ELL,111,5070,-469,315,11331},-0,-0,326,-26,32234},
        .g_183 = &hip_const_7,
        .g_208 = &p_3366->g_23,
        .g_248 = 0x1C8160CCL,
        .g_249 = make_int2(0x1A449D87L, (-1L)),
        .g_279 = make_long3(0x853FEF32754901EELL, 0xB0D0AC6929953DABLL, 0x853FEF32754901EELL),
        .g_280 = make_long3(0x83F90FF40068B44DLL, 0x27210B4DAB2D90A1LL, 0x83F90FF40068B44DLL),
        .g_283 = make_long4(3L, 0xC2DEC57822DB1961LL, 3L, 0xC2DEC57822DB1961LL),
        .g_309 = &hip_const_9,
        .g_308 = &p_3366->g_309,
        .g_341 = &hip_const_9.f1,
        .g_344 = nullptr,
        .g_364 = make_uint1(0UL),
        .g_367 = make_uint1(0x49D411B7L),
        .g_401 = 0x89L,
        .g_410 = &p_3366->g_68,
        .g_411 = make_int2(0x56166D07L, (-1L)),
        .g_445 = nullptr,
        .g_457 = 0xBBL,
        .g_507 = make_char4(0xC2L, 0x08L, 0xC2L, 0x08L),
        .g_555 = make_int3(1L, (-1L), 1L),
        .g_558 = make_int3(0x7E6548B6L, 0x12F0A95EL, 0x7E6548B6L),
        .g_560 = make_int2(5L, 0x251E1626L),
        .g_561 = make_int1(1L),
        .g_596 = make_ushort1(0xD216L),
        .g_605 = make_ushort1(0x8FD5L),
        .g_615 = make_uint4(0UL, 4294967295UL, 0UL, 4294967295UL),
        .g_623 = make_short4((-1L), 1L, (-1L), 1L),
        .g_638 = make_uchar4(0xDEL, 7UL, 0xDEL, 7UL),
        .g_657 = &p_3366->g_111,
        .g_656 = {&p_3366->g_657},
        .g_655 = &p_3366->g_656[0],
        .g_654 = {&p_3366->g_655},
        .g_683 = make_long4(0x016E583CBE9E24D1LL, 1L, 0x016E583CBE9E24D1LL, 1L),
        .g_712 = {{&p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77}, {&p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77, &p_3366->g_77}},
        .g_725 = nullptr,
        .g_724 = {&p_3366->g_725, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725, &p_3366->g_725},
        .g_754 = make_long3(0x71A4AF696EC76E94LL, (-1L), 0x71A4AF696EC76E94LL),
        .g_767 = {{{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}, {{&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}, {&hip_const_1, &p_3366->g_178}}},
        .g_766 = &p_3366->g_767[8][8][1],
        .g_765 = &p_3366->g_766,
        .g_833 = &p_3366->g_178.f3,
        .g_886 = (-1L),
        .g_908 = make_char2((-1L), 0xEDL),
        .g_916 = make_uchar2(255UL, 0xEEL),
        .g_928 = {&p_3366->g_766, &p_3366->g_766, &p_3366->g_766, &p_3366->g_766, &p_3366->g_766, &p_3366->g_766, &p_3366->g_766, &p_3366->g_766, &p_3366->g_766, &p_3366->g_766},
        .g_940 = make_short4((-1L), 0x10B1L, (-1L), 0x10B1L),
        .g_974 = 7UL,
        .g_1004 = make_uint3(4294967295UL, 0xABFF6691L, 4294967295UL),
        .g_1047 = 255UL,
        .g_1058 = make_int4((-10L), 0x688C9237L, (-10L), 0x688C9237L),
        .g_1078 = make_uchar2(0x95L, 0xAFL),
        .g_1101 = make_short3(0x5BD7L, 0x8DCDL, 0x5BD7L),
        .g_1153 = make_ulong4(0xD6DBD774C5B67F11LL, 0xD2B051A49B433AB3LL, 0xD6DBD774C5B67F11LL, 0xD2B051A49B433AB3LL),
        .g_1222 = make_long1((-5L)),
        .g_1264 = (-1L),
        .g_1372 = make_uchar4(7UL, 255UL, 7UL, 255UL),
        .g_1382 = make_long2(0xD3A8D3EE28D1B1B8LL, (-1L)),
        .g_1404 = make_short2((-8L), 0x1920L),
        .g_1418 = make_int2((-8L), (-5L)),
        .g_1420 = make_int2(0xB4951491L, (-8L)),
        .g_1421 = make_ulong2(0xC63327A265BCCFF4LL, 0xF85DA7692098354ELL),
        .g_1446 = make_uint3(0x3256C15EL, 4294967295UL, 0x3256C15EL),
        .g_1579 = 0L,
        .g_1602 = &p_3366->g_833,
        .g_1601 = {{{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}, {{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}, {{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}, {{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}, {{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}, {{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}, {{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}, {{&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}, {&p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602, &p_3366->g_1602}}},
        .g_1600 = {&p_3366->g_1601[5][0][3], &p_3366->g_1601[5][0][3]},
        .g_1617 = make_int4((-4L), 0x418D2AB8L, (-4L), 0x418D2AB8L),
        .g_1631 = make_uchar4(9UL, 0xD1L, 9UL, 0xD1L),
        .g_1633 = make_uchar2(5UL, 0UL),
        .g_1636 = make_uint2(2UL, 0x9A874AE7L),
        .g_1661 = make_int4(0x2F7ECF21L, 0x83F3235EL, 0x2F7ECF21L, 0x83F3235EL),
        .g_1667 = make_uint2(0x77BBB2C7L, 0x541B0D69L),
        .g_1679 = make_ushort3(0xF87EL, 65535UL, 0xF87EL),
        .g_1700 = 0L,
        .g_1706 = 1UL,
        .g_1770 = make_int2(0x9A02BF50L, (-1L)),
        .g_1780 = make_char3(0L, 0x56L, 0L),
        .g_1782 = make_char4(0x12L, 0x3CL, 0x12L, 0x3CL),
        .g_1786 = &p_3366->g_724[9],
        .g_1839 = make_int2(0xFAD2A690L, 0xE4B812A7L),
        .g_1843 = &hip_const_1.f3.f0,
        .g_1842 = &p_3366->g_1843,
        .g_1849 = &p_3366->g_308,
        .g_1848 = {{&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}, {&p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, &p_3366->g_1849, nullptr}},
        .g_1890 = make_ushort4(0UL, 0x6821L, 0UL, 0x6821L),
        .g_1891 = make_ushort1(0UL),
        .g_1898 = make_long1(0x2EA4EE96FCDFB733LL),
        .g_1904 = make_long3(0xD75F73B0AD616C34LL, 0x08687B35AFD7CBB6LL, 0xD75F73B0AD616C34LL),
        .g_1923 = make_long3(0L, 0x2DF160D6F5DC7ED0LL, 0L),
        .g_1931 = make_short1(0xAA99L),
        .g_1946 = {{{&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}}, {{&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}}, {{&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}}, {{&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}}, {{&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}}, {{&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}, {&p_3366->g_928[9], &p_3366->g_765, &p_3366->g_765, &p_3366->g_928[9], &p_3366->g_928[1], &p_3366->g_765, &p_3366->g_765}}},
        .g_1945 = &p_3366->g_1946[4][2][5],
        .g_1996 = make_uint1(0xE5437825L),
        .g_2072 = 0xA764CA39L,
        .g_2112 = make_long2(0xF29C55D28C5F9E51LL, 0xB3D69EB7AC2D2886LL),
        .g_2113 = make_long3((-1L), 0x5EFEB37081810BC3LL, (-1L)),
        .g_2154 = make_long3(0xED58008AECE24017LL, 0x0F20C7D4FFA292C1LL, 0xED58008AECE24017LL),
        .g_2183 = &p_3366->g_1848[7][3],
        .g_2185 = &p_3366->g_1848[2][0],
        .g_2208 = make_int1(0x5DA907C2L),
        .g_2306 = {{1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}, {1UL, 0x469CL, 4UL, 0x469CL, 1UL}},
        .g_2344 = make_ushort2(0x2E5BL, 0xC185L),
        .g_2409 = 0x3382A8A4L,
        .g_2427 = make_uchar4(0UL, 0x8CL, 0UL, 0x8CL),
        .g_2441 = make_long2(0x2AD160FE84BE4C97LL, 5L),
        .g_2458 = make_long4(0x99F9DCB96B5E5A2ALL, 0x9B1323E2D0410CDDLL, 0x99F9DCB96B5E5A2ALL, 0x9B1323E2D0410CDDLL),
        .g_2552 = make_int4(8L, 0x7DE793A1L, 8L, 0x7DE793A1L),
        .g_2563 = make_uchar1(0xDEL),
        .g_2604 = make_int4(1L, 0xBFB67D80L, 1L, 0xBFB67D80L),
        .g_2614 = nullptr,
        .g_2618 = {21886,0x549FL,2L,0x665A4CC7A255195FLL,-4278},
        .g_2682 = make_int4((-1L), 0x4D9889EEL, (-1L), 0x4D9889EEL),
        .g_2744 = make_long3(0xF0AC5C57593B1F8CLL, 0x3B42F42C58DFF25FLL, 0xF0AC5C57593B1F8CLL),
        .g_2761 = nullptr,
        .g_2806 = make_int2(0L, (-7L)),
        .g_2873 = make_long3(8L, 0L, 8L),
        .g_2890 = make_uint2(0UL, 0x62E5A578L),
        .g_2919 = make_ushort1(65532UL),
        .g_2930 = make_int4((-10L), (-1L), (-10L), (-1L)),
        .g_2931 = make_int4(5L, 0x5E36E322L, 5L, 0x5E36E322L),
        .g_2948 = make_long4((-10L), 0x8D84C9FEF3280CB6LL, (-10L), 0x8D84C9FEF3280CB6LL),
        .g_2973 = make_int1(0x7638D475L),
        .g_3064 = &p_3366->g_2614,
        .g_3063 = {&p_3366->g_3064, &p_3366->g_3064, &p_3366->g_3064},
        .g_3065 = make_uint3(6UL, 0x83DA4EA4L, 6UL),
        .g_3066 = make_int3(0x412DA5DDL, 0x85BCF6C5L, 0x412DA5DDL),
        .g_3075 = make_int4(1L, 0x94DB354CL, 1L, 0x94DB354CL),
        .g_3093 = make_char2(0L, 6L),
        .g_3094 = make_char4(1L, 0xB4L, 1L, 0xB4L),
        .g_3095 = make_uchar3(252UL, 255UL, 252UL),
        .g_3138 = 0L,
        .g_3161 = make_short4(0x65B9L, (-8L), 0x65B9L, (-8L)),
        .g_3172 = make_short3(0xD74DL, 0x3E7EL, 0xD74DL),
        .g_3173 = make_short4(0xFD39L, 8L, 0xFD39L, 8L),
        .g_3174 = make_short3(0x7BF9L, 0x9F0CL, 0x7BF9L),
        .g_3187 = make_long1(0L),
        .g_3192 = 1UL,
        .g_3223 = make_short1(1L),
        .g_3238 = make_ushort1(65535UL),
        .g_3253 = make_uchar1(0x38L),
        .g_3254 = make_short2(0xF0F3L, 0L),
        .g_3256 = &p_3366->g_712[0][2],
        .g_3255 = &p_3366->g_3256,
        .g_3295 = make_long3(0L, 0x2128A0557642EFCBLL, 0L),
        .g_3301 = &p_3366->g_2618.f3,
        .g_3306 = make_ushort3(0x8ABBL, 1UL, 0x8ABBL),
        .g_3310 = make_ushort3(0x3D55L, 65535UL, 0x3D55L),
        .g_3314 = make_ushort1(1UL),
        .g_3336 = make_ushort3(0x2DFDL, 0x849EL, 0x2DFDL),
    };
    c_3367 = c_3368;

    // Execute core logic
    func_1(p_3366);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1.f0, "hip_const_1.f0", print_hash_value);
    transparent_crc(hip_const_1.f1, "hip_const_1.f1", print_hash_value);
    transparent_crc(hip_const_1.f2, "hip_const_1.f2", print_hash_value);
    transparent_crc(hip_const_1.f3.f0, "hip_const_1.f3.f0", print_hash_value);
    transparent_crc(hip_const_1.f3.f1, "hip_const_1.f3.f1", print_hash_value);
    transparent_crc(hip_const_1.f3.f2, "hip_const_1.f3.f2", print_hash_value);
    transparent_crc(hip_const_1.f3.f3, "hip_const_1.f3.f3", print_hash_value);
    transparent_crc(hip_const_1.f3.f4, "hip_const_1.f3.f4", print_hash_value);
    transparent_crc(hip_const_1.f3.f5, "hip_const_1.f3.f5", print_hash_value);
    transparent_crc(hip_const_1.f4, "hip_const_1.f4", print_hash_value);
    transparent_crc(hip_const_1.f5, "hip_const_1.f5", print_hash_value);
    transparent_crc(hip_const_1.f6, "hip_const_1.f6", print_hash_value);
    transparent_crc(hip_const_1.f7, "hip_const_1.f7", print_hash_value);
    transparent_crc(hip_const_1.f8, "hip_const_1.f8", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(hip_const_5.f0, "hip_const_5.f0", print_hash_value);
    transparent_crc(hip_const_5.f1, "hip_const_5.f1", print_hash_value);
    transparent_crc(hip_const_5.f2, "hip_const_5.f2", print_hash_value);
    transparent_crc(hip_const_5.f3.f0, "hip_const_5.f3.f0", print_hash_value);
    transparent_crc(hip_const_5.f3.f1, "hip_const_5.f3.f1", print_hash_value);
    transparent_crc(hip_const_5.f3.f2, "hip_const_5.f3.f2", print_hash_value);
    transparent_crc(hip_const_5.f3.f3, "hip_const_5.f3.f3", print_hash_value);
    transparent_crc(hip_const_5.f3.f4, "hip_const_5.f3.f4", print_hash_value);
    transparent_crc(hip_const_5.f3.f5, "hip_const_5.f3.f5", print_hash_value);
    transparent_crc(hip_const_5.f4, "hip_const_5.f4", print_hash_value);
    transparent_crc(hip_const_5.f5, "hip_const_5.f5", print_hash_value);
    transparent_crc(hip_const_5.f6, "hip_const_5.f6", print_hash_value);
    transparent_crc(hip_const_5.f7, "hip_const_5.f7", print_hash_value);
    transparent_crc(hip_const_5.f8, "hip_const_5.f8", print_hash_value);
    transparent_crc(hip_const_7, "hip_const_7", print_hash_value);
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9.f0, "hip_const_9.f0", print_hash_value);
    transparent_crc(hip_const_9.f1, "hip_const_9.f1", print_hash_value);
    transparent_crc(hip_const_9.f2, "hip_const_9.f2", print_hash_value);
    transparent_crc(hip_const_9.f3, "hip_const_9.f3", print_hash_value);
    transparent_crc(hip_const_9.f4, "hip_const_9.f4", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            transparent_crc(hip_const_11[i][j], "hip_const_11[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3366->g_23, "p_3366->g_23", print_hash_value);
    transparent_crc(p_3366->g_68.f0, "p_3366->g_68.f0", print_hash_value);
    transparent_crc(p_3366->g_68.f1, "p_3366->g_68.f1", print_hash_value);
    transparent_crc(p_3366->g_68.f2, "p_3366->g_68.f2", print_hash_value);
    transparent_crc(p_3366->g_68.f3, "p_3366->g_68.f3", print_hash_value);
    transparent_crc(p_3366->g_68.f4, "p_3366->g_68.f4", print_hash_value);
    transparent_crc(p_3366->g_74.x, "p_3366->g_74.x", print_hash_value);
    transparent_crc(p_3366->g_74.y, "p_3366->g_74.y", print_hash_value);
    transparent_crc(p_3366->g_74.z, "p_3366->g_74.z", print_hash_value);
    transparent_crc(p_3366->g_74.w, "p_3366->g_74.w", print_hash_value);
    transparent_crc(p_3366->g_100.x, "p_3366->g_100.x", print_hash_value);
    transparent_crc(p_3366->g_100.y, "p_3366->g_100.y", print_hash_value);
    transparent_crc(p_3366->g_100.z, "p_3366->g_100.z", print_hash_value);
    transparent_crc(p_3366->g_100.w, "p_3366->g_100.w", print_hash_value);
    transparent_crc(p_3366->g_104.x, "p_3366->g_104.x", print_hash_value);
    transparent_crc(p_3366->g_104.y, "p_3366->g_104.y", print_hash_value);
    transparent_crc(p_3366->g_105.x, "p_3366->g_105.x", print_hash_value);
    transparent_crc(p_3366->g_105.y, "p_3366->g_105.y", print_hash_value);
    transparent_crc(p_3366->g_105.z, "p_3366->g_105.z", print_hash_value);
    transparent_crc(p_3366->g_110.x, "p_3366->g_110.x", print_hash_value);
    transparent_crc(p_3366->g_110.y, "p_3366->g_110.y", print_hash_value);
    transparent_crc(p_3366->g_110.z, "p_3366->g_110.z", print_hash_value);
    transparent_crc(p_3366->g_110.w, "p_3366->g_110.w", print_hash_value);
    transparent_crc(p_3366->g_146.x, "p_3366->g_146.x", print_hash_value);
    transparent_crc(p_3366->g_146.y, "p_3366->g_146.y", print_hash_value);
    transparent_crc(p_3366->g_146.z, "p_3366->g_146.z", print_hash_value);
    transparent_crc(p_3366->g_149.x, "p_3366->g_149.x", print_hash_value);
    transparent_crc(p_3366->g_149.y, "p_3366->g_149.y", print_hash_value);
    transparent_crc(p_3366->g_149.z, "p_3366->g_149.z", print_hash_value);
    transparent_crc(p_3366->g_171.x, "p_3366->g_171.x", print_hash_value);
    transparent_crc(p_3366->g_171.y, "p_3366->g_171.y", print_hash_value);
    transparent_crc(p_3366->g_178.f0, "p_3366->g_178.f0", print_hash_value);
    transparent_crc(p_3366->g_178.f1, "p_3366->g_178.f1", print_hash_value);
    transparent_crc(p_3366->g_178.f2, "p_3366->g_178.f2", print_hash_value);
    transparent_crc(p_3366->g_178.f3.f0, "p_3366->g_178.f3.f0", print_hash_value);
    transparent_crc(p_3366->g_178.f3.f1, "p_3366->g_178.f3.f1", print_hash_value);
    transparent_crc(p_3366->g_178.f3.f2, "p_3366->g_178.f3.f2", print_hash_value);
    transparent_crc(p_3366->g_178.f3.f3, "p_3366->g_178.f3.f3", print_hash_value);
    transparent_crc(p_3366->g_178.f3.f4, "p_3366->g_178.f3.f4", print_hash_value);
    transparent_crc(p_3366->g_178.f3.f5, "p_3366->g_178.f3.f5", print_hash_value);
    transparent_crc(p_3366->g_178.f4, "p_3366->g_178.f4", print_hash_value);
    transparent_crc(p_3366->g_178.f5, "p_3366->g_178.f5", print_hash_value);
    transparent_crc(p_3366->g_178.f6, "p_3366->g_178.f6", print_hash_value);
    transparent_crc(p_3366->g_178.f7, "p_3366->g_178.f7", print_hash_value);
    transparent_crc(p_3366->g_178.f8, "p_3366->g_178.f8", print_hash_value);
    transparent_crc(p_3366->g_248, "p_3366->g_248", print_hash_value);
    transparent_crc(p_3366->g_249.x, "p_3366->g_249.x", print_hash_value);
    transparent_crc(p_3366->g_249.y, "p_3366->g_249.y", print_hash_value);
    transparent_crc(p_3366->g_279.x, "p_3366->g_279.x", print_hash_value);
    transparent_crc(p_3366->g_279.y, "p_3366->g_279.y", print_hash_value);
    transparent_crc(p_3366->g_279.z, "p_3366->g_279.z", print_hash_value);
    transparent_crc(p_3366->g_280.x, "p_3366->g_280.x", print_hash_value);
    transparent_crc(p_3366->g_280.y, "p_3366->g_280.y", print_hash_value);
    transparent_crc(p_3366->g_280.z, "p_3366->g_280.z", print_hash_value);
    transparent_crc(p_3366->g_283.x, "p_3366->g_283.x", print_hash_value);
    transparent_crc(p_3366->g_283.y, "p_3366->g_283.y", print_hash_value);
    transparent_crc(p_3366->g_283.z, "p_3366->g_283.z", print_hash_value);
    transparent_crc(p_3366->g_283.w, "p_3366->g_283.w", print_hash_value);
    transparent_crc(p_3366->g_364.x, "p_3366->g_364.x", print_hash_value);
    transparent_crc(p_3366->g_367.x, "p_3366->g_367.x", print_hash_value);
    transparent_crc(p_3366->g_401, "p_3366->g_401", print_hash_value);
    transparent_crc(p_3366->g_411.x, "p_3366->g_411.x", print_hash_value);
    transparent_crc(p_3366->g_411.y, "p_3366->g_411.y", print_hash_value);
    transparent_crc(p_3366->g_457, "p_3366->g_457", print_hash_value);
    transparent_crc(p_3366->g_507.x, "p_3366->g_507.x", print_hash_value);
    transparent_crc(p_3366->g_507.y, "p_3366->g_507.y", print_hash_value);
    transparent_crc(p_3366->g_507.z, "p_3366->g_507.z", print_hash_value);
    transparent_crc(p_3366->g_507.w, "p_3366->g_507.w", print_hash_value);
    transparent_crc(p_3366->g_555.x, "p_3366->g_555.x", print_hash_value);
    transparent_crc(p_3366->g_555.y, "p_3366->g_555.y", print_hash_value);
    transparent_crc(p_3366->g_555.z, "p_3366->g_555.z", print_hash_value);
    transparent_crc(p_3366->g_558.x, "p_3366->g_558.x", print_hash_value);
    transparent_crc(p_3366->g_558.y, "p_3366->g_558.y", print_hash_value);
    transparent_crc(p_3366->g_558.z, "p_3366->g_558.z", print_hash_value);
    transparent_crc(p_3366->g_560.x, "p_3366->g_560.x", print_hash_value);
    transparent_crc(p_3366->g_560.y, "p_3366->g_560.y", print_hash_value);
    transparent_crc(p_3366->g_561.x, "p_3366->g_561.x", print_hash_value);
    transparent_crc(p_3366->g_596.x, "p_3366->g_596.x", print_hash_value);
    transparent_crc(p_3366->g_605.x, "p_3366->g_605.x", print_hash_value);
    transparent_crc(p_3366->g_615.x, "p_3366->g_615.x", print_hash_value);
    transparent_crc(p_3366->g_615.y, "p_3366->g_615.y", print_hash_value);
    transparent_crc(p_3366->g_615.z, "p_3366->g_615.z", print_hash_value);
    transparent_crc(p_3366->g_615.w, "p_3366->g_615.w", print_hash_value);
    transparent_crc(p_3366->g_623.x, "p_3366->g_623.x", print_hash_value);
    transparent_crc(p_3366->g_623.y, "p_3366->g_623.y", print_hash_value);
    transparent_crc(p_3366->g_623.z, "p_3366->g_623.z", print_hash_value);
    transparent_crc(p_3366->g_623.w, "p_3366->g_623.w", print_hash_value);
    transparent_crc(p_3366->g_638.x, "p_3366->g_638.x", print_hash_value);
    transparent_crc(p_3366->g_638.y, "p_3366->g_638.y", print_hash_value);
    transparent_crc(p_3366->g_638.z, "p_3366->g_638.z", print_hash_value);
    transparent_crc(p_3366->g_638.w, "p_3366->g_638.w", print_hash_value);
    transparent_crc(p_3366->g_683.x, "p_3366->g_683.x", print_hash_value);
    transparent_crc(p_3366->g_683.y, "p_3366->g_683.y", print_hash_value);
    transparent_crc(p_3366->g_683.z, "p_3366->g_683.z", print_hash_value);
    transparent_crc(p_3366->g_683.w, "p_3366->g_683.w", print_hash_value);
    transparent_crc(p_3366->g_754.x, "p_3366->g_754.x", print_hash_value);
    transparent_crc(p_3366->g_754.y, "p_3366->g_754.y", print_hash_value);
    transparent_crc(p_3366->g_754.z, "p_3366->g_754.z", print_hash_value);
    transparent_crc(p_3366->g_886, "p_3366->g_886", print_hash_value);
    transparent_crc(p_3366->g_908.x, "p_3366->g_908.x", print_hash_value);
    transparent_crc(p_3366->g_908.y, "p_3366->g_908.y", print_hash_value);
    transparent_crc(p_3366->g_916.x, "p_3366->g_916.x", print_hash_value);
    transparent_crc(p_3366->g_916.y, "p_3366->g_916.y", print_hash_value);
    transparent_crc(p_3366->g_940.x, "p_3366->g_940.x", print_hash_value);
    transparent_crc(p_3366->g_940.y, "p_3366->g_940.y", print_hash_value);
    transparent_crc(p_3366->g_940.z, "p_3366->g_940.z", print_hash_value);
    transparent_crc(p_3366->g_940.w, "p_3366->g_940.w", print_hash_value);
    transparent_crc(p_3366->g_974, "p_3366->g_974", print_hash_value);
    transparent_crc(p_3366->g_1004.x, "p_3366->g_1004.x", print_hash_value);
    transparent_crc(p_3366->g_1004.y, "p_3366->g_1004.y", print_hash_value);
    transparent_crc(p_3366->g_1004.z, "p_3366->g_1004.z", print_hash_value);
    transparent_crc(p_3366->g_1047, "p_3366->g_1047", print_hash_value);
    transparent_crc(p_3366->g_1058.x, "p_3366->g_1058.x", print_hash_value);
    transparent_crc(p_3366->g_1058.y, "p_3366->g_1058.y", print_hash_value);
    transparent_crc(p_3366->g_1058.z, "p_3366->g_1058.z", print_hash_value);
    transparent_crc(p_3366->g_1058.w, "p_3366->g_1058.w", print_hash_value);
    transparent_crc(p_3366->g_1078.x, "p_3366->g_1078.x", print_hash_value);
    transparent_crc(p_3366->g_1078.y, "p_3366->g_1078.y", print_hash_value);
    transparent_crc(p_3366->g_1101.x, "p_3366->g_1101.x", print_hash_value);
    transparent_crc(p_3366->g_1101.y, "p_3366->g_1101.y", print_hash_value);
    transparent_crc(p_3366->g_1101.z, "p_3366->g_1101.z", print_hash_value);
    transparent_crc(p_3366->g_1153.x, "p_3366->g_1153.x", print_hash_value);
    transparent_crc(p_3366->g_1153.y, "p_3366->g_1153.y", print_hash_value);
    transparent_crc(p_3366->g_1153.z, "p_3366->g_1153.z", print_hash_value);
    transparent_crc(p_3366->g_1153.w, "p_3366->g_1153.w", print_hash_value);
    transparent_crc(p_3366->g_1222.x, "p_3366->g_1222.x", print_hash_value);
    transparent_crc(p_3366->g_1264, "p_3366->g_1264", print_hash_value);
    transparent_crc(p_3366->g_1372.x, "p_3366->g_1372.x", print_hash_value);
    transparent_crc(p_3366->g_1372.y, "p_3366->g_1372.y", print_hash_value);
    transparent_crc(p_3366->g_1372.z, "p_3366->g_1372.z", print_hash_value);
    transparent_crc(p_3366->g_1372.w, "p_3366->g_1372.w", print_hash_value);
    transparent_crc(p_3366->g_1382.x, "p_3366->g_1382.x", print_hash_value);
    transparent_crc(p_3366->g_1382.y, "p_3366->g_1382.y", print_hash_value);
    transparent_crc(p_3366->g_1404.x, "p_3366->g_1404.x", print_hash_value);
    transparent_crc(p_3366->g_1404.y, "p_3366->g_1404.y", print_hash_value);
    transparent_crc(p_3366->g_1418.x, "p_3366->g_1418.x", print_hash_value);
    transparent_crc(p_3366->g_1418.y, "p_3366->g_1418.y", print_hash_value);
    transparent_crc(p_3366->g_1420.x, "p_3366->g_1420.x", print_hash_value);
    transparent_crc(p_3366->g_1420.y, "p_3366->g_1420.y", print_hash_value);
    transparent_crc(p_3366->g_1421.x, "p_3366->g_1421.x", print_hash_value);
    transparent_crc(p_3366->g_1421.y, "p_3366->g_1421.y", print_hash_value);
    transparent_crc(p_3366->g_1446.x, "p_3366->g_1446.x", print_hash_value);
    transparent_crc(p_3366->g_1446.y, "p_3366->g_1446.y", print_hash_value);
    transparent_crc(p_3366->g_1446.z, "p_3366->g_1446.z", print_hash_value);
    transparent_crc(p_3366->g_1579, "p_3366->g_1579", print_hash_value);
    transparent_crc(p_3366->g_1617.x, "p_3366->g_1617.x", print_hash_value);
    transparent_crc(p_3366->g_1617.y, "p_3366->g_1617.y", print_hash_value);
    transparent_crc(p_3366->g_1617.z, "p_3366->g_1617.z", print_hash_value);
    transparent_crc(p_3366->g_1617.w, "p_3366->g_1617.w", print_hash_value);
    transparent_crc(p_3366->g_1631.x, "p_3366->g_1631.x", print_hash_value);
    transparent_crc(p_3366->g_1631.y, "p_3366->g_1631.y", print_hash_value);
    transparent_crc(p_3366->g_1631.z, "p_3366->g_1631.z", print_hash_value);
    transparent_crc(p_3366->g_1631.w, "p_3366->g_1631.w", print_hash_value);
    transparent_crc(p_3366->g_1633.x, "p_3366->g_1633.x", print_hash_value);
    transparent_crc(p_3366->g_1633.y, "p_3366->g_1633.y", print_hash_value);
    transparent_crc(p_3366->g_1636.x, "p_3366->g_1636.x", print_hash_value);
    transparent_crc(p_3366->g_1636.y, "p_3366->g_1636.y", print_hash_value);
    transparent_crc(p_3366->g_1661.x, "p_3366->g_1661.x", print_hash_value);
    transparent_crc(p_3366->g_1661.y, "p_3366->g_1661.y", print_hash_value);
    transparent_crc(p_3366->g_1661.z, "p_3366->g_1661.z", print_hash_value);
    transparent_crc(p_3366->g_1661.w, "p_3366->g_1661.w", print_hash_value);
    transparent_crc(p_3366->g_1667.x, "p_3366->g_1667.x", print_hash_value);
    transparent_crc(p_3366->g_1667.y, "p_3366->g_1667.y", print_hash_value);
    transparent_crc(p_3366->g_1679.x, "p_3366->g_1679.x", print_hash_value);
    transparent_crc(p_3366->g_1679.y, "p_3366->g_1679.y", print_hash_value);
    transparent_crc(p_3366->g_1679.z, "p_3366->g_1679.z", print_hash_value);
    transparent_crc(p_3366->g_1700, "p_3366->g_1700", print_hash_value);
    transparent_crc(p_3366->g_1706, "p_3366->g_1706", print_hash_value);
    transparent_crc(p_3366->g_1770.x, "p_3366->g_1770.x", print_hash_value);
    transparent_crc(p_3366->g_1770.y, "p_3366->g_1770.y", print_hash_value);
    transparent_crc(p_3366->g_1780.x, "p_3366->g_1780.x", print_hash_value);
    transparent_crc(p_3366->g_1780.y, "p_3366->g_1780.y", print_hash_value);
    transparent_crc(p_3366->g_1780.z, "p_3366->g_1780.z", print_hash_value);
    transparent_crc(p_3366->g_1782.x, "p_3366->g_1782.x", print_hash_value);
    transparent_crc(p_3366->g_1782.y, "p_3366->g_1782.y", print_hash_value);
    transparent_crc(p_3366->g_1782.z, "p_3366->g_1782.z", print_hash_value);
    transparent_crc(p_3366->g_1782.w, "p_3366->g_1782.w", print_hash_value);
    transparent_crc(p_3366->g_1839.x, "p_3366->g_1839.x", print_hash_value);
    transparent_crc(p_3366->g_1839.y, "p_3366->g_1839.y", print_hash_value);
    transparent_crc(p_3366->g_1890.x, "p_3366->g_1890.x", print_hash_value);
    transparent_crc(p_3366->g_1890.y, "p_3366->g_1890.y", print_hash_value);
    transparent_crc(p_3366->g_1890.z, "p_3366->g_1890.z", print_hash_value);
    transparent_crc(p_3366->g_1890.w, "p_3366->g_1890.w", print_hash_value);
    transparent_crc(p_3366->g_1891.x, "p_3366->g_1891.x", print_hash_value);
    transparent_crc(p_3366->g_1898.x, "p_3366->g_1898.x", print_hash_value);
    transparent_crc(p_3366->g_1904.x, "p_3366->g_1904.x", print_hash_value);
    transparent_crc(p_3366->g_1904.y, "p_3366->g_1904.y", print_hash_value);
    transparent_crc(p_3366->g_1904.z, "p_3366->g_1904.z", print_hash_value);
    transparent_crc(p_3366->g_1923.x, "p_3366->g_1923.x", print_hash_value);
    transparent_crc(p_3366->g_1923.y, "p_3366->g_1923.y", print_hash_value);
    transparent_crc(p_3366->g_1923.z, "p_3366->g_1923.z", print_hash_value);
    transparent_crc(p_3366->g_1931.x, "p_3366->g_1931.x", print_hash_value);
    transparent_crc(p_3366->g_1996.x, "p_3366->g_1996.x", print_hash_value);
    transparent_crc(p_3366->g_2072, "p_3366->g_2072", print_hash_value);
    transparent_crc(p_3366->g_2112.x, "p_3366->g_2112.x", print_hash_value);
    transparent_crc(p_3366->g_2112.y, "p_3366->g_2112.y", print_hash_value);
    transparent_crc(p_3366->g_2113.x, "p_3366->g_2113.x", print_hash_value);
    transparent_crc(p_3366->g_2113.y, "p_3366->g_2113.y", print_hash_value);
    transparent_crc(p_3366->g_2113.z, "p_3366->g_2113.z", print_hash_value);
    transparent_crc(p_3366->g_2154.x, "p_3366->g_2154.x", print_hash_value);
    transparent_crc(p_3366->g_2154.y, "p_3366->g_2154.y", print_hash_value);
    transparent_crc(p_3366->g_2154.z, "p_3366->g_2154.z", print_hash_value);
    transparent_crc(p_3366->g_2208.x, "p_3366->g_2208.x", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            transparent_crc(p_3366->g_2306[i][j], "p_3366->g_2306[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3366->g_2344.x, "p_3366->g_2344.x", print_hash_value);
    transparent_crc(p_3366->g_2344.y, "p_3366->g_2344.y", print_hash_value);
    transparent_crc(p_3366->g_2409, "p_3366->g_2409", print_hash_value);
    transparent_crc(p_3366->g_2427.x, "p_3366->g_2427.x", print_hash_value);
    transparent_crc(p_3366->g_2427.y, "p_3366->g_2427.y", print_hash_value);
    transparent_crc(p_3366->g_2427.z, "p_3366->g_2427.z", print_hash_value);
    transparent_crc(p_3366->g_2427.w, "p_3366->g_2427.w", print_hash_value);
    transparent_crc(p_3366->g_2441.x, "p_3366->g_2441.x", print_hash_value);
    transparent_crc(p_3366->g_2441.y, "p_3366->g_2441.y", print_hash_value);
    transparent_crc(p_3366->g_2458.x, "p_3366->g_2458.x", print_hash_value);
    transparent_crc(p_3366->g_2458.y, "p_3366->g_2458.y", print_hash_value);
    transparent_crc(p_3366->g_2458.z, "p_3366->g_2458.z", print_hash_value);
    transparent_crc(p_3366->g_2458.w, "p_3366->g_2458.w", print_hash_value);
    transparent_crc(p_3366->g_2552.x, "p_3366->g_2552.x", print_hash_value);
    transparent_crc(p_3366->g_2552.y, "p_3366->g_2552.y", print_hash_value);
    transparent_crc(p_3366->g_2552.z, "p_3366->g_2552.z", print_hash_value);
    transparent_crc(p_3366->g_2552.w, "p_3366->g_2552.w", print_hash_value);
    transparent_crc(p_3366->g_2563.x, "p_3366->g_2563.x", print_hash_value);
    transparent_crc(p_3366->g_2604.x, "p_3366->g_2604.x", print_hash_value);
    transparent_crc(p_3366->g_2604.y, "p_3366->g_2604.y", print_hash_value);
    transparent_crc(p_3366->g_2604.z, "p_3366->g_2604.z", print_hash_value);
    transparent_crc(p_3366->g_2604.w, "p_3366->g_2604.w", print_hash_value);
    transparent_crc(p_3366->g_2618.f0, "p_3366->g_2618.f0", print_hash_value);
    transparent_crc(p_3366->g_2618.f1, "p_3366->g_2618.f1", print_hash_value);
    transparent_crc(p_3366->g_2618.f2, "p_3366->g_2618.f2", print_hash_value);
    transparent_crc(p_3366->g_2618.f3, "p_3366->g_2618.f3", print_hash_value);
    transparent_crc(p_3366->g_2618.f4, "p_3366->g_2618.f4", print_hash_value);
    transparent_crc(p_3366->g_2682.x, "p_3366->g_2682.x", print_hash_value);
    transparent_crc(p_3366->g_2682.y, "p_3366->g_2682.y", print_hash_value);
    transparent_crc(p_3366->g_2682.z, "p_3366->g_2682.z", print_hash_value);
    transparent_crc(p_3366->g_2682.w, "p_3366->g_2682.w", print_hash_value);
    transparent_crc(p_3366->g_2744.x, "p_3366->g_2744.x", print_hash_value);
    transparent_crc(p_3366->g_2744.y, "p_3366->g_2744.y", print_hash_value);
    transparent_crc(p_3366->g_2744.z, "p_3366->g_2744.z", print_hash_value);
    transparent_crc(p_3366->g_2806.x, "p_3366->g_2806.x", print_hash_value);
    transparent_crc(p_3366->g_2806.y, "p_3366->g_2806.y", print_hash_value);
    transparent_crc(p_3366->g_2873.x, "p_3366->g_2873.x", print_hash_value);
    transparent_crc(p_3366->g_2873.y, "p_3366->g_2873.y", print_hash_value);
    transparent_crc(p_3366->g_2873.z, "p_3366->g_2873.z", print_hash_value);
    transparent_crc(p_3366->g_2890.x, "p_3366->g_2890.x", print_hash_value);
    transparent_crc(p_3366->g_2890.y, "p_3366->g_2890.y", print_hash_value);
    transparent_crc(p_3366->g_2919.x, "p_3366->g_2919.x", print_hash_value);
    transparent_crc(p_3366->g_2930.x, "p_3366->g_2930.x", print_hash_value);
    transparent_crc(p_3366->g_2930.y, "p_3366->g_2930.y", print_hash_value);
    transparent_crc(p_3366->g_2930.z, "p_3366->g_2930.z", print_hash_value);
    transparent_crc(p_3366->g_2930.w, "p_3366->g_2930.w", print_hash_value);
    transparent_crc(p_3366->g_2931.x, "p_3366->g_2931.x", print_hash_value);
    transparent_crc(p_3366->g_2931.y, "p_3366->g_2931.y", print_hash_value);
    transparent_crc(p_3366->g_2931.z, "p_3366->g_2931.z", print_hash_value);
    transparent_crc(p_3366->g_2931.w, "p_3366->g_2931.w", print_hash_value);
    transparent_crc(p_3366->g_2948.x, "p_3366->g_2948.x", print_hash_value);
    transparent_crc(p_3366->g_2948.y, "p_3366->g_2948.y", print_hash_value);
    transparent_crc(p_3366->g_2948.z, "p_3366->g_2948.z", print_hash_value);
    transparent_crc(p_3366->g_2948.w, "p_3366->g_2948.w", print_hash_value);
    transparent_crc(p_3366->g_2973.x, "p_3366->g_2973.x", print_hash_value);
    transparent_crc(p_3366->g_3065.x, "p_3366->g_3065.x", print_hash_value);
    transparent_crc(p_3366->g_3065.y, "p_3366->g_3065.y", print_hash_value);
    transparent_crc(p_3366->g_3065.z, "p_3366->g_3065.z", print_hash_value);
    transparent_crc(p_3366->g_3066.x, "p_3366->g_3066.x", print_hash_value);
    transparent_crc(p_3366->g_3066.y, "p_3366->g_3066.y", print_hash_value);
    transparent_crc(p_3366->g_3066.z, "p_3366->g_3066.z", print_hash_value);
    transparent_crc(p_3366->g_3075.x, "p_3366->g_3075.x", print_hash_value);
    transparent_crc(p_3366->g_3075.y, "p_3366->g_3075.y", print_hash_value);
    transparent_crc(p_3366->g_3075.z, "p_3366->g_3075.z", print_hash_value);
    transparent_crc(p_3366->g_3075.w, "p_3366->g_3075.w", print_hash_value);
    transparent_crc(p_3366->g_3093.x, "p_3366->g_3093.x", print_hash_value);
    transparent_crc(p_3366->g_3093.y, "p_3366->g_3093.y", print_hash_value);
    transparent_crc(p_3366->g_3094.x, "p_3366->g_3094.x", print_hash_value);
    transparent_crc(p_3366->g_3094.y, "p_3366->g_3094.y", print_hash_value);
    transparent_crc(p_3366->g_3094.z, "p_3366->g_3094.z", print_hash_value);
    transparent_crc(p_3366->g_3094.w, "p_3366->g_3094.w", print_hash_value);
    transparent_crc(p_3366->g_3095.x, "p_3366->g_3095.x", print_hash_value);
    transparent_crc(p_3366->g_3095.y, "p_3366->g_3095.y", print_hash_value);
    transparent_crc(p_3366->g_3095.z, "p_3366->g_3095.z", print_hash_value);
    transparent_crc(p_3366->g_3138, "p_3366->g_3138", print_hash_value);
    transparent_crc(p_3366->g_3161.x, "p_3366->g_3161.x", print_hash_value);
    transparent_crc(p_3366->g_3161.y, "p_3366->g_3161.y", print_hash_value);
    transparent_crc(p_3366->g_3161.z, "p_3366->g_3161.z", print_hash_value);
    transparent_crc(p_3366->g_3161.w, "p_3366->g_3161.w", print_hash_value);
    transparent_crc(p_3366->g_3172.x, "p_3366->g_3172.x", print_hash_value);
    transparent_crc(p_3366->g_3172.y, "p_3366->g_3172.y", print_hash_value);
    transparent_crc(p_3366->g_3172.z, "p_3366->g_3172.z", print_hash_value);
    transparent_crc(p_3366->g_3173.x, "p_3366->g_3173.x", print_hash_value);
    transparent_crc(p_3366->g_3173.y, "p_3366->g_3173.y", print_hash_value);
    transparent_crc(p_3366->g_3173.z, "p_3366->g_3173.z", print_hash_value);
    transparent_crc(p_3366->g_3173.w, "p_3366->g_3173.w", print_hash_value);
    transparent_crc(p_3366->g_3174.x, "p_3366->g_3174.x", print_hash_value);
    transparent_crc(p_3366->g_3174.y, "p_3366->g_3174.y", print_hash_value);
    transparent_crc(p_3366->g_3174.z, "p_3366->g_3174.z", print_hash_value);
    transparent_crc(p_3366->g_3187.x, "p_3366->g_3187.x", print_hash_value);
    transparent_crc(p_3366->g_3192, "p_3366->g_3192", print_hash_value);
    transparent_crc(p_3366->g_3223.x, "p_3366->g_3223.x", print_hash_value);
    transparent_crc(p_3366->g_3238.x, "p_3366->g_3238.x", print_hash_value);
    transparent_crc(p_3366->g_3253.x, "p_3366->g_3253.x", print_hash_value);
    transparent_crc(p_3366->g_3254.x, "p_3366->g_3254.x", print_hash_value);
    transparent_crc(p_3366->g_3254.y, "p_3366->g_3254.y", print_hash_value);
    transparent_crc(p_3366->g_3295.x, "p_3366->g_3295.x", print_hash_value);
    transparent_crc(p_3366->g_3295.y, "p_3366->g_3295.y", print_hash_value);
    transparent_crc(p_3366->g_3295.z, "p_3366->g_3295.z", print_hash_value);
    transparent_crc(p_3366->g_3306.x, "p_3366->g_3306.x", print_hash_value);
    transparent_crc(p_3366->g_3306.y, "p_3366->g_3306.y", print_hash_value);
    transparent_crc(p_3366->g_3306.z, "p_3366->g_3306.z", print_hash_value);
    transparent_crc(p_3366->g_3310.x, "p_3366->g_3310.x", print_hash_value);
    transparent_crc(p_3366->g_3310.y, "p_3366->g_3310.y", print_hash_value);
    transparent_crc(p_3366->g_3310.z, "p_3366->g_3310.z", print_hash_value);
    transparent_crc(p_3366->g_3314.x, "p_3366->g_3314.x", print_hash_value);
    transparent_crc(p_3366->g_3336.x, "p_3366->g_3336.x", print_hash_value);
    transparent_crc(p_3366->g_3336.y, "p_3366->g_3336.y", print_hash_value);
    transparent_crc(p_3366->g_3336.z, "p_3366->g_3336.z", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

