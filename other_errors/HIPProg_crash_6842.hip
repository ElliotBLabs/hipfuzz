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
// Seed: 299793952

/* --- Struct/Union Declarations --- */
struct S0 {
   unsigned f0 : 10;
   signed f1 : 12;
   signed f2 : 24;
   unsigned f3 : 13;
   signed f4 : 19;
   unsigned f5 : 16;
   unsigned f6 : 28;
};

union U1 {
   int64_t  f0;
   uint32_t  f1;
   int64_t  f2;
   unsigned f3 : 13;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ struct S0 hip_const_1;
__constant__ int8_t hip_const_2;
__constant__ uint8_t hip_const_3;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        struct S0 host_hip_const_1 = {26,-26,539,40,714,231,8554};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        int8_t host_hip_const_2 = 3L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        uint8_t host_hip_const_3 = 0x18L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
}

struct S2 {
    struct S0 g_4;
    int32_t g_5;
    int32_t g_10;
    int32_t g_12;
    int32_t g_14;
    int32_t *g_20;
    int32_t **g_19;
    union U1 g_62;
    uchar2 g_87;
    long2 g_116;
    int64_t g_130;
    int32_t *g_134;
    uint3 g_148;
    int16_t g_163;
    int16_t *g_162[1];
    uint32_t g_167[6][1][3];
    union U1 g_176;
    int64_t *g_180;
    int64_t *g_202[8];
    uint32_t g_223;
    ushort2 g_241;
    ushort2 g_242;
    ushort3 g_244;
    uchar2 g_274;
    char2 g_280;
    char3 g_281;
    uchar1 g_299;
    uint32_t *g_340;
    uint32_t **g_339;
    uint32_t ***g_338;
    uint64_t g_353;
    int64_t g_427;
    int32_t g_428;
    int64_t g_429;
    int64_t g_430;
    int16_t g_431;
    uint32_t g_432;
    int32_t g_443;
    uint8_t g_444;
    int8_t g_460;
    int32_t g_461;
    int32_t g_462;
    uint32_t ****g_471;
    uint32_t *****g_470;
    ushort1 g_490;
    uchar4 g_604;
    uint16_t *g_645;
    long3 g_684;
    uint32_t g_696;
    uint3 g_699;
    uchar3 g_725;
    int64_t g_745;
    uchar4 g_753;
    ulong1 g_761;
    uchar3 g_785;
    uint32_t **g_792[4][10];
    ulong2 g_806;
    uchar4 g_829;
    ulong3 g_877;
    int1 g_883;
    int64_t **g_907;
    int64_t ***g_906;
    union U1 *g_912;
    union U1 **g_911;
    ulong1 g_982;
    int1 g_993;
    char4 g_995;
    char1 g_996;
    long4 g_1006;
    int32_t ***g_1031[1][10];
    int32_t ****g_1030[6][7];
    uint2 g_1040;
    long3 g_1086;
    uchar1 g_1089;
    uint1 g_1103;
    long2 g_1132;
    int2 g_1149;
    uint3 g_1160;
    uint4 g_1161;
    short2 g_1182;
    short4 g_1183;
    uchar4 g_1189;
    int32_t *g_1259;
    ulong3 g_1272;
    uchar1 g_1324;
    uchar3 g_1325;
    long4 g_1356;
    int8_t *g_1369;
    int8_t **g_1368[5];
    long4 g_1389;
    ulong4 g_1393;
    ulong4 g_1394;
    ulong2 g_1413;
    uint32_t g_1438;
    ushort2 g_1449;
    int3 g_1464;
    uint3 g_1495;
    struct S0 *g_1501;
    struct S0 **g_1500;
    struct S0 ***g_1499;
    ushort2 g_1576;
    char1 g_1620;
    int32_t g_1658;
    uint2 g_1681;
    uint1 g_1682;
    ulong1 g_1696;
    int2 g_1730;
    int4 g_1731;
    int8_t g_1749;
    uint8_t g_1750[3];
    char3 g_1767;
    uchar4 g_1792;
    int32_t *****g_1814;
    ulong1 g_1824;
    int4 g_1831;
    int1 g_1832;
    int32_t *g_1836;
    int32_t **g_1835;
    short4 g_1877;
    uint4 g_1904;
    uint8_t g_1953[1];
    int2 g_1959;
    short2 g_2011;
    short4 g_2012;
    long3 g_2036;
    int1 g_2039;
    uint8_t g_2053;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S2 * p_2057);
__device__ int32_t ** func_17(int32_t ** p_18, struct S2 * p_2057);
__device__ int32_t *** func_25(uint16_t  p_26, int32_t ** p_27, int32_t  p_28, int32_t  p_29, int32_t  p_30, struct S2 * p_2057);
__device__ int16_t  func_31(uint8_t  p_32, int16_t  p_33, struct S0 * p_34, int32_t ** p_35, struct S2 * p_2057);
__device__ uint8_t  func_36(int32_t * p_37, struct S0 * p_38, uint64_t  p_39, int32_t  p_40, struct S2 * p_2057);
__device__ int32_t * func_41(union U1  p_42, int16_t  p_43, struct S2 * p_2057);
__device__ union U1  func_44(int32_t *** p_45, uint8_t  p_46, uint32_t  p_47, union U1  p_48, struct S2 * p_2057);
__device__ uint64_t  func_51(int16_t  p_52, int32_t ** p_53, uint8_t  p_54, int32_t ** p_55, int64_t  p_56, struct S2 * p_2057);
__device__ int16_t  func_57(uint32_t  p_58, uint32_t  p_59, union U1  p_60, int8_t  p_61, struct S2 * p_2057);
__device__ int32_t * func_64(uint8_t  p_65, int32_t ** p_66, int32_t *** p_67, uint64_t  p_68, struct S2 * p_2057);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2057->g_5 p_2057->g_4.f3 p_2057->g_19 p_2057->g_10 p_2057->g_20 p_2057->g_62 p_2057->g_4.f4 p_2057->g_87 p_2057->g_4.f1 p_2057->g_62.f0 hip_const_1.f0 hip_const_1.f5 p_2057->g_116 hip_const_1.f2 p_2057->g_4.f5 p_2057->g_12 p_2057->g_148 p_2057->g_162 p_2057->g_167 p_2057->g_176 p_2057->g_4.f2 p_2057->g_223 p_2057->g_241 p_2057->g_242 p_2057->g_244 hip_const_2 hip_const_3 p_2057->g_274 p_2057->g_280 p_2057->g_281 p_2057->g_4.f6 p_2057->g_299 p_2057->g_134 p_2057->g_338 hip_const_1.f3 p_2057->g_340 p_2057->g_4.f0 hip_const_1 p_2057->g_432 p_2057->g_444 p_2057->g_470 p_2057->g_339 p_2057->g_427 p_2057->g_429 p_2057->g_431 p_2057->g_62.f2 p_2057->g_471 p_2057->g_353 p_2057->g_604 p_2057->g_645 p_2057->g_163 p_2057->g_14 p_2057->g_684 p_2057->g_696 p_2057->g_699 p_2057->g_460 p_2057->g_725 p_2057->g_428 p_2057->g_745 p_2057->g_785 p_2057->g_806 p_2057->g_829 p_2057->g_877 p_2057->g_883 p_2057->g_906 p_2057->g_911 p_2057->g_982 p_2057->g_490 p_2057->g_993 p_2057->g_995 p_2057->g_996 p_2057->g_912 p_2057->g_753 p_2057->g_1006 p_2057->g_4 p_2057->g_1030 p_2057->g_1040 p_2057->g_202 p_2057->g_907 p_2057->g_1086 p_2057->g_1089 p_2057->g_443 p_2057->g_1103 p_2057->g_1272 p_2057->g_1189 p_2057->g_461 p_2057->g_1438 p_2057->g_761 p_2057->g_1449 p_2057->g_176.f2 p_2057->g_1259 p_2057->g_1464 p_2057->g_1495 p_2057->g_1499 p_2057->g_1369 p_2057->g_1160 p_2057->g_1356 p_2057->g_1500 p_2057->g_1501 p_2057->g_1576 p_2057->g_1389 p_2057->g_1620 p_2057->g_1161 p_2057->g_1681 p_2057->g_1682 p_2057->g_1696 p_2057->g_1730 p_2057->g_1731 p_2057->g_1325 p_2057->g_1750 p_2057->g_1658 p_2057->g_1767 p_2057->g_462 p_2057->g_1959 p_2057->g_2053 p_2057->g_1835 p_2057->g_1836
 * writes: p_2057->g_4 p_2057->g_5 p_2057->g_10 p_2057->g_12 p_2057->g_14 p_2057->g_62.f0 p_2057->g_19 p_2057->g_130 p_2057->g_20 p_2057->g_134 p_2057->g_167 p_2057->g_180 p_2057->g_202 p_2057->g_223 p_2057->g_163 p_2057->g_241 p_2057->g_338 p_2057->g_353 p_2057->g_274 p_2057->g_244 p_2057->g_432 p_2057->g_444 p_2057->g_62 p_2057->g_176.f0 p_2057->g_87 p_2057->g_460 p_2057->g_604 p_2057->g_725 p_2057->g_428 p_2057->g_429 p_2057->g_471 p_2057->g_339 p_2057->g_792 p_2057->g_745 p_2057->g_280 p_2057->g_176 p_2057->g_877 p_2057->g_431 p_2057->g_907 p_2057->g_995 p_2057->g_461 p_2057->g_443 p_2057->g_761 p_2057->g_1438 p_2057->g_696 p_2057->g_912 p_2057->g_785 p_2057->g_1750 p_2057->g_1393 p_2057->g_1272 p_2057->g_1369 p_2057->g_462 p_2057->g_427 p_2057->g_1501 p_2057->g_2053 p_2057->g_1259
 */
__device__ uint32_t  func_1(struct S2 * p_2057)
{ /* block id: 0 */
    struct S0 l_2[7][6] = {{{20,-28,-1639,33,504,97,9458}, {9,-14,-3415,60,-392,81,7587}, {16,1,117,87,311,8,12995}, {9,-14,-3415,60,-392,81,7587}, {20,-28,-1639,33,504,97,9458}, {15,-35,-2470,34,385,64,3527}}, {{20,-28,-1639,33,504,97,9458}, {9,-14,-3415,60,-392,81,7587}, {16,1,117,87,311,8,12995}, {9,-14,-3415,60,-392,81,7587}, {20,-28,-1639,33,504,97,9458}, {15,-35,-2470,34,385,64,3527}}, {{20,-28,-1639,33,504,97,9458}, {9,-14,-3415,60,-392,81,7587}, {16,1,117,87,311,8,12995}, {9,-14,-3415,60,-392,81,7587}, {20,-28,-1639,33,504,97,9458}, {15,-35,-2470,34,385,64,3527}}, {{20,-28,-1639,33,504,97,9458}, {9,-14,-3415,60,-392,81,7587}, {16,1,117,87,311,8,12995}, {9,-14,-3415,60,-392,81,7587}, {20,-28,-1639,33,504,97,9458}, {15,-35,-2470,34,385,64,3527}}, {{20,-28,-1639,33,504,97,9458}, {9,-14,-3415,60,-392,81,7587}, {16,1,117,87,311,8,12995}, {9,-14,-3415,60,-392,81,7587}, {20,-28,-1639,33,504,97,9458}, {15,-35,-2470,34,385,64,3527}}, {{20,-28,-1639,33,504,97,9458}, {9,-14,-3415,60,-392,81,7587}, {16,1,117,87,311,8,12995}, {9,-14,-3415,60,-392,81,7587}, {20,-28,-1639,33,504,97,9458}, {15,-35,-2470,34,385,64,3527}}, {{20,-28,-1639,33,504,97,9458}, {9,-14,-3415,60,-392,81,7587}, {16,1,117,87,311,8,12995}, {9,-14,-3415,60,-392,81,7587}, {20,-28,-1639,33,504,97,9458}, {15,-35,-2470,34,385,64,3527}}};
    // attempting a hip shared for loop
    __shared__ struct S0 *l_3[8];
    for (int i = 0; i < 8; i++)
        l_3[i] = &l_2[5][4];
    int32_t *l_8 = &p_2057->g_5;
    int32_t **l_24 = nullptr;
    uint32_t l_63 = 0x95B172C6L;
    int64_t l_1572 = 0xD995CABCEDC95D73LL;
    uint64_t l_1977 = 0xBE8C4C8185F2E246LL;
    int32_t **l_1978 = &p_2057->g_1259;
    int16_t l_1979 = 0x3961L;
    uint64_t l_1980 = 18446744073709551609UL;
    int32_t ***l_2055 = nullptr;
    int32_t **l_2056 = &p_2057->g_134;
    int i, j;
    p_2057->g_4 = l_2[0][4];
    for (p_2057->g_5 = 0; (p_2057->g_5 == 24); p_2057->g_5++)
    { /* block id: 4 */
        int32_t *l_9 = &p_2057->g_10;
        int32_t *l_11 = &p_2057->g_12;
        int32_t *l_13[5];
        int i;
        for (int i = 0; i < 5; i++)
            l_13[i] = &p_2057->g_14;
        l_9 = l_8;
        l_2[0][4].f2 |= ((*l_11) = (p_2057->g_10 = 1L));
        if (p_2057->g_4.f3)
            continue;
        for (p_2057->g_14 = 14; (p_2057->g_14 != 26); ++p_2057->g_14)
        { /* block id: 12 */
            l_24 = func_17(p_2057->g_19, p_2057);
        }
    }
    l_2055 = func_25(((func_31(func_36(func_41(func_44(&l_24, ((safe_rshift_func_uint32_t_u_u((*l_8), 28)) & func_51((&l_2[0][4] == &hip_const_1), &p_2057->g_20, (func_57((*l_8), (l_8 != (*p_2057->g_19)), p_2057->g_62, (*l_8), p_2057) , l_63), &l_8, p_2057->g_4.f4, p_2057)), (*l_8), p_2057->g_176, p_2057), l_2[0][4].f2, p_2057), &l_2[6][0], p_2057->g_1356.x, p_2057->g_1040.y, p_2057), l_1572, (**p_2057->g_1499), &l_8, p_2057) || l_1977) , 1UL), l_1978, l_63, l_1979, l_1980, p_2057);
    (*l_2056) = ((**p_2057->g_1835) , ((*l_1978) = (*l_1978)));
    return p_2057->g_761.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_10
 * writes: p_2057->g_10
 */
__device__ int32_t ** func_17(int32_t ** p_18, struct S2 * p_2057)
{ /* block id: 13 */
    int32_t **l_23 = &p_2057->g_20;
    for (p_2057->g_10 = 25; (p_2057->g_10 != (-10)); p_2057->g_10 = safe_sub_func_uint32_t_u_u(p_2057->g_10, 7))
    { /* block id: 16 */
        return &p_2057->g_20;
    }
    return l_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_745 p_2057->g_1259 p_2057->g_5 p_2057->g_353 p_2057->g_1500 p_2057->g_470 p_2057->g_2053
 * writes: p_2057->g_745 p_2057->g_427 p_2057->g_5 p_2057->g_353 p_2057->g_1501 p_2057->g_471 p_2057->g_2053
 */
__device__ int32_t *** func_25(uint16_t  p_26, int32_t ** p_27, int32_t  p_28, int32_t  p_29, int32_t  p_30, struct S2 * p_2057)
{ /* block id: 782 */
    // attempting a hip shared for loop
    __shared__ struct S0 l_1985[6][1];
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 1; j++)
            l_1985[i][j] = {12,1,-351,28,450,134,5480};
    }
    int1 l_1991 = make_int1((-10L));
    int16_t l_1992 = 0xB050L;
    int64_t ****l_2014 = &p_2057->g_906;
    int64_t *****l_2013 = &l_2014;
    uint32_t ****l_2051 = nullptr;
    int32_t ***l_2054 = &p_2057->g_19;
    int i, j;
    for (p_2057->g_745 = 0; (p_2057->g_745 <= (-30)); --p_2057->g_745)
    { /* block id: 785 */
        int8_t *l_2008[10][10] = {{nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}, {nullptr, &hip_const_2, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &p_2057->g_1749, &p_2057->g_1749, &p_2057->g_460}};
        int32_t l_2015[6] = {0xC49DB748L, 0x3999C5EDL, 0xC49DB748L, 0x3999C5EDL, 0xC49DB748L, 0x3999C5EDL};
        struct S0 l_2018 = {15,34,-901,82,-703,156,1923};
        __shared__ int64_t *l_2023;
        l_2023 = nullptr;
        int64_t *l_2024[5][5] = {{&p_2057->g_430, &p_2057->g_130, &p_2057->g_430, nullptr, &p_2057->g_130}, {&p_2057->g_430, &p_2057->g_130, &p_2057->g_430, nullptr, &p_2057->g_130}, {&p_2057->g_430, &p_2057->g_130, &p_2057->g_430, nullptr, &p_2057->g_130}, {&p_2057->g_430, &p_2057->g_130, &p_2057->g_430, nullptr, &p_2057->g_130}, {&p_2057->g_430, &p_2057->g_130, &p_2057->g_430, nullptr, &p_2057->g_130}};
        uint8_t *l_2033 = nullptr;
        uint8_t *l_2034 = nullptr;
        uint8_t *l_2035 = &p_2057->g_444;
        int16_t l_2042 = 1L;
        int32_t ***l_2043 = &p_2057->g_1835;
        uint32_t ****l_2052[7][8] = {{&p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338}, {&p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338}, {&p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338}, {&p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338}, {&p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338}, {&p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338}, {&p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338, &p_2057->g_338}};
        int i, j;
        for (p_2057->g_427 = 19; (p_2057->g_427 > 26); ++p_2057->g_427)
        { /* block id: 788 */
            struct S0 l_1986 = {18,21,-2687,40,-14,65,11428};
            __shared__ uint64_t *l_1997;
            l_1997 = nullptr;
            uint64_t *l_1998 = nullptr;
            uint64_t *l_1999 = nullptr;
            uint64_t *l_2000 = nullptr;
            uint64_t *l_2001 = nullptr;
            uint64_t *l_2002[5] = {nullptr, nullptr, nullptr, nullptr, nullptr};
            int8_t *l_2005 = nullptr;
            int8_t **l_2006 = &p_2057->g_1369;
            int8_t **l_2007 = &p_2057->g_1369;
            int i;
            l_1986 = l_1985[2][0];
            (**p_27) &= ((~make_char3((-1L), p_26, (l_2015[5] = (p_29 | (p_2057->g_299.x != (safe_add_func_uint8_t_u_u((((safe_sub_func_uint8_t_u_u((make_int2(l_1991.x, l_1991.x).y && (!l_1992)), make_uchar1(0x7FL).x)) < p_26) , p_2057->g_461), (safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u(((++p_2057->g_1824.x) <= ((((l_2005 != (l_2008[4][5] = nullptr)) | ((((safe_mod(make_short2(p_2057->g_2011.x, p_2057->g_2011.x), make_short2(0x91D9L, 1L)))) ^ make_short2(p_2057->g_2012.w, p_2057->g_2012.w))).x) , (make_short1((-7L)).x , l_2013)) == &l_2014)), 6)), p_29)))))))).x) != 0xC9L);
        }
        (**p_27) = (safe_add_func_uint64_t_u_u(((4L & (((l_2018 = l_2018) , ((safe_mod(make_int3(0x64D94EE1L, (l_1985[2][0].f4 = (safe_rshift_func_int64_t_s_u((l_2018.f2 &= 0xDF5F348B1C6D48E0LL), ((safe_rshift_func_int32_t_s_u((**p_27), (safe_sub_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((*l_2035) = (&p_2057->g_1030[0][0] != nullptr)), l_2018.f0)), ((make_long2(p_2057->g_2036.y, p_2057->g_2036.y).y , ((safe_mod(((((make_int2(p_2057->g_2039.x, p_2057->g_2039.x) | ((make_int2((safe_add_func_uint16_t_u_u(p_30, p_26)), l_2018.f6) | make_int2((-7L), (-7L)))))) ^ make_int2(1L, 1L))), make_int2(0x25FBDCA4L, 0x25FBDCA4L)))).y) && (**p_27)))), p_2057->g_1904.y)))) ^ (-1L))))), 0L), make_int3(0x5CD66CD4L, 0x5CD66CD4L, 0x5CD66CD4L)))).z) , p_30)) , p_30), p_30));
        if (l_2042)
        { /* block id: 800 */
            __shared__ uint64_t *l_2044;
            l_2044 = nullptr;
            uint64_t *l_2045 = nullptr;
            __shared__ uint64_t *l_2046;
            l_2046 = nullptr;
            __shared__ uint64_t *l_2047;
            l_2047 = nullptr;
            __shared__ uint64_t *l_2048;
            l_2048 = &p_2057->g_353;
            (**p_27) &= (((l_2043 = &p_2057->g_1835) != &p_2057->g_1835) | (--(*l_2048)));
            (*p_2057->g_1500) = &l_1985[3][0];
        }
        else
        { /* block id: 805 */
            p_28 |= (**p_27);
            p_2057->g_2053 ^= (((*p_2057->g_470) = l_2051) == l_2052[5][7]);
        }
        if (l_2018.f5)
            continue;
    }
    return l_2054;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_1576 p_2057->g_460 p_2057->g_461 p_2057->g_1438 p_2057->g_1089 p_2057->g_1389 p_2057->g_725 hip_const_1.f1 p_2057->g_134 p_2057->g_1259 p_2057->g_5 p_2057->g_911 p_2057->g_1750 p_2057->g_1658 p_2057->g_761 p_2057->g_995 p_2057->g_462 p_2057->g_1959 p_2057->g_1006 p_2057->g_1369 p_2057->g_1160 p_2057->g_432 p_2057->g_1620 p_2057->g_696 p_2057->g_877 p_2057->g_1161 p_2057->g_1495 p_2057->g_1681 p_2057->g_1682 p_2057->g_244 p_2057->g_1696 p_2057->g_1730 p_2057->g_1731 p_2057->g_1449 p_2057->g_993 p_2057->g_1325 p_2057->g_1767
 * writes: p_2057->g_1438 p_2057->g_5 p_2057->g_432 p_2057->g_696 p_2057->g_912 p_2057->g_1750 p_2057->g_353 p_2057->g_1393 p_2057->g_1272 p_2057->g_1369 p_2057->g_462 p_2057->g_460 p_2057->g_10 p_2057->g_785
 */
__device__ int16_t  func_31(uint8_t  p_32, int16_t  p_33, struct S0 * p_34, int32_t ** p_35, struct S2 * p_2057)
{ /* block id: 639 */
    struct S0 l_1575 = {22,46,-957,4,-532,106,5032};
    ushort4 l_1577 = make_ushort4(0xA908L, 65526UL, 0xA908L, 65526UL);
    int32_t l_1580 = 1L;
    int16_t l_1583 = (-4L);
    int64_t *l_1584 = nullptr;
    int64_t *l_1585[3][10] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
    __shared__ int32_t l_1586;
    l_1586 = 0L;
    __shared__ uint32_t *l_1587;
    l_1587 = nullptr;
    uint32_t *l_1588 = nullptr;
    ulong3 l_1606 = make_ulong3(0xF1723AF46B2F867BLL, 0x99680882A7AFA60CLL, 0xF1723AF46B2F867BLL);
    uint2 l_1611 = make_uint2(0x4BD51FDCL, 0x4F756E80L);
    int32_t l_1647 = 0x7F4F2327L;
    int32_t l_1649 = 0xB64F7294L;
    __shared__ int32_t l_1654;
    l_1654 = 0xE9997744L;
    int32_t l_1655 = 0L;
    // attempting a hip shared for loop
    __shared__ int32_t l_1656[2];
    for (int i = 0; i < 2; i++)
        l_1656[i] = 0x63ADCF03L;
    ulong3 l_1670 = make_ulong3(0x1D60B0DDEBD6603CLL, 0x4308266FAAFCE01CLL, 0x1D60B0DDEBD6603CLL);
    ushort1 l_1687 = make_ushort1(0x3120L);
    __shared__ union U1 *l_1702;
    l_1702 = nullptr;
    int8_t l_1733 = 0x01L;
    int64_t l_1743 = 7L;
    __shared__ uint64_t *l_1755;
    l_1755 = &p_2057->g_353;
    __shared__ int32_t *****l_1812;
    l_1812 = nullptr;
    int32_t *l_1834[2];
    int32_t **l_1833 = &l_1834[0];
    int8_t **l_1889[1];
    int32_t l_1890 = 0xE59E16A0L;
    uint16_t **l_1924 = &p_2057->g_645;
    uint32_t l_1939 = 18446744073709551615UL;
    uchar1 l_1944 = make_uchar1(0UL);
    uint32_t l_1966[9][4][7] = {{{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}, {{0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}, {0x95BE7593L, 0x95BE7593L, 0xDFB3A13EL, 0xCF48E3EBL, 0x438792E6L, 8UL, 0x405D6722L}}};
    int2 l_1972 = make_int2(0x7AD2F0A5L, 0x2508DE04L);
    // attempting a hip shared for loop
    __shared__ int16_t *l_1975[9][6];
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 6; j++)
            l_1975[i][j] = &p_2057->g_163;
    }
    int16_t l_1976 = 0xFF79L;
    int i, j, k;
    for (int i = 0; i < 2; i++)
        l_1656[i] = 0x63ADCF03L;
    for (int i = 0; i < 2; i++)
        l_1834[i] = &p_2057->g_428;
    for (int i = 0; i < 1; i++)
        l_1889[i] = &p_2057->g_1369;
    if (((((safe_lshift_func_uint32_t_u_u((l_1580 |= (((l_1575 , ((make_ushort1(p_2057->g_1576.x) & make_ushort1(l_1577.z))).x) >= 65531UL) & (make_ulong2(18446744073709551615UL, 5UL).y | (safe_lshift_func_uint8_t_u_s((l_1575.f0 == p_2057->g_460), 6))))), p_33)) == (safe_add_func_int8_t_s_s(l_1575.f2, ((p_2057->g_1438 |= (((l_1586 = (((((1L > ((p_33 <= p_32) & p_33)) <= l_1575.f6) == p_2057->g_461) & l_1583) != 0x69713BFB8A728CCDLL)) == p_32) == 0xF68FCDBC8ABC9D2DLL)) , p_2057->g_1089.x)))) != l_1577.z) >= p_33))
    { /* block id: 643 */
        int32_t ***l_1595 = &p_2057->g_19;
        int32_t ***l_1596[5][3][8] = {{{nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}}, {{nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}}, {{nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}}, {{nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}}, {{nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}, {nullptr, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, &p_2057->g_19, nullptr}}};
        __shared__ uint8_t *l_1597;
        l_1597 = nullptr;
        uint8_t *l_1598 = nullptr;
        uint8_t *l_1599 = nullptr;
        uint8_t *l_1600[8][10] = {{nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, &p_2057->g_444, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
        int i, j, k;
        (*p_2057->g_134) = ((0xA9FCL != 1L) >= (safe_mod_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(p_32, (safe_lshift_func_int16_t_s_u(((((p_35 = p_35) != nullptr) == l_1575.f0) == (l_1580 = p_2057->g_1389.x)), 5)))), ((make_short3(((safe_mul_func_uint16_t_u_u((l_1575.f2 = ((safe_mul_func_uint64_t_u_u((safe_unary_minus_func_int8_t_s(p_32)), make_ulong3(((((make_ulong2(l_1606.z, l_1606.z) | make_ulong2((safe_mod_func_uint32_t_u_u(((safe_rshift(make_uint3(l_1611.y, l_1611.y, l_1611.y), make_uint3(32, 32, 32)))).y, 0x9F32B50BL)), p_2057->g_725.y))) ^ make_ulong2(0xD961BBF35EB196AALL, 0xD961BBF35EB196AALL))).y, 0UL, p_33).y)) != 1L)), l_1606.y)) >= 4UL), 0xCD13L, p_33).y <= l_1575.f3) & hip_const_1.f1))));
    }
    else
    { /* block id: 648 */
        long1 l_1628 = make_long1(0x0B7971E5D8171F7BLL);
        int32_t l_1636 = (-1L);
        int32_t l_1637 = (-7L);
        __shared__ int64_t l_1638;
        l_1638 = 7L;
        int32_t l_1640[3];
        __shared__ uint16_t l_1659;
        l_1659 = 0x1C41L;
        __shared__ struct S0 l_1688;
        l_1688 = {8,-61,-3662,45,541,13,3745};
        uint32_t l_1697 = 0UL;
        __shared__ union U1 *l_1701;
        l_1701 = nullptr;
        char2 l_1718 = make_char2(0x0BL, 0x0AL);
        uchar4 l_1729 = make_uchar4(1UL, 0x20L, 1UL, 0x20L);
        uint8_t l_1738[1][9] = {{0UL, 0UL, 0xC6L, 0UL, 0UL, 0xC6L, 0UL, 0UL, 0xC6L}};
        uint8_t l_1742 = 4UL;
        __shared__ int8_t l_1745;
        l_1745 = (-1L);
        __shared__ int16_t l_1747;
        l_1747 = 0x49D4L;
        int32_t l_1748 = 1L;
        char3 l_1766 = make_char3(0x03L, 0xF6L, 0x03L);
        long1 l_1774 = make_long1(1L);
        __shared__ uint64_t l_1783;
        l_1783 = 1UL;
        __shared__ uchar2 l_1791;
        l_1791 = make_uchar2(0xDEL, 0xA7L);
        ushort1 l_1842 = make_ushort1(65528UL);
        uint8_t l_1860[7];
        uint16_t ***l_1864 = nullptr;
        int32_t *l_1867 = nullptr;
        int64_t ****l_1886[6] = {nullptr, &p_2057->g_906, nullptr, &p_2057->g_906, nullptr, &p_2057->g_906};
        int64_t *****l_1885 = &l_1886[3];
        uint32_t ****l_1888 = nullptr;
        __shared__ char4 l_1909;
        l_1909 = make_char4(2L, 1L, 2L, 1L);
        int8_t l_1943[6][5] = {{0xD0L, (-8L), 2L, 0x7DL, (-1L)}, {0xD0L, (-8L), 2L, 0x7DL, (-1L)}, {0xD0L, (-8L), 2L, 0x7DL, (-1L)}, {0xD0L, (-8L), 2L, 0x7DL, (-1L)}, {0xD0L, (-8L), 2L, 0x7DL, (-1L)}, {0xD0L, (-8L), 2L, 0x7DL, (-1L)}};
        int i, j;
        for (int i = 0; i < 3; i++)
            l_1640[i] = 0L;
        for (int i = 0; i < 7; i++)
            l_1860[i] = 0x4AL;
lbl_1631:
        (*p_2057->g_1259) = (l_1606.y , 0x557F3C68L);
        for (p_2057->g_432 = 0; (p_2057->g_432 <= 2); p_2057->g_432 += 1)
        { /* block id: 652 */
            struct S0 l_1627 = {2,-61,2723,51,-256,72,4999};
            int32_t *l_1629 = nullptr;
            int32_t *l_1630 = &l_1580;
            int32_t l_1642 = 2L;
            int32_t l_1645 = 0xBE2BDE58L;
            __shared__ int32_t l_1650;
            l_1650 = 7L;
            int32_t l_1651 = 0x3A0C4BCDL;
            __shared__ int32_t l_1652;
            l_1652 = 0xA2A12CCCL;
            int32_t l_1653[3][1];
            uint64_t *l_1664 = nullptr;
            union U1 *l_1665 = &p_2057->g_176;
            int32_t **l_1713 = &p_2057->g_20;
            int32_t *l_1725 = nullptr;
            int32_t **l_1724 = &l_1725;
            __shared__ int32_t ***l_1723;
            l_1723 = &l_1724;
            int16_t l_1744 = 3L;
            int32_t l_1746[3][5] = {{0xD095E97EL, 2L, 0xD8B0AA5FL, 0xD8B0AA5FL, 2L}, {0xD095E97EL, 2L, 0xD8B0AA5FL, 0xD8B0AA5FL, 2L}, {0xD095E97EL, 2L, 0xD8B0AA5FL, 0xD8B0AA5FL, 2L}};
            uchar1 l_1763 = make_uchar1(252UL);
            char4 l_1788 = make_char4(0x66L, 0x85L, 0x66L, 0x85L);
            uint16_t l_1803 = 0xDC9EL;
            int32_t *****l_1813 = nullptr;
            uchar2 l_1815 = make_uchar2(1UL, 254UL);
            uint8_t l_1844 = 0x47L;
            uint8_t l_1855 = 0x0BL;
            uint8_t l_1900 = 2UL;
            ulong4 l_1913 = make_ulong4(0xA423CBAF3439A260LL, 1UL, 0xA423CBAF3439A260LL, 1UL);
            int64_t **l_1917 = &l_1584;
            uint16_t **l_1925 = nullptr;
            int i, j;
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 1; j++)
                    l_1653[i][j] = 2L;
            }
            if (((*l_1630) = ((**p_35) ^= ((((((safe_mul(make_int2(0L, (safe_rshift_func_int32_t_s_u(((((safe_div(((safe_mod(make_char2(p_2057->g_1620.x, p_2057->g_1620.x), make_char2(1L, 0x71L)))), make_char2((-1L), 4L)))).y && ((l_1580 | ((((safe_div_func_int32_t_s_s(((p_32 != make_uchar1(make_uchar2(0x4FL, 247UL).y).x) , (safe_sub_func_int8_t_s_s((l_1585[1][2] == nullptr), ((make_uchar1(255UL) & make_uchar1((((safe_mod_func_uint64_t_u_u((l_1627 , (make_long3(l_1628.x, l_1628.x, l_1628.x).x <= (p_32 == l_1575.f2))), 0x44DB9C5E09E72ADALL)) > (0x468DL || l_1627.f1)) > l_1627.f4)))).x))), 1UL)) > (-9L)) > l_1628.x) , p_33)) , (-9L))) == l_1575.f3), p_33))), make_int2(0x606DB33FL, 0x606DB33FL)))) & make_int2(0x4A877192L, 0x4A877192L))) ^ make_int2(0x64334013L, 0x64334013L))).x)))
            { /* block id: 655 */
                __shared__ int8_t l_1633;
                l_1633 = 0x2EL;
                int32_t l_1635[3][8][7] = {{{0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}}, {{0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}}, {{0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}, {0x78FD1DA9L, 1L, 0x08D3654AL, (-4L), 0x00737861L, 0x4F5A99C1L, 0x4F5A99C1L}}};
                int64_t l_1643 = (-9L);
                // attempting a hip shared for loop
                __shared__ uint16_t **l_1666[4][3];
                for (int i = 0; i < 4; i++)
                {
                    for (int j = 0; j < 3; j++)
                        l_1666[i][j] = &p_2057->g_645;
                }
                int i, j, k;
                for (p_2057->g_696 = 0; (p_2057->g_696 <= 2); p_2057->g_696 += 1)
                { /* block id: 658 */
                    int16_t l_1632[10][9][2] = {{{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}, {{0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}, {0x824AL, (-4L)}}};
                    int32_t l_1639 = (-6L);
                    int32_t l_1641 = 0xE3138923L;
                    int32_t l_1644 = 0xE4E63BC3L;
                    int32_t l_1646 = 0xF4CE869BL;
                    int3 l_1648 = make_int3((-1L), (-10L), (-1L));
                    uint16_t **l_1667[1];
                    char4 l_1689 = make_char4(1L, 0x6CL, 1L, 0x6CL);
                    int i, j, k;
                    for (int i = 0; i < 1; i++)
                        l_1667[i] = &p_2057->g_645;
                    if (l_1606.z)
                    { /* block id: 659 */
                        if (p_2057->g_5)
                            goto lbl_1631;
                    }
                    else
                    { /* block id: 661 */
                        int32_t *l_1634[2];
                        int16_t l_1657 = 0L;
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_1634[i] = &p_2057->g_5;
                        l_1659--;
                    }
                    l_1635[2][6][5] |= ((safe_rshift_func_int32_t_s_s((+(**p_35)), ((nullptr == l_1664) , (255UL > (((65532UL == 0x5C05L) | (nullptr == l_1665)) , ((l_1666[0][0] = nullptr) == l_1667[0])))))) || 0x360DL);
                    (*l_1630) = ((safe_add_func_uint64_t_u_u(((make_ulong3(l_1670.y, l_1670.y, l_1670.y) & ((safe_div(((((make_ulong3(0xD5C20C586290E390LL, 0x528C4EC04498B8E0LL, (0x39L <= ((+l_1637) || (((((((((safe_add(make_int4((-1L), (((0x74L != (safe_lshift_func_uint64_t_u_u(p_2057->g_877.y, 28))) < (((l_1635[1][6][6] || make_int2((*p_2057->g_1259), 0x03AE2187L).y) <= (safe_mul_func_int64_t_s_s(l_1648.y, ((((make_uchar4(((p_33 & p_33) < l_1635[1][6][6]), 249UL, l_1628.x, 0x0FL).y | p_2057->g_1161.x) , 0x5C252CC954E20709LL) || 0x068AEF31EEA09D06LL) | p_33)))) , l_1638)) == p_2057->g_1495.x), (-1L), p_32), make_int4((-1L), (-1L), (-1L), (-1L))))) & make_int4(0x37D16AAFL, 0x37D16AAFL, 0x37D16AAFL, 0x37D16AAFL))) | make_int4((-1L), (-1L), (-1L), (-1L)))) ^ make_int4(1L, 1L, 1L, 1L))).x , 65535UL)))) & make_ulong3(18446744073709551614UL, 18446744073709551614UL, 18446744073709551614UL))) | make_ulong3(0x3BF35CE389599364LL, 0x3BF35CE389599364LL, 0x3BF35CE389599364LL))), make_ulong3(0x46D341934EEFBDFELL, 0x46D341934EEFBDFELL, 0x46D341934EEFBDFELL)))))).y, l_1635[1][6][6])) != 1UL);
                    for (l_1655 = 2; (l_1655 >= 0); l_1655 -= 1)
                    { /* block id: 669 */
                        int32_t l_1698[1];
                        int i;
                        for (int i = 0; i < 1; i++)
                            l_1698[i] = 7L;
                        (*l_1630) &= (l_1627 , (safe_mul_func_int16_t_s_s(make_short1(0x1E97L).x, ((((make_uint4(p_2057->g_1681.y, p_2057->g_1681.y, p_2057->g_1681.y, p_2057->g_1681.y) ^ make_uint4(p_2057->g_1682.x, p_2057->g_1682.x, p_2057->g_1682.x, p_2057->g_1682.x))).w , ((0x6411A9900C1B31C8LL > (safe_rshift_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(make_uchar2(9UL, (make_ushort3(l_1687.x, l_1687.x, l_1687.x).y | (l_1688 , (((make_char4(l_1689.y, l_1689.y, l_1689.y, l_1689.y).w , ((safe_mod_func_int8_t_s_s(((safe_div_func_uint64_t_u_u(p_2057->g_244.z, l_1635[0][0][6])) > (~((safe_sub_func_uint64_t_u_u(make_ulong3(p_2057->g_1696.x, p_2057->g_1696.x, p_2057->g_1696.x).z, ((((0x77CE7B38L ^ l_1697) > l_1698[0]) & (safe_lshift_func_int8_t_s_s((-10L), l_1697))) > 0x1F015B1EL))) > (**p_35)))), l_1636)) == p_33)) != p_33) < 9UL)))).x, 255UL)) > p_32), 15))) && 0UL)) < 2L))));
                    }
                }
                (*p_2057->g_911) = (l_1702 = l_1701);
                return l_1659;
            }
            else
            { /* block id: 676 */
                int32_t ***l_1709 = &p_2057->g_19;
                int32_t ***l_1710 = &p_2057->g_19;
                int32_t ***l_1711 = nullptr;
                // attempting a hip shared for loop
                __shared__ int32_t ***l_1712[1];
                for (int i = 0; i < 1; i++)
                    l_1712[i] = &p_2057->g_19;
                __shared__ int16_t l_1728;
                l_1728 = 0L;
                long1 l_1732 = make_long1(0x8BEA1220985A9576LL);
                uint8_t *l_1734 = nullptr;
                uint8_t *l_1735 = &hip_const_3;
                __shared__ uint64_t *l_1736;
                l_1736 = nullptr;
                uint64_t *l_1737[2];
                int8_t *l_1739 = nullptr;
                int8_t *l_1740 = nullptr;
                int8_t *l_1741[4][10][6] = {{{&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}}, {{&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}}, {{&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}}, {{&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}, {&l_1733, nullptr, &hip_const_2, nullptr, &l_1733, nullptr}}};
                int8_t **l_1758 = &p_2057->g_1369;
                int i, j, k;
                for (int i = 0; i < 1; i++)
                    l_1712[i] = &p_2057->g_19;
                for (int i = 0; i < 2; i++)
                    l_1737[i] = nullptr;
                (*p_2057->g_134) = ((make_int3(0x40F9FB17L, ((safe_add_func_int64_t_s_s((safe_add_func_uint64_t_u_u(((safe_sub_func_int32_t_s_s(((((((((*p_2057->g_1369) = 1L) > (l_1636 = (((l_1713 = func_17(p_35, p_2057)) != p_35) == ((safe_mul_func_uint64_t_u_u((((safe_mul_func_int16_t_s_s((((((((make_char2((-1L), ((make_char4(l_1718.x, l_1718.x, l_1718.x, l_1718.x) ^ ((safe_unary_minus(make_char4(((make_char1((safe_div_func_uint16_t_u_u((((nullptr == l_1723) & ((!(safe_rshift_func_uint64_t_u_u(l_1728, (l_1656[1] &= (make_short4((((make_uchar2(l_1729.z, l_1729.z).x == (p_2057->g_785.x = (((make_int3(p_2057->g_1730.y, p_2057->g_1730.y, p_2057->g_1730.y) ^ make_int3(p_2057->g_1731.y, p_2057->g_1731.y, p_2057->g_1731.y))).z == (((make_long1(0xAC204E2DB58E469ALL) | ((make_long1(0xE17CA0029BF39019LL) | make_long1(make_long3(l_1732.x, l_1732.x, l_1732.x).z))))).x ^ ((0x1739L >= l_1733) || p_33))))) < p_2057->g_1449.y) ^ p_33), (-4L), 6L, 1L).z ^ (*l_1630)))))) <= p_32)) || l_1738[0][6]), p_33))) & make_char1(0x92L))).x, (-1L), (*l_1630), 0L)))))).y) ^ make_char2(1L, 1L))) ^ make_char2(4L, 4L))) ^ make_char2(0xC1L, 0xC1L))).x > p_2057->g_1681.x), l_1688.f2)) < 0x88L) & (**p_35)), 0xDEE94CCB090AEC51LL)) , l_1656[0])))) , 0L) > 18446744073709551610UL) ^ p_33) < p_2057->g_993.x) >= (-5L)), l_1742)) || l_1743), p_2057->g_1325.y)), p_33)) != p_33), (-1L)) ^ make_int3(0L, 0L, 0L))).z;
                p_2057->g_1750[1]++;
                (*p_2057->g_134) |= 0x291AC2CDL;
                (*p_2057->g_134) = ((((safe_mod_func_int64_t_s_s(((+(p_2057->g_1272.z = ((l_1736 != l_1755) ^ (safe_add_func_uint64_t_u_u(((*l_1755) = (l_1758 != nullptr)), (p_2057->g_1393.x = p_2057->g_1658)))))) ^ (p_32 != (safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(make_uchar2(l_1763.x, l_1763.x).x, ((safe_div(make_char1(l_1766.y), make_char1(p_2057->g_1767.z)))).x)), (((safe_sub_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s(((((((*l_1758) = ((safe_lshift_func_int64_t_s_u((l_1640[1] , make_long3(l_1774.x, l_1774.x, l_1774.x).y), (safe_sub_func_int64_t_s_s(l_1586, (((*p_2057->g_911) = l_1665) == l_1665))))) , &l_1745)) == nullptr) >= p_33) ^ 0x5625565FL) <= 1L), (*l_1630))) , p_2057->g_761.x), p_33)) && (-1L)) < l_1670.y))))), 8L)) > (-1L)) != 251UL) ^ p_2057->g_995.y);
            }
            for (p_2057->g_462 = 0; (p_2057->g_462 <= 2); p_2057->g_462 += 1)
            { /* block id: 694 */
                uint8_t l_1777 = 0x2EL;
                int32_t *l_1778 = &p_2057->g_443;
                __shared__ int32_t *l_1779;
                l_1779 = &l_1649;
                int32_t *l_1780 = nullptr;
                int32_t *l_1781 = &l_1653[2][0];
                int32_t *l_1782[8] = {&l_1640[1], &l_1653[2][0], &l_1640[1], &l_1653[2][0], &l_1640[1], &l_1653[2][0], &l_1640[1], &l_1653[2][0]};
                int2 l_1810 = make_int2((-1L), (-10L));
                int32_t *****l_1811[10][8] = {{&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}, {&p_2057->g_1030[0][0], &p_2057->g_1030[3][2], nullptr, &p_2057->g_1030[1][6], &p_2057->g_1030[0][0], &p_2057->g_1030[0][0], &p_2057->g_1030[2][2], &p_2057->g_1030[0][0]}};
                __shared__ uint16_t *l_1837;
                l_1837 = nullptr;
                struct S0 l_1838 = {15,22,3866,76,-668,141,14968};
                uint16_t **l_1866 = nullptr;
                uint16_t ***l_1865 = &l_1866;
                int64_t ****l_1884 = &p_2057->g_906;
                __shared__ int64_t *****l_1883;
                l_1883 = &l_1884;
                __shared__ short2 l_1921;
                l_1921 = make_short2(0x1F26L, 0x9E83L);
                int i, j;
                (*l_1630) |= l_1777;
                l_1640[0] &= (+(*p_2057->g_1259));
                ++l_1783;
            }
            for (l_1586 = 2; (l_1586 >= 0); l_1586 -= 1)
            { /* block id: 766 */
                if (l_1575.f3)
                    goto lbl_1631;
            }
        }
        (*p_2057->g_1259) = ((((p_32 || make_ushort4((0x5EDF3F4CF7399019LL && 1UL), 1UL, p_32, 1UL).y) > p_32) ^ (safe_sub_func_uint8_t_u_u((make_int4(p_2057->g_1959.y, p_2057->g_1959.y, p_2057->g_1959.y, p_2057->g_1959.y).x && (safe_div_func_uint16_t_u_u((safe_add_func_int8_t_s_s((((**p_35) & 0xC8B28DB9L) || 18446744073709551609UL), (make_ulong2((safe_mul_func_int8_t_s_s(((p_32 || p_32) , l_1738[0][3]), p_2057->g_1006.z)), p_33).x ^ 0xB48D079E9538959ALL))), p_32))), (*p_2057->g_1369)))) , l_1966[8][0][0]);
    }
    (*p_35) = (*p_35);
    for (p_33 = 3; (p_33 >= 0); p_33 -= 1)
    { /* block id: 775 */
        __shared__ int8_t l_1967;
        l_1967 = 0x90L;
        return l_1967;
    }
    (**p_35) &= ((l_1656[0] = (nullptr != &p_2057->g_907)) != (safe_sub_func_uint8_t_u_u(p_2057->g_1160.y, ((-1L) ^ (l_1580 > ((safe_rshift_func_int32_t_s_s(make_int1(l_1972.y).x, 24)) | (safe_rshift_func_uint8_t_u_s((p_32 | (p_33 ^= 1L)), (nullptr == &l_1834[1])))))))));
    return l_1976;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_912 p_2057->g_62 p_2057->g_906 p_2057->g_274 p_2057->g_996
 * writes: p_2057->g_907 p_2057->g_4
 */
__device__ uint8_t  func_36(int32_t * p_37, struct S0 * p_38, uint64_t  p_39, int32_t  p_40, struct S2 * p_2057)
{ /* block id: 633 */
    __shared__ int64_t **l_1558;
    l_1558 = &p_2057->g_202[3];
    int32_t l_1559 = (-1L);
    struct S0 l_1560 = {10,3,602,88,625,169,3740};
    int32_t *l_1561 = &p_2057->g_5;
    int32_t *l_1562 = &p_2057->g_12;
    int32_t *l_1563 = &p_2057->g_10;
    int32_t *l_1564 = nullptr;
    int32_t *l_1565 = &p_2057->g_5;
    int32_t *l_1566 = nullptr;
    int32_t *l_1567[9];
    int16_t l_1568 = (-5L);
    __shared__ uint64_t l_1569;
    l_1569 = 0x1612B2FB565D9A44LL;
    int i;
    for (int i = 0; i < 9; i++)
        l_1567[i] = nullptr;
    l_1559 = ((0x1DL <= (((*p_2057->g_906) = ((*p_2057->g_912) , l_1558)) == (l_1559 , l_1558))) | ((p_2057->g_4 = l_1560) , p_2057->g_274.x));
    ++l_1569;
    return p_2057->g_996.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_299 p_2057->g_134 p_2057->g_20 p_2057->g_5 p_2057->g_4.f3 p_2057->g_87 p_2057->g_4.f5 p_2057->g_116 p_2057->g_12 p_2057->g_19 p_2057->g_338 hip_const_1.f2 p_2057->g_148 p_2057->g_274 p_2057->g_62.f0 hip_const_1.f3 p_2057->g_340 p_2057->g_223 p_2057->g_4.f0 hip_const_2 hip_const_1.f0 p_2057->g_10 p_2057->g_281 hip_const_1 p_2057->g_432 p_2057->g_444 p_2057->g_470 p_2057->g_339 p_2057->g_176 p_2057->g_167 hip_const_3 p_2057->g_4.f6 p_2057->g_241 p_2057->g_427 p_2057->g_429 p_2057->g_471 p_2057->g_353 p_2057->g_163 p_2057->g_14 p_2057->g_684 p_2057->g_242 p_2057->g_696 p_2057->g_699 p_2057->g_431 p_2057->g_460 p_2057->g_725 p_2057->g_428 p_2057->g_745 p_2057->g_4.f1 p_2057->g_785 p_2057->g_806 p_2057->g_829 p_2057->g_244 p_2057->g_877 p_2057->g_280 p_2057->g_883 p_2057->g_906 p_2057->g_911 p_2057->g_982 p_2057->g_62 p_2057->g_490 p_2057->g_993 p_2057->g_995 p_2057->g_996 p_2057->g_912 p_2057->g_753 p_2057->g_1006 p_2057->g_4 p_2057->g_1030 p_2057->g_1040 p_2057->g_202 p_2057->g_907 p_2057->g_1086 p_2057->g_1089 p_2057->g_443 p_2057->g_62.f2 p_2057->g_1103 p_2057->g_1272 p_2057->g_1189 p_2057->g_461 p_2057->g_1438 p_2057->g_761 p_2057->g_1449 p_2057->g_176.f2 p_2057->g_1259 p_2057->g_1464 p_2057->g_1495 p_2057->g_1499 p_2057->g_1369 p_2057->g_1160 p_2057->g_604 p_2057->g_645
 * writes: p_2057->g_5 p_2057->g_10 p_2057->g_19 p_2057->g_130 p_2057->g_14 p_2057->g_12 p_2057->g_20 p_2057->g_338 p_2057->g_353 p_2057->g_274 p_2057->g_244 p_2057->g_223 p_2057->g_163 p_2057->g_4 p_2057->g_432 p_2057->g_444 p_2057->g_241 p_2057->g_62 p_2057->g_460 p_2057->g_725 p_2057->g_428 p_2057->g_429 p_2057->g_471 p_2057->g_339 p_2057->g_792 p_2057->g_745 p_2057->g_280 p_2057->g_176 p_2057->g_180 p_2057->g_877 p_2057->g_431 p_2057->g_907 p_2057->g_995 p_2057->g_461 p_2057->g_443 p_2057->g_761 p_2057->g_87 p_2057->g_604
 */
__device__ int32_t * func_41(union U1  p_42, int16_t  p_43, struct S2 * p_2057)
{ /* block id: 111 */
    int32_t l_296 = (-1L);
    char2 l_302 = make_char2(0x00L, 0x55L);
    __shared__ char3 l_303;
    l_303 = make_char3(9L, 0x78L, 9L);
    uint32_t *l_304 = &p_2057->g_167[4][0][0];
    uint32_t **l_305 = &l_304;
    uint32_t *l_306 = &p_2057->g_167[3][0][1];
    int4 l_307 = make_int4(0xF928291FL, 0x42EE290AL, 0xF928291FL, 0x42EE290AL);
    char2 l_312 = make_char2(0x5AL, 0L);
    uint8_t *l_313 = nullptr;
    uint8_t *l_314[6] = {nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_3};
    uint8_t l_315 = 1UL;
    uchar4 l_329 = make_uchar4(1UL, 0x2DL, 1UL, 0x2DL);
    int32_t **l_333 = nullptr;
    struct S0 l_367 = {13,-25,1465,87,446,174,12515};
    uint32_t ****l_370 = &p_2057->g_338;
    union U1 l_380 = {-4L};
    __shared__ uint32_t l_465;
    l_465 = 4294967288UL;
    uint16_t *l_489 = nullptr;
    uint16_t **l_488 = &l_489;
    uint16_t ***l_487 = &l_488;
    uint8_t l_491[8][5][6] = {{{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}, {{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}, {{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}, {{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}, {{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}, {{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}, {{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}, {{1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}, {1UL, 255UL, 255UL, 0xF4L, 7UL, 255UL}}};
    short4 l_523 = make_short4((-1L), 0x5235L, (-1L), 0x5235L);
    uint32_t l_561 = 9UL;
    int64_t **l_622 = &p_2057->g_202[6];
    __shared__ int32_t *l_665;
    l_665 = &p_2057->g_14;
    ulong3 l_683 = make_ulong3(18446744073709551606UL, 18446744073709551615UL, 18446744073709551606UL);
    uint64_t l_695 = 0UL;
    int32_t ***l_698[2][8][4] = {{{&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}}, {{&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}, {&p_2057->g_19, &l_333, &p_2057->g_19, &l_333}}};
    int32_t ****l_697[9] = {&l_698[0][0][1], &l_698[0][0][1], &l_698[0][0][1], &l_698[0][0][1], &l_698[0][0][1], &l_698[0][0][1], &l_698[0][0][1], &l_698[0][0][1], &l_698[0][0][1]};
    char2 l_710 = make_char2(1L, 0x9EL);
    int16_t *l_728 = nullptr;
    union U1 *l_774[4] = {&l_380, &p_2057->g_176, &l_380, &p_2057->g_176};
    union U1 **l_773 = &l_774[0];
    uint32_t l_798 = 0xE6E54532L;
    int2 l_808 = make_int2(0xB1D3E634L, (-6L));
    int1 l_809 = make_int1(0x137F261AL);
    __shared__ uint3 l_828;
    l_828 = make_uint3(0xFECBED9CL, 4294967288UL, 0xFECBED9CL);
    uchar2 l_872 = make_uchar2(0UL, 0x9EL);
    char3 l_1014 = make_char3(0x13L, 0x78L, 0x13L);
    struct S0 *l_1027 = &hip_const_1;
    struct S0 **l_1026 = &l_1027;
    __shared__ long3 l_1047;
    l_1047 = make_long3((-2L), 0L, (-2L));
    uint32_t l_1060 = 4UL;
    __shared__ uint64_t l_1074;
    l_1074 = 0xB2E89B410FA0AC6ELL;
    int32_t *l_1106 = &p_2057->g_461;
    // attempting a hip shared for loop
    __shared__ uint64_t l_1179[3];
    for (int i = 0; i < 3; i++)
        l_1179[i] = 0xD8449D59382ED46CLL;
    int32_t l_1222 = 0L;
    int8_t l_1224 = 1L;
    int8_t l_1247 = (-1L);
    int64_t l_1248[1][4][10] = {{{1L, 0x446626742086BF63LL, (-10L), (-1L), 0x3A8BE15E4463BD28LL, 4L, 0x3A8BE15E4463BD28LL, (-1L), (-10L), 0x446626742086BF63LL}, {1L, 0x446626742086BF63LL, (-10L), (-1L), 0x3A8BE15E4463BD28LL, 4L, 0x3A8BE15E4463BD28LL, (-1L), (-10L), 0x446626742086BF63LL}, {1L, 0x446626742086BF63LL, (-10L), (-1L), 0x3A8BE15E4463BD28LL, 4L, 0x3A8BE15E4463BD28LL, (-1L), (-10L), 0x446626742086BF63LL}, {1L, 0x446626742086BF63LL, (-10L), (-1L), 0x3A8BE15E4463BD28LL, 4L, 0x3A8BE15E4463BD28LL, (-1L), (-10L), 0x446626742086BF63LL}}};
    int16_t l_1249 = 0x1A3CL;
    __shared__ uint16_t l_1250;
    l_1250 = 65535UL;
    int32_t *l_1258[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int16_t l_1275 = 0x6CB6L;
    union U1 *l_1287 = &p_2057->g_62;
    uint16_t l_1294[3][6] = {{0x767AL, 0xA089L, 1UL, 1UL, 0xA089L, 0x767AL}, {0x767AL, 0xA089L, 1UL, 1UL, 0xA089L, 0x767AL}, {0x767AL, 0xA089L, 1UL, 1UL, 0xA089L, 0x767AL}};
    int8_t l_1304 = 0x9DL;
    int8_t **l_1372 = &p_2057->g_1369;
    ushort4 l_1448 = make_ushort4(0UL, 65528UL, 0UL, 65528UL);
    int8_t **l_1474 = nullptr;
    int64_t l_1475[1];
    int32_t *l_1483 = nullptr;
    ushort3 l_1518 = make_ushort3(0UL, 9UL, 0UL);
    int32_t *l_1557 = nullptr;
    int i, j, k;
    for (int i = 0; i < 3; i++)
        l_1179[i] = 0xD8449D59382ED46CLL;
    for (int i = 0; i < 1; i++)
        l_1475[i] = 0x0CA8B82E37FB6599LL;
    if ((safe_sub_func_uint8_t_u_u(2UL, (make_ulong3(6UL, l_296, (safe_mod_func_int32_t_s_s((((make_short1(0x4653L).x <= p_42.f0) , nullptr) != ((!((+(make_uchar2(p_2057->g_299.x, p_2057->g_299.x).y && (((*p_2057->g_134) = make_int2(0xBFCDB382L, (p_42.f0 >= (safe_mul_func_uint32_t_u_u((((make_char4(l_302.y, l_302.y, l_302.y, l_302.y) ^ make_char4(l_303.z, l_303.z, l_303.z, l_303.z))).z , (p_42.f0 != (((*l_305) = l_304) == l_306))), make_int1(l_307.z).x)))).y) , (l_307.z = (safe_mul_func_int8_t_s_s(make_char2(((((safe_mul(make_char4(1L, make_char1(l_312.y).x, 1L, 0x3CL), make_char4(1L, 1L, 1L, 1L)))) | make_char4(0L, 0L, 0L, 0L))).z, p_43).y, p_42.f0)))))) || l_315)) , nullptr)), (-1L)))).y > p_42.f0))))
    { /* block id: 115 */
        uint16_t *l_320 = nullptr;
        ushort3 l_325 = make_ushort3(0x0DFFL, 0UL, 0x0DFFL);
        int32_t l_330 = (-4L);
        __shared__ uint8_t l_334;
        l_334 = 0UL;
        int32_t **l_335 = &p_2057->g_20;
        uint32_t ***l_362 = &l_305;
        int1 l_426 = make_int1(9L);
        uint32_t ****l_448 = &l_362;
        struct S0 l_452 = {28,5,3237,41,529,26,6721};
        __shared__ uint16_t l_509;
        l_509 = 2UL;
        int32_t *l_515 = nullptr;
        __shared__ char1 l_518;
        l_518 = make_char1(0x03L);
        __shared__ ushort2 l_520;
        l_520 = make_ushort2(3UL, 2UL);
        uint64_t l_536[1][8];
        short1 l_601 = make_short1(9L);
        uint32_t *****l_605 = &l_448;
        uchar4 l_654 = make_uchar4(253UL, 0x1EL, 253UL, 0x1EL);
        uint16_t ***l_660 = nullptr;
        int i, j;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 8; j++)
                l_536[i][j] = 0xC6776FDDD9E407C2LL;
        }
        (*l_335) = func_64((safe_add_func_uint16_t_u_u((l_296 ^= (safe_rshift_func_int32_t_s_u((*p_2057->g_20), 8))), (safe_lshift_func_uint32_t_u_s(((l_330 &= (((safe_add_func_uint16_t_u_u(make_ushort4(l_325.x, l_325.x, l_325.x, l_325.x).y, 0x3C41L)) , ((l_312.x > (0xCEEC597CA0AD9135LL == (+(safe_unary_minus_func_uint8_t_u(p_43))))) , ((safe_lshift(make_uchar3(0x80L, 0xDEL, 0x80L), make_uchar3(0UL, 255UL, make_uchar2(l_329.y, l_329.y).y)))).y)) < l_325.x)) & (safe_div_func_uint64_t_u_u(l_325.y, p_2057->g_4.f3))), (((0L != 9L) , 0xE30E5366L) & p_42.f0))))), l_333, &p_2057->g_19, l_334, p_2057);
        if ((**l_335))
        { /* block id: 119 */
            uint32_t ****l_341 = &p_2057->g_338;
            __shared__ uint64_t *l_352;
            l_352 = &p_2057->g_353;
            int32_t l_354 = 2L;
            int32_t l_355[1][8];
            int8_t *l_358 = nullptr;
            int8_t *l_359 = nullptr;
            int8_t *l_360 = nullptr;
            int8_t *l_361 = &hip_const_2;
            __shared__ int64_t **l_384;
            l_384 = nullptr;
            struct S0 l_401 = {17,23,-2085,41,337,227,5926};
            uint32_t l_512 = 0xD5EF3C3FL;
            int i, j;
            for (int i = 0; i < 1; i++)
            {
                for (int j = 0; j < 8; j++)
                    l_355[i][j] = (-3L);
            }
            (**p_2057->g_19) &= (-7L);
            if ((safe_sub_func_uint32_t_u_u(((((*l_341) = p_2057->g_338) == (((safe_mod_func_uint32_t_u_u(((*p_2057->g_340) |= (safe_sub_func_int8_t_s_s(hip_const_1.f2, (255UL & ((l_330 &= ((safe_rshift_func_uint16_t_u_s((l_355[0][4] = (((p_2057->g_244.z = (safe_sub_func_uint8_t_u_u(p_43, ((safe_add_func_uint64_t_u_u(((*l_352) = 0x3B217493E9099EA1LL), (p_2057->g_148.x && (++p_2057->g_274.x)))) < make_ushort3(p_2057->g_62.f0, (((**l_335) = 253UL) > (p_2057->g_4.f5 , hip_const_1.f3)), 1UL).z)))) , 0L) < 1UL)), p_43)) , p_42.f0)) | p_43))))), p_43)) > 1L) , l_362)) , p_43), 9L)))
            { /* block id: 129 */
                struct S0 l_363[9][9] = {{{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}, {{13,63,248,50,-316,3,9861}, {13,63,248,50,-316,3,9861}, {8,-60,-3370,27,-349,43,5112}, {22,-11,175,72,701,212,8680}, {16,-4,-1142,38,-404,9,6861}, {26,-62,3295,29,97,180,9383}, {29,-21,-1261,60,329,39,9483}, {13,63,248,50,-316,3,9861}, {31,-49,-3406,29,-703,190,11833}}};
                int32_t *l_435 = nullptr;
                int32_t *l_436 = &l_355[0][6];
                int32_t *l_437 = nullptr;
                int32_t *l_438 = &l_355[0][2];
                int32_t *l_439 = nullptr;
                int32_t *l_440 = &p_2057->g_5;
                int32_t *l_441[7] = {&p_2057->g_12, nullptr, &p_2057->g_12, nullptr, &p_2057->g_12, nullptr, &p_2057->g_12};
                int32_t l_442 = 0x06E1B25EL;
                uint32_t *****l_447[1][2][5] = {{{&l_341, &l_341, &l_341, &l_341, &l_341}, {&l_341, &l_341, &l_341, &l_341, &l_341}}};
                int8_t l_456 = 1L;
                int i, j, k;
                if ((l_363[3][5] , (safe_lshift_func_uint8_t_u_u(p_2057->g_274.x, 0))))
                { /* block id: 130 */
                    uint32_t ***l_382 = &p_2057->g_339;
                    uint16_t *l_385 = nullptr;
                    uint16_t *l_386 = nullptr;
                    uint16_t *l_387 = nullptr;
                    uint16_t *l_388[9][8] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                    union U1 *l_394 = &l_380;
                    union U1 **l_393 = &l_394;
                    __shared__ union U1 **l_395;
                    l_395 = nullptr;
                    union U1 *l_396 = &p_2057->g_176;
                    __shared__ int32_t l_397;
                    l_397 = 1L;
                    int i, j;
lbl_398:
                    if ((*p_2057->g_134))
                    { /* block id: 131 */
                        __shared__ int32_t *l_366;
                        l_366 = &l_330;
                        (*l_366) |= (*p_2057->g_20);
                    }
                    else
                    { /* block id: 133 */
                        int16_t *l_371 = &p_2057->g_163;
                        int32_t l_379[1][2][4];
                        union U1 *l_381 = &l_380;
                        int32_t *l_383 = &p_2057->g_12;
                        int i, j, k;
                        for (int i = 0; i < 1; i++)
                        {
                            for (int j = 0; j < 2; j++)
                            {
                                for (int k = 0; k < 4; k++)
                                    l_379[i][j][k] = 1L;
                            }
                        }
                        (*l_383) ^= (l_367 , ((p_2057->g_4.f0 != ((*l_371) = (safe_mul_func_uint64_t_u_u(0x7E79E7529FD8B6E1LL, (nullptr == l_370))))) || ((safe_mul_func_int64_t_s_s(((((0xB5409C4288069318LL <= ((*l_352) = (**l_335))) , ((safe_rshift_func_int8_t_s_u(((((*p_2057->g_20) = (((safe_rshift_func_uint8_t_u_s((&p_2057->g_339 != ((*l_341) = (((*l_381) = ((safe_unary_minus_func_int64_t_s(((l_379[0][1][2] || 65535UL) < hip_const_2))) , l_380)) , l_382))), l_355[0][0])) ^ 0x3CL) == p_42.f0)) >= 0x534BFD1CL) , hip_const_1.f0), p_43)) , l_363[3][5].f2)) ^ l_363[3][5].f6) == l_354), p_43)) > 8L)));
                        l_354 &= ((**p_2057->g_19) ^= 9L);
                    }
                    (*l_335) = func_64(((nullptr != l_384) , 0x1DL), func_17(((((make_ushort1(0UL) ^ make_ushort1((p_2057->g_244.x++)))).x || ((safe_mul_func_int32_t_s_s((p_2057->g_10 | (-1L)), 0L)) >= ((((*l_393) = &p_42) == (l_396 = &p_2057->g_62)) != ((((((p_43 <= 0x971CE6CBL) && 5L) ^ l_397) && p_43) ^ p_2057->g_281.x) , (-1L))))) , &p_2057->g_134), p_2057), &p_2057->g_19, p_2057->g_116.y, p_2057);
                    if (p_42.f0)
                        goto lbl_398;
                    for (l_330 = 27; (l_330 < 21); l_330--)
                    { /* block id: 150 */
                        (*p_2057->g_134) = (-1L);
                    }
                }
                else
                { /* block id: 153 */
                    struct S0 *l_402 = &hip_const_1;
                    struct S0 *l_403 = &hip_const_1;
                    struct S0 *l_404[6][4] = {{&l_363[3][5], &l_363[3][5], nullptr, &l_363[3][5]}, {&l_363[3][5], &l_363[3][5], nullptr, &l_363[3][5]}, {&l_363[3][5], &l_363[3][5], nullptr, &l_363[3][5]}, {&l_363[3][5], &l_363[3][5], nullptr, &l_363[3][5]}, {&l_363[3][5], &l_363[3][5], nullptr, &l_363[3][5]}, {&l_363[3][5], &l_363[3][5], nullptr, &l_363[3][5]}};
                    __shared__ int32_t *l_407;
                    l_407 = &p_2057->g_5;
                    int32_t *l_408 = nullptr;
                    __shared__ int32_t *l_409;
                    l_409 = &p_2057->g_12;
                    int32_t l_410 = (-1L);
                    __shared__ int32_t *l_411;
                    l_411 = &p_2057->g_12;
                    int32_t *l_412 = &l_330;
                    int32_t *l_413 = &l_354;
                    int32_t *l_414 = &l_296;
                    int32_t *l_415 = &l_410;
                    int32_t *l_416 = &l_296;
                    int32_t *l_417 = nullptr;
                    int32_t *l_418 = &l_355[0][1];
                    int32_t *l_419 = &l_354;
                    int32_t *l_420 = &p_2057->g_14;
                    int32_t *l_421 = &l_296;
                    int32_t *l_422 = nullptr;
                    int8_t l_423 = (-1L);
                    int32_t *l_424 = &p_2057->g_12;
                    int32_t *l_425[4][1];
                    int i, j;
                    for (int i = 0; i < 4; i++)
                    {
                        for (int j = 0; j < 1; j++)
                            l_425[i][j] = nullptr;
                    }
                    l_367 = l_401;
                    p_2057->g_4 = (*l_403);
                    for (p_43 = (-20); (p_43 == (-14)); p_43 = safe_add_func_int16_t_s_s(p_43, 4))
                    { /* block id: 158 */
                        return l_407;
                    }
                    p_2057->g_432--;
                }
                p_2057->g_444--;
                l_448 = l_341;
                for (p_2057->g_5 = 9; (p_2057->g_5 == (-2)); --p_2057->g_5)
                { /* block id: 167 */
                    union U1 *l_451 = &p_2057->g_62;
                    struct S0 *l_453 = &l_363[3][5];
                    __shared__ int32_t l_454;
                    l_454 = 0x75E5447EL;
                    int32_t l_455 = 0x9596CE94L;
                    short4 l_457 = make_short4(0x5CD2L, 0x8387L, 0x5CD2L, 0x8387L);
                    int32_t l_458 = 0L;
                    int32_t l_464 = 0x12E5B7DDL;
                    int i;
                    l_451 = &p_2057->g_62;
                    (*l_453) = l_452;
                    for (l_380.f2 = 0; (l_380.f2 >= 0); l_380.f2 -= 1)
                    { /* block id: 172 */
                        int32_t l_459[2];
                        int32_t l_463[1][8] = {{0xAC124DB7L, 1L, 0xAC124DB7L, 1L, 0xAC124DB7L, 1L, 0xAC124DB7L, 1L}};
                        int i, j;
                        for (int i = 0; i < 2; i++)
                            l_459[i] = 4L;
                        --l_465;
                        l_367 = l_363[1][8];
                        (*p_2057->g_19) = &l_464;
                    }
                    for (p_2057->g_444 = 0; (p_2057->g_444 > 27); p_2057->g_444 = safe_add_func_uint8_t_u_u(p_2057->g_444, 1))
                    { /* block id: 179 */
                        // attempting a hip shared for loop
                        __shared__ uint32_t *****l_472[1][2][3];
                        for (int i = 0; i < 1; i++)
                        {
                            for (int j = 0; j < 2; j++)
                            {
                                for (int k = 0; k < 3; k++)
                                    l_472[i][j][k] = &l_448;
                            }
                        }
                        int32_t l_473 = 9L;
                        int i, j, k;
                        for (int i = 0; i < 1; i++)
                        {
                            for (int j = 0; j < 2; j++)
                            {
                                for (int k = 0; k < 3; k++)
                                    l_472[i][j][k] = &l_448;
                            }
                        }
                        l_472[0][1][1] = p_2057->g_470;
                        l_473 |= p_43;
                    }
                }
            }
            else
            { /* block id: 184 */
                uint32_t ***l_476[1][5][9] = {{{&l_305, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &l_305, &p_2057->g_339}, {&l_305, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &l_305, &p_2057->g_339}, {&l_305, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &l_305, &p_2057->g_339}, {&l_305, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &l_305, &p_2057->g_339}, {&l_305, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &p_2057->g_339, &l_305, &p_2057->g_339}}};
                // attempting a hip shared for loop
                __shared__ union U1 *l_479[6][8][5];
                for (int i = 0; i < 6; i++)
                {
                    for (int j = 0; j < 8; j++)
                    {
                        for (int k = 0; k < 5; k++)
                            l_479[i][j][k] = &l_380;
                    }
                }
                int32_t *l_480[4];
                union U1 l_496 = {0x07F2A650DD6BAD00LL};
                int i, j, k;
                for (int i = 0; i < 4; i++)
                    l_480[i] = &p_2057->g_461;
                l_367.f2 ^= (safe_add_func_uint16_t_u_u(((l_476[0][0][0] == (((safe_lshift_func_uint16_t_u_u(0UL, 15)) || 5UL) , ((p_2057->g_62 = func_44(&p_2057->g_19, l_355[0][0], (**p_2057->g_339), p_2057->g_176, p_2057)) , (*l_448)))) , p_2057->g_427), p_42.f0));
                for (l_296 = 0; (l_296 >= 0); l_296 -= 1)
                { /* block id: 189 */
                    uint16_t **l_482 = &l_320;
                    uint16_t ***l_481 = &l_482;
                    int8_t *l_501 = nullptr;
                    int8_t *l_502 = &p_2057->g_460;
                    int32_t ***l_510 = &l_333;
                    int32_t l_511[10] = {(-1L), 1L, (-1L), 1L, (-1L), 1L, (-1L), 1L, (-1L), 1L};
                    int i;
                    (*l_481) = nullptr;
                    (*l_335) = func_64(p_43, ((*l_510) = func_17((((make_ushort4(65528UL, 0xEF54L, 1UL, (safe_add_func_uint64_t_u_u(((((safe_sub_func_int8_t_s_s(((l_487 = l_487) == ((((l_491[6][3][2] = make_ushort3(p_2057->g_490.x, p_2057->g_490.x, p_2057->g_490.x).z) ^ (safe_div_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s(0x2F1CL, 15)), ((make_int2(((*p_2057->g_471) != ((*l_448) = (l_496 , (*l_448)))), 0L) ^ make_int2((safe_sub_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(((*l_502) = l_401.f6), 7)), (p_42.f0 < ((safe_div_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u((safe_mul_func_uint64_t_u_u(p_43, p_2057->g_490.x)), 1L)), p_42.f0)) & p_42.f0)))), 3L))).y))) , 0x52E570D5L) , nullptr)), p_42.f0)) < (*p_2057->g_134)) < (**l_335)) <= p_43), p_42.f0))).y && (**l_335)) || l_509) , nullptr), p_2057)), l_510, p_2057->g_429, p_2057);
                    for (l_315 = 0; (l_315 <= 4); l_315 += 1)
                    { /* block id: 199 */
                        --l_512;
                        l_511[8] |= (*p_2057->g_134);
                    }
                }
                (*p_2057->g_19) = &l_355[0][5];
                (*p_2057->g_134) ^= (p_43 > (l_515 == (*l_335)));
            }
            (*p_2057->g_134) |= p_43;
        }
        else
        { /* block id: 208 */
            __shared__ ushort4 l_519;
            l_519 = make_ushort4(2UL, 0x3E7AL, 2UL, 0x3E7AL);
            __shared__ int64_t *l_534;
            l_534 = &p_2057->g_176.f0;
            // attempting a hip shared for loop
            __shared__ int64_t *l_535[5];
            for (int i = 0; i < 5; i++)
                l_535[i] = &p_2057->g_429;
            short2 l_554 = make_short2(0xE994L, 0xE51CL);
            __shared__ int8_t *l_564;
            l_564 = &p_2057->g_460;
            uint8_t l_565[6] = {0x52L, 0x52L, 0UL, 0x52L, 0x52L, 0UL};
            struct S0 l_568 = {31,-4,-3419,49,615,154,12883};
            int32_t *l_583[9][10] = {{&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}, {&p_2057->g_12, &l_330, &p_2057->g_12, nullptr, nullptr, nullptr, &p_2057->g_12, &p_2057->g_443, &p_2057->g_10, nullptr}};
            int32_t *l_588[4];
            int4 l_635 = make_int4(4L, 0xA7A36278L, 4L, 0xA7A36278L);
            int1 l_640 = make_int1(0x06F36CB2L);
            uint32_t l_659 = 0x4089043BL;
            int32_t ***l_662 = &p_2057->g_19;
            int32_t ***l_664[5][7] = {{&l_333, nullptr, &l_333, &l_333, &l_333, &l_335, &l_333}, {&l_333, nullptr, &l_333, &l_333, &l_333, &l_335, &l_333}, {&l_333, nullptr, &l_333, &l_333, &l_333, &l_335, &l_333}, {&l_333, nullptr, &l_333, &l_333, &l_333, &l_335, &l_333}, {&l_333, nullptr, &l_333, &l_333, &l_333, &l_335, &l_333}};
            int32_t ****l_663 = &l_664[1][0];
            int i, j;
            for (int i = 0; i < 5; i++)
                l_535[i] = &p_2057->g_429;
            for (int i = 0; i < 4; i++)
                l_588[i] = &p_2057->g_5;
lbl_661:
            if ((((((safe_div(make_char2(l_518.x, l_518.x), make_char2(((0UL != (&p_2057->g_471 != nullptr)) || ((make_ushort3(l_519.z, l_519.z, l_519.z) ^ make_ushort3(l_520.x, l_520.x, l_520.x))).z), ((((((make_char4((-3L), 0x8AL, p_2057->g_4.f4, ((l_536[0][3] |= (((safe_mod(make_short4(l_523.w, l_523.w, l_523.w, l_523.w), make_short4(0L, (-9L), 0x25E1L, (safe_mod_func_uint8_t_u_u((p_2057->g_87.y = (((*l_534) = ((safe_rshift_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(p_42.f0, (nullptr != l_370))) < (l_367 , (safe_add_func_int16_t_s_s((safe_add_func_int16_t_s_s(1L, 0xA9C3L)), p_42.f0)))), 1)) , p_43)) & 0x11E532867883879ALL)), p_2057->g_431)))))).z == p_42.f0)) < hip_const_1.f4)) & make_char4(1L, 1L, 1L, 1L))) & make_char4(0L, 0L, 0L, 0L))) ^ make_char4(0xC8L, 0xC8L, 0xC8L, 0xC8L))).x)))).x == 0xD7L) , p_43) > l_519.x))
            { /* block id: 212 */
                uint64_t l_539 = 18446744073709551615UL;
                uint32_t l_567 = 18446744073709551615UL;
                for (p_2057->g_62.f2 = (-27); (p_2057->g_62.f2 < 29); p_2057->g_62.f2 = safe_add_func_uint64_t_u_u(p_2057->g_62.f2, 1))
                { /* block id: 215 */
                    uint1 l_578 = make_uint1(9UL);
                    int32_t *l_584 = nullptr;
                    int i;
                    l_539--;
                    if (((*p_2057->g_134) = p_42.f0))
                    { /* block id: 218 */
                        uint32_t l_566[8][9][2] = {{{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}, {{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}, {{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}, {{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}, {{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}, {{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}, {{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}, {{0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}, {0x90AA0F6BL, 0xFE49486CL}}};
                        int i, j, k;
                        (**l_335) = (safe_rshift_func_int8_t_s_u((p_42.f0 < (safe_add_func_int64_t_s_s((safe_add_func_int16_t_s_s(((safe_div_func_int16_t_s_s((safe_sub_func_int16_t_s_s(make_short4(p_43, (-1L), ((safe_mul(make_short4(l_554.y, l_554.y, l_554.y, l_554.y), ((safe_mul(((safe_lshift(make_short4((safe_mul_func_int32_t_s_s(make_int4(0xF2CECCD9L, l_561, p_43, 0L).x, ((((****p_2057->g_471) = (safe_rshift_func_int64_t_s_s((p_2057->g_62.f2 < (4294967295UL | ((***l_362) &= 0x84C481E2L))), 16))) ^ ((hip_const_2 , l_564) != nullptr)) , 0x20F8A89EL))), 0x26A5L, l_565[4], (**l_335)), make_short4(16, 16, 16, 16)))), make_short4(0xD814L, 0xD814L, 0xD814L, 0xD814L))))))).x, 0x05A0L).x, l_566[0][4][1])), p_43)) != l_539), l_554.x)), l_554.x))), p_43));
                        if (l_452.f0)
                            goto lbl_661;
                    }
                    else
                    { /* block id: 222 */
                        uint64_t l_575 = 0UL;
                        int32_t l_579[9][10][2] = {{{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}, {{1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}, {1L, 5L}}};
                        uint16_t *l_580 = nullptr;
                        uint16_t *l_581[10][8] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                        int32_t l_582[3][3];
                        int i, j, k;
                        for (int i = 0; i < 3; i++)
                        {
                            for (int j = 0; j < 3; j++)
                                l_582[i][j] = 1L;
                        }
                        l_584 = ((l_582[2][2] = ((**l_335) = ((l_567 , l_568) , (((safe_mul_func_uint8_t_u_u(((((***l_448) = (*p_2057->g_339)) != (****p_2057->g_470)) >= p_43), p_43)) , (safe_mul_func_uint32_t_u_u((((safe_mod_func_int16_t_s_s(l_575, (safe_lshift_func_uint8_t_u_u((l_579[4][2][1] = (((((((make_long2((-1L), ((!make_uint2(l_578.x, l_578.x).x) > (**p_2057->g_19))) ^ ((make_long2((l_568.f6 || p_42.f0), p_42.f0) | make_long2((-5L), (-5L)))))) | make_long2((-1L), (-1L)))).x , p_43) >= p_43) , p_43)), l_565[2])))) > 0x8BL) , 0x34878238L), 0L))) && p_2057->g_116.x)))) , l_583[1][0]);
                    }
                    (*p_2057->g_19) = ((safe_unary_minus_func_int8_t_s((safe_mod_func_int64_t_s_s(p_43, hip_const_1.f1)))) , l_588[3]);
                }
            }
            else
            { /* block id: 231 */
                long2 l_593 = make_long2(0x56628727493DACD9LL, 0x0A67DA1060FE221FLL);
                uint64_t *l_596[4][3] = {{&l_536[0][3], &l_536[0][3], nullptr}, {&l_536[0][3], &l_536[0][3], nullptr}, {&l_536[0][3], &l_536[0][3], nullptr}, {&l_536[0][3], &l_536[0][3], nullptr}};
                __shared__ uint32_t l_612;
                l_612 = 0UL;
                // attempting a hip shared for loop
                __shared__ int32_t l_613[7][3][9];
                for (int i = 0; i < 7; i++)
                {
                    for (int j = 0; j < 3; j++)
                    {
                        for (int k = 0; k < 9; k++)
                            l_613[i][j][k] = (-1L);
                    }
                }
                int64_t ***l_623 = &l_622;
                int64_t **l_625 = &p_2057->g_202[1];
                int64_t ***l_624 = &l_625;
                int64_t ***l_626 = nullptr;
                int64_t **l_628 = nullptr;
                __shared__ int64_t ***l_627;
                l_627 = &l_628;
                int16_t *l_655 = nullptr;
                int16_t *l_656 = nullptr;
                int16_t *l_657 = nullptr;
                int16_t *l_658 = nullptr;
                int i, j, k;
                l_426.x ^= ((safe_lshift_func_int64_t_s_u((-1L), p_2057->g_353)) , make_int1((!(p_43 ^ (safe_add_func_int32_t_s_s(((**l_335) = ((p_2057->g_353 = (make_long1(l_593.y).x > (((-3L) > 0UL) <= (safe_sub_func_int64_t_s_s(p_43, (p_2057->g_148.z , p_42.f0)))))) & (&p_2057->g_163 != nullptr))), 1UL))))).x);
                (*p_2057->g_134) = (((safe_sub_func_int64_t_s_s(l_593.y, ((((make_uint4(1UL, (safe_mul_func_int16_t_s_s(make_short3(l_601.x, l_601.x, l_601.x).y, p_2057->g_299.x)), 0x2CF29203L, (hip_const_3 || ((safe_add(make_uchar2(p_2057->g_604.y, p_2057->g_604.y), ((make_uchar2(0UL, 0x53L) ^ ((make_uchar2((p_2057->g_444 |= (p_2057->g_274.x = ((0x588FEE45L || ((l_605 = &l_448) == &l_448)) >= (safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((*l_564) = (make_ushort1(0xA959L).x || (safe_lshift_func_uint32_t_u_s(((p_2057->g_353 |= ((l_613[4][1][6] = make_ulong3(18446744073709551615UL, 18446744073709551608UL, (l_612 |= (&p_2057->g_20 != &p_2057->g_134))).x) == ((((*p_2057->g_19) == (*p_2057->g_19)) , p_42.f0) && 254UL))) == p_2057->g_116.y), 24)))), p_42.f0)), p_42.f0))))), 0xF1L) ^ make_uchar2(4UL, 4UL)))))))).x)) ^ make_uint4(0x5E5BE57AL, 0x5E5BE57AL, 0x5E5BE57AL, 0x5E5BE57AL))).x , p_43) , (**l_335)))) < p_43) && p_2057->g_241.x);
                l_613[4][1][6] = (((safe_rshift_func_int64_t_s_u(make_long4((((safe_add_func_int8_t_s_s((safe_mul_func_uint64_t_u_u(make_ulong3(1UL, p_2057->g_444, (((safe_div_func_int16_t_s_s(((((*l_623) = l_622) == ((*l_627) = ((*l_624) = &p_2057->g_202[6]))) | (safe_rshift_func_int8_t_s_s(((--p_2057->g_87.x) <= ((safe_sub_func_int32_t_s_s(((make_int1(l_635.w) & make_int1(0x081F696FL))).x, (safe_rshift_func_uint64_t_u_s(((make_int1((make_int3(l_640.x, l_640.x, l_640.x).y , ((p_2057->g_176 , (safe_mul_func_uint32_t_u_u((((((safe_mul(make_char2(((((((**l_487) = p_2057->g_645) != ((safe_mul_func_int64_t_s_s((l_593.y == ((**l_335) = ((safe_lshift_func_uint32_t_u_u(((p_42.f0 != (safe_add_func_int32_t_s_s((((p_2057->g_604.x = l_593.y) >= (safe_mod_func_uint32_t_u_u((make_uchar2(l_654.x, l_654.x).x < 1L), 4294967295UL))) , 1L), 0x2B2B6C44L))) < 0xDECB1714L), (****p_2057->g_471))) > p_43))), 0x7831A10FDE8CEC63LL)) , nullptr)) , (*p_2057->g_20)) > p_43) | 0xD02FL), p_42.f0), make_char2(0xFFL, 0xFFL)))).y & 0xE5L) , 0xB16FL) >= l_593.y), (****p_2057->g_471)))) == p_2057->g_244.z))).x & 0UL) <= 0x6088B8B6575394B2LL), 35)))) ^ l_612)), p_2057->g_167[0][0][2]))), 0x9B19L)) ^ l_659) > (****p_2057->g_471))).z, p_42.f0)), p_2057->g_427)) , (**l_335)) , (-1L)), (-1L), l_613[4][0][7], 0xD2609B8167D9D6CDLL).z, 16)) , nullptr) != l_660);
            }
            l_665 = func_64(p_2057->g_163, ((*l_662) = &l_588[3]), ((*l_663) = &l_335), hip_const_1.f0, p_2057);
            return (*l_335);
        }
    }
    else
    { /* block id: 258 */
        __shared__ uint32_t l_668;
        l_668 = 4UL;
        int64_t *l_685[4][7] = {{nullptr, nullptr, &p_2057->g_429, nullptr, nullptr, nullptr, &p_2057->g_429}, {nullptr, nullptr, &p_2057->g_429, nullptr, nullptr, nullptr, &p_2057->g_429}, {nullptr, nullptr, &p_2057->g_429, nullptr, nullptr, nullptr, &p_2057->g_429}, {nullptr, nullptr, &p_2057->g_429, nullptr, nullptr, nullptr, &p_2057->g_429}};
        int32_t l_686[5][3][8] = {{{0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}}, {{0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}}, {{0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}}, {{0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}}, {{0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}, {0x0B120A01L, 0x79F39E5FL, 0x6C7625BEL, 0x37AF2410L, 0x0B120A01L, 0x2F29EFDFL, (-1L), 0x2F29EFDFL}}};
        int16_t *l_693[6][3] = {{nullptr, &p_2057->g_431, nullptr}, {nullptr, &p_2057->g_431, nullptr}, {nullptr, &p_2057->g_431, nullptr}, {nullptr, &p_2057->g_431, nullptr}, {nullptr, &p_2057->g_431, nullptr}, {nullptr, &p_2057->g_431, nullptr}};
        __shared__ int32_t l_694;
        l_694 = 0x2FCC69C5L;
        struct S0 *l_717 = nullptr;
        struct S0 *l_718 = &hip_const_1;
        int16_t l_724 = 0x67C1L;
        int32_t l_760 = (-1L);
        int32_t ***l_770 = &p_2057->g_19;
        int32_t *l_793[9][6][4] = {{{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}, {{nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}, {nullptr, &l_686[2][0][6], &p_2057->g_12, nullptr}}};
        uint3 l_807 = make_uint3(0x31E16192L, 0xD00207ADL, 0x31E16192L);
        int3 l_844 = make_int3(0L, 1L, 0L);
        __shared__ ulong2 l_984;
        l_984 = make_ulong2(0x5BAD79A5BC1DD9F5LL, 0xF6F057B7AD150ADCLL);
        int64_t l_990 = 0x66367BABDAB8BA05LL;
        int3 l_994 = make_int3(0x15AB9910L, 0x85D996DDL, 0x15AB9910L);
        long4 l_1020 = make_long4((-1L), (-1L), (-1L), (-1L));
        int8_t l_1055 = (-1L);
        int8_t l_1063 = 0L;
        __shared__ ushort2 l_1093;
        l_1093 = make_ushort2(0UL, 0x3B84L);
        int32_t *l_1123 = &p_2057->g_428;
        int32_t **l_1122 = &l_1123;
        __shared__ short4 l_1163;
        l_1163 = make_short4(0x3DF7L, 0xB157L, 0x3DF7L, 0xB157L);
        long4 l_1213 = make_long4(0L, (-6L), 0L, (-6L));
        int8_t l_1228 = 1L;
        int32_t *l_1254[5][9][4] = {{{&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}}, {{&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}}, {{&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}}, {{&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}}, {{&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}, {&p_2057->g_443, &p_2057->g_12, &p_2057->g_10, nullptr}}};
        int8_t *l_1271[8];
        __shared__ int8_t l_1276;
        l_1276 = (-1L);
        uint32_t l_1277 = 0x8C48D896L;
        int64_t **l_1326 = nullptr;
        int32_t *l_1328 = nullptr;
        short1 l_1353 = make_short1(0L);
        char3 l_1367 = make_char3((-3L), 5L, (-3L));
        char2 l_1375 = make_char2((-1L), 0x93L);
        int16_t l_1400 = 3L;
        short4 l_1408 = make_short4(0x2F14L, 0x4BE4L, 0x2F14L, 0x4BE4L);
        uint16_t *l_1420 = nullptr;
        int32_t *l_1423 = &l_686[1][0][7];
        struct S0 l_1478 = {10,-51,-1613,7,11,194,7250};
        ulong2 l_1489 = make_ulong2(0x7EBC2F7832EFCE74LL, 0x860036A9D3E1A33FLL);
        int4 l_1521 = make_int4(0x823CD9F3L, 0x362E4344L, 0x823CD9F3L, 0x362E4344L);
        __shared__ uint64_t l_1550;
        l_1550 = 0UL;
        struct S0 *l_1554 = &hip_const_1;
        struct S0 *l_1555 = nullptr;
        struct S0 *l_1556 = &l_1478;
        int i, j, k;
        for (int i = 0; i < 8; i++)
            l_1271[i] = &hip_const_2;
        if ((!(safe_lshift_func_uint16_t_u_u(l_668, ((((((*p_2057->g_471) = (*p_2057->g_471)) != nullptr) , (safe_div_func_uint32_t_u_u((*l_665), ((safe_add_func_uint16_t_u_u(p_2057->g_4.f5, ((((*****p_2057->g_470) = (safe_mul_func_uint16_t_u_u(make_ushort1(0x4ECEL).x, (safe_lshift_func_uint8_t_u_u((make_ulong4((((make_short4((l_668 >= (safe_mod_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((make_short3((-8L), 0L, (l_694 ^= (0xDFE9L < make_short4(((+((safe_div_func_uint64_t_u_u(make_ulong4(l_683.y, l_683.y, l_683.y, l_683.y).x, (l_686[1][0][7] |= ((make_long1(p_2057->g_684.x) ^ make_long1(1L))).x))) >= ((((safe_add_func_int16_t_s_s((safe_lshift_func_int32_t_s_u((safe_mod_func_uint16_t_u_u(p_2057->g_242.y, (*l_665))), 8)), p_42.f0)) < p_43) & l_668) , p_43))) & p_42.f0), 0x6B7EL, (-1L), (-1L)).y))).y < l_695), l_668)), 0x6A97C7D7L))), p_43, p_43, 1L) ^ make_short4(7L, 7L, 7L, 7L))).x >= 0xC0D3L), 0x86C625493CA552FBLL, 18446744073709551615UL, 0x27690C1FEA86431ELL).w & l_668), p_2057->g_696))))) , nullptr) != l_697[1]))) , p_43)))) == 0UL) < (-1L))))))
        { /* block id: 263 */
            uint8_t l_715 = 255UL;
            __shared__ int32_t l_716;
            l_716 = (-6L);
            struct S0 **l_719 = &l_718;
            int8_t *l_720 = &p_2057->g_460;
            int32_t l_723 = 0xC09144F3L;
            long4 l_736 = make_long4(0x1841F0598F5407ABLL, 0L, 0x1841F0598F5407ABLL, 0L);
            __shared__ uint16_t l_741;
            l_741 = 0UL;
            int32_t ***l_744[5][1];
            int i, j;
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 1; j++)
                    l_744[i][j] = &p_2057->g_19;
            }
            (*p_2057->g_134) = (make_uint3(p_2057->g_699.y, p_2057->g_699.y, p_2057->g_699.y).y && ((((p_2057->g_725.x &= ((safe_rshift_func_int64_t_s_u((safe_lshift_func_int16_t_s_u((l_723 = (safe_add_func_int64_t_s_s(((make_long1((~(safe_div_func_int8_t_s_s(((safe_add(make_char2(l_710.y, l_710.y), make_char2(6L, 0x38L)))).x, (safe_add_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u(5UL, make_char4(0L, (0xFF85B1FDL & (l_716 |= (p_2057->g_431 & l_715))), ((*l_720) ^= ((l_717 = l_717) != ((*l_719) = l_718))), (+(-1L))).z)) | (safe_lshift_func_int16_t_s_u(((((l_715 == p_42.f0) || 0xE592L) , 1UL) != 0xD4BB59CBL), 8))), 255UL)))))) & make_long1(0L))).x, p_42.f0))), l_686[1][0][7])), 13)) <= l_724)) | p_42.f0) && l_715) , (-2L)));
            for (p_2057->g_428 = 0; (p_2057->g_428 >= 0); p_2057->g_428 -= 1)
            { /* block id: 273 */
                uint16_t l_733[5] = {0x4AA7L, 0xF278L, 0x4AA7L, 0xF278L, 0x4AA7L};
                int32_t l_748 = 0xEDE2EF1AL;
                uchar2 l_754 = make_uchar2(0x3AL, 7UL);
                int64_t **l_782[3][2][2] = {{{&l_685[0][6], &p_2057->g_202[1]}, {&l_685[0][6], &p_2057->g_202[1]}}, {{&l_685[0][6], &p_2057->g_202[1]}, {&l_685[0][6], &p_2057->g_202[1]}}, {{&l_685[0][6], &p_2057->g_202[1]}, {&l_685[0][6], &p_2057->g_202[1]}}};
                union U1 l_783 = {0xD6F89C9670D78C75LL};
                int i, j, k;
                l_723 ^= (*p_2057->g_20);
                for (p_2057->g_130 = 0; (p_2057->g_130 <= 0); p_2057->g_130 += 1)
                { /* block id: 277 */
                    struct S0 ***l_746 = &l_719;
                    struct S0 **l_747 = &l_718;
                    __shared__ ushort4 l_759;
                    l_759 = make_ushort4(1UL, 0xEB74L, 1UL, 0xEB74L);
                    int64_t ***l_762[2][10] = {{&l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622}, {&l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622, &l_622}};
                    int i, j;
                    (*l_665) &= (safe_rshift_func_uint8_t_u_u((((&p_43 != l_728) & p_43) , ((safe_mod_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s(l_733[0], p_42.f0)) == (safe_rshift_func_int64_t_s_s((((make_long2(l_736.x, l_736.x).x == p_42.f0) | (make_long1((0x0CL <= ((safe_lshift(make_uchar2(0xD6L, (safe_rshift_func_int8_t_s_s(l_741, 7))), make_uchar2(8, 8)))).x)).x & (((safe_div_func_int16_t_s_s((((l_744[4][0] != nullptr) != 1L) >= 3UL), (-1L))) | p_43) ^ l_733[0]))) , l_733[0]), 56))), p_2057->g_745)) ^ 18446744073709551610UL)), hip_const_1.f1));
                    if ((*p_2057->g_20))
                        break;
                    l_748 = (((*l_746) = l_719) == l_747);
                    (*l_665) ^= (((*p_2057->g_20) && (safe_mul_func_int8_t_s_s(make_char4(0xAFL, 0xFAL, ((safe_lshift_func_uint8_t_u_u(((((make_uchar4(p_2057->g_753.z, p_2057->g_753.z, p_2057->g_753.z, p_2057->g_753.z) ^ make_uchar4(254UL, 6UL, 1UL, 0x69L))) ^ make_uchar4(l_754.y, l_754.y, l_754.y, l_754.y))).x, 3)) >= ((safe_sub_func_int64_t_s_s(0x3E9C2667B60BBDA9LL, (safe_mod_func_int32_t_s_s(((make_ushort4(l_759.z, l_759.z, l_759.z, l_759.z).z >= l_760) , make_int2(p_43, 0xE8E0FB2FL).x), p_43)))) < make_ulong2(p_2057->g_761.x, p_2057->g_761.x).y)), (p_43 >= hip_const_1.f4)).z, ((l_762[0][6] == nullptr) , 0xCCL)))) <= 0xF8L);
                    for (p_2057->g_429 = 0; (p_2057->g_429 >= 0); p_2057->g_429 -= 1)
                    { /* block id: 285 */
                        int32_t ***l_769 = &l_333;
                        union U1 **l_776[8][10][3] = {{{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}, {{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}, {{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}, {{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}, {{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}, {{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}, {{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}, {{nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}, {nullptr, &l_774[0], &l_774[2]}}};
                        union U1 ***l_775 = &l_776[0][2][0];
                        uint32_t ****l_781[7];
                        __shared__ int4 l_784;
                        l_784 = make_int4(0x2453A7E3L, (-3L), 0x2453A7E3L, (-3L));
                        int i, j, k;
                        for (int i = 0; i < 7; i++)
                            l_781[i] = &p_2057->g_338;
                        if (p_2057->g_167[(p_2057->g_428 + 3)][p_2057->g_429][(p_2057->g_429 + 1)])
                            break;
                        l_686[0][1][2] &= ((*l_665) = (safe_div_func_int16_t_s_s((((safe_mul_func_int32_t_s_s((safe_sub_func_int16_t_s_s(((func_44((l_770 = l_769), ((l_694 = make_uchar3(1UL, (l_773 == ((*l_775) = &l_774[0])), 252UL).x) < (((safe_div_func_int32_t_s_s(p_42.f0, (safe_mul_func_int32_t_s_s((((*p_2057->g_470) = l_781[6]) == l_781[6]), (l_782[0][1][0] != l_782[1][0][1]))))) != (p_43 && p_2057->g_4.f1)) <= 3L)), l_748, l_783, p_2057) , p_43) < l_733[0]), 0xD07AL)), 0xB91C0353L)) == l_759.y) , p_42.f0), l_759.w)));
                        (*l_665) = make_int1(l_784.w).x;
                        p_2057->g_4.f2 = ((*l_665) = ((*p_2057->g_20) &= (make_short2(2L, 0L).x , (((*l_720) = p_2057->g_299.x) && make_uchar1(p_2057->g_785.z).x))));
                    }
                }
            }
        }
        else
        { /* block id: 301 */
            uint64_t *l_788 = nullptr;
            __shared__ uint32_t **l_791;
            l_791 = &l_306;
            __shared__ int3 l_812;
            l_812 = make_int3(0L, (-4L), 0L);
            uint64_t *l_823 = &p_2057->g_353;
            __shared__ int32_t *l_830;
            l_830 = &p_2057->g_428;
            uint16_t *l_833 = nullptr;
            uint16_t *l_834 = nullptr;
            uint16_t *l_835 = nullptr;
            uint16_t *l_836 = nullptr;
            uint16_t *l_837 = nullptr;
            int32_t *l_845 = &l_760;
            union U1 *l_898 = &p_2057->g_176;
            int32_t l_959 = 7L;
            uint16_t *l_971 = nullptr;
            ulong3 l_983 = make_ulong3(0x576077F2CC2910F6LL, 18446744073709551612UL, 0x576077F2CC2910F6LL);
            int32_t l_988[2];
            int8_t l_991 = 1L;
            int1 l_997 = make_int1(0xE22E96D7L);
            char2 l_1013 = make_char2(0x58L, 7L);
            uint8_t l_1015 = 247UL;
            long3 l_1021 = make_long3(8L, 7L, 8L);
            // attempting a hip shared for loop
            __shared__ struct S0 l_1076[3][3];
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                    l_1076[i][j] = {31,13,375,10,284,243,12747};
            }
            long3 l_1085 = make_long3(0xB8F51CB6BA84F75DLL, (-10L), 0xB8F51CB6BA84F75DLL);
            __shared__ uint32_t ***l_1091;
            l_1091 = &p_2057->g_792[3][3];
            ushort2 l_1092 = make_ushort2(1UL, 0x5A08L);
            int32_t *l_1100 = nullptr;
            int8_t l_1107[7][6] = {{0xADL, 1L, 0xA6L, 7L, 0x1FL, 0x09L}, {0xADL, 1L, 0xA6L, 7L, 0x1FL, 0x09L}, {0xADL, 1L, 0xA6L, 7L, 0x1FL, 0x09L}, {0xADL, 1L, 0xA6L, 7L, 0x1FL, 0x09L}, {0xADL, 1L, 0xA6L, 7L, 0x1FL, 0x09L}, {0xADL, 1L, 0xA6L, 7L, 0x1FL, 0x09L}, {0xADL, 1L, 0xA6L, 7L, 0x1FL, 0x09L}};
            uint32_t l_1108 = 0x5487C58CL;
            uint4 l_1164 = make_uint4(4294967291UL, 0x913D1A37L, 4294967291UL, 0x913D1A37L);
            int16_t *l_1174[5][6] = {{&p_2057->g_163, nullptr, &p_2057->g_163, nullptr, &p_2057->g_163, nullptr}, {&p_2057->g_163, nullptr, &p_2057->g_163, nullptr, &p_2057->g_163, nullptr}, {&p_2057->g_163, nullptr, &p_2057->g_163, nullptr, &p_2057->g_163, nullptr}, {&p_2057->g_163, nullptr, &p_2057->g_163, nullptr, &p_2057->g_163, nullptr}, {&p_2057->g_163, nullptr, &p_2057->g_163, nullptr, &p_2057->g_163, nullptr}};
            union U1 ***l_1188 = &l_773;
            __shared__ uchar3 l_1190;
            l_1190 = make_uchar3(255UL, 254UL, 255UL);
            __shared__ int32_t l_1234;
            l_1234 = 0L;
            uint16_t l_1243 = 0x24B1L;
            int i, j;
            for (int i = 0; i < 2; i++)
                l_988[i] = 0xFEB742BBL;
            l_793[6][2][2] = func_64((safe_lshift_func_uint64_t_u_s((++p_2057->g_353), 21)), &p_2057->g_134, &p_2057->g_19, ((p_2057->g_792[2][7] = ((**l_370) = l_791)) == nullptr), p_2057);
            if (make_int3((((p_2057->g_223 || (((*l_845) |= ((safe_rshift_func_int8_t_s_u((safe_add_func_int64_t_s_s(l_798, (safe_unary_minus_func_uint32_t_u(((((safe_lshift_func_uint32_t_u_s(((safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(((((((make_ulong1(0UL) & make_ulong1(p_2057->g_806.y))).x ^ (make_uint1(l_807.y).x | ((((make_int2(l_808.x, l_808.x) ^ make_int2(l_809.x, l_809.x))) ^ ((((safe_rshift(((make_int2(l_812.z, l_812.z) ^ ((make_int2(0x6CBA53B8L, 0L) | ((safe_sub(((~((safe_lshift(((safe_add(make_int2((safe_div_func_int32_t_s_s((safe_div_func_uint64_t_u_u(((*l_823) &= 0x913AB200073D0D9CLL), (safe_sub_func_int64_t_s_s(((***p_2057->g_338) != ((make_uint1(l_828.y).x != p_42.f0) , (!((***l_770) & (((make_uchar2(p_2057->g_829.z, p_2057->g_829.z).x <= ((((*l_830) |= p_43) , (safe_lshift_func_uint8_t_u_u((p_2057->g_274.y = ((~(p_2057->g_244.y--)) | (safe_mul_func_int64_t_s_s(((safe_sub_func_int32_t_s_s(make_int4(l_844.y, l_844.y, l_844.y, l_844.y).y, (****p_2057->g_471))) , p_43), 0x8F680AFEC4E881C5LL)))), 4))) , l_812.z)) || (**p_2057->g_19)) >= 0x7BL))))), p_42.f0)))), (*p_2057->g_20))), 0xC0F0027CL), make_int2((-2L), (-2L))))), make_int2(0xFD9F1DE2L, 0xFD9F1DE2L)))))), make_int2(0x31CB09E4L, 0x31CB09E4L)))))))), make_int2(32, 32)))) ^ make_int2(0x68B1EA93L, 0x68B1EA93L))))).x)) , p_43) != 8UL) <= 3UL), 18446744073709551615UL)), 0UL)) & (*l_665)), (***l_770))) & 0x14A2F8825B60F968LL) == 0x72CB1436L) > (*l_665)))))), p_2057->g_745)) != l_812.x)) , p_2057->g_244.z)) >= 0x2C2782FC45DB6917LL) | 246UL), 0x097F3887L, (-8L)).z)
            { /* block id: 311 */
                int64_t l_892 = 0xF72B1700D5A11820LL;
                int32_t l_895 = 1L;
                union U1 *l_899 = &l_380;
                __shared__ uint8_t l_900;
                l_900 = 1UL;
                __shared__ int2 l_908;
                l_908 = make_int2((-4L), 0x14C571EDL);
                __shared__ uint8_t l_958;
                l_958 = 248UL;
                int i;
                for (p_2057->g_745 = 24; (p_2057->g_745 >= 26); p_2057->g_745 = safe_add_func_int64_t_s_s(p_2057->g_745, 1))
                { /* block id: 314 */
                    __shared__ ushort1 l_850;
                    l_850 = make_ushort1(1UL);
                    uint1 l_865 = make_uint1(1UL);
                    int i;
                    (*l_665) &= ((safe_sub_func_uint16_t_u_u(make_ushort3(l_850.x, l_850.x, l_850.x).z, (0x4CAFFA66L < 0xDDEEC458L))) > ((p_43 < (((safe_add_func_int32_t_s_s((*p_2057->g_20), (l_812.x = (**p_2057->g_19)))) , ((((safe_rshift_func_int32_t_s_s(make_int1((-1L)).x, 30)) | (safe_add_func_uint16_t_u_u((0x8FL <= 255UL), (safe_sub_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u(((safe_lshift_func_uint32_t_u_s(((((safe_rshift(make_uint2(l_865.x, l_865.x), make_uint2(32, 32)))) ^ ((make_uint2((((make_long3(0L, 0xA9BC83D97F245491LL, 1L) & make_long3((safe_rshift_func_int16_t_s_s((p_42.f0 > (-3L)), 2)), 0x5722FD8DF9085321LL, p_42.f0))).x & (***l_770)), (***p_2057->g_338)) ^ make_uint2(4294967291UL, 4294967291UL))))).y, p_42.f0)) <= p_2057->g_241.y), p_42.f0)) ^ p_42.f0), p_42.f0))))) && 0x2F2DL) , p_42.f0)) >= l_850.x)) , 0x0A7C55B63308B15CLL));
                }
                if (p_2057->g_429)
                    goto lbl_897;
lbl_897:
                for (l_380.f1 = 0; (l_380.f1 != 32); l_380.f1++)
                { /* block id: 320 */
                    int8_t *l_880[8];
                    int32_t l_881[2];
                    __shared__ int32_t l_882;
                    l_882 = 0xF4B5D476L;
                    int32_t l_896 = 0x612CE04EL;
                    int i;
                    for (int i = 0; i < 8; i++)
                        l_880[i] = nullptr;
                    for (int i = 0; i < 2; i++)
                        l_881[i] = (-1L);
                    l_896 &= ((***l_770) = ((safe_rshift_func_uint8_t_u_s(make_uchar1(l_872.x).x, 0)) == (safe_div_func_uint64_t_u_u((((((safe_rshift(make_ulong2(5UL, 0UL), make_ulong2(64, 64)))) ^ make_ulong2(p_2057->g_877.z, p_2057->g_877.z))).x == (((p_42.f0 & (safe_mul_func_int32_t_s_s((l_882 &= ((l_881[1] = l_812.x) | (p_2057->g_280.x = p_2057->g_280.x))), p_43))) , make_int2(p_2057->g_883.x, p_2057->g_883.x).y) < (l_895 &= (l_367 , (((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s(1L, make_ushort4((((*l_665) != (((safe_add_func_uint16_t_u_u((p_2057->g_241.x++), 0x3D78L)) != (p_42.f0 != l_892)) < (*l_665))) < p_42.f0), p_42.f0, p_42.f0, p_42.f0).x)) & p_2057->g_725.x), 11)) > (***l_770)) ^ (-9L)))))), 0xDD4323C79BFC663BLL))));
                    return (**l_770);
                }
                if ((p_43 , ((**p_2057->g_19) &= (-1L))))
                { /* block id: 332 */
                    uint64_t l_901 = 0xC14E4D80E5424440LL;
                    int4 l_930 = make_int4(0xE6639DD4L, 0x924E7707L, 0xE6639DD4L, 0x924E7707L);
                    struct S0 l_931[6][8][4] = {{{{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}}, {{{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}}, {{{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}}, {{{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}}, {{{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}}, {{{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}, {{2,-35,3765,38,-602,216,14195}, {11,-42,-1662,3,392,247,1135}, {8,14,2147,17,506,118,14580}, {20,-21,869,47,502,85,3230}}}};
                    __shared__ int16_t l_941;
                    l_941 = (-5L);
                    uint8_t l_951 = 0x4EL;
                    int32_t *l_960 = &p_2057->g_5;
                    int i, j, k;
                    (*l_665) = (((*l_773) = &p_2057->g_62) != (l_899 = l_898));
                    for (l_380.f0 = 0; (l_380.f0 <= 3); l_380.f0 += 1)
                    { /* block id: 338 */
                        l_901 |= l_900;
                        if (p_2057->g_696)
                            goto lbl_919;
                    }
lbl_919:
                    (***l_770) ^= (safe_div_func_int64_t_s_s((p_42.f0 , 5L), ((safe_add_func_int32_t_s_s(((make_int3(0x5B65D7B2L, 1L, (p_2057->g_906 != &p_2057->g_907)) | make_int3(l_908.y, l_908.y, l_908.y))).y, (safe_lshift_func_uint16_t_u_u(p_42.f0, (nullptr == p_2057->g_911))))) , ((safe_rshift_func_int32_t_s_s((safe_rshift_func_int64_t_s_u((safe_sub_func_int16_t_s_s((0xE1L != 0x2AL), 0xC3F9L)), 56)), p_43)) & 1L))));
                    if (((safe_sub(((((((make_int3(1L, ((l_941 |= (safe_lshift_func_int32_t_s_s(make_int3(0x38596ACAL, (((((*p_2057->g_134) = (safe_mod_func_uint64_t_u_u((safe_add_func_uint32_t_u_u((p_2057->g_244.y , (0x637EFE2AL != (safe_add_func_uint16_t_u_u(p_2057->g_745, l_895)))), 4294967295UL)), hip_const_1.f5))) != make_int4(l_930.z, l_930.z, l_930.z, l_930.z).z) && ((l_931[0][5][1] , p_42.f0) , ((safe_sub_func_int8_t_s_s(((((safe_div_func_int32_t_s_s((l_931[0][5][1].f2 = ((*l_665) = (safe_lshift_func_int16_t_s_s(((safe_unary_minus_func_uint8_t_u((safe_mul_func_uint16_t_u_u(p_2057->g_299.x, p_42.f0)))) < p_2057->g_5), p_43)))), 0xCAF31448L)) , l_812.x) & l_908.y) != 0L), p_43)) && p_42.f0))) < hip_const_1.f2), (-5L)).z, l_908.x))) & l_908.x), (**p_2057->g_19)) ^ make_int3(0x1A6A4BA6L, 0x1A6A4BA6L, 0x1A6A4BA6L))) ^ make_int3((-1L), (-1L), (-1L)))) ^ make_int3((-8L), (-8L), (-8L)))), make_int3(0xE279BFACL, 0xE279BFACL, 0xE279BFACL)))).x)
                    { /* block id: 347 */
                        int32_t l_946 = (-7L);
                        uint16_t *l_947 = nullptr;
                        uint16_t *l_948 = nullptr;
                        uint16_t *l_949 = nullptr;
                        uint16_t l_950 = 0x7854L;
                        (*p_2057->g_134) = ((safe_sub_func_int64_t_s_s(p_43, (((safe_lshift_func_uint16_t_u_u(0x2D2DL, (p_2057->g_241.x = l_946))) , 0x198C34E7D9B6A352LL) >= l_950))) , (l_951 && (safe_div_func_uint32_t_u_u((l_959 ^= (safe_mul_func_int64_t_s_s((((**p_2057->g_339) > (safe_mod_func_int64_t_s_s(p_43, 0xA5C75AFB1130EE33LL))) & l_812.x), l_958))), (-8L)))));
                        (**l_770) = l_960;
                    }
                    else
                    { /* block id: 352 */
                        return (*p_2057->g_19);
                    }
                }
                else
                { /* block id: 355 */
                    int32_t *l_963 = nullptr;
                    for (l_760 = 0; (l_760 > (-30)); l_760 = safe_sub_func_uint32_t_u_u(l_760, 1))
                    { /* block id: 358 */
                        return l_963;
                    }
                }
            }
            else
            { /* block id: 362 */
                int32_t *l_964 = nullptr;
                l_964 = &l_959;
            }
            if ((safe_mod_func_uint8_t_u_u((p_2057->g_274.y |= (safe_sub_func_uint64_t_u_u(((0L | ((safe_mod_func_int32_t_s_s(((p_2057->g_244.x = (*l_665)) || (nullptr == (*p_2057->g_19))), (((((**l_773) = p_42) , (!(safe_sub_func_uint16_t_u_u((p_42.f0 <= (safe_mod_func_uint32_t_u_u(0x9B20D142L, (**p_2057->g_19)))), (!p_2057->g_116.y))))) ^ p_2057->g_431) || 255UL))) , p_43)) <= 1L), p_43))), p_2057->g_883.x)))
            { /* block id: 368 */
                uint16_t l_987[3];
                int64_t l_989 = 0x27FDCB9D9D1EAF62LL;
                int1 l_992 = make_int1(0x2DE4CBAEL);
                int8_t *l_998 = nullptr;
                __shared__ int8_t *l_999;
                l_999 = &p_2057->g_460;
                int32_t l_1000 = 1L;
                __shared__ int32_t **l_1028;
                l_1028 = nullptr;
                long4 l_1070 = make_long4(0xFD8A0B0078941D60LL, 0L, 0xFD8A0B0078941D60LL, 0L);
                __shared__ int16_t **l_1073;
                l_1073 = &l_728;
                struct S0 *l_1077[10][7][2] = {{{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}, {{&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}, {&l_1076[0][1], nullptr}}};
                int8_t l_1079 = (-8L);
                uint32_t ***l_1090 = &l_305;
                int32_t ***l_1094 = &p_2057->g_19;
                int32_t *l_1096 = &p_2057->g_5;
                int i, j, k;
                for (int i = 0; i < 3; i++)
                    l_987[i] = 1UL;
                l_991 ^= make_int2(0x1CB519F0L, (((&p_43 != nullptr) && (p_42.f0 == (safe_mul_func_int8_t_s_s(((p_42.f0 , (((*l_665) = (0xDAL && (safe_add_func_int16_t_s_s(l_812.x, (((+(p_43 != make_ulong4(((((make_ulong2(p_2057->g_982.x, p_2057->g_982.x) & ((make_ulong2(l_983.y, l_983.y) ^ make_ulong2(l_984.x, l_984.x))))).x > ((l_988[0] = (l_987[1] = ((l_959 = (((*l_823) = p_43) & (safe_add_func_int32_t_s_s(((*p_2057->g_20) = ((make_ulong3((((&l_668 != &l_668) , (**l_773)) , 3UL), 0x5CEC73D2E3AB6713LL, p_43).x | p_42.f0) > p_2057->g_87.y)), p_42.f0)))) > 8L))) > p_43)) && p_43), 18446744073709551608UL, 1UL, 1UL).w)) | (**p_2057->g_339)) & 0x92L))))) & 0x59429D86L)) || l_989), p_2057->g_490.x)))) ^ l_990)).y;
                if (l_367.f1)
                    goto lbl_1075;
                if (((((make_int3(l_992.x, l_992.x, l_992.x) | ((make_int3(p_2057->g_993.x, p_2057->g_993.x, p_2057->g_993.x) ^ make_int3(l_994.y, l_994.y, l_994.y))))) & make_int3(p_43, (((((make_char4(p_2057->g_995.z, p_2057->g_995.z, p_2057->g_995.z, p_2057->g_995.z) ^ ((make_char4(p_2057->g_996.x, p_2057->g_996.x, p_2057->g_996.x, p_2057->g_996.x) ^ make_char4(8L, ((make_int1(l_997.x).x , ((*p_2057->g_912) , l_997.x)) <= ((*l_999) = p_2057->g_883.x)), 0x42L, ((-8L) && p_2057->g_753.z)))))).z , (l_1000 |= l_988[0])) , nullptr) != nullptr), l_987[1]))).z)
                { /* block id: 378 */
                    int64_t l_1003 = 0xDADF6A3BB05376CBLL;
                    int32_t ****l_1029[3];
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_1029[i] = &l_698[0][4][0];
                    l_988[1] = (safe_rshift_func_uint16_t_u_s((p_42.f0 && l_1003), ((p_43 ^= (safe_div_func_int64_t_s_s(make_long1(p_2057->g_1006.y).x, ((*l_665) = (safe_mod_func_int16_t_s_s(((***l_770) &= 0xF8A2L), (safe_sub_func_int64_t_s_s((safe_div_func_int8_t_s_s((((l_1000 = l_812.y) > l_997.x) , ((((make_char2(l_1013.x, l_1013.x) & make_char2(l_1014.z, l_1014.z))) ^ make_char2(((~l_1015) <= (safe_rshift_func_int64_t_s_u((((0xBB7A3B6F0994CDA9LL != ((safe_add(make_long1(l_1020.w), ((make_long1(l_1021.x) ^ make_long1(((+(l_1021.x ^ ((safe_sub_func_int32_t_s_s(((safe_lshift_func_int8_t_s_u((!(-6L)), l_1003)) | p_2057->g_427), l_1003)) > 0xAC4626F9L))) == 0x887368795E631E4BLL))))))).x) > l_1021.y) , p_42.f0), 20))), 3L))).y), p_2057->g_87.y)), p_2057->g_1006.y)))))))) & p_42.f0)));
                    (*l_665) = (((nullptr != l_1026) >= (((*l_770) = func_17(func_17(&p_2057->g_20, p_2057), p_2057)) == (p_2057->g_4 , (l_1028 = nullptr)))) && ((l_1029[1] != p_2057->g_1030[0][0]) && p_43));
                }
                else
                { /* block id: 387 */
                    uint16_t *l_1044 = &l_987[0];
                    uint16_t *l_1048 = nullptr;
                    uint16_t *l_1049[7][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                    int64_t **l_1052 = &p_2057->g_180;
                    int32_t l_1053 = 0x3D918FCDL;
                    __shared__ int32_t l_1054;
                    l_1054 = 1L;
                    struct S0 *l_1061 = &hip_const_1;
                    struct S0 *l_1062[2][8] = {{&hip_const_1, &p_2057->g_4, nullptr, &p_2057->g_4, &hip_const_1, &p_2057->g_4, nullptr, &p_2057->g_4}, {&hip_const_1, &p_2057->g_4, nullptr, &p_2057->g_4, &hip_const_1, &p_2057->g_4, nullptr, &p_2057->g_4}};
                    int i, j;
                    l_367 = ((p_43 && (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_uint32_t_u_u(((((safe_sub(((safe_add(make_uint2(p_2057->g_1040.x, p_2057->g_1040.x), make_uint2(p_42.f0, (safe_add_func_uint8_t_u_u((((*l_1044) = (safe_unary_minus_func_int64_t_s((***l_770)))) < (~(safe_rshift_func_int64_t_s_u(make_long2(l_1047.x, l_1047.x).x, (make_ulong3(0x229253278DF86FC1LL, ((((++p_2057->g_241.y) != (l_1053 = (p_42.f0 < ((*l_622) == ((*l_1052) = (**p_2057->g_906)))))) ^ ((((l_1054 = (l_1054 == (l_1055 , (p_43 = (safe_sub_func_uint64_t_u_u((++p_2057->g_877.x), 9UL)))))) ^ p_42.f0) && p_43) && l_1060)) >= p_42.f0), 9UL).x != 0xF50655E9C6C6B546LL))))), p_2057->g_5)))))), make_uint2(0xBB23E50CL, 0xBB23E50CL)))) ^ make_uint2(0x67A6F912L, 0x67A6F912L))).y, p_42.f0)) != 0UL), l_1015))) , (*l_718));
                }
                if (make_int4(p_42.f0, (+0xD035DD90L), (-9L), ((l_1063 = 3UL) , (((safe_mul_func_uint64_t_u_u(((***p_2057->g_338) , ((safe_lshift_func_uint64_t_u_s(((*l_823) = p_2057->g_244.y), 20)) == (hip_const_1 , ((p_2057->g_883.x , (l_1074 = ((safe_lshift(make_long4(l_1070.z, l_1070.z, l_1070.z, l_1070.z), ((safe_lshift(make_long4((-7L), ((((*l_1073) = &p_43) == nullptr) > 4294967293UL), l_959, p_43), make_long4(1L, 1L, 1L, 1L))))))).w)) != p_2057->g_4.f6)))), p_42.f0)) , nullptr) != nullptr))).x)
                { /* block id: 401 */
                    if (((*p_2057->g_20) ^= (p_43 < p_42.f0)))
                    { /* block id: 403 */
lbl_1075:
                        (*p_2057->g_134) ^= p_43;
                        l_1076[2][0] = l_1076[0][1];
                    }
                    else
                    { /* block id: 407 */
                        int3 l_1078 = make_int3(8L, 0xE6AC3737L, 8L);
                        int32_t ***l_1084 = &p_2057->g_19;
                        int64_t l_1095 = 0xCE45B1B23D2B3D72LL;
                        int i;
                        l_1079 &= make_int2(l_1078.z, l_1078.z).y;
                        l_1096 = func_64((((safe_add_func_uint64_t_u_u(p_2057->g_684.x, (safe_mul_func_uint8_t_u_u(0xB6L, (func_44(l_1084, (((make_long2(l_1085.y, l_1085.y) & make_long2(p_2057->g_1086.y, p_2057->g_1086.y))).x , ((((safe_div(make_uchar1(p_2057->g_1089.x), ((make_uchar1((((**p_2057->g_470) = &l_791) == (l_1091 = l_1090))) & make_uchar1(1UL)))))) & make_uchar1(0xB6L))).x), ((func_44((make_ushort2(l_1092.x, l_1092.x).y , l_1084), p_2057->g_443, (make_ushort4(l_1093.x, l_1093.x, l_1093.x, l_1093.x).w & 0UL), p_42, p_2057) , 0x1C22075672C0DAEBLL) , (*p_2057->g_340)), (*l_898), p_2057) , p_43))))) != p_42.f0) , 0x65L), (*l_1084), l_1094, l_1095, p_2057);
                    }
                }
                else
                { /* block id: 413 */
                    int64_t **l_1104[2];
                    int32_t *l_1105 = &p_2057->g_462;
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_1104[i] = &p_2057->g_202[1];
                    for (p_2057->g_431 = (-23); (p_2057->g_431 <= 4); p_2057->g_431 = safe_add_func_uint32_t_u_u(p_2057->g_431, 2))
                    { /* block id: 416 */
                        int32_t l_1099 = (-1L);
                        if (l_1099)
                            break;
                        l_1100 = ((**l_770) = (*p_2057->g_19));
                    }
                    for (p_2057->g_62.f2 = 0; (p_2057->g_62.f2 != 16); p_2057->g_62.f2++)
                    { /* block id: 423 */
                        (*p_2057->g_134) = (((*l_773) = (*p_2057->g_911)) == ((make_uint4(p_2057->g_1103.x, p_2057->g_1103.x, p_2057->g_1103.x, p_2057->g_1103.x).z < (((((*p_2057->g_906) = l_1104[0]) != l_622) && (l_1105 == nullptr)) == (((*l_1026) = &p_2057->g_4) == &l_1076[2][0]))) , nullptr));
                        return l_1106;
                    }
                    return (**l_770);
                }
                l_1108--;
            }
            else
            { /* block id: 433 */
                int32_t **l_1119 = &l_845;
                struct S0 l_1124[6] = {{22,41,688,33,-427,59,14581}, {22,41,688,33,-427,59,14581}, {9,-57,-1449,83,682,79,14019}, {22,41,688,33,-427,59,14581}, {22,41,688,33,-427,59,14581}, {9,-57,-1449,83,682,79,14019}};
                uint1 l_1159 = make_uint1(1UL);
                int32_t l_1214 = 0x4A5543C8L;
                int32_t l_1223 = 0xA51CD335L;
                int32_t l_1225 = 0xD262846CL;
                int32_t l_1226 = 7L;
                int32_t l_1229 = 0xD2099E01L;
                int32_t l_1230 = 0x6A0F8F1FL;
                int32_t l_1231 = 0L;
                int32_t l_1232 = 0L;
                int32_t l_1233 = 0xAB373442L;
                int32_t l_1235 = (-9L);
                int32_t l_1236 = 0xA4C9BF19L;
                __shared__ int32_t l_1237;
                l_1237 = (-1L);
                __shared__ int32_t l_1239;
                l_1239 = (-7L);
                // attempting a hip shared for loop
                __shared__ int32_t l_1240[9];
                for (int i = 0; i < 9; i++)
                    l_1240[i] = (-4L);
                int i;
            }
        }
        if ((((*l_1106) ^= (safe_mod_func_int8_t_s_s((p_2057->g_280.y ^= (((safe_div_func_uint64_t_u_u(p_2057->g_167[4][0][0], make_long4((-2L), p_43, 0L, ((make_long3(p_43, (l_1277 &= (safe_mul_func_int16_t_s_s((safe_mod_func_int8_t_s_s((safe_mul_func_int8_t_s_s((((p_2057->g_995.y = p_42.f0) > ((make_ulong3(p_2057->g_1272.z, p_2057->g_1272.z, p_2057->g_1272.z).y | (safe_mod_func_uint64_t_u_u(((l_1275 & (((((p_42.f0 , 0x634C6A42L) , ((*l_770) = func_17(func_17((l_1276 , (*l_770)), p_2057), p_2057))) == nullptr) || p_43) , (*p_2057->g_340))) ^ p_2057->g_725.y), p_2057->g_5))) , p_43)) <= p_2057->g_1189.z), 0UL)), p_42.f0)), p_42.f0))), 0x4DE9F5B8C20C206ALL) ^ make_long3(0xC4793DF492B23832LL, 0xC4793DF492B23832LL, 0xC4793DF492B23832LL))).z).x)) == 249UL) == p_43)), p_2057->g_4.f0))) | p_42.f0))
        { /* block id: 491 */
            int16_t l_1286 = (-3L);
            uint64_t *l_1290 = &l_1179[1];
            __shared__ int64_t ****l_1298;
            l_1298 = &p_2057->g_906;
            uint1 l_1320 = make_uint1(0xB9D1482DL);
            __shared__ uchar3 l_1323;
            l_1323 = make_uchar3(0UL, 0x88L, 0UL);
            int32_t **l_1329 = nullptr;
            int32_t l_1334[4][5][2] = {{{6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}}, {{6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}}, {{6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}}, {{6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}, {6L, 0xA52289E9L}}};
            uint32_t l_1335 = 0x2E48CFF4L;
            struct S0 l_1347 = {31,55,2135,36,-290,208,6711};
            short1 l_1352 = make_short1(0x2FB8L);
            uint8_t l_1357 = 2UL;
            int32_t l_1359 = 3L;
            int1 l_1366 = make_int1((-6L));
            int8_t **l_1374 = &p_2057->g_1369;
            __shared__ union U1 l_1380;
            l_1380 = {-1L};
            uint32_t l_1390[3];
            // attempting a hip shared for loop
            __shared__ int32_t ***l_1395[6];
            for (int i = 0; i < 6; i++)
                l_1395[i] = &l_1329;
            int i, j, k;
            for (int i = 0; i < 3; i++)
                l_1390[i] = 5UL;
            for (int i = 0; i < 6; i++)
                l_1395[i] = &l_1329;
            for (p_2057->g_443 = 0; (p_2057->g_443 > 19); p_2057->g_443 = safe_add_func_uint8_t_u_u(p_2057->g_443, 1))
            { /* block id: 494 */
                union U1 *l_1288 = nullptr;
                uint64_t *l_1289 = nullptr;
                int32_t l_1293[5];
                uint16_t l_1307 = 65535UL;
                int64_t **l_1327 = &p_2057->g_202[1];
                __shared__ uint64_t l_1421;
                l_1421 = 0UL;
                int i;
                for (int i = 0; i < 5; i++)
                    l_1293[i] = 0x1F0781D0L;
                p_2057->g_4 = hip_const_1;
            }
            (*p_2057->g_19) = &l_686[1][0][7];
        }
        else
        { /* block id: 569 */
            uint32_t l_1429 = 7UL;
            uint64_t *l_1439 = nullptr;
            uint64_t *l_1440 = nullptr;
            __shared__ uint64_t *l_1441;
            l_1441 = nullptr;
            uint16_t *l_1450 = nullptr;
            uint32_t l_1451 = 18446744073709551615UL;
            int2 l_1452 = make_int2((-1L), (-9L));
            __shared__ int32_t l_1453;
            l_1453 = 0x963D5650L;
            int32_t ***l_1465 = nullptr;
            int8_t **l_1473 = &l_1271[5];
            __shared__ uint3 l_1494;
            l_1494 = make_uint3(0xD1367560L, 4UL, 0xD1367560L);
            __shared__ union U1 ***l_1505;
            l_1505 = nullptr;
            int i;
            if ((safe_mod_func_int32_t_s_s(((l_1453 |= (0xEFD5201B98E54B08LL | (safe_mul_func_uint16_t_u_u(((make_ushort1(0UL).x != (((l_1429 < (safe_lshift_func_int16_t_s_u((((((safe_sub_func_uint32_t_u_u((p_42.f0 , p_42.f0), (((safe_div_func_uint16_t_u_u(0x72ACL, p_2057->g_1438)) == 0x5167C2DE6F7B15F7LL) <= ((((++p_2057->g_761.x) >= ((safe_div_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u(0x22F0L, ((((p_2057->g_241.y = ((make_ushort1(5UL) & ((make_ushort1(l_1448.y) | make_ushort1(p_2057->g_1449.y))))).x) <= l_1451) && 0x69B44F4CL) & 0x1A4BL))) , p_43), l_1452.x)) ^ 0x5FL)) > p_43) != p_42.f0)))) != 0x0773L) == 1L) , l_1452.x) >= p_2057->g_785.x), p_43))) < p_42.f0) ^ 0xD03697B313170769LL)) > p_42.f0), 0xBA12L)))) ^ 1L), 0xDEDEF682L)))
            { /* block id: 573 */
                int32_t *l_1456 = &p_2057->g_10;
                __shared__ uint32_t ****l_1472;
                l_1472 = &p_2057->g_338;
                int32_t **l_1480[3][8] = {{&l_1423, &l_1258[7], &p_2057->g_134, nullptr, &l_1254[2][4][2], nullptr, &l_1254[2][4][2], nullptr}, {&l_1423, &l_1258[7], &p_2057->g_134, nullptr, &l_1254[2][4][2], nullptr, &l_1254[2][4][2], nullptr}, {&l_1423, &l_1258[7], &p_2057->g_134, nullptr, &l_1254[2][4][2], nullptr, &l_1254[2][4][2], nullptr}};
                int i, j;
                for (p_2057->g_176.f2 = (-11); (p_2057->g_176.f2 <= (-12)); p_2057->g_176.f2 = safe_sub_func_int64_t_s_s(p_2057->g_176.f2, 2))
                { /* block id: 576 */
                    return l_1456;
                }
                for (p_2057->g_745 = 0; (p_2057->g_745 == 22); p_2057->g_745 = safe_add_func_int64_t_s_s(p_2057->g_745, 1))
                { /* block id: 581 */
                    int32_t *l_1461 = &p_2057->g_10;
                    for (l_1451 = 0; (l_1451 >= 55); l_1451++)
                    { /* block id: 584 */
                        if ((*p_2057->g_1259))
                            break;
                        if ((*l_1423))
                            break;
                        return l_1461;
                    }
                    if ((**p_2057->g_19))
                        break;
                }
                if (((safe_div_func_int32_t_s_s(make_int1(p_2057->g_1464.y).x, ((((l_1465 != nullptr) > (safe_add_func_int32_t_s_s((*p_2057->g_20), ((*l_665) = ((**p_2057->g_339) || (((&p_2057->g_1031[0][5] == nullptr) || (p_43 > (safe_mul_func_int32_t_s_s((l_1472 == (((l_1474 = l_1473) == l_1372) , l_1472)), p_43)))) , p_43)))))) | l_1475[0]) && hip_const_1.f1))) > 0L))
                { /* block id: 593 */
                    int32_t **l_1479 = &l_1254[2][4][2];
                    for (l_465 = 0; (l_465 >= 50); l_465 = safe_add_func_int64_t_s_s(l_465, 1))
                    { /* block id: 596 */
                        if ((*l_1456))
                            break;
                    }
                    l_1478 = (**l_1026);
                    (*l_1479) = (*p_2057->g_19);
                }
                else
                { /* block id: 601 */
                    int32_t *l_1482[6][3][9] = {{{nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}}, {{nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}}, {{nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}}, {{nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}}, {{nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}}, {{nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}, {nullptr, nullptr, &p_2057->g_443, nullptr, &l_1222, &l_1222, nullptr, &p_2057->g_443, nullptr}}};
                    int i, j, k;
                    if ((*p_2057->g_134))
                    { /* block id: 602 */
                        int32_t *l_1481 = nullptr;
                        l_1481 = func_64(p_42.f0, l_1480[0][6], l_770, p_2057->g_785.x, p_2057);
                        return l_1483;
                    }
                    else
                    { /* block id: 605 */
                        int32_t *l_1484 = nullptr;
                        return l_1484;
                    }
                }
            }
            else
            { /* block id: 609 */
                uint2 l_1496 = make_uint2(4294967291UL, 0x31F31846L);
                struct S0 ***l_1498 = &l_1026;
                struct S0 ****l_1497 = &l_1498;
                int32_t *****l_1504 = &l_697[1];
                int i;
                if ((safe_mod_func_uint8_t_u_u(((p_42.f0 == ((safe_mul_func_int16_t_s_s((p_42.f0 != make_ulong1(l_1489.x).x), 0xC256L)) >= ((safe_rshift_func_uint32_t_u_u(((safe_add(make_uint1(l_1494.z), ((make_uint1(p_2057->g_1495.z) ^ make_uint1(l_1496.y)))))).x, (((*l_1497) = &l_1026) == p_2057->g_1499))) != (((**l_1372) ^= (((*l_1504) = &p_2057->g_1031[0][3]) != &p_2057->g_1031[0][5])) <= (l_1505 == &p_2057->g_911))))) ^ p_43), p_2057->g_1272.y)))
                { /* block id: 613 */
                    return (*p_2057->g_19);
                }
                else
                { /* block id: 615 */
                    __shared__ ushort3 l_1514;
                    l_1514 = make_ushort3(65529UL, 1UL, 65529UL);
                    int8_t l_1517 = (-1L);
                    int32_t l_1528 = 0x8D594A06L;
                    int64_t ****l_1549 = nullptr;
                    int64_t *****l_1548 = &l_1549;
                    int i;
                    (*l_1106) = 0xB84BBDECL;
                    if (((**p_2057->g_339) > ((nullptr == &p_2057->g_353) ^ (safe_mod_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((((safe_add_func_int64_t_s_s((0L != ((safe_sub(make_ushort2(l_1514.z, l_1514.z), ((safe_rshift(make_ushort2(l_1517, 0x97A0L), make_ushort2(l_1518.x, l_1518.x))))))).x), p_43)) <= (((&l_1326 != nullptr) >= (~(l_1517 <= l_1496.y))) || p_43)) , 0x2FL), l_1514.x)), 0xE437L)))))
                    { /* block id: 617 */
                        int64_t l_1531[1][7][7] = {{{0x46733D3D469D94C6LL, 0xF745D773531B9964LL, 0xC64CDBEB35487ED8LL, 0L, (-10L), (-5L), 0x7F512727EE5BA43CLL}, {0x46733D3D469D94C6LL, 0xF745D773531B9964LL, 0xC64CDBEB35487ED8LL, 0L, (-10L), (-5L), 0x7F512727EE5BA43CLL}, {0x46733D3D469D94C6LL, 0xF745D773531B9964LL, 0xC64CDBEB35487ED8LL, 0L, (-10L), (-5L), 0x7F512727EE5BA43CLL}, {0x46733D3D469D94C6LL, 0xF745D773531B9964LL, 0xC64CDBEB35487ED8LL, 0L, (-10L), (-5L), 0x7F512727EE5BA43CLL}, {0x46733D3D469D94C6LL, 0xF745D773531B9964LL, 0xC64CDBEB35487ED8LL, 0L, (-10L), (-5L), 0x7F512727EE5BA43CLL}, {0x46733D3D469D94C6LL, 0xF745D773531B9964LL, 0xC64CDBEB35487ED8LL, 0L, (-10L), (-5L), 0x7F512727EE5BA43CLL}, {0x46733D3D469D94C6LL, 0xF745D773531B9964LL, 0xC64CDBEB35487ED8LL, 0L, (-10L), (-5L), 0x7F512727EE5BA43CLL}}};
                        uint16_t *l_1551 = nullptr;
                        uint16_t *l_1552 = nullptr;
                        uint16_t *l_1553 = &l_1294[0][0];
                        int i, j, k;
                        (*p_2057->g_1259) = (safe_lshift_func_uint16_t_u_s((make_int1(l_1521.y).x , ((safe_mul_func_int32_t_s_s(((l_1496.y == (&p_2057->g_907 == nullptr)) & (safe_mod_func_int8_t_s_s(8L, (safe_mul_func_uint8_t_u_u((l_1528 = p_2057->g_5), ((safe_mod_func_int32_t_s_s(((*l_1423) = ((*l_1106) = l_1531[0][1][6])), (safe_div_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((((((safe_sub_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((((0x534CL > ((*l_1553) = (safe_lshift_func_int64_t_s_u(p_43, ((safe_mul_func_uint64_t_u_u((nullptr == l_1548), l_1550)) <= p_43))))) , l_1514.y) <= p_43) >= 0xDABA772FE8BDA86DLL), 9L)), 0x37L)) & (*p_2057->g_1369)), 0xC5DDAB6B9627276BLL)) , &p_2057->g_1368[3]) != nullptr) & p_43) , p_43), p_42.f0)), p_2057->g_1160.z)), p_42.f0)))) != 0xF3L)))))), p_43)) & p_42.f0)), p_42.f0));
                        return (*p_2057->g_19);
                    }
                    else
                    { /* block id: 624 */
                        return (*p_2057->g_19);
                    }
                }
            }
        }
        (*l_1556) = (**l_1026);
    }
    return l_1557;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_176 p_2057->g_87 p_2057->g_148 p_2057->g_19 p_2057->g_20 p_2057->g_5 p_2057->g_167 hip_const_1.f2 p_2057->g_4.f2 p_2057->g_223 p_2057->g_241 p_2057->g_242 p_2057->g_244 hip_const_2 hip_const_3 p_2057->g_116 p_2057->g_274 p_2057->g_280 p_2057->g_281 p_2057->g_4.f6 p_2057->g_12
 * writes: p_2057->g_180 p_2057->g_5 p_2057->g_167 p_2057->g_202 p_2057->g_223 p_2057->g_163 p_2057->g_241
 */
__device__ union U1  func_44(int32_t *** p_45, uint8_t  p_46, uint32_t  p_47, union U1  p_48, struct S2 * p_2057)
{ /* block id: 47 */
    uint32_t l_177 = 0xFF74A9DAL;
    // attempting a hip shared for loop
    __shared__ int64_t *l_178[9][6][4];
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 4; k++)
                l_178[i][j][k] = nullptr;
        }
    }
    int64_t **l_179[3][3][2] = {{{&l_178[4][4][0], &l_178[4][4][0]}, {&l_178[4][4][0], &l_178[4][4][0]}, {&l_178[4][4][0], &l_178[4][4][0]}}, {{&l_178[4][4][0], &l_178[4][4][0]}, {&l_178[4][4][0], &l_178[4][4][0]}, {&l_178[4][4][0], &l_178[4][4][0]}}, {{&l_178[4][4][0], &l_178[4][4][0]}, {&l_178[4][4][0], &l_178[4][4][0]}, {&l_178[4][4][0], &l_178[4][4][0]}}};
    uint1 l_187 = make_uint1(0xBF69327CL);
    uchar2 l_188 = make_uchar2(1UL, 0x59L);
    int32_t l_193 = 0xEC8D3978L;
    uint32_t *l_194 = &p_2057->g_167[4][0][0];
    int64_t *l_201 = nullptr;
    int32_t l_203 = 0x3EA2FF55L;
    short3 l_206 = make_short3(0L, 0x498CL, 0L);
    int32_t l_209 = (-8L);
    int32_t l_214 = (-3L);
    int32_t l_215 = (-9L);
    int32_t l_216 = 3L;
    int32_t l_217 = (-1L);
    int32_t l_218 = 0L;
    int32_t l_219 = 0xEF1A15CEL;
    int32_t l_220 = 0x3D71B049L;
    __shared__ int32_t l_221;
    l_221 = 0x7DDB6465L;
    int32_t l_222[1][2][7] = {{{6L, 6L, 0xF7610380L, 9L, 0xBDB629B3L, 9L, 0xF7610380L}, {6L, 6L, 0xF7610380L, 9L, 0xBDB629B3L, 9L, 0xF7610380L}}};
    __shared__ uint32_t **l_265;
    l_265 = &l_194;
    union U1 l_266 = {0L};
    int i, j, k;
    l_203 = make_int4(0L, 0L, 0xC7B6A198L, (l_193 ^= ((l_177 , l_177) ^ make_long2((((p_2057->g_180 = (p_2057->g_176 , l_178[4][4][0])) != (p_2057->g_202[1] = (l_201 = ((safe_mod_func_int8_t_s_s(p_2057->g_87.y, (p_2057->g_148.x ^ ((safe_rshift_func_int16_t_s_u((((**p_2057->g_19) &= (safe_mod_func_uint32_t_u_u(make_uint3(l_187.x, l_187.x, l_187.x).x, (make_uchar4(l_188.y, l_188.y, l_188.y, l_188.y).w , 1UL)))) > (safe_rshift_func_uint64_t_u_s((safe_div_func_uint32_t_u_u((++(*l_194)), (safe_mul_func_int16_t_s_s((((safe_add_func_uint16_t_u_u(l_187.x, l_177)) >= 0x034B4D2AL) & p_47), l_188.x)))), l_188.x))), hip_const_1.f2)) , p_2057->g_4.f2)))) , &p_2057->g_130)))) & p_47), 0x71452917B7F45CD9LL).x))).y;
    if ((safe_lshift_func_int16_t_s_s(make_short2(l_206.x, l_206.x).y, (!(safe_sub_func_int8_t_s_s((0x939DL <= make_short2(0xD31FL, 0x4D7EL).y), (p_46 >= l_209)))))))
    { /* block id: 55 */
        int16_t l_210 = 1L;
        int32_t l_211 = 0x7BE777DDL;
        int32_t *l_212 = &l_193;
        // attempting a hip shared for loop
        __shared__ int32_t *l_213[2];
        for (int i = 0; i < 2; i++)
            l_213[i] = nullptr;
        ushort1 l_240 = make_ushort1(65535UL);
        ushort3 l_243 = make_ushort3(0xDA3CL, 0UL, 0xDA3CL);
        __shared__ union U1 l_253;
        l_253 = {0L};
        int i;
        for (int i = 0; i < 2; i++)
            l_213[i] = nullptr;
        p_2057->g_223++;
        (*p_2057->g_20) = (safe_lshift_func_uint32_t_u_s(((((~(make_long1((*l_212)).x , (safe_lshift_func_uint16_t_u_s((safe_lshift_func_int64_t_s_s(0x13BFD860E4E38252LL, (safe_rshift_func_uint16_t_u_s(((safe_sub(((((((safe_sub(make_ushort3(l_240.x, l_240.x, l_240.x), make_ushort3(p_2057->g_241.y, p_2057->g_241.y, p_2057->g_241.y)))) | make_ushort3(p_2057->g_242.x, p_2057->g_242.x, p_2057->g_242.x))) | make_ushort3(l_243.x, l_243.x, l_243.x))), ((make_ushort3(p_2057->g_244.x, p_2057->g_244.x, p_2057->g_244.x) | make_ushort3(0UL, (safe_lshift_func_uint8_t_u_u((*l_212), 5)), (safe_mul_func_uint64_t_u_u(((safe_mul_func_uint32_t_u_u(0x1491AB50L, ((((*p_45) = ((safe_lshift_func_uint64_t_u_s(((l_222[0][1][2] = ((l_253 , ((*l_194)++)) > make_int3(((p_48.f0 |= (((&p_2057->g_223 != nullptr) | (nullptr == &p_47)) & 0x04718072CEC631E3LL)) , 0x67F0AB97L), 0xCA4354ADL, 0x617FD771L).z)) || p_2057->g_223), p_46)) , &l_212)) != &p_2057->g_20) != hip_const_2))) | l_214), p_2057->g_87.y)))))))).y, 4)))), 12)))) != 0UL) , 0x3D29L) != 0x3679L), l_203));
    }
    else
    { /* block id: 62 */
        uint32_t **l_267 = nullptr;
        char2 l_278 = make_char2((-1L), 0x93L);
        ushort2 l_286 = make_ushort2(0UL, 65535UL);
        int i;
        for (p_46 = 0; (p_46 <= 0); p_46 += 1)
        { /* block id: 65 */
            __shared__ uint32_t *l_258;
            l_258 = &p_2057->g_167[0][0][1];
            // attempting a hip shared for loop
            __shared__ int32_t **l_260[10];
            for (int i = 0; i < 10; i++)
                l_260[i] = &p_2057->g_20;
            uint64_t l_269 = 0x516BBA4375D10261LL;
            int i;
            for (l_215 = 1; (l_215 >= 0); l_215 -= 1)
            { /* block id: 68 */
                uint32_t **l_264[1][8][7] = {{{&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}, {&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}, {&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}, {&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}, {&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}, {&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}, {&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}, {&l_194, &l_194, &l_194, &l_194, nullptr, nullptr, &l_194}}};
                uint32_t ***l_268 = &l_264[0][7][5];
                int i, j, k;
                for (p_2057->g_5 = 0; (p_2057->g_5 >= 0); p_2057->g_5 -= 1)
                { /* block id: 71 */
                    int i, j, k;
                    if ((safe_rshift_func_uint8_t_u_u(l_222[p_46][p_46][(l_215 + 2)], 1)))
                    { /* block id: 72 */
                        __shared__ int32_t **l_259;
                        l_259 = &p_2057->g_134;
                        __shared__ int16_t *l_261;
                        l_261 = &p_2057->g_163;
                        int i, j, k;
                        if (l_222[p_46][l_215][p_46])
                            break;
                        if (p_2057->g_167[(p_2057->g_5 + 4)][p_2057->g_5][p_46])
                            continue;
                        l_222[p_2057->g_5][l_215][p_46] = (hip_const_3 & (p_2057->g_116.x & (l_258 != (((*l_261) = ((l_260[6] = l_259) == l_259)) , &p_2057->g_223))));
                        if (l_188.x)
                            break;
                    }
                    else
                    { /* block id: 79 */
                        struct S0 *l_263 = &hip_const_1;
                        __shared__ struct S0 **l_262;
                        l_262 = &l_263;
                        (*l_262) = nullptr;
                        return p_48;
                    }
                    if ((**p_2057->g_19))
                    { /* block id: 83 */
                        l_265 = l_264[0][0][1];
                        return l_266;
                    }
                    else
                    { /* block id: 86 */
                        return p_48;
                    }
                }
                (*l_268) = l_267;
                --l_269;
                for (p_47 = 0; (p_47 <= 0); p_47 += 1)
                { /* block id: 94 */
                    for (p_2057->g_163 = 0; p_2057->g_163 < 1; p_2057->g_163 += 1)
                    {
                        for (l_221 = 0; l_221 < 2; l_221 += 1)
                        {
                            for (p_48.f2 = 0; p_48.f2 < 7; p_48.f2 += 1)
                            {
                                l_222[p_2057->g_163][l_221][p_48.f2] = 1L;
                            }
                        }
                    }
                }
            }
            if (p_47)
                continue;
            for (l_209 = 0; (l_209 <= 0); l_209 += 1)
            { /* block id: 101 */
                char3 l_277 = make_char3(3L, 7L, 3L);
                char4 l_279 = make_char4(0xC4L, 0x42L, 0xC4L, 0x42L);
                int32_t l_287 = (-8L);
                uint16_t *l_292[9][5] = {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}};
                int8_t l_293 = 0xCFL;
                int i, j;
                (**p_2057->g_19) = ((safe_mod_func_uint8_t_u_u(make_uchar1(p_2057->g_274.x).x, make_char3(0x48L, ((((safe_rshift(make_char1(l_277.x), make_char1(8)))) ^ ((((((make_char1(l_278.x) ^ make_char1(l_279.z))) | make_char1(p_2057->g_280.x))) & make_char1(p_2057->g_281.y))))).x, (safe_lshift_func_uint8_t_u_u(0x48L, 4))).x)) != ((safe_mul_func_int8_t_s_s(p_2057->g_274.y, (make_ushort1(l_286.x).x ^ (l_287 = p_46)))) , (((l_293 = ((safe_add_func_uint8_t_u_u(l_266.f0, (safe_sub_func_int16_t_s_s(p_48.f0, p_48.f0)))) , 65527UL)) > (p_2057->g_241.x &= (p_2057->g_4.f6 <= 0x05L))) < p_2057->g_12)));
                return p_2057->g_176;
            }
        }
    }
    return l_266;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_87 p_2057->g_4.f1 p_2057->g_62.f0 hip_const_1.f0 hip_const_1.f5 p_2057->g_5 p_2057->g_116 p_2057->g_20 hip_const_1.f2 p_2057->g_4.f5 p_2057->g_12 p_2057->g_19 p_2057->g_148 p_2057->g_162 p_2057->g_167 p_2057->g_10
 * writes: p_2057->g_62.f0 p_2057->g_10 p_2057->g_19 p_2057->g_130 p_2057->g_14 p_2057->g_12 p_2057->g_20 p_2057->g_134 p_2057->g_167
 */
__device__ uint64_t  func_51(int16_t  p_52, int32_t ** p_53, uint8_t  p_54, int32_t ** p_55, int64_t  p_56, struct S2 * p_2057)
{ /* block id: 25 */
    int8_t *l_77 = nullptr;
    int8_t *l_78 = nullptr;
    // attempting a hip shared for loop
    __shared__ int8_t *l_79[3][5];
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 5; j++)
            l_79[i][j] = nullptr;
    }
    int32_t l_80 = 0x340CFCE3L;
    struct S0 l_98 = {18,-24,-1992,84,-41,216,8219};
    int16_t l_99 = (-6L);
    int64_t *l_100 = &p_2057->g_62.f0;
    uint32_t l_101 = 1UL;
    __shared__ int32_t l_137;
    l_137 = (-1L);
    int32_t l_138 = 0xC837B64FL;
    int64_t l_139 = 0x769F70AFF555B329LL;
    int32_t l_140 = 0x3BC25720L;
    int32_t l_141 = 1L;
    // attempting a hip shared for loop
    __shared__ int32_t l_142[10];
    for (int i = 0; i < 10; i++)
        l_142[i] = 0x070889BAL;
    int4 l_157 = make_int4((-1L), 1L, (-1L), 1L);
    uint32_t *l_170[4] = {nullptr, nullptr, nullptr, nullptr};
    int32_t l_173 = 1L;
    union U1 l_174 = {0x70816E1F836BFB3ELL};
    int i, j;
    (*p_53) = func_64(((safe_mod_func_int16_t_s_s((safe_lshift_func_int32_t_s_u((make_ulong4((safe_mod_func_int32_t_s_s((((*l_100) |= (((safe_div_func_int32_t_s_s(((l_80 = 0x5BL) , (l_80 , 0x2417F16CL)), (safe_mod_func_int32_t_s_s((safe_lshift_func_int64_t_s_u(0xEA20016C6A45D312LL, 37)), ((safe_sub_func_uint8_t_u_u(make_uchar3(p_2057->g_87.y, p_2057->g_87.y, p_2057->g_87.y).z, p_54)) , ((make_int2(0L, ((safe_div(((safe_sub(((safe_lshift(make_int2(0xD33A1293L, ((safe_sub_func_uint16_t_u_u(p_2057->g_4.f1, make_ushort4(((safe_div_func_int16_t_s_s(((&p_2057->g_19 == (l_98 , nullptr)) ^ l_99), p_56)) == (-7L)), 8UL, 0UL, 0x48D1L).y)) , 0L)), make_int2(32, 32)))), make_int2(0x4C626C48L, 0x4C626C48L)))), make_int2(8L, 8L)))).y) & make_int2(5L, 5L))).y))))) , p_54) | 0xB9B769E501E45A2DLL)) || l_98.f5), 0x69BA6CE2L)), hip_const_1.f0, 1UL, l_98.f0).z >= hip_const_1.f5), 2)), l_101)) > 1UL), p_53, &p_2057->g_19, p_56, p_2057);
    p_2057->g_134 = ((*p_2057->g_19) = (*p_53));
    if ((**p_53))
    { /* block id: 38 */
        int32_t *l_135 = &p_2057->g_12;
        int32_t *l_136[4] = {&l_80, nullptr, &l_80, nullptr};
        // attempting a hip shared for loop
        __shared__ uint8_t l_143[4][3];
        for (int i = 0; i < 4; i++)
        {
            for (int j = 0; j < 3; j++)
                l_143[i][j] = 0x08L;
        }
        int i, j;
        l_143[1][0]++;
    }
    else
    { /* block id: 40 */
        char1 l_149 = make_char1(0xC1L);
        int1 l_156 = make_int1(0x7073549BL);
        uint32_t *l_166 = &p_2057->g_167[4][0][0];
        int32_t l_175 = 0xCD2DBEE0L;
        int i;
        l_175 |= ((safe_mod_func_int64_t_s_s(make_long2(((((make_uint4(p_2057->g_148.z, p_2057->g_148.z, p_2057->g_148.z, p_2057->g_148.z).w <= ((make_char1(l_149.x).x || p_54) , ((safe_sub(((safe_mul(((safe_mul(make_int1(l_156.x), make_int1(l_157.w)))), ((safe_sub(make_int1(l_141), make_int1((p_56 , (safe_add_func_uint32_t_u_u(p_54, (l_137 = ((nullptr == p_2057->g_162[0]) >= ((((safe_sub_func_uint32_t_u_u((++(*l_166)), (l_170[2] == nullptr))) & (((*l_100) |= (safe_rshift_func_int16_t_s_u(1L, l_173))) , l_140)) , l_101) , p_52))))))))))))), make_int1(0xC33F7625L)))).x)) || p_2057->g_10) , l_174) , 0x9F1C35A1D51EC3C3LL), l_141).x, l_138)) , 0xD1DBFA45L);
    }
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ int16_t  func_57(uint32_t  p_58, uint32_t  p_59, union U1  p_60, int8_t  p_61, struct S2 * p_2057)
{ /* block id: 23 */
    return p_60.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_2057->g_87 p_2057->g_5 p_2057->g_116 p_2057->g_20 hip_const_1.f2 p_2057->g_4.f5 p_2057->g_12
 * writes: p_2057->g_10 p_2057->g_19 p_2057->g_130 p_2057->g_14 p_2057->g_12
 */
__device__ int32_t * func_64(uint8_t  p_65, int32_t ** p_66, int32_t *** p_67, uint64_t  p_68, struct S2 * p_2057)
{ /* block id: 28 */
    __shared__ int32_t **l_104;
    l_104 = &p_2057->g_20;
    uchar3 l_105 = make_uchar3(0UL, 0xCDL, 0UL);
    ushort1 l_108 = make_ushort1(65528UL);
    short2 l_109 = make_short2(0xDA86L, 0x3CABL);
    __shared__ long1 l_119;
    l_119 = make_long1((-6L));
    long2 l_120 = make_long2(0xFBB5813BB0F311A8LL, (-10L));
    // attempting a hip shared for loop
    __shared__ int8_t *l_127[10][8][3];
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            for (int k = 0; k < 3; k++)
                l_127[i][j][k] = &hip_const_2;
        }
    }
    __shared__ int32_t l_128;
    l_128 = 0x37EAFC3DL;
    int16_t *l_129[7][3] = {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}};
    __shared__ int32_t *l_131;
    l_131 = &p_2057->g_14;
    // attempting a hip shared for loop
    __shared__ uint16_t l_132[5];
    for (int i = 0; i < 5; i++)
        l_132[i] = 65535UL;
    int32_t *l_133 = &p_2057->g_12;
    int i, j, k;
    (*l_133) |= (((safe_mul_func_int16_t_s_s(((l_104 != ((*p_67) = func_17(&p_2057->g_20, p_2057))) == ((p_65 > p_2057->g_87.y) , make_uchar4(l_105.x, l_105.x, l_105.x, l_105.x).z)), ((((*l_131) = (safe_add_func_uint16_t_u_u(((p_2057->g_130 = (((~((make_ushort1(l_108.x).x , ((-8L) & ((((make_long2(0x5D98765FAFB16363LL, 0x64A1005E543FC1E9LL).y ^ (make_short2(l_109.y, l_109.y).x | p_2057->g_5)) , ((l_128 = (safe_rshift_func_uint32_t_u_u((safe_mul_func_int64_t_s_s(((safe_sub(make_long4(p_2057->g_116.x, p_2057->g_116.x, p_2057->g_116.x, p_2057->g_116.x), ((safe_add(make_long4(l_119.x, l_119.x, l_119.x, l_119.x), make_long4(l_120.x, l_120.x, l_120.x, l_120.x))))))).w, ((make_ulong4((safe_lshift_func_int64_t_s_u((safe_mod_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((p_68 > 0UL) , (-8L)) | (**l_104)), p_68)), p_68)), hip_const_1.f2)), 0xA4BB2EE2B33A3617LL, 1UL, 0UL) ^ make_ulong4(0x662F6D3EBDD5AF53LL, 0x662F6D3EBDD5AF53LL, 0x662F6D3EBDD5AF53LL, 0x662F6D3EBDD5AF53LL))).w)), 30))) == (**l_104))) != p_68) , p_2057->g_4.f5))) ^ p_2057->g_116.y)) ^ (**l_104)) <= (-1L))) == 0xDD4AL), (**l_104)))) || p_2057->g_116.y) >= l_132[2]))) == (**l_104)) | (**l_104));
    return (*l_104);
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S2 c_2058;
    struct S2* p_2057 = &c_2058;
    struct S2 c_2059 = {
        .g_4 = {15,-10,1673,66,227,235,10838},
        .g_5 = (-1L),
        .g_10 = (-1L),
        .g_12 = 0x2059515EL,
        .g_14 = (-1L),
        .g_20 = &p_2057->g_5,
        .g_19 = &p_2057->g_20,
        .g_62 = {0xF29ADBE56F6324B7LL},
        .g_87 = make_uchar2(7UL, 0xD8L),
        .g_116 = make_long2(0x61DEDA819422B6A9LL, 0x05DBDBD1F8265271LL),
        .g_130 = 0L,
        .g_134 = nullptr,
        .g_148 = make_uint3(4294967295UL, 0x802CFFAFL, 4294967295UL),
        .g_163 = 0xE0B2L,
        .g_162 = {&p_2057->g_163},
        .g_167 = {{{0x18BB1ADAL, 1UL, 0x1B4F9A3EL}}, {{0x18BB1ADAL, 1UL, 0x1B4F9A3EL}}, {{0x18BB1ADAL, 1UL, 0x1B4F9A3EL}}, {{0x18BB1ADAL, 1UL, 0x1B4F9A3EL}}, {{0x18BB1ADAL, 1UL, 0x1B4F9A3EL}}, {{0x18BB1ADAL, 1UL, 0x1B4F9A3EL}}},
        .g_176 = {-1L},
        .g_180 = &p_2057->g_176.f2,
        .g_202 = {&p_2057->g_62.f0, nullptr, &p_2057->g_62.f0, nullptr, &p_2057->g_62.f0, nullptr, &p_2057->g_62.f0, nullptr},
        .g_223 = 0xBB9B91C4L,
        .g_241 = make_ushort2(0UL, 0x26BEL),
        .g_242 = make_ushort2(1UL, 0x6C56L),
        .g_244 = make_ushort3(0x04A9L, 1UL, 0x04A9L),
        .g_274 = make_uchar2(0xFAL, 253UL),
        .g_280 = make_char2((-3L), 0x89L),
        .g_281 = make_char3(3L, 0xA8L, 3L),
        .g_299 = make_uchar1(5UL),
        .g_340 = &p_2057->g_223,
        .g_339 = &p_2057->g_340,
        .g_338 = &p_2057->g_339,
        .g_353 = 0x709CC18198BDFED1LL,
        .g_427 = (-1L),
        .g_428 = 0x9BD76918L,
        .g_429 = 0xB2E0E07B141089C8LL,
        .g_430 = 0x57A34201F7759E87LL,
        .g_431 = 0x9FC8L,
        .g_432 = 0xA4086E0AL,
        .g_443 = 0xB0507409L,
        .g_444 = 1UL,
        .g_460 = 0xA9L,
        .g_461 = (-3L),
        .g_462 = 0x68AC0215L,
        .g_471 = &p_2057->g_338,
        .g_470 = &p_2057->g_471,
        .g_490 = make_ushort1(1UL),
        .g_604 = make_uchar4(0x06L, 0x74L, 0x06L, 0x74L),
        .g_645 = nullptr,
        .g_684 = make_long3(0L, (-1L), 0L),
        .g_696 = 0xC99A131EL,
        .g_699 = make_uint3(0x7B24E157L, 0UL, 0x7B24E157L),
        .g_725 = make_uchar3(0UL, 0x60L, 0UL),
        .g_745 = 0L,
        .g_753 = make_uchar4(0x1DL, 0UL, 0x1DL, 0UL),
        .g_761 = make_ulong1(0UL),
        .g_785 = make_uchar3(0x49L, 0x05L, 0x49L),
        .g_792 = {{nullptr, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, nullptr, &p_2057->g_340}, {nullptr, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, nullptr, &p_2057->g_340}, {nullptr, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, nullptr, &p_2057->g_340}, {nullptr, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, &p_2057->g_340, nullptr, &p_2057->g_340}},
        .g_806 = make_ulong2(1UL, 0x67083559F312284CLL),
        .g_829 = make_uchar4(0xFFL, 0x29L, 0xFFL, 0x29L),
        .g_877 = make_ulong3(0x50DC73CBBAB10E24LL, 0xAB6182F077E4119FLL, 0x50DC73CBBAB10E24LL),
        .g_883 = make_int1((-9L)),
        .g_907 = &p_2057->g_202[2],
        .g_906 = &p_2057->g_907,
        .g_912 = &p_2057->g_62,
        .g_911 = &p_2057->g_912,
        .g_982 = make_ulong1(0x3B275295ED55003DLL),
        .g_993 = make_int1(0L),
        .g_995 = make_char4((-1L), (-2L), (-1L), (-2L)),
        .g_996 = make_char1(0x79L),
        .g_1006 = make_long4(0L, 0L, 0L, 0L),
        .g_1031 = {{nullptr, &p_2057->g_19, nullptr, &p_2057->g_19, nullptr, &p_2057->g_19, nullptr, &p_2057->g_19, nullptr, &p_2057->g_19}},
        .g_1030 = {{&p_2057->g_1031[0][5], &p_2057->g_1031[0][1], &p_2057->g_1031[0][3], &p_2057->g_1031[0][1], &p_2057->g_1031[0][5], &p_2057->g_1031[0][2], &p_2057->g_1031[0][5]}, {&p_2057->g_1031[0][5], &p_2057->g_1031[0][1], &p_2057->g_1031[0][3], &p_2057->g_1031[0][1], &p_2057->g_1031[0][5], &p_2057->g_1031[0][2], &p_2057->g_1031[0][5]}, {&p_2057->g_1031[0][5], &p_2057->g_1031[0][1], &p_2057->g_1031[0][3], &p_2057->g_1031[0][1], &p_2057->g_1031[0][5], &p_2057->g_1031[0][2], &p_2057->g_1031[0][5]}, {&p_2057->g_1031[0][5], &p_2057->g_1031[0][1], &p_2057->g_1031[0][3], &p_2057->g_1031[0][1], &p_2057->g_1031[0][5], &p_2057->g_1031[0][2], &p_2057->g_1031[0][5]}, {&p_2057->g_1031[0][5], &p_2057->g_1031[0][1], &p_2057->g_1031[0][3], &p_2057->g_1031[0][1], &p_2057->g_1031[0][5], &p_2057->g_1031[0][2], &p_2057->g_1031[0][5]}, {&p_2057->g_1031[0][5], &p_2057->g_1031[0][1], &p_2057->g_1031[0][3], &p_2057->g_1031[0][1], &p_2057->g_1031[0][5], &p_2057->g_1031[0][2], &p_2057->g_1031[0][5]}},
        .g_1040 = make_uint2(0x7FF9C09FL, 0x1AF8D3BCL),
        .g_1086 = make_long3((-7L), 0L, (-7L)),
        .g_1089 = make_uchar1(0UL),
        .g_1103 = make_uint1(4294967292UL),
        .g_1132 = make_long2(1L, 0x6A25FF7879F2A8D8LL),
        .g_1149 = make_int2(0xD70718B8L, 1L),
        .g_1160 = make_uint3(4294967295UL, 9UL, 4294967295UL),
        .g_1161 = make_uint4(0xF66B9BAFL, 0xFFE26C80L, 0xF66B9BAFL, 0xFFE26C80L),
        .g_1182 = make_short2(5L, (-7L)),
        .g_1183 = make_short4(3L, (-1L), 3L, (-1L)),
        .g_1189 = make_uchar4(0x40L, 0x6CL, 0x40L, 0x6CL),
        .g_1259 = &p_2057->g_5,
        .g_1272 = make_ulong3(18446744073709551615UL, 1UL, 18446744073709551615UL),
        .g_1324 = make_uchar1(0x84L),
        .g_1325 = make_uchar3(0x7CL, 0x4BL, 0x7CL),
        .g_1356 = make_long4(0xB8ED885B76302E3DLL, 0xBED2F1D931F5D352LL, 0xB8ED885B76302E3DLL, 0xBED2F1D931F5D352LL),
        .g_1369 = &p_2057->g_460,
        .g_1368 = {&p_2057->g_1369, &p_2057->g_1369, &p_2057->g_1369, &p_2057->g_1369, &p_2057->g_1369},
        .g_1389 = make_long4((-7L), 0L, (-7L), 0L),
        .g_1393 = make_ulong4(7UL, 0x379EC798888C1225LL, 7UL, 0x379EC798888C1225LL),
        .g_1394 = make_ulong4(18446744073709551607UL, 0xDB763EF54CE12090LL, 18446744073709551607UL, 0xDB763EF54CE12090LL),
        .g_1413 = make_ulong2(0x3AE1CC99A6E5439CLL, 0x5630C8569DD020E3LL),
        .g_1438 = 0x9E5A084CL,
        .g_1449 = make_ushort2(0x9294L, 0xFC75L),
        .g_1464 = make_int3(0xD4484376L, 0xF2C4D27AL, 0xD4484376L),
        .g_1495 = make_uint3(0xFB04CA14L, 0UL, 0xFB04CA14L),
        .g_1501 = nullptr,
        .g_1500 = &p_2057->g_1501,
        .g_1499 = &p_2057->g_1500,
        .g_1576 = make_ushort2(65533UL, 0x0742L),
        .g_1620 = make_char1(0xAFL),
        .g_1658 = 3L,
        .g_1681 = make_uint2(1UL, 0x8D4662DDL),
        .g_1682 = make_uint1(0xADD81B75L),
        .g_1696 = make_ulong1(18446744073709551607UL),
        .g_1730 = make_int2(0L, 1L),
        .g_1731 = make_int4(0x76B7F5B2L, 0x5F124274L, 0x76B7F5B2L, 0x5F124274L),
        .g_1749 = 0x90L,
        .g_1750 = {0xB0L, 0xB0L, 0xB0L},
        .g_1767 = make_char3(2L, (-6L), 2L),
        .g_1792 = make_uchar4(255UL, 0xD8L, 255UL, 0xD8L),
        .g_1814 = nullptr,
        .g_1824 = make_ulong1(18446744073709551614UL),
        .g_1831 = make_int4(0xE58A12F1L, 0xECEDB7DDL, 0xE58A12F1L, 0xECEDB7DDL),
        .g_1832 = make_int1((-1L)),
        .g_1836 = &p_2057->g_462,
        .g_1835 = &p_2057->g_1836,
        .g_1877 = make_short4(0x6A77L, (-1L), 0x6A77L, (-1L)),
        .g_1904 = make_uint4(0x89AE824EL, 0UL, 0x89AE824EL, 0UL),
        .g_1953 = {1UL},
        .g_1959 = make_int2(0x7FE424C5L, 0xD71C4657L),
        .g_2011 = make_short2(0x2FE7L, 0xCE08L),
        .g_2012 = make_short4(6L, 0x795AL, 6L, 0x795AL),
        .g_2036 = make_long3(0x07026083F5EEDC58LL, 0xFB35F5CADD375016LL, 0x07026083F5EEDC58LL),
        .g_2039 = make_int1(2L),
        .g_2053 = 255UL,
    };
    c_2058 = c_2059;

    // Execute core logic
    func_1(p_2057);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1.f0, "hip_const_1.f0", print_hash_value);
    transparent_crc(hip_const_1.f1, "hip_const_1.f1", print_hash_value);
    transparent_crc(hip_const_1.f2, "hip_const_1.f2", print_hash_value);
    transparent_crc(hip_const_1.f3, "hip_const_1.f3", print_hash_value);
    transparent_crc(hip_const_1.f4, "hip_const_1.f4", print_hash_value);
    transparent_crc(hip_const_1.f5, "hip_const_1.f5", print_hash_value);
    transparent_crc(hip_const_1.f6, "hip_const_1.f6", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(p_2057->g_4.f0, "p_2057->g_4.f0", print_hash_value);
    transparent_crc(p_2057->g_4.f1, "p_2057->g_4.f1", print_hash_value);
    transparent_crc(p_2057->g_4.f2, "p_2057->g_4.f2", print_hash_value);
    transparent_crc(p_2057->g_4.f3, "p_2057->g_4.f3", print_hash_value);
    transparent_crc(p_2057->g_4.f4, "p_2057->g_4.f4", print_hash_value);
    transparent_crc(p_2057->g_4.f5, "p_2057->g_4.f5", print_hash_value);
    transparent_crc(p_2057->g_4.f6, "p_2057->g_4.f6", print_hash_value);
    transparent_crc(p_2057->g_5, "p_2057->g_5", print_hash_value);
    transparent_crc(p_2057->g_10, "p_2057->g_10", print_hash_value);
    transparent_crc(p_2057->g_12, "p_2057->g_12", print_hash_value);
    transparent_crc(p_2057->g_14, "p_2057->g_14", print_hash_value);
    transparent_crc(p_2057->g_87.x, "p_2057->g_87.x", print_hash_value);
    transparent_crc(p_2057->g_87.y, "p_2057->g_87.y", print_hash_value);
    transparent_crc(p_2057->g_116.x, "p_2057->g_116.x", print_hash_value);
    transparent_crc(p_2057->g_116.y, "p_2057->g_116.y", print_hash_value);
    transparent_crc(p_2057->g_130, "p_2057->g_130", print_hash_value);
    transparent_crc(p_2057->g_148.x, "p_2057->g_148.x", print_hash_value);
    transparent_crc(p_2057->g_148.y, "p_2057->g_148.y", print_hash_value);
    transparent_crc(p_2057->g_148.z, "p_2057->g_148.z", print_hash_value);
    transparent_crc(p_2057->g_163, "p_2057->g_163", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_2057->g_167[i][j][k], "p_2057->g_167[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2057->g_223, "p_2057->g_223", print_hash_value);
    transparent_crc(p_2057->g_241.x, "p_2057->g_241.x", print_hash_value);
    transparent_crc(p_2057->g_241.y, "p_2057->g_241.y", print_hash_value);
    transparent_crc(p_2057->g_242.x, "p_2057->g_242.x", print_hash_value);
    transparent_crc(p_2057->g_242.y, "p_2057->g_242.y", print_hash_value);
    transparent_crc(p_2057->g_244.x, "p_2057->g_244.x", print_hash_value);
    transparent_crc(p_2057->g_244.y, "p_2057->g_244.y", print_hash_value);
    transparent_crc(p_2057->g_244.z, "p_2057->g_244.z", print_hash_value);
    transparent_crc(p_2057->g_274.x, "p_2057->g_274.x", print_hash_value);
    transparent_crc(p_2057->g_274.y, "p_2057->g_274.y", print_hash_value);
    transparent_crc(p_2057->g_280.x, "p_2057->g_280.x", print_hash_value);
    transparent_crc(p_2057->g_280.y, "p_2057->g_280.y", print_hash_value);
    transparent_crc(p_2057->g_281.x, "p_2057->g_281.x", print_hash_value);
    transparent_crc(p_2057->g_281.y, "p_2057->g_281.y", print_hash_value);
    transparent_crc(p_2057->g_281.z, "p_2057->g_281.z", print_hash_value);
    transparent_crc(p_2057->g_299.x, "p_2057->g_299.x", print_hash_value);
    transparent_crc(p_2057->g_353, "p_2057->g_353", print_hash_value);
    transparent_crc(p_2057->g_427, "p_2057->g_427", print_hash_value);
    transparent_crc(p_2057->g_428, "p_2057->g_428", print_hash_value);
    transparent_crc(p_2057->g_429, "p_2057->g_429", print_hash_value);
    transparent_crc(p_2057->g_430, "p_2057->g_430", print_hash_value);
    transparent_crc(p_2057->g_431, "p_2057->g_431", print_hash_value);
    transparent_crc(p_2057->g_432, "p_2057->g_432", print_hash_value);
    transparent_crc(p_2057->g_443, "p_2057->g_443", print_hash_value);
    transparent_crc(p_2057->g_444, "p_2057->g_444", print_hash_value);
    transparent_crc(p_2057->g_460, "p_2057->g_460", print_hash_value);
    transparent_crc(p_2057->g_461, "p_2057->g_461", print_hash_value);
    transparent_crc(p_2057->g_462, "p_2057->g_462", print_hash_value);
    transparent_crc(p_2057->g_490.x, "p_2057->g_490.x", print_hash_value);
    transparent_crc(p_2057->g_604.x, "p_2057->g_604.x", print_hash_value);
    transparent_crc(p_2057->g_604.y, "p_2057->g_604.y", print_hash_value);
    transparent_crc(p_2057->g_604.z, "p_2057->g_604.z", print_hash_value);
    transparent_crc(p_2057->g_604.w, "p_2057->g_604.w", print_hash_value);
    transparent_crc(p_2057->g_684.x, "p_2057->g_684.x", print_hash_value);
    transparent_crc(p_2057->g_684.y, "p_2057->g_684.y", print_hash_value);
    transparent_crc(p_2057->g_684.z, "p_2057->g_684.z", print_hash_value);
    transparent_crc(p_2057->g_696, "p_2057->g_696", print_hash_value);
    transparent_crc(p_2057->g_699.x, "p_2057->g_699.x", print_hash_value);
    transparent_crc(p_2057->g_699.y, "p_2057->g_699.y", print_hash_value);
    transparent_crc(p_2057->g_699.z, "p_2057->g_699.z", print_hash_value);
    transparent_crc(p_2057->g_725.x, "p_2057->g_725.x", print_hash_value);
    transparent_crc(p_2057->g_725.y, "p_2057->g_725.y", print_hash_value);
    transparent_crc(p_2057->g_725.z, "p_2057->g_725.z", print_hash_value);
    transparent_crc(p_2057->g_745, "p_2057->g_745", print_hash_value);
    transparent_crc(p_2057->g_753.x, "p_2057->g_753.x", print_hash_value);
    transparent_crc(p_2057->g_753.y, "p_2057->g_753.y", print_hash_value);
    transparent_crc(p_2057->g_753.z, "p_2057->g_753.z", print_hash_value);
    transparent_crc(p_2057->g_753.w, "p_2057->g_753.w", print_hash_value);
    transparent_crc(p_2057->g_761.x, "p_2057->g_761.x", print_hash_value);
    transparent_crc(p_2057->g_785.x, "p_2057->g_785.x", print_hash_value);
    transparent_crc(p_2057->g_785.y, "p_2057->g_785.y", print_hash_value);
    transparent_crc(p_2057->g_785.z, "p_2057->g_785.z", print_hash_value);
    transparent_crc(p_2057->g_806.x, "p_2057->g_806.x", print_hash_value);
    transparent_crc(p_2057->g_806.y, "p_2057->g_806.y", print_hash_value);
    transparent_crc(p_2057->g_829.x, "p_2057->g_829.x", print_hash_value);
    transparent_crc(p_2057->g_829.y, "p_2057->g_829.y", print_hash_value);
    transparent_crc(p_2057->g_829.z, "p_2057->g_829.z", print_hash_value);
    transparent_crc(p_2057->g_829.w, "p_2057->g_829.w", print_hash_value);
    transparent_crc(p_2057->g_877.x, "p_2057->g_877.x", print_hash_value);
    transparent_crc(p_2057->g_877.y, "p_2057->g_877.y", print_hash_value);
    transparent_crc(p_2057->g_877.z, "p_2057->g_877.z", print_hash_value);
    transparent_crc(p_2057->g_883.x, "p_2057->g_883.x", print_hash_value);
    transparent_crc(p_2057->g_982.x, "p_2057->g_982.x", print_hash_value);
    transparent_crc(p_2057->g_993.x, "p_2057->g_993.x", print_hash_value);
    transparent_crc(p_2057->g_995.x, "p_2057->g_995.x", print_hash_value);
    transparent_crc(p_2057->g_995.y, "p_2057->g_995.y", print_hash_value);
    transparent_crc(p_2057->g_995.z, "p_2057->g_995.z", print_hash_value);
    transparent_crc(p_2057->g_995.w, "p_2057->g_995.w", print_hash_value);
    transparent_crc(p_2057->g_996.x, "p_2057->g_996.x", print_hash_value);
    transparent_crc(p_2057->g_1006.x, "p_2057->g_1006.x", print_hash_value);
    transparent_crc(p_2057->g_1006.y, "p_2057->g_1006.y", print_hash_value);
    transparent_crc(p_2057->g_1006.z, "p_2057->g_1006.z", print_hash_value);
    transparent_crc(p_2057->g_1006.w, "p_2057->g_1006.w", print_hash_value);
    transparent_crc(p_2057->g_1040.x, "p_2057->g_1040.x", print_hash_value);
    transparent_crc(p_2057->g_1040.y, "p_2057->g_1040.y", print_hash_value);
    transparent_crc(p_2057->g_1086.x, "p_2057->g_1086.x", print_hash_value);
    transparent_crc(p_2057->g_1086.y, "p_2057->g_1086.y", print_hash_value);
    transparent_crc(p_2057->g_1086.z, "p_2057->g_1086.z", print_hash_value);
    transparent_crc(p_2057->g_1089.x, "p_2057->g_1089.x", print_hash_value);
    transparent_crc(p_2057->g_1103.x, "p_2057->g_1103.x", print_hash_value);
    transparent_crc(p_2057->g_1132.x, "p_2057->g_1132.x", print_hash_value);
    transparent_crc(p_2057->g_1132.y, "p_2057->g_1132.y", print_hash_value);
    transparent_crc(p_2057->g_1149.x, "p_2057->g_1149.x", print_hash_value);
    transparent_crc(p_2057->g_1149.y, "p_2057->g_1149.y", print_hash_value);
    transparent_crc(p_2057->g_1160.x, "p_2057->g_1160.x", print_hash_value);
    transparent_crc(p_2057->g_1160.y, "p_2057->g_1160.y", print_hash_value);
    transparent_crc(p_2057->g_1160.z, "p_2057->g_1160.z", print_hash_value);
    transparent_crc(p_2057->g_1161.x, "p_2057->g_1161.x", print_hash_value);
    transparent_crc(p_2057->g_1161.y, "p_2057->g_1161.y", print_hash_value);
    transparent_crc(p_2057->g_1161.z, "p_2057->g_1161.z", print_hash_value);
    transparent_crc(p_2057->g_1161.w, "p_2057->g_1161.w", print_hash_value);
    transparent_crc(p_2057->g_1182.x, "p_2057->g_1182.x", print_hash_value);
    transparent_crc(p_2057->g_1182.y, "p_2057->g_1182.y", print_hash_value);
    transparent_crc(p_2057->g_1183.x, "p_2057->g_1183.x", print_hash_value);
    transparent_crc(p_2057->g_1183.y, "p_2057->g_1183.y", print_hash_value);
    transparent_crc(p_2057->g_1183.z, "p_2057->g_1183.z", print_hash_value);
    transparent_crc(p_2057->g_1183.w, "p_2057->g_1183.w", print_hash_value);
    transparent_crc(p_2057->g_1189.x, "p_2057->g_1189.x", print_hash_value);
    transparent_crc(p_2057->g_1189.y, "p_2057->g_1189.y", print_hash_value);
    transparent_crc(p_2057->g_1189.z, "p_2057->g_1189.z", print_hash_value);
    transparent_crc(p_2057->g_1189.w, "p_2057->g_1189.w", print_hash_value);
    transparent_crc(p_2057->g_1272.x, "p_2057->g_1272.x", print_hash_value);
    transparent_crc(p_2057->g_1272.y, "p_2057->g_1272.y", print_hash_value);
    transparent_crc(p_2057->g_1272.z, "p_2057->g_1272.z", print_hash_value);
    transparent_crc(p_2057->g_1324.x, "p_2057->g_1324.x", print_hash_value);
    transparent_crc(p_2057->g_1325.x, "p_2057->g_1325.x", print_hash_value);
    transparent_crc(p_2057->g_1325.y, "p_2057->g_1325.y", print_hash_value);
    transparent_crc(p_2057->g_1325.z, "p_2057->g_1325.z", print_hash_value);
    transparent_crc(p_2057->g_1356.x, "p_2057->g_1356.x", print_hash_value);
    transparent_crc(p_2057->g_1356.y, "p_2057->g_1356.y", print_hash_value);
    transparent_crc(p_2057->g_1356.z, "p_2057->g_1356.z", print_hash_value);
    transparent_crc(p_2057->g_1356.w, "p_2057->g_1356.w", print_hash_value);
    transparent_crc(p_2057->g_1389.x, "p_2057->g_1389.x", print_hash_value);
    transparent_crc(p_2057->g_1389.y, "p_2057->g_1389.y", print_hash_value);
    transparent_crc(p_2057->g_1389.z, "p_2057->g_1389.z", print_hash_value);
    transparent_crc(p_2057->g_1389.w, "p_2057->g_1389.w", print_hash_value);
    transparent_crc(p_2057->g_1393.x, "p_2057->g_1393.x", print_hash_value);
    transparent_crc(p_2057->g_1393.y, "p_2057->g_1393.y", print_hash_value);
    transparent_crc(p_2057->g_1393.z, "p_2057->g_1393.z", print_hash_value);
    transparent_crc(p_2057->g_1393.w, "p_2057->g_1393.w", print_hash_value);
    transparent_crc(p_2057->g_1394.x, "p_2057->g_1394.x", print_hash_value);
    transparent_crc(p_2057->g_1394.y, "p_2057->g_1394.y", print_hash_value);
    transparent_crc(p_2057->g_1394.z, "p_2057->g_1394.z", print_hash_value);
    transparent_crc(p_2057->g_1394.w, "p_2057->g_1394.w", print_hash_value);
    transparent_crc(p_2057->g_1413.x, "p_2057->g_1413.x", print_hash_value);
    transparent_crc(p_2057->g_1413.y, "p_2057->g_1413.y", print_hash_value);
    transparent_crc(p_2057->g_1438, "p_2057->g_1438", print_hash_value);
    transparent_crc(p_2057->g_1449.x, "p_2057->g_1449.x", print_hash_value);
    transparent_crc(p_2057->g_1449.y, "p_2057->g_1449.y", print_hash_value);
    transparent_crc(p_2057->g_1464.x, "p_2057->g_1464.x", print_hash_value);
    transparent_crc(p_2057->g_1464.y, "p_2057->g_1464.y", print_hash_value);
    transparent_crc(p_2057->g_1464.z, "p_2057->g_1464.z", print_hash_value);
    transparent_crc(p_2057->g_1495.x, "p_2057->g_1495.x", print_hash_value);
    transparent_crc(p_2057->g_1495.y, "p_2057->g_1495.y", print_hash_value);
    transparent_crc(p_2057->g_1495.z, "p_2057->g_1495.z", print_hash_value);
    transparent_crc(p_2057->g_1576.x, "p_2057->g_1576.x", print_hash_value);
    transparent_crc(p_2057->g_1576.y, "p_2057->g_1576.y", print_hash_value);
    transparent_crc(p_2057->g_1620.x, "p_2057->g_1620.x", print_hash_value);
    transparent_crc(p_2057->g_1658, "p_2057->g_1658", print_hash_value);
    transparent_crc(p_2057->g_1681.x, "p_2057->g_1681.x", print_hash_value);
    transparent_crc(p_2057->g_1681.y, "p_2057->g_1681.y", print_hash_value);
    transparent_crc(p_2057->g_1682.x, "p_2057->g_1682.x", print_hash_value);
    transparent_crc(p_2057->g_1696.x, "p_2057->g_1696.x", print_hash_value);
    transparent_crc(p_2057->g_1730.x, "p_2057->g_1730.x", print_hash_value);
    transparent_crc(p_2057->g_1730.y, "p_2057->g_1730.y", print_hash_value);
    transparent_crc(p_2057->g_1731.x, "p_2057->g_1731.x", print_hash_value);
    transparent_crc(p_2057->g_1731.y, "p_2057->g_1731.y", print_hash_value);
    transparent_crc(p_2057->g_1731.z, "p_2057->g_1731.z", print_hash_value);
    transparent_crc(p_2057->g_1731.w, "p_2057->g_1731.w", print_hash_value);
    transparent_crc(p_2057->g_1749, "p_2057->g_1749", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_2057->g_1750[i], "p_2057->g_1750[i]", print_hash_value);

    }
    transparent_crc(p_2057->g_1767.x, "p_2057->g_1767.x", print_hash_value);
    transparent_crc(p_2057->g_1767.y, "p_2057->g_1767.y", print_hash_value);
    transparent_crc(p_2057->g_1767.z, "p_2057->g_1767.z", print_hash_value);
    transparent_crc(p_2057->g_1792.x, "p_2057->g_1792.x", print_hash_value);
    transparent_crc(p_2057->g_1792.y, "p_2057->g_1792.y", print_hash_value);
    transparent_crc(p_2057->g_1792.z, "p_2057->g_1792.z", print_hash_value);
    transparent_crc(p_2057->g_1792.w, "p_2057->g_1792.w", print_hash_value);
    transparent_crc(p_2057->g_1824.x, "p_2057->g_1824.x", print_hash_value);
    transparent_crc(p_2057->g_1831.x, "p_2057->g_1831.x", print_hash_value);
    transparent_crc(p_2057->g_1831.y, "p_2057->g_1831.y", print_hash_value);
    transparent_crc(p_2057->g_1831.z, "p_2057->g_1831.z", print_hash_value);
    transparent_crc(p_2057->g_1831.w, "p_2057->g_1831.w", print_hash_value);
    transparent_crc(p_2057->g_1832.x, "p_2057->g_1832.x", print_hash_value);
    transparent_crc(p_2057->g_1877.x, "p_2057->g_1877.x", print_hash_value);
    transparent_crc(p_2057->g_1877.y, "p_2057->g_1877.y", print_hash_value);
    transparent_crc(p_2057->g_1877.z, "p_2057->g_1877.z", print_hash_value);
    transparent_crc(p_2057->g_1877.w, "p_2057->g_1877.w", print_hash_value);
    transparent_crc(p_2057->g_1904.x, "p_2057->g_1904.x", print_hash_value);
    transparent_crc(p_2057->g_1904.y, "p_2057->g_1904.y", print_hash_value);
    transparent_crc(p_2057->g_1904.z, "p_2057->g_1904.z", print_hash_value);
    transparent_crc(p_2057->g_1904.w, "p_2057->g_1904.w", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        transparent_crc(p_2057->g_1953[i], "p_2057->g_1953[i]", print_hash_value);

    }
    transparent_crc(p_2057->g_1959.x, "p_2057->g_1959.x", print_hash_value);
    transparent_crc(p_2057->g_1959.y, "p_2057->g_1959.y", print_hash_value);
    transparent_crc(p_2057->g_2011.x, "p_2057->g_2011.x", print_hash_value);
    transparent_crc(p_2057->g_2011.y, "p_2057->g_2011.y", print_hash_value);
    transparent_crc(p_2057->g_2012.x, "p_2057->g_2012.x", print_hash_value);
    transparent_crc(p_2057->g_2012.y, "p_2057->g_2012.y", print_hash_value);
    transparent_crc(p_2057->g_2012.z, "p_2057->g_2012.z", print_hash_value);
    transparent_crc(p_2057->g_2012.w, "p_2057->g_2012.w", print_hash_value);
    transparent_crc(p_2057->g_2036.x, "p_2057->g_2036.x", print_hash_value);
    transparent_crc(p_2057->g_2036.y, "p_2057->g_2036.y", print_hash_value);
    transparent_crc(p_2057->g_2036.z, "p_2057->g_2036.z", print_hash_value);
    transparent_crc(p_2057->g_2039.x, "p_2057->g_2039.x", print_hash_value);
    transparent_crc(p_2057->g_2053, "p_2057->g_2053", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

