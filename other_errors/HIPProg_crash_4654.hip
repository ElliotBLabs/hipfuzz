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
// Seed: 2707707944

/* --- Struct/Union Declarations --- */
struct S0 {
   signed f0 : 30;
   unsigned f1 : 16;
   unsigned f2 : 12;
   signed f3 : 17;
   unsigned f4 : 7;
   signed f5 : 20;
   signed f6 : 16;
   unsigned f7 : 21;
   signed f8 : 31;
};

struct S1 {
   unsigned f0 : 16;
   unsigned f1 : 30;
   unsigned f2 : 29;
   uint16_t  f3;
   unsigned f4 : 21;
   signed f5 : 12;
   signed f6 : 25;
   signed f7 : 4;
   signed f8 : 3;
};

union U2 {
   int8_t  f0;
   uint16_t  f1;
   uint8_t  f2;
   uint8_t  f3;
   uint16_t  f4;
};

union U3 {
   int32_t  f0;
   uint8_t  f1;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ union U2 hip_const_1[2];
__constant__ uint16_t hip_const_2[5][2][10];
__constant__ uint64_t hip_const_3[3];
__constant__ uint32_t hip_const_4;
__constant__ struct S1 hip_const_5[1];
__constant__ uint32_t hip_const_6;
__constant__ uint32_t hip_const_7[1][8][10];
__constant__ int64_t hip_const_8;
__constant__ int32_t hip_const_9;
__constant__ struct S0 hip_const_10;
__constant__ struct S1 hip_const_11;
__constant__ uint16_t hip_const_12[3];
__constant__ int32_t hip_const_13;
__constant__ uint32_t hip_const_14;
__constant__ int64_t hip_const_15;
__constant__ uint8_t hip_const_16;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        union U2 host_hip_const_1[2] = {{0x40L}, {0x40L}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint16_t host_hip_const_2[5][2][10] = {{{0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}, {0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}}, {{0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}, {0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}}, {{0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}, {0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}}, {{0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}, {0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}}, {{0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}, {0xC924L, 65533UL, 0x60DEL, 6UL, 0xC924L, 0x7413L, 0UL, 0x7413L, 0xC924L, 6UL}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        uint64_t host_hip_const_3[3] = {0x58F5537C57F39CEELL, 0x58F5537C57F39CEELL, 0x58F5537C57F39CEELL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        uint32_t host_hip_const_4 = 0xB4AF7BDDL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        struct S1 host_hip_const_5[1] = {{160,29847,7949,0x4FD5L,458,34,-2352,-3,-1}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint32_t host_hip_const_6 = 0x81B5F7A0L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        uint32_t host_hip_const_7[1][8][10] = {{{18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}, {18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}, {18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}, {18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}, {18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}, {18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}, {18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}, {18446744073709551610UL, 0x093AF8EFL, 0x99242039L, 18446744073709551615UL, 8UL, 0xC5A4A104L, 9UL, 18446744073709551615UL, 0x3649D959L, 0x093AF8EFL}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        int64_t host_hip_const_8 = (-1L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        int32_t host_hip_const_9 = 0L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        struct S0 host_hip_const_10 = {-32552,57,17,-319,5,327,33,1035,3374};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
        struct S1 host_hip_const_11 = {184,30655,2111,1UL,535,-40,3998,-0,0};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_11, &host_hip_const_11, sizeof(host_hip_const_11)));
        uint16_t host_hip_const_12[3] = {0xF120L, 0xF120L, 0xF120L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_12, &host_hip_const_12, sizeof(host_hip_const_12)));
        int32_t host_hip_const_13 = 0L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_13, &host_hip_const_13, sizeof(host_hip_const_13)));
        uint32_t host_hip_const_14 = 4294967295UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_14, &host_hip_const_14, sizeof(host_hip_const_14)));
        int64_t host_hip_const_15 = 1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_15, &host_hip_const_15, sizeof(host_hip_const_15)));
        uint8_t host_hip_const_16 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_16, &host_hip_const_16, sizeof(host_hip_const_16)));
}

struct S4 {
    ulong1 g_15;
    short3 g_86;
    int32_t *g_93;
    int32_t g_102;
    struct S1 *g_130;
    struct S1 **g_129[3][6][5];
    int32_t **g_134;
    int32_t ***g_133;
    ulong3 g_141;
    uint32_t g_204;
    ushort4 g_212;
    uint64_t *g_272;
    uint8_t g_276[4][4][3];
    int32_t *g_292;
    int1 g_305;
    ulong3 g_320;
    uint32_t g_364;
    uint32_t *g_395;
    int1 g_403;
    int2 g_414;
    ulong2 g_422;
    ulong1 g_425;
    int8_t g_426;
    uint16_t g_457[5];
    struct S1 ***g_467;
    struct S1 ****g_466[5];
    uint64_t **g_479;
    uint64_t ***g_478;
    char2 g_489;
    long1 g_504;
    long4 g_505;
    uchar3 g_527;
    ulong1 g_534;
    char3 g_569;
    char2 g_570;
    char3 g_574;
    union U3 *g_582;
    long2 g_592;
    union U3 g_596;
    long2 g_616;
    long1 g_617;
    int3 g_628;
    ulong2 g_631;
    int2 g_634;
    int1 g_635;
    ushort4 g_723;
    long3 g_731;
    uint3 g_801;
    ulong3 g_857;
    union U3 g_888[1][9][3];
    int3 g_919;
    long1 g_978;
    short4 g_982;
    int32_t *g_999[3][9][9];
    int32_t **g_998[8];
    uchar3 g_1199;
    ushort4 g_1231;
    int2 g_1249;
    ulong2 g_1280;
    uint8_t *g_1311;
    uint8_t **g_1310;
    struct S1 *g_1313[9][9];
    uchar4 g_1374;
    union U2 *g_1412[1][5][10];
    union U2 **g_1411[6][8];
    union U2 ***g_1410[6];
    long1 g_1518;
    union U3 **g_1561;
    union U3 ***g_1560;
    struct S1 *g_1595;
    int64_t g_1637[3];
    ulong2 g_1665;
    ulong1 g_1668;
    uint4 g_1675;
    uint2 g_1679;
    uint2 g_1680;
    uchar1 g_1683;
    int4 g_1712;
    int2 g_1713;
    struct S0 *g_1866;
    struct S0 **g_1865;
    int2 g_1880;
    ulong1 g_1908;
    int16_t *g_1924;
    int16_t **g_1923;
    int16_t ***g_1922[1][6];
    int16_t ****g_1921;
    uint32_t **g_1933;
    uint32_t ***g_1932;
    ulong4 g_2000;
    ulong2 g_2003;
    long1 g_2008;
    short4 g_2010;
    union U3 ****g_2020;
    union U3 *****g_2019;
    short1 g_2031;
    int32_t ***g_2074;
    long4 g_2079;
    int4 g_2082;
    long2 g_2097;
    long2 g_2110;
    int16_t *****g_2115;
    int16_t *****g_2116;
    short4 g_2120;
    uint3 g_2133;
    long3 g_2177;
    uint32_t g_2184[1][9][2];
    ushort1 g_2189;
    uint1 g_2205;
    long1 g_2211;
    uint64_t *****g_2260;
    int64_t *g_2269;
    long1 g_2307;
    long4 g_2312;
    long3 g_2313;
    uint32_t g_2338;
    int32_t ****g_2369[2];
    int32_t *****g_2368;
    char2 g_2437;
    long4 g_2468;
    short2 g_2486;
    ushort2 g_2490;
    int64_t **g_2516;
    uint16_t g_2518;
    ushort4 g_2530;
    ushort2 g_2542;
    uint4 g_2580;
    int2 g_2586;
    short2 g_2590;
    int8_t *g_2612[7][7][2];
    int8_t **g_2611;
    int8_t ***g_2610;
    int3 g_2614;
    uchar3 g_2661;
    int1 g_2667;
    int64_t g_2698;
    uint32_t *g_2726;
    uint32_t **g_2725;
    uint4 g_2741;
    short4 g_2764;
    int32_t g_2783;
    uchar3 g_2842;
    uchar3 g_2843;
    uint16_t g_2858[1][6];
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S4 * p_2887);
__device__ uint16_t  func_4(struct S1 * p_5, struct S0  p_6, union U2  p_7, struct S1 * p_8, struct S1 * p_9, struct S4 * p_2887);
__device__ struct S1 * func_10(int8_t  p_11, struct S1 * p_12, int64_t  p_13, int32_t  p_14, struct S4 * p_2887);
__device__ union U3  func_22(uint16_t  p_23, int32_t  p_24, uint64_t  p_25, struct S1 * p_26, struct S1 * p_27, struct S4 * p_2887);
__device__ uint16_t  func_32(struct S1 * p_33, struct S4 * p_2887);
__device__ struct S1 * func_34(int8_t  p_35, struct S1 * p_36, struct S0  p_37, struct S1 * p_38, struct S4 * p_2887);
__device__ int8_t  func_39(uint16_t  p_40, struct S1 * p_41, struct S1 * p_42, struct S0  p_43, int64_t  p_44, struct S4 * p_2887);
__device__ struct S1 * func_51(struct S1 * p_52, uint32_t  p_53, struct S1 * p_54, struct S1 * p_55, uint16_t  p_56, struct S4 * p_2887);
__device__ uint32_t  func_57(uint8_t  p_58, struct S1 * p_59, uint32_t  p_60, struct S4 * p_2887);
__device__ struct S1 * func_61(struct S1 * p_62, struct S1 * p_63, struct S1 * p_64, struct S1 * p_65, struct S1 * p_66, struct S4 * p_2887);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_3 p_2887->g_15 hip_const_5.f3 hip_const_11.f5 hip_const_10 hip_const_7 hip_const_11.f2 hip_const_11.f6 hip_const_11.f1 hip_const_12 hip_const_5 hip_const_11.f0 p_2887->g_133 p_2887->g_134 p_2887->g_631 p_2887->g_457 p_2887->g_426 p_2887->g_130 p_2887->g_93 hip_const_9 hip_const_13 p_2887->g_596.f1 p_2887->g_102 p_2887->g_395 hip_const_14 p_2887->g_292 p_2887->g_628 p_2887->g_204 p_2887->g_919 p_2887->g_978 p_2887->g_982 p_2887->g_276 p_2887->g_801 p_2887->g_998 p_2887->g_364 hip_const_11 hip_const_4 p_2887->g_320 p_2887->g_888 hip_const_1 p_2887->g_617 hip_const_6 p_2887->g_857 p_2887->g_305 p_2887->g_505 p_2887->g_1199 p_2887->g_634 p_2887->g_1231 p_2887->g_1249 p_2887->g_1280 p_2887->g_425 p_2887->g_1310 p_2887->g_1313 p_2887->g_569 p_2887->g_527 p_2887->g_570 p_2887->g_1410 p_2887->g_888.f0 p_2887->g_1518 p_2887->g_596.f0 p_2887->g_616 p_2887->g_1560 p_2887->g_1595 p_2887->g_1637 p_2887->g_1665 p_2887->g_1668 p_2887->g_1675 p_2887->g_1679 p_2887->g_1680 p_2887->g_1683 p_2887->g_574 p_2887->g_1712 p_2887->g_1713 p_2887->g_731 p_2887->g_212 p_2887->g_489 p_2887->g_504 p_2887->g_1865 p_2887->g_2368 p_2887->g_2369 p_2887->g_2189 p_2887->g_2661 p_2887->g_2667 p_2887->g_2074 p_2887->g_2437 p_2887->g_1311 p_2887->g_2725 p_2887->g_723 p_2887->g_2741 p_2887->g_1866 p_2887->g_2698 p_2887->g_2764 p_2887->g_2184 p_2887->g_2516 p_2887->g_2269 p_2887->g_582 hip_const_16 p_2887->g_1880 p_2887->g_2842 p_2887->g_2843 p_2887->g_1374 p_2887->g_2858 p_2887->g_1932 p_2887->g_1933
 * writes: p_2887->g_86 p_2887->g_93 p_2887->g_102 p_2887->g_133 p_2887->g_426 p_2887->g_130 p_2887->g_596.f1 p_2887->g_592 p_2887->g_582 p_2887->g_628 p_2887->g_204 p_2887->g_276 p_2887->g_998 p_2887->g_364 p_2887->g_978 p_2887->g_982 p_2887->g_919 p_2887->g_731 p_2887->g_569 p_2887->g_425 p_2887->g_857 p_2887->g_1410 p_2887->g_596.f0 p_2887->g_801 p_2887->g_616 p_2887->g_1561 p_2887->g_888.f0 p_2887->g_1637 p_2887->g_457 p_2887->g_574 p_2887->g_1231 p_2887->g_212 p_2887->g_1595 p_2887->g_1679 p_2887->g_888.f1 p_2887->g_1712 p_2887->g_466 p_2887->g_2725 p_2887->g_723 p_2887->g_2698 p_2887->g_888 p_2887->g_1374 p_2887->g_2518 p_2887->g_1866 p_2887->g_1280
 */
__device__ uint32_t  func_1(struct S4 * p_2887)
{ /* block id: 0 */
    int32_t l_16[6][1] = {{(-9L)}, {(-9L)}, {(-9L)}, {(-9L)}, {(-9L)}, {(-9L)}};
    __shared__ int32_t l_17;
    l_17 = 1L;
    __shared__ char4 l_47;
    l_47 = make_char4((-2L), 0L, (-2L), 0L);
    struct S1 *l_50 = &hip_const_5[0];
    struct S0 l_1596 = {-2582,23,46,279,1,650,-252,930,42655};
    int16_t l_2622[9][8] = {{(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}, {(-1L), (-1L), (-8L), (-5L), (-1L), (-1L), 0x1710L, (-1L)}};
    struct S0 l_2681 = {-2736,76,33,291,2,-83,241,335,-13622};
    __shared__ union U2 l_2682;
    l_2682 = {-1L};
    struct S1 *l_2683[5][3][5] = {{{&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}}, {{&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}}, {{&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}}, {{&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}}, {{&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}, {&hip_const_11, &hip_const_5[0], &hip_const_5[0], &hip_const_11, nullptr}}};
    struct S1 *l_2885 = &hip_const_11;
    struct S1 **l_2886 = &l_2683[1][1][3];
    int i, j, k;
    (*l_2886) = ((safe_mul_func_uint32_t_u_u((((~make_int3(make_int4(((nullptr == &hip_const_11) | (func_4(func_10((hip_const_3[1] < ((make_ulong1(0xC35242359916A5C5LL) ^ make_ulong1(p_2887->g_15.x))).x), &hip_const_11, ((l_16[1][0] = hip_const_5[0].f3) | ((l_17 | (l_2622[8][4] &= (safe_rshift_func_uint16_t_u_s((0x8EL > ((safe_rshift_func_int8_t_s_s((func_22(l_17, (safe_div_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u(func_32(func_34(((func_39((safe_div_func_int8_t_s_s(((make_char1(l_47.y) ^ make_char1(3L))).x, (safe_mul_func_uint64_t_u_u(0x0A6A08C46E721FB1LL, hip_const_11.f5)))), l_50, &hip_const_5[0], hip_const_10, l_47.z, p_2887) & l_17) , l_47.x), p_2887->g_1595, l_1596, l_50, p_2887), p_2887), (-1L))) ^ hip_const_11.f0), p_2887->g_489.y)), l_1596.f0, l_50, l_50, p_2887) , l_1596.f5), 1)) <= (*p_2887->g_292))), l_1596.f4)))) ^ 65531UL)), l_1596.f0, p_2887), l_2681, l_2682, l_2683[0][2][3], l_2683[0][2][3], p_2887) && 65535UL)), 0x44F54C17L, 8L, 1L).w, l_2681.f0, 6L))).y != l_2682.f0), (***p_2887->g_1932))) , l_2885);
    return (*p_2887->g_395);
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_5.f6 hip_const_9 p_2887->g_2074 p_2887->g_2437 p_2887->g_1310 p_2887->g_1311 p_2887->g_2725 p_2887->g_723 p_2887->g_2741 p_2887->g_1865 p_2887->g_1866 hip_const_10 p_2887->g_1637 p_2887->g_102 p_2887->g_2698 p_2887->g_2764 p_2887->g_634 p_2887->g_2368 p_2887->g_2369 p_2887->g_596.f1 p_2887->g_2184 p_2887->g_2516 p_2887->g_2269 p_2887->g_582 hip_const_16 p_2887->g_1880 p_2887->g_133 p_2887->g_134 p_2887->g_1231 p_2887->g_2842 p_2887->g_2843 p_2887->g_1374 p_2887->g_2858 p_2887->g_93 p_2887->g_1280
 * writes: p_2887->g_102 p_2887->g_998 p_2887->g_2725 p_2887->g_723 p_2887->g_2698 p_2887->g_596.f1 p_2887->g_596.f0 p_2887->g_888 p_2887->g_93 p_2887->g_1231 p_2887->g_1374 p_2887->g_2518 p_2887->g_1866 p_2887->g_1280
 */
__device__ uint16_t  func_4(struct S1 * p_5, struct S0  p_6, union U2  p_7, struct S1 * p_8, struct S1 * p_9, struct S4 * p_2887)
{ /* block id: 1146 */
    int64_t l_2684 = (-1L);
    __shared__ int32_t *l_2685;
    l_2685 = nullptr;
    int32_t *l_2686 = &hip_const_9;
    int32_t *l_2687 = &p_2887->g_102;
    __shared__ int32_t *l_2688;
    l_2688 = &p_2887->g_888[0][0][2].f0;
    int32_t *l_2689 = &p_2887->g_596.f0;
    int32_t *l_2690 = &p_2887->g_888[0][0][2].f0;
    int32_t l_2691 = 0L;
    int64_t l_2692 = 1L;
    int32_t *l_2693 = nullptr;
    int32_t *l_2694 = nullptr;
    int32_t *l_2695[10][7][3] = {{{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}, {{&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}, {&hip_const_9, nullptr, nullptr}}};
    int16_t l_2696 = 0x5EDDL;
    int16_t l_2697 = 0x19EAL;
    uint32_t l_2699 = 0x86079113L;
    int8_t **l_2704 = &p_2887->g_2612[0][4][0];
    __shared__ uint64_t *l_2705;
    l_2705 = nullptr;
    // attempting a hip shared for loop
    __shared__ int32_t **l_2706[9];
    for (int i = 0; i < 9; i++)
        l_2706[i] = &p_2887->g_999[0][6][6];
    int64_t **l_2707 = &p_2887->g_2269;
    __shared__ int64_t ***l_2708;
    l_2708 = &l_2707;
    int16_t *l_2711 = &l_2696;
    uint64_t l_2722 = 18446744073709551606UL;
    uint32_t l_2724 = 0x7BB9EF20L;
    int8_t l_2782 = (-7L);
    uint32_t l_2786 = 0x49431623L;
    __shared__ int32_t l_2790;
    l_2790 = (-1L);
    uint32_t l_2791 = 4294967295UL;
    struct S0 l_2794[8] = {{-14437,254,52,-98,6,-945,-77,1118,28079}, {18273,129,13,-323,8,-978,93,1071,916}, {-14437,254,52,-98,6,-945,-77,1118,28079}, {18273,129,13,-323,8,-978,93,1071,916}, {-14437,254,52,-98,6,-945,-77,1118,28079}, {18273,129,13,-323,8,-978,93,1071,916}, {-14437,254,52,-98,6,-945,-77,1118,28079}, {18273,129,13,-323,8,-978,93,1071,916}};
    uint32_t l_2810 = 6UL;
    short2 l_2819 = make_short2(0x4AABL, 0x67A5L);
    uint4 l_2837 = make_uint4(0x876C590BL, 6UL, 0x876C590BL, 6UL);
    int32_t l_2852 = (-8L);
    union U2 *l_2870 = &hip_const_1[1];
    ulong2 l_2877 = make_ulong2(0xBA052E588E389B78LL, 3UL);
    uint64_t *l_2878[1];
    ushort1 l_2883 = make_ushort1(1UL);
    __shared__ struct S0 *l_2884;
    l_2884 = &l_2794[3];
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_2878[i] = nullptr;
lbl_2814:
    l_2699--;
    if (((make_uint3((safe_mul_func_uint64_t_u_u(((*l_2687) = (nullptr == l_2704)), hip_const_5[0].f6)), (*l_2686), (((*p_2887->g_2074) = l_2706[4]) != l_2706[4])).x <= (&p_2887->g_2269 == ((*l_2708) = l_2707))) > ((*l_2711) = (safe_add_func_uint16_t_u_u((+p_6.f5), p_6.f3)))))
    { /* block id: 1152 */
        union U3 ****l_2716 = &p_2887->g_1560;
        int32_t l_2719[1];
        int64_t l_2723 = 0x992038CFF70E5975LL;
        uint8_t **l_2748 = &p_2887->g_1311;
        __shared__ uint8_t **l_2750;
        l_2750 = &p_2887->g_1311;
        uint8_t l_2772[6] = {0xA2L, 0xA2L, 0UL, 0xA2L, 0xA2L, 0UL};
        int i;
        for (int i = 0; i < 1; i++)
            l_2719[i] = 2L;
        if (((!(safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((nullptr != l_2716), ((p_2887->g_2437.y >= (safe_sub_func_uint64_t_u_u(make_ulong3(1UL, 6UL, l_2719[0]).z, (((((safe_div_func_int32_t_s_s(0L, (l_2723 ^= (l_2722 != 0x512EF0738178D141LL)))) , nullptr) == (*p_2887->g_1310)) || p_6.f7) | 0x12A90E8EBC0DE925LL)))) | 0x212D44B4L))), l_2724))) , 0xC9AEC60DL))
        { /* block id: 1154 */
            int8_t l_2755[6] = {0x2EL, 0x2EL, (-1L), 0x2EL, 0x2EL, (-1L)};
            __shared__ int32_t l_2756;
            l_2756 = 0x51855653L;
            int3 l_2761 = make_int3(0xB9ACF0C0L, 0x88E9008BL, 0xB9ACF0C0L);
            __shared__ int64_t *l_2774;
            l_2774 = &hip_const_8;
            ulong3 l_2795 = make_ulong3(0xF500D1C5B7D227FBLL, 1UL, 0xF500D1C5B7D227FBLL);
            int i;
            for (l_2723 = 0; (l_2723 >= 0); l_2723 -= 1)
            { /* block id: 1157 */
                uint32_t ***l_2727 = &p_2887->g_2725;
                uint16_t *l_2730 = &hip_const_1[1].f1;
                __shared__ uint16_t *l_2731;
                l_2731 = &hip_const_12[0];
                uint16_t *l_2732 = nullptr;
                // attempting a hip shared for loop
                __shared__ uint16_t *l_2733[3];
                for (int i = 0; i < 3; i++)
                    l_2733[i] = nullptr;
                int32_t l_2734 = 0xF3DF452FL;
                uint8_t ***l_2749[7] = {&l_2748, &l_2748, &p_2887->g_1310, &l_2748, &l_2748, &p_2887->g_1310, &l_2748};
                __shared__ int64_t l_2754;
                l_2754 = 0xEBA1FD02636B3A37LL;
                __shared__ uchar1 l_2767;
                l_2767 = make_uchar1(253UL);
                __shared__ union U2 l_2773;
                l_2773 = {0xF6L};
                __shared__ int32_t l_2785;
                l_2785 = 0xDAD0219DL;
                int32_t *l_2806 = nullptr;
                int i;
                for (int i = 0; i < 3; i++)
                    l_2733[i] = nullptr;
                (*l_2727) = p_2887->g_2725;
                (*l_2687) |= (safe_sub_func_int64_t_s_s((255UL && 0UL), ((l_2754 = ((--p_2887->g_723.y) , (safe_mod_func_uint64_t_u_u(make_ulong4(18446744073709551609UL, 18446744073709551615UL, 0x29A36DD19A286E30LL, (safe_div_func_int8_t_s_s((make_uint3(make_uint2(p_2887->g_2741.z, p_2887->g_2741.z).x, 0x3802DC24L, 1UL).z && ((p_6.f7 ^ 0UL) != (p_6.f1 && (safe_mod_func_uint64_t_u_u(((safe_rshift_func_int64_t_s_u((((l_2748 = l_2748) == l_2750) && (safe_unary_minus_func_int16_t_s(((**p_2887->g_1865) , (safe_sub_func_uint16_t_u_u((l_2719[0] , p_6.f3), p_2887->g_1637[0])))))), 6)) , l_2723), 1UL))))), p_6.f1))).w, p_6.f7)))) != l_2755[5])));
                if (p_6.f8)
                    continue;
                if (l_2734)
                    break;
                for (p_2887->g_2698 = 0; (p_2887->g_2698 >= 0); p_2887->g_2698 -= 1)
                { /* block id: 1167 */
                    int32_t l_2757[10] = {(-1L), 0xB6687262L, (-1L), 0xB6687262L, (-1L), 0xB6687262L, (-1L), 0xB6687262L, (-1L), 0xB6687262L};
                    uint32_t l_2758 = 0x5C151E9CL;
                    __shared__ union U2 *****l_2776;
                    l_2776 = nullptr;
                    union U2 ****l_2778 = &p_2887->g_1410[1];
                    union U2 *****l_2777 = &l_2778;
                    __shared__ int32_t l_2779;
                    l_2779 = 4L;
                    int32_t l_2781 = 1L;
                    __shared__ int1 l_2784;
                    l_2784 = make_int1((-1L));
                    int i;
                    if (p_6.f5)
                    { /* block id: 1168 */
                        l_2758++;
                        l_2756 &= (p_6.f5 = make_int4(l_2761.y, l_2761.y, l_2761.y, l_2761.y).w);
                    }
                    else
                    { /* block id: 1172 */
                        l_2734 ^= ((*l_2687) ^= ((((make_int4(1L, (p_6.f8 && ((safe_sub_func_uint64_t_u_u((make_short2(p_2887->g_2764.y, p_2887->g_2764.y).x || p_2887->g_634.y), ((-1L) <= p_6.f4))) <= (safe_rshift_func_uint8_t_u_u(((make_uchar3(l_2767.x, l_2767.x, l_2767.x) ^ ((make_uchar3(249UL, (l_2723 < ((*p_2887->g_2368) == nullptr)), (safe_rshift_func_uint64_t_u_s(((p_6.f3 = (p_6.f1 && (safe_sub_func_uint8_t_u_u(0UL, p_6.f5)))) != p_6.f8), p_7.f0))) ^ make_uchar3(0xC6L, 0xC6L, 0xC6L))))).z, p_6.f4)))), 0x12C4A4C6L, l_2772[5]) | make_int4(0xD0AC30C6L, 0xD0AC30C6L, 0xD0AC30C6L, 0xD0AC30C6L))) ^ make_int4((-6L), (-6L), (-6L), (-6L)))).y);
                        if (l_2767.x)
                            break;
                    }
                    for (p_2887->g_596.f1 = 0; (p_2887->g_596.f1 <= 0); p_2887->g_596.f1 += 1)
                    { /* block id: 1180 */
                        int i, j, k;
                        (*l_2687) ^= (p_6.f3 = make_int2(((l_2773 , nullptr) != nullptr), p_2887->g_2184[p_2887->g_2698][(p_2887->g_2698 + 7)][p_2887->g_596.f1]).y);
                        return (*l_2686);
                    }
                    if ((((l_2774 == (*p_2887->g_2516)) < l_2754) ^ (safe_unary_minus_func_int16_t_s((!(((*l_2777) = &p_2887->g_1410[1]) == nullptr))))))
                    { /* block id: 1186 */
                        int32_t l_2780 = 0L;
                        // attempting a hip shared for loop
                        __shared__ int32_t l_2789[9][1][2];
                        for (int i = 0; i < 9; i++)
                        {
                            for (int j = 0; j < 1; j++)
                            {
                                for (int k = 0; k < 2; k++)
                                    l_2789[i][j][k] = (-4L);
                            }
                        }
                        union U3 l_2802 = {0x7F4E5B70L};
                        int i, j, k;
                        ++l_2786;
                        l_2791++;
                        p_6 = l_2794[1];
                        l_2734 = (4294967292UL != ((make_ulong2(l_2795.x, l_2795.x).y == (((safe_add_func_uint32_t_u_u(((l_2719[0] = p_6.f4) | (((*l_2689) = p_6.f8) || ((p_6.f5 <= ((safe_lshift_func_int32_t_s_u(l_2757[9], 0)) , (safe_mul_func_uint8_t_u_u((&l_2778 == ((p_7 , (l_2802 = ((*p_2887->g_582) = l_2802))) , nullptr)), hip_const_16)))) ^ p_6.f7))), 0UL)) >= l_2755[3]) != p_2887->g_1880.y)) < l_2723));
                    }
                    else
                    { /* block id: 1195 */
                        uint64_t l_2803 = 1UL;
                        ++l_2803;
                        if (l_2803)
                            continue;
                    }
                    (**p_2887->g_133) = l_2806;
                    for (l_2697 = 0; (l_2697 >= 0); l_2697 -= 1)
                    { /* block id: 1202 */
                        int32_t l_2807 = 0xC2476F88L;
                        int32_t l_2808 = (-10L);
                        int32_t l_2809[4][3][4] = {{{0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}}, {{0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}}, {{0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}}, {{0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}, {0xEF7E999EL, 9L, 0L, 0x2457A510L}}};
                        struct S0 *l_2813 = &l_2794[1];
                        int i, j, k;
                        l_2810++;
                        p_6.f0 |= 0x3A94DE26L;
                        (*l_2813) = p_6;
                        if ((*l_2687))
                            continue;
                    }
                }
            }
            return l_2756;
        }
        else
        { /* block id: 1211 */
            if (l_2697)
                goto lbl_2814;
        }
        return p_6.f3;
    }
    else
    { /* block id: 1215 */
        uint64_t l_2822 = 8UL;
        uint4 l_2836 = make_uint4(4294967292UL, 0x346BE695L, 4294967292UL, 0x346BE695L);
        int32_t *l_2853 = nullptr;
        int32_t l_2864 = 0x0A488C78L;
        __shared__ int32_t *l_2869;
        l_2869 = &l_2864;
        union U2 *l_2872 = nullptr;
        int i;
        for (l_2782 = 17; (l_2782 != 3); --l_2782)
        { /* block id: 1218 */
            uint16_t *l_2835[10] = {&hip_const_11.f3, &hip_const_2[2][0][5], &hip_const_11.f3, &hip_const_2[2][0][5], &hip_const_11.f3, &hip_const_2[2][0][5], &hip_const_11.f3, &hip_const_2[2][0][5], &hip_const_11.f3, &hip_const_2[2][0][5]};
            __shared__ uint8_t *l_2848;
            l_2848 = &hip_const_1[1].f3;
            int32_t l_2851 = 0xB0FB6280L;
            int i;
            for (l_2790 = 0; (l_2790 >= 0); l_2790 -= 1)
            { /* block id: 1221 */
                if (p_6.f4)
                    goto lbl_2814;
                for (l_2699 = 0; (l_2699 <= 0); l_2699 += 1)
                { /* block id: 1225 */
                    uint32_t l_2820 = 18446744073709551615UL;
                    uint16_t *l_2821[9][6][2] = {{{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}, {{nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}, {nullptr, &p_2887->g_457[4]}}};
                    uint8_t *l_2823 = nullptr;
                    __shared__ uint8_t *l_2824;
                    l_2824 = nullptr;
                    uint8_t *l_2825 = &p_2887->g_596.f1;
                    __shared__ int32_t l_2826;
                    l_2826 = 1L;
                    struct S0 *l_2827 = nullptr;
                    struct S0 l_2828[3][1][4] = {{{{-6686,192,52,353,1,-604,-196,1403,25094}, {-6686,192,52,353,1,-604,-196,1403,25094}, {-7645,156,11,-107,9,702,53,519,-20958}, {-6686,192,52,353,1,-604,-196,1403,25094}}}, {{{-6686,192,52,353,1,-604,-196,1403,25094}, {-6686,192,52,353,1,-604,-196,1403,25094}, {-7645,156,11,-107,9,702,53,519,-20958}, {-6686,192,52,353,1,-604,-196,1403,25094}}}, {{{-6686,192,52,353,1,-604,-196,1403,25094}, {-6686,192,52,353,1,-604,-196,1403,25094}, {-7645,156,11,-107,9,702,53,519,-20958}, {-6686,192,52,353,1,-604,-196,1403,25094}}}};
                    int i, j, k;
                    (*l_2687) ^= (p_6.f5 >= (l_2826 |= (safe_add_func_int16_t_s_s(make_short4(l_2819.x, l_2819.x, l_2819.x, l_2819.x).w, (l_2822 = l_2820)))));
                    l_2828[2][0][2] = p_6;
                }
            }
            l_2851 = (safe_sub_func_uint16_t_u_u(((p_7 , p_6) , (((((((((safe_lshift(make_uint3(0xD35E73D0L, (p_6.f5 | (safe_rshift_func_uint16_t_u_u(l_2822, (p_2887->g_1231.x |= 0x760AL)))), 0x0C98CDC3L), make_uint3(l_2836.y, l_2836.y, l_2836.y)))) | make_uint3(l_2837.y, l_2837.y, l_2837.y))) & make_uint3(((safe_rshift_func_uint32_t_u_s((((safe_div(make_uchar2(p_2887->g_2842.x, p_2887->g_2842.x), ((make_uchar2(1UL, (p_6.f0 < make_long3(0x8EB66175F8493D15LL, (-4L), 0xB22C084C71912879LL).x)) ^ make_uchar2(p_2887->g_2843.y, p_2887->g_2843.y)))))).x || ((safe_mul(((make_char1((safe_add_func_uint8_t_u_u((p_2887->g_1374.z++), 1L))) | make_char1(2L))), make_char1(0L)))).x), 1)) , 5UL), 0x854E8325L, 0xE024E772L))).x | p_6.f3) , p_6.f4) ^ l_2851)), l_2822));
            l_2852 ^= l_2836.z;
            (*p_2887->g_134) = l_2853;
        }
        for (p_7.f1 = 0; (p_7.f1 > 49); ++p_7.f1)
        { /* block id: 1240 */
            uint32_t l_2865 = 1UL;
            __shared__ int32_t l_2868;
            l_2868 = 0xE7A7666EL;
            union U2 **l_2871 = nullptr;
            for (p_2887->g_2518 = (-20); (p_2887->g_2518 != 35); p_2887->g_2518 = safe_add_func_int8_t_s_s(p_2887->g_2518, 1))
            { /* block id: 1243 */
                if (p_6.f6)
                    break;
            }
            if (p_2887->g_2858[0][1])
            { /* block id: 1246 */
                int16_t l_2863 = 0x185EL;
                (**p_2887->g_133) = &l_2852;
                for (l_2724 = 29; (l_2724 != 29); l_2724 = safe_add_func_uint32_t_u_u(l_2724, 9))
                { /* block id: 1250 */
                    for (l_2691 = 0; (l_2691 != 15); l_2691++)
                    { /* block id: 1253 */
                        return l_2863;
                    }
                    (*p_2887->g_1865) = (*p_2887->g_1865);
                    p_6.f0 &= ((*l_2687) = (*****p_2887->g_2368));
                }
            }
            else
            { /* block id: 1260 */
                l_2865++;
                l_2868 ^= (-1L);
            }
            l_2869 = ((****p_2887->g_2368) = &l_2868);
            l_2872 = l_2870;
        }
    }
    (*l_2884) = ((safe_add_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(make_ulong2(l_2877.x, l_2877.x).x, (p_2887->g_1280.y ^= p_6.f3))), (safe_lshift_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((make_ushort2(l_2883.x, l_2883.x) ^ make_ushort2(0x2376L, 1UL))).y, (*l_2687))), 7)))) , p_6);
    return p_6.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_2887->g_426 p_2887->g_133 p_2887->g_134 p_2887->g_2368 p_2887->g_2369 p_2887->g_1712 p_2887->g_596.f1 p_2887->g_204 p_2887->g_2189 p_2887->g_2661 p_2887->g_2667 p_2887->g_93
 * writes: p_2887->g_426 p_2887->g_93 p_2887->g_1410 p_2887->g_596.f1 p_2887->g_204
 */
__device__ struct S1 * func_10(int8_t  p_11, struct S1 * p_12, int64_t  p_13, int32_t  p_14, struct S4 * p_2887)
{ /* block id: 1109 */
    union U2 ***l_2626 = &p_2887->g_1411[5][2];
    int32_t l_2629[5][4][2] = {{{(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}}, {{(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}}, {{(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}}, {{(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}}, {{(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}, {(-9L), 4L}}};
    union U3 *l_2668 = &p_2887->g_888[0][0][2];
    int32_t l_2677 = 1L;
    union U2 *l_2679 = &hip_const_1[1];
    int i, j, k;
    for (p_2887->g_426 = 0; (p_2887->g_426 > (-10)); p_2887->g_426 = safe_sub_func_uint16_t_u_u(p_2887->g_426, 2))
    { /* block id: 1112 */
        int32_t *l_2625 = &hip_const_9;
        union U2 ****l_2627 = &p_2887->g_1410[0];
        union U3 l_2628 = {1L};
        int16_t l_2670[3][3];
        int i, j;
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 3; j++)
                l_2670[i][j] = 0x3CC2L;
        }
        (**p_2887->g_133) = l_2625;
        (****p_2887->g_2368) = l_2625;
        if (((l_2626 = ((*l_2627) = l_2626)) != (((p_2887->g_1712.w , make_uint1(0x2AD4C398L).x) , l_2628) , &p_2887->g_1411[5][2])))
        { /* block id: 1117 */
            // attempting a hip shared for loop
            __shared__ uint32_t l_2636[1];
            for (int i = 0; i < 1; i++)
                l_2636[i] = 4UL;
            int i;
            for (int i = 0; i < 1; i++)
                l_2636[i] = 4UL;
            for (p_13 = 0; p_13 < 6; p_13 += 1)
            {
                p_2887->g_1410[p_13] = &p_2887->g_1411[4][5];
            }
            if (l_2629[4][2][1])
                continue;
            for (p_2887->g_596.f1 = 0; (p_2887->g_596.f1 >= 17); ++p_2887->g_596.f1)
            { /* block id: 1122 */
                int1 l_2639 = make_int1(0xC3617614L);
                int32_t l_2647 = 0xEDAF8DC3L;
                int i;
                for (p_2887->g_204 = (-22); (p_2887->g_204 == 46); p_2887->g_204++)
                { /* block id: 1125 */
                    uint64_t *l_2646[4];
                    int i;
                    for (int i = 0; i < 4; i++)
                        l_2646[i] = &hip_const_3[1];
                    l_2647 ^= (0x70D1L <= (safe_mul_func_uint8_t_u_u(l_2636[0], ((((safe_sub_func_int32_t_s_s((p_13 < (((~make_int3(l_2639.x, l_2639.x, l_2639.x))).z >= 0x0D7055F9L)), ((safe_add_func_int8_t_s_s(0x52L, ((make_uchar3(0UL, 246UL, 1UL) ^ make_uchar3(1UL, (safe_add_func_int32_t_s_s(p_11, (p_13 <= ((safe_sub_func_int32_t_s_s(((l_2646[1] != nullptr) | 18446744073709551611UL), 4294967286UL)) == p_2887->g_2189.x)))), 1UL))).z)) == p_13))) >= p_11) , nullptr) == &p_2887->g_1866))));
                    for (p_11 = 0; (p_11 <= 2); p_11 += 1)
                    { /* block id: 1129 */
                        return p_12;
                    }
                }
            }
        }
        else
        { /* block id: 1134 */
            int64_t l_2650[8][8][3] = {{{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}, {{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}, {{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}, {{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}, {{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}, {{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}, {{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}, {{0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}, {0x98C4E70FF659C96ALL, 0x851F2E534CCA306FLL, (-8L)}}};
            uchar3 l_2666 = make_uchar3(0xCFL, 0xADL, 0xCFL);
            int8_t *l_2669[10][4] = {{nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}, {nullptr, &p_2887->g_426, nullptr, &p_2887->g_426}};
            int32_t l_2671 = 7L;
            uint32_t *l_2672 = nullptr;
            __shared__ uint32_t *l_2673;
            l_2673 = nullptr;
            uint32_t *l_2674 = nullptr;
            uint32_t *l_2675 = &hip_const_6;
            // attempting a hip shared for loop
            __shared__ uint32_t *l_2676[4];
            for (int i = 0; i < 4; i++)
                l_2676[i] = &hip_const_4;
            // attempting a hip shared for loop
            __shared__ int32_t *l_2678[5][10];
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 10; j++)
                    l_2678[i][j] = &p_2887->g_102;
            }
            union U2 **l_2680 = &l_2679;
            int i, j, k;
            for (int i = 0; i < 4; i++)
                l_2676[i] = &hip_const_4;
            p_14 = (safe_lshift_func_uint32_t_u_s((l_2677 |= ((l_2671 |= (l_2650[5][7][2] & (safe_mul_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(0x2FL, ((safe_sub_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(5UL, ((0xC9L <= (l_2670[2][2] = (p_11 = (((~(p_11 < (9UL == 0L))) & (safe_add_func_uint8_t_u_u(((!((((((make_uchar4(p_2887->g_2661.z, p_2887->g_2661.z, p_2887->g_2661.z, p_2887->g_2661.z) | make_uchar4(((safe_div(((safe_mul(make_uchar4(l_2666.z, l_2666.z, l_2666.z, l_2666.z), ((((make_uchar4(0xE7L, 0x76L, 0x12L, (make_int2(p_2887->g_2667.x, p_2887->g_2667.x).y && (l_2668 != nullptr))) | make_uchar4(0xD6L, 0xD6L, 0xD6L, 0xD6L))) ^ make_uchar4(6UL, 6UL, 6UL, 6UL)))))), make_uchar4(1UL, 1UL, 1UL, 1UL)))).y, 254UL, 0x9EL, 255UL))) & make_uchar4(1UL, 1UL, 1UL, 1UL))) ^ make_uchar4(255UL, 255UL, 255UL, 255UL))).w) != p_13), p_11))) , 0x60L)))) <= 0xECEB2E56L))), 0x16L)) | 0x76L))), l_2629[4][2][1])))) & p_14)), l_2629[4][2][1]));
            (*l_2680) = l_2679;
            if (p_13)
                break;
            (**p_2887->g_133) = (****p_2887->g_2368);
        }
    }
    return p_12;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_4 p_2887->g_134 p_2887->g_395 hip_const_14 p_2887->g_276 p_2887->g_504 p_2887->g_1679 p_2887->g_426 p_2887->g_1865 p_2887->g_1712 p_2887->g_888
 * writes: p_2887->g_93 p_2887->g_276 p_2887->g_1679 p_2887->g_426 p_2887->g_888.f1 p_2887->g_1712 p_2887->g_466 p_2887->g_582
 */
__device__ union U3  func_22(uint16_t  p_23, int32_t  p_24, uint64_t  p_25, struct S1 * p_26, struct S1 * p_27, struct S4 * p_2887)
{ /* block id: 793 */
    uint64_t **l_1811 = &p_2887->g_272;
    int32_t *l_1812[7][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
    __shared__ long4 l_1818;
    l_1818 = make_long4(9L, 0x65E9A02EE29DF94DLL, 9L, 0x65E9A02EE29DF94DLL);
    union U3 l_1830 = {0xB1E3443EL};
    int16_t *l_1836 = nullptr;
    int16_t **l_1835 = &l_1836;
    int16_t ***l_1834 = &l_1835;
    uint64_t ***l_1847[9] = {&p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479};
    uint32_t *l_1857 = &hip_const_4;
    uint32_t *l_1858[1];
    union U3 ***l_1867[3][7][8] = {{{&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}}, {{&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}}, {{&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}, {&p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561, &p_2887->g_1561}}};
    int32_t l_1879[6];
    struct S1 ****l_1885 = &p_2887->g_467;
    struct S0 l_1905 = {24169,104,27,-191,3,593,-114,299,40612};
    uint16_t *l_1912[10] = {&hip_const_2[2][0][5], nullptr, &p_2887->g_457[3], &p_2887->g_457[3], nullptr, &hip_const_2[2][0][5], nullptr, &p_2887->g_457[3], &p_2887->g_457[3], nullptr};
    uint32_t ***l_1926 = nullptr;
    int1 l_1940 = make_int1(0x4B8D93F8L);
    __shared__ char2 l_1949;
    l_1949 = make_char2(0x02L, 1L);
    int64_t *l_1959 = &hip_const_8;
    int64_t **l_1958 = &l_1959;
    uchar1 l_1993 = make_uchar1(255UL);
    uint64_t l_2024 = 0x694C12483F0C64C8LL;
    ulong1 l_2041 = make_ulong1(0x9B73B663AE9033FDLL);
    uint64_t l_2073 = 18446744073709551613UL;
    union U2 l_2089 = {9L};
    // attempting a hip shared for loop
    __shared__ int32_t ****l_2101[10][2][5];
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 5; k++)
                l_2101[i][j][k] = &p_2887->g_133;
        }
    }
    uint8_t l_2107 = 1UL;
    uchar1 l_2121 = make_uchar1(255UL);
    int64_t l_2124 = (-4L);
    __shared__ int32_t l_2136;
    l_2136 = 0xEC60416BL;
    uint8_t ***l_2158[2];
    short1 l_2197 = make_short1(0x1B71L);
    union U2 ****l_2290 = &p_2887->g_1410[1];
    short2 l_2317 = make_short2((-1L), (-4L));
    char4 l_2333 = make_char4(0xEFL, 2L, 0xEFL, 2L);
    char2 l_2336 = make_char2(0x5DL, 0x3AL);
    ushort4 l_2354 = make_ushort4(0xD05EL, 0x2038L, 0xD05EL, 0x2038L);
    int16_t l_2402 = (-1L);
    char3 l_2416 = make_char3(0L, (-1L), 0L);
    ushort1 l_2541 = make_ushort1(1UL);
    int8_t l_2561 = 0L;
    uint3 l_2579 = make_uint3(0xE0138CABL, 18446744073709551615UL, 0xE0138CABL);
    struct S1 *****l_2620 = &p_2887->g_466[1];
    union U3 *l_2621 = &p_2887->g_888[0][1][2];
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_1858[i] = &hip_const_4;
    for (int i = 0; i < 6; i++)
        l_1879[i] = 0xB9444563L;
    for (int i = 0; i < 2; i++)
        l_2158[i] = &p_2887->g_1310;
    if ((hip_const_4 , (l_1811 != l_1811)))
    { /* block id: 794 */
        __shared__ uint64_t l_1813;
        l_1813 = 18446744073709551609UL;
        (*p_2887->g_134) = l_1812[2][0];
        l_1813++;
        (*p_2887->g_134) = l_1812[2][0];
    }
    else
    { /* block id: 798 */
        uint16_t l_1827 = 0xDF49L;
        uint8_t *l_1828 = nullptr;
        uint8_t *l_1829 = &p_2887->g_276[0][2][2];
        int16_t *l_1833 = nullptr;
        int16_t **l_1832 = &l_1833;
        int16_t ***l_1831 = &l_1832;
        int16_t ****l_1837 = &l_1834;
        int2 l_1844 = make_int2(0xC6411B73L, 0x30AAAE0BL);
        int4 l_1845 = make_int4(0x10D22A38L, (-1L), 0x10D22A38L, (-1L));
        uint64_t ***l_1846 = &l_1811;
        uint32_t *l_1848 = nullptr;
        uint32_t *l_1849 = nullptr;
        uint32_t *l_1850 = &hip_const_6;
        uint32_t *l_1851 = nullptr;
        uint32_t *l_1852 = nullptr;
        uint32_t *l_1853[5];
        __shared__ int32_t l_1854;
        l_1854 = (-7L);
        int i;
        for (int i = 0; i < 5; i++)
            l_1853[i] = nullptr;
        l_1854 ^= ((safe_mul_func_int64_t_s_s(make_long3(l_1818.z, l_1818.z, l_1818.z).z, (safe_mod_func_int64_t_s_s(((*p_2887->g_395) & (l_1844.x = make_uint3((l_1845.w = (!(((safe_mul_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((((safe_sub_func_uint8_t_u_u(((*l_1829) |= l_1827), ((l_1830 , l_1831) == ((*l_1837) = l_1834)))) & (p_24 || 65535UL)) || (((((((safe_rshift(make_short1((((safe_div(make_int3(l_1844.x, l_1844.x, l_1844.x), make_int3(l_1845.x, l_1845.x, l_1845.x)))).x > ((l_1847[2] = l_1846) != &p_2887->g_479))), make_short1(16)))).x >= 0xC671L) > p_24) <= 0x315F1035L) , p_25) | p_23)), 0xA393L)), 0L)) ^ 0x1E06E49FL) , l_1845.y))), 0x36462B77L, 0x0F39675CL).z)), p_2887->g_504.x)))) == l_1827);
    }
    if ((safe_lshift_func_int32_t_s_u((!p_24), (++p_2887->g_1679.x))))
    { /* block id: 807 */
        struct S0 *l_1864 = &hip_const_10;
        __shared__ struct S0 **l_1863;
        l_1863 = &l_1864;
        for (p_2887->g_426 = 0; (p_2887->g_426 > 18); p_2887->g_426++)
        { /* block id: 810 */
            uint16_t l_1868 = 0xCC23L;
            uint8_t *l_1877 = nullptr;
            uint8_t *l_1878 = &p_2887->g_888[0][0][2].f1;
            l_1868 = (((l_1863 == p_2887->g_1865) , &p_2887->g_1561) == l_1867[1][5][5]);
            p_2887->g_1712.x ^= (l_1879[3] = (safe_add_func_int8_t_s_s(p_25, ((*l_1878) = (safe_div_func_int64_t_s_s((-10L), (safe_sub_func_uint8_t_u_u(0xCDL, (safe_div_func_int32_t_s_s(0x9995AE57L, (*p_2887->g_395)))))))))));
        }
    }
    else
    { /* block id: 816 */
        __shared__ int16_t l_1894;
        l_1894 = 0x54F3L;
        int32_t l_1920 = 0x47E2C166L;
        union U2 l_1969 = {0xDDL};
        uint8_t l_1984[8][6][5] = {{{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}, {{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}, {{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}, {{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}, {{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}, {{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}, {{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}, {{0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}, {0xA8L, 252UL, 4UL, 1UL, 8UL}}};
        __shared__ long1 l_2009;
        l_2009 = make_long1(0L);
        int3 l_2030 = make_int3((-1L), 1L, (-1L));
        uint64_t l_2072 = 0xEE05AC8703F7E1A8LL;
        struct S1 **l_2075 = nullptr;
        short1 l_2092 = make_short1(0x6232L);
        uint64_t ***l_2094 = &p_2887->g_479;
        __shared__ union U3 l_2103;
        l_2103 = {0x11F65CFEL};
        long2 l_2111 = make_long2(6L, 1L);
        int16_t *****l_2117 = &p_2887->g_1921;
        uint16_t l_2138 = 7UL;
        __shared__ int32_t l_2185;
        l_2185 = 2L;
        uint8_t l_2186 = 0x29L;
        int3 l_2187 = make_int3(0xACEAA2F2L, 0x1736159AL, 0xACEAA2F2L);
        short1 l_2196 = make_short1(0x7874L);
        uint2 l_2204 = make_uint2(6UL, 1UL);
        uint16_t l_2244[3];
        int32_t l_2364 = (-5L);
        union U3 ****l_2403[9][2][8] = {{{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}, {{&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}, {&p_2887->g_1560, &l_1867[2][2][0], nullptr, &l_1867[1][5][5], &p_2887->g_1560, &l_1867[2][5][5], &p_2887->g_1560, &l_1867[2][5][5]}}};
        int4 l_2404 = make_int4((-1L), 0L, (-1L), 0L);
        char3 l_2430 = make_char3((-5L), 0x58L, (-5L));
        uint32_t **l_2458[10][4][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
        ulong4 l_2480 = make_ulong4(1UL, 18446744073709551609UL, 1UL, 18446744073709551609UL);
        short1 l_2487 = make_short1(0L);
        int32_t **l_2509 = &l_1812[3][0];
        uint32_t l_2571 = 0x705C3410L;
        __shared__ uint32_t l_2617;
        l_2617 = 0xB79BB527L;
        int i, j, k;
        for (int i = 0; i < 3; i++)
            l_2244[i] = 0x056CL;
        for (p_25 = 0; (p_25 <= 2); p_25 += 1)
        { /* block id: 819 */
            uint16_t l_1891 = 0xB896L;
            int32_t l_1899 = 8L;
            int32_t l_1900 = 0x1E4EE88EL;
            ushort3 l_1918 = make_ushort3(0x7D5DL, 0x991AL, 0x7D5DL);
            uint8_t *l_1919[8] = {&p_2887->g_276[3][1][0], &p_2887->g_596.f1, &p_2887->g_276[3][1][0], &p_2887->g_596.f1, &p_2887->g_276[3][1][0], &p_2887->g_596.f1, &p_2887->g_276[3][1][0], &p_2887->g_596.f1};
            uint64_t l_1992[10][1][1] = {{{1UL}}, {{1UL}}, {{1UL}}, {{1UL}}, {{1UL}}, {{1UL}}, {{1UL}}, {{1UL}}, {{1UL}}, {{1UL}}};
            union U3 ****l_1996 = &p_2887->g_1560;
            union U3 *****l_1995 = &l_1996;
            uint32_t l_2022 = 0xDCC549DDL;
            uint16_t l_2027 = 0x806FL;
            long2 l_2050 = make_long2(1L, 0x6047363AB0485F5BLL);
            // attempting a hip shared for loop
            __shared__ uint16_t l_2065[7];
            for (int i = 0; i < 7; i++)
                l_2065[i] = 65535UL;
            uint32_t l_2143 = 18446744073709551615UL;
            __shared__ uint8_t ***l_2156;
            l_2156 = &p_2887->g_1310;
            int32_t l_2188 = 0x4312E567L;
            // attempting a hip shared for loop
            __shared__ int8_t *l_2206[3][9][6];
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    for (int k = 0; k < 6; k++)
                        l_2206[i][j][k] = nullptr;
                }
            }
            __shared__ union U3 *l_2214;
            l_2214 = &p_2887->g_888[0][0][2];
            union U2 l_2289 = {0x3CL};
            __shared__ struct S0 **l_2293;
            l_2293 = &p_2887->g_1866;
            long3 l_2314 = make_long3(1L, 4L, 1L);
            int32_t **l_2326 = nullptr;
            struct S1 l_2327 = {219,17018,1497,1UL,574,16,-4333,-0,-1};
            uint16_t l_2371[3][4] = {{0x42C4L, 0x0E69L, 65527UL, 65527UL}, {0x42C4L, 0x0E69L, 65527UL, 65527UL}, {0x42C4L, 0x0E69L, 65527UL, 65527UL}};
            union U3 **l_2390 = &p_2887->g_582;
            int32_t *l_2392[5][6] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
            struct S1 *l_2395 = &hip_const_11;
            __shared__ struct S1 *l_2396;
            l_2396 = nullptr;
            __shared__ uint1 l_2399;
            l_2399 = make_uint1(18446744073709551615UL);
            // attempting a hip shared for loop
            __shared__ int32_t **l_2461[5][10];
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 10; j++)
                    l_2461[i][j] = &p_2887->g_93;
            }
            struct S1 ***l_2473[1][5] = {{&p_2887->g_129[2][2][2], &p_2887->g_129[0][0][3], &p_2887->g_129[2][2][2], &p_2887->g_129[0][0][3], &p_2887->g_129[2][2][2]}};
            int64_t **l_2515[8] = {&p_2887->g_2269, &p_2887->g_2269, &p_2887->g_2269, &p_2887->g_2269, &p_2887->g_2269, &p_2887->g_2269, &p_2887->g_2269, &p_2887->g_2269};
            int64_t l_2517[3][2] = {{(-1L), 0x3BA692033D9D850ELL}, {(-1L), 0x3BA692033D9D850ELL}, {(-1L), 0x3BA692033D9D850ELL}};
            uint16_t l_2546 = 65535UL;
            int64_t l_2562 = 1L;
            int4 l_2584 = make_int4(0x47CD3627L, 6L, 0x47CD3627L, 6L);
            int2 l_2585 = make_int2(0L, (-9L));
            __shared__ uint32_t l_2587;
            l_2587 = 0x0E152D20L;
            int32_t l_2616 = 0L;
            int i, j, k;
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 10; j++)
                    l_2461[i][j] = &p_2887->g_93;
            }
        }
    }
    (*l_2620) = l_1885;
    p_2887->g_582 = l_2621;
    return (*l_2621);
}


/* ------------------------------------------ */
/* 
 * reads : p_2887->g_364 p_2887->g_1675
 * writes: p_2887->g_364 p_2887->g_130 p_2887->g_1595
 */
__device__ uint16_t  func_32(struct S1 * p_33, struct S4 * p_2887)
{ /* block id: 784 */
    struct S1 *l_1808 = &hip_const_5[0];
    for (p_2887->g_364 = 0; (p_2887->g_364 != 12); p_2887->g_364 = safe_add_func_uint16_t_u_u(p_2887->g_364, 6))
    { /* block id: 787 */
        struct S1 **l_1809 = &p_2887->g_130;
        __shared__ struct S1 **l_1810;
        l_1810 = &p_2887->g_1595;
        (*l_1810) = (l_1808 = ((*l_1809) = l_1808));
    }
    return p_2887->g_1675.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_2887->g_888.f0 p_2887->g_1637 p_2887->g_134 p_2887->g_1665 p_2887->g_1668 p_2887->g_1675 p_2887->g_1679 p_2887->g_395 hip_const_14 p_2887->g_1680 p_2887->g_1683 p_2887->g_574 p_2887->g_617 p_2887->g_292 hip_const_13 p_2887->g_1712 p_2887->g_1713 p_2887->g_204 p_2887->g_731 p_2887->g_133 p_2887->g_212 hip_const_5 p_2887->g_457 hip_const_3 p_2887->g_596.f1 p_2887->g_426 p_2887->g_276 p_2887->g_1231 hip_const_10.f0 hip_const_10 p_2887->g_982
 * writes: p_2887->g_596.f1 p_2887->g_426 p_2887->g_888.f0 p_2887->g_93 p_2887->g_1637 p_2887->g_457 p_2887->g_574 p_2887->g_204 p_2887->g_276 p_2887->g_1231 p_2887->g_212 p_2887->g_982
 */
__device__ struct S1 * func_34(int8_t  p_35, struct S1 * p_36, struct S0  p_37, struct S1 * p_38, struct S4 * p_2887)
{ /* block id: 703 */
    __shared__ int2 l_1607;
    l_1607 = make_int2(6L, 0x7150851EL);
    __shared__ int4 l_1608;
    l_1608 = make_int4(0x15FCEBCAL, 0x19285ECEL, 0x15FCEBCAL, 0x19285ECEL);
    int32_t *l_1611 = &p_2887->g_888[0][0][2].f0;
    union U3 *l_1616 = &p_2887->g_596;
    union U3 **l_1617 = &p_2887->g_582;
    union U3 **l_1618 = nullptr;
    union U3 **l_1619 = &l_1616;
    union U3 *l_1620 = nullptr;
    int3 l_1632 = make_int3((-2L), 0x0E04949AL, (-2L));
    __shared__ union U2 l_1633;
    l_1633 = {0xA9L};
    struct S1 l_1634 = {193,22573,9993,1UL,306,12,703,-2,0};
    uint16_t l_1635 = 0x6B29L;
    __shared__ uchar4 l_1636;
    l_1636 = make_uchar4(255UL, 1UL, 255UL, 1UL);
    struct S0 l_1644 = {-31180,86,52,-314,7,887,189,222,-34150};
    __shared__ uint16_t l_1698;
    l_1698 = 65531UL;
    ulong3 l_1744 = make_ulong3(0UL, 1UL, 0UL);
    uint32_t l_1802 = 0xD21F102EL;
    struct S1 *l_1805[9] = {&hip_const_11, &hip_const_5[0], &hip_const_11, &hip_const_5[0], &hip_const_11, &hip_const_5[0], &hip_const_11, &hip_const_5[0], &hip_const_11};
    int i;
    for (p_35 = 4; (p_35 > (-9)); p_35 = safe_sub_func_uint16_t_u_u(p_35, 9))
    { /* block id: 706 */
        int16_t *l_1600 = nullptr;
        int16_t **l_1599[5] = {nullptr, &l_1600, nullptr, &l_1600, nullptr};
        int16_t ***l_1601 = nullptr;
        int16_t ***l_1602 = &l_1599[2];
        int i;
        (*l_1602) = l_1599[4];
    }
lbl_1787:
    p_37.f5 ^= ((safe_add(((safe_rshift(((make_int3(0L, 1L, (-1L)) | make_int3(l_1607.y, l_1607.y, l_1607.y))), make_int3(32, 32, 32)))), make_int3(l_1608.y, l_1608.y, l_1608.y)))).z;
    if ((safe_div_func_uint64_t_u_u(l_1607.y, (((nullptr == l_1611) | ((safe_sub_func_int8_t_s_s((p_35 = (safe_mul_func_uint64_t_u_u((((*l_1619) = l_1616) == l_1620), (safe_add_func_uint8_t_u_u(((safe_rshift_func_int32_t_s_u((!(*l_1611)), (((make_long2(0L, (safe_mul_func_int64_t_s_s(((safe_rshift_func_uint32_t_u_s(make_uint1(0x59742AD6L).x, 12)) == (safe_unary_minus_func_int64_t_s((((safe_div_func_int64_t_s_s((make_int1(l_1632.x).x , (l_1633 , ((0xB8L > ((l_1634 , (*l_1611)) ^ 0L)) <= 0xFD840839A47E265CLL))), (*l_1611))) != p_37.f1) > p_2887->g_457[2])))), hip_const_3[0]))).x > l_1635) , l_1636.x) ^ (*l_1611)))) < (*l_1611)), p_2887->g_1637[1]))))), p_37.f0)) > 0UL)) , (*l_1611)))))
    { /* block id: 712 */
        struct S1 *l_1638 = &l_1634;
        struct S1 *l_1639[8];
        int i;
        for (int i = 0; i < 8; i++)
            l_1639[i] = &hip_const_5[0];
        return l_1639[5];
    }
    else
    { /* block id: 714 */
        uint16_t l_1669[6][6] = {{0x01D7L, 0xE0BAL, 0x4BF5L, 0x4BF5L, 0xE0BAL, 0x01D7L}, {0x01D7L, 0xE0BAL, 0x4BF5L, 0x4BF5L, 0xE0BAL, 0x01D7L}, {0x01D7L, 0xE0BAL, 0x4BF5L, 0x4BF5L, 0xE0BAL, 0x01D7L}, {0x01D7L, 0xE0BAL, 0x4BF5L, 0x4BF5L, 0xE0BAL, 0x01D7L}, {0x01D7L, 0xE0BAL, 0x4BF5L, 0x4BF5L, 0xE0BAL, 0x01D7L}, {0x01D7L, 0xE0BAL, 0x4BF5L, 0x4BF5L, 0xE0BAL, 0x01D7L}};
        uint2 l_1674 = make_uint2(0UL, 1UL);
        uint2 l_1678 = make_uint2(0x2B350605L, 1UL);
        __shared__ int1 l_1714;
        l_1714 = make_int1(0xCD3E5C7DL);
        int2 l_1715 = make_int2(0xD767C8FAL, 0x4415E40CL);
        __shared__ int32_t ***l_1719;
        l_1719 = &p_2887->g_134;
        char3 l_1739 = make_char3(1L, 1L, 1L);
        uint64_t l_1750 = 0x45B34FEB13CC227ALL;
        int8_t l_1751 = 0xDCL;
        ushort2 l_1753 = make_ushort2(0xC20FL, 65535UL);
        union U2 **l_1766 = &p_2887->g_1412[0][1][7];
        struct S1 l_1770 = {219,29469,21563,65535UL,542,-60,-1053,3,0};
        struct S0 l_1792 = {-10191,199,52,-27,10,366,51,37,35086};
        long4 l_1798 = make_long4((-7L), 8L, (-7L), 8L);
        int32_t *l_1800 = &p_2887->g_102;
        int32_t *l_1801[10][3][1] = {{{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}}};
        int i, j, k;
        for (p_2887->g_596.f1 = 26; (p_2887->g_596.f1 == 9); --p_2887->g_596.f1)
        { /* block id: 717 */
            union U3 l_1653 = {-1L};
            uint32_t l_1694 = 0x2935686BL;
            char4 l_1738 = make_char4(0x7DL, 5L, 0x7DL, 5L);
            int32_t l_1748 = 0x8D378B36L;
            int32_t l_1749 = 0xA1F81FC1L;
            ushort1 l_1756 = make_ushort1(65527UL);
            int32_t l_1775 = 0xAC60C0AAL;
            int4 l_1791 = make_int4((-9L), 4L, (-9L), 4L);
            int i;
            for (p_2887->g_426 = 0; (p_2887->g_426 > (-11)); p_2887->g_426--)
            { /* block id: 720 */
                struct S0 *l_1645 = &hip_const_10;
                struct S0 *l_1646[7][5][7] = {{{&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}}, {{&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}}, {{&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}}, {{&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}}, {{&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}}, {{&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}}, {{&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}, {&l_1644, &l_1644, nullptr, &l_1644, &l_1644, &hip_const_10, nullptr}}};
                int32_t *l_1647[7][8] = {{&p_2887->g_888[0][0][2].f0, nullptr, &hip_const_9, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, nullptr}, {&p_2887->g_888[0][0][2].f0, nullptr, &hip_const_9, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, nullptr}, {&p_2887->g_888[0][0][2].f0, nullptr, &hip_const_9, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, nullptr}, {&p_2887->g_888[0][0][2].f0, nullptr, &hip_const_9, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, nullptr}, {&p_2887->g_888[0][0][2].f0, nullptr, &hip_const_9, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, nullptr}, {&p_2887->g_888[0][0][2].f0, nullptr, &hip_const_9, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, nullptr}, {&p_2887->g_888[0][0][2].f0, nullptr, &hip_const_9, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, nullptr}};
                int32_t l_1697 = 2L;
                int i, j, k;
                p_37 = l_1644;
                for (l_1633.f3 = 1; (l_1633.f3 <= 4); l_1633.f3 += 1)
                { /* block id: 724 */
                    __shared__ union U2 l_1652;
                    l_1652 = {0x83L};
                    __shared__ int64_t *l_1654;
                    l_1654 = nullptr;
                    int64_t *l_1655 = nullptr;
                    __shared__ int64_t *l_1656;
                    l_1656 = &p_2887->g_1637[0];
                    int8_t *l_1686 = nullptr;
                    int8_t *l_1687 = nullptr;
                    int8_t *l_1688 = nullptr;
                    int8_t *l_1689 = nullptr;
                    int8_t *l_1690 = nullptr;
                    __shared__ int8_t *l_1691;
                    l_1691 = nullptr;
                    int8_t *l_1692 = nullptr;
                    int8_t *l_1693[1];
                    uint16_t *l_1695[9] = {&hip_const_12[2], &hip_const_12[2], &l_1652.f1, &hip_const_12[2], &hip_const_12[2], &l_1652.f1, &hip_const_12[2], &hip_const_12[2], &l_1652.f1};
                    uint64_t *l_1696 = nullptr;
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_1693[i] = nullptr;
                    (*l_1611) = (&p_2887->g_426 != nullptr);
                    (*p_2887->g_134) = l_1647[4][6];
                    p_37.f8 &= (p_37.f5 &= (safe_lshift_func_int32_t_s_s(((((*l_1656) = (safe_mod_func_int32_t_s_s((-7L), ((l_1652 , l_1653) , 0x57007FC5L)))) && (((safe_sub_func_uint32_t_u_u(((safe_mul_func_uint64_t_u_u(((safe_mul_func_uint64_t_u_u(((safe_rshift(make_ulong2(p_2887->g_1665.y, p_2887->g_1665.y), make_ulong2(64, 64)))).x, 0x48CB18A6FC3A6E2DLL)) & make_ulong2(0xA0C4FC4764FFDB73LL, 18446744073709551611UL).y), (l_1697 &= (safe_mod_func_uint16_t_u_u((p_2887->g_457[l_1633.f3] = (make_ulong1(p_2887->g_1668.x).x == 0xFB4CEC8CE91EB9A0LL)), (l_1653.f0 = (l_1669[5][0] || ((safe_sub_func_int32_t_s_s((l_1694 &= (((((safe_add(make_uint3(l_1674.y, l_1674.y, l_1674.y), ((make_uint3(p_2887->g_1675.z, p_2887->g_1675.z, p_2887->g_1675.z) | ((((safe_mul(((~make_uint3(l_1678.x, l_1678.x, l_1678.x))), make_uint3(p_2887->g_1679.x, p_2887->g_1679.x, p_2887->g_1679.x)))) | make_uint3((*p_2887->g_395), 0xF94553CDL, 0UL)))))))) | make_uint3(p_2887->g_1680.x, p_2887->g_1680.x, p_2887->g_1680.x))).x <= (safe_lshift_func_uint8_t_u_s(make_uchar4(p_2887->g_1683.x, p_2887->g_1683.x, p_2887->g_1683.x, p_2887->g_1683.x).y, (p_2887->g_574.y |= ((((safe_rshift_func_uint8_t_u_u(l_1669[0][1], 7)) < p_37.f1) , 0xBD0A6CD3L) & (*p_2887->g_395))))))), (*p_2887->g_395))) == p_2887->g_617.x)))))))) != p_2887->g_617.x), p_37.f0)) , (*l_1611)) >= p_37.f3)) >= (*p_2887->g_292)), (*l_1611))));
                    l_1698--;
                }
                if (p_37.f2)
                    continue;
            }
            for (l_1633.f2 = 10; (l_1633.f2 > 31); ++l_1633.f2)
            { /* block id: 741 */
                uint16_t *l_1705 = &l_1669[5][0];
                int32_t l_1716 = 5L;
                p_37.f3 |= (p_37.f2 , (safe_mod_func_int16_t_s_s(((((*l_1705) = 0x2C78L) > ((safe_mul_func_int32_t_s_s(((*l_1611) = ((((((safe_add(make_int4((-6L), 0L, 0x04A276ACL, 0x6E074F0EL), ((safe_rshift(make_int4(p_2887->g_1712.y, p_2887->g_1712.y, p_2887->g_1712.y, p_2887->g_1712.y), make_int4(p_2887->g_1713.x, p_2887->g_1713.x, p_2887->g_1713.x, p_2887->g_1713.x))))))) ^ make_int4(l_1714.x, l_1714.x, l_1714.x, l_1714.x))) ^ make_int4(l_1715.x, l_1715.x, l_1715.x, l_1715.x))).x), ((!l_1716) , ((0xE1CEL == (safe_lshift_func_uint64_t_u_u(make_ulong1(l_1694).x, ((p_36 == p_38) <= (l_1719 == l_1719))))) != 1L)))) & p_37.f2)) && 0x09D89C1CL), l_1694)));
            }
            for (p_2887->g_204 = 0; (p_2887->g_204 <= 39); p_2887->g_204++)
            { /* block id: 748 */
                uint8_t *l_1730 = nullptr;
                uint8_t *l_1731 = &hip_const_16;
                uint8_t *l_1732 = &p_2887->g_276[3][1][0];
                int32_t l_1735 = 0L;
                int16_t *l_1745 = nullptr;
                int16_t *l_1746 = nullptr;
                int16_t *l_1747[10];
                int32_t *l_1752 = nullptr;
                int4 l_1754 = make_int4(0x44B22B5DL, 0x6400F4CAL, 0x44B22B5DL, 0x6400F4CAL);
                __shared__ int2 l_1755;
                l_1755 = make_int2(0x3560E5BEL, 7L);
                union U2 **l_1768 = &p_2887->g_1412[0][3][9];
                struct S1 l_1769 = {233,22027,22971,0xE1A9L,1239,32,3255,2,-0};
                int32_t ****l_1779 = &p_2887->g_133;
                int i;
                for (int i = 0; i < 10; i++)
                    l_1747[i] = nullptr;
                l_1634.f7 = (safe_mod_func_uint16_t_u_u((safe_mul_func_int32_t_s_s((((safe_mod_func_int8_t_s_s(make_char4(0xE7L, make_char4(((make_char1(p_37.f7) ^ ((make_char1((safe_lshift_func_int64_t_s_s(((--(*l_1732)) ^ l_1735), 12))) ^ ((safe_div(((make_char1(l_1738.x) ^ make_char1(l_1739.z))), make_char1(6L)))))))).x, ((((((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_u((p_2887->g_1231.y ^= make_ushort1(0UL).x), ((hip_const_10.f0 < (l_1748 &= (0x21L == ((0xB5251BB39D90DC6CLL < ((*p_36) , (p_37.f4 < ((make_ulong4(l_1744.x, l_1744.x, l_1744.x, l_1744.x) ^ ((((((make_ulong4(0x3FBD5CED4B89D53CLL, 0x2FBAA6DCE64F81AALL, l_1653.f0, 18446744073709551615UL) ^ make_ulong4(((*l_1611) = 0xFADE0F7F7A374779LL), l_1735, p_37.f3, 0x0C683D18CDA47519LL))) ^ make_ulong4(0xD364BFA3C5B2E90ELL, 0xD364BFA3C5B2E90ELL, 0xD364BFA3C5B2E90ELL, 0xD364BFA3C5B2E90ELL))) ^ make_ulong4(0x7CA618944B8798E3LL, 0x7CA618944B8798E3LL, 0x7CA618944B8798E3LL, 0x7CA618944B8798E3LL))))).w))) >= p_37.f5)))) , l_1735))) != p_37.f4), 4)) > (*p_2887->g_292)) != l_1749) | l_1750) != p_37.f8) | 0x7991EE5052BDF33DLL), l_1751, 0xB0L).x, 6L, 0x72L).w, p_2887->g_1675.z)) , 0x79B8BCB0L) == l_1735), p_37.f8)), p_2887->g_731.z));
                if ((l_1748 != make_ushort1(l_1753.y).x))
                { /* block id: 754 */
                    uint16_t *l_1763[8][10][1] = {{{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}, {{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}, {{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}, {{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}, {{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}, {{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}, {{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}, {{&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}, {&hip_const_5[0].f3}}};
                    union U2 ***l_1767[3];
                    __shared__ int32_t l_1774;
                    l_1774 = 0xAE2E0842L;
                    int i, j, k;
                    for (int i = 0; i < 3; i++)
                        l_1767[i] = &l_1766;
                    if (((((((make_int4(0x4D5734C6L, 1L, 0x28D514EFL, 0xEE68117DL) ^ make_int4(l_1754.x, l_1754.x, l_1754.x, l_1754.x))) & ((~make_int4(l_1755.y, l_1755.y, l_1755.y, l_1755.y))))) ^ make_int4(0xF1F8E40AL, (*p_2887->g_292), 9L, (((p_2887->g_982.x |= ((hip_const_10 , make_ushort2(l_1756.x, l_1756.x).y) >= (safe_rshift_func_int32_t_s_s((((safe_mul_func_uint64_t_u_u((((p_37.f5 | (p_37.f4 <= (!(safe_rshift_func_uint16_t_u_u((p_2887->g_212.w--), 0))))) || (*l_1611)) >= (*l_1611)), (nullptr != &p_2887->g_1311))) >= (((l_1768 = l_1766) == nullptr) || (*l_1611))) , (*l_1611)), 3)))) & 8UL) != 0xAD3F44F8L)))).z)
                    { /* block id: 758 */
                        l_1770 = l_1769;
                    }
                    else
                    { /* block id: 760 */
                        __shared__ int32_t *l_1771;
                        l_1771 = &l_1735;
                        int32_t *l_1772 = nullptr;
                        int32_t *l_1773[10] = {&p_2887->g_888[0][0][2].f0, &l_1748, &p_2887->g_888[0][0][2].f0, &l_1748, &p_2887->g_888[0][0][2].f0, &l_1748, &p_2887->g_888[0][0][2].f0, &l_1748, &p_2887->g_888[0][0][2].f0, &l_1748};
                        uint32_t l_1776 = 0xB4D12FDFL;
                        int32_t *****l_1780 = nullptr;
                        int32_t ****l_1782[8][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                        __shared__ int32_t *****l_1781;
                        l_1781 = &l_1782[5][0];
                        int i, j;
                        l_1776++;
                        (*l_1611) |= (l_1779 != ((*l_1781) = &p_2887->g_133));
                    }
                }
                else
                { /* block id: 765 */
                    __shared__ struct S0 l_1785;
                    l_1785 = {-26529,175,26,-275,10,294,221,780,-5305};
                    struct S0 *l_1793 = &l_1644;
                    // attempting a hip shared for loop
                    __shared__ struct S0 *l_1794[1];
                    for (int i = 0; i < 1; i++)
                        l_1794[i] = &l_1792;
                    int8_t *l_1797 = &l_1751;
                    struct S1 l_1799 = {2,16733,4696,0xF835L,1410,-42,-3426,-0,1};
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_1794[i] = &l_1792;
                    for (l_1748 = 0; (l_1748 >= 25); ++l_1748)
                    { /* block id: 768 */
                        struct S0 *l_1786 = &l_1644;
                        (*l_1786) = l_1785;
                        (**p_2887->g_133) = &l_1748;
                        (*p_2887->g_134) = &l_1775;
                        if (l_1633.f2)
                            goto lbl_1787;
                    }
                    l_1792 = (make_uint2(0xB4F9E29DL, (safe_unary_minus_func_uint16_t_u((+(((*l_1611) & l_1775) == (safe_mod_func_uint8_t_u_u(p_37.f6, (0x2858D321L || make_int3(l_1791.w, l_1791.w, l_1791.w).x)))))))).x , ((*l_1793) = ((*l_1611) , l_1792)));
                    l_1799 = (((p_2887->g_212.x != ((*l_1797) = (safe_lshift_func_uint64_t_u_s(l_1756.x, make_long2((-1L), 0x5DE68A025993BAFFLL).y)))) | make_long1(l_1798.w).x) , (*p_38));
                }
            }
        }
        --l_1802;
    }
    return l_1805[0];
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_7 hip_const_11.f2 hip_const_11.f6 hip_const_11.f1 hip_const_12 hip_const_5 hip_const_11.f0 p_2887->g_133 p_2887->g_134 p_2887->g_631 p_2887->g_457 p_2887->g_426 p_2887->g_130 p_2887->g_93 hip_const_9 hip_const_13 p_2887->g_596.f1 p_2887->g_102 p_2887->g_395 hip_const_14 p_2887->g_292 p_2887->g_628 p_2887->g_204 p_2887->g_919 p_2887->g_978 p_2887->g_982 p_2887->g_276 p_2887->g_801 p_2887->g_998 hip_const_10.f6 p_2887->g_364 hip_const_10 hip_const_11 hip_const_4 p_2887->g_320 p_2887->g_888 hip_const_1 p_2887->g_617 hip_const_6 p_2887->g_857 p_2887->g_305 p_2887->g_505 p_2887->g_1199 p_2887->g_634 p_2887->g_1231 p_2887->g_1249 p_2887->g_1280 p_2887->g_425 p_2887->g_1310 p_2887->g_1313 p_2887->g_15 p_2887->g_569 p_2887->g_527 p_2887->g_570 p_2887->g_1410 p_2887->g_888.f0 p_2887->g_1518 p_2887->g_596.f0 p_2887->g_616 p_2887->g_1560
 * writes: p_2887->g_86 p_2887->g_93 p_2887->g_102 p_2887->g_133 p_2887->g_426 p_2887->g_130 p_2887->g_596.f1 p_2887->g_592 p_2887->g_582 p_2887->g_628 p_2887->g_204 p_2887->g_276 p_2887->g_998 p_2887->g_364 p_2887->g_978 p_2887->g_982 p_2887->g_919 p_2887->g_731 p_2887->g_569 p_2887->g_425 p_2887->g_857 p_2887->g_1410 p_2887->g_596.f0 p_2887->g_801 p_2887->g_616 p_2887->g_1561 p_2887->g_888.f0
 */
__device__ int8_t  func_39(uint16_t  p_40, struct S1 * p_41, struct S1 * p_42, struct S0  p_43, int64_t  p_44, struct S4 * p_2887)
{ /* block id: 2 */
    ulong2 l_67 = make_ulong2(18446744073709551615UL, 18446744073709551615UL);
    int32_t l_68[2][9][6] = {{{(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}}, {{(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}, {(-7L), 0L, 7L, 0x3F0CD8B2L, 0x3F0CD8B2L, 7L}}};
    struct S1 *l_71 = &hip_const_11;
    struct S1 **l_72 = &l_71;
    struct S1 *l_742[5] = {&hip_const_5[0], &hip_const_11, &hip_const_5[0], &hip_const_11, &hip_const_5[0]};
    uint8_t l_1319 = 2UL;
    int16_t l_1348 = 0xB9F9L;
    struct S1 l_1351 = {26,12194,20137,5UL,936,-63,403,-0,1};
    __shared__ uint16_t l_1396;
    l_1396 = 0x7C05L;
    uint16_t l_1423 = 5UL;
    union U3 *l_1459 = &p_2887->g_596;
    union U3 ***l_1467 = nullptr;
    int64_t l_1485 = 0xDF32E040432B6B37LL;
    __shared__ int16_t l_1491;
    l_1491 = 0L;
    int32_t *l_1498 = nullptr;
    __shared__ uint32_t l_1501;
    l_1501 = 0x1DE88A02L;
    long2 l_1557 = make_long2((-7L), 0x11DAC75F94E482A9LL);
    int16_t l_1587 = 0x9313L;
    int32_t l_1588 = 0xF43E7909L;
    uint32_t l_1589 = 0xE3E5F7FDL;
    int i, j, k;
    if (((p_41 = func_51((func_57(hip_const_7[0][5][3], ((*l_72) = func_61(&hip_const_5[0], ((*l_72) = (((l_68[1][1][2] = make_ulong1(l_67.y).x) > (safe_mod_func_int16_t_s_s(p_43.f1, 0x0D6BL))) , l_71)), &hip_const_5[0], &hip_const_11, (hip_const_11.f2 , p_41), p_2887)), p_2887->g_631.y, p_2887) , (*l_72)), l_67.x, l_742[1], p_42, p_43.f5, p_2887)) != p_2887->g_1313[6][3]))
    { /* block id: 548 */
        int32_t *l_1314 = &hip_const_13;
        int32_t *l_1315 = nullptr;
        int32_t *l_1316 = nullptr;
        int32_t *l_1317 = nullptr;
        int32_t *l_1318[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
        union U2 l_1324 = {-6L};
        union U2 *l_1325 = &hip_const_1[0];
        union U2 *l_1326 = &l_1324;
        uint64_t ***l_1329 = &p_2887->g_479;
        union U3 l_1330 = {0x5FDC298FL};
        __shared__ int64_t *l_1341;
        l_1341 = &hip_const_15;
        int64_t *l_1342 = nullptr;
        int64_t *l_1343 = nullptr;
        int64_t *l_1344 = &hip_const_8;
        int64_t *l_1345 = nullptr;
        int64_t *l_1346 = nullptr;
        int64_t *l_1347[5][5] = {{nullptr, &hip_const_15, nullptr, &hip_const_15, nullptr}, {nullptr, &hip_const_15, nullptr, &hip_const_15, nullptr}, {nullptr, &hip_const_15, nullptr, &hip_const_15, nullptr}, {nullptr, &hip_const_15, nullptr, &hip_const_15, nullptr}, {nullptr, &hip_const_15, nullptr, &hip_const_15, nullptr}};
        int8_t *l_1349 = &l_1324.f0;
        int i, j;
        --l_1319;
        p_43.f8 = (safe_rshift_func_uint32_t_u_s(make_uint4(((((*p_2887->g_130) , ((*l_1326) = l_1324)) , (safe_mul_func_uint8_t_u_u((nullptr == l_1329), (l_1330 , (p_43.f1 < (safe_mod_func_int8_t_s_s(((*l_1349) ^= (p_43.f1 != (make_short2(((l_1348 = (safe_add_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u(((((safe_sub_func_uint32_t_u_u((p_2887->g_15.x ^ (safe_sub_func_int16_t_s_s(p_2887->g_426, p_2887->g_569.x))), (*p_2887->g_292))) == p_43.f5) , l_1315) != (*p_2887->g_134)), l_67.x)) != 0x295AB0612A3BF593LL), p_43.f0))) , p_2887->g_801.z), 0L).x <= hip_const_14))), hip_const_13))))))) || 0UL), 0xFADF8838L, p_43.f0, 0x1DC255E8L).w, l_67.y));
    }
    else
    { /* block id: 554 */
        uint8_t ***l_1354[1][1];
        int32_t l_1355 = 0x84707782L;
        int32_t l_1358[6];
        __shared__ uint1 l_1382;
        l_1382 = make_uint1(0x01067B10L);
        union U3 *l_1420 = &p_2887->g_888[0][0][2];
        int64_t l_1463 = 0xC61A3ADAC42F74CDLL;
        struct S0 l_1464 = {-4442,112,54,45,6,409,-248,713,-19990};
        union U3 **l_1470 = &l_1459;
        union U3 ***l_1469 = &l_1470;
        ushort2 l_1475 = make_ushort2(0xE7D0L, 0x04ABL);
        uint3 l_1476 = make_uint3(1UL, 0x71FDE5C1L, 1UL);
        int8_t *l_1481[10][9] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
        int32_t ***l_1564 = &p_2887->g_998[4];
        int32_t *l_1584 = &p_2887->g_888[0][0][2].f0;
        int32_t *l_1585[8][4][7] = {{{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}, {{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}, {{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}, {{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}, {{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}, {{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}, {{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}, {{&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}, {&l_1355, nullptr, nullptr, &p_2887->g_888[0][0][2].f0, nullptr, &l_1358[1], nullptr}}};
        int32_t l_1586 = 0xA0333802L;
        int i, j, k;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 1; j++)
                l_1354[i][j] = &p_2887->g_1310;
        }
        for (int i = 0; i < 6; i++)
            l_1358[i] = 0x82CF2947L;
        for (p_2887->g_204 = 1; (p_2887->g_204 <= 4); p_2887->g_204 += 1)
        { /* block id: 557 */
            struct S1 l_1350[10] = {{238,30116,15213,0x69EDL,459,-42,-2540,2,0}, {244,12203,21238,0xE4F5L,101,-9,-5352,0,-0}, {91,11351,15271,65529UL,499,-21,-150,0,-1}, {91,11351,15271,65529UL,499,-21,-150,0,-1}, {244,12203,21238,0xE4F5L,101,-9,-5352,0,-0}, {238,30116,15213,0x69EDL,459,-42,-2540,2,0}, {244,12203,21238,0xE4F5L,101,-9,-5352,0,-0}, {91,11351,15271,65529UL,499,-21,-150,0,-1}, {91,11351,15271,65529UL,499,-21,-150,0,-1}, {244,12203,21238,0xE4F5L,101,-9,-5352,0,-0}};
            struct S0 l_1366 = {-28508,210,59,-205,5,-920,-97,1167,41703};
            union U2 *l_1371 = nullptr;
            union U2 **l_1370 = &l_1371;
            __shared__ union U2 ***l_1369;
            l_1369 = &l_1370;
            uint2 l_1377 = make_uint2(1UL, 4294967287UL);
            int64_t *l_1407 = &hip_const_15;
            uint64_t l_1441 = 0x67E791EFEBB632CFLL;
            struct S0 *l_1456 = &hip_const_10;
            uint64_t l_1462 = 0x2C6C5F04F10A2C46LL;
            int8_t *l_1484 = nullptr;
            uint64_t l_1493 = 0x9473AEDB482785A9LL;
            uint8_t l_1539 = 0UL;
            uint32_t l_1543 = 1UL;
            int4 l_1580 = make_int4(8L, 0L, 8L, 0L);
            uint16_t l_1581 = 0UL;
            int i;
            for (p_2887->g_102 = 4; (p_2887->g_102 >= 0); p_2887->g_102 -= 1)
            { /* block id: 560 */
                uint8_t l_1360 = 255UL;
                l_1351 = l_1350[8];
                for (l_1319 = 0; (l_1319 <= 4); l_1319 += 1)
                { /* block id: 564 */
                    uint8_t ***l_1353[7] = {&p_2887->g_1310, &p_2887->g_1310, &p_2887->g_1310, &p_2887->g_1310, &p_2887->g_1310, &p_2887->g_1310, &p_2887->g_1310};
                    __shared__ uint8_t ****l_1352;
                    l_1352 = &l_1353[2];
                    int32_t l_1359 = 1L;
                    int i;
                    l_1354[0][0] = ((*l_1352) = nullptr);
                    for (p_44 = 4; (p_44 >= 0); p_44 -= 1)
                    { /* block id: 569 */
                        int32_t *l_1356[9] = {&p_2887->g_888[0][0][2].f0, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, &p_2887->g_888[0][0][2].f0, nullptr, &p_2887->g_888[0][0][2].f0, &p_2887->g_888[0][0][2].f0, nullptr};
                        int1 l_1357 = make_int1((-1L));
                        int i;
                        if (l_1355)
                            break;
                        ++l_1360;
                        return l_1351.f7;
                    }
                }
            }
            for (l_1351.f3 = 0; (l_1351.f3 <= 4); l_1351.f3 += 1)
            { /* block id: 578 */
                struct S0 *l_1363 = &hip_const_10;
                struct S0 *l_1364 = &hip_const_10;
                struct S0 *l_1365[4] = {&hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10};
                int32_t l_1383 = 1L;
                uint1 l_1388 = make_uint1(4294967295UL);
                uint64_t *l_1389 = nullptr;
                uint64_t *l_1390 = nullptr;
                uint64_t *l_1391 = nullptr;
                uint64_t *l_1392 = nullptr;
                __shared__ uint64_t *l_1393;
                l_1393 = nullptr;
                int32_t l_1395 = 0x58CB6F9CL;
                uint64_t ****l_1402 = nullptr;
                __shared__ uint64_t *****l_1401;
                l_1401 = &l_1402;
                __shared__ ushort4 l_1416;
                l_1416 = make_ushort4(0x8947L, 0x573BL, 0x8947L, 0x573BL);
                __shared__ int32_t *l_1419;
                l_1419 = nullptr;
                int i;
                l_1366 = p_43;
                (**p_2887->g_133) = &l_1355;
                if ((p_44 && (((((p_2887->g_857.y = ((safe_add_func_uint8_t_u_u((l_1369 == nullptr), (l_1355 == ((*p_42) , ((safe_mod_func_uint8_t_u_u((~make_uchar3(p_2887->g_1374.x, p_2887->g_1374.x, p_2887->g_1374.x).z), (safe_sub_func_uint32_t_u_u(make_uint4(l_1377.x, l_1377.x, l_1377.x, l_1377.x).x, (safe_add_func_uint32_t_u_u(((safe_mul(make_uint2(l_1382.x, l_1382.x), make_uint2(4294967287UL, (*p_2887->g_395))))).x, l_1383)))))) <= (safe_div_func_uint32_t_u_u(((-9L) | make_uchar4(246UL, 253UL, 0xB8L, (((safe_rshift_func_uint32_t_u_s(make_uint4(l_1388.x, l_1388.x, l_1388.x, l_1388.x).z, 26)) > (l_1383 != 4294967295UL)) != (*p_2887->g_395))).z), 0x483F480EL))))))) , 0xAAFB675415997537LL)) <= p_2887->g_527.x) <= l_1358[4]) > p_43.f0) && p_44)))
                { /* block id: 582 */
                    int32_t *l_1394[3];
                    uint64_t ****l_1400 = &p_2887->g_478;
                    __shared__ uint64_t *****l_1399;
                    l_1399 = &l_1400;
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_1394[i] = nullptr;
                    if ((***p_2887->g_133))
                        break;
                    l_1396--;
                    l_1401 = l_1399;
                }
                else
                { /* block id: 586 */
                    union U2 ****l_1413 = &p_2887->g_1410[2];
                    int32_t l_1422[9] = {0xF637B3D9L, 0x4AE5CC8DL, 0xF637B3D9L, 0x4AE5CC8DL, 0xF637B3D9L, 0x4AE5CC8DL, 0xF637B3D9L, 0x4AE5CC8DL, 0xF637B3D9L};
                    int i;
                    if ((safe_mul_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((l_1407 != &hip_const_15), p_2887->g_570.y)), ((safe_mul_func_int32_t_s_s(((((*l_1413) = p_2887->g_1410[1]) == nullptr) < ((((*p_2887->g_93) = (*p_2887->g_93)) || (safe_lshift_func_uint8_t_u_s(1UL, 0))) <= make_ushort4(l_1416.x, l_1416.x, l_1416.x, l_1416.x).y)), ((0x0AL > ((safe_sub_func_uint32_t_u_u(p_43.f5, (-1L))) & hip_const_10.f0)) > p_43.f5))) >= l_1382.x))))
                    { /* block id: 589 */
                        union U3 **l_1421 = &l_1420;
                        l_1419 = &l_1358[4];
                        if (l_1377.x)
                            break;
                        (*l_1419) = (!(***p_2887->g_133));
                        (*l_1421) = l_1420;
                    }
                    else
                    { /* block id: 594 */
                        int32_t *l_1426 = &l_68[1][0][1];
                        int32_t *l_1427 = &p_2887->g_888[0][0][2].f0;
                        __shared__ int32_t *l_1428;
                        l_1428 = &l_1422[8];
                        int32_t *l_1429 = nullptr;
                        __shared__ int32_t *l_1430;
                        l_1430 = &l_1358[3];
                        int32_t *l_1431 = &l_1383;
                        int32_t *l_1432 = &l_1422[0];
                        int32_t *l_1433 = &l_1355;
                        int32_t *l_1434 = nullptr;
                        int32_t *l_1435 = nullptr;
                        int32_t *l_1436 = &l_1422[0];
                        int32_t *l_1437 = &hip_const_9;
                        int32_t *l_1438 = &l_1383;
                        int32_t *l_1439 = &p_2887->g_888[0][0][2].f0;
                        int32_t *l_1440[9] = {&l_68[1][1][2], &l_1383, &l_68[1][1][2], &l_1383, &l_68[1][1][2], &l_1383, &l_68[1][1][2], &l_1383, &l_68[1][1][2]};
                        int i;
                        l_1423++;
                        l_1441++;
                    }
                }
                for (p_2887->g_426 = 3; (p_2887->g_426 >= 0); p_2887->g_426 -= 1)
                { /* block id: 601 */
                    if (p_43.f7)
                        break;
                }
            }
            for (p_2887->g_596.f1 = 2; (p_2887->g_596.f1 <= 9); p_2887->g_596.f1 += 1)
            { /* block id: 607 */
                uint32_t l_1444[8] = {0x47E199C0L, 0x9F2E8293L, 0x47E199C0L, 0x9F2E8293L, 0x47E199C0L, 0x9F2E8293L, 0x47E199C0L, 0x9F2E8293L};
                union U3 **l_1445[1][4][5] = {{{&l_1420, &l_1420, &p_2887->g_582, &p_2887->g_582, &l_1420}, {&l_1420, &l_1420, &p_2887->g_582, &p_2887->g_582, &l_1420}, {&l_1420, &l_1420, &p_2887->g_582, &p_2887->g_582, &l_1420}, {&l_1420, &l_1420, &p_2887->g_582, &p_2887->g_582, &l_1420}}};
                __shared__ int32_t l_1492;
                l_1492 = (-10L);
                union U2 *l_1497 = nullptr;
                int i, j, k;
                l_1444[1] = (p_2887->g_982.w > make_char2(0x99L, 0x98L).x);
                p_2887->g_582 = &p_2887->g_888[0][7][2];
                for (l_1396 = 1; (l_1396 <= 4); l_1396 += 1)
                { /* block id: 612 */
                    int64_t *l_1457 = nullptr;
                    int64_t *l_1458[2];
                    __shared__ int8_t *l_1460;
                    l_1460 = nullptr;
                    int8_t *l_1461[8] = {nullptr, &hip_const_1[1].f0, nullptr, &hip_const_1[1].f0, nullptr, &hip_const_1[1].f0, nullptr, &hip_const_1[1].f0};
                    __shared__ int32_t *l_1486;
                    l_1486 = nullptr;
                    int32_t *l_1487 = &l_1358[1];
                    int32_t *l_1488 = nullptr;
                    int32_t *l_1489 = nullptr;
                    int32_t *l_1490[8] = {nullptr, nullptr, &l_68[1][7][5], nullptr, nullptr, &l_68[1][7][5], nullptr, nullptr};
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_1458[i] = &hip_const_15;
                    l_1358[2] = ((safe_rshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((l_1366.f1 != (((((safe_mod_func_uint64_t_u_u(((l_1444[1] > (*p_2887->g_395)) & ((safe_lshift_func_uint8_t_u_s(251UL, (l_1462 ^= (safe_rshift_func_uint8_t_u_u(make_uchar1(((((p_44 = ((l_1350[8] = l_1350[p_2887->g_596.f1]) , (&l_1366 == (l_1456 = nullptr)))) ^ ((l_1459 == (p_2887->g_582 = ((hip_const_10 , p_2887->g_425.x) , &p_2887->g_596))) | (*p_2887->g_395))) == p_2887->g_616.x) & l_1358[1])).x, p_43.f8))))) <= 0L)), l_1463)) < p_40) != 0xF18A96585BE851C3LL) == p_2887->g_1249.x) != 0UL)), (*p_2887->g_395))), 11)) >= 0x1960828BDA59FD70LL);
                    for (l_1319 = 0; (l_1319 <= 0); l_1319 += 1)
                    { /* block id: 621 */
                        union U3 ****l_1468 = &l_1467;
                        int16_t *l_1471 = &l_1348;
                        int16_t *l_1472 = nullptr;
                        int16_t *l_1473[7][4] = {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}};
                        int i, j, k;
                        l_1464 = p_43;
                        l_1355 = ((((*p_2887->g_395) || (((65531UL & (l_1350[8].f5 |= ((*l_1471) = (safe_rshift_func_int8_t_s_s(((((*l_1468) = l_1467) == l_1469) != (*p_2887->g_292)), 7))))) || (l_1366.f8 = (safe_unary_minus_func_uint16_t_u(make_ushort4(l_1475.x, l_1475.x, l_1475.x, l_1475.x).y)))) != (p_43.f8 || (((make_uint1(l_1476.z).x , ((((((((safe_sub(make_ulong1((((((safe_mod_func_int32_t_s_s(((p_2887->g_888[l_1319][l_1319][(l_1319 + 2)] , l_1481[0][5]) == ((safe_mul_func_int16_t_s_s(p_2887->g_15.x, hip_const_7[0][7][0])) , l_1484)), p_2887->g_888[l_1319][l_1319][(l_1319 + 2)].f0)) == 0x8C0BL) , 0x72L) ^ l_1444[7]) > 7L)), make_ulong1(18446744073709551615UL)))) & make_ulong1(0UL))) ^ make_ulong1(0x6E21CB30CB11A97BLL))).x ^ l_1444[0]) || l_1485)) , p_43.f1) || l_1350[p_2887->g_596.f1].f2)))) < p_2887->g_888[l_1319][l_1319][(l_1319 + 2)].f0) , 0xCC510B11L);
                    }
                    (**p_2887->g_133) = (**p_2887->g_133);
                    ++l_1493;
                    for (l_1463 = 0; (l_1463 <= 2); l_1463 += 1)
                    { /* block id: 633 */
                        int32_t *l_1496 = nullptr;
                        (**p_2887->g_133) = ((*p_42) , l_1496);
                        (*l_1370) = l_1497;
                        l_1464 = hip_const_10;
                    }
                }
            }
            for (l_1348 = 0; (l_1348 <= 4); l_1348 += 1)
            { /* block id: 642 */
                int32_t l_1510 = 9L;
                int32_t l_1511[6][9] = {{7L, 1L, 0x62079B31L, (-1L), (-3L), 0x84560064L, (-1L), 0L, 0x62079B31L}, {7L, 1L, 0x62079B31L, (-1L), (-3L), 0x84560064L, (-1L), 0L, 0x62079B31L}, {7L, 1L, 0x62079B31L, (-1L), (-3L), 0x84560064L, (-1L), 0L, 0x62079B31L}, {7L, 1L, 0x62079B31L, (-1L), (-3L), 0x84560064L, (-1L), 0L, 0x62079B31L}, {7L, 1L, 0x62079B31L, (-1L), (-3L), 0x84560064L, (-1L), 0L, 0x62079B31L}, {7L, 1L, 0x62079B31L, (-1L), (-3L), 0x84560064L, (-1L), 0L, 0x62079B31L}};
                uint1 l_1548 = make_uint1(0x559EB9C0L);
                __shared__ union U2 l_1558;
                l_1558 = {0xCBL};
                __shared__ union U2 l_1559;
                l_1559 = {-5L};
                uint64_t *l_1565[8];
                uint32_t *l_1566 = &hip_const_4;
                uint32_t *l_1567 = nullptr;
                uint32_t *l_1568 = &hip_const_14;
                int32_t *l_1569 = &l_1355;
                int32_t *l_1570 = &l_1358[2];
                int32_t *l_1571 = &l_1510;
                __shared__ int32_t *l_1572;
                l_1572 = &l_1511[2][1];
                int32_t *l_1573 = &hip_const_13;
                int32_t *l_1574 = &hip_const_13;
                int32_t *l_1575 = &l_1358[3];
                __shared__ int32_t *l_1576;
                l_1576 = nullptr;
                int32_t *l_1577 = &l_1511[0][2];
                int32_t *l_1578 = &l_1510;
                int32_t *l_1579[3];
                int i, j;
                for (int i = 0; i < 8; i++)
                    l_1565[i] = &l_1493;
                for (int i = 0; i < 3; i++)
                    l_1579[i] = &l_1511[0][2];
                if (make_int2(0xA526B684L, l_1358[1]).x)
                { /* block id: 643 */
                    uint32_t l_1512 = 18446744073709551614UL;
                    int32_t l_1535 = 0x6F2CA5B0L;
                    if ((nullptr == l_1498))
                    { /* block id: 644 */
                        __shared__ int32_t *l_1499;
                        l_1499 = &p_2887->g_596.f0;
                        int32_t *l_1500[6];
                        int i;
                        for (int i = 0; i < 6; i++)
                            l_1500[i] = &p_2887->g_888[0][0][2].f0;
                        l_1501--;
                    }
                    else
                    { /* block id: 646 */
                        int32_t *l_1504 = &hip_const_9;
                        __shared__ int32_t *l_1505;
                        l_1505 = nullptr;
                        int32_t *l_1506 = &l_68[0][7][3];
                        __shared__ int32_t *l_1507;
                        l_1507 = &hip_const_9;
                        int32_t *l_1508 = nullptr;
                        int32_t *l_1509[3];
                        int i;
                        for (int i = 0; i < 3; i++)
                            l_1509[i] = &hip_const_13;
                        --l_1512;
                        (*l_1470) = &p_2887->g_888[0][0][1];
                    }
                    for (p_2887->g_102 = 0; (p_2887->g_102 <= 4); p_2887->g_102 += 1)
                    { /* block id: 652 */
                        struct S0 **l_1515 = &l_1456;
                        (*l_1515) = &l_1366;
                        l_1350[8].f5 |= (0xF3FCEB6CL ^ (safe_div_func_int64_t_s_s(l_1350[8].f0, make_long2(p_2887->g_1518.x, p_2887->g_1518.x).x)));
                    }
                    for (p_2887->g_596.f0 = 0; (p_2887->g_596.f0 <= 4); p_2887->g_596.f0 += 1)
                    { /* block id: 658 */
                        uint64_t l_1519 = 0x5093B3B69F5F5AECLL;
                        // attempting a hip shared for loop
                        __shared__ uint32_t *l_1534[8][1][9];
                        for (int i = 0; i < 8; i++)
                        {
                            for (int j = 0; j < 1; j++)
                            {
                                for (int k = 0; k < 9; k++)
                                    l_1534[i][j][k] = nullptr;
                            }
                        }
                        int32_t l_1536[5];
                        int i, j, k;
                        for (int i = 0; i < 5; i++)
                            l_1536[i] = 0xD8A25C45L;
                        l_1535 = (l_1519 > (safe_div_func_uint32_t_u_u((((safe_add_func_int8_t_s_s(((safe_lshift_func_uint64_t_u_u(p_43.f0, p_40)) <= (safe_lshift_func_uint16_t_u_u((p_44 , 0x9F99L), (safe_lshift_func_uint8_t_u_s((l_68[1][1][2] |= 0x90L), (&p_2887->g_998[4] != nullptr)))))), ((safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s((+(((--p_2887->g_801.y) & p_40) ^ p_43.f4)), p_43.f6)), p_43.f1)) != l_1511[0][8]))) <= p_43.f8) || 0xBC37L), l_1539)));
                        if (l_1351.f1)
                            break;
                    }
                    if (((p_2887->g_616.x ^= (p_2887->g_1280.y != (make_long2(0xB8145D256A732997LL, 0L).y == 0L))) & 1UL))
                    { /* block id: 665 */
                        struct S0 l_1540 = {12542,46,27,203,9,-139,32,878,-41305};
                        struct S0 *l_1541 = &l_1540;
                        (*l_1541) = l_1540;
                        (*l_1541) = (*l_1541);
                    }
                    else
                    { /* block id: 668 */
                        int32_t *l_1542[5][9][5] = {{{&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}}, {{&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}}, {{&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}}, {{&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}}, {{&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}, {&l_68[1][4][2], nullptr, &l_1510, nullptr, nullptr}}};
                        int i, j, k;
                        p_43.f5 = p_43.f4;
                        l_1543--;
                        (*p_2887->g_134) = (*p_2887->g_134);
                    }
                }
                else
                { /* block id: 673 */
                    for (l_1319 = 0; (l_1319 <= 4); l_1319 += 1)
                    { /* block id: 676 */
                        p_43.f3 |= 0x6F453D1BL;
                    }
                }
                p_43.f8 |= (safe_lshift_func_uint32_t_u_u(((make_uint1(0x40ED4AAAL) ^ make_uint1(l_1548.x))).x, (safe_add_func_int64_t_s_s(((((p_43.f7 = (p_43.f2 = ((safe_div_func_uint16_t_u_u((((safe_mod_func_int64_t_s_s((safe_div_func_uint16_t_u_u(make_ushort3(((l_1557.y = 0xCFA189310837511BLL) & (p_43.f4 != (l_1366.f8 = ((make_uint1((((l_1559 = l_1558) , p_2887->g_1560) == nullptr)).x , &l_1498) != ((*l_1564) = ((0xFBDB5291C5B53BF0LL ^ ((*p_42) , (((make_uint1((safe_mul_func_uint8_t_u_u((&p_2887->g_998[4] != l_1564), 0x6EL))).x && l_1476.y) ^ p_40) , p_43.f1))) , nullptr)))))), 0x3A4AL, 0x7732L).y, l_1358[1])), p_43.f2)) , 1L) <= p_43.f3), hip_const_10.f5)) , 0x56EF4DF4L))) | p_43.f6) || 0UL) <= l_1511[0][5]), 0xC8FD240A852D367BLL))));
                ++l_1581;
                return (*l_1574);
            }
        }
        l_1589--;
        for (l_1463 = 0; (l_1463 <= 0); ++l_1463)
        { /* block id: 694 */
            int8_t l_1594 = 0L;
            if (l_1594)
                break;
            (*p_2887->g_1560) = ((*l_1469) = nullptr);
            (*p_2887->g_134) = (*p_2887->g_134);
            (*l_1584) = (p_43.f5 <= ((-7L) | 0x6A90L));
        }
    }
    return p_43.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_2887->g_457 p_2887->g_426 p_2887->g_130 hip_const_5 p_2887->g_134 p_2887->g_93 hip_const_9 hip_const_13 p_2887->g_596.f1 p_2887->g_102 p_2887->g_133 p_2887->g_395 hip_const_14 p_2887->g_292 p_2887->g_628 p_2887->g_204 p_2887->g_919 p_2887->g_978 p_2887->g_982 p_2887->g_276 p_2887->g_801 p_2887->g_998 hip_const_10.f6 p_2887->g_631 hip_const_7 p_2887->g_364 hip_const_10 hip_const_11 hip_const_4 p_2887->g_320 p_2887->g_888 hip_const_1 p_2887->g_617 hip_const_6 p_2887->g_857 p_2887->g_305 p_2887->g_505 p_2887->g_1199 p_2887->g_634 p_2887->g_1231 p_2887->g_1249 p_2887->g_1280 p_2887->g_425 p_2887->g_1310
 * writes: p_2887->g_426 p_2887->g_130 p_2887->g_596.f1 p_2887->g_582 p_2887->g_102 p_2887->g_93 p_2887->g_86 p_2887->g_628 p_2887->g_204 p_2887->g_276 p_2887->g_998 p_2887->g_364 p_2887->g_978 p_2887->g_982 p_2887->g_919 p_2887->g_731 p_2887->g_569 p_2887->g_425 p_2887->g_592
 */
__device__ struct S1 * func_51(struct S1 * p_52, uint32_t  p_53, struct S1 * p_54, struct S1 * p_55, uint16_t  p_56, struct S4 * p_2887)
{ /* block id: 302 */
    __shared__ union U2 l_745;
    l_745 = {0x88L};
    struct S0 l_747 = {-22075,202,48,300,4,547,-123,1093,26723};
    struct S1 *l_750 = &hip_const_5[0];
    int32_t l_765 = 0xB310FD1DL;
    int32_t l_766 = 0xB81D140AL;
    int32_t l_767 = 1L;
    __shared__ int32_t l_768;
    l_768 = 0xDCA21FD4L;
    int32_t l_769 = 0x72BB207CL;
    int32_t l_770 = 0L;
    __shared__ union U3 l_841;
    l_841 = {-1L};
    uint16_t *l_863 = &l_745.f1;
    int2 l_864 = make_int2(0x95C1B8FBL, 0xEAF57034L);
    // attempting a hip shared for loop
    __shared__ uint32_t l_866[2];
    for (int i = 0; i < 2; i++)
        l_866[i] = 0x404DED6AL;
    int32_t *l_1137[2];
    uint16_t l_1138 = 9UL;
    ushort3 l_1196 = make_ushort3(65532UL, 0xE821L, 65532UL);
    short4 l_1208 = make_short4((-4L), 0x6776L, (-4L), 0x6776L);
    struct S1 ***l_1286 = nullptr;
    uint8_t l_1289 = 0xDAL;
    int i;
    for (int i = 0; i < 2; i++)
        l_866[i] = 0x404DED6AL;
    for (int i = 0; i < 2; i++)
        l_1137[i] = &l_766;
    if ((0xD7L != p_2887->g_457[4]))
    { /* block id: 303 */
        struct S1 *l_746 = &hip_const_11;
        __shared__ struct S1 *l_748;
        l_748 = &hip_const_5[0];
        struct S1 l_754 = {111,11804,3842,0x419EL,427,46,5101,-2,0};
        __shared__ int2 l_758;
        l_758 = make_int2(0x02381A0EL, 4L);
        int32_t *l_759 = &hip_const_13;
        __shared__ int32_t *l_760;
        l_760 = nullptr;
        int32_t *l_761 = nullptr;
        int32_t *l_762 = &p_2887->g_596.f0;
        int32_t *l_763 = &p_2887->g_102;
        int32_t *l_764[3];
        uint64_t l_771 = 0x913D62F8722F524FLL;
        int i;
        for (int i = 0; i < 3; i++)
            l_764[i] = &p_2887->g_596.f0;
        for (p_2887->g_426 = 0; (p_2887->g_426 <= 27); p_2887->g_426++)
        { /* block id: 306 */
            struct S1 **l_749 = &p_2887->g_130;
            struct S1 *l_751 = &hip_const_11;
            struct S1 *l_752 = &hip_const_11;
            struct S1 *l_753 = &hip_const_11;
            (*l_749) = (*l_749);
            l_754 = (*l_750);
        }
        for (p_53 = 5; (p_53 <= 47); p_53 = safe_add_func_int64_t_s_s(p_53, 5))
        { /* block id: 315 */
            // attempting a hip shared for loop
            __shared__ int32_t l_757[5][5][6];
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 5; j++)
                {
                    for (int k = 0; k < 6; k++)
                        l_757[i][j][k] = 0x85050DA7L;
                }
            }
            int i, j, k;
            l_758.y = l_757[1][1][0];
            if ((**p_2887->g_134))
                break;
            for (p_2887->g_596.f1 = 1; (p_2887->g_596.f1 <= 4); p_2887->g_596.f1 += 1)
            { /* block id: 320 */
                int i;
                if (p_2887->g_457[p_2887->g_596.f1])
                    break;
            }
        }
        l_771++;
    }
    else
    { /* block id: 325 */
        __shared__ struct S1 *l_774;
        l_774 = &hip_const_11;
        __shared__ long1 l_777;
        l_777 = make_long1(0x108FAA1B794C6422LL);
        int64_t *l_778 = nullptr;
        __shared__ int32_t l_791;
        l_791 = 0x1F153DC5L;
        uint3 l_802 = make_uint3(4294967295UL, 1UL, 4294967295UL);
        struct S1 ***l_810 = &p_2887->g_129[2][4][1];
        long1 l_820 = make_long1((-6L));
        // attempting a hip shared for loop
        __shared__ int32_t l_834[8];
        for (int i = 0; i < 8; i++)
            l_834[i] = 0x7088A3CCL;
        uint64_t l_938 = 0x4B8D701D827F6185LL;
        union U2 *l_940 = &hip_const_1[1];
        union U2 **l_939[5][2][3];
        char3 l_991 = make_char3(0xF0L, 0L, 0xF0L);
        int64_t l_1009 = 1L;
        int8_t l_1053 = 0xE6L;
        union U3 **l_1078 = &p_2887->g_582;
        uint64_t ***l_1081[3][9] = {{&p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479}, {&p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479}, {&p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479, &p_2887->g_479}};
        int i, j, k;
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 2; j++)
            {
                for (int k = 0; k < 3; k++)
                    l_939[i][j][k] = &l_940;
            }
        }
lbl_790:
        for (l_770 = 2; (l_770 >= 0); l_770 -= 1)
        { /* block id: 328 */
            return l_774;
        }
        if (((((safe_div(make_int3((-4L), (-7L), 0xD7B5322CL), make_int3(((p_2887->g_592.x = make_long2(l_777.x, l_777.x).x) ^ (safe_lshift_func_uint16_t_u_s((2UL >= 7UL), 9))), p_56, 0xE010F881L)))) ^ make_int3(1L, 0L, (-1L)))).y)
        { /* block id: 332 */
            int8_t l_795 = 7L;
            int4 l_796 = make_int4(0x76ABCA99L, (-1L), 0x76ABCA99L, (-1L));
            struct S1 ***l_811 = nullptr;
            int8_t l_823 = (-10L);
            int8_t l_837[8][6][5] = {{{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}, {{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}, {{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}, {{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}, {{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}, {{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}, {{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}, {{0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}, {0L, 0L, (-9L), 4L, 4L}}};
            int32_t *l_847 = &l_841.f0;
            __shared__ uchar3 l_850;
            l_850 = make_uchar3(255UL, 0xDDL, 255UL);
            __shared__ uint32_t l_880;
            l_880 = 0x759E3652L;
            uchar1 l_881 = make_uchar1(0x29L);
            union U3 l_935 = {-1L};
            __shared__ int32_t l_965;
            l_965 = 0xB1FC6176L;
            uint8_t l_966 = 0xDFL;
            // attempting a hip shared for loop
            __shared__ uint64_t l_971[4][9][6];
            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    for (int k = 0; k < 6; k++)
                        l_971[i][j][k] = 18446744073709551615UL;
                }
            }
            long4 l_979 = make_long4(0L, 0L, 0L, 0L);
            int32_t *l_997 = nullptr;
            int32_t **l_996 = &l_997;
            int32_t l_1007 = 0x7E3FA656L;
            struct S0 l_1042 = {-5901,214,45,-227,8,-382,-241,427,20509};
            uint8_t l_1044 = 0x6CL;
            uint64_t l_1054 = 0xDCC5C8F867E49B4CLL;
            __shared__ int32_t l_1065;
            l_1065 = 0x9E6ACC9BL;
            __shared__ uint64_t l_1104;
            l_1104 = 0xB8348B8275FC158ELL;
            long4 l_1105 = make_long4(1L, 0xF0DA002DD2BDC120LL, 1L, 0xF0DA002DD2BDC120LL);
            uint8_t l_1106 = 6UL;
            ushort4 l_1107 = make_ushort4(0xA5D7L, 65535UL, 0xA5D7L, 65535UL);
            int i, j, k;
            for (p_2887->g_596.f1 = 0; (p_2887->g_596.f1 == 17); p_2887->g_596.f1++)
            { /* block id: 335 */
                uint16_t l_798 = 1UL;
                long2 l_821 = make_long2((-1L), (-1L));
                __shared__ int32_t l_830;
                l_830 = 0L;
                int32_t l_831 = 1L;
                int32_t l_833[6] = {0L, 0L, (-6L), 0L, 0L, (-6L)};
                int16_t l_835 = 0xCE31L;
                int8_t l_836 = (-4L);
                union U3 *l_842 = &p_2887->g_596;
                union U3 **l_843 = &p_2887->g_582;
                int32_t *l_844 = &l_766;
                int32_t *l_845 = &hip_const_13;
                int32_t *l_846 = &p_2887->g_102;
                int i;
                for (l_765 = 0; (l_765 > 26); l_765 = safe_add_func_uint32_t_u_u(l_765, 6))
                { /* block id: 338 */
                    int64_t l_794 = 0L;
                    __shared__ int32_t l_797;
                    l_797 = (-1L);
                    uint32_t l_827 = 0x05E0D330L;
                    int32_t *l_832[8][8] = {{&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}, {&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}, {&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}, {&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}, {&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}, {&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}, {&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}, {&hip_const_13, &l_767, &l_766, &l_767, &hip_const_13, &l_770, &hip_const_13, &l_767}};
                    uint16_t l_838 = 3UL;
                    int i, j;
                    for (l_745.f0 = 0; (l_745.f0 > 26); l_745.f0 = safe_add_func_int32_t_s_s(l_745.f0, 4))
                    { /* block id: 341 */
                        return p_52;
                    }
                    if ((safe_add_func_uint16_t_u_u((!(safe_unary_minus_func_int16_t_s(p_53))), p_56)))
                    { /* block id: 344 */
                        __shared__ int32_t *l_792;
                        l_792 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_793[7][3][9];
                        for (int i = 0; i < 7; i++)
                        {
                            for (int j = 0; j < 3; j++)
                            {
                                for (int k = 0; k < 9; k++)
                                    l_793[i][j][k] = &p_2887->g_102;
                            }
                        }
                        long4 l_805 = make_long4(0x904252076C10F6BALL, 0xC2DE60D64E08A6A3LL, 0x904252076C10F6BALL, 0xC2DE60D64E08A6A3LL);
                        int16_t *l_812 = nullptr;
                        int16_t *l_813 = nullptr;
                        int16_t *l_814 = nullptr;
                        int16_t *l_815 = nullptr;
                        int16_t *l_816 = nullptr;
                        int16_t *l_817 = nullptr;
                        int8_t *l_822[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int i, j, k;
                        if (p_2887->g_426)
                            goto lbl_790;
                        l_798--;
                        l_791 |= (l_796.z = (((((make_uint3(p_2887->g_801.z, p_2887->g_801.z, p_2887->g_801.z) ^ make_uint3(l_802.y, l_802.y, l_802.y))) ^ ((((make_uint3(4294967295UL, 0xB3A00B93L, (safe_div_func_int16_t_s_s(((make_long4(l_805.y, l_805.y, l_805.y, l_805.y).y ^ hip_const_4) > (l_747.f3 |= (safe_mod_func_int32_t_s_s((((0xBE2DCB5689345B84LL && (safe_mul_func_uint64_t_u_u(p_2887->g_635.x, (((*p_2887->g_130) , (l_769 = (l_810 != ((*p_2887->g_395) , l_811)))) && ((safe_sub_func_int64_t_s_s(((!((make_long1(l_820.x) ^ make_long1(l_821.x))).x) | (p_2887->g_617.x = 0x6D6753C6AA137E56LL)), p_56)) , p_53))))) && 0x47L) || p_53), p_53)))), p_53))) & make_uint3(0xD47C253DL, 0xD47C253DL, 0xD47C253DL))) & make_uint3(4294967295UL, 4294967295UL, 4294967295UL))))).y <= l_747.f1));
                        l_823 = 0x0E6C4663L;
                    }
                    else
                    { /* block id: 353 */
                        int32_t *l_824 = &l_766;
                        __shared__ int32_t *l_825;
                        l_825 = &l_767;
                        int32_t *l_826 = nullptr;
                        --l_827;
                    }
                    l_838--;
                }
                if ((**p_2887->g_134))
                    continue;
                for (l_831 = 2; (l_831 >= 0); l_831 -= 1)
                { /* block id: 361 */
                    return p_55;
                }
                (*l_846) |= ((*l_844) = ((l_841 , l_842) != ((*l_843) = &l_841)));
            }
            (*l_847) = 9L;
            if (p_56)
            { /* block id: 369 */
                uint32_t l_858[2];
                int32_t l_872 = 0xA98D222BL;
                int32_t l_874 = 0xE17FACEAL;
                short3 l_882 = make_short3(0x926BL, 0x5455L, 0x926BL);
                short2 l_887 = make_short2(1L, 0xD4C4L);
                int64_t l_912 = 1L;
                int32_t l_951 = 0xB5002D28L;
                int32_t l_952[5][8][5] = {{{0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}}, {{0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}}, {{0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}}, {{0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}}, {{0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}, {0x2B3A1577L, 0xDD432855L, 0x2B1B5B50L, 0x8B40D7A8L, (-10L)}}};
                uint8_t l_953[5][1][1];
                int32_t *l_959 = nullptr;
                int32_t *l_960 = nullptr;
                int32_t *l_961 = &hip_const_13;
                int32_t *l_962 = &l_952[0][6][1];
                int32_t *l_963 = &l_770;
                int32_t *l_964[1][3][8] = {{{&hip_const_9, nullptr, &l_765, nullptr, &hip_const_9, nullptr, &l_765, nullptr}, {&hip_const_9, nullptr, &l_765, nullptr, &hip_const_9, nullptr, &l_765, nullptr}, {&hip_const_9, nullptr, &l_765, nullptr, &hip_const_9, nullptr, &l_765, nullptr}}};
                int i, j, k;
                for (int i = 0; i < 2; i++)
                    l_858[i] = 0x2CC729EFL;
                for (int i = 0; i < 5; i++)
                {
                    for (int j = 0; j < 1; j++)
                    {
                        for (int k = 0; k < 1; k++)
                            l_953[i][j][k] = 0xE1L;
                    }
                }
                for (l_841.f0 = 0; (l_841.f0 <= 17); ++l_841.f0)
                { /* block id: 372 */
                    __shared__ int16_t *l_859;
                    l_859 = nullptr;
                    int16_t *l_860[6][4][7] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                    int64_t *l_865[7][3][1] = {{{&hip_const_15}, {&hip_const_15}, {&hip_const_15}}, {{&hip_const_15}, {&hip_const_15}, {&hip_const_15}}, {{&hip_const_15}, {&hip_const_15}, {&hip_const_15}}, {{&hip_const_15}, {&hip_const_15}, {&hip_const_15}}, {{&hip_const_15}, {&hip_const_15}, {&hip_const_15}}, {{&hip_const_15}, {&hip_const_15}, {&hip_const_15}}, {{&hip_const_15}, {&hip_const_15}, {&hip_const_15}}};
                    uint16_t *l_867 = &hip_const_1[1].f1;
                    uint16_t *l_868 = &l_745.f1;
                    uint32_t *l_869 = &hip_const_4;
                    uint32_t *l_870 = &hip_const_4;
                    uint32_t *l_871 = &hip_const_4;
                    // attempting a hip shared for loop
                    __shared__ int32_t *l_873[5];
                    for (int i = 0; i < 5; i++)
                        l_873[i] = nullptr;
                    int i, j, k;
                    for (int i = 0; i < 5; i++)
                        l_873[i] = nullptr;
                    (**p_2887->g_133) = (make_uchar2(l_850.y, l_850.y).y , (**p_2887->g_133));
                    l_874 |= (p_56 != ((make_uint3(((safe_mul_func_int16_t_s_s((safe_div_func_uint64_t_u_u(make_ulong3(p_2887->g_857.x, p_2887->g_857.x, p_2887->g_857.x).x, (+(l_834[6] = 0x26ED94A4607235A6LL)))), (p_2887->g_86.y = l_858[1]))) < (safe_lshift_func_int32_t_s_u(((4L != ((l_863 = &hip_const_2[2][0][5]) != &p_56)) , make_int2(l_864.y, l_864.y).x), (l_872 &= ((((*l_868) = (l_858[0] < ((make_ushort1(0x0627L).x || (-10L)) && (((make_int3((!((l_791 = (p_2887->g_617.x = l_864.x)) , l_866[0])), 0x39B7A456L, l_791).z < 4L) ^ l_802.y) | (***p_2887->g_133))))) || p_2887->g_141.y) , (*p_2887->g_395)))))), p_53, 0xEA8F0424L).z ^ (*p_2887->g_395)) == (*p_2887->g_395)));
                }
                if (((*l_847) ^= (*p_2887->g_93)))
                { /* block id: 384 */
                    uint64_t ***l_875 = &p_2887->g_479;
                    uint64_t ****l_876 = &l_875;
                    struct S0 l_897 = {-447,87,28,353,0,-324,191,533,37482};
                    (*l_876) = l_875;
                    for (l_745.f2 = 0; (l_745.f2 <= 7); l_745.f2 += 1)
                    { /* block id: 388 */
                        struct S0 l_877 = {-24160,219,14,-185,1,-787,-218,397,-35065};
                        uint16_t *l_889 = nullptr;
                        __shared__ uint16_t *l_890;
                        l_890 = &hip_const_2[2][0][5];
                        __shared__ uint16_t *l_891;
                        l_891 = &hip_const_12[1];
                        uint16_t *l_892 = &hip_const_1[1].f4;
                        uint16_t *l_893 = &hip_const_12[0];
                        uint16_t *l_894[10] = {&p_2887->g_457[4], &p_2887->g_457[4], nullptr, nullptr, &p_2887->g_457[4], &p_2887->g_457[4], &p_2887->g_457[4], nullptr, nullptr, &p_2887->g_457[4]};
                        int i;
                        l_834[l_745.f2] &= ((*p_2887->g_292) | (*l_847));
                        p_2887->g_628.y |= (p_53 & (p_53 > ((l_877 , (((safe_mod_func_uint8_t_u_u(((make_uchar2(l_880, 255UL) | make_uchar2(l_881.x, l_881.x))).x, (*l_847))) <= (p_2887->g_86.x = (((((make_short1(8L) ^ ((make_short1(l_882.z) | make_short1((((+(safe_add_func_int16_t_s_s((l_834[l_745.f2] = (safe_sub_func_int32_t_s_s((*p_2887->g_93), l_777.x))), make_short4(l_887.x, l_887.x, l_887.x, l_887.x).x))) , (p_2887->g_888[0][0][2] , (make_ushort1(5UL).x & (l_874 = p_2887->g_888[0][0][2].f0)))) >= l_864.y)))))) & make_short1(0x527DL))).x | (-1L)))) , l_802.z)) <= l_791)));
                        (**p_2887->g_133) = nullptr;
                        l_791 = p_53;
                    }
                    for (p_2887->g_204 = (-16); (p_2887->g_204 <= 42); ++p_2887->g_204)
                    { /* block id: 399 */
                        struct S0 *l_898 = nullptr;
                        struct S0 *l_899 = &hip_const_10;
                        struct S0 *l_900 = nullptr;
                        __shared__ struct S0 *l_901;
                        l_901 = nullptr;
                        __shared__ struct S0 *l_902;
                        l_902 = &l_897;
                        if (p_53)
                            break;
                        if (p_56)
                            break;
                        (*l_847) = l_777.x;
                        (*l_902) = l_897;
                    }
                }
                else
                { /* block id: 405 */
                    // attempting a hip shared for loop
                    __shared__ uint64_t l_913[6];
                    for (int i = 0; i < 6; i++)
                        l_913[i] = 0UL;
                    __shared__ uint8_t *l_932;
                    l_932 = &p_2887->g_596.f1;
                    __shared__ int32_t l_950;
                    l_950 = 8L;
                    union U3 l_956 = {0xC02DD627L};
                    union U3 **l_957 = nullptr;
                    union U3 **l_958 = &p_2887->g_582;
                    int i;
                    for (p_2887->g_204 = 0; (p_2887->g_204 >= 33); p_2887->g_204++)
                    { /* block id: 408 */
                        return p_54;
                    }
                    for (l_841.f0 = 2; (l_841.f0 >= 0); l_841.f0 -= 1)
                    { /* block id: 413 */
                        int16_t l_905 = (-2L);
                        int32_t *l_906 = &p_2887->g_596.f0;
                        int32_t *l_907 = &p_2887->g_102;
                        int32_t *l_908 = &l_766;
                        int32_t *l_909 = nullptr;
                        int32_t *l_910 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_911[8];
                        for (int i = 0; i < 8; i++)
                            l_911[i] = nullptr;
                        struct S1 *l_916 = &hip_const_5[0];
                        int i;
                        --l_913[4];
                        return l_916;
                    }
                    for (l_841.f1 = (-6); (l_841.f1 <= 58); ++l_841.f1)
                    { /* block id: 419 */
                        uint8_t *l_934 = &p_2887->g_276[1][0][2];
                        __shared__ uint8_t **l_933;
                        l_933 = &l_934;
                        union U2 ***l_941 = nullptr;
                        union U2 ***l_942 = &l_939[3][1][1];
                        int32_t *l_943 = &p_2887->g_888[0][0][2].f0;
                        int32_t *l_944 = &l_770;
                        int32_t *l_945 = nullptr;
                        __shared__ int32_t *l_946;
                        l_946 = &l_770;
                        int32_t *l_947 = &hip_const_9;
                        __shared__ int32_t *l_948;
                        l_948 = nullptr;
                        int32_t *l_949[6][7] = {{&l_872, &l_872, &p_2887->g_102, &l_770, &l_935.f0, &l_770, &p_2887->g_102}, {&l_872, &l_872, &p_2887->g_102, &l_770, &l_935.f0, &l_770, &p_2887->g_102}, {&l_872, &l_872, &p_2887->g_102, &l_770, &l_935.f0, &l_770, &p_2887->g_102}, {&l_872, &l_872, &p_2887->g_102, &l_770, &l_935.f0, &l_770, &p_2887->g_102}, {&l_872, &l_872, &p_2887->g_102, &l_770, &l_935.f0, &l_770, &p_2887->g_102}, {&l_872, &l_872, &p_2887->g_102, &l_770, &l_935.f0, &l_770, &p_2887->g_102}};
                        int i, j;
                        (*l_942) = ((make_int3(p_2887->g_919.z, p_2887->g_919.z, p_2887->g_919.z).x <= (safe_lshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s(((18446744073709551607UL > (nullptr == &hip_const_1[0])) == (l_837[0][4][1] > (((safe_rshift_func_int8_t_s_s(0x0BL, ((safe_add_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((*l_933) = l_932) == (l_935 , &p_2887->g_276[2][2][2])), ((safe_mul_func_uint16_t_u_u(l_938, 0xBBB4L)) , l_747.f7))), p_2887->g_919.z)), l_864.x)) ^ p_2887->g_457[4]))) & (*p_2887->g_395)) <= 0xFE330C3D585A0621LL))), p_56)), 7))) , l_939[3][1][1]);
                        l_872 ^= p_53;
                        l_953[4][0][0]++;
                        (*l_946) = (l_956 , ((make_int2(0L, 0x0DC3D912L) ^ make_int2(l_950, (-1L)))).x);
                    }
                    (*l_958) = &l_956;
                }
                l_966--;
            }
            else
            { /* block id: 429 */
                int32_t *l_969 = nullptr;
                // attempting a hip shared for loop
                __shared__ int32_t *l_970[7][1];
                for (int i = 0; i < 7; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_970[i][j] = &l_765;
                }
                __shared__ uint8_t *l_983;
                l_983 = &hip_const_16;
                uint8_t *l_984 = nullptr;
                uint8_t *l_985 = &l_745.f3;
                uint8_t *l_986 = &p_2887->g_888[0][0][2].f1;
                uint8_t *l_987 = nullptr;
                uint8_t *l_988 = &p_2887->g_276[2][0][0];
                int32_t ***l_1000 = &p_2887->g_998[2];
                // attempting a hip shared for loop
                __shared__ int16_t *l_1008[2][6][4];
                for (int i = 0; i < 2; i++)
                {
                    for (int j = 0; j < 6; j++)
                    {
                        for (int k = 0; k < 4; k++)
                            l_1008[i][j][k] = nullptr;
                    }
                }
                int32_t l_1050 = (-2L);
                uint16_t l_1120 = 4UL;
                uint8_t l_1128 = 0UL;
                int i, j, k;
                l_971[3][3][4] &= ((*l_847) = (*p_2887->g_93));
                if ((safe_add_func_int32_t_s_s((safe_mod_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(0xD2E7FBF9D3871C88LL, (-1L))), ((make_long3(p_2887->g_978.x, p_2887->g_978.x, p_2887->g_978.x) ^ make_long3(l_979.z, l_979.z, l_979.z))).z)), ((0x76B0D2F1L && (((safe_sub_func_int32_t_s_s(((make_short1(p_2887->g_982.z).x < (l_1009 = ((((*l_988)--) < (l_834[1] = ((((p_2887->g_801.z == make_char1(l_991.z).x) <= (*l_847)) || (safe_mul_func_int16_t_s_s((((safe_lshift_func_uint32_t_u_s((((l_996 == ((*l_1000) = p_2887->g_998[4])) != ((p_53 > (safe_div_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((safe_div_func_uint64_t_u_u((((*l_847) ^= (*p_2887->g_292)) > l_1007), 0x1748D57AC696CC1ALL)) , l_802.z), 0x0BAB1A1958EA2551LL)), p_53))) | p_56)) > hip_const_10.f6), 23)) , 0xB91687B4L) >= (**p_2887->g_134)), 0x72C5L))) == p_2887->g_631.y))) != l_747.f5))) < l_864.x), p_56)) >= 0x4E74233F10B1A39FLL) < p_56)) & hip_const_7[0][5][3]))))
                { /* block id: 437 */
                    union U3 l_1018 = {0x8A462530L};
                    int32_t l_1047 = (-4L);
                    int32_t l_1048 = 0xA5BF7395L;
                    __shared__ int32_t l_1049;
                    l_1049 = (-6L);
                    int32_t l_1051 = 0x099EBE26L;
                    int3 l_1052 = make_int3(6L, 0L, 6L);
                    union U3 **l_1077[7] = {nullptr, nullptr, &p_2887->g_582, nullptr, nullptr, &p_2887->g_582, nullptr};
                    union U3 ***l_1076[8][1][8] = {{{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}, {{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}, {{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}, {{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}, {{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}, {{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}, {{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}, {{nullptr, &l_1077[5], &l_1077[2], &l_1077[4], &l_1077[2], &l_1077[5], nullptr, &l_1077[6]}}};
                    union U3 **l_1079[3][4][3] = {{{&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}}, {{&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}}, {{&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}, {&p_2887->g_582, &p_2887->g_582, &p_2887->g_582}}};
                    int8_t *l_1080 = &l_795;
                    ushort3 l_1098 = make_ushort3(1UL, 8UL, 1UL);
                    union U2 l_1099 = {-5L};
                    struct S1 l_1108 = {175,10797,15283,0xF778L,975,-2,1814,-3,-1};
                    struct S0 l_1116[3][3][1] = {{{{18598,20,26,-125,6,-331,-220,860,-20188}}, {{18598,20,26,-125,6,-331,-220,860,-20188}}, {{18598,20,26,-125,6,-331,-220,860,-20188}}}, {{{18598,20,26,-125,6,-331,-220,860,-20188}}, {{18598,20,26,-125,6,-331,-220,860,-20188}}, {{18598,20,26,-125,6,-331,-220,860,-20188}}}, {{{18598,20,26,-125,6,-331,-220,860,-20188}}, {{18598,20,26,-125,6,-331,-220,860,-20188}}, {{18598,20,26,-125,6,-331,-220,860,-20188}}}};
                    int32_t **l_1119 = &p_2887->g_999[0][5][0];
                    int i, j, k;
                    for (p_2887->g_364 = 0; (p_2887->g_364 > 46); p_2887->g_364 = safe_add_func_int32_t_s_s(p_2887->g_364, 3))
                    { /* block id: 440 */
                        int64_t *l_1016 = &hip_const_15;
                        int64_t *l_1017[6][4][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
                        uint32_t *l_1035[2];
                        __shared__ int32_t l_1040;
                        l_1040 = 2L;
                        __shared__ int32_t l_1041;
                        l_1041 = 0xCF0DD943L;
                        struct S0 *l_1043 = &l_1042;
                        int i, j, k;
                        for (int i = 0; i < 2; i++)
                            l_1035[i] = &hip_const_6;
                        (**p_2887->g_133) = ((((hip_const_10 , ((safe_add_func_int64_t_s_s((p_2887->g_978.x = (safe_div_func_uint16_t_u_u((+(*l_847)), 0x766AL))), (l_1018 , (l_1041 &= ((make_ulong3((p_56 | ((safe_add_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((hip_const_5[0].f4 || (safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_rshift_func_int64_t_s_u((safe_sub_func_uint8_t_u_u(((((l_747.f8 |= (hip_const_11.f3 || (safe_lshift_func_int16_t_s_s(make_short1((-1L)).x, 14)))) ^ (safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(1UL, l_841.f0)), 0x74102BE8ED3B850BLL))) > l_1018.f0) && l_938), l_1040)), p_56)), 14)), p_2887->g_403.x))), p_56)), p_53)) != p_2887->g_592.x), p_53)) || p_56)), l_747.f8, 0x03B8924CED16D16ALL) & make_ulong3(0x3E97283A5E7A336BLL, 0x3E97283A5E7A336BLL, 0x3E97283A5E7A336BLL))).x)))) > (-1L))) != p_53) == p_53) , nullptr);
                        (*l_1043) = l_1042;
                        l_1044--;
                        (**p_2887->g_133) = (**p_2887->g_133);
                    }
                    l_1054--;
                    if ((((safe_sub_func_uint16_t_u_u((safe_div_func_int32_t_s_s((+(safe_rshift_func_int16_t_s_s((0x88L <= 0x35L), ((safe_mod_func_uint16_t_u_u((l_1065 == ((*p_54) , (safe_sub_func_int8_t_s_s(((*l_1080) ^= (safe_mod_func_uint64_t_u_u(((((safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u(((safe_add_func_int64_t_s_s((0xDCE7371B1647BB17LL >= p_56), ((l_1078 = &p_2887->g_582) != (p_53 , l_1079[1][2][0])))) == p_53), 6)) != p_53), p_56)) , 0x5F24L) & hip_const_10.f3) >= 0UL), l_1052.x))), l_1049)))), 1UL)) & p_56)))), 0xF7283136L)), p_56)) , hip_const_4) < 0x53DC1F0AE79C6952LL))
                    { /* block id: 452 */
                        uint64_t ****l_1082 = &l_1081[2][2];
                        (*p_2887->g_134) = nullptr;
                        (*l_847) &= 0x857F632AL;
                        (*l_1082) = l_1081[1][3];
                    }
                    else
                    { /* block id: 456 */
                        uint16_t *l_1085 = nullptr;
                        int32_t l_1103 = 0L;
                        l_1048 ^= (make_long3(0xBAE622F90268F569LL, (p_2887->g_320.z || (!(p_56 , ((*l_863) = (--p_56))))), make_long1((safe_sub_func_uint16_t_u_u(((*l_847) || (((safe_rshift_func_uint8_t_u_s((safe_add_func_int16_t_s_s((safe_div_func_uint64_t_u_u(0xBFACFB2CB33BE258LL, (safe_lshift_func_uint16_t_u_u((make_ushort2(l_1098.y, l_1098.y).y & hip_const_10.f5), 14)))), ((((l_1099 , ((safe_unary_minus_func_uint64_t_u(((safe_add_func_uint8_t_u_u((((*l_1080) = ((p_2887->g_888[0][7][2] , hip_const_1[0]) , 0xC8L)) && l_1047), hip_const_10.f5)) == (*l_847)))) != (*l_847))) < 0xC6C3C6A726E194EALL) >= p_2887->g_617.x) == hip_const_6))), 3)) , l_1103) , (-1L))), l_777.x))).x).x || l_1104);
                        l_1106 |= (0x16FC419289E8A601LL >= make_long2(l_1105.y, l_1105.y).y);
                        return p_54;
                    }
                    if ((make_ushort1(l_1107.y).x <= p_56))
                    { /* block id: 464 */
                        struct S1 *l_1109 = nullptr;
                        struct S1 *l_1110 = nullptr;
                        struct S1 *l_1111 = nullptr;
                        __shared__ struct S1 *l_1112;
                        l_1112 = &l_1108;
                        struct S0 *l_1113 = &l_1042;
                        union U3 ****l_1114 = &l_1076[3][0][0];
                        union U3 *****l_1115 = &l_1114;
                        (**p_2887->g_133) = (*p_2887->g_134);
                        (*l_1112) = (l_1108 , (*p_2887->g_130));
                        (*l_1113) = l_1042;
                        (*l_1115) = l_1114;
                    }
                    else
                    { /* block id: 469 */
                        union U3 l_1117[6][9] = {{{-1L}, {0x0C692F7DL}, {0x3AB36EF6L}, {0x0C692F7DL}, {-1L}, {0xB6B56C67L}, {-1L}, {0x0C692F7DL}, {0x3AB36EF6L}}, {{-1L}, {0x0C692F7DL}, {0x3AB36EF6L}, {0x0C692F7DL}, {-1L}, {0xB6B56C67L}, {-1L}, {0x0C692F7DL}, {0x3AB36EF6L}}, {{-1L}, {0x0C692F7DL}, {0x3AB36EF6L}, {0x0C692F7DL}, {-1L}, {0xB6B56C67L}, {-1L}, {0x0C692F7DL}, {0x3AB36EF6L}}, {{-1L}, {0x0C692F7DL}, {0x3AB36EF6L}, {0x0C692F7DL}, {-1L}, {0xB6B56C67L}, {-1L}, {0x0C692F7DL}, {0x3AB36EF6L}}, {{-1L}, {0x0C692F7DL}, {0x3AB36EF6L}, {0x0C692F7DL}, {-1L}, {0xB6B56C67L}, {-1L}, {0x0C692F7DL}, {0x3AB36EF6L}}, {{-1L}, {0x0C692F7DL}, {0x3AB36EF6L}, {0x0C692F7DL}, {-1L}, {0xB6B56C67L}, {-1L}, {0x0C692F7DL}, {0x3AB36EF6L}}};
                        // attempting a hip shared for loop
                        __shared__ int32_t **l_1118[6];
                        for (int i = 0; i < 6; i++)
                            l_1118[i] = &p_2887->g_999[0][6][6];
                        int i, j;
                        (*l_847) |= (l_1116[0][2][0] , (l_1117[2][2] , (l_1118[5] == ((*l_1000) = l_1119))));
                        l_765 = (((hip_const_10.f4 != (l_1120 <= ((safe_sub_func_int8_t_s_s(l_1108.f5, p_2887->g_857.x)) && ((l_745 , (safe_add_func_int32_t_s_s((safe_add_func_uint32_t_u_u((*p_2887->g_395), p_53)), (*p_2887->g_395)))) , (*p_2887->g_395))))) , nullptr) != &l_940);
                    }
                }
                else
                { /* block id: 474 */
                    int8_t l_1127 = 8L;
                    l_1128--;
                }
            }
        }
        else
        { /* block id: 478 */
            l_834[7] &= 0x45356AACL;
        }
    }
    if ((((p_2887->g_305.x && 0xC667L) && (*p_2887->g_395)) == ((safe_add_func_uint32_t_u_u((safe_div_func_int16_t_s_s(((safe_mul_func_int32_t_s_s((~(((l_1138 = p_53) , &l_1137[0]) == &l_1137[0])), ((*p_2887->g_292) == (safe_div_func_uint32_t_u_u((+(safe_mul_func_uint32_t_u_u(1UL, (safe_mul_func_uint8_t_u_u(p_53, 0xB3L))))), (*p_2887->g_395)))))) >= p_56), p_53)), (*p_2887->g_395))) >= 0UL)))
    { /* block id: 483 */
        uint16_t l_1156 = 1UL;
        int32_t **l_1166[8][4][5] = {{{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}, {{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}, {{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}, {{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}, {{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}, {{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}, {{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}, {{&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}, {&p_2887->g_999[0][6][6], &p_2887->g_999[0][8][1], nullptr, &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]}}};
        int32_t l_1171 = (-1L);
        int32_t l_1173[3];
        struct S1 ***l_1183 = &p_2887->g_129[2][2][2];
        int4 l_1193 = make_int4((-5L), 0x8F1D160EL, (-5L), 0x8F1D160EL);
        ulong1 l_1202 = make_ulong1(3UL);
        short4 l_1210 = make_short4(0L, (-7L), 0L, (-7L));
        union U3 **l_1226[2][6][8] = {{{&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}}, {{&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}, {&p_2887->g_582, &p_2887->g_582, nullptr, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, &p_2887->g_582, nullptr}}};
        union U3 ***l_1225 = &l_1226[0][2][2];
        uint2 l_1270 = make_uint2(4UL, 0x68A11B10L);
        int16_t *l_1275[6][7][5] = {{{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}};
        int16_t l_1282 = 0x7842L;
        int32_t ***l_1285 = &p_2887->g_134;
        int i, j, k;
        for (int i = 0; i < 3; i++)
            l_1173[i] = (-1L);
        if (p_56)
        { /* block id: 484 */
            ulong4 l_1151 = make_ulong4(18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
            __shared__ uint8_t *l_1165;
            l_1165 = &hip_const_1[1].f2;
            int16_t *l_1167 = nullptr;
            __shared__ int16_t *l_1168;
            l_1168 = nullptr;
            int16_t *l_1169 = nullptr;
            int32_t l_1170 = (-3L);
            int32_t l_1175 = 0xAC2FE6B5L;
            int2 l_1176 = make_int2(0x5F3FA907L, (-1L));
            int64_t l_1177 = 0xC1303D3F2B7E3534LL;
            int64_t l_1178 = 0x38120003250B2F58LL;
            uint32_t l_1180 = 0x57DA6A80L;
            // attempting a hip shared for loop
            __shared__ union U3 **l_1188[9];
            for (int i = 0; i < 9; i++)
                l_1188[i] = &p_2887->g_582;
            __shared__ uint32_t l_1203;
            l_1203 = 18446744073709551612UL;
            struct S1 *l_1246 = &hip_const_5[0];
            int i;
            for (int i = 0; i < 9; i++)
                l_1188[i] = &p_2887->g_582;
            if ((safe_sub_func_uint16_t_u_u(((l_1170 = ((safe_mod_func_int16_t_s_s((make_uchar1(0x06L).x , (p_2887->g_982.w = (safe_mul_func_uint8_t_u_u(((0x70A57266BF45D13FLL >= make_ulong3(l_1151.x, l_1151.x, l_1151.x).z) && 0x95L), (((l_1151.w , ((((safe_lshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s((l_1156 <= (safe_mod_func_int16_t_s_s(((&p_2887->g_999[0][6][6] != (l_1166[1][3][1] = ((p_2887->g_276[3][1][0] |= ((*p_2887->g_395) < ((make_int4(l_1151.y, (-1L), 1L, 0x9FC551E9L).y , (safe_rshift_func_int64_t_s_s(p_2887->g_505.x, 36))) & ((safe_rshift_func_int8_t_s_u((safe_add_func_int64_t_s_s((((hip_const_5[0].f0 == 0x69L) | 18446744073709551610UL) ^ 0x8A433690L), l_1156)), 3)) != hip_const_11.f1)))) , l_1166[3][2][3]))) & p_56), p_53))), p_56)), hip_const_5[0].f8)) < 3UL) > (*p_2887->g_292)) > hip_const_5[0].f6)) & 0xA23FB091B176F572LL) <= 0xC4FBL))))), p_56)) <= 1UL)) , 0x82A2L), 1L)))
            { /* block id: 489 */
                int64_t l_1172[10] = {0L, (-1L), 1L, 1L, (-1L), 0L, (-1L), 1L, 1L, (-1L)};
                // attempting a hip shared for loop
                __shared__ int32_t l_1174[5][10];
                for (int i = 0; i < 5; i++)
                {
                    for (int j = 0; j < 10; j++)
                        l_1174[i][j] = 0xA59C67C8L;
                }
                __shared__ int32_t l_1179;
                l_1179 = 0x69A7BAF3L;
                struct S1 ****l_1184 = &l_1183;
                int i, j;
                ++l_1180;
                (*l_1184) = l_1183;
            }
            else
            { /* block id: 492 */
                uint32_t l_1185 = 0xA2434625L;
                union U3 **l_1190 = &p_2887->g_582;
                union U3 ***l_1189 = &l_1190;
                uint16_t *l_1194 = nullptr;
                uint16_t *l_1195 = &l_1138;
                int32_t l_1209 = 0xC4357F38L;
                l_1185--;
                (*l_1189) = l_1188[7];
                (*p_2887->g_134) = (*p_2887->g_134);
                if (((make_int2((-1L), 0xF1B1F61EL) ^ ((safe_lshift(((((make_int2(l_1193.x, l_1193.x) ^ make_int2((-1L), 0xEE13316FL))) | make_int2(((((*l_1195) |= 1UL) ^ (make_ushort3(l_1196.x, l_1196.x, l_1196.x).x <= ((safe_div_func_int32_t_s_s(p_53, p_53)) & make_uchar1(p_2887->g_1199.x).x))) ^ (safe_sub_func_uint32_t_u_u((((p_2887->g_801.y && 0x7DDEL) , (((l_1176.y = make_ulong4(l_1202.x, l_1202.x, l_1202.x, l_1202.x).z) < ((l_1203 || 0xB5816BD5F1E6BA15LL) < (safe_rshift_func_int16_t_s_s(((safe_add(((make_short4(l_1208.z, l_1208.z, l_1208.z, l_1208.z) ^ make_short4(0xF872L, (l_1209 = (-1L)), 6L, make_short1(l_1210.x).x))), make_short4(0xDBFEL, (-4L), (-1L), (-2L))))).z, (((safe_lshift_func_int64_t_s_s((((((safe_add(make_uint3(0xA3D25049L, 18446744073709551615UL, ((p_53 <= p_56) == p_2887->g_634.x)), make_uint3(0xC2AF8BD7L, 0xC2AF8BD7L, 0xC2AF8BD7L)))) & make_uint3(4UL, 4UL, 4UL))).z , l_1177), p_53)) <= p_53) == p_56))))) & 0x0724L)) | hip_const_11.f4), p_53))), (-1L)))), make_int2((-1L), (-1L))))))).y)
                { /* block id: 499 */
                    uint8_t l_1217 = 0x42L;
                    struct S1 *l_1232[6][8] = {{nullptr, nullptr, &hip_const_5[0], nullptr, nullptr, &hip_const_5[0], nullptr, nullptr}, {nullptr, nullptr, &hip_const_5[0], nullptr, nullptr, &hip_const_5[0], nullptr, nullptr}, {nullptr, nullptr, &hip_const_5[0], nullptr, nullptr, &hip_const_5[0], nullptr, nullptr}, {nullptr, nullptr, &hip_const_5[0], nullptr, nullptr, &hip_const_5[0], nullptr, nullptr}, {nullptr, nullptr, &hip_const_5[0], nullptr, nullptr, &hip_const_5[0], nullptr, nullptr}, {nullptr, nullptr, &hip_const_5[0], nullptr, nullptr, &hip_const_5[0], nullptr, nullptr}};
                    int i, j;
                    for (p_2887->g_364 = 0; (p_2887->g_364 <= 14); p_2887->g_364 = safe_add_func_uint64_t_u_u(p_2887->g_364, 1))
                    { /* block id: 502 */
                        __shared__ uint32_t l_1220;
                        l_1220 = 1UL;
                        // attempting a hip shared for loop
                        __shared__ uint8_t *l_1237[2];
                        for (int i = 0; i < 2; i++)
                            l_1237[i] = &l_841.f1;
                        int64_t *l_1238 = &hip_const_8;
                        int64_t *l_1239 = nullptr;
                        int64_t *l_1240 = nullptr;
                        int64_t *l_1241 = nullptr;
                        int64_t *l_1242 = &l_1178;
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_1237[i] = &l_841.f1;
                        l_1217++;
                        if (l_1220)
                            break;
                        l_1209 = (safe_mul_func_uint16_t_u_u(make_ushort3((l_1210.w || (--(*l_1195))), 65532UL, ((nullptr == l_1225) & make_uint4(((0xC8L || ((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(make_ushort2(p_2887->g_1231.z, p_2887->g_1231.z).x, (l_1232[4][6] == nullptr))), ((make_ushort2(0xED38L, 0xA4BCL) ^ ((safe_sub(((make_ushort2(65535UL, 65527UL) ^ make_ushort2(((p_56 , (((*l_1242) |= ((l_1176.y ^= (safe_add_func_uint8_t_u_u((0x58150326L == 0x1D02FD27L), l_1175))) > 0x45L)) < 0x1820A676C9DCF22FLL)) < 4294967295UL), 65527UL))), make_ushort2(0x5BE6L, 0x5BE6L)))))).x)) <= l_1209)) >= (-1L)), 0x0B428200L, 0xD5690DD5L, 0UL).x)).y, p_56));
                    }
                }
                else
                { /* block id: 510 */
                    return l_750;
                }
                if (hip_const_11.f1)
                    goto lbl_1243;
            }
lbl_1243:
            l_1171 = (l_1193.w ^= (*p_2887->g_292));
            for (p_2887->g_426 = (-3); (p_2887->g_426 > (-20)); p_2887->g_426 = safe_sub_func_uint32_t_u_u(p_2887->g_426, 4))
            { /* block id: 519 */
                return l_1246;
            }
        }
        else
        { /* block id: 522 */
            int32_t l_1250 = 0xDB88DFAEL;
            union U3 ***l_1264[2][2][6] = {{{&l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][7]}, {&l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][7]}}, {{&l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][7]}, {&l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][5], &l_1226[0][2][2], &l_1226[1][3][7]}}};
            uint32_t l_1267[6] = {0xCA15B4D2L, 1UL, 0xCA15B4D2L, 1UL, 0xCA15B4D2L, 1UL};
            int3 l_1281 = make_int3(0x3752860EL, 0x6A8F6CDEL, 0x3752860EL);
            int i, j, k;
            p_2887->g_919.y ^= ((safe_rshift(make_int1(p_2887->g_1249.y), make_int1((-10L))))).x;
            l_1250 = (-1L);
            for (l_1250 = 0; (l_1250 < (-23)); l_1250 = safe_sub_func_uint64_t_u_u(l_1250, 6))
            { /* block id: 527 */
                struct S0 *l_1263 = &hip_const_10;
                int64_t *l_1265 = nullptr;
                int64_t *l_1266 = nullptr;
                int32_t l_1283 = 0L;
                int32_t l_1284 = 0xD803F321L;
                struct S1 ****l_1287 = &l_1286;
                int8_t *l_1288[8][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                int i, j;
                l_1193.z = ((safe_lshift_func_int16_t_s_u((safe_mul_func_uint32_t_u_u((safe_rshift_func_int64_t_s_u((safe_mul_func_uint16_t_u_u(((hip_const_11.f8 <= (p_53 <= ((((*l_750) , (l_1250 < (((((safe_div_func_int16_t_s_s(((l_1263 == &l_747) > (p_56 , ((((p_2887->g_731.z = (nullptr != l_1264[1][0][0])) >= 1L) || 7L) ^ l_1173[1]))), 65528UL)) & p_53) != 0x7E659087FED4B30ALL) & p_53) & 1L))) == l_1267[5]) | (-1L)))) & 0x3915CE18L), p_56)), 1)), (*p_2887->g_395))), 13)) ^ 0x1B33L);
                l_1284 &= (l_1193.z = (safe_mod_func_uint64_t_u_u((hip_const_1[1] , (p_56 , ((251UL <= p_56) <= ((make_uint2(l_1270.y, l_1270.y).x && ((safe_add_func_int8_t_s_s(((+(safe_mul_func_uint8_t_u_u(((nullptr != l_1275[0][3][1]) & ((safe_add_func_uint32_t_u_u(((((*p_2887->g_395) == ((safe_mod_func_int16_t_s_s((make_ulong4(p_2887->g_1280.y, p_2887->g_1280.y, p_2887->g_1280.y, p_2887->g_1280.y).z != ((*p_2887->g_395) && make_int4(l_1281.x, l_1281.x, l_1281.x, l_1281.x).z)), l_1282)) != l_1283)) & p_2887->g_305.x) && 0xBFL), l_1283)) < 246UL)), p_56))) || l_1281.z), 8L)) ^ l_1281.x)) , p_2887->g_425.x)))), 0xC924F566121C2528LL)));
                l_1173[0] |= ((nullptr == l_1285) == (p_2887->g_569.x = (((*l_1287) = l_1286) == nullptr)));
            }
        }
        (**l_1285) = (**l_1285);
        --l_1289;
        p_2887->g_628.z |= (l_745 , (+0x55D93A16L));
    }
    else
    { /* block id: 540 */
        uint8_t *l_1292 = nullptr;
        uint8_t *l_1293 = &hip_const_1[1].f3;
        uint8_t *l_1294 = &p_2887->g_276[3][3][2];
        __shared__ uchar3 l_1299;
        l_1299 = make_uchar3(255UL, 1UL, 255UL);
        __shared__ uint64_t *l_1300;
        l_1300 = nullptr;
        uint64_t *l_1301 = nullptr;
        uint64_t *l_1302 = nullptr;
        __shared__ uint64_t *l_1303;
        l_1303 = nullptr;
        uint64_t *l_1304 = nullptr;
        uint64_t *l_1305 = nullptr;
        __shared__ int32_t l_1312;
        l_1312 = 3L;
        int i;
        l_1312 |= (p_2887->g_628.z &= (((make_uchar4(255UL, make_uchar2(0xB5L, (--(*l_1294))).y, 4UL, (safe_rshift_func_int32_t_s_s((*p_2887->g_292), 10))) | make_uchar4(l_1299.y, l_1299.y, l_1299.y, l_1299.y))).y < (((p_2887->g_425.x &= 0xE593D665ECBDA43ELL) < 0xD20CCE206A5A3545LL) >= (((*p_54) , ((safe_add(make_int1(0x096E301CL), ((safe_rshift(make_int1((-1L)), make_int1(32))))))).x) > ((l_1299.x , p_2887->g_1310) == &p_2887->g_1311)))));
    }
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ uint32_t  func_57(uint8_t  p_58, struct S1 * p_59, uint32_t  p_60, struct S4 * p_2887)
{ /* block id: 300 */
    uint16_t l_741 = 0UL;
    return l_741;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_11.f6 hip_const_11.f1 hip_const_12 hip_const_5 hip_const_11.f0 p_2887->g_133 p_2887->g_134 hip_const_11
 * writes: p_2887->g_86 p_2887->g_93 p_2887->g_102 p_2887->g_133
 */
__device__ struct S1 * func_61(struct S1 * p_62, struct S1 * p_63, struct S1 * p_64, struct S1 * p_65, struct S1 * p_66, struct S4 * p_2887)
{ /* block id: 5 */
    struct S1 *l_74 = &hip_const_11;
    __shared__ struct S1 **l_73;
    l_73 = &l_74;
    __shared__ struct S1 **l_75;
    l_75 = &l_74;
    struct S0 l_79 = {15270,21,56,-39,3,-680,184,1358,11726};
    __shared__ struct S1 l_91;
    l_91 = {233,859,13938,0x49FFL,1407,18,4393,0,0};
    uint32_t l_106 = 7UL;
    int32_t *l_136 = &hip_const_13;
    __shared__ long3 l_151;
    l_151 = make_long3(6L, 0x63307FDC0412EF52LL, 6L);
    long1 l_164 = make_long1(1L);
    long4 l_167 = make_long4(0x256CFA103EE57E15LL, (-2L), 0x256CFA103EE57E15LL, (-2L));
    int32_t ***l_180[2][4][5] = {{{&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}, {&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}, {&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}, {&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}}, {{&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}, {&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}, {&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}, {&p_2887->g_134, &p_2887->g_134, &p_2887->g_134, &p_2887->g_134, nullptr}}};
    int64_t l_255 = 0xDE6E452DE9F1D2E8LL;
    uint16_t l_277 = 0xF3CFL;
    uint16_t l_352[6];
    int1 l_371 = make_int1(0x175030C4L);
    uint64_t **l_411 = &p_2887->g_272;
    uint64_t l_412 = 0UL;
    ushort4 l_470 = make_ushort4(0x9ED6L, 2UL, 0x9ED6L, 2UL);
    union U3 l_488 = {0x0D3F49CCL};
    __shared__ int32_t l_521;
    l_521 = 0xBEC1DE90L;
    __shared__ uint3 l_578;
    l_578 = make_uint3(4294967290UL, 0x2D712958L, 4294967290UL);
    __shared__ struct S1 l_588;
    l_588 = {190,25273,18926,0UL,169,-56,275,2,1};
    uint32_t l_624 = 4294967289UL;
    uint16_t l_633 = 1UL;
    uchar2 l_651 = make_uchar2(250UL, 248UL);
    struct S1 ****l_661 = nullptr;
    long3 l_672 = make_long3(0x1E773F7505448D51LL, (-1L), 0x1E773F7505448D51LL);
    long1 l_675 = make_long1((-1L));
    int2 l_702 = make_int2(0x74CF1F53L, 0L);
    int16_t l_713 = 0x698AL;
    ushort3 l_724 = make_ushort3(0UL, 0xBD9AL, 0UL);
    int8_t l_735[7][5][1] = {{{(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}}, {{(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}}, {{(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}}, {{(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}}, {{(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}}, {{(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}}, {{(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}, {(-8L)}}};
    int i, j, k;
    for (int i = 0; i < 6; i++)
        l_352[i] = 0UL;
lbl_94:
    l_75 = l_73;
    if (hip_const_11.f6)
    { /* block id: 7 */
        struct S0 l_76 = {-30862,64,61,-149,0,-431,-185,265,-32946};
        struct S0 *l_77 = &hip_const_10;
        struct S0 *l_78[6][6] = {{&l_76, &hip_const_10, &hip_const_10, &l_76, &hip_const_10, &l_76}, {&l_76, &hip_const_10, &hip_const_10, &l_76, &hip_const_10, &l_76}, {&l_76, &hip_const_10, &hip_const_10, &l_76, &hip_const_10, &l_76}, {&l_76, &hip_const_10, &hip_const_10, &l_76, &hip_const_10, &l_76}, {&l_76, &hip_const_10, &hip_const_10, &l_76, &hip_const_10, &l_76}, {&l_76, &hip_const_10, &hip_const_10, &l_76, &hip_const_10, &l_76}};
        __shared__ int16_t *l_85;
        l_85 = &p_2887->g_86.y;
        int32_t *l_87 = &hip_const_13;
        int32_t *l_88[6] = {&hip_const_13, &hip_const_13, &hip_const_13, &hip_const_13, &hip_const_13, &hip_const_13};
        struct S1 *l_89 = &hip_const_11;
        struct S1 *l_90[2][3][4] = {{{&hip_const_5[0], &hip_const_5[0], &hip_const_11, &hip_const_11}, {&hip_const_5[0], &hip_const_5[0], &hip_const_11, &hip_const_11}, {&hip_const_5[0], &hip_const_5[0], &hip_const_11, &hip_const_11}}, {{&hip_const_5[0], &hip_const_5[0], &hip_const_11, &hip_const_11}, {&hip_const_5[0], &hip_const_5[0], &hip_const_11, &hip_const_11}, {&hip_const_5[0], &hip_const_5[0], &hip_const_11, &hip_const_11}}};
        __shared__ int32_t **l_92;
        l_92 = &l_88[0];
        int i, j, k;
        l_79 = l_76;
        l_79.f6 &= ((&l_76 == ((safe_sub_func_int64_t_s_s(l_76.f3, l_79.f0)) , &hip_const_10)) | (0xAB2B09B6L >= (hip_const_11.f1 , (safe_unary_minus_func_uint16_t_u(((safe_add_func_int16_t_s_s(hip_const_12[1], ((*l_85) = l_79.f3))) > (l_79.f1 ^ 0x64L)))))));
        l_91 = (*p_62);
        p_2887->g_93 = ((*l_92) = &hip_const_13);
    }
    else
    { /* block id: 14 */
        if (l_79.f6)
            goto lbl_94;
    }
    for (l_91.f3 = (-11); (l_91.f3 != 38); ++l_91.f3)
    { /* block id: 19 */
        __shared__ uint64_t l_97;
        l_97 = 18446744073709551615UL;
        __shared__ int32_t *l_98;
        l_98 = &hip_const_9;
        // attempting a hip shared for loop
        __shared__ int32_t *l_99[5][1];
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 1; j++)
                l_99[i][j] = &hip_const_9;
        }
        short1 l_103 = make_short1(7L);
        uint32_t l_104[8][7] = {{18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}, {18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}, {18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}, {18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}, {18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}, {18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}, {18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}, {18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL}};
        struct S0 l_108[8][9][3] = {{{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}, {{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}, {{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}, {{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}, {{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}, {{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}, {{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}, {{{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}, {{-8416,227,30,-325,3,821,-192,978,-19719}, {-4801,212,52,-100,5,165,247,1117,-6172}, {-22222,116,5,-240,9,-729,53,215,-21970}}}};
        struct S0 l_115[8] = {{-22465,187,60,140,1,779,49,993,30210}, {-22465,187,60,140,1,779,49,993,30210}, {-831,254,17,304,6,618,-165,1304,2475}, {-22465,187,60,140,1,779,49,993,30210}, {-22465,187,60,140,1,779,49,993,30210}, {-831,254,17,304,6,618,-165,1304,2475}, {-22465,187,60,140,1,779,49,993,30210}, {-22465,187,60,140,1,779,49,993,30210}};
        struct S1 **l_128[1];
        ulong3 l_142 = make_ulong3(0UL, 1UL, 0UL);
        int64_t *l_143 = &hip_const_8;
        int64_t *l_144 = &hip_const_15;
        __shared__ union U3 l_145;
        l_145 = {0xED409948L};
        struct S1 l_177 = {3,14164,22758,0xDB94L,1440,-23,1377,3,1};
        int32_t ***l_179 = &p_2887->g_134;
        uint32_t l_262[6] = {4294967293UL, 4294967295UL, 4294967293UL, 4294967295UL, 4294967293UL, 4294967295UL};
        uint64_t l_285 = 0xF982F0DBEEDF3F25LL;
        int2 l_309 = make_int2(0L, 0xB90F47D5L);
        ulong2 l_321 = make_ulong2(0xAED1166AE4A5FECDLL, 0x0C54AD161C2209B2LL);
        int8_t l_347 = 0L;
        uint1 l_430 = make_uint1(4294967291UL);
        uint1 l_453 = make_uint1(0x3DD5711CL);
        int16_t l_500 = 0x35E1L;
        struct S0 *l_637 = &l_115[2];
        uint64_t l_640 = 18446744073709551615UL;
        struct S1 ****l_660 = &p_2887->g_467;
        int16_t *l_678[3][4][7] = {{{&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}}, {{&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}}, {{&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}, {&l_500, nullptr, &l_500, &l_500, &l_500, nullptr, &l_500}}};
        uint32_t l_679 = 0UL;
        __shared__ short4 l_701;
        l_701 = make_short4(0xC634L, 0x2855L, 0xC634L, 0x2855L);
        __shared__ int16_t l_736;
        l_736 = (-1L);
        int i, j, k;
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 1; j++)
                l_99[i][j] = &hip_const_9;
        }
        for (int i = 0; i < 1; i++)
            l_128[i] = &l_74;
        if ((l_79.f0 |= l_97))
        { /* block id: 21 */
            uint64_t l_105 = 0xA309C9891BAA6E91LL;
            struct S1 *l_107 = nullptr;
            for (l_97 = 0; (l_97 > 26); ++l_97)
            { /* block id: 24 */
                struct S0 *l_109 = &l_79;
                __shared__ struct S0 *l_110;
                l_110 = &l_108[4][6][1];
                struct S0 *l_111 = &hip_const_10;
                struct S0 *l_112 = &hip_const_10;
                struct S0 *l_113 = &hip_const_10;
                struct S0 *l_114[3][10][8];
                int i, j, k;
                for (int i = 0; i < 3; i++)
                {
                    for (int j = 0; j < 10; j++)
                    {
                        for (int k = 0; k < 8; k++)
                            l_114[i][j][k] = &hip_const_10;
                    }
                }
                if (l_79.f6)
                { /* block id: 25 */
                    for (p_2887->g_102 = 0; (p_2887->g_102 <= 0); p_2887->g_102 += 1)
                    { /* block id: 28 */
                        int i, j;
                        l_104[4][1] = ((make_short2(l_103.x, l_103.x).y | ((make_ushort1(0x1B7AL).x ^ 0x873CL) <= (make_long3(l_79.f7, 0x74A045A3BC6B9C53LL, 0xACFDDCEC7099BD49LL).y == l_91.f5))) < l_91.f8);
                        l_106 = l_105;
                        return l_107;
                    }
                }
                else
                { /* block id: 33 */
                    return &hip_const_5[0];
                }
                l_115[2] = ((*l_110) = ((*l_109) = l_108[4][4][1]));
            }
        }
        else
        { /* block id: 40 */
            uint32_t l_116 = 0x65B9F8BEL;
            __shared__ long1 l_117;
            l_117 = make_long1(9L);
            uint32_t *l_118 = &l_106;
            __shared__ uint2 l_119;
            l_119 = make_uint2(4UL, 2UL);
            struct S1 **l_127 = &l_74;
            struct S1 ***l_126[9] = {&l_127, &l_127, &l_127, &l_127, &l_127, &l_127, &l_127, &l_127, &l_127};
            int16_t *l_131 = nullptr;
            int32_t l_132[6][9][4] = {{{0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}}, {{0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}}, {{0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}}, {{0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}}, {{0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}}, {{0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}, {0L, 0x6EC6A9ADL, (-4L), (-1L)}}};
            __shared__ int32_t ****l_135;
            l_135 = &p_2887->g_133;
            int i, j, k;
            l_132[5][7][1] = ((0xCC52L >= ((make_short3((((*l_118) = (l_116 & make_long1(l_117.x).x)) | make_uint4(l_119.y, l_119.y, l_119.y, l_119.y).y), 0x1952L, 5L) | ((((((make_short3(0x4755L, 0x51F3L, (!l_79.f0)) ^ ((safe_mul(((~((~make_short3((p_2887->g_86.z = (safe_mul_func_int64_t_s_s(l_116, (((*p_2887->g_93) < (*l_98)) , (safe_mul_func_uint8_t_u_u((((l_128[0] = &l_74) == p_2887->g_129[2][2][2]) , hip_const_11.f6), l_79.f5)))))), hip_const_11.f5, 0x9A9DL))))), make_short3(1L, 1L, 1L)))))) ^ make_short3(0xB9C5L, 0xB9C5L, 0xB9C5L))) | make_short3(0L, 0L, 0L))))).z) || hip_const_11.f0);
            (*l_135) = p_2887->g_133;
            (**p_2887->g_133) = l_136;
        }
    }
    return p_64;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S4 c_2888;
    struct S4* p_2887 = &c_2888;
    struct S4 c_2889 = {
        .g_15 = make_ulong1(0x27FD735AE52E9AD7LL),
        .g_86 = make_short3(0L, 0L, 0L),
        .g_93 = &hip_const_9,
        .g_102 = 0x9E982BA9L,
        .g_130 = &hip_const_5[0],
        .g_129 = {{{nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}}, {{nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}}, {{nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}, {nullptr, &p_2887->g_130, &p_2887->g_130, nullptr, nullptr}}},
        .g_134 = &p_2887->g_93,
        .g_133 = &p_2887->g_134,
        .g_141 = make_ulong3(7UL, 18446744073709551615UL, 7UL),
        .g_204 = 18446744073709551615UL,
        .g_212 = make_ushort4(0xEAB9L, 65535UL, 0xEAB9L, 65535UL),
        .g_272 = nullptr,
        .g_276 = {{{0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}}, {{0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}}, {{0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}}, {{0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}, {0xD1L, 0x1EL, 255UL}}},
        .g_292 = &hip_const_13,
        .g_305 = make_int1(7L),
        .g_320 = make_ulong3(1UL, 18446744073709551615UL, 1UL),
        .g_364 = 18446744073709551615UL,
        .g_395 = &hip_const_14,
        .g_403 = make_int1(0xBF972960L),
        .g_414 = make_int2((-2L), 0L),
        .g_422 = make_ulong2(0x6EA4652A491C4FEDLL, 0UL),
        .g_425 = make_ulong1(18446744073709551608UL),
        .g_426 = 0xE2L,
        .g_457 = {0x0C03L, 0x005EL, 0x0C03L, 0x005EL, 0x0C03L},
        .g_467 = &p_2887->g_129[2][5][0],
        .g_466 = {&p_2887->g_467, &p_2887->g_467, &p_2887->g_467, &p_2887->g_467, &p_2887->g_467},
        .g_479 = &p_2887->g_272,
        .g_478 = &p_2887->g_479,
        .g_489 = make_char2(6L, 5L),
        .g_504 = make_long1(1L),
        .g_505 = make_long4(0xA58EACA6D1716123LL, (-1L), 0xA58EACA6D1716123LL, (-1L)),
        .g_527 = make_uchar3(0xF2L, 0x3AL, 0xF2L),
        .g_534 = make_ulong1(0x029B5A612931CD8ALL),
        .g_569 = make_char3((-7L), 1L, (-7L)),
        .g_570 = make_char2(0x3FL, 0x85L),
        .g_574 = make_char3(0xFFL, 0L, 0xFFL),
        .g_582 = nullptr,
        .g_592 = make_long2(0x3961AA367564C2F2LL, 0x4F748CA86324B56CLL),
        .g_596 = {5L},
        .g_616 = make_long2(0L, 0x889D762EC0B554C1LL),
        .g_617 = make_long1(0x7DD3606427B08E8BLL),
        .g_628 = make_int3(0xD5931258L, (-8L), 0xD5931258L),
        .g_631 = make_ulong2(0x181785CA58751360LL, 0xD87A47C73FC30668LL),
        .g_634 = make_int2(5L, 0x35BC0607L),
        .g_635 = make_int1((-1L)),
        .g_723 = make_ushort4(0x4A6EL, 8UL, 0x4A6EL, 8UL),
        .g_731 = make_long3(1L, (-3L), 1L),
        .g_801 = make_uint3(4294967295UL, 0x0A2A24E5L, 4294967295UL),
        .g_857 = make_ulong3(0x1EDB0A21FFE576FELL, 0xE2B458007B570B51LL, 0x1EDB0A21FFE576FELL),
        .g_888 = {{{{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}, {{0x6735B759L}, {-2L}, {0x6735B759L}}}},
        .g_919 = make_int3(0xA79822F2L, (-1L), 0xA79822F2L),
        .g_978 = make_long1(0L),
        .g_982 = make_short4(0x6CA8L, 1L, 0x6CA8L, 1L),
        .g_999 = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}},
        .g_998 = {&p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6], &p_2887->g_999[0][6][6]},
        .g_1199 = make_uchar3(255UL, 0UL, 255UL),
        .g_1231 = make_ushort4(0x5560L, 0xBAE2L, 0x5560L, 0xBAE2L),
        .g_1249 = make_int2((-1L), (-7L)),
        .g_1280 = make_ulong2(0xEEFCB93935A6209ALL, 0xF772300A65777CFALL),
        .g_1311 = nullptr,
        .g_1310 = &p_2887->g_1311,
        .g_1313 = {{nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}, {nullptr, nullptr, &hip_const_11, &hip_const_5[0], nullptr, &hip_const_5[0], &hip_const_11, &hip_const_5[0], nullptr}},
        .g_1374 = make_uchar4(1UL, 4UL, 1UL, 4UL),
        .g_1412 = {{{nullptr, &hip_const_1[1], nullptr, &hip_const_1[1], &hip_const_1[1], &hip_const_1[1], &hip_const_1[0], &hip_const_1[0], &hip_const_1[1], &hip_const_1[1]}, {nullptr, &hip_const_1[1], nullptr, &hip_const_1[1], &hip_const_1[1], &hip_const_1[1], &hip_const_1[0], &hip_const_1[0], &hip_const_1[1], &hip_const_1[1]}, {nullptr, &hip_const_1[1], nullptr, &hip_const_1[1], &hip_const_1[1], &hip_const_1[1], &hip_const_1[0], &hip_const_1[0], &hip_const_1[1], &hip_const_1[1]}, {nullptr, &hip_const_1[1], nullptr, &hip_const_1[1], &hip_const_1[1], &hip_const_1[1], &hip_const_1[0], &hip_const_1[0], &hip_const_1[1], &hip_const_1[1]}, {nullptr, &hip_const_1[1], nullptr, &hip_const_1[1], &hip_const_1[1], &hip_const_1[1], &hip_const_1[0], &hip_const_1[0], &hip_const_1[1], &hip_const_1[1]}}},
        .g_1411 = {{&p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][0][8], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][3][9], nullptr, &p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7]}, {&p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][0][8], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][3][9], nullptr, &p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7]}, {&p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][0][8], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][3][9], nullptr, &p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7]}, {&p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][0][8], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][3][9], nullptr, &p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7]}, {&p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][0][8], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][3][9], nullptr, &p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7]}, {&p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][0][8], &p_2887->g_1412[0][1][7], &p_2887->g_1412[0][3][9], nullptr, &p_2887->g_1412[0][3][9], &p_2887->g_1412[0][1][7]}},
        .g_1410 = {nullptr, nullptr, &p_2887->g_1411[5][2], nullptr, nullptr, &p_2887->g_1411[5][2]},
        .g_1518 = make_long1((-1L)),
        .g_1561 = nullptr,
        .g_1560 = &p_2887->g_1561,
        .g_1595 = &hip_const_5[0],
        .g_1637 = {5L, 5L, 5L},
        .g_1665 = make_ulong2(1UL, 18446744073709551611UL),
        .g_1668 = make_ulong1(0x88307ADA26CEBCA1LL),
        .g_1675 = make_uint4(1UL, 4294967287UL, 1UL, 4294967287UL),
        .g_1679 = make_uint2(0xC0FA8F6BL, 0x57C64397L),
        .g_1680 = make_uint2(0xD804B818L, 1UL),
        .g_1683 = make_uchar1(0xFAL),
        .g_1712 = make_int4((-1L), 0xAA4F69A7L, (-1L), 0xAA4F69A7L),
        .g_1713 = make_int2((-1L), 0x33631AF6L),
        .g_1866 = &hip_const_10,
        .g_1865 = &p_2887->g_1866,
        .g_1880 = make_int2(0x9E2F2D27L, 1L),
        .g_1908 = make_ulong1(0xF5F1F6C9AEBB3E9FLL),
        .g_1924 = nullptr,
        .g_1923 = &p_2887->g_1924,
        .g_1922 = {{nullptr, nullptr, &p_2887->g_1923, nullptr, nullptr, &p_2887->g_1923}},
        .g_1921 = &p_2887->g_1922[0][3],
        .g_1933 = &p_2887->g_395,
        .g_1932 = &p_2887->g_1933,
        .g_2000 = make_ulong4(0UL, 0x803B7DD45D628149LL, 0UL, 0x803B7DD45D628149LL),
        .g_2003 = make_ulong2(0xDF9C922E228DF984LL, 0xBE08426D6A88F2D5LL),
        .g_2008 = make_long1(0xF627E45990CAACB6LL),
        .g_2010 = make_short4(0xA59BL, 0x5D6BL, 0xA59BL, 0x5D6BL),
        .g_2020 = &p_2887->g_1560,
        .g_2019 = &p_2887->g_2020,
        .g_2031 = make_short1(0xF600L),
        .g_2074 = &p_2887->g_998[4],
        .g_2079 = make_long4(5L, (-1L), 5L, (-1L)),
        .g_2082 = make_int4(0x3E971589L, (-6L), 0x3E971589L, (-6L)),
        .g_2097 = make_long2((-4L), 0L),
        .g_2110 = make_long2(0xCCB0AC305EB6B4B1LL, 1L),
        .g_2115 = &p_2887->g_1921,
        .g_2116 = &p_2887->g_1921,
        .g_2120 = make_short4((-1L), (-2L), (-1L), (-2L)),
        .g_2133 = make_uint3(0UL, 4294967295UL, 0UL),
        .g_2177 = make_long3(0x6544DF1C61AB7996LL, 0L, 0x6544DF1C61AB7996LL),
        .g_2184 = {{{0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}, {0UL, 0x97D75B43L}}},
        .g_2189 = make_ushort1(65535UL),
        .g_2205 = make_uint1(4294967295UL),
        .g_2211 = make_long1(0xC6F0046092804CF8LL),
        .g_2260 = nullptr,
        .g_2269 = nullptr,
        .g_2307 = make_long1(0xC4B9E0F150A325ABLL),
        .g_2312 = make_long4(4L, 0x3590E82C41F56902LL, 4L, 0x3590E82C41F56902LL),
        .g_2313 = make_long3(0x5D28C5F9E51D9B3DLL, 0xEB7AC2D288661345LL, 0x5D28C5F9E51D9B3DLL),
        .g_2338 = 0x0BEEA81CL,
        .g_2369 = {&p_2887->g_133, &p_2887->g_133},
        .g_2368 = &p_2887->g_2369[1],
        .g_2437 = make_char2(0x1DL, 0L),
        .g_2468 = make_long4(2L, 0x808B45862E3B87A1LL, 2L, 0x808B45862E3B87A1LL),
        .g_2486 = make_short2(0x91BCL, 0xF47EL),
        .g_2490 = make_ushort2(0x2AE6L, 65534UL),
        .g_2516 = &p_2887->g_2269,
        .g_2518 = 0x6C86L,
        .g_2530 = make_ushort4(0x11D4L, 2UL, 0x11D4L, 2UL),
        .g_2542 = make_ushort2(65529UL, 0x0094L),
        .g_2580 = make_uint4(18446744073709551610UL, 0x5E92CADDL, 18446744073709551610UL, 0x5E92CADDL),
        .g_2586 = make_int2((-8L), 0x021D94A4L),
        .g_2590 = make_short2(0x49ABL, 0x2B37L),
        .g_2612 = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}},
        .g_2611 = &p_2887->g_2612[0][4][0],
        .g_2610 = &p_2887->g_2611,
        .g_2614 = make_int3(0x1B5D42C0L, (-4L), 0x1B5D42C0L),
        .g_2661 = make_uchar3(255UL, 1UL, 255UL),
        .g_2667 = make_int1(0x7BCA2ACCL),
        .g_2698 = 0x4B18DD0A308A3382LL,
        .g_2726 = &p_2887->g_364,
        .g_2725 = &p_2887->g_2726,
        .g_2741 = make_uint4(0UL, 5UL, 0UL, 5UL),
        .g_2764 = make_short4(0L, (-1L), 0L, (-1L)),
        .g_2783 = 1L,
        .g_2842 = make_uchar3(248UL, 0xAEL, 248UL),
        .g_2843 = make_uchar3(0x83L, 0x2AL, 0x83L),
        .g_2858 = {{0xDAC9L, 0x36BAL, 0xDAC9L, 0x36BAL, 0xDAC9L, 0x36BAL}},
    };
    c_2888 = c_2889;

    // Execute core logic
    func_1(p_2887);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 10; k++)
            {
                transparent_crc(hip_const_2[i][j][k], "hip_const_2[i][j][k]", print_hash_value);

            }
        }
    }
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(hip_const_3[i], "hip_const_3[i]", print_hash_value);

    }
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        transparent_crc(hip_const_5[i].f0, "hip_const_5[i].f0", print_hash_value);
        transparent_crc(hip_const_5[i].f1, "hip_const_5[i].f1", print_hash_value);
        transparent_crc(hip_const_5[i].f2, "hip_const_5[i].f2", print_hash_value);
        transparent_crc(hip_const_5[i].f3, "hip_const_5[i].f3", print_hash_value);
        transparent_crc(hip_const_5[i].f4, "hip_const_5[i].f4", print_hash_value);
        transparent_crc(hip_const_5[i].f5, "hip_const_5[i].f5", print_hash_value);
        transparent_crc(hip_const_5[i].f6, "hip_const_5[i].f6", print_hash_value);
        transparent_crc(hip_const_5[i].f7, "hip_const_5[i].f7", print_hash_value);
        transparent_crc(hip_const_5[i].f8, "hip_const_5[i].f8", print_hash_value);

    }
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            for (int k = 0; k < 10; k++)
            {
                transparent_crc(hip_const_7[i][j][k], "hip_const_7[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9, "hip_const_9", print_hash_value);
    transparent_crc(hip_const_10.f0, "hip_const_10.f0", print_hash_value);
    transparent_crc(hip_const_10.f1, "hip_const_10.f1", print_hash_value);
    transparent_crc(hip_const_10.f2, "hip_const_10.f2", print_hash_value);
    transparent_crc(hip_const_10.f3, "hip_const_10.f3", print_hash_value);
    transparent_crc(hip_const_10.f4, "hip_const_10.f4", print_hash_value);
    transparent_crc(hip_const_10.f5, "hip_const_10.f5", print_hash_value);
    transparent_crc(hip_const_10.f6, "hip_const_10.f6", print_hash_value);
    transparent_crc(hip_const_10.f7, "hip_const_10.f7", print_hash_value);
    transparent_crc(hip_const_10.f8, "hip_const_10.f8", print_hash_value);
    transparent_crc(hip_const_11.f0, "hip_const_11.f0", print_hash_value);
    transparent_crc(hip_const_11.f1, "hip_const_11.f1", print_hash_value);
    transparent_crc(hip_const_11.f2, "hip_const_11.f2", print_hash_value);
    transparent_crc(hip_const_11.f3, "hip_const_11.f3", print_hash_value);
    transparent_crc(hip_const_11.f4, "hip_const_11.f4", print_hash_value);
    transparent_crc(hip_const_11.f5, "hip_const_11.f5", print_hash_value);
    transparent_crc(hip_const_11.f6, "hip_const_11.f6", print_hash_value);
    transparent_crc(hip_const_11.f7, "hip_const_11.f7", print_hash_value);
    transparent_crc(hip_const_11.f8, "hip_const_11.f8", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(hip_const_12[i], "hip_const_12[i]", print_hash_value);

    }
    transparent_crc(hip_const_13, "hip_const_13", print_hash_value);
    transparent_crc(hip_const_14, "hip_const_14", print_hash_value);
    transparent_crc(hip_const_15, "hip_const_15", print_hash_value);
    transparent_crc(hip_const_16, "hip_const_16", print_hash_value);
    transparent_crc(p_2887->g_15.x, "p_2887->g_15.x", print_hash_value);
    transparent_crc(p_2887->g_86.x, "p_2887->g_86.x", print_hash_value);
    transparent_crc(p_2887->g_86.y, "p_2887->g_86.y", print_hash_value);
    transparent_crc(p_2887->g_86.z, "p_2887->g_86.z", print_hash_value);
    transparent_crc(p_2887->g_102, "p_2887->g_102", print_hash_value);
    transparent_crc(p_2887->g_141.x, "p_2887->g_141.x", print_hash_value);
    transparent_crc(p_2887->g_141.y, "p_2887->g_141.y", print_hash_value);
    transparent_crc(p_2887->g_141.z, "p_2887->g_141.z", print_hash_value);
    transparent_crc(p_2887->g_204, "p_2887->g_204", print_hash_value);
    transparent_crc(p_2887->g_212.x, "p_2887->g_212.x", print_hash_value);
    transparent_crc(p_2887->g_212.y, "p_2887->g_212.y", print_hash_value);
    transparent_crc(p_2887->g_212.z, "p_2887->g_212.z", print_hash_value);
    transparent_crc(p_2887->g_212.w, "p_2887->g_212.w", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_2887->g_276[i][j][k], "p_2887->g_276[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2887->g_305.x, "p_2887->g_305.x", print_hash_value);
    transparent_crc(p_2887->g_320.x, "p_2887->g_320.x", print_hash_value);
    transparent_crc(p_2887->g_320.y, "p_2887->g_320.y", print_hash_value);
    transparent_crc(p_2887->g_320.z, "p_2887->g_320.z", print_hash_value);
    transparent_crc(p_2887->g_364, "p_2887->g_364", print_hash_value);
    transparent_crc(p_2887->g_403.x, "p_2887->g_403.x", print_hash_value);
    transparent_crc(p_2887->g_414.x, "p_2887->g_414.x", print_hash_value);
    transparent_crc(p_2887->g_414.y, "p_2887->g_414.y", print_hash_value);
    transparent_crc(p_2887->g_422.x, "p_2887->g_422.x", print_hash_value);
    transparent_crc(p_2887->g_422.y, "p_2887->g_422.y", print_hash_value);
    transparent_crc(p_2887->g_425.x, "p_2887->g_425.x", print_hash_value);
    transparent_crc(p_2887->g_426, "p_2887->g_426", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        transparent_crc(p_2887->g_457[i], "p_2887->g_457[i]", print_hash_value);

    }
    transparent_crc(p_2887->g_489.x, "p_2887->g_489.x", print_hash_value);
    transparent_crc(p_2887->g_489.y, "p_2887->g_489.y", print_hash_value);
    transparent_crc(p_2887->g_504.x, "p_2887->g_504.x", print_hash_value);
    transparent_crc(p_2887->g_505.x, "p_2887->g_505.x", print_hash_value);
    transparent_crc(p_2887->g_505.y, "p_2887->g_505.y", print_hash_value);
    transparent_crc(p_2887->g_505.z, "p_2887->g_505.z", print_hash_value);
    transparent_crc(p_2887->g_505.w, "p_2887->g_505.w", print_hash_value);
    transparent_crc(p_2887->g_527.x, "p_2887->g_527.x", print_hash_value);
    transparent_crc(p_2887->g_527.y, "p_2887->g_527.y", print_hash_value);
    transparent_crc(p_2887->g_527.z, "p_2887->g_527.z", print_hash_value);
    transparent_crc(p_2887->g_534.x, "p_2887->g_534.x", print_hash_value);
    transparent_crc(p_2887->g_569.x, "p_2887->g_569.x", print_hash_value);
    transparent_crc(p_2887->g_569.y, "p_2887->g_569.y", print_hash_value);
    transparent_crc(p_2887->g_569.z, "p_2887->g_569.z", print_hash_value);
    transparent_crc(p_2887->g_570.x, "p_2887->g_570.x", print_hash_value);
    transparent_crc(p_2887->g_570.y, "p_2887->g_570.y", print_hash_value);
    transparent_crc(p_2887->g_574.x, "p_2887->g_574.x", print_hash_value);
    transparent_crc(p_2887->g_574.y, "p_2887->g_574.y", print_hash_value);
    transparent_crc(p_2887->g_574.z, "p_2887->g_574.z", print_hash_value);
    transparent_crc(p_2887->g_592.x, "p_2887->g_592.x", print_hash_value);
    transparent_crc(p_2887->g_592.y, "p_2887->g_592.y", print_hash_value);
    transparent_crc(p_2887->g_616.x, "p_2887->g_616.x", print_hash_value);
    transparent_crc(p_2887->g_616.y, "p_2887->g_616.y", print_hash_value);
    transparent_crc(p_2887->g_617.x, "p_2887->g_617.x", print_hash_value);
    transparent_crc(p_2887->g_628.x, "p_2887->g_628.x", print_hash_value);
    transparent_crc(p_2887->g_628.y, "p_2887->g_628.y", print_hash_value);
    transparent_crc(p_2887->g_628.z, "p_2887->g_628.z", print_hash_value);
    transparent_crc(p_2887->g_631.x, "p_2887->g_631.x", print_hash_value);
    transparent_crc(p_2887->g_631.y, "p_2887->g_631.y", print_hash_value);
    transparent_crc(p_2887->g_634.x, "p_2887->g_634.x", print_hash_value);
    transparent_crc(p_2887->g_634.y, "p_2887->g_634.y", print_hash_value);
    transparent_crc(p_2887->g_635.x, "p_2887->g_635.x", print_hash_value);
    transparent_crc(p_2887->g_723.x, "p_2887->g_723.x", print_hash_value);
    transparent_crc(p_2887->g_723.y, "p_2887->g_723.y", print_hash_value);
    transparent_crc(p_2887->g_723.z, "p_2887->g_723.z", print_hash_value);
    transparent_crc(p_2887->g_723.w, "p_2887->g_723.w", print_hash_value);
    transparent_crc(p_2887->g_731.x, "p_2887->g_731.x", print_hash_value);
    transparent_crc(p_2887->g_731.y, "p_2887->g_731.y", print_hash_value);
    transparent_crc(p_2887->g_731.z, "p_2887->g_731.z", print_hash_value);
    transparent_crc(p_2887->g_801.x, "p_2887->g_801.x", print_hash_value);
    transparent_crc(p_2887->g_801.y, "p_2887->g_801.y", print_hash_value);
    transparent_crc(p_2887->g_801.z, "p_2887->g_801.z", print_hash_value);
    transparent_crc(p_2887->g_857.x, "p_2887->g_857.x", print_hash_value);
    transparent_crc(p_2887->g_857.y, "p_2887->g_857.y", print_hash_value);
    transparent_crc(p_2887->g_857.z, "p_2887->g_857.z", print_hash_value);
    transparent_crc(p_2887->g_919.x, "p_2887->g_919.x", print_hash_value);
    transparent_crc(p_2887->g_919.y, "p_2887->g_919.y", print_hash_value);
    transparent_crc(p_2887->g_919.z, "p_2887->g_919.z", print_hash_value);
    transparent_crc(p_2887->g_978.x, "p_2887->g_978.x", print_hash_value);
    transparent_crc(p_2887->g_982.x, "p_2887->g_982.x", print_hash_value);
    transparent_crc(p_2887->g_982.y, "p_2887->g_982.y", print_hash_value);
    transparent_crc(p_2887->g_982.z, "p_2887->g_982.z", print_hash_value);
    transparent_crc(p_2887->g_982.w, "p_2887->g_982.w", print_hash_value);
    transparent_crc(p_2887->g_1199.x, "p_2887->g_1199.x", print_hash_value);
    transparent_crc(p_2887->g_1199.y, "p_2887->g_1199.y", print_hash_value);
    transparent_crc(p_2887->g_1199.z, "p_2887->g_1199.z", print_hash_value);
    transparent_crc(p_2887->g_1231.x, "p_2887->g_1231.x", print_hash_value);
    transparent_crc(p_2887->g_1231.y, "p_2887->g_1231.y", print_hash_value);
    transparent_crc(p_2887->g_1231.z, "p_2887->g_1231.z", print_hash_value);
    transparent_crc(p_2887->g_1231.w, "p_2887->g_1231.w", print_hash_value);
    transparent_crc(p_2887->g_1249.x, "p_2887->g_1249.x", print_hash_value);
    transparent_crc(p_2887->g_1249.y, "p_2887->g_1249.y", print_hash_value);
    transparent_crc(p_2887->g_1280.x, "p_2887->g_1280.x", print_hash_value);
    transparent_crc(p_2887->g_1280.y, "p_2887->g_1280.y", print_hash_value);
    transparent_crc(p_2887->g_1374.x, "p_2887->g_1374.x", print_hash_value);
    transparent_crc(p_2887->g_1374.y, "p_2887->g_1374.y", print_hash_value);
    transparent_crc(p_2887->g_1374.z, "p_2887->g_1374.z", print_hash_value);
    transparent_crc(p_2887->g_1374.w, "p_2887->g_1374.w", print_hash_value);
    transparent_crc(p_2887->g_1518.x, "p_2887->g_1518.x", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_2887->g_1637[i], "p_2887->g_1637[i]", print_hash_value);

    }
    transparent_crc(p_2887->g_1665.x, "p_2887->g_1665.x", print_hash_value);
    transparent_crc(p_2887->g_1665.y, "p_2887->g_1665.y", print_hash_value);
    transparent_crc(p_2887->g_1668.x, "p_2887->g_1668.x", print_hash_value);
    transparent_crc(p_2887->g_1675.x, "p_2887->g_1675.x", print_hash_value);
    transparent_crc(p_2887->g_1675.y, "p_2887->g_1675.y", print_hash_value);
    transparent_crc(p_2887->g_1675.z, "p_2887->g_1675.z", print_hash_value);
    transparent_crc(p_2887->g_1675.w, "p_2887->g_1675.w", print_hash_value);
    transparent_crc(p_2887->g_1679.x, "p_2887->g_1679.x", print_hash_value);
    transparent_crc(p_2887->g_1679.y, "p_2887->g_1679.y", print_hash_value);
    transparent_crc(p_2887->g_1680.x, "p_2887->g_1680.x", print_hash_value);
    transparent_crc(p_2887->g_1680.y, "p_2887->g_1680.y", print_hash_value);
    transparent_crc(p_2887->g_1683.x, "p_2887->g_1683.x", print_hash_value);
    transparent_crc(p_2887->g_1712.x, "p_2887->g_1712.x", print_hash_value);
    transparent_crc(p_2887->g_1712.y, "p_2887->g_1712.y", print_hash_value);
    transparent_crc(p_2887->g_1712.z, "p_2887->g_1712.z", print_hash_value);
    transparent_crc(p_2887->g_1712.w, "p_2887->g_1712.w", print_hash_value);
    transparent_crc(p_2887->g_1713.x, "p_2887->g_1713.x", print_hash_value);
    transparent_crc(p_2887->g_1713.y, "p_2887->g_1713.y", print_hash_value);
    transparent_crc(p_2887->g_1880.x, "p_2887->g_1880.x", print_hash_value);
    transparent_crc(p_2887->g_1880.y, "p_2887->g_1880.y", print_hash_value);
    transparent_crc(p_2887->g_1908.x, "p_2887->g_1908.x", print_hash_value);
    transparent_crc(p_2887->g_2000.x, "p_2887->g_2000.x", print_hash_value);
    transparent_crc(p_2887->g_2000.y, "p_2887->g_2000.y", print_hash_value);
    transparent_crc(p_2887->g_2000.z, "p_2887->g_2000.z", print_hash_value);
    transparent_crc(p_2887->g_2000.w, "p_2887->g_2000.w", print_hash_value);
    transparent_crc(p_2887->g_2003.x, "p_2887->g_2003.x", print_hash_value);
    transparent_crc(p_2887->g_2003.y, "p_2887->g_2003.y", print_hash_value);
    transparent_crc(p_2887->g_2008.x, "p_2887->g_2008.x", print_hash_value);
    transparent_crc(p_2887->g_2010.x, "p_2887->g_2010.x", print_hash_value);
    transparent_crc(p_2887->g_2010.y, "p_2887->g_2010.y", print_hash_value);
    transparent_crc(p_2887->g_2010.z, "p_2887->g_2010.z", print_hash_value);
    transparent_crc(p_2887->g_2010.w, "p_2887->g_2010.w", print_hash_value);
    transparent_crc(p_2887->g_2031.x, "p_2887->g_2031.x", print_hash_value);
    transparent_crc(p_2887->g_2079.x, "p_2887->g_2079.x", print_hash_value);
    transparent_crc(p_2887->g_2079.y, "p_2887->g_2079.y", print_hash_value);
    transparent_crc(p_2887->g_2079.z, "p_2887->g_2079.z", print_hash_value);
    transparent_crc(p_2887->g_2079.w, "p_2887->g_2079.w", print_hash_value);
    transparent_crc(p_2887->g_2082.x, "p_2887->g_2082.x", print_hash_value);
    transparent_crc(p_2887->g_2082.y, "p_2887->g_2082.y", print_hash_value);
    transparent_crc(p_2887->g_2082.z, "p_2887->g_2082.z", print_hash_value);
    transparent_crc(p_2887->g_2082.w, "p_2887->g_2082.w", print_hash_value);
    transparent_crc(p_2887->g_2097.x, "p_2887->g_2097.x", print_hash_value);
    transparent_crc(p_2887->g_2097.y, "p_2887->g_2097.y", print_hash_value);
    transparent_crc(p_2887->g_2110.x, "p_2887->g_2110.x", print_hash_value);
    transparent_crc(p_2887->g_2110.y, "p_2887->g_2110.y", print_hash_value);
    transparent_crc(p_2887->g_2120.x, "p_2887->g_2120.x", print_hash_value);
    transparent_crc(p_2887->g_2120.y, "p_2887->g_2120.y", print_hash_value);
    transparent_crc(p_2887->g_2120.z, "p_2887->g_2120.z", print_hash_value);
    transparent_crc(p_2887->g_2120.w, "p_2887->g_2120.w", print_hash_value);
    transparent_crc(p_2887->g_2133.x, "p_2887->g_2133.x", print_hash_value);
    transparent_crc(p_2887->g_2133.y, "p_2887->g_2133.y", print_hash_value);
    transparent_crc(p_2887->g_2133.z, "p_2887->g_2133.z", print_hash_value);
    transparent_crc(p_2887->g_2177.x, "p_2887->g_2177.x", print_hash_value);
    transparent_crc(p_2887->g_2177.y, "p_2887->g_2177.y", print_hash_value);
    transparent_crc(p_2887->g_2177.z, "p_2887->g_2177.z", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            for (int k = 0; k < 2; k++)
            {
                transparent_crc(p_2887->g_2184[i][j][k], "p_2887->g_2184[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2887->g_2189.x, "p_2887->g_2189.x", print_hash_value);
    transparent_crc(p_2887->g_2205.x, "p_2887->g_2205.x", print_hash_value);
    transparent_crc(p_2887->g_2211.x, "p_2887->g_2211.x", print_hash_value);
    transparent_crc(p_2887->g_2307.x, "p_2887->g_2307.x", print_hash_value);
    transparent_crc(p_2887->g_2312.x, "p_2887->g_2312.x", print_hash_value);
    transparent_crc(p_2887->g_2312.y, "p_2887->g_2312.y", print_hash_value);
    transparent_crc(p_2887->g_2312.z, "p_2887->g_2312.z", print_hash_value);
    transparent_crc(p_2887->g_2312.w, "p_2887->g_2312.w", print_hash_value);
    transparent_crc(p_2887->g_2313.x, "p_2887->g_2313.x", print_hash_value);
    transparent_crc(p_2887->g_2313.y, "p_2887->g_2313.y", print_hash_value);
    transparent_crc(p_2887->g_2313.z, "p_2887->g_2313.z", print_hash_value);
    transparent_crc(p_2887->g_2338, "p_2887->g_2338", print_hash_value);
    transparent_crc(p_2887->g_2437.x, "p_2887->g_2437.x", print_hash_value);
    transparent_crc(p_2887->g_2437.y, "p_2887->g_2437.y", print_hash_value);
    transparent_crc(p_2887->g_2468.x, "p_2887->g_2468.x", print_hash_value);
    transparent_crc(p_2887->g_2468.y, "p_2887->g_2468.y", print_hash_value);
    transparent_crc(p_2887->g_2468.z, "p_2887->g_2468.z", print_hash_value);
    transparent_crc(p_2887->g_2468.w, "p_2887->g_2468.w", print_hash_value);
    transparent_crc(p_2887->g_2486.x, "p_2887->g_2486.x", print_hash_value);
    transparent_crc(p_2887->g_2486.y, "p_2887->g_2486.y", print_hash_value);
    transparent_crc(p_2887->g_2490.x, "p_2887->g_2490.x", print_hash_value);
    transparent_crc(p_2887->g_2490.y, "p_2887->g_2490.y", print_hash_value);
    transparent_crc(p_2887->g_2518, "p_2887->g_2518", print_hash_value);
    transparent_crc(p_2887->g_2530.x, "p_2887->g_2530.x", print_hash_value);
    transparent_crc(p_2887->g_2530.y, "p_2887->g_2530.y", print_hash_value);
    transparent_crc(p_2887->g_2530.z, "p_2887->g_2530.z", print_hash_value);
    transparent_crc(p_2887->g_2530.w, "p_2887->g_2530.w", print_hash_value);
    transparent_crc(p_2887->g_2542.x, "p_2887->g_2542.x", print_hash_value);
    transparent_crc(p_2887->g_2542.y, "p_2887->g_2542.y", print_hash_value);
    transparent_crc(p_2887->g_2580.x, "p_2887->g_2580.x", print_hash_value);
    transparent_crc(p_2887->g_2580.y, "p_2887->g_2580.y", print_hash_value);
    transparent_crc(p_2887->g_2580.z, "p_2887->g_2580.z", print_hash_value);
    transparent_crc(p_2887->g_2580.w, "p_2887->g_2580.w", print_hash_value);
    transparent_crc(p_2887->g_2586.x, "p_2887->g_2586.x", print_hash_value);
    transparent_crc(p_2887->g_2586.y, "p_2887->g_2586.y", print_hash_value);
    transparent_crc(p_2887->g_2590.x, "p_2887->g_2590.x", print_hash_value);
    transparent_crc(p_2887->g_2590.y, "p_2887->g_2590.y", print_hash_value);
    transparent_crc(p_2887->g_2614.x, "p_2887->g_2614.x", print_hash_value);
    transparent_crc(p_2887->g_2614.y, "p_2887->g_2614.y", print_hash_value);
    transparent_crc(p_2887->g_2614.z, "p_2887->g_2614.z", print_hash_value);
    transparent_crc(p_2887->g_2661.x, "p_2887->g_2661.x", print_hash_value);
    transparent_crc(p_2887->g_2661.y, "p_2887->g_2661.y", print_hash_value);
    transparent_crc(p_2887->g_2661.z, "p_2887->g_2661.z", print_hash_value);
    transparent_crc(p_2887->g_2667.x, "p_2887->g_2667.x", print_hash_value);
    transparent_crc(p_2887->g_2698, "p_2887->g_2698", print_hash_value);
    transparent_crc(p_2887->g_2741.x, "p_2887->g_2741.x", print_hash_value);
    transparent_crc(p_2887->g_2741.y, "p_2887->g_2741.y", print_hash_value);
    transparent_crc(p_2887->g_2741.z, "p_2887->g_2741.z", print_hash_value);
    transparent_crc(p_2887->g_2741.w, "p_2887->g_2741.w", print_hash_value);
    transparent_crc(p_2887->g_2764.x, "p_2887->g_2764.x", print_hash_value);
    transparent_crc(p_2887->g_2764.y, "p_2887->g_2764.y", print_hash_value);
    transparent_crc(p_2887->g_2764.z, "p_2887->g_2764.z", print_hash_value);
    transparent_crc(p_2887->g_2764.w, "p_2887->g_2764.w", print_hash_value);
    transparent_crc(p_2887->g_2783, "p_2887->g_2783", print_hash_value);
    transparent_crc(p_2887->g_2842.x, "p_2887->g_2842.x", print_hash_value);
    transparent_crc(p_2887->g_2842.y, "p_2887->g_2842.y", print_hash_value);
    transparent_crc(p_2887->g_2842.z, "p_2887->g_2842.z", print_hash_value);
    transparent_crc(p_2887->g_2843.x, "p_2887->g_2843.x", print_hash_value);
    transparent_crc(p_2887->g_2843.y, "p_2887->g_2843.y", print_hash_value);
    transparent_crc(p_2887->g_2843.z, "p_2887->g_2843.z", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            transparent_crc(p_2887->g_2858[i][j], "p_2887->g_2858[i][j]", print_hash_value);

        }
    }

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

