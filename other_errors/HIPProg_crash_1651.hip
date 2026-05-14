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
// Seed: 322168816

/* --- Struct/Union Declarations --- */
struct S0 {
   signed f0 : 18;
};

struct S1 {
   uint32_t  f0;
   uint32_t  f1;
   uint16_t  f2;
   int16_t  f3;
   struct S0  f4;
   int64_t  f5;
   int32_t  f6;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ int32_t hip_const_1;
__constant__ int32_t hip_const_2;
__constant__ struct S1 hip_const_3;
__constant__ int16_t hip_const_4;
__constant__ struct S0 hip_const_5[10];
__constant__ struct S0 hip_const_6;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        int32_t host_hip_const_1 = (-9L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        int32_t host_hip_const_2 = 0x6182EAC4L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        struct S1 host_hip_const_3 = {0x72226312L,0xFF23B1A9L,0x65E0L,0xCCCDL,{125},0xD8F8F576C5165352LL,1L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int16_t host_hip_const_4 = (-10L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        struct S0 host_hip_const_5[10] = {{-257}, {-44}, {225}, {225}, {-44}, {-257}, {-44}, {225}, {225}, {-44}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        struct S0 host_hip_const_6 = {262};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
}

struct S2 {
    int64_t g_22[1];
    int32_t g_29[3];
    int4 g_54;
    int8_t g_63;
    ulong2 g_67;
    uint1 g_94;
    char3 g_109;
    int64_t *g_125[5];
    int32_t *g_162;
    ulong2 g_189;
    uint8_t g_247;
    int32_t **g_271;
    int32_t ***g_270[6];
    int1 g_302;
    long3 g_354;
    int16_t g_375;
    struct S1 *g_385;
    struct S1 **g_384[5][4][5];
    struct S1 ***g_383;
    char3 g_398;
    ulong2 g_407;
    uint16_t g_413;
    struct S1 ****g_429[10];
    struct S1 *****g_428;
    char4 g_448;
    uint32_t g_462;
    uint2 g_472;
    uint1 g_473;
    int4 g_476;
    short1 g_479;
    uchar1 g_491;
    long1 g_508;
    short1 g_544;
    ulong1 g_549;
    uchar3 g_565;
    char4 g_578;
    uint64_t *g_584;
    int1 g_620;
    long1 g_623;
    int8_t *g_644;
    int8_t **g_643;
    int3 g_688;
    int1 g_720;
    uchar2 g_750;
    long3 g_758;
    long1 g_759;
    short2 g_784;
    short3 g_786;
    uchar1 g_815;
    ulong4 g_839;
    short4 g_867;
    char4 g_905;
    ulong3 g_910;
    int4 g_919;
    int2 g_920;
    int4 g_958;
    int2 g_962;
    int4 g_965;
    int1 g_974;
    char3 g_1074;
    int2 g_1089;
    ushort2 g_1114;
    uint2 g_1130;
    char3 g_1136;
    uint8_t g_1160;
    long2 g_1209;
    uchar2 g_1210;
    int64_t g_1251;
    int32_t *****g_1252;
    int8_t g_1313;
    struct S0 *g_1328;
    char2 g_1351;
    int3 g_1381;
    ulong1 g_1413;
    char3 g_1429;
    short3 g_1461;
    short4 g_1462;
    short4 g_1463;
    short3 g_1505;
    short2 g_1506;
    long3 g_1571;
    long3 g_1573;
    int16_t *g_1576;
    long2 g_1587;
    int2 g_1588;
    int1 g_1611;
    uint3 g_1638;
    long4 g_1647;
    int4 g_1682;
    struct S1 *****g_1683;
    int32_t *g_1696;
    char1 g_1702;
    ushort3 g_1780;
    int32_t g_1795;
    int2 g_1833;
    short4 g_1882;
    uint8_t g_1921;
    char3 g_1923;
    char1 g_1968;
    char2 g_1987;
    uchar3 g_2016;
    int32_t g_2046;
    int4 g_2071;
    uint32_t *g_2083;
    uint32_t **g_2082[8][9];
    char1 g_2097;
    char4 g_2104;
    int1 g_2114;
    long4 g_2168;
    long3 g_2169;
    int4 g_2175;
    int3 g_2176;
    short4 g_2195;
    long3 g_2211;
    uint1 g_2213;
    uint4 g_2216;
    ulong3 g_2251;
    ulong1 g_2258;
    uint32_t ****g_2334;
    ushort3 g_2365;
    ushort4 g_2366;
    uchar3 g_2407;
    struct S0 ***g_2425;
    struct S0 **g_2428;
    struct S0 ***g_2427;
    uint32_t *****g_2457;
    ushort1 g_2505;
    int3 g_2548;
    uint64_t g_2564;
    ushort2 g_2570;
    int1 g_2578;
    int2 g_2582;
    int2 g_2585;
    int1 g_2586;
    int1 g_2587;
    short4 g_2592;
    long2 g_2689;
    uint64_t **g_2714;
    uint64_t ***g_2713[10];
    int3 g_2731;
    uchar2 g_2762;
    char2 g_2891;
    uint8_t g_2901;
    uint4 g_2908;
    int16_t g_2943;
    int1 g_2978;
    long3 g_2992;
    uint4 g_3009;
    uint1 g_3010;
    uint2 g_3013;
    ushort2 g_3046;
    ushort1 g_3068;
    ushort3 g_3073;
    long1 g_3127;
    int8_t *****g_3128;
    uint32_t ***g_3184;
    uint4 g_3196;
    ulong3 g_3207;
    ulong3 g_3230;
    int32_t ****g_3232;
    ushort1 g_3237;
    uint32_t g_3238;
    int8_t g_3290;
    int8_t g_3291;
    int32_t g_3293;
    ulong2 g_3305;
    ulong3 g_3309;
    uint3 g_3337;
    uint3 g_3340;
    uchar2 g_3346;
    char1 g_3352;
    int3 g_3369;
    char4 g_3395;
    int32_t g_3401;
    int8_t ***g_3449;
    ulong1 g_3455;
    ulong1 g_3476;
    int32_t *g_3513;
    uchar3 g_3566;
    uchar2 g_3567;
    int64_t g_3594;
    ulong1 g_3611;
    ushort4 g_3665;
    ushort2 g_3669;
    short1 g_3676;
    uchar2 g_3685;
    ushort3 g_3711;
    long4 g_3728;
    uint16_t **g_3785;
    uint16_t ***g_3784;
    ulong4 g_3807;
    short3 g_3828;
    char1 g_3838;
    int1 g_3851;
    char3 g_3859;
    ulong3 g_3868;
    uint1 g_3875;
    uint16_t ****g_3941;
    int16_t g_3953;
    uint64_t g_3980;
    int32_t g_3995;
    int4 g_3996;
    long1 g_4048;
    char4 g_4055;
    long1 g_4074;
    int4 g_4114;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S2 * p_4115);
__device__ int32_t * func_2(int32_t * p_3, int32_t * p_4, int32_t * p_5, int32_t * p_6, uint16_t  p_7, struct S2 * p_4115);
__device__ int32_t * func_8(int32_t  p_9, int32_t * p_10, uint32_t  p_11, struct S2 * p_4115);
__device__ uint64_t  func_14(int32_t * p_15, struct S2 * p_4115);
__device__ int32_t * func_16(int32_t * p_17, struct S2 * p_4115);
__device__ int32_t * func_18(uint32_t  p_19, int32_t  p_20, int32_t  p_21, struct S2 * p_4115);
__device__ int8_t  func_24(int32_t  p_25, struct S2 * p_4115);
__device__ uint8_t  func_32(int8_t  p_33, uint32_t  p_34, int32_t * p_35, struct S2 * p_4115);
__device__ int16_t  func_38(int64_t  p_39, int32_t * p_40, uint8_t  p_41, uint8_t  p_42, struct S2 * p_4115);
__device__ int16_t  func_47(uint32_t  p_48, int32_t * p_49, int32_t * p_50, uint8_t  p_51, struct S2 * p_4115);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_3.f0 p_4115->g_22 hip_const_3.f3 p_4115->g_271 p_4115->g_1413 p_4115->g_644 p_4115->g_63 p_4115->g_162 p_4115->g_1209 p_4115->g_1506 p_4115->g_643 p_4115->g_413 p_4115->g_1313 hip_const_5.f0 p_4115->g_448 hip_const_1 p_4115->g_1921 p_4115->g_1923 p_4115->g_1328 hip_const_3.f4 p_4115->g_29 p_4115->g_1089 p_4115->g_2334 p_4115->g_1571 p_4115->g_1505 p_4115->g_2365 p_4115->g_2366 p_4115->g_428 p_4115->g_429 p_4115->g_383 p_4115->g_384 p_4115->g_2407 p_4115->g_67 hip_const_4 p_4115->g_2425 p_4115->g_2427 p_4115->g_1252 p_4115->g_189 p_4115->g_2216 p_4115->g_786 p_4115->g_549 p_4115->g_565 p_4115->g_2016 p_4115->g_2689 p_4115->g_1611 p_4115->g_270 p_4115->g_2713 p_4115->g_965 p_4115->g_385 hip_const_3 p_4115->g_2731 p_4115->g_462 hip_const_2 p_4115->g_1968 p_4115->g_584 p_4115->g_2714 p_4115->g_2582 p_4115->g_1638 p_4115->g_2978 p_4115->g_2992 p_4115->g_920 p_4115->g_3009 p_4115->g_3010 p_4115->g_3013 p_4115->g_3046 p_4115->g_2457 p_4115->g_2046 p_4115->g_2943 p_4115->g_1429 p_4115->g_2564 p_4115->g_2505 p_4115->g_3238 p_4115->g_3455 p_4115->g_1160 p_4115->g_1588 p_4115->g_3513 p_4115->g_2097 p_4115->g_2548 p_4115->g_3232 p_4115->g_3290 p_4115->g_3449 p_4115->g_1462 p_4115->g_1795 p_4115->g_3784 p_4115->g_3073 p_4115->g_750 p_4115->g_3128 p_4115->g_3785 p_4115->g_1251 p_4115->g_3980 p_4115->g_1114 p_4115->g_3669 p_4115->g_4114 p_4115->g_919
 * writes: p_4115->g_29 p_4115->g_162 p_4115->g_63 p_4115->g_462 p_4115->g_1313 p_4115->g_1413 p_4115->g_413 p_4115->g_383 p_4115->g_385 p_4115->g_1328 p_4115->g_247 p_4115->g_429 p_4115->g_384 p_4115->g_786 p_4115->g_2425 p_4115->g_2457 p_4115->g_2564 p_4115->g_2082 p_4115->g_271 p_4115->g_1968 p_4115->g_375 p_4115->g_584 p_4115->g_2366 p_4115->g_2046 p_4115->g_2943 p_4115->g_3184 p_4115->g_565 p_4115->g_1921 p_4115->g_3232 p_4115->g_3068 p_4115->g_3238 p_4115->g_3290 p_4115->g_3449 p_4115->g_1160 p_4115->g_270 p_4115->g_1795 p_4115->g_2901 p_4115->g_3291 p_4115->g_3941 p_4115->g_1251 p_4115->g_3953 p_4115->g_3980 p_4115->g_3293 p_4115->g_3995 p_4115->g_3669
 */
__device__ uint32_t  func_1(struct S2 * p_4115)
{ /* block id: 0 */
    uint64_t l_23 = 18446744073709551615UL;
    int32_t *l_3456 = nullptr;
    int8_t l_3457 = 0x5BL;
    int32_t *l_3458 = nullptr;
    l_3458 = func_2(func_8((l_3457 = (0xDCDAL >= ((((((safe_rshift(make_ulong1(func_14(func_16(func_18(hip_const_3.f0, p_4115->g_22[0], (hip_const_3.f3 || l_23), p_4115), p_4115), p_4115)), make_ulong1(64)))) ^ make_ulong1(p_4115->g_3455.x))).x <= l_23) , l_23))), l_3458, p_4115->g_2216.x, p_4115), l_3458, &hip_const_2, &hip_const_2, l_23, p_4115);
    return p_4115->g_919.w;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_2 p_4115->g_2046 p_4115->g_1251 p_4115->g_3980 p_4115->g_3238 p_4115->g_1313 p_4115->g_22 p_4115->g_644 p_4115->g_63 p_4115->g_643 p_4115->g_1588 p_4115->g_3513 p_4115->g_2097 p_4115->g_2548 p_4115->g_3232 p_4115->g_270 p_4115->g_2992 p_4115->g_3290 p_4115->g_1968 p_4115->g_3784 p_4115->g_3449 p_4115->g_29 p_4115->g_3073 p_4115->g_750 p_4115->g_3128 p_4115->g_3785 p_4115->g_1114 p_4115->g_2731 p_4115->g_162 p_4115->g_584 p_4115->g_2714 p_4115->g_2582 p_4115->g_1638 p_4115->g_1921 p_4115->g_3669 p_4115->g_4114
 * writes: p_4115->g_2046 p_4115->g_1251 p_4115->g_1921 p_4115->g_3953 p_4115->g_3980 p_4115->g_3293 p_4115->g_462 p_4115->g_1160 p_4115->g_3290 p_4115->g_1313 p_4115->g_63 p_4115->g_247 p_4115->g_3238 p_4115->g_270 p_4115->g_1795 p_4115->g_2901 p_4115->g_3291 p_4115->g_3941 p_4115->g_3995 p_4115->g_2564 p_4115->g_2082 p_4115->g_162 p_4115->g_271 p_4115->g_1968 p_4115->g_375 p_4115->g_584 p_4115->g_3669
 */
__device__ int32_t * func_2(int32_t * p_3, int32_t * p_4, int32_t * p_5, int32_t * p_6, uint16_t  p_7, struct S2 * p_4115)
{ /* block id: 1570 */
    int32_t *l_3958 = nullptr;
    int32_t *l_3959 = nullptr;
    int32_t *l_3960 = nullptr;
    int32_t *l_3961 = nullptr;
    int32_t *l_3962 = nullptr;
    int32_t *l_3963 = &p_4115->g_2046;
    struct S0 l_3964 = {-301};
    int32_t l_3976 = 0x37831DD7L;
    int32_t l_3979 = 0xEB9D45F7L;
    int32_t l_4005 = 0L;
    int32_t l_4008[8][8][2] = {{{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}, {{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}, {{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}, {{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}, {{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}, {{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}, {{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}, {{5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}, {5L, 0L}}};
    uint64_t l_4009 = 0x82DACC761AFB7E88LL;
    __shared__ uint64_t ***l_4013;
    l_4013 = nullptr;
    int8_t l_4031 = 1L;
    int8_t l_4037 = 0xCFL;
    ulong3 l_4071 = make_ulong3(18446744073709551607UL, 0xF50FDCB9B21E69ECLL, 18446744073709551607UL);
    uint32_t l_4078 = 6UL;
    __shared__ uint3 l_4102;
    l_4102 = make_uint3(8UL, 0x8E928019L, 8UL);
    uint32_t ***l_4112 = &p_4115->g_2082[5][2];
    int i, j, k;
    (*l_3963) &= (*p_5);
    p_6 = nullptr;
    for (p_4115->g_1251 = 0; (p_4115->g_1251 >= 0); p_4115->g_1251 -= 1)
    { /* block id: 1575 */
        // attempting a hip shared for loop
        __shared__ int32_t l_3966[4];
        for (int i = 0; i < 4; i++)
            l_3966[i] = 0L;
        int32_t l_3975 = (-9L);
        int8_t l_3977 = 0xD8L;
        __shared__ int32_t l_3978;
        l_3978 = 0xC5FC3828L;
        int32_t l_4007 = 0xF810AB62L;
        __shared__ int2 l_4012;
        l_4012 = make_int2(1L, (-9L));
        uint16_t l_4038 = 65535UL;
        uint64_t ****l_4042 = &l_4013;
        long3 l_4049 = make_long3(0L, 0xCEF80FF09B79336DLL, 0L);
        struct S0 l_4052 = {-322};
        ulong3 l_4063 = make_ulong3(0x2DA6E6BECFC93FB5LL, 0x08684442F968255FLL, 0x2DA6E6BECFC93FB5LL);
        int16_t **l_4076[6][10] = {{&p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, nullptr, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576}, {&p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, nullptr, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576}, {&p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, nullptr, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576}, {&p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, nullptr, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576}, {&p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, nullptr, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576}, {&p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, nullptr, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576, &p_4115->g_1576}};
        int16_t **l_4077 = nullptr;
        int i, j;
        for (p_4115->g_1921 = 0; (p_4115->g_1921 <= 0); p_4115->g_1921 += 1)
        { /* block id: 1578 */
            struct S0 *l_3965 = &l_3964;
            (*l_3965) = l_3964;
        }
        for (p_4115->g_3953 = 0; (p_4115->g_3953 <= 0); p_4115->g_3953 += 1)
        { /* block id: 1583 */
            int32_t *l_3967 = nullptr;
            int32_t *l_3968 = &p_4115->g_2046;
            int32_t *l_3969 = nullptr;
            int32_t *l_3970 = nullptr;
            int32_t *l_3971 = &p_4115->g_29[1];
            __shared__ int32_t *l_3972;
            l_3972 = nullptr;
            int32_t *l_3973 = nullptr;
            int32_t *l_3974[2][8][3] = {{{nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}}, {{nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}, {nullptr, nullptr, &hip_const_1}}};
            int3 l_3994 = make_int3(0x692E474CL, 0xE57B6CD4L, 0x692E474CL);
            __shared__ int2 l_3997;
            l_3997 = make_int2(0x7D9A1F4DL, 9L);
            int8_t l_4003 = (-1L);
            int i, j, k;
            p_5 = l_3961;
            ++p_4115->g_3980;
            for (p_4115->g_3293 = 5; (p_4115->g_3293 >= 0); p_4115->g_3293 -= 1)
            { /* block id: 1588 */
                int16_t l_3985[9];
                __shared__ int16_t *l_3998;
                l_3998 = nullptr;
                int16_t *l_3999 = nullptr;
                int32_t l_4000 = 0xA2DAE7ACL;
                uint32_t *l_4001 = &p_4115->g_462;
                int64_t l_4002 = 0L;
                int i, j;
                for (int i = 0; i < 9; i++)
                    l_3985[i] = (-1L);
                (*l_3968) &= (safe_div_func_int8_t_s_s((l_3985[0] < make_ushort2(0xAB02L, 65534UL).y), p_7));
                if (l_3985[6])
                    break;
                p_5 = func_8((safe_lshift_func_int32_t_s_u(((make_uchar2(p_4115->g_2195.w, 0xDDL).y == (safe_rshift_func_int32_t_s_s((((((*l_3968) = (safe_add_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((((0x34L == p_7) == p_7) & ((((make_int4(make_int1(l_3994.x).x, p_4115->g_3995, 0x426EEC53L, 0x7690DE27L) ^ make_int4(p_4115->g_3996.w, p_4115->g_3996.w, p_4115->g_3996.w, p_4115->g_3996.w))) ^ ((make_int4(2L, 0xB19659DEL, 0x1C7490ECL, 0L) ^ make_int4(l_3997.y, l_3997.y, l_3997.y, l_3997.y))))).y), (l_4000 |= l_3985[0]))) , (p_7 > (-5L))) ^ ((*l_4001) = p_7)), l_4002))) , p_7) != 0xCF088E20L) <= p_4115->g_3238), l_3975))) , 0L), p_7)), p_3, l_3975, p_4115);
            }
            for (l_3975 = 0; (l_3975 <= 0); l_3975 += 1)
            { /* block id: 1598 */
                int64_t l_4004 = 0x29AD08EE58263C7DLL;
                int1 l_4006 = make_int1(0x1A4BB948L);
                int i;
                l_4009++;
            }
        }
        for (l_4007 = 7; (l_4007 >= 0); l_4007 -= 1)
        { /* block id: 1604 */
            uint64_t ***l_4015 = &p_4115->g_2714;
            struct S0 *l_4019 = &hip_const_5[6];
            int32_t l_4028 = 0L;
            int16_t l_4029[1][9][9] = {{{0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}, {0L, 0x454AL, 0L, (-8L), 0x9A67L, 0x2148L, 0L, 0x7422L, 0x162DL}}};
            int32_t l_4030 = 0x68E8340AL;
            int32_t l_4033 = (-1L);
            int32_t l_4035 = 0x08B0C53DL;
            int i, j, k;
            (*l_3963) = make_int1(l_4012.y).x;
            for (p_4115->g_3995 = 0; (p_4115->g_3995 >= 0); p_4115->g_3995 -= 1)
            { /* block id: 1608 */
                __shared__ struct S0 *l_4020;
                l_4020 = nullptr;
                int32_t l_4026[10] = {0xCD310BBBL, 0x9059CDF3L, 0xCD310BBBL, 0x9059CDF3L, 0xCD310BBBL, 0x9059CDF3L, 0xCD310BBBL, 0x9059CDF3L, 0xCD310BBBL, 0x9059CDF3L};
                int i;
                for (p_4115->g_3953 = 0; (p_4115->g_3953 >= 0); p_4115->g_3953 -= 1)
                { /* block id: 1611 */
                    __shared__ uint32_t l_4016;
                    l_4016 = 0UL;
                    for (p_4115->g_3293 = 0; (p_4115->g_3293 <= 0); p_4115->g_3293 += 1)
                    { /* block id: 1614 */
                        uint64_t ****l_4014[2];
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_4014[i] = &p_4115->g_2713[0];
                        l_4015 = l_4013;
                    }
                    l_4016++;
                }
                l_4020 = l_4019;
                for (p_4115->g_3953 = 0; (p_4115->g_3953 >= 0); p_4115->g_3953 -= 1)
                { /* block id: 1622 */
                    uint32_t l_4022 = 18446744073709551613UL;
                    int32_t l_4027 = 0x88E2AE0EL;
                    int32_t l_4032 = (-10L);
                    int32_t l_4034 = 0xABDDE8D9L;
                    int32_t l_4036[9][10] = {{0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}, {0x4167A0D6L, 1L, 1L, 0x3BB5CA15L, (-1L), 0x06FA391EL, 9L, 9L, 0x06FA391EL, (-1L)}};
                    int i, j;
                    (*l_3963) &= 0x4BCBED48L;
                    for (l_4009 = 0; (l_4009 <= 0); l_4009 += 1)
                    { /* block id: 1626 */
                        __shared__ char2 l_4021;
                        l_4021 = make_char2(0xAEL, 0x9CL);
                        int32_t *l_4025[4][8] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                        int i, j;
                        --l_4022;
                        ++l_4038;
                    }
                    if (l_4007)
                    { /* block id: 1630 */
                        uint64_t l_4041 = 1UL;
                        int32_t l_4043 = 1L;
                        struct S0 *l_4050 = &hip_const_5[6];
                        // attempting a hip shared for loop
                        __shared__ struct S0 *l_4051[10][8][3];
                        for (int i = 0; i < 10; i++)
                        {
                            for (int j = 0; j < 8; j++)
                            {
                                for (int k = 0; k < 3; k++)
                                    l_4051[i][j][k] = &hip_const_3.f4;
                            }
                        }
                        int i, j, k;
                        l_4052 = ((!(l_4043 = (l_4041 > (nullptr == l_4042)))) , (((safe_add(((safe_div(make_long2(1L, 1L), make_long2(p_4115->g_4048.x, p_4115->g_4048.x)))), make_long2(l_4049.z, l_4049.z)))).y , l_3964));
                    }
                    else
                    { /* block id: 1633 */
                        (*l_3963) ^= l_4034;
                    }
                }
            }
        }
        for (l_4005 = 0; (l_4005 >= 0); l_4005 -= 1)
        { /* block id: 1641 */
            int16_t l_4064 = 0xBC7CL;
            uint1 l_4065 = make_uint1(2UL);
            __shared__ char2 l_4066;
            l_4066 = make_char2(0x4CL, 0x05L);
            struct S0 l_4075[7][3] = {{{-335}, {-273}, {312}}, {{-335}, {-273}, {312}}, {{-335}, {-273}, {312}}, {{-335}, {-273}, {312}}, {{-335}, {-273}, {312}}, {{-335}, {-273}, {312}}, {{-335}, {-273}, {312}}};
            uint64_t *l_4079 = nullptr;
            uint64_t *l_4080 = nullptr;
            uint64_t *l_4081 = nullptr;
            uint32_t *l_4082 = nullptr;
            __shared__ uint32_t *l_4083;
            l_4083 = nullptr;
            uint32_t *l_4084 = &p_4115->g_3238;
            int32_t *l_4087 = nullptr;
            __shared__ int32_t l_4094;
            l_4094 = (-3L);
            int i, j;
            l_4075[2][2].f0 = (((l_4012.x = (l_3978 = (((safe_mod_func_int16_t_s_s((make_char2(p_4115->g_4055.w, p_4115->g_4055.w).y || ((safe_unary_minus_func_uint64_t_u((safe_mod_func_uint32_t_u_u((safe_div_func_int8_t_s_s(((l_4064 ^= make_ulong3(l_4063.x, l_4063.x, l_4063.x).y) && (make_uint4(l_4065.x, l_4065.x, l_4065.x, l_4065.x).w == 1L)), make_char4(l_4066.x, l_4066.x, l_4066.x, l_4066.x).z)), ((safe_div_func_uint64_t_u_u((l_4007 = (l_4052.f0 &= 0xE091B7559514309DLL)), (+((0x12L && ((safe_add_func_uint64_t_u_u(make_ulong3(l_4071.y, l_4071.y, l_4071.y).y, p_7)) | (((l_3960 = p_3) != l_4087) && 0xD6359E10L))) > p_7)))) , 1L))))) < p_7)), (*l_3963))) > 4UL) >= 0xF7AAL))) | l_4063.z) > p_4115->g_1114.x);
            (*l_3963) &= l_4052.f0;
            p_3 = func_8(l_4049.x, func_16(func_16(&l_4008[0][3][0], p_4115), p_4115), (safe_lshift_func_int16_t_s_s((safe_lshift_func_int64_t_s_s((safe_mul_func_int64_t_s_s(make_long3((*l_3963), (+(((l_4063.z <= l_3978) , l_4094) < 4UL)), (-1L)).x, l_3966[2])), 29)), 7)), p_4115);
        }
        for (p_4115->g_1921 = 0; (p_4115->g_1921 <= 0); p_4115->g_1921 += 1)
        { /* block id: 1659 */
            uint8_t *l_4097[4][4] = {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}};
            int32_t l_4098 = (-1L);
            __shared__ struct S0 l_4099;
            l_4099 = {402};
            int8_t *l_4103 = &l_4031;
            uint16_t *l_4108[4];
            int32_t l_4109 = (-1L);
            int32_t l_4113 = (-4L);
            int i, j;
            for (int i = 0; i < 4; i++)
                l_4108[i] = nullptr;
            l_4113 &= (((safe_mod_func_int16_t_s_s((18446744073709551612UL < ((l_4098 = (*l_3963)) && ((*l_4103) = (l_4099 , (~((**p_4115->g_643) = ((p_7 != make_uint4(l_4102.x, l_4102.x, l_4102.x, l_4102.x).x) || 0UL))))))), p_7)) <= (safe_lshift_func_int16_t_s_s((safe_add_func_uint16_t_u_u((--p_4115->g_3669.y), (l_4112 == l_4112))), 2))) | (!(((p_7 != l_4012.x) <= l_4109) | l_4007)));
            (*l_3963) = make_int3(p_4115->g_4114.w, p_4115->g_4114.w, p_4115->g_4114.w).y;
            return p_5;
        }
    }
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_4115->g_1313 p_4115->g_22 p_4115->g_644 p_4115->g_63 p_4115->g_643 p_4115->g_1588 p_4115->g_3513 p_4115->g_2097 p_4115->g_2548 hip_const_2 p_4115->g_3232 p_4115->g_270 p_4115->g_2992 p_4115->g_3290 p_4115->g_1968 p_4115->g_3784 p_4115->g_3449 p_4115->g_29 p_4115->g_3073 p_4115->g_750 p_4115->g_3128 p_4115->g_3785 p_4115->g_1160 p_4115->g_1462 p_4115->g_2564 p_4115->g_1795
 * writes: p_4115->g_1160 p_4115->g_3290 p_4115->g_1313 p_4115->g_63 p_4115->g_247 p_4115->g_462 p_4115->g_3238 p_4115->g_1921 p_4115->g_270 p_4115->g_1795 p_4115->g_2046 p_4115->g_2901 p_4115->g_3291 p_4115->g_3941 p_4115->g_2564
 */
__device__ int32_t * func_8(int32_t  p_9, int32_t * p_10, uint32_t  p_11, struct S2 * p_4115)
{ /* block id: 1365 */
    ushort3 l_3463 = make_ushort3(0xA777L, 0x5B63L, 0xA777L);
    ulong2 l_3470 = make_ulong2(18446744073709551615UL, 0x62B39746C3F0D202LL);
    struct S0 ****l_3475 = &p_4115->g_2425;
    int8_t ****l_3483 = &p_4115->g_3449;
    int32_t l_3510 = 8L;
    int32_t l_3511 = 0x6F59999BL;
    int4 l_3528 = make_int4(0x4F7CC056L, 0x9F2272EFL, 0x4F7CC056L, 0x9F2272EFL);
    struct S1 **l_3565 = nullptr;
    long4 l_3592 = make_long4((-1L), 0x985C54A5D215F1D1LL, (-1L), 0x985C54A5D215F1D1LL);
    uint64_t l_3595 = 2UL;
    int64_t l_3625 = 1L;
    ushort3 l_3670 = make_ushort3(0UL, 0x7478L, 0UL);
    __shared__ ushort4 l_3681;
    l_3681 = make_ushort4(0x5C16L, 4UL, 0x5C16L, 4UL);
    int4 l_3682 = make_int4((-10L), 0xF9DEC1DFL, (-10L), 0xF9DEC1DFL);
    int32_t *****l_3731 = &p_4115->g_3232;
    __shared__ uint16_t **l_3743;
    l_3743 = nullptr;
    __shared__ ulong2 l_3748;
    l_3748 = make_ulong2(18446744073709551611UL, 0xD3151A9C891C0374LL);
    ulong1 l_3749 = make_ulong1(6UL);
    short2 l_3754 = make_short2(0L, 0x3597L);
    // attempting a hip shared for loop
    __shared__ int32_t *l_3782[2];
    for (int i = 0; i < 2; i++)
        l_3782[i] = nullptr;
    int8_t l_3786 = 0L;
    __shared__ short2 l_3794;
    l_3794 = make_short2((-6L), 0x4832L);
    uint32_t l_3931 = 0x6B22B43FL;
    __shared__ int32_t l_3932;
    l_3932 = 0x13A3D6B9L;
    int4 l_3943 = make_int4(0x213C9CF6L, 0xDE779A6DL, 0x213C9CF6L, 0xDE779A6DL);
    int16_t l_3947 = 1L;
    int64_t l_3948 = 1L;
    uint32_t l_3954 = 1UL;
    __shared__ int32_t *l_3957;
    l_3957 = nullptr;
    int i;
    for (int i = 0; i < 2; i++)
        l_3782[i] = nullptr;
lbl_3598:
    p_9 = 1L;
    for (p_4115->g_1160 = 29; (p_4115->g_1160 != 29); p_4115->g_1160 = safe_add_func_int16_t_s_s(p_4115->g_1160, 5))
    { /* block id: 1369 */
        __shared__ uint8_t l_3473;
        l_3473 = 0x7AL;
        uint32_t l_3509 = 0xE550D270L;
        int32_t l_3512 = 0xD272699EL;
        // attempting a hip shared for loop
        __shared__ struct S1 ***l_3541[9][2];
        for (int i = 0; i < 9; i++)
        {
            for (int j = 0; j < 2; j++)
                l_3541[i][j] = &p_4115->g_384[2][2][4];
        }
        int32_t l_3576 = (-1L);
        int32_t l_3578 = 0x99B265C9L;
        int32_t l_3584 = (-1L);
        __shared__ int32_t l_3585;
        l_3585 = 7L;
        __shared__ int32_t l_3587;
        l_3587 = 8L;
        __shared__ int32_t l_3590;
        l_3590 = 0xA62D3EC6L;
        int2 l_3591 = make_int2(5L, 0xF2F5BE84L);
        uint1 l_3616 = make_uint1(0x32F79CCDL);
        int32_t l_3701 = 0x6F647DD3L;
        int8_t l_3705 = 0x0FL;
        uint32_t l_3706 = 4294967295UL;
        struct S1 ***l_3724 = &p_4115->g_384[2][2][4];
        ushort2 l_3727 = make_ushort2(65532UL, 0x526DL);
        uint16_t *l_3742 = &hip_const_3.f2;
        uint16_t **l_3741 = &l_3742;
        int8_t l_3757 = 8L;
        uint64_t *l_3758 = nullptr;
        uint64_t *l_3759 = &p_4115->g_2564;
        long3 l_3787 = make_long3(0x38DB1F7764B607BELL, 1L, 0x38DB1F7764B607BELL);
        long3 l_3804 = make_long3(0xD074569F0B240698LL, (-10L), 0xD074569F0B240698LL);
        struct S0 ****l_3813 = &p_4115->g_2427;
        ulong2 l_3860 = make_ulong2(1UL, 0xAA1F5644E88B7686LL);
        __shared__ ulong2 l_3864;
        l_3864 = make_ulong2(0xB370C3B947CBE838LL, 0xA73AE0C56A53EFF0LL);
        uint32_t l_3879[7][5];
        int32_t *l_3903 = nullptr;
        uint32_t l_3913 = 0xEAE0EE71L;
        __shared__ int32_t l_3924;
        l_3924 = 0xDB58836CL;
        uint32_t *l_3934[5][7][7] = {{{nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}}, {{nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}}, {{nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}}, {{nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}}, {{nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}, {nullptr, &hip_const_3.f1, &l_3706, nullptr, nullptr, &p_4115->g_462, nullptr}}};
        uint32_t *****l_3945 = &p_4115->g_2334;
        int i, j, k;
        for (int i = 0; i < 7; i++)
        {
            for (int j = 0; j < 5; j++)
                l_3879[i][j] = 18446744073709551613UL;
        }
        for (p_4115->g_3290 = 0; (p_4115->g_3290 <= (-29)); p_4115->g_3290 = safe_sub_func_uint16_t_u_u(p_4115->g_3290, 2))
        { /* block id: 1372 */
            struct S1 l_3477 = {0x91ECBDF2L,4294967295UL,2UL,0x88A6L,{-288},0xFA67B818E0E8F7A8LL,0xC25EFED8L};
            int8_t ****l_3482 = nullptr;
            __shared__ uint32_t l_3496;
            l_3496 = 4294967295UL;
            struct S1 ***l_3539[10][6][3] = {{{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}, {{&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}, {&p_4115->g_384[2][2][4], &p_4115->g_384[4][2][1], nullptr}}};
            int32_t *l_3554 = &hip_const_2;
            int32_t l_3574 = (-1L);
            int32_t l_3579 = 0xA2BE1988L;
            int32_t l_3581 = 0xF744EF90L;
            int32_t l_3582 = (-1L);
            __shared__ int32_t l_3586;
            l_3586 = 1L;
            __shared__ int32_t l_3588;
            l_3588 = 0xDA074F93L;
            __shared__ int32_t l_3589;
            l_3589 = 0x568839B8L;
            int32_t l_3593 = 0x093A4387L;
            __shared__ ulong4 l_3610;
            l_3610 = make_ulong4(18446744073709551606UL, 0x35D422A79D004C0BLL, 18446744073709551606UL, 0x35D422A79D004C0BLL);
            __shared__ uint64_t *l_3622;
            l_3622 = nullptr;
            char2 l_3720 = make_char2(0x5CL, 0x89L);
            int32_t *l_3732 = nullptr;
            int32_t *l_3733 = nullptr;
            int32_t *l_3734 = nullptr;
            int32_t *l_3735 = nullptr;
            int32_t *l_3736 = &l_3581;
            int32_t *l_3737[1];
            int i, j, k;
            for (int i = 0; i < 1; i++)
                l_3737[i] = nullptr;
            for (p_4115->g_1313 = 0; (p_4115->g_1313 <= 0); p_4115->g_1313 += 1)
            { /* block id: 1375 */
                struct S0 ****l_3474 = &p_4115->g_2425;
                long2 l_3480 = make_long2(4L, (-1L));
                long1 l_3481 = make_long1(0x613166C8D2CA16ACLL);
                uint32_t *l_3488 = nullptr;
                uint32_t *l_3489 = &l_3477.f0;
                __shared__ int32_t l_3514;
                l_3514 = 0x0AD3EC22L;
                int i;
                p_9 = (l_3477.f4.f0 = ((make_ushort4(l_3463.y, l_3463.y, l_3463.y, l_3463.y).w && ((safe_rshift_func_int16_t_s_s(p_4115->g_22[p_4115->g_1313], ((safe_mul_func_uint8_t_u_u((make_char2(0x6FL, 0xA5L).y <= ((*p_4115->g_644) |= p_4115->g_22[p_4115->g_1313])), ((((make_ulong2(l_3470.x, l_3470.x) & ((safe_div(((make_ulong2(((l_3473 , l_3474) == l_3475), 6UL) ^ make_ulong2(p_4115->g_3476.x, p_4115->g_3476.x))), make_ulong2(((l_3477 , (safe_lshift_func_uint8_t_u_s(make_uchar3(2UL, 0UL, 0x6BL).y, 1))) >= (make_long3(l_3480.x, l_3480.x, l_3480.x).x & 1UL)), 0UL)))))).y == make_long4(l_3481.x, l_3481.x, l_3481.x, l_3481.x).w) > (l_3482 != l_3483)))) , 0x3CCBL))) , 0x6399L)) <= 0xA9FF0F2CL));
                if (((l_3512 = ((l_3511 = (((l_3510 = ((((safe_mod_func_int8_t_s_s((safe_rshift_func_uint32_t_u_s(((**p_4115->g_643) , (--(*l_3489))), (safe_mod_func_uint8_t_u_u((safe_mul_func_uint64_t_u_u(p_11, l_3496)), (safe_mod_func_uint64_t_u_u((safe_rshift_func_uint32_t_u_s((l_3509 = (4UL != (safe_mul_func_int64_t_s_s(p_9, ((safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint32_t_u_s((safe_div_func_uint16_t_u_u((nullptr == &p_4115->g_2714), 8UL)), l_3463.z)) & 0L), l_3473)) , p_9))))), l_3473)), l_3470.y)))))), 0x94L)) != (*p_4115->g_644)) , p_4115->g_1588.x) == p_9)) < 0xB9511128L) , p_11)) , 1L)) <= l_3477.f4.f0))
                { /* block id: 1384 */
                    return p_4115->g_3513;
                }
                else
                { /* block id: 1386 */
                    __shared__ int32_t *l_3515;
                    l_3515 = nullptr;
                    int32_t *l_3516[4];
                    int i;
                    for (int i = 0; i < 4; i++)
                        l_3516[i] = &p_4115->g_29[2];
                    l_3512 |= (p_4115->g_2097.x , (l_3514 = (-1L)));
                    for (p_4115->g_247 = 0; (p_4115->g_247 >= 48); p_4115->g_247++)
                    { /* block id: 1391 */
                        uint64_t l_3519 = 4UL;
                        l_3519--;
                        p_9 |= l_3509;
                        if (l_3477.f1)
                            continue;
                    }
                    for (l_3510 = 0; (l_3510 != 9); l_3510 = safe_add_func_uint8_t_u_u(l_3510, 9))
                    { /* block id: 1398 */
                        if (p_11)
                            break;
                    }
                }
                for (p_4115->g_247 = (-25); (p_4115->g_247 <= 11); p_4115->g_247 = safe_add_func_int16_t_s_s(p_4115->g_247, 3))
                { /* block id: 1404 */
                    for (p_4115->g_462 = (-17); (p_4115->g_462 == 55); p_4115->g_462 = safe_add_func_uint16_t_u_u(p_4115->g_462, 8))
                    { /* block id: 1407 */
                        if (l_3509)
                            break;
                    }
                }
            }
            if (make_int2(l_3528.x, l_3528.x).x)
            { /* block id: 1412 */
                struct S1 ****l_3540[9] = {&p_4115->g_383, &l_3539[3][2][1], &p_4115->g_383, &l_3539[3][2][1], &p_4115->g_383, &l_3539[3][2][1], &p_4115->g_383, &l_3539[3][2][1], &p_4115->g_383};
                int32_t l_3550 = 0x2ACF594EL;
                __shared__ int64_t *l_3551;
                l_3551 = &l_3477.f5;
                uint16_t *l_3552 = &hip_const_3.f2;
                uint16_t *l_3553[10][5][4] = {{{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}, {{&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}, {&l_3477.f2, nullptr, nullptr, nullptr}}};
                int i, j, k;
                l_3511 ^= (safe_mod_func_uint64_t_u_u(((p_4115->g_2548.y >= ((safe_mul_func_uint16_t_u_u((((safe_rshift_func_int64_t_s_u(make_long3(0x3CCDA484C74275F4LL, ((safe_div_func_uint8_t_u_u((((l_3512 > (safe_sub_func_uint32_t_u_u((((p_4115->g_958.w , p_9) , 255UL) || ((l_3539[9][0][2] = l_3539[9][0][2]) == l_3541[5][0])), (make_int4((-7L), 0x2DA734ADL, 0x45F9A7D5L, 0xB853B75FL).y , (safe_mod_func_uint16_t_u_u((p_4115->g_413 = (safe_sub_func_uint64_t_u_u((((*l_3551) ^= (safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u(p_4115->g_958.y, l_3550)), 0L))) ^ l_3512), (-1L)))), p_9)))))) != p_4115->g_462) , p_4115->g_2578.x), p_11)) < l_3477.f0), 0x262085F373A9CE76LL).y, 0)) < 0UL) ^ l_3477.f1), 5L)) >= 0x1F56L)) <= l_3528.w), 0x7314760B1892D0D0LL));
                return l_3554;
            }
            else
            { /* block id: 1418 */
                struct S1 **l_3564 = nullptr;
                __shared__ int32_t l_3572;
                l_3572 = 0xEF7DE853L;
                int32_t l_3575 = 0x1CDF8C04L;
                int4 l_3577 = make_int4(0xBC5BC5F2L, 0x9E7B17E9L, 0xBC5BC5F2L, 0x9E7B17E9L);
                int16_t l_3580 = 0x4F19L;
                int8_t l_3583 = 0xB4L;
                uint16_t l_3626 = 0x98EAL;
                ushort3 l_3671 = make_ushort3(65535UL, 0UL, 65535UL);
                int32_t *l_3695 = &l_3581;
                int32_t *l_3696 = nullptr;
                __shared__ int32_t *l_3697;
                l_3697 = nullptr;
                int32_t *l_3698 = nullptr;
                int32_t *l_3699 = &p_4115->g_2046;
                int32_t *l_3700[10] = {&l_3590, &l_3590, &l_3576, &l_3590, &l_3590, &l_3576, &l_3590, &l_3590, &l_3576, &l_3590};
                uint8_t l_3702 = 0xB7L;
                int i;
                if ((safe_div_func_int8_t_s_s(((!(safe_mod_func_int8_t_s_s(((l_3477.f4 , (*l_3554)) <= ((safe_sub_func_int32_t_s_s((safe_unary_minus_func_uint8_t_u((nullptr != (*p_4115->g_3232)))), (safe_rshift_func_uint32_t_u_s((l_3528.w = ((!((*l_3554) , (((l_3565 = l_3564) != ((((make_uchar2(p_4115->g_3566.y, p_4115->g_3566.y) ^ make_uchar2(p_4115->g_3567.y, p_4115->g_3567.y))).y & (((safe_div(make_char4(((safe_div(make_char2((((((p_4115->g_2891.x != (l_3510 , p_9)) > (*l_3554)) & 0xFE9D70BD93B574CELL) != l_3572) | p_9), 0x13L), make_char2(3L, 3L)))).x, 0xDEL, 1L, l_3572), make_char4(8L, 8L, 8L, 8L)))).w ^ p_9)) , nullptr)) | (*l_3554)))) > (*l_3554))), 18)))) || 1L)), l_3512))) < 8L), p_4115->g_2992.y)))
                { /* block id: 1421 */
                    int32_t *l_3573[6] = {nullptr, &p_4115->g_29[2], nullptr, &p_4115->g_29[2], nullptr, &p_4115->g_29[2]};
                    int i;
                    ++l_3595;
                    if (l_3575)
                        continue;
                    if (p_4115->g_1313)
                        goto lbl_3598;
                }
                else
                { /* block id: 1425 */
                    int32_t *l_3599 = nullptr;
                    uint32_t *l_3621 = nullptr;
                    uint64_t *l_3623 = nullptr;
                    uint64_t *l_3624[5];
                    int32_t ***l_3629 = nullptr;
                    int32_t l_3651 = (-7L);
                    __shared__ uint32_t l_3652;
                    l_3652 = 0x4430E729L;
                    int i;
                    for (int i = 0; i < 5; i++)
                        l_3624[i] = nullptr;
                    for (p_4115->g_3238 = 0; (p_4115->g_3238 <= 0); p_4115->g_3238 += 1)
                    { /* block id: 1428 */
                        return l_3599;
                    }
                    for (p_4115->g_1921 = 0; (p_4115->g_1921 <= 41); p_4115->g_1921 = safe_add_func_uint32_t_u_u(p_4115->g_1921, 1))
                    { /* block id: 1433 */
                        if (p_4115->g_3290)
                            goto lbl_3598;
                    }
                    l_3599 = &p_9;
                    if (((((((safe_lshift(make_int3(0x3B24C4F3L, (-6L), (-1L)), make_int3(32, 32, 32)))) ^ ((((safe_sub(make_int3(0x6D2CFFF8L, (safe_add_func_uint32_t_u_u(0x6BC5BDBBL, (+(~(safe_lshift_func_uint64_t_u_u((l_3587 = (p_9 | (1L | (((((~((make_ulong4(l_3610.x, l_3610.x, l_3610.x, l_3610.x) & make_ulong4(p_4115->g_3611.x, p_4115->g_3611.x, p_4115->g_3611.x, p_4115->g_3611.x))))).y == ((l_3577.y = (((l_3591.y <= ((safe_add_func_uint32_t_u_u((l_3510 = ((((safe_rshift(make_uint2(l_3616.x, l_3616.x), ((safe_sub(make_uint2((l_3511 = (safe_lshift_func_int64_t_s_u(0xE07FE4EF3E42780ELL, (p_9 <= (l_3470.y >= ((l_3591.y && (make_uchar3((p_9 || (*l_3554)), 0x0BL, 0UL).y && (*l_3554))) | p_4115->g_491.x)))))), 1UL), make_uint2(0x97E67303L, 0x97E67303L))))))) & make_uint2(4294967295UL, 4294967295UL))).y), p_9)) || 18446744073709551609UL)) >= (**p_4115->g_643)) , l_3587)) & p_11)) , (*p_4115->g_2714)) == l_3622)))), l_3625)))))), l_3626), make_int3(0x236598AFL, 0x236598AFL, 0x236598AFL)))) | make_int3(0x36D3FA54L, 0x36D3FA54L, 0x36D3FA54L))))) ^ make_int3(0x6D1BCE73L, 0x6D1BCE73L, 0x6D1BCE73L))).z)
                    { /* block id: 1441 */
                        uint64_t **l_3627[8][7][4] = {{{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}, {{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}, {{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}, {{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}, {{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}, {{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}, {{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}, {{&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}, {&p_4115->g_584, &p_4115->g_584, &l_3624[0], &p_4115->g_584}}};
                        uint64_t ***l_3628 = &l_3627[7][1][0];
                        int i, j, k;
                        (*l_3628) = l_3627[7][1][0];
                    }
                    else
                    { /* block id: 1443 */
                        __shared__ int32_t *l_3630;
                        l_3630 = nullptr;
                        int32_t *l_3631 = &l_3581;
                        __shared__ int32_t *l_3632;
                        l_3632 = nullptr;
                        int32_t *l_3633 = nullptr;
                        int32_t *l_3634 = &l_3581;
                        __shared__ int32_t *l_3635;
                        l_3635 = nullptr;
                        int32_t *l_3636 = nullptr;
                        int32_t *l_3637 = &l_3589;
                        int32_t *l_3638 = &p_4115->g_3401;
                        int32_t *l_3639 = &l_3575;
                        int32_t *l_3640 = nullptr;
                        int32_t *l_3641 = &l_3582;
                        int32_t *l_3642 = nullptr;
                        __shared__ int32_t *l_3643;
                        l_3643 = nullptr;
                        int32_t *l_3644 = &l_3589;
                        int32_t *l_3645 = nullptr;
                        int32_t *l_3646 = &l_3574;
                        int32_t *l_3647 = nullptr;
                        int32_t *l_3648 = nullptr;
                        int32_t *l_3649 = &l_3587;
                        int32_t *l_3650[8][7] = {{&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}, {&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}, {&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}, {&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}, {&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}, {&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}, {&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}, {&l_3581, nullptr, nullptr, &l_3576, &l_3576, nullptr, nullptr}};
                        int i, j;
                        (*p_4115->g_3232) = l_3629;
                        if (l_3625)
                            continue;
                        --l_3652;
                    }
                }
                for (l_3595 = 13; (l_3595 >= 30); l_3595 = safe_add_func_int16_t_s_s(l_3595, 3))
                { /* block id: 1451 */
                    ushort2 l_3666 = make_ushort2(0x8A4BL, 0x09CFL);
                    uchar4 l_3688 = make_uchar4(251UL, 0xBAL, 251UL, 0xBAL);
                    int32_t l_3692[7][1][6] = {{{0x4D8BCC47L, 5L, 0x4D8BCC47L, 0xD08170C5L, 2L, 0xB7EFAB41L}}, {{0x4D8BCC47L, 5L, 0x4D8BCC47L, 0xD08170C5L, 2L, 0xB7EFAB41L}}, {{0x4D8BCC47L, 5L, 0x4D8BCC47L, 0xD08170C5L, 2L, 0xB7EFAB41L}}, {{0x4D8BCC47L, 5L, 0x4D8BCC47L, 0xD08170C5L, 2L, 0xB7EFAB41L}}, {{0x4D8BCC47L, 5L, 0x4D8BCC47L, 0xD08170C5L, 2L, 0xB7EFAB41L}}, {{0x4D8BCC47L, 5L, 0x4D8BCC47L, 0xD08170C5L, 2L, 0xB7EFAB41L}}, {{0x4D8BCC47L, 5L, 0x4D8BCC47L, 0xD08170C5L, 2L, 0xB7EFAB41L}}};
                    uint32_t l_3693 = 0xC3134793L;
                    int32_t **l_3694 = &l_3554;
                    int i, j, k;
                    if (p_11)
                        break;
                    (*l_3694) = &l_3572;
                }
                l_3702++;
                l_3706--;
            }
            l_3591.y = (l_3470.x <= (safe_div_func_uint8_t_u_u(make_uchar1((((*p_4115->g_644) || (make_ushort2(p_4115->g_3711.z, p_4115->g_3711.z).y , (((((*l_3736) &= (safe_add_func_uint64_t_u_u((l_3528.x = make_ulong4(0x7294724DCE0FC95ELL, 0x4DA1F4D01495B19ALL, 18446744073709551610UL, 7UL).z), (l_3578 = (safe_mul_func_uint32_t_u_u((((safe_div_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u((make_char1(l_3720.x).x < (safe_unary_minus_func_int8_t_s((safe_sub_func_int32_t_s_s((((l_3724 == l_3724) ^ 0xAAB78E7ED49D877FLL) < ((safe_rshift(make_char2(l_3727.y, (((l_3510 | ((make_long1(p_4115->g_3728.z).x , (safe_div_func_int16_t_s_s((((p_4115->g_1252 = (p_11 , l_3731)) != nullptr) ^ 0x81C5L), p_4115->g_3369.x))) <= p_9)) > l_3477.f1) < l_3587)), make_char2(8, 8)))).y), p_9))))), 3)) < 0xED9E7EAD6E387032LL), l_3616.x)) > 0x9EF3L) && hip_const_3.f1), 0x1AE2065DL)))))) && l_3701) | 255UL) , p_9))) == p_11)).x, p_9)));
        }
        if (((safe_unary_minus_func_int16_t_s(l_3616.x)) || (safe_rshift_func_uint32_t_u_u((l_3741 != l_3743), (l_3584 = (~(safe_add_func_int32_t_s_s(((((safe_div_func_int64_t_s_s(p_9, ((((make_ulong3((0x540FL == p_9), 0xF907DFEA501A820CLL, 3UL) | make_ulong3(3UL, 18446744073709551610UL, (((make_ulong4(l_3748.x, l_3748.x, l_3748.x, l_3748.x) ^ ((((((make_ulong4(l_3749.x, l_3749.x, l_3749.x, l_3749.x) | ((make_ulong4(((*l_3759) ^= ((safe_mul_func_uint32_t_u_u(p_11, ((((safe_mul(make_uint3((4294967295UL > ((make_short4(l_3754.x, l_3754.x, l_3754.x, l_3754.x).y ^ (safe_mod_func_int32_t_s_s((((((l_3591.x = (~((~(~((((4294967292UL != l_3473) < l_3727.x) , (***p_4115->g_3449)) || p_4115->g_1462.x))) , 0UL))) >= 0x0923F2E145241265LL) != l_3587) < p_9) >= l_3757), 3UL))) | 0x15956AC0362BE835LL)), p_11, 4294967295UL), make_uint3(0x634E2971L, 0x634E2971L, 0x634E2971L)))) ^ make_uint3(4294967295UL, 4294967295UL, 4294967295UL))).x)) , l_3705)), 0x25B84F4EA6EF19CDLL, 7UL, 0xCCC375D1D049DD6BLL) ^ make_ulong4(18446744073709551611UL, 18446744073709551611UL, 18446744073709551611UL, 18446744073709551611UL))))) & make_ulong4(0xB9261CA09BEB7636LL, 0xB9261CA09BEB7636LL, 0xB9261CA09BEB7636LL, 0xB9261CA09BEB7636LL))) & make_ulong4(0x62805C59EEC79DDFLL, 0x62805C59EEC79DDFLL, 0x62805C59EEC79DDFLL, 0x62805C59EEC79DDFLL))))).y != 1L)))) & make_ulong3(0UL, 0UL, 0UL))).y)) & p_11) & p_4115->g_1968.x) != p_9), l_3757))))))))
        { /* block id: 1468 */
            l_3587 ^= make_int1(0xD6BAD42CL).x;
        }
        else
        { /* block id: 1470 */
            int32_t l_3766 = (-10L);
            int32_t l_3768[6][4][7] = {{{0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}}, {{0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}}, {{0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}}, {{0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}}, {{0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}}, {{0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}, {0xD4E281F1L, 0x8378F94FL, 3L, (-1L), 9L, 0x8FBEA629L, 9L}}};
            int32_t *l_3773 = &p_4115->g_29[2];
            uint32_t l_3779 = 3UL;
            int i, j, k;
            for (l_3510 = 29; (l_3510 < 16); --l_3510)
            { /* block id: 1473 */
                int64_t l_3776[4][10][4] = {{{1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}}, {{1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}}, {{1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}}, {{1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}, {1L, 8L, 0L, 0xD22DCD16136CC264LL}}};
                int i, j, k;
                for (p_4115->g_1313 = 0; (p_4115->g_1313 != 25); ++p_4115->g_1313)
                { /* block id: 1476 */
                    __shared__ uint32_t l_3770;
                    l_3770 = 0x7431E75AL;
                    int32_t l_3778 = (-6L);
                    for (p_9 = (-12); (p_9 != 27); p_9++)
                    { /* block id: 1479 */
                        int32_t *l_3767 = nullptr;
                        int32_t *l_3769[10][2][3] = {{{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}, {{&hip_const_2, nullptr, nullptr}, {&hip_const_2, nullptr, nullptr}}};
                        int i, j, k;
                        l_3770++;
                        l_3773 = &p_9;
                        if (p_9)
                            break;
                    }
                    for (p_4115->g_1795 = 0; (p_4115->g_1795 < 21); ++p_4115->g_1795)
                    { /* block id: 1486 */
                        int32_t *l_3777[8][9][3] = {{{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}, {{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}, {{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}, {{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}, {{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}, {{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}, {{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}, {{nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}, {nullptr, &l_3585, nullptr}}};
                        int i, j, k;
                        --l_3779;
                    }
                }
            }
        }
        for (l_3473 = 0; (l_3473 <= 0); l_3473 += 1)
        { /* block id: 1494 */
            int32_t **l_3783[8][3];
            struct S1 *l_3797 = &hip_const_3;
            struct S1 *l_3798 = &hip_const_3;
            struct S0 ****l_3814 = &p_4115->g_2427;
            int3 l_3852 = make_int3(1L, 0L, 1L);
            int32_t l_3856[6] = {0x130ADAE4L, 2L, 0x130ADAE4L, 2L, 0x130ADAE4L, 2L};
            int32_t *l_3901 = nullptr;
            int8_t l_3910 = 0x0BL;
            __shared__ int32_t l_3912;
            l_3912 = 0xA2DC4D16L;
            __shared__ uint16_t ****l_3939;
            l_3939 = nullptr;
            int i, j;
            for (int i = 0; i < 8; i++)
            {
                for (int j = 0; j < 3; j++)
                    l_3783[i][j] = &l_3782[0];
            }
            p_10 = l_3782[1];
            l_3786 = ((p_4115->g_3784 == &l_3741) & (!((***p_4115->g_3449) = 0L)));
            if (((make_long2(l_3787.x, l_3787.x).x , (safe_mod_func_uint64_t_u_u(p_11, (safe_rshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s(make_short2(l_3794.x, l_3794.x).y, (((safe_lshift_func_uint8_t_u_u((p_11 && 0xD524L), p_4115->g_29[2])) < (l_3797 != ((*p_4115->g_644) , (l_3798 = l_3798)))) , p_4115->g_3073.z))), p_11))))) , l_3578))
            { /* block id: 1499 */
                __shared__ uint64_t ***l_3799;
                l_3799 = &p_4115->g_2714;
                __shared__ uint64_t ****l_3800;
                l_3800 = nullptr;
                uint64_t ****l_3801 = &l_3799;
                __shared__ int32_t l_3802;
                l_3802 = 0x4E72912EL;
                ulong3 l_3803 = make_ulong3(0x5BA93DBE8FD8D455LL, 0UL, 0x5BA93DBE8FD8D455LL);
                int32_t l_3810[6][6][5] = {{{0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}}, {{0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}}, {{0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}}, {{0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}}, {{0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}}, {{0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}, {0xA269D3B8L, (-4L), 0x75D3F2C4L, 0L, (-8L)}}};
                struct S0 *l_3815 = &hip_const_3.f4;
                short3 l_3827 = make_short3(3L, 0L, 3L);
                int2 l_3853 = make_int2(0x4CE93C46L, 0x7FC831E4L);
                struct S1 **l_3861 = &l_3797;
                int i, j, k;
                (*l_3801) = l_3799;
                if (l_3802)
                { /* block id: 1501 */
                    struct S0 *l_3816 = &hip_const_5[6];
                    uint64_t ****l_3844 = nullptr;
                    uint32_t l_3888 = 18446744073709551615UL;
                    int32_t l_3899 = (-4L);
                    int32_t l_3900 = (-8L);
                    int i;
                    p_9 &= (((make_ulong1((l_3705 > 0xA190729DL)) ^ make_ulong1(l_3803.z))).x == (make_long1(l_3804.x).x ^ (safe_mod_func_uint64_t_u_u(((((make_ulong1(0xBADC5166B70A188DLL) | make_ulong1(p_4115->g_3807.y))) | make_ulong1(((*l_3759) = make_ulong4(18446744073709551606UL, 0x26341B88E9524CBFLL, (0xC0DEL && (((l_3802 < (l_3810[1][2][4] ^= (p_4115->g_22[l_3473] |= p_11))) == (safe_rshift_func_int16_t_s_u((l_3813 == l_3814), 8))) , (l_3815 != l_3816))), 0x9A77149C4F8FE540LL).x)))).x, 0xF23A64DA5C13162CLL))));
                    for (l_3802 = 20; (l_3802 <= (-7)); l_3802--)
                    { /* block id: 1508 */
                        short3 l_3833 = make_short3(0L, 0L, 0L);
                        uint8_t *l_3839 = nullptr;
                        __shared__ uint8_t *l_3840;
                        l_3840 = nullptr;
                        __shared__ uint8_t *l_3841;
                        l_3841 = &p_4115->g_247;
                        uint16_t *l_3845 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ uint16_t *l_3846[4];
                        for (int i = 0; i < 4; i++)
                            l_3846[i] = nullptr;
                        int32_t l_3847 = 0xC6C8D11EL;
                        int32_t l_3848 = 1L;
                        ulong4 l_3865 = make_ulong4(18446744073709551615UL, 0xD6ABEFFFD2E9406FLL, 18446744073709551615UL, 0xD6ABEFFFD2E9406FLL);
                        __shared__ uint32_t *l_3876;
                        l_3876 = nullptr;
                        uint32_t *l_3877 = nullptr;
                        uint32_t *l_3878[4] = {nullptr, nullptr, nullptr, nullptr};
                        int i;
                        l_3848 &= (safe_sub_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((!((safe_lshift(make_char2(0L, 0L), make_char2((-3L), ((((((safe_lshift(make_short2(l_3827.x, l_3827.x), make_short2((-7L), 0L)))) ^ ((~make_short2(p_4115->g_3828.y, p_4115->g_3828.y))))).x == p_9) > (((safe_add_func_int16_t_s_s(p_4115->g_479.x, make_short2(l_3833.z, l_3833.z).x)) < (((****l_3483) &= (make_short3(0xEBABL, 0x573FL, 2L).y | p_9)) , p_4115->g_759.x)) < (((p_4115->g_1114.x = (safe_add_func_uint8_t_u_u(((*l_3841) = (safe_sub_func_int8_t_s_s(0x1CL, make_char3(p_4115->g_3838.x, p_4115->g_3838.x, p_4115->g_3838.x).z))), ((~((safe_mul_func_uint16_t_u_u((nullptr == l_3844), (p_4115->g_3838.x || p_9))) < 0x091B7ABB886939ECLL)) < p_11)))) && l_3847) >= l_3833.y))))))).y), 2)), p_4115->g_750.y));
                        l_3879[0][1] &= (((((((safe_mul_func_int16_t_s_s(p_4115->g_22[l_3473], 0x46B2L)) != make_int3(p_4115->g_3851.x, p_4115->g_3851.x, p_4115->g_3851.x).y) && ((0xE399L <= ((((make_int2(l_3852.x, l_3852.x) & ((make_int2(l_3853.x, l_3853.x) & make_int2((safe_sub_func_int8_t_s_s(l_3856[0], 0x17L)), 0x40107915L))))).x && (l_3576 = (safe_mul_func_int8_t_s_s(make_char1(p_4115->g_3859.z).x, (((((make_ulong4(l_3860.y, l_3860.y, l_3860.y, l_3860.y) & make_ulong4(make_ulong1(0x8D2559B7B73C8A67LL).x, 18446744073709551610UL, (l_3861 == l_3861), ((((safe_lshift(make_ulong1(0x28710FF1F6FB2ED2LL), make_ulong1(l_3864.x)))) ^ ((make_ulong1(l_3865.y) ^ ((safe_sub(make_ulong1(p_4115->g_3868.x), ((safe_lshift(make_ulong1(((safe_lshift(make_ulong2((safe_lshift_func_uint32_t_u_s(make_uint2(p_4115->g_3875.x, p_4115->g_3875.x).y, l_3847)), 0x679863DF443503D5LL), make_ulong2(64, 64)))).y), make_ulong1(64))))))))))).x))).w == p_11) | l_3853.y) <= p_11))))) ^ (**p_4115->g_643))) != l_3727.y)) , l_3804.x) <= 0xB8C8L) , p_4115->g_3128) == p_4115->g_3128);
                    }
                    for (p_4115->g_2046 = 11; (p_4115->g_2046 < (-8)); --p_4115->g_2046)
                    { /* block id: 1518 */
                        __shared__ uint32_t l_3895;
                        l_3895 = 0x8F93430DL;
                        int64_t *l_3896 = nullptr;
                        __shared__ int64_t *l_3897;
                        l_3897 = &l_3625;
                        uint16_t *l_3898[10][2][3] = {{{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}, {{&p_4115->g_413, &hip_const_3.f2, nullptr}, {&p_4115->g_413, &hip_const_3.f2, nullptr}}};
                        int i, j, k;
                        l_3900 &= (safe_sub_func_int16_t_s_s(((safe_div_func_int32_t_s_s(p_11, p_4115->g_22[l_3473])) <= (l_3899 = (l_3810[2][3][2] |= (((l_3853.y |= ((*l_3897) = ((safe_add_func_int32_t_s_s((p_9 ^ (~l_3888)), (((safe_lshift_func_int32_t_s_u(((*p_4115->g_3784) == (*p_4115->g_3784)), p_4115->g_22[l_3473])) , p_9) > ((safe_mod_func_int32_t_s_s((safe_rshift_func_int32_t_s_u(p_11, l_3803.y)), l_3804.y)) , 1UL)))) , l_3895))) <= p_9) >= l_3895)))), l_3802));
                        return l_3901;
                    }
                    for (p_4115->g_2901 = 3; (p_4115->g_2901 <= 9); p_4115->g_2901 += 1)
                    { /* block id: 1528 */
                        int32_t *l_3902[2][9][5] = {{{&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}}, {{&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}, {&l_3810[3][0][3], &l_3585, &l_3810[3][0][3], &p_4115->g_29[2], &hip_const_1}}};
                        int i, j, k;
                        l_3902[1][1][2] = &l_3900;
                        if (l_3879[0][1])
                            continue;
                        l_3591.x |= l_3787.y;
                    }
                }
                else
                { /* block id: 1533 */
                    l_3903 = &p_9;
                    if (l_3827.x)
                        continue;
                }
            }
            else
            { /* block id: 1537 */
                int32_t *l_3906[10][2];
                int64_t l_3907 = 0x302FC91923BED111LL;
                struct S0 l_3927[9] = {{-412}, {-268}, {-412}, {-268}, {-412}, {-268}, {-412}, {-268}, {-412}};
                uint32_t *l_3928 = nullptr;
                struct S0 l_3938 = {205};
                int i, j;
                for (int i = 0; i < 10; i++)
                {
                    for (int j = 0; j < 2; j++)
                        l_3906[i][j] = &p_4115->g_29[2];
                }
                for (p_4115->g_3291 = (-14); (p_4115->g_3291 > 22); p_4115->g_3291 = safe_add_func_uint32_t_u_u(p_4115->g_3291, 3))
                { /* block id: 1540 */
                    return l_3906[9][1];
                }
                if (l_3907)
                { /* block id: 1543 */
                    int16_t l_3908[5];
                    int32_t l_3909 = 0xB1C19E7FL;
                    // attempting a hip shared for loop
                    __shared__ int32_t l_3911[2];
                    for (int i = 0; i < 2; i++)
                        l_3911[i] = 1L;
                    int i;
                    for (int i = 0; i < 5; i++)
                        l_3908[i] = 0x598DL;
                    for (int i = 0; i < 2; i++)
                        l_3911[i] = 1L;
                    l_3913++;
                }
                else
                { /* block id: 1545 */
                    uint32_t *l_3922[5];
                    int32_t l_3923[7][4][1] = {{{0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}}, {{0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}}, {{0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}}, {{0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}}, {{0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}}, {{0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}}, {{0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}, {0xCFE37269L}}};
                    // attempting a hip shared for loop
                    __shared__ uint32_t *l_3930[1][5][6];
                    for (int i = 0; i < 1; i++)
                    {
                        for (int j = 0; j < 5; j++)
                        {
                            for (int k = 0; k < 6; k++)
                                l_3930[i][j][k] = &p_4115->g_3238;
                        }
                    }
                    uint32_t **l_3929 = &l_3930[0][1][0];
                    uint32_t **l_3933[7] = {&p_4115->g_2083, &l_3922[0], &p_4115->g_2083, &l_3922[0], &p_4115->g_2083, &l_3922[0], &p_4115->g_2083};
                    struct S1 l_3937 = {0x29C44160L,0xF4965E74L,0x2855L,0L,{-250},0xF5741A4ADD237FCALL,0x58E4518FL};
                    __shared__ struct S1 *****l_3946;
                    l_3946 = &p_4115->g_429[(l_3473 + 1)];
                    int8_t l_3949 = 1L;
                    int i, j, k;
                    for (int i = 0; i < 5; i++)
                        l_3922[i] = &p_4115->g_462;
                    l_3924 |= (safe_add_func_int16_t_s_s(((safe_lshift(make_short1((safe_rshift_func_uint64_t_u_s(((l_3923[5][0][0] &= p_11) != p_9), 55))), make_short1(16)))).x, p_11));
                    if (((safe_mod_func_uint16_t_u_u(((-2L) & ((l_3927[2] , l_3928) == ((*l_3929) = &p_11))), ((l_3931 <= (((~l_3932) , &l_3931) != (l_3934[2][2][1] = nullptr))) , (safe_mod_func_uint32_t_u_u(((l_3937 , l_3938) , 0x5FB450A9L), 0xFB83CCD3L))))) != (-1L)))
                    { /* block id: 1550 */
                        uint16_t *****l_3940[4][9] = {{&l_3939, &l_3939, &l_3939, &l_3939, &l_3939, nullptr, &l_3939, &l_3939, &l_3939}, {&l_3939, &l_3939, &l_3939, &l_3939, &l_3939, nullptr, &l_3939, &l_3939, &l_3939}, {&l_3939, &l_3939, &l_3939, &l_3939, &l_3939, nullptr, &l_3939, &l_3939, &l_3939}, {&l_3939, &l_3939, &l_3939, &l_3939, &l_3939, nullptr, &l_3939, &l_3939, &l_3939}};
                        int i, j;
                        p_4115->g_3941 = l_3939;
                    }
                    else
                    { /* block id: 1552 */
                        __shared__ int32_t *l_3942;
                        l_3942 = nullptr;
                        return l_3942;
                    }
                    if (l_3938.f0)
                        goto lbl_3598;
                    if (make_int4(l_3943.w, l_3943.w, l_3943.w, l_3943.w).w)
                    { /* block id: 1556 */
                        int16_t l_3944 = 1L;
                        l_3944 |= 2L;
                        l_3945 = &p_4115->g_2334;
                        l_3946 = &p_4115->g_429[1];
                        p_9 = l_3937.f1;
                    }
                    else
                    { /* block id: 1561 */
                        uint64_t l_3950[7];
                        int i;
                        for (int i = 0; i < 7; i++)
                            l_3950[i] = 0x66203650C8872A37LL;
                        --l_3950[5];
                    }
                }
            }
            l_3954--;
        }
    }
    return l_3957;
}


/* ------------------------------------------ */
/* 
 * reads : p_4115->g_2046 p_4115->g_29 hip_const_2 p_4115->g_2943 p_4115->g_1429 p_4115->g_1209 p_4115->g_643 p_4115->g_2564 hip_const_5.f0 p_4115->g_644 p_4115->g_63 p_4115->g_2731 p_4115->g_162 p_4115->g_1968 p_4115->g_584 p_4115->g_2714 p_4115->g_2582 p_4115->g_1638 p_4115->g_429 p_4115->g_2505 p_4115->g_3238
 * writes: p_4115->g_2046 p_4115->g_2943 p_4115->g_413 p_4115->g_3184 p_4115->g_565 p_4115->g_247 p_4115->g_1921 p_4115->g_3232 p_4115->g_3068 p_4115->g_63 p_4115->g_2564 p_4115->g_2082 p_4115->g_162 p_4115->g_271 p_4115->g_1968 p_4115->g_375 p_4115->g_584 p_4115->g_429 p_4115->g_3238 p_4115->g_3290 p_4115->g_3449
 */
__device__ uint64_t  func_14(int32_t * p_15, struct S2 * p_4115)
{ /* block id: 1214 */
    struct S1 *****l_3061 = &p_4115->g_429[6];
    int8_t l_3063 = 0x0EL;
    int32_t l_3071 = 0x98214A6FL;
    __shared__ struct S1 **l_3076;
    l_3076 = &p_4115->g_385;
    struct S1 **l_3079[8] = {&p_4115->g_385, &p_4115->g_385, nullptr, &p_4115->g_385, &p_4115->g_385, nullptr, &p_4115->g_385, &p_4115->g_385};
    __shared__ uint32_t *l_3080;
    l_3080 = nullptr;
    int32_t l_3085 = 0x999484F5L;
    __shared__ int32_t l_3092;
    l_3092 = 1L;
    int16_t l_3101 = 0L;
    __shared__ struct S1 l_3103;
    l_3103 = {0x4FBD9CB6L,0xFAFBF0F6L,0x87A2L,0xC037L,{-435},0xB74CDACDB6D71F76LL,1L};
    ushort1 l_3163 = make_ushort1(0xAAE1L);
    char2 l_3165 = make_char2(0x36L, 0L);
    int32_t *l_3273 = nullptr;
    int32_t l_3288[3][9] = {{1L, 6L, 0x9D33A213L, (-1L), 0x9D33A213L, 6L, 1L, 0x108CE103L, (-7L)}, {1L, 6L, 0x9D33A213L, (-1L), 0x9D33A213L, 6L, 1L, 0x108CE103L, (-7L)}, {1L, 6L, 0x9D33A213L, (-1L), 0x9D33A213L, 6L, 1L, 0x108CE103L, (-7L)}};
    uchar2 l_3300 = make_uchar2(0UL, 255UL);
    ulong1 l_3308 = make_ulong1(0x5CD1D2A6F9A4D91FLL);
    int64_t l_3312 = 0x69035A60C437FFEALL;
    __shared__ uint3 l_3341;
    l_3341 = make_uint3(7UL, 0x65386951L, 7UL);
    char2 l_3355 = make_char2(0x93L, (-5L));
    int16_t l_3382 = (-2L);
    int1 l_3392 = make_int1(0xA8145684L);
    int32_t l_3410 = 0xF329DDE6L;
    // attempting a hip shared for loop
    __shared__ uint32_t l_3416[9][1][6];
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            for (int k = 0; k < 6; k++)
                l_3416[i][j][k] = 4294967295UL;
        }
    }
    __shared__ struct S0 **l_3445;
    l_3445 = &p_4115->g_1328;
    int8_t ***l_3448 = &p_4115->g_643;
    struct S1 l_3452 = {4294967294UL,4294967286UL,65531UL,0L,{473},-1L,0x29048F6AL};
    struct S1 l_3453 = {0x1B3B912DL,0x5A0D50F8L,0UL,0x65D9L,{331},9L,0L};
    int8_t l_3454 = 8L;
    int i, j, k;
    for (p_4115->g_2046 = 3; (p_4115->g_2046 <= 9); p_4115->g_2046 += 1)
    { /* block id: 1217 */
        __shared__ struct S1 *****l_3060;
        l_3060 = &p_4115->g_429[9];
        __shared__ struct S1 *****l_3062;
        l_3062 = nullptr;
        int32_t l_3069 = 0x01DA6542L;
        uint16_t *l_3070[1];
        uint32_t *l_3072 = nullptr;
        struct S1 ***l_3077 = nullptr;
        struct S1 ***l_3078[4][7][4] = {{{&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}}, {{&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}}, {{&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}}, {{&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}, {&l_3076, &l_3076, &l_3076, nullptr}}};
        __shared__ uint32_t l_3081;
        l_3081 = 0x198DD497L;
        int32_t l_3082 = (-1L);
        int32_t *l_3083 = nullptr;
        int32_t *l_3084 = nullptr;
        ushort4 l_3097 = make_ushort4(0x8608L, 0x205EL, 0x8608L, 0x205EL);
        uchar2 l_3100 = make_uchar2(249UL, 0x6EL);
        struct S1 l_3102[4][10] = {{{0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}}, {{0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}}, {{0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}}, {{0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}, {0UL,1UL,65535UL,0xA7A3L,{-488},0x4313847F9818C39FLL,0x0CBC77A3L}}};
        int8_t ***l_3131 = &p_4115->g_643;
        uint8_t l_3138 = 0xC2L;
        uint64_t l_3164 = 0xBF25BFA08765EC67LL;
        long2 l_3172 = make_long2((-5L), (-1L));
        int32_t l_3194 = 0xCD6708EEL;
        uint2 l_3197 = make_uint2(1UL, 4UL);
        __shared__ int32_t l_3279;
        l_3279 = 6L;
        int32_t l_3280 = (-7L);
        int32_t l_3281 = (-1L);
        int32_t l_3282 = 0x954F957AL;
        __shared__ int32_t l_3283;
        l_3283 = 0x9ED23CBBL;
        int32_t l_3284[3][6] = {{1L, 1L, 1L, 0x291D6E04L, 0x035AF4ADL, 0x291D6E04L}, {1L, 1L, 1L, 0x291D6E04L, 0x035AF4ADL, 0x291D6E04L}, {1L, 1L, 1L, 0x291D6E04L, 0x035AF4ADL, 0x291D6E04L}};
        int32_t l_3294 = 0x9D5F2866L;
        __shared__ uchar3 l_3347;
        l_3347 = make_uchar3(5UL, 251UL, 5UL);
        ushort4 l_3380 = make_ushort4(1UL, 65530UL, 1UL, 65530UL);
        uint32_t l_3433 = 0x278E0849L;
        int i, j, k;
        for (int i = 0; i < 1; i++)
            l_3070[i] = nullptr;
        l_3085 &= (safe_mod_func_int8_t_s_s(make_char4((safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s((l_3060 != (l_3062 = (l_3061 = (p_4115->g_1683 = &p_4115->g_429[8])))), l_3063)), 5)), ((safe_sub_func_uint16_t_u_u((l_3081 |= ((safe_sub(((~make_ushort3(p_4115->g_3068.x, p_4115->g_3068.x, p_4115->g_3068.x))), make_ushort3(make_ushort2(0xFCB8L, 65527UL).x, (l_3071 = l_3069), ((l_3072 == (((l_3069 = 0x411743A1B1437CCBLL) || ((1L || (make_ushort1(p_4115->g_3073.x).x , (l_3071 != ((make_ulong4((safe_lshift_func_int32_t_s_u((((l_3076 = ((*p_4115->g_383) = l_3076)) != l_3079[7]) , (*p_15)), l_3071)), 0xEFD19D571BBFA87ALL, 18446744073709551615UL, 0xDF29E43DA57DB9CBLL) & make_ulong4(0xF3E1348CFC32E49BLL, 0xF3E1348CFC32E49BLL, 0xF3E1348CFC32E49BLL, 0xF3E1348CFC32E49BLL))).x))) != (-1L))) , l_3080)) , 0x20D3L))))).y), l_3082)) <= 0UL))), (**p_4115->g_643), (**p_4115->g_643), (**p_4115->g_643)).z, 0xC4L));
        l_3085 = make_int4(0x0CFB63B0L, (-5L), 0xC241434FL, 2L).w;
        p_15 = p_15;
        l_3103 = l_3102[3][0];
        for (l_3082 = 0; (l_3082 <= 2); l_3082 += 1)
        { /* block id: 1233 */
            uint64_t *l_3119 = nullptr;
            __shared__ uint64_t *l_3120;
            l_3120 = nullptr;
            uint64_t *l_3121 = &p_4115->g_2564;
            int32_t l_3122[5] = {4L, 0xA881742BL, 4L, 0xA881742BL, 4L};
            int64_t *l_3123[1][3];
            int32_t l_3124 = 0xE1970C08L;
            int8_t *****l_3129[3];
            int32_t l_3130 = 0x0F4F0842L;
            __shared__ int16_t *l_3132;
            l_3132 = &p_4115->g_2943;
            struct S1 l_3170 = {4294967294UL,0x052E49EAL,0x1AC0L,0x6CF9L,{220},0xDD6BB52D4025D7DALL,0x34DF2D55L};
            long4 l_3181 = make_long4((-1L), 1L, (-1L), 1L);
            uchar1 l_3200 = make_uchar1(0x2BL);
            __shared__ uint16_t l_3226;
            l_3226 = 0xC0E5L;
            __shared__ int32_t ****l_3231;
            l_3231 = &p_4115->g_270[3];
            int32_t *l_3270 = nullptr;
            __shared__ int32_t l_3285;
            l_3285 = 1L;
            int32_t l_3286 = 0x1D1C8AAEL;
            int32_t l_3287 = 2L;
            int32_t l_3289[10][1];
            int8_t l_3319 = 0x6EL;
            uint32_t **l_3322 = &p_4115->g_2083;
            struct S1 ***l_3327 = nullptr;
            char1 l_3350 = make_char1(0x0CL);
            char3 l_3351 = make_char3(1L, (-1L), 1L);
            int32_t l_3374 = (-4L);
            int32_t *****l_3406 = &l_3231;
            short1 l_3441 = make_short1(0x5CBCL);
            int i, j;
            for (int i = 0; i < 1; i++)
            {
                for (int j = 0; j < 3; j++)
                    l_3123[i][j] = nullptr;
            }
            for (int i = 0; i < 3; i++)
                l_3129[i] = nullptr;
            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 1; j++)
                    l_3289[i][j] = (-5L);
            }
            if ((safe_mul_func_int16_t_s_s(((*l_3132) ^= ((safe_sub_func_uint32_t_u_u(((safe_sub_func_uint64_t_u_u(p_4115->g_29[l_3082], (!((safe_unary_minus_func_uint16_t_u((((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int32_t_s_u(((((make_uchar4(((safe_lshift_func_uint16_t_u_u((p_4115->g_2169.y >= ((l_3124 = (((safe_add_func_int64_t_s_s((~p_4115->g_29[l_3082]), ((*l_3121) = 0xA6FB186144791BE6LL))) ^ l_3122[3]) >= l_3085)) , p_4115->g_815.x)), (safe_lshift_func_uint32_t_u_u((!((make_long1(p_4115->g_3127.x).x < (p_4115->g_3128 == l_3129[2])) , p_4115->g_29[l_3082])), l_3130)))) <= p_4115->g_1795), 255UL, 0UL, 0x5AL).z , 3UL) >= 0L) , nullptr) != l_3072), 25)) | 1UL), 0xFAL)) , nullptr) != l_3131))) & l_3122[1])))) && (*p_15)), l_3130)) & l_3130)), l_3130)))
            { /* block id: 1237 */
                uint32_t *****l_3143 = &p_4115->g_2334;
                int32_t l_3144 = 0x7ED837B1L;
                int32_t *l_3145 = nullptr;
                // attempting a hip shared for loop
                __shared__ int32_t *l_3146[8][1][2];
                for (int i = 0; i < 8; i++)
                {
                    for (int j = 0; j < 1; j++)
                    {
                        for (int k = 0; k < 2; k++)
                            l_3146[i][j][k] = nullptr;
                    }
                }
                struct S1 l_3147 = {0UL,0x9C54015CL,0xBD1CL,0L,{-190},-1L,0xED27404EL};
                ulong3 l_3160 = make_ulong3(18446744073709551614UL, 9UL, 18446744073709551614UL);
                uint64_t *l_3171 = &p_4115->g_2564;
                int i, j, k;
                l_3124 = (l_3085 = make_int1(make_int2(0xA02A6E67L, (safe_add_func_int16_t_s_s(((((safe_sub(make_short3(0L, (safe_unary_minus_func_uint8_t_u(((((((-1L) ^ (((l_3071 &= 0x94A344FCL) , ((make_ulong1(((*l_3121) = l_3138)).x | ((make_ulong3((safe_lshift_func_uint8_t_u_u(255UL, (safe_mod_func_int16_t_s_s((((l_3102[3][0].f4 , l_3143) != l_3143) , p_4115->g_974.x), 0x2539L)))), 18446744073709551610UL, 3UL) ^ make_ulong3(0xCA0BD09A8DCDA0B5LL, 0xCA0BD09A8DCDA0B5LL, 0xCA0BD09A8DCDA0B5LL))).x) == 249UL)) , 0x1BL)) ^ 0xD0F0L) == l_3144) >= (-5L)) ^ l_3063))), 0xF1B8L), make_short3((-1L), (-1L), (-1L))))).x || l_3144) , l_3103.f1), l_3130))).x).x);
                l_3092 = (((l_3147 , (safe_mul_func_uint8_t_u_u((0L >= (safe_lshift_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(((((safe_rshift(make_short4(((safe_mul_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((((make_ulong1(l_3160.y) ^ make_ulong1(0UL))).x ^ (safe_lshift_func_int8_t_s_s(((l_3164 ^= make_ushort3(l_3163.x, l_3163.x, l_3163.x).x) , make_char2(l_3165.y, l_3165.y).x), (safe_rshift_func_uint64_t_u_s((0x689CD653AD057E85LL ^ (safe_sub_func_uint32_t_u_u(l_3103.f0, l_3130))), (hip_const_3.f3 != (((l_3170 , (l_3170.f0 , (l_3171 != l_3120))) && 0x4FEB4385ED91AADCLL) , p_4115->g_962.y))))))), (*p_15))), (*p_4115->g_644))) ^ 0x76L), (-3L), p_4115->g_29[l_3082], p_4115->g_1987.x), make_short4(0x6771L, 0x6771L, 0x6771L, 0x6771L)))).x == p_4115->g_1429.y) & 0x90BCL), 3)), l_3170.f5))), 0xD8L))) <= 0x26CAL) > p_4115->g_1209.x);
            }
            else
            { /* block id: 1244 */
                struct S1 l_3173 = {4294967295UL,0x0EADE20AL,5UL,-6L,{325},0L,0L};
                uint32_t ***l_3182 = &p_4115->g_2082[3][3];
                int32_t l_3195[10][1][7] = {{{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}, {{0x4B24BE9DL, 0x5D9870D7L, 0x8699B1F4L, 1L, (-1L), 1L, 0x8699B1F4L}}};
                ulong3 l_3204 = make_ulong3(1UL, 18446744073709551615UL, 1UL);
                int i, j, k;
                for (l_3103.f5 = 0; (l_3103.f5 <= 9); l_3103.f5 += 1)
                { /* block id: 1247 */
                    struct S1 l_3174 = {7UL,1UL,65529UL,-4L,{-32},0x1E195EFAA77CCDC3LL,0xCC21EFF9L};
                    // attempting a hip shared for loop
                    __shared__ uint64_t **l_3185[7][6][6];
                    for (int i = 0; i < 7; i++)
                    {
                        for (int j = 0; j < 6; j++)
                        {
                            for (int k = 0; k < 6; k++)
                                l_3185[i][j][k] = nullptr;
                        }
                    }
                    uint8_t *l_3193[6] = {&l_3138, &l_3138, nullptr, &l_3138, &l_3138, nullptr};
                    ulong2 l_3203 = make_ulong2(0xD4726D450BA5C82DLL, 8UL);
                    int32_t *l_3208[3][2] = {{&p_4115->g_29[l_3082], nullptr}, {&p_4115->g_29[l_3082], nullptr}, {&p_4115->g_29[l_3082], nullptr}};
                    int i, j, k;
                    l_3174 = (make_long2(l_3172.x, l_3172.x).x , l_3173);
                    for (p_4115->g_413 = 3; (p_4115->g_413 <= 9); p_4115->g_413 += 1)
                    { /* block id: 1251 */
                        uint32_t ****l_3183[2];
                        __shared__ int32_t *l_3188;
                        l_3188 = &l_3085;
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_3183[i] = &l_3182;
                        (*l_3188) = (((*l_3132) = (safe_rshift_func_uint8_t_u_s(((safe_lshift_func_uint8_t_u_u((((safe_mod_func_int64_t_s_s(make_long1(l_3181.x).x, 0xC10E1B58615349F0LL)) , (p_4115->g_3184 = l_3182)) == nullptr), 0)) && make_ulong4(p_4115->g_29[l_3082], (l_3185[5][4][4] == nullptr), l_3174.f6, (((safe_div_func_uint64_t_u_u(((-5L) != 0x6EL), l_3174.f5)) || 7L) >= p_4115->g_29[l_3082])).z), 3))) == 65535UL);
                    }
                    l_3124 = ((((safe_add_func_uint16_t_u_u(65533UL, (safe_sub_func_uint64_t_u_u(0UL, l_3103.f1)))) && ((p_4115->g_565.x = l_3173.f2) && (l_3195[9][0][2] = (l_3173.f4.f0 = l_3194)))) & (((make_uint2(p_4115->g_3196.x, p_4115->g_3196.x) ^ ((make_uint2(l_3197.y, l_3197.y) & ((((~((make_uint2((l_3071 ^ (((((safe_mod_func_int8_t_s_s(make_char4(((make_uchar2(l_3200.x, l_3200.x).y != (safe_div_func_int16_t_s_s(((((((make_ulong2(l_3203.x, l_3203.x) ^ make_ulong2(l_3204.z, l_3204.z))) & ((safe_mod(((make_ulong2(p_4115->g_3207.y, p_4115->g_3207.y) ^ make_ulong2(0xE2FCD499A0AC5E14LL, 18446744073709551606UL))), make_ulong2(18446744073709551612UL, 8UL)))))).x || (-1L)) > 0xABBBL), (-6L)))) & l_3181.x), 0xACL, (-1L), 0x73L).y, p_4115->g_3196.x)) | l_3103.f1) , l_3173.f5) , 0xEDEAD567BC350E5ALL) > 7UL)), l_3103.f4.f0) ^ make_uint2(0x33FE17ABL, 0x33FE17ABL))))) ^ make_uint2(1UL, 1UL))))))).y && (*p_15))) == l_3173.f2);
                    l_3195[9][0][2] = 0L;
                    for (p_4115->g_247 = 0; (p_4115->g_247 <= 3); p_4115->g_247 += 1)
                    { /* block id: 1263 */
                        return l_3092;
                    }
                }
                for (p_4115->g_1921 = 0; p_4115->g_1921 < 1; p_4115->g_1921 += 1)
                {
                    for (l_3103.f0 = 0; l_3103.f0 < 3; l_3103.f0 += 1)
                    {
                        l_3123[p_4115->g_1921][l_3103.f0] = &p_4115->g_1251;
                    }
                }
            }
            for (l_3170.f1 = 0; (l_3170.f1 <= 9); l_3170.f1 += 1)
            { /* block id: 1271 */
                __shared__ int8_t l_3217;
                l_3217 = 3L;
                ulong2 l_3229 = make_ulong2(0x5C6A6608F65DB3ACLL, 18446744073709551615UL);
                int32_t l_3239 = 1L;
                int8_t **l_3240[6][7] = {{&p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644}, {&p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644}, {&p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644}, {&p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644}, {&p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644}, {&p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644, &p_4115->g_644}};
                __shared__ uint1 l_3249;
                l_3249 = make_uint1(0xBE20BFC5L);
                int64_t l_3252 = 0L;
                int32_t l_3265 = 0xFBA41B96L;
                __shared__ struct S0 *l_3271;
                l_3271 = &l_3103.f4;
                struct S0 *l_3272[10][8] = {{&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}, {&l_3170.f4, nullptr, &l_3170.f4, &l_3170.f4, &l_3170.f4, nullptr, &hip_const_6, nullptr}};
                int32_t l_3278[8];
                int8_t l_3292 = 0xAEL;
                uint32_t l_3295 = 1UL;
                uint32_t **l_3321 = &l_3080;
                int32_t *l_3324 = nullptr;
                int32_t *l_3325 = nullptr;
                __shared__ int32_t *l_3326;
                l_3326 = &l_3085;
                int i, j;
                for (int i = 0; i < 8; i++)
                    l_3278[i] = 0x0E8081FEL;
                if ((safe_mul_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((-10L), (-1L))) <= ((safe_sub_func_uint32_t_u_u((((safe_rshift(make_short2(l_3217, l_3103.f0), make_short2(16, 16)))).y && ((1UL | (safe_lshift_func_uint64_t_u_s(((safe_lshift_func_int32_t_s_u((((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint64_t_u_u(l_3226, (+((((safe_mul(make_ulong2(l_3229.x, l_3229.x), make_ulong2(p_4115->g_3230.z, p_4115->g_3230.z)))).x , l_3231) != (p_4115->g_3232 = l_3231))))), (l_3239 = (p_4115->g_3068.x = make_ushort3((safe_sub_func_int8_t_s_s((((((((safe_lshift(make_ushort4(0xC5DDL, 65532UL, (p_4115->g_3238 &= ((make_ushort3(p_4115->g_3237.x, p_4115->g_3237.x, p_4115->g_3237.x) & make_ushort3(p_4115->g_565.x, 0x37B9L, 0UL))).x), 0x6642L), make_ushort4(0x377AL, 0x377AL, 0x377AL, 0x377AL)))) ^ make_ushort4(0UL, 0UL, 0UL, 0UL))).w != l_3217) , p_4115->g_1209.x) != 0xB7A6L), (*p_4115->g_644))), 0xBA00L, l_3217).x)))) , l_3240[0][2]) != (*l_3131)), 3)) , l_3217), 53))) , (-1L))), 0xB5251C1EL)) > 6UL)), p_4115->g_2943)))
                { /* block id: 1276 */
                    uint32_t l_3241[6] = {18446744073709551615UL, 0x2D3E927AL, 18446744073709551615UL, 0x2D3E927AL, 18446744073709551615UL, 0x2D3E927AL};
                    __shared__ int32_t l_3269;
                    l_3269 = (-1L);
                    int i;
                    l_3241[3]--;
                    if ((l_3239 < (safe_mul_func_uint8_t_u_u((((safe_unary_minus_func_int16_t_s((safe_add_func_uint32_t_u_u(make_uint4(l_3249.x, l_3249.x, l_3249.x, l_3249.x).x, (make_char1(((safe_mod_func_uint64_t_u_u(l_3252, (-1L))) != (l_3122[3] == ((-1L) <= (((l_3265 = (safe_mul_func_int32_t_s_s(((p_4115->g_2216.x , (*p_15)) | (((((p_4115->g_1210.x = ((make_char1((-6L)).x != ((((safe_rshift_func_int16_t_s_s((l_3239 >= ((((safe_div_func_int8_t_s_s(((safe_add_func_int8_t_s_s(((((l_3092 |= (((safe_sub_func_int16_t_s_s(l_3241[3], l_3252)) < 0x0F2FL) , p_4115->g_2169.x)) , 0xB07C7DAD0AE5C8D4LL) , (*p_15)) ^ 0xF89AAC94L), l_3249.x)) == (*p_15)), 0x5CL)) && 0L) & l_3229.y) & 65535UL)), 13)) < (*p_4115->g_644)) <= 0xAEF7L) <= 0L)) > 1L)) && l_3241[0]) && l_3249.x) & l_3085) , l_3241[5])), l_3241[3]))) , 0UL) == p_4115->g_758.z))))).x && p_4115->g_2564))))) > hip_const_5[6].f0) & (-10L)), (**p_4115->g_643)))))
                    { /* block id: 1281 */
                        uint16_t l_3266 = 0x157CL;
                        ++l_3266;
                        if (l_3165.x)
                            break;
                        if (l_3241[3])
                            break;
                    }
                    else
                    { /* block id: 1285 */
                        l_3269 = l_3085;
                        l_3270 = &l_3265;
                        l_3272[3][4] = l_3271;
                    }
                }
                else
                { /* block id: 1290 */
                    int32_t l_3275 = 0x07310DD9L;
                    int32_t l_3276 = 0xB7FC1727L;
                    int32_t l_3277[4];
                    uint16_t **l_3311 = &l_3070[0];
                    int i;
                    for (int i = 0; i < 4; i++)
                        l_3277[i] = 0x816FFD81L;
                    l_3273 = func_16(func_16(&l_3092, p_4115), p_4115);
                    for (l_3063 = 6; (l_3063 >= 0); l_3063 -= 1)
                    { /* block id: 1294 */
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_3274[2];
                        for (int i = 0; i < 2; i++)
                            l_3274[i] = &p_4115->g_29[2];
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_3274[i] = &p_4115->g_29[2];
                        (*l_3273) = (*p_15);
                        --l_3295;
                    }
                    for (l_3285 = 0; (l_3285 <= 3); l_3285 += 1)
                    { /* block id: 1300 */
                        int64_t l_3310 = 0x47073E70D28E4879LL;
                        __shared__ uint32_t *l_3320;
                        l_3320 = &p_4115->g_3238;
                        int32_t l_3323 = 0x26CEFC6EL;
                        (*l_3060) = (*l_3061);
                        if ((*p_15))
                            continue;
                        l_3323 = ((safe_mod_func_uint64_t_u_u((make_uchar4(l_3300.y, l_3300.y, l_3300.y, l_3300.y).z < (safe_lshift_func_int8_t_s_s((((safe_lshift(make_ulong3(p_4115->g_3305.x, p_4115->g_3305.x, p_4115->g_3305.x), ((safe_rshift(make_ulong3(l_3308.x, l_3308.x, l_3308.x), make_ulong3(p_4115->g_3309.y, p_4115->g_3309.y, p_4115->g_3309.y))))))).x , l_3275), (l_3310 != (l_3311 != nullptr))))), l_3312)) < ((safe_mod_func_int8_t_s_s((safe_mul_func_int32_t_s_s(((safe_add_func_int16_t_s_s(l_3278[5], (l_3319 != ((((*l_3320) &= p_4115->g_2505.x) , l_3321) == l_3322)))) , (-8L)), (*p_15))), 9UL)) , (*p_15)));
                    }
                }
                (*l_3326) ^= (nullptr == &p_15);
                for (p_4115->g_247 = 0; (p_4115->g_247 <= 9); p_4115->g_247 += 1)
                { /* block id: 1310 */
                    struct S1 ****l_3328 = &l_3078[0][1][2];
                    if ((*p_15))
                        break;
                    (*l_3328) = l_3327;
                    p_15 = (hip_const_2 , p_15);
                }
            }
            for (l_3103.f3 = 3; (l_3103.f3 >= 0); l_3103.f3 -= 1)
            { /* block id: 1318 */
                __shared__ uint32_t l_3358;
                l_3358 = 0xBC0977F3L;
                int32_t l_3365[10][7][2] = {{{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}, {{(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}, {(-9L), (-9L)}}};
                int32_t l_3366 = (-1L);
                uint8_t *l_3375 = &l_3138;
                int16_t *l_3376 = &l_3101;
                int16_t *l_3377 = &hip_const_3.f3;
                int16_t *l_3378 = &hip_const_3.f3;
                // attempting a hip shared for loop
                __shared__ int16_t *l_3379[5];
                for (int i = 0; i < 5; i++)
                    l_3379[i] = nullptr;
                int32_t l_3381 = (-1L);
                int16_t l_3387 = (-5L);
                int8_t l_3398 = 0L;
                struct S0 l_3429[3] = {{254}, {254}, {254}};
                int i, j, k;
                for (int i = 0; i < 5; i++)
                    l_3379[i] = nullptr;
                if (((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint32_t_u_u(((safe_div(((safe_mul(((make_uint3(p_4115->g_3337.x, p_4115->g_3337.x, p_4115->g_3337.x) & ((safe_add(make_uint3(p_4115->g_3340.z, p_4115->g_3340.z, p_4115->g_3340.z), ((make_uint3(l_3341.z, l_3341.z, l_3341.z) ^ make_uint3(((((((safe_add_func_uint8_t_u_u(((safe_mod(make_uchar1(p_4115->g_3346.y), make_uchar1(l_3347.y)))).x, ((safe_div(make_char1(l_3350.x), ((((make_char1(l_3351.z) ^ ((make_char1(p_4115->g_3352.x) ^ ((safe_add(make_char1(l_3355.x), make_char1(0L)))))))) | ((safe_div(make_char1(l_3358), make_char1((-1L)))))))))).x)) , (safe_mod_func_int64_t_s_s((l_3381 &= (safe_sub_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(((*p_15) && l_3358), ((l_3366 = (l_3365[3][6][1] = l_3358)) , ((((safe_lshift_func_uint32_t_u_s(((((make_uint4(0xBB484B09L, 3UL, (make_int3(p_4115->g_3369.z, p_4115->g_3369.z, p_4115->g_3369.z).z , (safe_add_func_int16_t_s_s(make_short2(3L, (p_4115->g_2592.x |= ((*l_3376) = ((*l_3132) &= (safe_sub_func_int16_t_s_s(l_3374, make_short3(((((((((*l_3375) = (p_4115->g_815.x &= (nullptr == l_3131))) > p_4115->g_750.y) , (-1L)) == 0UL) != l_3358) & p_4115->g_476.z) < 0L), 0L, 0x695FL).z)))))).x, l_3365[3][6][1]))), l_3380.y) & make_uint4(4294967286UL, 4294967286UL, 4294967286UL, 4294967286UL))) ^ make_uint4(1UL, 1UL, 1UL, 1UL))).x, (*p_15))) && 0L) & l_3181.y) ^ 0xFF3A2FA3D26D738FLL)))) ^ p_4115->g_2251.y), 65535UL))), l_3308.x))) < 0UL) | l_3382) != l_3358) > 0x6C930389L), l_3122[3], 4294967295UL)))))))), make_uint3(8UL, 8UL, 8UL)))), make_uint3(4294967287UL, 4294967287UL, 4294967287UL)))).x, 4294967295UL)), l_3358)) < l_3358))
                { /* block id: 1327 */
                    uint8_t l_3397 = 0x13L;
                    int32_t *l_3409 = &l_3289[4][0];
                    int32_t l_3413 = 1L;
                    int32_t l_3414 = 7L;
                    int32_t l_3415 = 0xFB6E159CL;
                    if ((((***l_3131) = (l_3170 , (safe_mul_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((l_3381 ^= l_3387), ((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(((make_int4(l_3392.x, l_3392.x, l_3392.x, l_3392.x).y <= l_3365[3][6][1]) && ((safe_mod(make_char1(p_4115->g_3395.x), make_char1(((safe_unary_minus_func_uint8_t_u((l_3397 , l_3398))) ^ (l_3365[6][0][0] = ((safe_rshift_func_int32_t_s_s(p_4115->g_3401, 12)) , (((((safe_sub_func_uint64_t_u_u((nullptr == &p_4115->g_2714), (safe_div_func_uint8_t_u_u(p_4115->g_1833.y, l_3397)))) >= l_3163.x) != (-5L)) > 8L) ^ p_4115->g_1461.y)))))))).x), 3)), l_3397)) , (*p_15)))), l_3397)))) , (*p_15)))
                    { /* block id: 1331 */
                        int32_t **l_3407 = nullptr;
                        int32_t **l_3408[6] = {&l_3083, &l_3083, &p_4115->g_162, &l_3083, &l_3083, &p_4115->g_162};
                        int i;
                        l_3406 = &p_4115->g_3232;
                        l_3409 = p_15;
                        if (l_3381)
                            continue;
                    }
                    else
                    { /* block id: 1335 */
                        int32_t *l_3411 = &l_3194;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_3412[9][5];
                        for (int i = 0; i < 9; i++)
                        {
                            for (int j = 0; j < 5; j++)
                                l_3412[i][j] = nullptr;
                        }
                        int i, j;
                        l_3416[6][0][2]++;
                        if ((*p_15))
                            break;
                    }
                }
                else
                { /* block id: 1339 */
                    uint32_t l_3424 = 18446744073709551611UL;
                    int32_t l_3428 = 0x4E8889E1L;
                    uint16_t l_3436 = 0xC512L;
                    for (p_4115->g_3290 = 3; (p_4115->g_3290 >= 0); p_4115->g_3290 -= 1)
                    { /* block id: 1342 */
                        int8_t l_3419 = 0L;
                        int32_t *l_3420 = &l_3365[3][6][1];
                        int32_t *l_3421 = nullptr;
                        int32_t *l_3422 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_3423[8];
                        for (int i = 0; i < 8; i++)
                            l_3423[i] = &l_3284[1][2];
                        int3 l_3427 = make_int3((-2L), 0L, (-2L));
                        uint32_t *l_3430 = &l_3416[6][0][0];
                        int i;
                        l_3424--;
                        l_3428 = make_int2(l_3427.x, l_3427.x).y;
                        l_3288[1][2] = (l_3429[2] , make_int3((((*l_3430)++) ^ (-3L)), ((*l_3420) ^= l_3433), (safe_add_func_int16_t_s_s(0L, (+(((l_3436++) < (safe_lshift_func_uint32_t_u_u((~l_3428), (make_short1(l_3441.x).x && (safe_mod_func_uint8_t_u_u((0xC14EDB9FL | (*p_15)), (safe_unary_minus_func_int16_t_s((l_3445 != (*p_4115->g_2427)))))))))) <= 0x10EAL))))).x);
                    }
                }
                for (l_3358 = 0; (l_3358 <= 3); l_3358 += 1)
                { /* block id: 1353 */
                    __shared__ int32_t *l_3446;
                    l_3446 = nullptr;
                    __shared__ int32_t **l_3447;
                    l_3447 = &l_3083;
                    (*l_3447) = l_3446;
                    p_4115->g_3449 = l_3448;
                }
                l_3366 &= (safe_sub_func_int8_t_s_s((*p_4115->g_644), ((make_uchar2((l_3381 , p_4115->g_786.z), 1UL) ^ make_uchar2(p_4115->g_3309.x, 0x28L))).x));
            }
        }
    }
    p_15 = &l_3288[1][8];
    l_3453 = l_3452;
    return l_3454;
}


/* ------------------------------------------ */
/* 
 * reads : p_4115->g_63 hip_const_2 p_4115->g_2731 p_4115->g_162 p_4115->g_644 p_4115->g_1968 p_4115->g_643 p_4115->g_584 p_4115->g_2714 p_4115->g_2582 p_4115->g_1638 p_4115->g_2978 p_4115->g_2992 p_4115->g_920 p_4115->g_3009 p_4115->g_3010 p_4115->g_3013 p_4115->g_1209 p_4115->g_3046 p_4115->g_2457 p_4115->g_2334 p_4115->g_549
 * writes: p_4115->g_63 p_4115->g_2564 p_4115->g_2082 p_4115->g_162 p_4115->g_271 p_4115->g_1968 p_4115->g_375 p_4115->g_584 p_4115->g_2366
 */
__device__ int32_t * func_16(int32_t * p_17, struct S2 * p_4115)
{ /* block id: 1134 */
    uint16_t l_2751[8][6][5] = {{{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}, {{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}, {{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}, {{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}, {{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}, {{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}, {{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}, {{9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}, {9UL, 0xA0D5L, 4UL, 65531UL, 4UL}}};
    struct S0 l_2771 = {381};
    uint32_t **l_2772[3];
    uint64_t l_2796 = 0x76573530F60A6359LL;
    char4 l_2808 = make_char4(0xB6L, (-1L), 0xB6L, (-1L));
    int32_t l_2814 = 2L;
    int8_t ***l_2846 = &p_4115->g_643;
    int8_t ****l_2845 = &l_2846;
    int32_t l_2860 = (-7L);
    int32_t l_2865 = 1L;
    char2 l_2890 = make_char2(0xD5L, 0x54L);
    uint32_t l_2912 = 4294967295UL;
    __shared__ int8_t l_2915;
    l_2915 = 0xFFL;
    int64_t l_2916 = 0x2B00DD6276FEA69CLL;
    int32_t l_2940[3][7] = {{(-7L), 1L, 1L, 1L, 1L, (-7L), 1L}, {(-7L), 1L, 1L, 1L, 1L, (-7L), 1L}, {(-7L), 1L, 1L, 1L, 1L, (-7L), 1L}};
    uint32_t l_2949 = 0xB71A083BL;
    int3 l_2977 = make_int3(0x35FC0240L, 0x0072FD0DL, 0x35FC0240L);
    int16_t l_2983 = (-1L);
    __shared__ int64_t l_2984;
    l_2984 = (-1L);
    uint64_t l_2985 = 0x1D0B395FBD543804LL;
    struct S0 ****l_2997 = &p_4115->g_2425;
    ushort3 l_3000 = make_ushort3(0x8E79L, 65527UL, 0x8E79L);
    struct S1 ****l_3001 = &p_4115->g_383;
    short4 l_3004 = make_short4(6L, (-8L), 6L, (-8L));
    struct S1 l_3005 = {4294967295UL,0x9F4AF9AAL,0x2EF9L,0xF00CL,{478},-1L,0x8B46ACE5L};
    uint2 l_3008 = make_uint2(1UL, 0x0CA0C526L);
    // attempting a hip shared for loop
    __shared__ int32_t *l_3014[2];
    for (int i = 0; i < 2; i++)
        l_3014[i] = nullptr;
    long4 l_3015 = make_long4(1L, 0x25CDC6439D4771C3LL, 1L, 0x25CDC6439D4771C3LL);
    int i, j, k;
    for (int i = 0; i < 3; i++)
        l_2772[i] = &p_4115->g_2083;
    for (int i = 0; i < 2; i++)
        l_3014[i] = nullptr;
    for (p_4115->g_63 = (-12); (p_4115->g_63 >= (-3)); p_4115->g_63++)
    { /* block id: 1137 */
        int32_t *l_2753 = nullptr;
        __shared__ int32_t l_2754;
        l_2754 = 0x48AB7CC6L;
        struct S1 l_2757 = {1UL,0xC2FE2310L,0x0981L,0xFB19L,{-161},0L,6L};
        uint32_t **l_2769 = &p_4115->g_2083;
        uint32_t ***l_2770 = &p_4115->g_2082[5][2];
        int32_t l_2794 = 0xCA4BD557L;
        int32_t l_2795 = 0x01DAA76AL;
        struct S1 ***l_2830 = &p_4115->g_384[2][2][4];
        int32_t l_2834 = 1L;
        __shared__ long1 l_2840;
        l_2840 = make_long1(0xE8D608C075E703ACLL);
        uint64_t **l_2843[9];
        __shared__ int32_t l_2863;
        l_2863 = 8L;
        __shared__ ushort1 l_2923;
        l_2923 = make_ushort1(5UL);
        uint16_t l_2934[5];
        int32_t l_2941 = 0x3AD25C92L;
        int32_t l_2942 = 0x96353F83L;
        __shared__ int32_t l_2944;
        l_2944 = (-1L);
        int32_t l_2945 = (-2L);
        int32_t l_2946 = 0x0D117771L;
        int32_t l_2947 = 1L;
        int32_t l_2948[1][8] = {{(-5L), (-7L), (-5L), (-7L), (-5L), (-7L), (-5L), (-7L)}};
        __shared__ uint64_t l_2952;
        l_2952 = 0UL;
        int i, j;
        for (int i = 0; i < 9; i++)
            l_2843[i] = &p_4115->g_584;
        for (int i = 0; i < 5; i++)
            l_2934[i] = 0x7878L;
        for (p_4115->g_2564 = 0; (p_4115->g_2564 == 17); ++p_4115->g_2564)
        { /* block id: 1140 */
            struct S0 l_2752 = {-412};
            if (l_2751[6][0][1])
                break;
            if ((*p_17))
                continue;
            l_2753 = (l_2752 , p_17);
        }
        if ((l_2754 || ((safe_rshift_func_uint64_t_u_u((l_2757 , (safe_sub_func_int32_t_s_s((~(safe_add_func_uint8_t_u_u(make_uchar4(p_4115->g_2762.y, p_4115->g_2762.y, p_4115->g_2762.y, p_4115->g_2762.y).x, (safe_rshift_func_int32_t_s_s(0x78220D93L, 8))))), l_2757.f3))), 50)) != ((safe_rshift_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(p_4115->g_2731.y, (((*l_2770) = l_2769) != (l_2771 , l_2772[2])))), (safe_lshift_func_uint64_t_u_u((safe_add_func_int8_t_s_s(1L, l_2771.f0)), 2)))) & l_2771.f0))))
        { /* block id: 1146 */
            struct S0 *l_2777 = &hip_const_3.f4;
            __shared__ struct S0 *l_2778;
            l_2778 = &hip_const_5[6];
            struct S0 *l_2779 = &l_2771;
            __shared__ int32_t l_2792;
            l_2792 = (-1L);
            int32_t l_2793 = 0x4B265E4DL;
            char2 l_2809 = make_char2(1L, 0x2DL);
            int32_t **l_2823 = &l_2753;
            uint64_t ***l_2831[8] = {&p_4115->g_2714, &p_4115->g_2714, &p_4115->g_2714, &p_4115->g_2714, &p_4115->g_2714, &p_4115->g_2714, &p_4115->g_2714, &p_4115->g_2714};
            __shared__ int32_t l_2859;
            l_2859 = 0x84943E7AL;
            int32_t l_2864[9][4][7] = {{{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}, {{5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}, {5L, 1L, 0x9C1026AFL, 0x58DB2280L, 0L, 0xE7E8067AL, 6L}}};
            int32_t l_2924 = 0xF9767B7CL;
            int i, j, k;
            (*l_2779) = l_2771;
            if ((safe_sub_func_int16_t_s_s((-1L), (7L == (*p_17)))))
            { /* block id: 1148 */
                int32_t *l_2782 = nullptr;
                __shared__ int32_t *l_2783;
                l_2783 = nullptr;
                int32_t *l_2784 = &hip_const_2;
                __shared__ int32_t *l_2785;
                l_2785 = nullptr;
                int32_t *l_2786 = &hip_const_2;
                __shared__ int32_t *l_2787;
                l_2787 = nullptr;
                int32_t *l_2788 = nullptr;
                int32_t *l_2789 = nullptr;
                int32_t *l_2790 = &hip_const_2;
                int32_t *l_2791[3][8] = {{nullptr, nullptr, &p_4115->g_2046, &p_4115->g_2046, nullptr, nullptr, nullptr, &p_4115->g_2046}, {nullptr, nullptr, &p_4115->g_2046, &p_4115->g_2046, nullptr, nullptr, nullptr, &p_4115->g_2046}, {nullptr, nullptr, &p_4115->g_2046, &p_4115->g_2046, nullptr, nullptr, nullptr, &p_4115->g_2046}};
                int i, j;
                ++l_2796;
            }
            else
            { /* block id: 1150 */
                int64_t l_2810 = 0x7DD10AD9B3FBE51FLL;
                int32_t **l_2825 = &p_4115->g_162;
                struct S1 ***l_2829 = nullptr;
                // attempting a hip shared for loop
                __shared__ int32_t l_2849[4][2];
                for (int i = 0; i < 4; i++)
                {
                    for (int j = 0; j < 2; j++)
                        l_2849[i][j] = 0xDC0705F2L;
                }
                int32_t l_2857 = 0xE38A8284L;
                uint32_t l_2867 = 1UL;
                char3 l_2892 = make_char3(0x25L, 0x98L, 0x25L);
                int16_t **l_2910[3];
                __shared__ int32_t *l_2925;
                l_2925 = &l_2849[2][1];
                int32_t *l_2926 = nullptr;
                int32_t *l_2927 = nullptr;
                int32_t *l_2928 = &l_2754;
                int32_t *l_2929 = nullptr;
                int32_t *l_2930 = &p_4115->g_29[2];
                int32_t *l_2931 = &l_2795;
                int32_t *l_2932 = &l_2860;
                int32_t *l_2933[5] = {&l_2849[3][0], &p_4115->g_2046, &l_2849[3][0], &p_4115->g_2046, &l_2849[3][0]};
                int i, j;
                for (int i = 0; i < 3; i++)
                    l_2910[i] = &p_4115->g_1576;
                for (l_2757.f3 = 0; (l_2757.f3 < (-1)); l_2757.f3--)
                { /* block id: 1153 */
                    int32_t l_2813 = (-6L);
                    int32_t l_2833 = 0L;
                    int16_t *l_2835 = &p_4115->g_375;
                    uint64_t **l_2844 = &p_4115->g_584;
                    struct S0 *l_2847 = &l_2757.f4;
                    uint64_t l_2854 = 0x3E58E1FC3E86BD02LL;
                    int32_t l_2861 = 0x146528F4L;
                    int32_t l_2862 = 0x7FDAAEF9L;
                    int32_t l_2866 = 0xBC455D08L;
                    ulong4 l_2878 = make_ulong4(0xB188DE6AAC6FE0E5LL, 1UL, 0xB188DE6AAC6FE0E5LL, 1UL);
                    char2 l_2888 = make_char2(6L, 0xE9L);
                    __shared__ char2 l_2889;
                    l_2889 = make_char2(1L, 0xA6L);
                    int i;
                    for (l_2796 = 0; (l_2796 == 20); l_2796 = safe_add_func_uint16_t_u_u(l_2796, 1))
                    { /* block id: 1156 */
                        int32_t **l_2803 = &p_4115->g_162;
                        struct S0 l_2818 = {-88};
                        __shared__ int32_t *l_2819;
                        l_2819 = nullptr;
                        int32_t *l_2820[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int32_t ***l_2824 = &p_4115->g_271;
                        int64_t *l_2826[1];
                        int8_t *l_2832[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int i;
                        for (int i = 0; i < 1; i++)
                            l_2826[i] = &l_2810;
                        p_17 = ((*l_2803) = (make_uint4(0UL, 0x1F277B12L, (l_2792 && (l_2814 &= ((((*l_2779) = l_2771) , ((nullptr != l_2803) , (l_2810 = (0x9BL ^ ((safe_sub(((safe_mul(make_char1(8L), make_char1(l_2808.y)))), make_char1(l_2809.y)))).x)))) > (p_4115->g_473.x == (safe_sub_func_uint32_t_u_u((l_2813 < make_ushort2(1UL, 0UL).x), 5UL)))))), 2UL).x , p_17));
                        (*l_2803) = (*l_2803);
                        (*l_2803) = p_17;
                        l_2834 &= (safe_unary_minus_func_int32_t_s((safe_mod_func_int8_t_s_s((l_2818 , (p_4115->g_1968.x |= (((((l_2793 |= make_int2(0x2DB55CB6L, 0xFEF65618L).x) || l_2809.y) < (((safe_mul_func_uint32_t_u_u(((l_2825 = ((*l_2824) = l_2823)) != (((l_2813 = (nullptr != &l_2753)) , ((((~((safe_sub_func_uint32_t_u_u((0x39AAL > (l_2810 != ((l_2829 == l_2830) | l_2751[0][4][3]))), 0x3E4E12B4L)) != l_2810)) , nullptr) != l_2831[5]) | l_2813)) , nullptr)), 0xAA8DB13AL)) , 0xEF39D61F27CDD208LL) , (*p_4115->g_644))) , l_2813) != (*p_17)))), l_2833))));
                    }
                    if (((((((l_2751[4][1][1] > ((*l_2835) = l_2814)) , &l_2796) != ((*p_4115->g_2714) = (((safe_rshift_func_int32_t_s_s((safe_mul_func_int64_t_s_s(0xCA64C22F2778D944LL, make_long4(l_2840.x, l_2840.x, l_2840.x, l_2840.x).z)), 15)) , (((safe_add_func_int8_t_s_s(l_2796, (**p_4115->g_643))) , l_2843[4]) != l_2844)) , (*l_2844)))) & 0x2D0A2049L) , nullptr) == l_2845))
                    { /* block id: 1173 */
                        struct S0 **l_2848 = &l_2779;
                        int32_t *l_2850 = &l_2793;
                        int32_t *l_2851 = nullptr;
                        int32_t *l_2852 = nullptr;
                        int32_t *l_2853[3][8][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
                        int64_t l_2858[1];
                        int i, j, k;
                        for (int i = 0; i < 1; i++)
                            l_2858[i] = 0x5F1A77E6555E0ADFLL;
                        (*l_2848) = l_2847;
                        l_2854--;
                        l_2867++;
                    }
                    else
                    { /* block id: 1177 */
                        // attempting a hip shared for loop
                        __shared__ uint32_t l_2883[7][9];
                        for (int i = 0; i < 7; i++)
                        {
                            for (int j = 0; j < 9; j++)
                                l_2883[i][j] = 0x0849B785L;
                        }
                        uint16_t *l_2909 = &l_2757.f2;
                        __shared__ uint8_t *l_2911;
                        l_2911 = &p_4115->g_1160;
                        int32_t *l_2913 = nullptr;
                        int32_t *l_2914[6][4][3] = {{{&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}}, {{&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}}, {{&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}}, {{&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}}, {{&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}}, {{&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}, {&l_2859, &l_2859, &l_2864[2][1][0]}}};
                        int i, j, k;
                        l_2757.f4.f0 &= (((safe_lshift_func_uint32_t_u_u(l_2808.y, ((safe_div_func_int16_t_s_s((safe_mul_func_uint32_t_u_u(0xAB92C624L, (l_2859 = (((safe_div_func_uint64_t_u_u(((((~make_ulong4(l_2849[0][1], 0x829FB449846938FFLL, 0x91F576E96DBC5BDDLL, 0x8594EB12541146DCLL))) | make_ulong4(l_2878.y, l_2878.y, l_2878.y, l_2878.y))).w, l_2808.x)) != l_2861) == (safe_sub_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((l_2883[1][5] || (*p_17)) <= (l_2833 ^= ((((((((safe_rshift(((safe_mul(((((make_char2(l_2888.y, l_2888.y) & make_char2(l_2889.x, l_2889.x))) ^ ((make_char2(l_2890.x, l_2890.x) ^ make_char2(0x54L, make_char2(p_4115->g_2891.y, p_4115->g_2891.y).y))))), make_char2(l_2892.x, l_2892.x)))), make_char2(8, 8)))) | make_char2((safe_sub_func_uint8_t_u_u((safe_add_func_int8_t_s_s(make_char4((safe_sub_func_uint8_t_u_u((((safe_div_func_int8_t_s_s((l_2865 = ((--p_4115->g_2901) < ((safe_mul_func_uint8_t_u_u((!make_uchar1(((*l_2911) &= ((((safe_mod(make_uint3(p_4115->g_2908.z, p_4115->g_2908.z, p_4115->g_2908.z), make_uint3(((((((((*l_2909) = p_4115->g_2046) && l_2890.x) , l_2910[1]) != nullptr) , p_4115->g_2216.z) < l_2757.f0) , 0xE7E84101L), l_2878.y, 4294967288UL)))).z < l_2751[6][0][1]) , l_2883[1][5]))).x), l_2878.z)) | l_2889.y))), 1L)) & l_2912) > p_4115->g_1505.y), p_4115->g_2908.y)), (*p_4115->g_644), l_2840.x, 1L).y, p_4115->g_1413.x)), 0L)), (*p_4115->g_644)))) ^ make_char2(0x44L, 0x44L))) ^ make_char2(0x93L, 0x93L))).x)), 0xC8L)), l_2751[6][0][1])))))), l_2915)) > p_4115->g_2582.x))) && l_2916) < l_2915);
                        l_2859 = ((safe_mul_func_int32_t_s_s((-4L), (safe_rshift_func_uint8_t_u_u(p_4115->g_1638.y, (safe_div_func_uint16_t_u_u(make_ushort2(l_2923.x, l_2923.x).y, l_2866)))))) < l_2751[6][0][1]);
                        if (l_2813)
                            break;
                        l_2861 = (l_2831[5] != &p_4115->g_2714);
                    }
                }
                if ((*p_17))
                    continue;
                l_2934[1]--;
            }
        }
        else
        { /* block id: 1193 */
            int32_t l_2937 = 0xFEEC2520L;
            int32_t *l_2938 = &l_2794;
            // attempting a hip shared for loop
            __shared__ int32_t *l_2939[5][4];
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 4; j++)
                    l_2939[i][j] = &hip_const_2;
            }
            int i, j;
            l_2949--;
        }
        l_2952--;
    }
    for (l_2796 = 24; (l_2796 < 52); ++l_2796)
    { /* block id: 1200 */
        int8_t l_2957 = 2L;
        int32_t *l_2958 = &l_2940[2][1];
        __shared__ int32_t *l_2959;
        l_2959 = nullptr;
        __shared__ int32_t *l_2960;
        l_2960 = &p_4115->g_29[0];
        int32_t *l_2961[7][8][4] = {{{nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}}, {{nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}}, {{nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}}, {{nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}}, {{nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}}, {{nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}}, {{nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}, {nullptr, &l_2814, nullptr, nullptr}}};
        uint8_t l_2962 = 0xEFL;
        int8_t l_2965[6][8];
        uint32_t l_2966 = 18446744073709551614UL;
        int i, j, k;
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 8; j++)
                l_2965[i][j] = 1L;
        }
        l_2962++;
        --l_2966;
    }
    if ((l_3015.z = (safe_rshift_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((l_2865 &= (safe_sub_func_int32_t_s_s(((safe_sub(make_int2(l_2977.y, l_2977.y), make_int2(p_4115->g_2978.x, p_4115->g_2978.x)))).x, l_2808.x))) == (safe_lshift_func_int16_t_s_s(make_short3((safe_lshift_func_uint32_t_u_s((l_2985++), 7)), 0xDCE5L, (safe_sub_func_int64_t_s_s(((safe_lshift(make_long1(p_4115->g_2992.z), make_long1(64)))).x, ((((safe_rshift_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(((make_ushort4((l_2997 != &p_4115->g_2427), 0xA75EL, 0xF5F2L, 0UL) | ((safe_lshift(((make_ushort4((make_ushort3(l_3000.x, l_3000.x, l_3000.x).z && p_4115->g_920.y), (((nullptr == l_3001) <= (+(safe_mod_func_int32_t_s_s((make_short4(l_3004.w, l_3004.w, l_3004.w, l_3004.w).z ^ ((make_ushort1((l_3005 , (safe_mod_func_uint64_t_u_u((+(((make_uint1(l_3008.y) ^ ((make_uint1(p_4115->g_3009.w) ^ ((make_uint1(p_4115->g_3010.x) ^ ((make_uint1((safe_mod_func_int8_t_s_s((l_2949 != ((((make_uint4(p_4115->g_3013.y, p_4115->g_3013.y, p_4115->g_3013.y, p_4115->g_3013.y) ^ make_uint4(((((l_3005.f4 , l_2940[0][4]) , 0UL) , 0x2627383FL) ^ l_2984), 0xCBD23BAFL, 0UL, 0x61B27D81L))) ^ make_uint4(0xB83E7A16L, 0xB83E7A16L, 0xB83E7A16L, 0xB83E7A16L))).y), 2UL))) | make_uint1(4294967289UL))))))))).x | l_2983)), l_3005.f1)))) ^ make_ushort1(0x1E18L))).x), 0x66B9D155L)))) == l_2796), 0x15B9L, 0xCF5BL) & make_ushort4(1UL, 1UL, 1UL, 1UL))), make_ushort4(16, 16, 16, 16)))))).w, l_2915)), 21)) <= l_3005.f1) && l_2985) >= 0UL)))).x, 8))), 0x6FL)), 9))))
    { /* block id: 1207 */
        long4 l_3016 = make_long4(1L, (-1L), 1L, (-1L));
        // attempting a hip shared for loop
        __shared__ uint32_t l_3017[7][3];
        for (int i = 0; i < 7; i++)
        {
            for (int j = 0; j < 3; j++)
                l_3017[i][j] = 4294967287UL;
        }
        int i, j;
        --l_3017[2][0];
    }
    else
    { /* block id: 1209 */
        int8_t l_3024 = 0x9BL;
        struct S1 ****l_3047 = &p_4115->g_383;
        __shared__ int16_t l_3048;
        l_3048 = (-2L);
        // attempting a hip shared for loop
        __shared__ uint32_t ***l_3050[5][9][2];
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 9; j++)
            {
                for (int k = 0; k < 2; k++)
                    l_3050[i][j][k] = &p_4115->g_2082[5][5];
            }
        }
        uint32_t ****l_3049 = &l_3050[0][2][0];
        int32_t l_3051 = 0x4F23D443L;
        int i, j, k;
        l_3051 |= make_int4(1L, (((make_ushort1(0x920BL) | make_ushort1(0xFA87L))).x < (safe_lshift_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s(0xEF81L, 7)), l_3024))), 0xB53EEE17L, (safe_mod_func_uint8_t_u_u(0xA2L, ((safe_add_func_uint64_t_u_u(((safe_unary_minus_func_uint8_t_u(((p_4115->g_2366.y = (safe_mul_func_int32_t_s_s(l_3024, ((0xED29L > l_3024) != ((safe_sub_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(((((((safe_mod_func_uint8_t_u_u(p_4115->g_1209.x, (safe_sub_func_uint16_t_u_u(((safe_div(make_ushort1(0UL), ((safe_add(((safe_lshift(make_ushort1(p_4115->g_3046.y), ((make_ushort1((l_3047 != nullptr)) | make_ushort1(0xD986L)))))), make_ushort1(5UL))))))).x, l_3048)))) , l_3049) != (*p_4115->g_2457)) , (-9L)) & l_3048) == 65535UL), p_4115->g_549.x)), 4L)) == l_3024))))) | 5L))) | 7L), l_3024)) && l_3024)))).x;
    }
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_4115->g_271 p_4115->g_1413 p_4115->g_644 p_4115->g_63 p_4115->g_162 p_4115->g_1209 p_4115->g_1506 p_4115->g_643 p_4115->g_413 p_4115->g_1313 hip_const_5.f0 p_4115->g_448 hip_const_1 p_4115->g_1921 p_4115->g_1923 p_4115->g_1328 hip_const_3.f4 p_4115->g_29 p_4115->g_1089 p_4115->g_2334 p_4115->g_1571 p_4115->g_1505 p_4115->g_2365 p_4115->g_2366 p_4115->g_428 p_4115->g_429 p_4115->g_383 p_4115->g_384 p_4115->g_2407 p_4115->g_67 hip_const_4 p_4115->g_2425 p_4115->g_2427 p_4115->g_1252 p_4115->g_189 p_4115->g_2216 p_4115->g_786 p_4115->g_549 p_4115->g_565 p_4115->g_2016 p_4115->g_2689 hip_const_3.f0 p_4115->g_1611 p_4115->g_270 p_4115->g_2713 p_4115->g_965 p_4115->g_385 hip_const_3 p_4115->g_2731 p_4115->g_462
 * writes: p_4115->g_29 p_4115->g_162 p_4115->g_63 p_4115->g_462 p_4115->g_1313 p_4115->g_1413 p_4115->g_413 p_4115->g_383 p_4115->g_385 p_4115->g_1328 p_4115->g_247 p_4115->g_429 p_4115->g_384 p_4115->g_786 p_4115->g_2425 p_4115->g_2457
 */
__device__ int32_t * func_18(uint32_t  p_19, int32_t  p_20, int32_t  p_21, struct S2 * p_4115)
{ /* block id: 1 */
    uint64_t l_26 = 18446744073709551615UL;
    int4 l_2730 = make_int4(0x04D71735L, 0x5CF5EEC4L, 0x04D71735L, 0x5CF5EEC4L);
    int32_t l_2732 = 0xB3C720B3L;
    int2 l_2739 = make_int2(0L, 1L);
    int32_t *l_2740 = &hip_const_2;
    int32_t *l_2741 = &hip_const_2;
    __shared__ int32_t l_2742;
    l_2742 = 0x3BAC12C5L;
    int32_t *l_2746 = &hip_const_2;
    int i;
    l_2742 ^= (func_24(l_26, p_4115) , (+(l_2730.x = ((((make_int1(l_2730.x) ^ make_int1((l_2732 |= make_int1(p_4115->g_2731.y).x)))).x | l_26) & (safe_mul_func_int16_t_s_s((((safe_div_func_int32_t_s_s(p_21, make_uint2(0UL, 0x128CFDD8L).x)) ^ l_2730.w) && 65535UL), (safe_add_func_int64_t_s_s(l_2730.y, ((l_2739.y ^= 1L) != l_2730.x)))))))));
    for (p_4115->g_462 = (-10); (p_4115->g_462 != 10); p_4115->g_462 = safe_add_func_uint16_t_u_u(p_4115->g_462, 5))
    { /* block id: 1130 */
        uint32_t l_2745 = 3UL;
        if (l_2745)
            break;
    }
    return l_2746;
}


/* ------------------------------------------ */
/* 
 * reads : p_4115->g_271 p_4115->g_1413 p_4115->g_644 p_4115->g_63 p_4115->g_162 p_4115->g_1209 p_4115->g_1506 p_4115->g_643 p_4115->g_413 p_4115->g_1313 hip_const_5.f0 p_4115->g_448 hip_const_1 p_4115->g_1921 p_4115->g_1923 p_4115->g_1328 hip_const_3.f4 p_4115->g_29 p_4115->g_1089 p_4115->g_2334 p_4115->g_1571 p_4115->g_1505 p_4115->g_2365 p_4115->g_2366 p_4115->g_428 p_4115->g_429 p_4115->g_383 p_4115->g_384 p_4115->g_2407 p_4115->g_67 hip_const_4 p_4115->g_2425 p_4115->g_2427 p_4115->g_1252 p_4115->g_189 p_4115->g_2216 p_4115->g_786 p_4115->g_549 p_4115->g_565 p_4115->g_2016 p_4115->g_2689 hip_const_3.f0 p_4115->g_1611 p_4115->g_270 p_4115->g_2713 p_4115->g_965 p_4115->g_385 hip_const_3
 * writes: p_4115->g_29 p_4115->g_162 p_4115->g_63 p_4115->g_462 p_4115->g_1313 p_4115->g_1413 p_4115->g_413 p_4115->g_383 p_4115->g_385 p_4115->g_1328 p_4115->g_247 p_4115->g_429 p_4115->g_384 p_4115->g_786 p_4115->g_2425 p_4115->g_2457
 */
__device__ int8_t  func_24(int32_t  p_25, struct S2 * p_4115)
{ /* block id: 2 */
    int32_t *l_1171 = &hip_const_1;
    int16_t l_1720 = 0x7DB8L;
    int32_t l_1770[1];
    int8_t l_1779 = (-10L);
    __shared__ int32_t l_1785;
    l_1785 = 0x263C58A5L;
    int8_t ***l_1802 = &p_4115->g_643;
    int8_t ****l_1801 = &l_1802;
    uint8_t *l_1876 = nullptr;
    short1 l_1883 = make_short1(0x3620L);
    ushort1 l_1888 = make_ushort1(3UL);
    uchar1 l_1924 = make_uchar1(1UL);
    uint32_t l_1945[4][2] = {{18446744073709551612UL, 18446744073709551612UL}, {18446744073709551612UL, 18446744073709551612UL}, {18446744073709551612UL, 18446744073709551612UL}, {18446744073709551612UL, 18446744073709551612UL}};
    char2 l_1962 = make_char2(0x77L, 0xA5L);
    char1 l_1969 = make_char1((-2L));
    char4 l_1982 = make_char4(0xABL, 0x9DL, 0xABL, 0x9DL);
    struct S1 l_1989 = {4294967295UL,0x070BCD9AL,0UL,0xADF7L,{56},0x49C3E860EC221AD6LL,0x70A8BB9CL};
    __shared__ int32_t *****l_2063;
    l_2063 = nullptr;
    int32_t ****l_2065[9] = {&p_4115->g_270[3], &p_4115->g_270[0], &p_4115->g_270[3], &p_4115->g_270[0], &p_4115->g_270[3], &p_4115->g_270[0], &p_4115->g_270[3], &p_4115->g_270[0], &p_4115->g_270[3]};
    int32_t *****l_2064 = &l_2065[5];
    uint64_t *l_2074[1][6];
    uint32_t *l_2079[9][9] = {{&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}, {&l_1989.f0, nullptr, &l_1989.f1, nullptr, &l_1989.f0, nullptr, &l_1989.f0, nullptr, &l_1989.f1}};
    uint32_t **l_2078[10] = {&l_2079[2][8], &l_2079[2][8], &l_2079[4][6], &l_2079[2][8], &l_2079[2][8], &l_2079[4][6], &l_2079[2][8], &l_2079[2][8], &l_2079[4][6], &l_2079[2][8]};
    short3 l_2147 = make_short3(0xFCC0L, 0x1F29L, 0xFCC0L);
    uint2 l_2165 = make_uint2(0x78B61907L, 0x8278AAF8L);
    uchar3 l_2172 = make_uchar3(252UL, 0x36L, 252UL);
    uchar1 l_2173 = make_uchar1(0x87L);
    struct S1 *****l_2201 = &p_4115->g_429[7];
    int32_t l_2245 = 0x66505055L;
    __shared__ int64_t l_2305;
    l_2305 = 0xFCBCCD5F8B45B402LL;
    int8_t l_2308 = 0x88L;
    __shared__ char4 l_2320;
    l_2320 = make_char4(0x6EL, (-1L), 0x6EL, (-1L));
    uint16_t l_2344[10][2][7] = {{{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}, {{0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}, {0x9FDFL, 0x2356L, 6UL, 65535UL, 0x0A74L, 0x0A74L, 65535UL}}};
    uint32_t l_2359 = 18446744073709551615UL;
    char1 l_2361 = make_char1(1L);
    struct S1 ***l_2372 = nullptr;
    long4 l_2394 = make_long4(0xE8BEA9561FA6D1E7LL, 0xBFAB034A6D65E6AALL, 0xE8BEA9561FA6D1E7LL, 0xBFAB034A6D65E6AALL);
    int32_t l_2420 = 0L;
    ushort3 l_2470 = make_ushort3(0x50A6L, 0xA1A2L, 0x50A6L);
    char1 l_2476 = make_char1((-1L));
    int64_t l_2491[5][6][7] = {{{0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}}, {{0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}}, {{0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}}, {{0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}}, {{0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}, {0x7A0D18191FC86551LL, 0x98FFAF84EF0E7E3BLL, 0xC5E17E373966BDDBLL, (-1L), 0xEE48E7C1F4516D10LL, 7L, 4L}}};
    int32_t l_2492 = (-5L);
    struct S0 **l_2532 = &p_4115->g_1328;
    __shared__ int32_t l_2563;
    l_2563 = 0x1A36D5C4L;
    int3 l_2581 = make_int3(0xB1A4BA22L, 0x6B8F2534L, 0xB1A4BA22L);
    uint64_t l_2602 = 18446744073709551615UL;
    uint8_t l_2630 = 8UL;
    __shared__ uint32_t l_2633;
    l_2633 = 0x2E2A9CB8L;
    uint32_t l_2635 = 0xB08914F9L;
    uint32_t ****l_2683 = nullptr;
    __shared__ long4 l_2690;
    l_2690 = make_long4(0xA8AB9BA5CF8E0132LL, (-1L), 0xA8AB9BA5CF8E0132LL, (-1L));
    __shared__ int4 l_2691;
    l_2691 = make_int4(0x81D159BCL, 0xB3060917L, 0x81D159BCL, 0xB3060917L);
    int32_t *l_2693 = &p_4115->g_29[2];
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_1770[i] = 4L;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 6; j++)
            l_2074[i][j] = nullptr;
    }
    for (p_25 = (-24); (p_25 != (-3)); p_25++)
    { /* block id: 5 */
        int8_t l_62 = 0x48L;
        __shared__ int32_t *l_1706;
        l_1706 = nullptr;
        uint64_t *l_1724 = nullptr;
        int32_t l_1730 = 5L;
        int32_t l_1786[5];
        __shared__ uint8_t l_1796;
        l_1796 = 0x78L;
        struct S0 *l_1799 = nullptr;
        int16_t l_1812[4] = {(-7L), 0x34E1L, (-7L), 0x34E1L};
        int32_t l_1813[3];
        int64_t *l_1820 = &hip_const_3.f5;
        int4 l_1834 = make_int4(1L, 0x45D0CCC5L, 1L, 0x45D0CCC5L);
        ushort3 l_1856 = make_ushort3(1UL, 9UL, 1UL);
        uint32_t l_1865 = 0x5D28030FL;
        __shared__ int32_t **l_1872;
        l_1872 = nullptr;
        uint3 l_1902 = make_uint3(4294967294UL, 4294967290UL, 4294967294UL);
        int i;
        for (int i = 0; i < 5; i++)
            l_1786[i] = 0x884C6635L;
        for (int i = 0; i < 3; i++)
            l_1813[i] = 0x6D029A79L;
        for (p_4115->g_29[2] = 0; (p_4115->g_29[2] >= 0); p_4115->g_29[2] -= 1)
        { /* block id: 8 */
            int64_t *l_55 = &hip_const_3.f5;
            int64_t *l_56 = &hip_const_3.f5;
            int64_t *l_57 = &hip_const_3.f5;
            int64_t *l_58 = &hip_const_3.f5;
            int64_t *l_59 = nullptr;
            int64_t *l_60 = &hip_const_3.f5;
            // attempting a hip shared for loop
            __shared__ int64_t *l_61[9][10][2];
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    for (int k = 0; k < 2; k++)
                        l_61[i][j][k] = nullptr;
                }
            }
            int64_t *l_66[5];
            __shared__ int32_t *l_68;
            l_68 = nullptr;
            int64_t l_1170 = 0xF08F8A0CE03D30D8LL;
            int32_t l_1729 = 0xDA8E26BAL;
            uint16_t *l_1732 = &p_4115->g_413;
            __shared__ uint16_t **l_1782;
            l_1782 = nullptr;
            uint16_t ***l_1781 = &l_1782;
            int32_t l_1789 = 9L;
            int32_t l_1793[10] = {0L, 0L, (-1L), 0L, 0L, (-1L), 0L, 0L, (-1L), 0L};
            int32_t *l_1821[10][6][4] = {{{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}};
            // attempting a hip shared for loop
            __shared__ uint8_t l_1822[10][9];
            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 9; j++)
                    l_1822[i][j] = 255UL;
            }
            int i, j, k;
            for (int i = 0; i < 5; i++)
                l_66[i] = &p_4115->g_22[0];
        }
        for (l_1720 = 0; (l_1720 > (-28)); l_1720 = safe_sub_func_uint32_t_u_u(l_1720, 2))
        { /* block id: 795 */
            int64_t l_1866 = 0xF18FEC0FA0C83C41LL;
            int32_t l_1869 = 0xE7FB346AL;
            int32_t **l_1870 = &l_1171;
            int32_t ***l_1871 = nullptr;
            __shared__ uint32_t *l_1873;
            l_1873 = &p_4115->g_462;
            int16_t *l_1877 = &l_1812[3];
            if (p_25)
                break;
            (*p_4115->g_271) = &l_1770[0];
            for (p_4115->g_63 = 3; (p_4115->g_63 >= 0); p_4115->g_63 -= 1)
            { /* block id: 800 */
                short4 l_1847 = make_short4(0x4800L, 4L, 0x4800L, 4L);
                int64_t *l_1867 = &p_4115->g_1251;
                int32_t *l_1868[5];
                int i;
                for (int i = 0; i < 5; i++)
                    l_1868[i] = nullptr;
                l_1869 = (safe_rshift_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(((((safe_sub(make_int2(p_4115->g_1833.x, p_4115->g_1833.x), make_int2(l_1834.z, l_1834.z)))).y , (safe_sub_func_int32_t_s_s(((**p_4115->g_271) = (safe_div_func_int8_t_s_s(((safe_div_func_int32_t_s_s((safe_rshift_func_uint64_t_u_u(p_4115->g_1413.x, 28)), (safe_add_func_uint32_t_u_u(make_uint3(4294967295UL, (safe_div_func_int16_t_s_s(make_short1(l_1847.z).x, (safe_mul_func_int8_t_s_s(p_25, ((safe_add_func_int32_t_s_s(((safe_add_func_int8_t_s_s((((make_ulong2(0x965BCABADEEFF87FLL, 0xD175345269AC7910LL).y > (make_uchar4(make_uchar3(0UL, 0x79L, 0xACL).x, ((((*l_1867) = (make_ushort4(((~make_ushort4(0x5566L, 0x094DL, 0x3C9FL, make_ushort4(l_1856.x, l_1856.x, l_1856.x, l_1856.x).w))).w, (safe_sub_func_int8_t_s_s((*p_4115->g_644), ((make_uchar4(0x29L, (safe_mul_func_int32_t_s_s((safe_mul_func_uint64_t_u_u((4UL == 0x566AL), ((safe_add_func_int32_t_s_s((p_25 >= (*l_1171)), l_1865)) || p_25))), l_1866)), 1UL, 0x74L) ^ make_uchar4(4UL, 4UL, 4UL, 4UL))).x)), 0xD5EFL, 0UL).w == p_4115->g_965.z)) > p_25) , 0xA3L), 1UL, p_25).z <= p_25)) && 0x78L) ^ 0xF9B219FC28B1F276LL), p_4115->g_974.x)) , (**p_4115->g_271)), l_1866)) ^ p_25))))), p_4115->g_22[0]).z, 0x568BD40BL)))) , (*p_4115->g_644)), p_25))), 0x33CB9D5CL))) > p_4115->g_1209.y), p_4115->g_1506.x)), l_1866));
                return (**p_4115->g_643);
            }
            (*p_4115->g_162) = ((((*l_1873) = (l_1870 == (l_1872 = &l_1171))) , (safe_mod_func_uint16_t_u_u(((((*l_1877) &= (nullptr == l_1876)) , p_25) <= (safe_rshift_func_int64_t_s_s(((safe_sub_func_uint32_t_u_u((((make_short2(p_4115->g_1882.w, p_4115->g_1882.w) ^ make_short2(l_1883.x, l_1883.x))).y > p_25), ((safe_sub_func_int64_t_s_s((safe_rshift_func_int32_t_s_s((make_ushort2(l_1888.x, l_1888.x).y | 0x0989L), 8)), 1L)) > (safe_lshift_func_int8_t_s_u((p_25 == p_25), 2))))) || p_25), p_25))), 0x0A8FL))) < p_4115->g_413);
        }
        for (p_4115->g_1313 = 0; (p_4115->g_1313 < 22); p_4115->g_1313 = safe_add_func_uint64_t_u_u(p_4115->g_1313, 6))
        { /* block id: 813 */
            uint16_t l_1905 = 65535UL;
            uint16_t *l_1906 = &l_1905;
            ushort2 l_1909 = make_ushort2(1UL, 1UL);
            uint64_t *l_1910 = nullptr;
            uint64_t *l_1911 = nullptr;
            uint64_t *l_1912 = nullptr;
            uint64_t *l_1913 = nullptr;
            int16_t *l_1918 = nullptr;
            __shared__ int16_t *l_1919;
            l_1919 = &l_1720;
            int32_t *l_1920 = &l_1730;
            int32_t *l_1922 = &l_1770[0];
            int i;
            (*l_1922) |= (safe_mul_func_int32_t_s_s(((*l_1920) = make_int4(0xEB01260AL, (~((((*l_1919) = (make_uint2((((*l_1906) = (safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_int64_t_s_s((safe_unary_minus_func_uint32_t_u(make_uint3(l_1902.z, l_1902.z, l_1902.z).z)), (safe_rshift_func_int64_t_s_s(l_1905, 54)))), p_25)), hip_const_5[6].f0))) ^ (safe_mod_func_uint64_t_u_u((p_4115->g_1413.x ^= (p_4115->g_448.w > make_ushort3(l_1909.y, l_1909.y, l_1909.y).z)), (safe_div_func_int8_t_s_s((((-10L) < (-1L)) != (safe_sub_func_int32_t_s_s((*l_1171), l_1909.y))), l_1909.x))))), 0UL).x <= p_25)) ^ 7L) , l_1905)), 4L, 1L).z), p_4115->g_1921));
        }
    }
    if ((make_char4(p_4115->g_1923.x, p_4115->g_1923.x, p_4115->g_1923.x, p_4115->g_1923.x).w >= ((*p_4115->g_1328) , make_uchar1(l_1924.x).x)))
    { /* block id: 821 */
        int32_t l_1937 = 0x86FE032AL;
        int32_t l_1943 = 1L;
        int32_t l_1944[5][10] = {{0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L, 0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L}, {0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L, 0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L}, {0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L, 0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L}, {0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L, 0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L}, {0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L, 0xE64FFCDEL, 0x2AFA1C45L, (-6L), (-6L), 0x2AFA1C45L}};
        char4 l_1967 = make_char4(0x5AL, 0x2DL, 0x5AL, 0x2DL);
        int32_t l_2025 = 0x6AF32422L;
        uint16_t l_2052[4];
        int32_t ****l_2062 = &p_4115->g_270[2];
        int32_t *****l_2061 = &l_2062;
        uint64_t *l_2072[9][6][4] = {{{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}};
        struct S0 l_2075 = {8};
        uint32_t l_2121 = 1UL;
        struct S1 ****l_2193[4][9][7] = {{{&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}}, {{&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}}, {{&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}}, {{&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}, {&p_4115->g_383, &p_4115->g_383, nullptr, nullptr, &p_4115->g_383, &p_4115->g_383, nullptr}}};
        uint2 l_2217 = make_uint2(0xB9487985L, 0xC6088937L);
        uint32_t ***l_2243[8][6] = {{&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}, {&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}, {&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}, {&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}, {&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}, {&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}, {&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}, {&p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2], &p_4115->g_2082[5][2], &l_2078[2]}};
        __shared__ ulong3 l_2250;
        l_2250 = make_ulong3(18446744073709551610UL, 18446744073709551612UL, 18446744073709551610UL);
        int8_t l_2259 = 8L;
        struct S1 l_2270[5][8] = {{{0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x56C810A1L,0x073526D4L,0xEF2FL,0xC2E7L,{-430},0x63B504B497284A06LL,1L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {4UL,4294967287UL,0x39BCL,1L,{-318},0L,0x9D652239L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}}, {{0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x56C810A1L,0x073526D4L,0xEF2FL,0xC2E7L,{-430},0x63B504B497284A06LL,1L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {4UL,4294967287UL,0x39BCL,1L,{-318},0L,0x9D652239L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}}, {{0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x56C810A1L,0x073526D4L,0xEF2FL,0xC2E7L,{-430},0x63B504B497284A06LL,1L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {4UL,4294967287UL,0x39BCL,1L,{-318},0L,0x9D652239L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}}, {{0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x56C810A1L,0x073526D4L,0xEF2FL,0xC2E7L,{-430},0x63B504B497284A06LL,1L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {4UL,4294967287UL,0x39BCL,1L,{-318},0L,0x9D652239L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}}, {{0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x56C810A1L,0x073526D4L,0xEF2FL,0xC2E7L,{-430},0x63B504B497284A06LL,1L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {4UL,4294967287UL,0x39BCL,1L,{-318},0L,0x9D652239L}, {0x47F1508EL,0xE32C6EDDL,0x6FC7L,-1L,{-463},0xB3B119C58B85680FLL,0x4CE30784L}, {0x5915D91CL,0xA5B9D50EL,0xC58BL,-7L,{381},-7L,-1L}}};
        uint64_t l_2278 = 0UL;
        int i, j, k;
        for (int i = 0; i < 4; i++)
            l_2052[i] = 0x0183L;
        for (l_1720 = 27; (l_1720 <= (-1)); --l_1720)
        { /* block id: 824 */
            int32_t *l_1927 = nullptr;
            struct S0 **l_1932 = &p_4115->g_1328;
            int32_t l_1941 = 0x9E7426A8L;
            __shared__ int32_t l_1942;
            l_1942 = (-1L);
            short2 l_1972 = make_short2(0L, 1L);
            __shared__ short3 l_1973;
            l_1973 = make_short3((-5L), 4L, (-5L));
            __shared__ char1 l_1986;
            l_1986 = make_char1((-6L));
            __shared__ uint16_t *l_2026;
            l_2026 = nullptr;
            int32_t l_2047 = 5L;
            int32_t l_2048 = (-1L);
            struct S0 l_2077[5] = {{-152}, {15}, {-152}, {15}, {-152}};
            struct S1 *l_2108[9];
            short2 l_2194 = make_short2(0xEB90L, 0x2FE8L);
            __shared__ struct S1 *****l_2202;
            l_2202 = &p_4115->g_429[9];
            int32_t l_2220 = 0x8FD11D3EL;
            uint8_t *l_2221 = &p_4115->g_247;
            ulong1 l_2252 = make_ulong1(18446744073709551615UL);
            short3 l_2263 = make_short3(0xC887L, 8L, 0xC887L);
            int i;
            for (int i = 0; i < 9; i++)
                l_2108[i] = &hip_const_3;
            (*p_4115->g_271) = l_1927;
            for (p_4115->g_413 = 0; (p_4115->g_413 >= 57); ++p_4115->g_413)
            { /* block id: 828 */
                uint32_t l_1935 = 1UL;
                int32_t *l_1936 = &p_4115->g_29[1];
                int32_t *l_1938 = nullptr;
                int32_t *l_1939 = &l_1785;
                int32_t *l_1940[8][2][9] = {{{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}, {{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}, {{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}, {{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}, {{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}, {{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}, {{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}, {{&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}, {&hip_const_2, &p_4115->g_29[2], nullptr, &hip_const_2, nullptr, nullptr, &l_1785, &hip_const_2, &p_4115->g_29[2]}}};
                int i, j, k;
                (*l_1936) |= ((safe_mul_func_uint16_t_u_u((((((l_1932 == &p_4115->g_1328) | ((*l_1171) <= ((((((safe_mul(make_uchar2(((p_4115->g_839.w = make_ulong1(18446744073709551615UL).x) || (((l_1935 == 0x23578D19L) >= (p_25 == ((make_ulong3(((**p_4115->g_643) , 0xA5D05918745FDAD9LL), 0x69B4658D55992B28LL, 18446744073709551615UL) ^ make_ulong3(0UL, 0UL, 0UL))).x)) >= 0xE0E2L)), 0x47L), make_uchar2(0xA3L, 0xA3L)))) ^ make_uchar2(0x2CL, 0x2CL))) & make_uchar2(0x0FL, 0x0FL))).y)) != 0xF701L) | (*l_1171)) || p_25), 0x836AL)) == (*l_1171));
                (*l_1936) ^= (0x2FF4E7C8D37F659DLL ^ p_4115->g_1089.y);
                --l_1945[3][0];
                if ((*l_1171))
                    continue;
            }
        }
    }
    else
    { /* block id: 948 */
        int16_t l_2321 = (-2L);
        int32_t l_2322 = (-4L);
        struct S0 l_2325 = {-1};
        __shared__ uint32_t ***l_2333;
        l_2333 = nullptr;
        uint32_t ****l_2332 = &l_2333;
        int32_t l_2335 = 0xC5ECB47CL;
        uint8_t l_2336 = 0xE5L;
        __shared__ int32_t l_2337;
        l_2337 = 0L;
        __shared__ uint16_t *l_2338;
        l_2338 = nullptr;
        __shared__ uint16_t *l_2339;
        l_2339 = &l_1989.f2;
        int32_t l_2340 = 4L;
        int32_t l_2341[7][4] = {{0x711D5031L, 0xE0D8460AL, 0xC6263B9DL, 1L}, {0x711D5031L, 0xE0D8460AL, 0xC6263B9DL, 1L}, {0x711D5031L, 0xE0D8460AL, 0xC6263B9DL, 1L}, {0x711D5031L, 0xE0D8460AL, 0xC6263B9DL, 1L}, {0x711D5031L, 0xE0D8460AL, 0xC6263B9DL, 1L}, {0x711D5031L, 0xE0D8460AL, 0xC6263B9DL, 1L}, {0x711D5031L, 0xE0D8460AL, 0xC6263B9DL, 1L}};
        int64_t l_2342 = 0xE2AA4D6E76C7BB1FLL;
        int32_t l_2343[6][3];
        struct S1 ***l_2371[4][7] = {{&p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4]}, {&p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4]}, {&p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4]}, {&p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[2][2][4], &p_4115->g_384[4][2][4]}};
        uint8_t *l_2373 = nullptr;
        uint8_t *l_2374 = &l_2336;
        int32_t *****l_2437 = &l_2065[2];
        uint64_t **l_2519 = nullptr;
        uint32_t l_2521 = 18446744073709551615UL;
        struct S0 **l_2533 = nullptr;
        struct S0 l_2539 = {-475};
        char4 l_2547 = make_char4(7L, 0xA4L, 7L, 0xA4L);
        long3 l_2557 = make_long3(1L, (-5L), 1L);
        __shared__ int8_t *l_2593;
        l_2593 = nullptr;
        int32_t l_2631 = 1L;
        uint8_t l_2641 = 251UL;
        __shared__ char3 l_2708;
        l_2708 = make_char3(0x16L, 0x5EL, 0x16L);
        int i, j;
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 3; j++)
                l_2343[i][j] = 1L;
        }
        l_2337 = (p_25 != ((safe_sub_func_uint32_t_u_u(make_uint1(0xB79663DFL).x, ((safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((((*l_2339) = (((make_long1((((safe_rshift_func_int8_t_s_s(make_char3(l_2320.x, l_2320.x, l_2320.x).y, 7)) & make_ulong2(0xB5A0EDB4C8AD8450LL, 18446744073709551609UL).y) | (l_2322 = l_2321))).x <= (0x3080EB92L >= (safe_mod_func_uint32_t_u_u(p_25, (l_2325 , (l_2325.f0 = (safe_sub_func_int32_t_s_s((make_ushort3((+(safe_mul_func_uint64_t_u_u(((((***l_1802) = (-10L)) , (l_2335 &= make_int3(((safe_div_func_uint32_t_u_u((((*l_1171) , (l_2325.f0 , l_2332)) != p_4115->g_2334), l_2321)) >= 0xCF94L), 0x4BED5D7BL, 0L).x)) || p_25), l_2336))), 0UL, 0UL).x , p_25), l_2325.f0)))))))) ^ (-2L)) , l_2337)) == p_4115->g_1571.x), 9)), p_4115->g_1413.x)), 0xD277C876E5123046LL)) || p_4115->g_1505.z))) <= l_2337));
        l_2344[0][1][2]--;
        if (((((*l_2374) = (safe_add_func_uint8_t_u_u(((safe_sub_func_uint8_t_u_u(((0x0EB3L > ((make_ushort1(0xD9CCL) ^ make_ushort1(0xAE4EL))).x) || (safe_lshift_func_int32_t_s_s(((~(safe_sub_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(p_25, (0xA889F287A44AF3D5LL <= l_2341[5][2]))), (((safe_lshift_func_int32_t_s_s(p_25, l_2359)) , (safe_unary_minus_func_uint16_t_u((p_25 != (make_char2(l_2361.x, l_2361.x).x , (safe_unary_minus_func_uint8_t_u((safe_add_func_int8_t_s_s(((****l_1801) = ((((make_ushort2(p_4115->g_2365.x, p_4115->g_2365.x) | make_ushort2(p_4115->g_2366.x, p_4115->g_2366.x))).x >= (safe_mod_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(l_2341[5][2], ((((**p_4115->g_428) = l_2371[3][3]) == l_2372) < p_25))), p_25))) , p_25)), l_2342))))))))) , p_25)))) || 1L), p_25))), p_25)) >= 0x8DCCC3A1L), p_25))) >= l_2340) , (-3L)))
        { /* block id: 959 */
            uint8_t l_2375[5] = {0x2CL, 0x43L, 0x2CL, 0x43L, 0x2CL};
            struct S1 *l_2378 = nullptr;
            struct S0 *l_2381 = &hip_const_5[3];
            struct S0 **l_2382 = &p_4115->g_1328;
            __shared__ struct S0 *l_2384;
            l_2384 = &l_1989.f4;
            struct S0 **l_2383 = &l_2384;
            __shared__ short2 l_2410;
            l_2410 = make_short2(0xE69DL, 0x577CL);
            uint64_t l_2421 = 0x391763E428B9DC47LL;
            int16_t l_2424 = 1L;
            __shared__ struct S1 ****l_2438;
            l_2438 = &l_2371[1][3];
            int32_t **l_2443 = &p_4115->g_162;
            int32_t **l_2455 = &l_1171;
            uint32_t *****l_2456 = &p_4115->g_2334;
            uint4 l_2482 = make_uint4(4294967294UL, 1UL, 4294967294UL, 1UL);
            int32_t l_2493 = 0x062DFC98L;
            int i;
            --l_2375[4];
            (****l_2201) = l_2378;
            if ((safe_mul_func_int16_t_s_s(((l_2340 && l_2375[4]) ^ (l_2381 == ((*l_2383) = ((*l_2382) = &l_2325)))), l_2375[1])))
            { /* block id: 964 */
                int64_t *l_2391 = &hip_const_3.f5;
                int64_t *l_2392 = &l_2305;
                int32_t l_2393 = 0xE48C9B50L;
                // attempting a hip shared for loop
                __shared__ struct S1 **l_2411[1];
                for (int i = 0; i < 1; i++)
                    l_2411[i] = nullptr;
                int32_t l_2422[5];
                int16_t *l_2423 = nullptr;
                __shared__ struct S0 ****l_2426;
                l_2426 = &p_4115->g_2425;
                __shared__ int32_t ****l_2447;
                l_2447 = &p_4115->g_270[0];
                __shared__ short4 l_2449;
                l_2449 = make_short4(0x89DEL, 0L, 0x89DEL, 0L);
                ushort1 l_2454 = make_ushort1(7UL);
                ulong2 l_2458 = make_ulong2(18446744073709551613UL, 0xBD8E8930E53A7857LL);
                ulong3 l_2461 = make_ulong3(0xB3FE115FBC06E0D7LL, 0xFF0005D95078C229LL, 0xB3FE115FBC06E0D7LL);
                int32_t l_2490 = 0x8BF734C1L;
                int i;
                for (int i = 0; i < 1; i++)
                    l_2411[i] = nullptr;
                for (int i = 0; i < 5; i++)
                    l_2422[i] = 0x8AD201A9L;
                for (p_4115->g_247 = 0; p_4115->g_247 < 10; p_4115->g_247 += 1)
                {
                    p_4115->g_429[p_4115->g_247] = nullptr;
                }
                l_2335 &= (safe_add_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_mul_func_uint64_t_u_u((((l_2393 &= (!((*l_2392) = (-1L)))) || (0x0B5B4BF87B56CD19LL < make_long3(l_2394.z, l_2394.z, l_2394.z).y)) <= 0x40993B2DBE6B753BLL), (safe_lshift_func_int8_t_s_s((((((*l_2426) = (l_1989.f4 , (((safe_div_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(((safe_div_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(l_2375[4], (safe_add_func_int32_t_s_s((make_uchar2(p_4115->g_2407.y, p_4115->g_2407.y).y & (p_25 , ((safe_add_func_uint64_t_u_u(make_ulong3((make_short2(l_2410.y, l_2410.y).x || (p_4115->g_786.x = (((((*p_4115->g_383) = l_2411[0]) != l_2411[0]) | (safe_add_func_int64_t_s_s((((*l_2374) &= (safe_sub_func_uint16_t_u_u((~((((safe_sub_func_uint8_t_u_u((((((safe_div(make_long2(0xFA0883877442C7CDLL, l_2342), make_long2(1L, 1L)))) ^ make_long2(0xE35FD6E6938A75A8LL, 0xE35FD6E6938A75A8LL))).y && p_25), l_2420)) , p_25) && l_2375[4]) <= p_25)), 65535UL))) >= l_2421), l_2422[3]))) , 0L))), 0x0B571ADFD3DEF4F1LL, p_4115->g_67.y).z, l_2424)) , p_25))), 4294967286UL)))), p_25)) && 0x43FAL), p_25)) == 1L), hip_const_4)) | p_25) , p_4115->g_2425))) != p_4115->g_2427) ^ l_2342) <= 0xCCA95424L), 7)))), 2)), l_2422[3]));
                if ((((safe_rshift_func_int32_t_s_s(((-2L) & (((l_2393 = (((safe_mul_func_int64_t_s_s((safe_add_func_uint16_t_u_u(((*l_2339) = (safe_sub_func_uint16_t_u_u(0x6F96L, p_25))), ((l_2064 = (l_2063 = p_4115->g_1252)) != (l_2437 = p_4115->g_1252)))), (l_2438 == nullptr))) & (&l_2411[0] == (l_2410.x , &l_2411[0]))) , p_25)) & p_4115->g_189.y) , p_4115->g_2216.y)), (*l_1171))) | l_2410.y) < 1L))
                { /* block id: 978 */
                    __shared__ struct S1 l_2446;
                    l_2446 = {0xA77BA773L,4294967288UL,65535UL,0x0DEDL,{24},0x451AE3D78D20A8D6LL,0L};
                    int32_t *****l_2448[4][7] = {{&l_2065[3], &l_2065[6], &l_2065[2], nullptr, nullptr, &l_2065[2], &l_2065[6]}, {&l_2065[3], &l_2065[6], &l_2065[2], nullptr, nullptr, &l_2065[2], &l_2065[6]}, {&l_2065[3], &l_2065[6], &l_2065[2], nullptr, nullptr, &l_2065[2], &l_2065[6]}, {&l_2065[3], &l_2065[6], &l_2065[2], nullptr, nullptr, &l_2065[2], &l_2065[6]}};
                    int i, j;
                    (*p_4115->g_271) = (*p_4115->g_271);
                    l_2393 &= make_int3((-5L), make_int1((safe_sub_func_int32_t_s_s((safe_rshift_func_int8_t_s_u((nullptr != l_2443), (safe_mod_func_uint16_t_u_u(((l_2446 , l_2447) == (l_2065[5] = &p_4115->g_270[4])), make_short4(l_2449.w, l_2449.w, l_2449.w, l_2449.w).w)))), ((((*l_2374) = (((safe_div(((~make_ushort3(5UL, 65535UL, (+((safe_lshift_func_int16_t_s_u((0UL <= make_ushort2(l_2454.x, l_2454.x).x), p_25)) <= (nullptr == l_2455)))))), make_ushort3(0UL, 0UL, 0UL)))).x < p_25)) ^ (**p_4115->g_643)) != p_25)))).x, p_25).z;
                }
                else
                { /* block id: 983 */
                    int16_t l_2471 = 0x631FL;
                    __shared__ char1 l_2477;
                    l_2477 = make_char1(0x7DL);
                    uint32_t **l_2487 = &p_4115->g_2083;
                    int32_t *l_2488 = nullptr;
                    int32_t *l_2489 = &l_2343[2][2];
                    int i;
                    p_4115->g_2457 = l_2456;
                    (**l_2383) = ((make_ulong1(l_2458.x).x < ((safe_lshift(make_ulong2(l_2461.y, l_2461.y), make_ulong2(64, 64)))).x) , l_1989.f4);
                    (*p_4115->g_1328) = (((safe_add_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s((0xAAL || (safe_rshift_func_int32_t_s_s((make_ushort3(l_2470.y, l_2470.y, l_2470.y).x , (l_2422[0] &= l_2471)), (safe_div_func_int16_t_s_s(make_short2(0x9FECL, 9L).y, (-9L)))))), 2)) , p_4115->g_786.y), ((((***l_1802) = ((make_char1(l_2476.x) ^ make_char1(l_2477.x))).x) > 253UL) & (p_4115->g_549.x < (((make_uint3(make_uint2(4294967286UL, (safe_lshift_func_uint8_t_u_s(0UL, 3))).x, 0x02EECD44L, ((safe_lshift(make_uint3(l_2482.y, l_2482.y, l_2482.y), make_uint3(32, 32, 32)))).x).y ^ (safe_sub_func_uint32_t_u_u(((safe_rshift_func_int64_t_s_s(((((((*l_2489) &= (((l_2477.x && l_2477.x) , l_2487) == nullptr)) , nullptr) != &l_2371[1][2]) != p_4115->g_565.z) == p_4115->g_67.y), p_25)) && l_2477.x), (**l_2455)))) == p_25) , 0UL))))), p_4115->g_2016.x)) != l_2490) , (*l_2384));
                    return l_2491[2][1][6];
                }
            }
            else
            { /* block id: 992 */
                l_2492 ^= 0xD6FEF544L;
                l_2493 ^= ((*p_4115->g_428) != (*l_2201));
            }
            l_2322 = (l_2438 == (*p_4115->g_428));
        }
        else
        { /* block id: 997 */
            __shared__ int4 l_2499;
            l_2499 = make_int4((-1L), 6L, (-1L), 6L);
            struct S1 **l_2500[8] = {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385};
            int32_t l_2522 = 0x4A264581L;
            short1 l_2528 = make_short1(0x5543L);
            uint16_t l_2575 = 0x9C26L;
            int1 l_2577 = make_int1(1L);
            struct S1 l_2597[5] = {{0xF63842D1L,0x1B7FDDC2L,0x00BFL,0x3F2CL,{246},-1L,-8L}, {0xF63842D1L,0x1B7FDDC2L,0x00BFL,0x3F2CL,{246},-1L,-8L}, {0xF63842D1L,0x1B7FDDC2L,0x00BFL,0x3F2CL,{246},-1L,-8L}, {0xF63842D1L,0x1B7FDDC2L,0x00BFL,0x3F2CL,{246},-1L,-8L}, {0xF63842D1L,0x1B7FDDC2L,0x00BFL,0x3F2CL,{246},-1L,-8L}};
            struct S0 ****l_2616[8] = {&p_4115->g_2427, &p_4115->g_2425, &p_4115->g_2427, &p_4115->g_2425, &p_4115->g_2427, &p_4115->g_2425, &p_4115->g_2427, &p_4115->g_2425};
            uint16_t *l_2650 = &l_2575;
            __shared__ uint32_t ****l_2684;
            l_2684 = &l_2333;
            uint2 l_2702 = make_uint2(4294967295UL, 4294967295UL);
            char4 l_2705 = make_char4(7L, 0x63L, 7L, 0x63L);
            __shared__ int8_t l_2719;
            l_2719 = 1L;
            int32_t *l_2729[8] = {&p_4115->g_29[2], &l_2563, &p_4115->g_29[2], &l_2563, &p_4115->g_29[2], &l_2563, &p_4115->g_29[2], &l_2563};
            int i;
            for (l_2335 = 0; (l_2335 <= 7); l_2335 += 1)
            { /* block id: 1000 */
                int32_t l_2494 = 1L;
                int32_t *l_2498 = nullptr;
                struct S0 l_2510[5][10][2] = {{{{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}}, {{{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}}, {{{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}}, {{{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}}, {{{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}, {{301}, {301}}}};
                uint8_t l_2529 = 6UL;
                uint32_t l_2560 = 0xE1D7D7C1L;
                uint64_t *l_2604 = nullptr;
                uint32_t ***l_2605 = &l_2078[1];
                int4 l_2617 = make_int4(0x8F35D67CL, (-6L), 0x8F35D67CL, (-6L));
                ulong4 l_2655 = make_ulong4(0xB8175D620881B851LL, 1UL, 0xB8175D620881B851LL, 1UL);
                uchar3 l_2656 = make_uchar3(250UL, 0x5EL, 250UL);
                int i, j, k;
            }
            if ((((((((**l_2532) , (safe_add_func_uint32_t_u_u(((make_ulong3(0x4C9AC12B8EBAD047LL, 18446744073709551607UL, 5UL).x == 0xE6DBEEADBF0E6E00LL) ^ make_uint3(0x9C1B5D70L, 0x4EE0CC8CL, 3UL).y), (l_2340 = ((make_int1((safe_mul_func_int16_t_s_s(((l_2683 != ((l_2325 = (**l_2532)) , l_2684)) >= (((safe_div(((safe_div(make_long1(p_4115->g_2689.y), make_long1(1L)))), make_long1((-7L))))).x ^ (!(hip_const_3.f0 && (((l_2597[4].f0 ^ (((((l_2341[5][2] = (p_25 <= make_long2(l_2690.x, l_2690.x).x)) , (p_25 > l_2691.z)) , p_25) == 0xBAL) ^ l_2575)) < p_25) <= l_2597[4].f2))))), p_4115->g_1611.x))) ^ make_int1(0xB9F5A590L))).x)))) > p_25) ^ 0xF175D4DBL) || 0L) == 0x2D83L) , 7L))
            { /* block id: 1100 */
                struct S0 *l_2692 = &l_1989.f4;
                struct S1 ****l_2694 = &p_4115->g_383;
                char3 l_2697 = make_char3(4L, 0x44L, 4L);
                int32_t l_2720[9][8] = {{0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}, {0xEC4A2167L, 0x4402BB07L, 6L, 0xDB456C79L, 0xB543EF5EL, 0L, 0xB543EF5EL, 0xDB456C79L}};
                int i, j;
                (*l_2532) = l_2692;
                (****l_2064) = l_2693;
                l_2720[1][6] |= (((7UL > ((l_2694 = l_2694) != ((safe_mul_func_int8_t_s_s(make_char2(l_2697.y, l_2697.y).x, (safe_add_func_uint8_t_u_u((!make_uchar4(((safe_mul_func_uint32_t_u_u(((make_uint1(0UL) & make_uint1(l_2702.x))).x, ((((*l_2374) = (*l_2693)) <= ((((safe_mul(make_char3(l_2705.z, l_2705.z, l_2705.z), ((safe_sub(make_char3(l_2708.z, l_2708.z, l_2708.z), make_char3(0x35L, 6L, ((safe_mul_func_int32_t_s_s(p_25, l_2697.y)) || (((safe_div_func_int8_t_s_s((nullptr == p_4115->g_2713[0]), (safe_sub_func_int16_t_s_s(((((safe_mul_func_uint16_t_u_u(((-5L) < (*l_1171)), 0x9528L)) && p_4115->g_965.y) , l_2597[4].f4.f0) == l_2719), 1UL)))) >= 0x0F930B95L) <= (**p_4115->g_643)))))))))) ^ make_char3((-6L), (-6L), (-6L)))).x) || (**p_4115->g_271)))) , l_2697.z), 252UL, 0xC9L, p_25).y), l_2697.y)))) , nullptr))) <= (*p_4115->g_644)) >= (-1L));
            }
            else
            { /* block id: 1106 */
                int8_t l_2723 = 2L;
                for (l_2420 = (-13); (l_2420 > (-25)); l_2420--)
                { /* block id: 1109 */
                    return l_2723;
                }
                for (l_1989.f3 = 0; (l_1989.f3 != 19); l_1989.f3++)
                { /* block id: 1114 */
                    int64_t l_2727 = 0xF829B77525624336LL;
                    int32_t *l_2728[4][5][9] = {{{&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}}, {{&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}}, {{&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}}, {{&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}, {&l_1770[0], nullptr, &p_4115->g_29[2], &l_2420, &l_1770[0], nullptr, &l_2337, nullptr, &l_1770[0]}}};
                    int i, j, k;
                    l_2727 ^= (safe_unary_minus_func_int8_t_s(0xD5L));
                    l_2729[4] = l_2728[3][1][7];
                }
            }
            l_1989 = (*****l_2201);
        }
        (*p_4115->g_271) = (*p_4115->g_271);
    }
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_4115->g_271 p_4115->g_407
 * writes: p_4115->g_162
 */
__device__ uint8_t  func_32(int8_t  p_33, uint32_t  p_34, int32_t * p_35, struct S2 * p_4115)
{ /* block id: 723 */
    uint64_t l_1707 = 4UL;
    int32_t *l_1708 = nullptr;
    (*p_4115->g_271) = (l_1707 , l_1708);
    return p_4115->g_407.y;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_1 p_4115->g_544 p_4115->g_1328 hip_const_3.f4 p_4115->g_1505 p_4115->g_1506 p_4115->g_428 p_4115->g_429 p_4115->g_407 p_4115->g_375 p_4115->g_398 p_4115->g_643 p_4115->g_644 p_4115->g_63 p_4115->g_910 p_4115->g_688 p_4115->g_383 p_4115->g_384 p_4115->g_385 hip_const_3 p_4115->g_54 p_4115->g_1252 p_4115->g_1136 p_4115->g_1571 p_4115->g_1573 p_4115->g_549 p_4115->g_1587 p_4115->g_1588 p_4115->g_29 p_4115->g_584 p_4115->g_1576 p_4115->g_839 p_4115->g_271 p_4115->g_1611 p_4115->g_1638 p_4115->g_1647 p_4115->g_67 p_4115->g_270 p_4115->g_462 p_4115->g_162
 * writes: p_4115->g_383 p_4115->g_1160 p_4115->g_1576 p_4115->g_549 p_4115->g_162 p_4115->g_375 p_4115->g_462
 */
__device__ int16_t  func_38(int64_t  p_39, int32_t * p_40, uint8_t  p_41, uint8_t  p_42, struct S2 * p_4115)
{ /* block id: 497 */
    uint32_t l_1194 = 0UL;
    int32_t **l_1213 = nullptr;
    struct S1 l_1226 = {8UL,0x67289546L,65535UL,0xBC44L,{-42},0x4B52954E9EF33AADLL,4L};
    int32_t l_1264[3];
    uint32_t l_1277 = 2UL;
    int64_t l_1309 = 1L;
    uint16_t l_1310 = 0x16CFL;
    ushort4 l_1352 = make_ushort4(65534UL, 65535UL, 65534UL, 65535UL);
    ulong3 l_1362 = make_ulong3(0UL, 8UL, 0UL);
    ulong4 l_1363 = make_ulong4(0x2EAE4DA020E90DA7LL, 0xC5CE5C5B269D7DB2LL, 0x2EAE4DA020E90DA7LL, 0xC5CE5C5B269D7DB2LL);
    struct S1 *l_1388[8][5][3] = {{{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}, {{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}, {{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}, {{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}, {{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}, {{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}, {{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}, {{&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}, {&l_1226, &hip_const_3, nullptr}}};
    int64_t l_1431 = 1L;
    int64_t l_1464[4];
    int16_t l_1465 = (-1L);
    uint64_t l_1483 = 0UL;
    short3 l_1507 = make_short3((-1L), (-7L), (-1L));
    struct S1 ***l_1512 = &p_4115->g_384[4][1][1];
    uint16_t l_1527[5][7][5] = {{{0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}}, {{0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}}, {{0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}}, {{0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}}, {{0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}, {0UL, 0xC677L, 0UL, 0x1EAFL, 65535UL}}};
    ushort2 l_1531 = make_ushort2(7UL, 1UL);
    __shared__ char3 l_1550;
    l_1550 = make_char3(0x14L, 0x47L, 0x14L);
    int32_t ****l_1552 = nullptr;
    int32_t *****l_1551[4][3] = {{&l_1552, nullptr, &l_1552}, {&l_1552, nullptr, &l_1552}, {&l_1552, nullptr, &l_1552}, {&l_1552, nullptr, &l_1552}};
    __shared__ uint64_t l_1563;
    l_1563 = 18446744073709551615UL;
    uint32_t *l_1564[5] = {&hip_const_3.f1, nullptr, &hip_const_3.f1, nullptr, &hip_const_3.f1};
    uint32_t *l_1565 = nullptr;
    long2 l_1568 = make_long2((-1L), 0x5DB594D7F7FAD393LL);
    uint8_t l_1589 = 0x85L;
    uint32_t l_1595 = 0xCEB13E4EL;
    uint3 l_1639 = make_uint3(1UL, 0UL, 1UL);
    ulong1 l_1646 = make_ulong1(0xCDE27EB2E5B567DELL);
    int32_t l_1660 = (-1L);
    ulong1 l_1701 = make_ulong1(0UL);
    uint32_t l_1703 = 0x5CEA307EL;
    int i, j, k;
    for (int i = 0; i < 3; i++)
        l_1264[i] = 0x67B7CFB4L;
    for (int i = 0; i < 4; i++)
        l_1464[i] = 0x603520E5073B14B0LL;
    if ((*p_40))
    { /* block id: 498 */
        __shared__ int16_t l_1216;
        l_1216 = 0L;
        int32_t *l_1223 = &p_4115->g_29[2];
        long1 l_1232 = make_long1(1L);
        uint16_t *l_1233 = &hip_const_3.f2;
        long3 l_1243 = make_long3(0L, 0xB97B88B0CFFD118CLL, 0L);
        __shared__ int32_t l_1250;
        l_1250 = 8L;
        int32_t l_1257 = 0xA23AD40AL;
        __shared__ int32_t l_1258;
        l_1258 = 0xD779012BL;
        // attempting a hip shared for loop
        __shared__ int32_t l_1267[7][8][3];
        for (int i = 0; i < 7; i++)
        {
            for (int j = 0; j < 8; j++)
            {
                for (int k = 0; k < 3; k++)
                    l_1267[i][j][k] = 6L;
            }
        }
        uint8_t l_1306 = 0x0EL;
        uint16_t l_1314[5][4][6] = {{{0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}}, {{0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}}, {{0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}}, {{0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}}, {{0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}, {0xB606L, 0x9C62L, 0xC577L, 0xBFDDL, 0x9C62L, 1UL}}};
        uint8_t *l_1329 = nullptr;
        uint8_t *l_1330 = nullptr;
        uint8_t *l_1331 = nullptr;
        uint8_t *l_1332 = nullptr;
        __shared__ ulong4 l_1353;
        l_1353 = make_ulong4(18446744073709551612UL, 1UL, 18446744073709551612UL, 1UL);
        uint64_t *l_1354 = nullptr;
        uint64_t *l_1355 = nullptr;
        uint64_t *l_1356 = nullptr;
        // attempting a hip shared for loop
        __shared__ uint64_t *l_1357[5][7][7];
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 7; j++)
            {
                for (int k = 0; k < 7; k++)
                    l_1357[i][j][k] = nullptr;
            }
        }
        struct S1 *l_1366 = nullptr;
        int8_t ***l_1368 = nullptr;
        int8_t ****l_1367 = &l_1368;
        int8_t ***l_1369 = &p_4115->g_643;
        int32_t *l_1370 = nullptr;
        int32_t *l_1371 = nullptr;
        int32_t *l_1372 = &l_1258;
        uint16_t l_1402 = 0xB2ADL;
        __shared__ uint32_t l_1435;
        l_1435 = 0x4A118554L;
        __shared__ int32_t ****l_1455;
        l_1455 = nullptr;
        int32_t *****l_1454 = &l_1455;
        __shared__ struct S0 l_1467;
        l_1467 = {-360};
        int i, j, k;
    }
    else
    { /* block id: 643 */
        struct S1 ****l_1513[9][4][7] = {{{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}, {{nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}, {nullptr, &l_1512, &l_1512, &l_1512, nullptr, &l_1512, &l_1512}}};
        int32_t l_1516[1][10] = {{0x4DC79825L, 0xB743278CL, 0x4DC79825L, 0xB743278CL, 0x4DC79825L, 0xB743278CL, 0x4DC79825L, 0xB743278CL, 0x4DC79825L, 0xB743278CL}};
        uint32_t *l_1523[4];
        int32_t *l_1524 = nullptr;
        int32_t *l_1525 = &l_1264[0];
        uint64_t *l_1526 = nullptr;
        int64_t *l_1528 = &l_1464[2];
        __shared__ uint8_t *l_1529;
        l_1529 = nullptr;
        __shared__ uint8_t *l_1530;
        l_1530 = &p_4115->g_1160;
        long1 l_1572 = make_long1(0xBF6EB58ECA825DE3LL);
        int16_t *l_1577 = &p_4115->g_375;
        uint8_t l_1625 = 0UL;
        int1 l_1633 = make_int1(0xECDD80EAL);
        int i, j, k;
        for (int i = 0; i < 4; i++)
            l_1523[i] = &l_1226.f0;
        if ((+((((safe_mul_func_uint64_t_u_u(((safe_mod_func_int32_t_s_s((((*l_1530) = ((p_4115->g_544.x && ((safe_sub_func_uint64_t_u_u(((*p_4115->g_1328) , (safe_sub_func_int32_t_s_s((safe_add_func_int32_t_s_s((((safe_mod_func_uint64_t_u_u(((((((((~make_short1(0xFD6DL))) ^ ((safe_sub(((safe_lshift(make_short1(p_4115->g_1505.x), make_short1(16)))), make_short1(p_4115->g_1506.y)))))) ^ make_short1(l_1507.y))).x | ((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint32_t_u_u(((l_1512 = ((**p_4115->g_428) = l_1512)) == nullptr), p_4115->g_407.y)), (safe_add_func_uint8_t_u_u(((((*l_1528) = (l_1516[0][9] && (((&l_1483 == ((safe_div_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint32_t_u_s(p_4115->g_375, ((*l_1525) ^= ((l_1516[0][8] ^= (p_42 <= p_41)) & (*p_40))))), p_4115->g_398.y)), p_39)) , l_1526)) | l_1527[1][1][0]) , 0L))) , (*p_40)) , 0UL), 0L)))) > 0x9619L)) == p_42), p_39)) >= (-7L)) && (**p_4115->g_643)), 4294967286UL)), (*p_40)))), p_41)) , p_4115->g_910.y)) , p_4115->g_688.y)) | (**p_4115->g_643)), 0xB89111DFL)) , 0xEF61E3797EDF352BLL), l_1531.x)) , l_1464[3]) & p_39) || (*p_40))))
        { /* block id: 650 */
            uint32_t l_1539[6][2][8] = {{{18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}, {18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}}, {{18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}, {18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}}, {{18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}, {18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}}, {{18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}, {18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}}, {{18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}, {18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}}, {{18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}, {18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL, 0UL, 18446744073709551608UL, 18446744073709551608UL}}};
            struct S1 l_1545 = {1UL,1UL,0xC579L,1L,{225},1L,0x6541D5FBL};
            int8_t ***l_1549 = &p_4115->g_643;
            int8_t ****l_1548 = &l_1549;
            int i, j, k;
            for (l_1310 = 1; (l_1310 == 23); l_1310 = safe_add_func_int8_t_s_s(l_1310, 1))
            { /* block id: 653 */
                int32_t *l_1534 = &l_1264[1];
                int32_t *l_1535 = nullptr;
                int32_t *l_1536 = &hip_const_2;
                int32_t *l_1537 = nullptr;
                int32_t *l_1538 = &l_1264[0];
                struct S1 l_1542 = {1UL,8UL,65528UL,0x94AAL,{-413},0xA231BAC9CAED8180LL,0x6E14A016L};
                int32_t *****l_1553 = &l_1552;
                ++l_1539[5][1][1];
                (*l_1525) = (l_1226.f4.f0 &= ((l_1542 = (***p_4115->g_383)) , (((((safe_rshift_func_int16_t_s_s(p_4115->g_54.w, 14)) || make_uint2((l_1545 , make_uint3(((1UL < (p_39 ^= make_long1(6L).x)) && (safe_add_func_uint8_t_u_u((nullptr != l_1548), make_char3(l_1550.x, l_1550.x, l_1550.x).x))), 4294967290UL, ((l_1551[2][2] = p_4115->g_1252) != l_1553)).x), (safe_rshift_func_uint32_t_u_u((18446744073709551615UL >= (*l_1525)), 10))).x) != 0x02L) ^ 3UL) && 0x34B2419D6F4F1C54LL)));
            }
        }
        else
        { /* block id: 661 */
            uint16_t l_1562 = 0x701BL;
            int16_t *l_1575 = nullptr;
            int16_t **l_1574[8] = {&l_1575, &l_1575, nullptr, &l_1575, &l_1575, nullptr, &l_1575, &l_1575};
            struct S1 *****l_1594 = &l_1513[1][0][5];
            __shared__ int32_t l_1618;
            l_1618 = 0x9A3455C7L;
            // attempting a hip shared for loop
            __shared__ int32_t l_1621[10][5][4];
            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 5; j++)
                {
                    for (int k = 0; k < 4; k++)
                        l_1621[i][j][k] = (-1L);
                }
            }
            __shared__ long2 l_1643;
            l_1643 = make_long2(1L, 0xD1870F689B92D5ADLL);
            uint8_t l_1669 = 0x06L;
            ulong1 l_1688 = make_ulong1(4UL);
            __shared__ int32_t ****l_1700;
            l_1700 = &p_4115->g_270[2];
            int i, j, k;
            if (((*l_1525) = (safe_lshift_func_uint8_t_u_s(((((p_4115->g_1136.x >= (safe_mod_func_int64_t_s_s((safe_add_func_uint16_t_u_u((l_1562 >= make_uchar3(l_1563, 6UL, ((l_1564[0] = &p_4115->g_462) == l_1565)).x), make_ushort1(p_42).x)), (safe_mul_func_int64_t_s_s(make_long4(l_1568.y, l_1568.y, l_1568.y, l_1568.y).z, ((safe_div(((make_long4(p_4115->g_1571.z, p_4115->g_1571.z, p_4115->g_1571.z, p_4115->g_1571.z) ^ make_long4(l_1572.x, l_1572.x, l_1572.x, l_1572.x))), ((make_long4(p_4115->g_1573.z, p_4115->g_1573.z, p_4115->g_1573.z, p_4115->g_1573.z) ^ ((((make_long4(0x08FEB4B51D770725LL, 0x75036C2E49D14A61LL, (((l_1577 = (p_4115->g_1576 = &l_1465)) != nullptr) <= (-6L)), 0xCDE67971E6E1D56FLL) ^ make_long4(9L, 9L, 9L, 9L))) & make_long4(0L, 0L, 0L, 0L)))))))).x))))) <= 0x5EBAL) , 0xA19BA3E8L) < (*p_40)), 7))))
            { /* block id: 666 */
                struct S1 l_1578[1] = {{0xDC9DEF7DL,4294967289UL,0UL,-10L,{-247},1L,0x62B0CE96L}};
                __shared__ uint64_t *l_1585;
                l_1585 = nullptr;
                // attempting a hip shared for loop
                __shared__ uint64_t *l_1586[10];
                for (int i = 0; i < 10; i++)
                    l_1586[i] = nullptr;
                int i;
                l_1589 = (l_1578[0] , (0xD8L != (safe_rshift_func_uint8_t_u_u(((p_4115->g_549.x ^= (safe_lshift_func_int16_t_s_u(l_1578[0].f6, 8))) > ((((*l_1525) = l_1578[0].f4.f0) > (make_long1(p_4115->g_1587.y).x != (+p_39))) < make_int1(p_4115->g_1588.y).x)), 3))));
            }
            else
            { /* block id: 670 */
                uint16_t l_1608 = 0x5CD7L;
                uint64_t *l_1609 = &l_1483;
                int16_t l_1610[1];
                __shared__ int32_t l_1617;
                l_1617 = (-9L);
                __shared__ int32_t l_1622;
                l_1622 = 0x9B01ABF8L;
                int32_t l_1623 = (-1L);
                __shared__ char1 l_1677;
                l_1677 = make_char1((-9L));
                int i;
                for (int i = 0; i < 1; i++)
                    l_1610[i] = 0x08FDL;
                if ((safe_lshift_func_uint8_t_u_s(hip_const_3.f0, 4)))
                { /* block id: 671 */
                    __shared__ uint32_t **l_1593;
                    l_1593 = &l_1565;
                    uint32_t ***l_1592 = &l_1593;
                    (*l_1592) = nullptr;
                    l_1595 = make_int1((p_39 , (&p_4115->g_429[3] == (p_4115->g_29[2] , l_1594)))).x;
                }
                else
                { /* block id: 674 */
                    __shared__ int32_t *l_1600;
                    l_1600 = nullptr;
                    long3 l_1601 = make_long3(0x818482A389715FAALL, (-3L), 0x818482A389715FAALL);
                    int32_t l_1615 = 0xE0EBCFEEL;
                    __shared__ int32_t l_1619;
                    l_1619 = 8L;
                    int8_t l_1624 = 1L;
                    long4 l_1640 = make_long4((-2L), (-7L), (-2L), (-7L));
                    struct S0 *l_1668 = &l_1226.f4;
                    int i;
                    if (((*l_1525) = (((*l_1609) = ((safe_mod_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((l_1600 == ((((*l_1528) = l_1562) == ((~make_long4(((make_long1((-1L)) & make_long1(l_1601.x))).x, 0x3E92409EA99AD398LL, 0L, (safe_mod_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(((((0x9F1D453FL > (*l_1525)) | 0L) , p_4115->g_584) != ((((*p_4115->g_1328) , l_1608) <= l_1608) , l_1609)), 0)), l_1562)) | 0x36L), l_1610[0]))))).y) , p_40)), (*p_4115->g_1576))), p_4115->g_839.y)) >= 4294967289UL)) | p_41)))
                    { /* block id: 678 */
                        (*p_4115->g_271) = nullptr;
                    }
                    else
                    { /* block id: 680 */
                        uint16_t l_1612[5][10] = {{65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL}, {65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL}, {65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL}, {65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL}, {65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL, 65534UL, 65535UL}};
                        int32_t l_1613 = 1L;
                        int32_t l_1614 = (-1L);
                        int32_t l_1616 = 0x7FE64DC6L;
                        // attempting a hip shared for loop
                        __shared__ int32_t l_1620[10];
                        for (int i = 0; i < 10; i++)
                            l_1620[i] = 0x4577FD0CL;
                        int i, j;
                        l_1612[4][7] |= make_int2(p_4115->g_1611.x, p_4115->g_1611.x).x;
                        if (p_42)
                            goto lbl_1628;
lbl_1628:
                        ++l_1625;
                        l_1620[2] ^= ((make_int2((l_1617 & ((safe_sub_func_int8_t_s_s((safe_sub_func_int32_t_s_s(make_int3(8L, 0x8C1B1F03L, ((make_int2(l_1633.x, l_1633.x) ^ make_int2(((safe_add_func_uint64_t_u_u(((*l_1609) = (safe_mul_func_uint32_t_u_u(make_uint3(((make_uint2(p_4115->g_1638.x, p_4115->g_1638.x) & make_uint2(l_1639.z, l_1639.z))).y, 0x03AB9A1EL, 4294967295UL).x, (((make_long4(l_1640.x, l_1640.x, l_1640.x, l_1640.x) ^ ((((safe_lshift(make_long4(l_1643.x, l_1643.x, l_1643.x, l_1643.x), make_long4((-4L), (-1L), 1L, 0x0EA8D3872BD4DEBELL)))) ^ ((make_long4(8L, 0xA26111FFCCF7417ELL, 9L, 1L) | make_long4(0x3AD0B1B64FF7E8D8LL, 0L, (p_39 ^= ((l_1623 = (safe_mul_func_uint32_t_u_u(((((~((make_ulong1(l_1646.x) ^ make_ulong1(18446744073709551613UL))))).x ^ make_long3(p_4115->g_1647.x, p_4115->g_1647.x, p_4115->g_1647.x).y) | p_41), (((~4UL) > 1L) ^ (((((make_short2((safe_rshift_func_uint64_t_u_u(((safe_mul_func_int64_t_s_s(((safe_mul_func_int64_t_s_s((((~18446744073709551608UL) | (safe_sub_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(l_1660, 0x59L)), (safe_mod_func_int8_t_s_s(((249UL | 0xA0L) , (**p_4115->g_643)), p_4115->g_29[2])))), (*p_40)))) <= 0x6BL), 1L)) >= 0x4E699BDEL), l_1613)) | p_4115->g_67.x), 17)), 0xAFC5L) | make_short2(0xDD92L, 0xDD92L))) & make_short2(0xA2B2L, 0xA2B2L))).y != p_4115->g_1647.w))))) , l_1614)), 0L))))))).z | p_41)))), l_1621[7][1][0])) == (*l_1525)), (*p_40)))).y).x, (*p_40))), 0x88L)) ^ 0xCCL)), 0xC45AD73EL) ^ make_int2(0L, 0L))).x;
                        l_1623 ^= 3L;
                    }
                    for (l_1625 = 0; (l_1625 == 54); l_1625 = safe_add_func_uint16_t_u_u(l_1625, 1))
                    { /* block id: 692 */
                        uint32_t l_1665[7][10][2] = {{{0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}}, {{0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}}, {{0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}}, {{0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}}, {{0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}}, {{0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}}, {{0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}, {0xEE722746L, 0UL}}};
                        int i, j, k;
                        l_1665[4][0][0]++;
                    }
                    (*l_1668) = (*p_4115->g_1328);
                    l_1618 |= (*p_40);
                }
                if (l_1669)
                { /* block id: 698 */
                    __shared__ uint16_t l_1697;
                    l_1697 = 0x34E3L;
                    int32_t l_1699 = (-9L);
                    for (p_4115->g_375 = 0; (p_4115->g_375 != 6); p_4115->g_375++)
                    { /* block id: 701 */
                        struct S0 *l_1672 = &l_1226.f4;
                        int32_t l_1698 = 0L;
                        (*l_1672) = (*p_4115->g_1328);
                        l_1699 |= (safe_add_func_int8_t_s_s(((((safe_lshift(make_char4(l_1677.x, l_1677.x, l_1677.x, l_1677.x), make_char4(8, 8, 8, 8)))) | ((make_char4(0L, (safe_div_func_uint16_t_u_u((safe_rshift_func_int64_t_s_u(((p_4115->g_354.z , (make_int2(p_4115->g_1682.y, p_4115->g_1682.y).y && ((p_4115->g_428 = &l_1513[7][1][1]) == (p_4115->g_1683 = nullptr)))) && (((((***p_4115->g_383) , (safe_sub_func_int16_t_s_s(p_42, ((safe_mul_func_uint64_t_u_u(make_ulong4(l_1688.x, l_1688.x, l_1688.x, l_1688.x).y, (safe_mod_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u((safe_sub_func_int8_t_s_s((((safe_rshift_func_uint64_t_u_u(p_4115->g_919.y, 46)) < ((p_4115->g_1696 != nullptr) >= (((((**p_4115->g_643) = p_39) > (-4L)) , p_41) <= l_1697))) != p_4115->g_910.y), 0x0AL)))), 8UL)))) > 4294967291UL)))) , l_1698) && p_4115->g_750.x) | 247UL)), p_39)), (-1L))), 5L, 1L) ^ make_char4((-7L), (-7L), (-7L), (-7L)))))).x, l_1697));
                    }
                }
                else
                { /* block id: 708 */
                    return l_1562;
                }
            }
            l_1700 = &p_4115->g_270[4];
            (***l_1700) = (make_ulong1(l_1701.x).x , ((*l_1525) , p_40));
            for (p_4115->g_462 = 0; (p_4115->g_462 <= 2); p_4115->g_462 += 1)
            { /* block id: 716 */
                return (****l_1700);
            }
        }
    }
    --l_1703;
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ int16_t  func_47(uint32_t  p_48, int32_t * p_49, int32_t * p_50, uint8_t  p_51, struct S2 * p_4115)
{ /* block id: 11 */
    int16_t l_71 = 0x0CEAL;
    short1 l_79 = make_short1((-1L));
    int16_t l_123 = 0L;
    __shared__ int32_t l_139;
    l_139 = 0xCEDA5373L;
    int32_t l_140 = (-1L);
    int32_t l_142 = (-1L);
    int32_t l_143 = 1L;
    int32_t l_145 = (-1L);
    int32_t l_148 = 0x4FC1BAD8L;
    int32_t l_152 = 0x6259C9FFL;
    int32_t l_157[7] = {(-1L), (-1L), 0L, (-1L), (-1L), 0L, (-1L)};
    ulong4 l_196 = make_ulong4(18446744073709551614UL, 3UL, 18446744073709551614UL, 3UL);
    int32_t **l_209[1][10][2] = {{{&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}, {&p_4115->g_162, &p_4115->g_162}}};
    // attempting a hip shared for loop
    __shared__ int32_t ***l_208[5][1];
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 1; j++)
            l_208[i][j] = &l_209[0][8][0];
    }
    struct S1 l_222 = {5UL,0x4CF4E84CL,1UL,0L,{325},7L,4L};
    int3 l_251 = make_int3(0x460548ABL, 0L, 0x460548ABL);
    uint32_t l_277 = 0UL;
    __shared__ uint32_t l_348;
    l_348 = 0xCF38F014L;
    uint16_t l_351 = 0xEE10L;
    struct S1 *l_382 = &hip_const_3;
    // attempting a hip shared for loop
    __shared__ struct S1 **l_381[6][3];
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 3; j++)
            l_381[i][j] = &l_382;
    }
    struct S1 ***l_380 = &l_381[0][0];
    struct S1 ****l_379 = &l_380;
    uint16_t l_391 = 0x326CL;
    ushort2 l_401 = make_ushort2(0xA51BL, 0xD30FL);
    struct S1 ***l_411 = nullptr;
    __shared__ ulong1 l_424;
    l_424 = make_ulong1(0x4A87671A741899E8LL);
    char1 l_449 = make_char1(0xB2L);
    int32_t l_498 = 0x5D67B4B7L;
    int32_t *l_500 = &l_152;
    int4 l_504 = make_int4((-1L), 8L, (-1L), 8L);
    __shared__ ulong3 l_533;
    l_533 = make_ulong3(0x76C1C0E45286CE0ELL, 18446744073709551612UL, 0x76C1C0E45286CE0ELL);
    uint8_t l_555 = 9UL;
    __shared__ int64_t l_581;
    l_581 = 0xFACB4F48DBEEBAE8LL;
    __shared__ int32_t l_583;
    l_583 = 0xEC01DC69L;
    __shared__ ushort3 l_608;
    l_608 = make_ushort3(0xCC7AL, 0xF67CL, 0xCC7AL);
    // attempting a hip shared for loop
    __shared__ int8_t *l_616[9];
    for (int i = 0; i < 9; i++)
        l_616[i] = nullptr;
    int8_t **l_615[5] = {&l_616[3], &l_616[6], &l_616[3], &l_616[6], &l_616[3]};
    uchar4 l_671 = make_uchar4(0x48L, 0xC0L, 0x48L, 0xC0L);
    ushort4 l_705 = make_ushort4(65533UL, 0x1D8CL, 65533UL, 0x1D8CL);
    ushort3 l_716 = make_ushort3(7UL, 0x3BC3L, 7UL);
    int16_t l_729 = 0x1DAEL;
    char4 l_755 = make_char4(0xF3L, 0x20L, 0xF3L, 0x20L);
    int4 l_763 = make_int4(0xD5D8604BL, 3L, 0xD5D8604BL, 3L);
    int4 l_768 = make_int4((-1L), (-9L), (-1L), (-9L));
    int1 l_852 = make_int1(0x204941C6L);
    __shared__ int3 l_949;
    l_949 = make_int3(0xDF97D2F1L, (-4L), 0xDF97D2F1L);
    int1 l_952 = make_int1(0L);
    uint4 l_975 = make_uint4(4294967290UL, 4UL, 4294967290UL, 4UL);
    uint3 l_978 = make_uint3(0x46E267DEL, 0x2C755905L, 0x46E267DEL);
    uint32_t l_983 = 0x8692CB25L;
    int1 l_1025 = make_int1((-1L));
    char3 l_1067 = make_char3(0xF8L, 0xFCL, 0xF8L);
    uint2 l_1146 = make_uint2(4294967295UL, 0xB31C7EFEL);
    uint3 l_1147 = make_uint3(1UL, 0x425A4B0BL, 1UL);
    uint4 l_1150 = make_uint4(0xAACD11CFL, 0xA4D8E3F8L, 0xAACD11CFL, 0xA4D8E3F8L);
    uint1 l_1153 = make_uint1(0x173B8562L);
    // attempting a hip shared for loop
    __shared__ uint64_t l_1165[4][9][1];
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            for (int k = 0; k < 1; k++)
                l_1165[i][j][k] = 0xA16394C3EF9ACB3ALL;
        }
    }
    int i, j, k;
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 1; j++)
            l_208[i][j] = &l_209[0][8][0];
    }
    for (int i = 0; i < 9; i++)
        l_616[i] = nullptr;
    return p_51;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S2 c_4116;
    struct S2* p_4115 = &c_4116;
    struct S2 c_4117 = {
        .g_22 = {0L},
        .g_29 = {0x5F93BE41L, 0x5F93BE41L, 0x5F93BE41L},
        .g_54 = make_int4(0xBCF2EC28L, 1L, 0xBCF2EC28L, 1L),
        .g_63 = 0x08L,
        .g_67 = make_ulong2(18446744073709551613UL, 18446744073709551615UL),
        .g_94 = make_uint1(0xFF4120E7L),
        .g_109 = make_char3(0x46L, 1L, 0x46L),
        .g_125 = {&p_4115->g_22[0], &hip_const_3.f5, &p_4115->g_22[0], &hip_const_3.f5, &p_4115->g_22[0]},
        .g_162 = nullptr,
        .g_189 = make_ulong2(18446744073709551612UL, 1UL),
        .g_247 = 7UL,
        .g_271 = &p_4115->g_162,
        .g_270 = {&p_4115->g_271, &p_4115->g_271, &p_4115->g_271, &p_4115->g_271, &p_4115->g_271, &p_4115->g_271},
        .g_302 = make_int1(0x464219A5L),
        .g_354 = make_long3(0xA08F3B7FE7ACB506LL, 1L, 0xA08F3B7FE7ACB506LL),
        .g_375 = 0xCC3DL,
        .g_385 = &hip_const_3,
        .g_384 = {{{&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}}, {{&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}}, {{&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}}, {{&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}}, {{&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}, {&p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385, &p_4115->g_385}}},
        .g_383 = &p_4115->g_384[2][2][4],
        .g_398 = make_char3((-1L), (-5L), (-1L)),
        .g_407 = make_ulong2(0UL, 1UL),
        .g_413 = 65535UL,
        .g_429 = {&p_4115->g_383, &p_4115->g_383, &p_4115->g_383, &p_4115->g_383, &p_4115->g_383, &p_4115->g_383, &p_4115->g_383, &p_4115->g_383, &p_4115->g_383, &p_4115->g_383},
        .g_428 = &p_4115->g_429[6],
        .g_448 = make_char4(0x57L, 0xCCL, 0x57L, 0xCCL),
        .g_462 = 0UL,
        .g_472 = make_uint2(3UL, 0x29A9FE3FL),
        .g_473 = make_uint1(4294967293UL),
        .g_476 = make_int4((-1L), 0x0EFC14EFL, (-1L), 0x0EFC14EFL),
        .g_479 = make_short1(0x747CL),
        .g_491 = make_uchar1(0xFEL),
        .g_508 = make_long1(1L),
        .g_544 = make_short1((-1L)),
        .g_549 = make_ulong1(0UL),
        .g_565 = make_uchar3(0UL, 0x29L, 0UL),
        .g_578 = make_char4(1L, 0x3BL, 1L, 0x3BL),
        .g_584 = nullptr,
        .g_620 = make_int1(0xC9C58D42L),
        .g_623 = make_long1(0x502E30E472C165C7LL),
        .g_644 = &p_4115->g_63,
        .g_643 = &p_4115->g_644,
        .g_688 = make_int3(0x1A9A333AL, 0L, 0x1A9A333AL),
        .g_720 = make_int1(0x3619739EL),
        .g_750 = make_uchar2(247UL, 0xFEL),
        .g_758 = make_long3(0x9906BCEFDEBEF418LL, 0x0247F0A5B8C0B293LL, 0x9906BCEFDEBEF418LL),
        .g_759 = make_long1((-10L)),
        .g_784 = make_short2((-1L), 0xDBE3L),
        .g_786 = make_short3(0x8A26L, 0x8D4BL, 0x8A26L),
        .g_815 = make_uchar1(0x94L),
        .g_839 = make_ulong4(0UL, 1UL, 0UL, 1UL),
        .g_867 = make_short4(0x967FL, 0x2BB8L, 0x967FL, 0x2BB8L),
        .g_905 = make_char4(0x93L, 0x08L, 0x93L, 0x08L),
        .g_910 = make_ulong3(0x79FF379A89FD4869LL, 0UL, 0x79FF379A89FD4869LL),
        .g_919 = make_int4((-1L), 0xC2DEC7E3L, (-1L), 0xC2DEC7E3L),
        .g_920 = make_int2(0x38504EC1L, 5L),
        .g_958 = make_int4(0xA98F4E3EL, 0xA0B1D509L, 0xA98F4E3EL, 0xA0B1D509L),
        .g_962 = make_int2(0xAF577BB9L, 0L),
        .g_965 = make_int4(0xB1B85752L, 0x01AF86B9L, 0xB1B85752L, 0x01AF86B9L),
        .g_974 = make_int1(0xF9CBA8D9L),
        .g_1074 = make_char3(0L, 0L, 0L),
        .g_1089 = make_int2(1L, 0L),
        .g_1114 = make_ushort2(65535UL, 65533UL),
        .g_1130 = make_uint2(0x50B46D3BL, 0x92DFE62AL),
        .g_1136 = make_char3((-1L), 8L, (-1L)),
        .g_1160 = 0UL,
        .g_1209 = make_long2(0x0048DDBC729FE302LL, 0L),
        .g_1210 = make_uchar2(253UL, 249UL),
        .g_1251 = 0x88302569FFFFA48BLL,
        .g_1252 = nullptr,
        .g_1313 = 0x63L,
        .g_1328 = &hip_const_3.f4,
        .g_1351 = make_char2(0x37L, (-9L)),
        .g_1381 = make_int3(0x11842030L, 0xBF73ED11L, 0x11842030L),
        .g_1413 = make_ulong1(0xBECCEAECB1CA7225LL),
        .g_1429 = make_char3(1L, 0x06L, 1L),
        .g_1461 = make_short3(0L, 5L, 0L),
        .g_1462 = make_short4(0x7DE9L, 0xA5E8L, 0x7DE9L, 0xA5E8L),
        .g_1463 = make_short4(0x3AD3L, 0xAA03L, 0x3AD3L, 0xAA03L),
        .g_1505 = make_short3(1L, 0x1589L, 1L),
        .g_1506 = make_short2((-1L), 0xD45EL),
        .g_1571 = make_long3(0xE0C2B44279B68472LL, (-2L), 0xE0C2B44279B68472LL),
        .g_1573 = make_long3(7L, 0xD44E33BEE6DFD6DDLL, 7L),
        .g_1576 = nullptr,
        .g_1587 = make_long2(0L, 0x0F560D99936786BDLL),
        .g_1588 = make_int2(0x0F988FB4L, 0L),
        .g_1611 = make_int1(0L),
        .g_1638 = make_uint3(0x591C76F0L, 0xEB01A94BL, 0x591C76F0L),
        .g_1647 = make_long4(0L, (-4L), 0L, (-4L)),
        .g_1682 = make_int4(0x1E0CAF9FL, 8L, 0x1E0CAF9FL, 8L),
        .g_1683 = nullptr,
        .g_1696 = nullptr,
        .g_1702 = make_char1((-4L)),
        .g_1780 = make_ushort3(1UL, 0x8A69L, 1UL),
        .g_1795 = 0L,
        .g_1833 = make_int2(0x920EB86FL, 0xC8F590AFL),
        .g_1882 = make_short4(0x6B34L, 5L, 0x6B34L, 5L),
        .g_1921 = 0x83L,
        .g_1923 = make_char3(0x34L, 6L, 0x34L),
        .g_1968 = make_char1(0x56L),
        .g_1987 = make_char2((-1L), 1L),
        .g_2016 = make_uchar3(0UL, 0x34L, 0UL),
        .g_2046 = 0x6548ADD8L,
        .g_2071 = make_int4(0xB33E0784L, 0xF0634E5CL, 0xB33E0784L, 0xF0634E5CL),
        .g_2083 = nullptr,
        .g_2082 = {{&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}, {&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}, {&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}, {&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}, {&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}, {&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}, {&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}, {&p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083, &p_4115->g_2083}},
        .g_2097 = make_char1(0x55L),
        .g_2104 = make_char4(0x08L, 0xD7L, 0x08L, 0xD7L),
        .g_2114 = make_int1(0x88FE96AEL),
        .g_2168 = make_long4(0xA2D395C6B628FF7ALL, 1L, 0xA2D395C6B628FF7ALL, 1L),
        .g_2169 = make_long3(1L, 0L, 1L),
        .g_2175 = make_int4(0xB208B3F7L, 8L, 0xB208B3F7L, 8L),
        .g_2176 = make_int3(0x037ECF4AL, 1L, 0x037ECF4AL),
        .g_2195 = make_short4(0L, 0xF60DL, 0L, 0xF60DL),
        .g_2211 = make_long3(1L, 0x2EBB7DD63B70C255LL, 1L),
        .g_2213 = make_uint1(0x4F537089L),
        .g_2216 = make_uint4(0x51E9D316L, 3UL, 0x51E9D316L, 3UL),
        .g_2251 = make_ulong3(0x178A1AF08E0A9C67LL, 0x929284CD66501040LL, 0x178A1AF08E0A9C67LL),
        .g_2258 = make_ulong1(0x5D04FBF890664F9CLL),
        .g_2334 = nullptr,
        .g_2365 = make_ushort3(65535UL, 65535UL, 65535UL),
        .g_2366 = make_ushort4(0x3EE8L, 0x5602L, 0x3EE8L, 0x5602L),
        .g_2407 = make_uchar3(7UL, 250UL, 7UL),
        .g_2425 = nullptr,
        .g_2428 = nullptr,
        .g_2427 = &p_4115->g_2428,
        .g_2457 = &p_4115->g_2334,
        .g_2505 = make_ushort1(1UL),
        .g_2548 = make_int3(0x7032B1C9L, 0L, 0x7032B1C9L),
        .g_2564 = 0x324BDE71B706CCA6LL,
        .g_2570 = make_ushort2(0UL, 0x6038L),
        .g_2578 = make_int1(0xB4FF8659L),
        .g_2582 = make_int2((-10L), (-1L)),
        .g_2585 = make_int2(1L, (-1L)),
        .g_2586 = make_int1(0xCF809562L),
        .g_2587 = make_int1(0x607FA485L),
        .g_2592 = make_short4(0xA484L, 0x8B2CL, 0xA484L, 0x8B2CL),
        .g_2689 = make_long2((-7L), 0x4464470ABDDC5EEELL),
        .g_2714 = &p_4115->g_584,
        .g_2713 = {&p_4115->g_2714, &p_4115->g_2714, nullptr, &p_4115->g_2714, &p_4115->g_2714, nullptr, &p_4115->g_2714, &p_4115->g_2714, nullptr, &p_4115->g_2714},
        .g_2731 = make_int3(0xD942DC75L, 0xF1B0E8FCL, 0xD942DC75L),
        .g_2762 = make_uchar2(255UL, 0x01L),
        .g_2891 = make_char2(0x53L, 0xE5L),
        .g_2901 = 1UL,
        .g_2908 = make_uint4(4294967295UL, 0xB7E863CDL, 4294967295UL, 0xB7E863CDL),
        .g_2943 = 0xFD97L,
        .g_2978 = make_int1((-7L)),
        .g_2992 = make_long3(0x39D08E81264286FCLL, 0L, 0x39D08E81264286FCLL),
        .g_3009 = make_uint4(1UL, 0x42F29E4EL, 1UL, 0x42F29E4EL),
        .g_3010 = make_uint1(0xCF9F1A02L),
        .g_3013 = make_uint2(0x0FA3DF97L, 0UL),
        .g_3046 = make_ushort2(0x6D15L, 0x4881L),
        .g_3068 = make_ushort1(0x7C56L),
        .g_3073 = make_ushort3(7UL, 0x8B9AL, 7UL),
        .g_3127 = make_long1(0xBFFC1CB84226EB38LL),
        .g_3128 = nullptr,
        .g_3184 = &p_4115->g_2082[5][2],
        .g_3196 = make_uint4(0xC71E82E8L, 4294967289UL, 0xC71E82E8L, 4294967289UL),
        .g_3207 = make_ulong3(18446744073709551614UL, 0x1F8D51401A3D2905LL, 18446744073709551614UL),
        .g_3230 = make_ulong3(0xF95EEA3F09F07DAELL, 18446744073709551615UL, 0xF95EEA3F09F07DAELL),
        .g_3232 = &p_4115->g_270[2],
        .g_3237 = make_ushort1(0xE36AL),
        .g_3238 = 18446744073709551615UL,
        .g_3290 = 1L,
        .g_3291 = 0xEAL,
        .g_3293 = 0x1327254EL,
        .g_3305 = make_ulong2(0x758B39D20578CCA6LL, 1UL),
        .g_3309 = make_ulong3(0xF13BCF59F89F2E07LL, 0x05ABA9A984365721LL, 0xF13BCF59F89F2E07LL),
        .g_3337 = make_uint3(1UL, 0x8B4FD089L, 1UL),
        .g_3340 = make_uint3(0xB77D8654L, 0xD0E68AC3L, 0xB77D8654L),
        .g_3346 = make_uchar2(0UL, 0x86L),
        .g_3352 = make_char1(0xD8L),
        .g_3369 = make_int3(1L, 1L, 1L),
        .g_3395 = make_char4(0xF3L, 0x74L, 0xF3L, 0x74L),
        .g_3401 = 0x641FEA62L,
        .g_3449 = &p_4115->g_643,
        .g_3455 = make_ulong1(0x8A609B5DD464BD90LL),
        .g_3476 = make_ulong1(0UL),
        .g_3513 = nullptr,
        .g_3566 = make_uchar3(0x23L, 0x70L, 0x23L),
        .g_3567 = make_uchar2(0UL, 0x05L),
        .g_3594 = (-1L),
        .g_3611 = make_ulong1(0x7F7A5D91100AEC01LL),
        .g_3665 = make_ushort4(0xE11EL, 65535UL, 0xE11EL, 65535UL),
        .g_3669 = make_ushort2(0xCD0BL, 1UL),
        .g_3676 = make_short1(0x9696L),
        .g_3685 = make_uchar2(0x0EL, 0x28L),
        .g_3711 = make_ushort3(0x062FL, 0x7461L, 0x062FL),
        .g_3728 = make_long4(0x1EB4D0437FA1A6BCLL, 1L, 0x1EB4D0437FA1A6BCLL, 1L),
        .g_3785 = nullptr,
        .g_3784 = &p_4115->g_3785,
        .g_3807 = make_ulong4(18446744073709551606UL, 0x5C6438B1DFE6F7F9LL, 18446744073709551606UL, 0x5C6438B1DFE6F7F9LL),
        .g_3828 = make_short3((-1L), 0xBA62L, (-1L)),
        .g_3838 = make_char1(0x5EL),
        .g_3851 = make_int1(3L),
        .g_3859 = make_char3(3L, 0xFAL, 3L),
        .g_3868 = make_ulong3(2UL, 4UL, 2UL),
        .g_3875 = make_uint1(0xCDE46CB9L),
        .g_3941 = &p_4115->g_3784,
        .g_3953 = 0x9DC6L,
        .g_3980 = 1UL,
        .g_3995 = (-1L),
        .g_3996 = make_int4(2L, 0x2849CE0AL, 2L, 0x2849CE0AL),
        .g_4048 = make_long1(0L),
        .g_4055 = make_char4(0x4BL, 5L, 0x4BL, 5L),
        .g_4074 = make_long1((-1L)),
        .g_4114 = make_int4(0xD58AFD89L, (-4L), 0xD58AFD89L, (-4L)),
    };
    c_4116 = c_4117;

    // Execute core logic
    func_1(p_4115);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3.f0, "hip_const_3.f0", print_hash_value);
    transparent_crc(hip_const_3.f1, "hip_const_3.f1", print_hash_value);
    transparent_crc(hip_const_3.f2, "hip_const_3.f2", print_hash_value);
    transparent_crc(hip_const_3.f3, "hip_const_3.f3", print_hash_value);
    transparent_crc(hip_const_3.f4.f0, "hip_const_3.f4.f0", print_hash_value);
    transparent_crc(hip_const_3.f5, "hip_const_3.f5", print_hash_value);
    transparent_crc(hip_const_3.f6, "hip_const_3.f6", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        transparent_crc(hip_const_5[i].f0, "hip_const_5[i].f0", print_hash_value);

    }
    transparent_crc(hip_const_6.f0, "hip_const_6.f0", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        transparent_crc(p_4115->g_22[i], "p_4115->g_22[i]", print_hash_value);

    }
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_4115->g_29[i], "p_4115->g_29[i]", print_hash_value);

    }
    transparent_crc(p_4115->g_54.x, "p_4115->g_54.x", print_hash_value);
    transparent_crc(p_4115->g_54.y, "p_4115->g_54.y", print_hash_value);
    transparent_crc(p_4115->g_54.z, "p_4115->g_54.z", print_hash_value);
    transparent_crc(p_4115->g_54.w, "p_4115->g_54.w", print_hash_value);
    transparent_crc(p_4115->g_63, "p_4115->g_63", print_hash_value);
    transparent_crc(p_4115->g_67.x, "p_4115->g_67.x", print_hash_value);
    transparent_crc(p_4115->g_67.y, "p_4115->g_67.y", print_hash_value);
    transparent_crc(p_4115->g_94.x, "p_4115->g_94.x", print_hash_value);
    transparent_crc(p_4115->g_109.x, "p_4115->g_109.x", print_hash_value);
    transparent_crc(p_4115->g_109.y, "p_4115->g_109.y", print_hash_value);
    transparent_crc(p_4115->g_109.z, "p_4115->g_109.z", print_hash_value);
    transparent_crc(p_4115->g_189.x, "p_4115->g_189.x", print_hash_value);
    transparent_crc(p_4115->g_189.y, "p_4115->g_189.y", print_hash_value);
    transparent_crc(p_4115->g_247, "p_4115->g_247", print_hash_value);
    transparent_crc(p_4115->g_302.x, "p_4115->g_302.x", print_hash_value);
    transparent_crc(p_4115->g_354.x, "p_4115->g_354.x", print_hash_value);
    transparent_crc(p_4115->g_354.y, "p_4115->g_354.y", print_hash_value);
    transparent_crc(p_4115->g_354.z, "p_4115->g_354.z", print_hash_value);
    transparent_crc(p_4115->g_375, "p_4115->g_375", print_hash_value);
    transparent_crc(p_4115->g_398.x, "p_4115->g_398.x", print_hash_value);
    transparent_crc(p_4115->g_398.y, "p_4115->g_398.y", print_hash_value);
    transparent_crc(p_4115->g_398.z, "p_4115->g_398.z", print_hash_value);
    transparent_crc(p_4115->g_407.x, "p_4115->g_407.x", print_hash_value);
    transparent_crc(p_4115->g_407.y, "p_4115->g_407.y", print_hash_value);
    transparent_crc(p_4115->g_413, "p_4115->g_413", print_hash_value);
    transparent_crc(p_4115->g_448.x, "p_4115->g_448.x", print_hash_value);
    transparent_crc(p_4115->g_448.y, "p_4115->g_448.y", print_hash_value);
    transparent_crc(p_4115->g_448.z, "p_4115->g_448.z", print_hash_value);
    transparent_crc(p_4115->g_448.w, "p_4115->g_448.w", print_hash_value);
    transparent_crc(p_4115->g_462, "p_4115->g_462", print_hash_value);
    transparent_crc(p_4115->g_472.x, "p_4115->g_472.x", print_hash_value);
    transparent_crc(p_4115->g_472.y, "p_4115->g_472.y", print_hash_value);
    transparent_crc(p_4115->g_473.x, "p_4115->g_473.x", print_hash_value);
    transparent_crc(p_4115->g_476.x, "p_4115->g_476.x", print_hash_value);
    transparent_crc(p_4115->g_476.y, "p_4115->g_476.y", print_hash_value);
    transparent_crc(p_4115->g_476.z, "p_4115->g_476.z", print_hash_value);
    transparent_crc(p_4115->g_476.w, "p_4115->g_476.w", print_hash_value);
    transparent_crc(p_4115->g_479.x, "p_4115->g_479.x", print_hash_value);
    transparent_crc(p_4115->g_491.x, "p_4115->g_491.x", print_hash_value);
    transparent_crc(p_4115->g_508.x, "p_4115->g_508.x", print_hash_value);
    transparent_crc(p_4115->g_544.x, "p_4115->g_544.x", print_hash_value);
    transparent_crc(p_4115->g_549.x, "p_4115->g_549.x", print_hash_value);
    transparent_crc(p_4115->g_565.x, "p_4115->g_565.x", print_hash_value);
    transparent_crc(p_4115->g_565.y, "p_4115->g_565.y", print_hash_value);
    transparent_crc(p_4115->g_565.z, "p_4115->g_565.z", print_hash_value);
    transparent_crc(p_4115->g_578.x, "p_4115->g_578.x", print_hash_value);
    transparent_crc(p_4115->g_578.y, "p_4115->g_578.y", print_hash_value);
    transparent_crc(p_4115->g_578.z, "p_4115->g_578.z", print_hash_value);
    transparent_crc(p_4115->g_578.w, "p_4115->g_578.w", print_hash_value);
    transparent_crc(p_4115->g_620.x, "p_4115->g_620.x", print_hash_value);
    transparent_crc(p_4115->g_623.x, "p_4115->g_623.x", print_hash_value);
    transparent_crc(p_4115->g_688.x, "p_4115->g_688.x", print_hash_value);
    transparent_crc(p_4115->g_688.y, "p_4115->g_688.y", print_hash_value);
    transparent_crc(p_4115->g_688.z, "p_4115->g_688.z", print_hash_value);
    transparent_crc(p_4115->g_720.x, "p_4115->g_720.x", print_hash_value);
    transparent_crc(p_4115->g_750.x, "p_4115->g_750.x", print_hash_value);
    transparent_crc(p_4115->g_750.y, "p_4115->g_750.y", print_hash_value);
    transparent_crc(p_4115->g_758.x, "p_4115->g_758.x", print_hash_value);
    transparent_crc(p_4115->g_758.y, "p_4115->g_758.y", print_hash_value);
    transparent_crc(p_4115->g_758.z, "p_4115->g_758.z", print_hash_value);
    transparent_crc(p_4115->g_759.x, "p_4115->g_759.x", print_hash_value);
    transparent_crc(p_4115->g_784.x, "p_4115->g_784.x", print_hash_value);
    transparent_crc(p_4115->g_784.y, "p_4115->g_784.y", print_hash_value);
    transparent_crc(p_4115->g_786.x, "p_4115->g_786.x", print_hash_value);
    transparent_crc(p_4115->g_786.y, "p_4115->g_786.y", print_hash_value);
    transparent_crc(p_4115->g_786.z, "p_4115->g_786.z", print_hash_value);
    transparent_crc(p_4115->g_815.x, "p_4115->g_815.x", print_hash_value);
    transparent_crc(p_4115->g_839.x, "p_4115->g_839.x", print_hash_value);
    transparent_crc(p_4115->g_839.y, "p_4115->g_839.y", print_hash_value);
    transparent_crc(p_4115->g_839.z, "p_4115->g_839.z", print_hash_value);
    transparent_crc(p_4115->g_839.w, "p_4115->g_839.w", print_hash_value);
    transparent_crc(p_4115->g_867.x, "p_4115->g_867.x", print_hash_value);
    transparent_crc(p_4115->g_867.y, "p_4115->g_867.y", print_hash_value);
    transparent_crc(p_4115->g_867.z, "p_4115->g_867.z", print_hash_value);
    transparent_crc(p_4115->g_867.w, "p_4115->g_867.w", print_hash_value);
    transparent_crc(p_4115->g_905.x, "p_4115->g_905.x", print_hash_value);
    transparent_crc(p_4115->g_905.y, "p_4115->g_905.y", print_hash_value);
    transparent_crc(p_4115->g_905.z, "p_4115->g_905.z", print_hash_value);
    transparent_crc(p_4115->g_905.w, "p_4115->g_905.w", print_hash_value);
    transparent_crc(p_4115->g_910.x, "p_4115->g_910.x", print_hash_value);
    transparent_crc(p_4115->g_910.y, "p_4115->g_910.y", print_hash_value);
    transparent_crc(p_4115->g_910.z, "p_4115->g_910.z", print_hash_value);
    transparent_crc(p_4115->g_919.x, "p_4115->g_919.x", print_hash_value);
    transparent_crc(p_4115->g_919.y, "p_4115->g_919.y", print_hash_value);
    transparent_crc(p_4115->g_919.z, "p_4115->g_919.z", print_hash_value);
    transparent_crc(p_4115->g_919.w, "p_4115->g_919.w", print_hash_value);
    transparent_crc(p_4115->g_920.x, "p_4115->g_920.x", print_hash_value);
    transparent_crc(p_4115->g_920.y, "p_4115->g_920.y", print_hash_value);
    transparent_crc(p_4115->g_958.x, "p_4115->g_958.x", print_hash_value);
    transparent_crc(p_4115->g_958.y, "p_4115->g_958.y", print_hash_value);
    transparent_crc(p_4115->g_958.z, "p_4115->g_958.z", print_hash_value);
    transparent_crc(p_4115->g_958.w, "p_4115->g_958.w", print_hash_value);
    transparent_crc(p_4115->g_962.x, "p_4115->g_962.x", print_hash_value);
    transparent_crc(p_4115->g_962.y, "p_4115->g_962.y", print_hash_value);
    transparent_crc(p_4115->g_965.x, "p_4115->g_965.x", print_hash_value);
    transparent_crc(p_4115->g_965.y, "p_4115->g_965.y", print_hash_value);
    transparent_crc(p_4115->g_965.z, "p_4115->g_965.z", print_hash_value);
    transparent_crc(p_4115->g_965.w, "p_4115->g_965.w", print_hash_value);
    transparent_crc(p_4115->g_974.x, "p_4115->g_974.x", print_hash_value);
    transparent_crc(p_4115->g_1074.x, "p_4115->g_1074.x", print_hash_value);
    transparent_crc(p_4115->g_1074.y, "p_4115->g_1074.y", print_hash_value);
    transparent_crc(p_4115->g_1074.z, "p_4115->g_1074.z", print_hash_value);
    transparent_crc(p_4115->g_1089.x, "p_4115->g_1089.x", print_hash_value);
    transparent_crc(p_4115->g_1089.y, "p_4115->g_1089.y", print_hash_value);
    transparent_crc(p_4115->g_1114.x, "p_4115->g_1114.x", print_hash_value);
    transparent_crc(p_4115->g_1114.y, "p_4115->g_1114.y", print_hash_value);
    transparent_crc(p_4115->g_1130.x, "p_4115->g_1130.x", print_hash_value);
    transparent_crc(p_4115->g_1130.y, "p_4115->g_1130.y", print_hash_value);
    transparent_crc(p_4115->g_1136.x, "p_4115->g_1136.x", print_hash_value);
    transparent_crc(p_4115->g_1136.y, "p_4115->g_1136.y", print_hash_value);
    transparent_crc(p_4115->g_1136.z, "p_4115->g_1136.z", print_hash_value);
    transparent_crc(p_4115->g_1160, "p_4115->g_1160", print_hash_value);
    transparent_crc(p_4115->g_1209.x, "p_4115->g_1209.x", print_hash_value);
    transparent_crc(p_4115->g_1209.y, "p_4115->g_1209.y", print_hash_value);
    transparent_crc(p_4115->g_1210.x, "p_4115->g_1210.x", print_hash_value);
    transparent_crc(p_4115->g_1210.y, "p_4115->g_1210.y", print_hash_value);
    transparent_crc(p_4115->g_1251, "p_4115->g_1251", print_hash_value);
    transparent_crc(p_4115->g_1313, "p_4115->g_1313", print_hash_value);
    transparent_crc(p_4115->g_1351.x, "p_4115->g_1351.x", print_hash_value);
    transparent_crc(p_4115->g_1351.y, "p_4115->g_1351.y", print_hash_value);
    transparent_crc(p_4115->g_1381.x, "p_4115->g_1381.x", print_hash_value);
    transparent_crc(p_4115->g_1381.y, "p_4115->g_1381.y", print_hash_value);
    transparent_crc(p_4115->g_1381.z, "p_4115->g_1381.z", print_hash_value);
    transparent_crc(p_4115->g_1413.x, "p_4115->g_1413.x", print_hash_value);
    transparent_crc(p_4115->g_1429.x, "p_4115->g_1429.x", print_hash_value);
    transparent_crc(p_4115->g_1429.y, "p_4115->g_1429.y", print_hash_value);
    transparent_crc(p_4115->g_1429.z, "p_4115->g_1429.z", print_hash_value);
    transparent_crc(p_4115->g_1461.x, "p_4115->g_1461.x", print_hash_value);
    transparent_crc(p_4115->g_1461.y, "p_4115->g_1461.y", print_hash_value);
    transparent_crc(p_4115->g_1461.z, "p_4115->g_1461.z", print_hash_value);
    transparent_crc(p_4115->g_1462.x, "p_4115->g_1462.x", print_hash_value);
    transparent_crc(p_4115->g_1462.y, "p_4115->g_1462.y", print_hash_value);
    transparent_crc(p_4115->g_1462.z, "p_4115->g_1462.z", print_hash_value);
    transparent_crc(p_4115->g_1462.w, "p_4115->g_1462.w", print_hash_value);
    transparent_crc(p_4115->g_1463.x, "p_4115->g_1463.x", print_hash_value);
    transparent_crc(p_4115->g_1463.y, "p_4115->g_1463.y", print_hash_value);
    transparent_crc(p_4115->g_1463.z, "p_4115->g_1463.z", print_hash_value);
    transparent_crc(p_4115->g_1463.w, "p_4115->g_1463.w", print_hash_value);
    transparent_crc(p_4115->g_1505.x, "p_4115->g_1505.x", print_hash_value);
    transparent_crc(p_4115->g_1505.y, "p_4115->g_1505.y", print_hash_value);
    transparent_crc(p_4115->g_1505.z, "p_4115->g_1505.z", print_hash_value);
    transparent_crc(p_4115->g_1506.x, "p_4115->g_1506.x", print_hash_value);
    transparent_crc(p_4115->g_1506.y, "p_4115->g_1506.y", print_hash_value);
    transparent_crc(p_4115->g_1571.x, "p_4115->g_1571.x", print_hash_value);
    transparent_crc(p_4115->g_1571.y, "p_4115->g_1571.y", print_hash_value);
    transparent_crc(p_4115->g_1571.z, "p_4115->g_1571.z", print_hash_value);
    transparent_crc(p_4115->g_1573.x, "p_4115->g_1573.x", print_hash_value);
    transparent_crc(p_4115->g_1573.y, "p_4115->g_1573.y", print_hash_value);
    transparent_crc(p_4115->g_1573.z, "p_4115->g_1573.z", print_hash_value);
    transparent_crc(p_4115->g_1587.x, "p_4115->g_1587.x", print_hash_value);
    transparent_crc(p_4115->g_1587.y, "p_4115->g_1587.y", print_hash_value);
    transparent_crc(p_4115->g_1588.x, "p_4115->g_1588.x", print_hash_value);
    transparent_crc(p_4115->g_1588.y, "p_4115->g_1588.y", print_hash_value);
    transparent_crc(p_4115->g_1611.x, "p_4115->g_1611.x", print_hash_value);
    transparent_crc(p_4115->g_1638.x, "p_4115->g_1638.x", print_hash_value);
    transparent_crc(p_4115->g_1638.y, "p_4115->g_1638.y", print_hash_value);
    transparent_crc(p_4115->g_1638.z, "p_4115->g_1638.z", print_hash_value);
    transparent_crc(p_4115->g_1647.x, "p_4115->g_1647.x", print_hash_value);
    transparent_crc(p_4115->g_1647.y, "p_4115->g_1647.y", print_hash_value);
    transparent_crc(p_4115->g_1647.z, "p_4115->g_1647.z", print_hash_value);
    transparent_crc(p_4115->g_1647.w, "p_4115->g_1647.w", print_hash_value);
    transparent_crc(p_4115->g_1682.x, "p_4115->g_1682.x", print_hash_value);
    transparent_crc(p_4115->g_1682.y, "p_4115->g_1682.y", print_hash_value);
    transparent_crc(p_4115->g_1682.z, "p_4115->g_1682.z", print_hash_value);
    transparent_crc(p_4115->g_1682.w, "p_4115->g_1682.w", print_hash_value);
    transparent_crc(p_4115->g_1702.x, "p_4115->g_1702.x", print_hash_value);
    transparent_crc(p_4115->g_1780.x, "p_4115->g_1780.x", print_hash_value);
    transparent_crc(p_4115->g_1780.y, "p_4115->g_1780.y", print_hash_value);
    transparent_crc(p_4115->g_1780.z, "p_4115->g_1780.z", print_hash_value);
    transparent_crc(p_4115->g_1795, "p_4115->g_1795", print_hash_value);
    transparent_crc(p_4115->g_1833.x, "p_4115->g_1833.x", print_hash_value);
    transparent_crc(p_4115->g_1833.y, "p_4115->g_1833.y", print_hash_value);
    transparent_crc(p_4115->g_1882.x, "p_4115->g_1882.x", print_hash_value);
    transparent_crc(p_4115->g_1882.y, "p_4115->g_1882.y", print_hash_value);
    transparent_crc(p_4115->g_1882.z, "p_4115->g_1882.z", print_hash_value);
    transparent_crc(p_4115->g_1882.w, "p_4115->g_1882.w", print_hash_value);
    transparent_crc(p_4115->g_1921, "p_4115->g_1921", print_hash_value);
    transparent_crc(p_4115->g_1923.x, "p_4115->g_1923.x", print_hash_value);
    transparent_crc(p_4115->g_1923.y, "p_4115->g_1923.y", print_hash_value);
    transparent_crc(p_4115->g_1923.z, "p_4115->g_1923.z", print_hash_value);
    transparent_crc(p_4115->g_1968.x, "p_4115->g_1968.x", print_hash_value);
    transparent_crc(p_4115->g_1987.x, "p_4115->g_1987.x", print_hash_value);
    transparent_crc(p_4115->g_1987.y, "p_4115->g_1987.y", print_hash_value);
    transparent_crc(p_4115->g_2016.x, "p_4115->g_2016.x", print_hash_value);
    transparent_crc(p_4115->g_2016.y, "p_4115->g_2016.y", print_hash_value);
    transparent_crc(p_4115->g_2016.z, "p_4115->g_2016.z", print_hash_value);
    transparent_crc(p_4115->g_2046, "p_4115->g_2046", print_hash_value);
    transparent_crc(p_4115->g_2071.x, "p_4115->g_2071.x", print_hash_value);
    transparent_crc(p_4115->g_2071.y, "p_4115->g_2071.y", print_hash_value);
    transparent_crc(p_4115->g_2071.z, "p_4115->g_2071.z", print_hash_value);
    transparent_crc(p_4115->g_2071.w, "p_4115->g_2071.w", print_hash_value);
    transparent_crc(p_4115->g_2097.x, "p_4115->g_2097.x", print_hash_value);
    transparent_crc(p_4115->g_2104.x, "p_4115->g_2104.x", print_hash_value);
    transparent_crc(p_4115->g_2104.y, "p_4115->g_2104.y", print_hash_value);
    transparent_crc(p_4115->g_2104.z, "p_4115->g_2104.z", print_hash_value);
    transparent_crc(p_4115->g_2104.w, "p_4115->g_2104.w", print_hash_value);
    transparent_crc(p_4115->g_2114.x, "p_4115->g_2114.x", print_hash_value);
    transparent_crc(p_4115->g_2168.x, "p_4115->g_2168.x", print_hash_value);
    transparent_crc(p_4115->g_2168.y, "p_4115->g_2168.y", print_hash_value);
    transparent_crc(p_4115->g_2168.z, "p_4115->g_2168.z", print_hash_value);
    transparent_crc(p_4115->g_2168.w, "p_4115->g_2168.w", print_hash_value);
    transparent_crc(p_4115->g_2169.x, "p_4115->g_2169.x", print_hash_value);
    transparent_crc(p_4115->g_2169.y, "p_4115->g_2169.y", print_hash_value);
    transparent_crc(p_4115->g_2169.z, "p_4115->g_2169.z", print_hash_value);
    transparent_crc(p_4115->g_2175.x, "p_4115->g_2175.x", print_hash_value);
    transparent_crc(p_4115->g_2175.y, "p_4115->g_2175.y", print_hash_value);
    transparent_crc(p_4115->g_2175.z, "p_4115->g_2175.z", print_hash_value);
    transparent_crc(p_4115->g_2175.w, "p_4115->g_2175.w", print_hash_value);
    transparent_crc(p_4115->g_2176.x, "p_4115->g_2176.x", print_hash_value);
    transparent_crc(p_4115->g_2176.y, "p_4115->g_2176.y", print_hash_value);
    transparent_crc(p_4115->g_2176.z, "p_4115->g_2176.z", print_hash_value);
    transparent_crc(p_4115->g_2195.x, "p_4115->g_2195.x", print_hash_value);
    transparent_crc(p_4115->g_2195.y, "p_4115->g_2195.y", print_hash_value);
    transparent_crc(p_4115->g_2195.z, "p_4115->g_2195.z", print_hash_value);
    transparent_crc(p_4115->g_2195.w, "p_4115->g_2195.w", print_hash_value);
    transparent_crc(p_4115->g_2211.x, "p_4115->g_2211.x", print_hash_value);
    transparent_crc(p_4115->g_2211.y, "p_4115->g_2211.y", print_hash_value);
    transparent_crc(p_4115->g_2211.z, "p_4115->g_2211.z", print_hash_value);
    transparent_crc(p_4115->g_2213.x, "p_4115->g_2213.x", print_hash_value);
    transparent_crc(p_4115->g_2216.x, "p_4115->g_2216.x", print_hash_value);
    transparent_crc(p_4115->g_2216.y, "p_4115->g_2216.y", print_hash_value);
    transparent_crc(p_4115->g_2216.z, "p_4115->g_2216.z", print_hash_value);
    transparent_crc(p_4115->g_2216.w, "p_4115->g_2216.w", print_hash_value);
    transparent_crc(p_4115->g_2251.x, "p_4115->g_2251.x", print_hash_value);
    transparent_crc(p_4115->g_2251.y, "p_4115->g_2251.y", print_hash_value);
    transparent_crc(p_4115->g_2251.z, "p_4115->g_2251.z", print_hash_value);
    transparent_crc(p_4115->g_2258.x, "p_4115->g_2258.x", print_hash_value);
    transparent_crc(p_4115->g_2365.x, "p_4115->g_2365.x", print_hash_value);
    transparent_crc(p_4115->g_2365.y, "p_4115->g_2365.y", print_hash_value);
    transparent_crc(p_4115->g_2365.z, "p_4115->g_2365.z", print_hash_value);
    transparent_crc(p_4115->g_2366.x, "p_4115->g_2366.x", print_hash_value);
    transparent_crc(p_4115->g_2366.y, "p_4115->g_2366.y", print_hash_value);
    transparent_crc(p_4115->g_2366.z, "p_4115->g_2366.z", print_hash_value);
    transparent_crc(p_4115->g_2366.w, "p_4115->g_2366.w", print_hash_value);
    transparent_crc(p_4115->g_2407.x, "p_4115->g_2407.x", print_hash_value);
    transparent_crc(p_4115->g_2407.y, "p_4115->g_2407.y", print_hash_value);
    transparent_crc(p_4115->g_2407.z, "p_4115->g_2407.z", print_hash_value);
    transparent_crc(p_4115->g_2505.x, "p_4115->g_2505.x", print_hash_value);
    transparent_crc(p_4115->g_2548.x, "p_4115->g_2548.x", print_hash_value);
    transparent_crc(p_4115->g_2548.y, "p_4115->g_2548.y", print_hash_value);
    transparent_crc(p_4115->g_2548.z, "p_4115->g_2548.z", print_hash_value);
    transparent_crc(p_4115->g_2564, "p_4115->g_2564", print_hash_value);
    transparent_crc(p_4115->g_2570.x, "p_4115->g_2570.x", print_hash_value);
    transparent_crc(p_4115->g_2570.y, "p_4115->g_2570.y", print_hash_value);
    transparent_crc(p_4115->g_2578.x, "p_4115->g_2578.x", print_hash_value);
    transparent_crc(p_4115->g_2582.x, "p_4115->g_2582.x", print_hash_value);
    transparent_crc(p_4115->g_2582.y, "p_4115->g_2582.y", print_hash_value);
    transparent_crc(p_4115->g_2585.x, "p_4115->g_2585.x", print_hash_value);
    transparent_crc(p_4115->g_2585.y, "p_4115->g_2585.y", print_hash_value);
    transparent_crc(p_4115->g_2586.x, "p_4115->g_2586.x", print_hash_value);
    transparent_crc(p_4115->g_2587.x, "p_4115->g_2587.x", print_hash_value);
    transparent_crc(p_4115->g_2592.x, "p_4115->g_2592.x", print_hash_value);
    transparent_crc(p_4115->g_2592.y, "p_4115->g_2592.y", print_hash_value);
    transparent_crc(p_4115->g_2592.z, "p_4115->g_2592.z", print_hash_value);
    transparent_crc(p_4115->g_2592.w, "p_4115->g_2592.w", print_hash_value);
    transparent_crc(p_4115->g_2689.x, "p_4115->g_2689.x", print_hash_value);
    transparent_crc(p_4115->g_2689.y, "p_4115->g_2689.y", print_hash_value);
    transparent_crc(p_4115->g_2731.x, "p_4115->g_2731.x", print_hash_value);
    transparent_crc(p_4115->g_2731.y, "p_4115->g_2731.y", print_hash_value);
    transparent_crc(p_4115->g_2731.z, "p_4115->g_2731.z", print_hash_value);
    transparent_crc(p_4115->g_2762.x, "p_4115->g_2762.x", print_hash_value);
    transparent_crc(p_4115->g_2762.y, "p_4115->g_2762.y", print_hash_value);
    transparent_crc(p_4115->g_2891.x, "p_4115->g_2891.x", print_hash_value);
    transparent_crc(p_4115->g_2891.y, "p_4115->g_2891.y", print_hash_value);
    transparent_crc(p_4115->g_2901, "p_4115->g_2901", print_hash_value);
    transparent_crc(p_4115->g_2908.x, "p_4115->g_2908.x", print_hash_value);
    transparent_crc(p_4115->g_2908.y, "p_4115->g_2908.y", print_hash_value);
    transparent_crc(p_4115->g_2908.z, "p_4115->g_2908.z", print_hash_value);
    transparent_crc(p_4115->g_2908.w, "p_4115->g_2908.w", print_hash_value);
    transparent_crc(p_4115->g_2943, "p_4115->g_2943", print_hash_value);
    transparent_crc(p_4115->g_2978.x, "p_4115->g_2978.x", print_hash_value);
    transparent_crc(p_4115->g_2992.x, "p_4115->g_2992.x", print_hash_value);
    transparent_crc(p_4115->g_2992.y, "p_4115->g_2992.y", print_hash_value);
    transparent_crc(p_4115->g_2992.z, "p_4115->g_2992.z", print_hash_value);
    transparent_crc(p_4115->g_3009.x, "p_4115->g_3009.x", print_hash_value);
    transparent_crc(p_4115->g_3009.y, "p_4115->g_3009.y", print_hash_value);
    transparent_crc(p_4115->g_3009.z, "p_4115->g_3009.z", print_hash_value);
    transparent_crc(p_4115->g_3009.w, "p_4115->g_3009.w", print_hash_value);
    transparent_crc(p_4115->g_3010.x, "p_4115->g_3010.x", print_hash_value);
    transparent_crc(p_4115->g_3013.x, "p_4115->g_3013.x", print_hash_value);
    transparent_crc(p_4115->g_3013.y, "p_4115->g_3013.y", print_hash_value);
    transparent_crc(p_4115->g_3046.x, "p_4115->g_3046.x", print_hash_value);
    transparent_crc(p_4115->g_3046.y, "p_4115->g_3046.y", print_hash_value);
    transparent_crc(p_4115->g_3068.x, "p_4115->g_3068.x", print_hash_value);
    transparent_crc(p_4115->g_3073.x, "p_4115->g_3073.x", print_hash_value);
    transparent_crc(p_4115->g_3073.y, "p_4115->g_3073.y", print_hash_value);
    transparent_crc(p_4115->g_3073.z, "p_4115->g_3073.z", print_hash_value);
    transparent_crc(p_4115->g_3127.x, "p_4115->g_3127.x", print_hash_value);
    transparent_crc(p_4115->g_3196.x, "p_4115->g_3196.x", print_hash_value);
    transparent_crc(p_4115->g_3196.y, "p_4115->g_3196.y", print_hash_value);
    transparent_crc(p_4115->g_3196.z, "p_4115->g_3196.z", print_hash_value);
    transparent_crc(p_4115->g_3196.w, "p_4115->g_3196.w", print_hash_value);
    transparent_crc(p_4115->g_3207.x, "p_4115->g_3207.x", print_hash_value);
    transparent_crc(p_4115->g_3207.y, "p_4115->g_3207.y", print_hash_value);
    transparent_crc(p_4115->g_3207.z, "p_4115->g_3207.z", print_hash_value);
    transparent_crc(p_4115->g_3230.x, "p_4115->g_3230.x", print_hash_value);
    transparent_crc(p_4115->g_3230.y, "p_4115->g_3230.y", print_hash_value);
    transparent_crc(p_4115->g_3230.z, "p_4115->g_3230.z", print_hash_value);
    transparent_crc(p_4115->g_3237.x, "p_4115->g_3237.x", print_hash_value);
    transparent_crc(p_4115->g_3238, "p_4115->g_3238", print_hash_value);
    transparent_crc(p_4115->g_3290, "p_4115->g_3290", print_hash_value);
    transparent_crc(p_4115->g_3291, "p_4115->g_3291", print_hash_value);
    transparent_crc(p_4115->g_3293, "p_4115->g_3293", print_hash_value);
    transparent_crc(p_4115->g_3305.x, "p_4115->g_3305.x", print_hash_value);
    transparent_crc(p_4115->g_3305.y, "p_4115->g_3305.y", print_hash_value);
    transparent_crc(p_4115->g_3309.x, "p_4115->g_3309.x", print_hash_value);
    transparent_crc(p_4115->g_3309.y, "p_4115->g_3309.y", print_hash_value);
    transparent_crc(p_4115->g_3309.z, "p_4115->g_3309.z", print_hash_value);
    transparent_crc(p_4115->g_3337.x, "p_4115->g_3337.x", print_hash_value);
    transparent_crc(p_4115->g_3337.y, "p_4115->g_3337.y", print_hash_value);
    transparent_crc(p_4115->g_3337.z, "p_4115->g_3337.z", print_hash_value);
    transparent_crc(p_4115->g_3340.x, "p_4115->g_3340.x", print_hash_value);
    transparent_crc(p_4115->g_3340.y, "p_4115->g_3340.y", print_hash_value);
    transparent_crc(p_4115->g_3340.z, "p_4115->g_3340.z", print_hash_value);
    transparent_crc(p_4115->g_3346.x, "p_4115->g_3346.x", print_hash_value);
    transparent_crc(p_4115->g_3346.y, "p_4115->g_3346.y", print_hash_value);
    transparent_crc(p_4115->g_3352.x, "p_4115->g_3352.x", print_hash_value);
    transparent_crc(p_4115->g_3369.x, "p_4115->g_3369.x", print_hash_value);
    transparent_crc(p_4115->g_3369.y, "p_4115->g_3369.y", print_hash_value);
    transparent_crc(p_4115->g_3369.z, "p_4115->g_3369.z", print_hash_value);
    transparent_crc(p_4115->g_3395.x, "p_4115->g_3395.x", print_hash_value);
    transparent_crc(p_4115->g_3395.y, "p_4115->g_3395.y", print_hash_value);
    transparent_crc(p_4115->g_3395.z, "p_4115->g_3395.z", print_hash_value);
    transparent_crc(p_4115->g_3395.w, "p_4115->g_3395.w", print_hash_value);
    transparent_crc(p_4115->g_3401, "p_4115->g_3401", print_hash_value);
    transparent_crc(p_4115->g_3455.x, "p_4115->g_3455.x", print_hash_value);
    transparent_crc(p_4115->g_3476.x, "p_4115->g_3476.x", print_hash_value);
    transparent_crc(p_4115->g_3566.x, "p_4115->g_3566.x", print_hash_value);
    transparent_crc(p_4115->g_3566.y, "p_4115->g_3566.y", print_hash_value);
    transparent_crc(p_4115->g_3566.z, "p_4115->g_3566.z", print_hash_value);
    transparent_crc(p_4115->g_3567.x, "p_4115->g_3567.x", print_hash_value);
    transparent_crc(p_4115->g_3567.y, "p_4115->g_3567.y", print_hash_value);
    transparent_crc(p_4115->g_3594, "p_4115->g_3594", print_hash_value);
    transparent_crc(p_4115->g_3611.x, "p_4115->g_3611.x", print_hash_value);
    transparent_crc(p_4115->g_3665.x, "p_4115->g_3665.x", print_hash_value);
    transparent_crc(p_4115->g_3665.y, "p_4115->g_3665.y", print_hash_value);
    transparent_crc(p_4115->g_3665.z, "p_4115->g_3665.z", print_hash_value);
    transparent_crc(p_4115->g_3665.w, "p_4115->g_3665.w", print_hash_value);
    transparent_crc(p_4115->g_3669.x, "p_4115->g_3669.x", print_hash_value);
    transparent_crc(p_4115->g_3669.y, "p_4115->g_3669.y", print_hash_value);
    transparent_crc(p_4115->g_3676.x, "p_4115->g_3676.x", print_hash_value);
    transparent_crc(p_4115->g_3685.x, "p_4115->g_3685.x", print_hash_value);
    transparent_crc(p_4115->g_3685.y, "p_4115->g_3685.y", print_hash_value);
    transparent_crc(p_4115->g_3711.x, "p_4115->g_3711.x", print_hash_value);
    transparent_crc(p_4115->g_3711.y, "p_4115->g_3711.y", print_hash_value);
    transparent_crc(p_4115->g_3711.z, "p_4115->g_3711.z", print_hash_value);
    transparent_crc(p_4115->g_3728.x, "p_4115->g_3728.x", print_hash_value);
    transparent_crc(p_4115->g_3728.y, "p_4115->g_3728.y", print_hash_value);
    transparent_crc(p_4115->g_3728.z, "p_4115->g_3728.z", print_hash_value);
    transparent_crc(p_4115->g_3728.w, "p_4115->g_3728.w", print_hash_value);
    transparent_crc(p_4115->g_3807.x, "p_4115->g_3807.x", print_hash_value);
    transparent_crc(p_4115->g_3807.y, "p_4115->g_3807.y", print_hash_value);
    transparent_crc(p_4115->g_3807.z, "p_4115->g_3807.z", print_hash_value);
    transparent_crc(p_4115->g_3807.w, "p_4115->g_3807.w", print_hash_value);
    transparent_crc(p_4115->g_3828.x, "p_4115->g_3828.x", print_hash_value);
    transparent_crc(p_4115->g_3828.y, "p_4115->g_3828.y", print_hash_value);
    transparent_crc(p_4115->g_3828.z, "p_4115->g_3828.z", print_hash_value);
    transparent_crc(p_4115->g_3838.x, "p_4115->g_3838.x", print_hash_value);
    transparent_crc(p_4115->g_3851.x, "p_4115->g_3851.x", print_hash_value);
    transparent_crc(p_4115->g_3859.x, "p_4115->g_3859.x", print_hash_value);
    transparent_crc(p_4115->g_3859.y, "p_4115->g_3859.y", print_hash_value);
    transparent_crc(p_4115->g_3859.z, "p_4115->g_3859.z", print_hash_value);
    transparent_crc(p_4115->g_3868.x, "p_4115->g_3868.x", print_hash_value);
    transparent_crc(p_4115->g_3868.y, "p_4115->g_3868.y", print_hash_value);
    transparent_crc(p_4115->g_3868.z, "p_4115->g_3868.z", print_hash_value);
    transparent_crc(p_4115->g_3875.x, "p_4115->g_3875.x", print_hash_value);
    transparent_crc(p_4115->g_3953, "p_4115->g_3953", print_hash_value);
    transparent_crc(p_4115->g_3980, "p_4115->g_3980", print_hash_value);
    transparent_crc(p_4115->g_3995, "p_4115->g_3995", print_hash_value);
    transparent_crc(p_4115->g_3996.x, "p_4115->g_3996.x", print_hash_value);
    transparent_crc(p_4115->g_3996.y, "p_4115->g_3996.y", print_hash_value);
    transparent_crc(p_4115->g_3996.z, "p_4115->g_3996.z", print_hash_value);
    transparent_crc(p_4115->g_3996.w, "p_4115->g_3996.w", print_hash_value);
    transparent_crc(p_4115->g_4048.x, "p_4115->g_4048.x", print_hash_value);
    transparent_crc(p_4115->g_4055.x, "p_4115->g_4055.x", print_hash_value);
    transparent_crc(p_4115->g_4055.y, "p_4115->g_4055.y", print_hash_value);
    transparent_crc(p_4115->g_4055.z, "p_4115->g_4055.z", print_hash_value);
    transparent_crc(p_4115->g_4055.w, "p_4115->g_4055.w", print_hash_value);
    transparent_crc(p_4115->g_4074.x, "p_4115->g_4074.x", print_hash_value);
    transparent_crc(p_4115->g_4114.x, "p_4115->g_4114.x", print_hash_value);
    transparent_crc(p_4115->g_4114.y, "p_4115->g_4114.y", print_hash_value);
    transparent_crc(p_4115->g_4114.z, "p_4115->g_4114.z", print_hash_value);
    transparent_crc(p_4115->g_4114.w, "p_4115->g_4114.w", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

