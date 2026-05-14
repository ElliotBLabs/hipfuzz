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

#include "safe_math_macros.h"

#define uint8_t unsigned char
#define int8_t char
// ------------------------------------------------------------------
// Macros & Metadata
// ------------------------------------------------------------------
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, Y, Z)
// Seed: 410937280

/* --- Struct/Union Declarations --- */
union U0 {
   uint16_t  f0;
   uint64_t  f1;
   uint8_t  f2;
   uint32_t  f3;
   uint8_t  f4;
};

union U1 {
   uint16_t  f0;
   int16_t  f1;
};

union U2 {
   int32_t  f0;
   uint32_t  f1;
   int32_t  f2;
   int16_t  f3;
   unsigned f4 : 29;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint64_t hip_const_1[9][3][5];
__constant__ uint64_t hip_const_2;
__constant__ int64_t hip_const_3;
__constant__ int64_t hip_const_4;
__constant__ int16_t hip_const_5[4][8][3];
__constant__ uint64_t hip_const_6;
__constant__ int8_t hip_const_7;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint64_t host_hip_const_1[9][3][5] = {{{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}, {{0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}, {0x3933B839BF5BF816LL, 0UL, 0x11F3813BF58AAE07LL, 18446744073709551615UL, 18446744073709551606UL}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint64_t host_hip_const_2 = 0x48C84060A3B7DC4BLL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        int64_t host_hip_const_3 = (-7L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int64_t host_hip_const_4 = 0xB19F88DD0BB265D6LL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        int16_t host_hip_const_5[4][8][3] = {{{0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}}, {{0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}}, {{0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}}, {{0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}, {0x30B5L, 1L, 0x15CDL}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint64_t host_hip_const_6 = 6UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        int8_t host_hip_const_7 = 4L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
}

struct S3 {
    int32_t g_13;
    int32_t g_31;
    int32_t g_37;
    int32_t g_44[2][4];
    int1 g_46;
    union U2 g_56[8];
    int32_t g_59;
    int32_t g_62;
    union U1 g_71;
    int32_t *g_77;
    uint1 g_80;
    int1 g_132;
    uint32_t g_136[6];
    uint32_t g_147;
    long4 g_160;
    short2 g_163;
    int1 g_179;
    union U0 g_244;
    uchar1 g_285;
    char4 g_306;
    int1 g_340;
    uchar4 g_357;
    uchar3 g_362;
    long2 g_391;
    int16_t *g_418[2][9];
    ushort4 g_441;
    int32_t **g_471[3];
    short1 g_475;
    uchar2 g_481;
    char2 g_498;
    char2 g_499;
    long3 g_526;
    long3 g_527;
    uint2 g_549;
    long2 g_552;
    int16_t g_566[6];
    long1 g_633;
    uchar2 g_649;
    int2 g_658;
    long2 g_702;
    long3 g_705;
    int16_t g_718;
    ulong2 g_719;
    long2 g_721;
    ushort3 g_722;
    int16_t **g_724;
    int32_t ***g_752;
    int32_t **g_820;
    int32_t ***g_819;
    int2 g_826;
    union U0 *g_878;
    union U0 **g_877;
    char2 g_884;
    long4 g_892;
    int3 g_900;
    union U2 *g_941;
    union U2 **g_940;
    ulong2 g_944;
    long1 g_947;
    short1 g_953;
    int8_t g_970;
    long3 g_992;
    union U1 *g_1014;
    int16_t g_1031;
    int2 g_1043;
    ulong1 g_1111;
    ulong1 g_1136;
    ulong4 g_1167;
    int32_t g_1178[8][7];
    char3 g_1187;
    long4 g_1224;
    ulong3 g_1291;
    union U0 g_1308[9][5][5];
    union U1 **g_1327;
    char2 g_1395;
    int8_t g_1508;
    uint32_t *g_1543[10];
    uint32_t **g_1542[1];
    uint32_t g_1555[3][1];
    short4 g_1558;
    uint1 g_1611;
    uint4 g_1626;
    long1 g_1628;
    int2 g_1662;
    int8_t g_1669;
    ulong3 g_1671;
    int64_t *g_1678[8][10];
    short4 g_1692;
    uint32_t ****g_1694;
    uchar1 g_1710;
    long2 g_1727;
    uint3 g_1731;
    int16_t ***g_1786[6];
    int16_t ****g_1785;
    long3 g_1845;
    uint4 g_1868;
    int16_t g_1884;
    uint2 g_1910;
    uint4 g_1912;
    uint3 g_1913;
    uint3 g_1933;
    long1 g_1948;
    char4 g_1953;
    uint32_t ***g_2025;
    uint32_t ****g_2024;
    uint8_t *g_2037[2];
    uint32_t g_2039;
    int16_t g_2078;
    int32_t *g_2089;
    short1 g_2103;
    ulong2 g_2109;
    int4 g_2113;
    short2 g_2125;
    long2 g_2130;
    short3 g_2163;
    uint3 g_2180;
    int4 g_2269;
    int4 g_2290;
    long1 g_2305;
    uint2 g_2325;
    uint1 g_2326;
    uint64_t g_2349;
    short3 g_2375;
    int3 g_2411;
    int3 g_2426;
    int1 g_2446;
    long4 g_2451;
    ulong1 g_2464;
    short4 g_2494;
    ushort4 g_2505;
    uint64_t *g_2510[7][6][6];
    uint64_t **g_2509;
    short4 g_2511;
    int2 g_2518;
    ulong1 g_2533;
    char4 g_2599;
    int3 g_2604;
    long1 g_2628;
    uint2 g_2645;
    uint2 g_2646;
    ulong1 g_2651;
    int3 g_2677;
    int32_t g_2711;
    char2 g_2760;
    char1 g_2833;
    int2 g_2859;
    long4 g_2863;
    uint8_t *g_2900[9];
    char3 g_2905;
    short2 g_2930;
    ulong4 g_2945;
    union U0 ***g_2977[9];
    union U0 ****g_2976;
    int16_t g_2994;
    int64_t g_3007[2];
    ushort1 g_3037;
    int3 g_3054;
    uint1 g_3056;
    long2 g_3130;
    int64_t g_3163;
    short2 g_3171;
    short2 g_3177;
    uchar3 g_3217;
    uchar1 g_3223;
    int3 g_3229;
    ulong3 g_3270;
    short3 g_3271;
    ulong4 g_3307;
    uint2 g_3348;
    int1 g_3351;
    int3 g_3360;
    uint1 g_3366;
    int64_t g_3371;
    int64_t g_3392;
    char3 g_3398;
    uint16_t *g_3401[3];
    uint16_t **g_3400[1][5];
    int1 g_3421;
    ulong1 g_3423;
    long1 g_3447;
    int64_t **g_3488[10];
    int64_t ***g_3487;
    ushort4 g_3492;
    short2 g_3504;
    uint64_t ***g_3511[2][6][3];
    uint64_t ****g_3510;
    ushort3 g_3516;
    int64_t g_3553;
    int64_t g_3563;
    int8_t g_3568;
    int16_t g_3592;
    ushort3 g_3639;
    uint32_t g_3645;
    union U1 g_3648[8];
    char3 g_3662;
    int3 g_3667;
    int3 g_3709;
    int2 g_3712;
    ushort4 g_3715;
    ushort3 g_3723;
    int8_t *g_3729;
    int8_t **g_3728[2];
    uint16_t g_3731;
    uchar4 g_3732;
    int16_t *****g_3774[6][3];
    int2 g_3781;
    short2 g_3795;
    ulong4 g_3824;
    short3 g_3827;
    ushort4 g_3859;
    uchar4 g_3880;
    uchar2 g_3883;
    int2 g_3889;
    short2 g_3920;
    uchar4 g_3935;
    ulong2 g_3977;
    int64_t g_3978;
    int32_t ****g_4024;
    char2 g_4081;
    ushort3 g_4091;
    uchar1 g_4118;
    uchar3 g_4119;
    short4 g_4120;
    short3 g_4132;
    int3 g_4155;
    int32_t g_4157;
    int32_t g_4163;
    ushort2 g_4186;
    int3 g_4187;
    int8_t ***g_4217;
    ushort4 g_4227;
    uchar3 g_4229;
    uint8_t g_4235;
    int32_t g_4236;
    int64_t ****g_4251;
    int64_t *****g_4250;
    uint8_t g_4256;
    int4 g_4288;
    int64_t g_4304[2][9];
    int2 g_4305;
    int3 g_4308;
    uint1 g_4313;
    uint8_t g_4344;
    ulong1 g_4346;
    uint32_t g_4353[2];
};


/* --- FORWARD DECLARATIONS --- */
__device__ int16_t  func_1(struct S3 * p_4372);
__device__ uint64_t  func_5(uint32_t  p_6, int32_t  p_7, int32_t  p_8, struct S3 * p_4372);
__device__ int8_t  func_16(union U1  p_17, struct S3 * p_4372);
__device__ union U1  func_18(int32_t * p_19, uint32_t  p_20, int8_t  p_21, union U1  p_22, struct S3 * p_4372);
__device__ int32_t * func_23(uint32_t  p_24, uint64_t  p_25, int32_t  p_26, int32_t * p_27, struct S3 * p_4372);
__device__ uint8_t  func_28(int32_t  p_29, struct S3 * p_4372);
__device__ int32_t  func_54(union U2  p_55, struct S3 * p_4372);
__device__ int32_t  func_65(int32_t * p_66, struct S3 * p_4372);
__device__ int32_t * func_67(uint16_t  p_68, union U1  p_69, struct S3 * p_4372);
__device__ int16_t  func_85(uint32_t  p_86, union U1  p_87, uint8_t  p_88, uint32_t  p_89, int32_t * p_90, struct S3 * p_4372);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_5 p_4372->g_13 hip_const_1 p_4372->g_37 p_4372->g_31 p_4372->g_44 p_4372->g_46 p_4372->g_56 p_4372->g_136 hip_const_6 p_4372->g_147 p_4372->g_391 p_4372->g_77 p_4372->g_71 p_4372->g_62 p_4372->g_566 p_4372->g_244 p_4372->g_820 p_4372->g_441 p_4372->g_877 p_4372->g_499 p_4372->g_59 p_4372->g_179 p_4372->g_722 p_4372->g_244.f3 p_4372->g_940 p_4372->g_944 p_4372->g_947 p_4372->g_953 p_4372->g_160 p_4372->g_878 p_4372->g_970 p_4372->g_992 p_4372->g_285 p_4372->g_941 p_4372->g_163 p_4372->g_819 p_4372->g_340 p_4372->g_1043 p_4372->g_549 p_4372->g_362 p_4372->g_721 p_4372->g_526 p_4372->g_132 p_4372->g_357 p_4372->g_658 p_4372->g_705 p_4372->g_892 p_4372->g_1167 p_4372->g_527 p_4372->g_306 p_4372->g_1291 p_4372->g_724 p_4372->g_418 p_4372->g_1031 p_4372->g_1111 p_4372->g_633 p_4372->g_80 p_4372->g_1395 p_4372->g_1555 p_4372->g_1187 p_4372->g_475 p_4372->g_1136 p_4372->g_826 p_4372->g_719 p_4372->g_884 p_4372->g_481 p_4372->g_244.f2 p_4372->g_1785 p_4372->g_1224 p_4372->g_1662 p_4372->g_2024 p_4372->g_2037 p_4372->g_2039 p_4372->g_1953 p_4372->g_2089 p_4372->g_71.f0 p_4372->g_244.f0 p_4372->g_1558 p_4372->g_2509 p_4372->g_2510 p_4372->g_2677 p_4372->g_2349 p_4372->g_2025 p_4372->g_1542 p_4372->g_2900 p_4372->g_1727 p_4372->g_1671 p_4372->g_2859 p_4372->g_244.f4 p_4372->g_2976 p_4372->g_2269 p_4372->g_2994 p_4372->g_2977 p_4372->g_3421 p_4372->g_3423 p_4372->g_2905 p_4372->g_3447 p_4372->g_3371 p_4372->g_3487 p_4372->g_3492 p_4372->g_3504 p_4372->g_3510 p_4372->g_3516 p_4372->g_3592 p_4372->g_2375 p_4372->g_2078 p_4372->g_752 p_4372->g_3488 p_4372->g_3645 p_4372->g_3648 p_4372->g_3662 p_4372->g_3667 p_4372->g_718 p_4372->g_2505 p_4372->g_3511 p_4372->g_1327 p_4372->g_1178 p_4372->g_4163 p_4372->g_4024 p_4372->g_4235 p_4372->g_4236
 * writes: p_4372->g_13 p_4372->g_31 p_4372->g_37 p_4372->g_44 p_4372->g_46 p_4372->g_59 p_4372->g_62 p_4372->g_71.f1 p_4372->g_147 p_4372->g_77 p_4372->g_418 p_4372->g_56.f2 p_4372->g_244.f0 p_4372->g_752 p_4372->g_244.f3 p_4372->g_136 p_4372->g_441 p_4372->g_722 p_4372->g_940 p_4372->g_724 p_4372->g_941 p_4372->g_285 p_4372->g_1014 p_4372->g_132 p_4372->g_244.f4 p_4372->g_1031 p_4372->g_244.f2 p_4372->g_970 p_4372->g_718 p_4372->g_1308.f2 p_4372->g_56 p_4372->g_658 p_4372->g_340 p_4372->g_1308.f0 p_4372->g_878 p_4372->g_1678 p_4372->g_1785 p_4372->g_71.f0 p_4372->g_1662 p_4372->g_2037 p_4372->g_1111 p_4372->g_1308.f1 p_4372->g_2349 p_4372->g_2509 p_4372->g_2510 p_4372->g_1786 p_4372->g_2900 p_4372->g_1508 p_4372->g_306 p_4372->g_3007 p_4372->g_2976 p_4372->g_3371 p_4372->g_3487 p_4372->g_819 p_4372->g_2078 p_4372->g_471 p_4372->g_3563 p_4372->g_3645 p_4372->g_244.f1 p_4372->g_3774 p_4372->g_1884 p_4372->g_3731 p_4372->g_3163 p_4372->g_3978 p_4372->g_244 p_4372->g_4024 p_4372->g_3488 p_4372->g_877 p_4372->g_1178 p_4372->g_4217 p_4372->g_3592 p_4372->g_2977
 */
__device__ int16_t  func_1(struct S3 * p_4372)
{ /* block id: 0 */
    int2 l_2 = make_int2(0x5EFB48CAL, 0x188558B0L);
    int32_t l_9[2][2];
    uint4 l_3650 = make_uint4(4294967294UL, 4294967295UL, 4294967294UL, 4294967295UL);
    char4 l_3655 = make_char4((-2L), 0L, (-2L), 0L);
    char2 l_3663 = make_char2(0x85L, (-10L));
    char3 l_3666 = make_char3(0x48L, 0xF2L, 0x48L);
    int32_t l_3668 = 1L;
    union U0 ***l_3669 = &p_4372->g_877;
    int32_t l_3673 = 0x2667AEEDL;
    uint16_t l_3674 = 65535UL;
    uint64_t *l_3720 = nullptr;
    uint16_t l_3753 = 0xE618L;
    int64_t l_3867 = (-1L);
    uint32_t l_3898 = 1UL;
    union U1 **l_3915 = &p_4372->g_1014;
    int32_t l_3949 = 0xBA1E7EBEL;
    uint64_t l_3952[8] = {7UL, 18446744073709551608UL, 7UL, 18446744073709551608UL, 7UL, 18446744073709551608UL, 7UL, 18446744073709551608UL};
    int64_t l_3954 = 0x8DDAEBC930061DACLL;
    int8_t **l_3957 = &p_4372->g_3729;
    int32_t l_3999 = 0x5ECE1DA0L;
    int8_t l_4001 = 0xE9L;
    int16_t ****l_4014 = &p_4372->g_1786[5];
    uint32_t l_4015 = 0x28CDCA43L;
    long4 l_4021 = make_long4(0x9D9FB168C63D8AC2LL, (-1L), 0x9D9FB168C63D8AC2LL, (-1L));
    uint32_t l_4027 = 0x6E8437BDL;
    int32_t ****l_4043 = &p_4372->g_819;
    int8_t l_4061 = 0x78L;
    uint16_t l_4099 = 0x2464L;
    uint64_t l_4158 = 0xF1491A5D89F31E4DLL;
    int8_t l_4178 = 0xE1L;
    uint8_t l_4188 = 1UL;
    long4 l_4253 = make_long4(6L, 0xDC4CC46F96F47104LL, 6L, 0xDC4CC46F96F47104LL);
    int8_t l_4260[7][3] = {{0L, 0x10L, (-5L)}, {0L, 0x10L, (-5L)}, {0L, 0x10L, (-5L)}, {0L, 0x10L, (-5L)}, {0L, 0x10L, (-5L)}, {0L, 0x10L, (-5L)}, {0L, 0x10L, (-5L)}};
    int64_t l_4267 = 0xB2306208BB2BCE2FLL;
    int32_t l_4283[7] = {0x3CC1FD95L, 0x3CC1FD95L, 0xF8AEC8FEL, 0x3CC1FD95L, 0x3CC1FD95L, 0xF8AEC8FEL, 0x3CC1FD95L};
    uint64_t l_4290 = 18446744073709551615UL;
    int64_t l_4324 = 0xEF365C1CB2331668LL;
    int32_t *l_4362 = &l_3668;
    int32_t *l_4363 = &l_4283[4];
    int32_t *l_4364 = &p_4372->g_4163;
    int32_t *l_4365 = &p_4372->g_56[6].f0;
    int32_t *l_4366 = &p_4372->g_13;
    int32_t *l_4367 = &p_4372->g_2711;
    int32_t *l_4368[10][7][3] = {{{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}, {{nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}, {nullptr, nullptr, &p_4372->g_2711}}};
    uint32_t l_4369 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_9[i][j] = 2L;
    }
    if (((make_int2(l_2.x, l_2.x) ^ ((make_int2(((*p_4372->g_2089) = (safe_mod_func_uint64_t_u_u(make_ulong4(0x9BDEFAB77C19C50ELL, 0xCA138DBEC8B24CECLL, (func_5(l_2.y, (l_9[0][1] = 0x3780627DL), hip_const_5[2][6][1], p_4372) & (((make_uint1(l_3650.x).x < ((-1L) | (safe_mul_func_int16_t_s_s(((((safe_add_func_int8_t_s_s(((make_char1(l_3655.w) ^ ((safe_mod(((safe_sub(((safe_add(make_char1(p_4372->g_3662.z), make_char1(0xB0L)))), make_char1(0x38L)))), ((make_char1(l_3663.x) ^ ((safe_sub(make_char1((-1L)), make_char1(l_3666.y))))))))))).x, l_3655.x)) & 2UL) <= ((l_3650.w ^ (((make_int1(p_4372->g_3667.z) ^ make_int1((l_3668 = (l_3666.x & 0L))))).x == 0x3BEB5692L)) > p_4372->g_1167.w)) >= 0xB5FFADA9A81F9563LL), l_2.x)))) , l_3669) == nullptr)), 18446744073709551615UL).z, 1L))), 1L) & make_int2(0L, 0L))))).y)
    { /* block id: 1419 */
        return l_3666.y;
    }
    else
    { /* block id: 1421 */
        int32_t *l_3670 = &p_4372->g_44[1][2];
        int32_t *l_3671 = nullptr;
        int32_t *l_3672[7] = {&p_4372->g_1178[0][0], &p_4372->g_1178[0][0], &p_4372->g_13, &p_4372->g_1178[0][0], &p_4372->g_1178[0][0], &p_4372->g_13, &p_4372->g_1178[0][0]};
        int16_t l_3677 = (-4L);
        uint64_t l_3678[5][5][8] = {{{6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}}, {{6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}}, {{6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}}, {{6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}}, {{6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}, {6UL, 6UL, 5UL, 6UL, 6UL, 0x7BF920FC7BBDCE94LL, 6UL, 6UL}}};
        int i, j, k;
        l_3674++;
        l_3678[0][2][5]--;
    }
    for (p_4372->g_718 = 0; (p_4372->g_718 <= 29); p_4372->g_718 = safe_add_func_uint8_t_u_u(p_4372->g_718, 6))
    { /* block id: 1427 */
        int16_t l_3718 = 9L;
        int32_t ***l_3800 = &p_4372->g_820;
        int32_t l_3814 = (-3L);
        short1 l_3841 = make_short1(0xFF10L);
        long4 l_3848 = make_long4((-1L), 0xCC692BD4F19A027FLL, (-1L), 0xCC692BD4F19A027FLL);
        int32_t l_3891[8][9] = {{0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}, {0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}, {0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}, {0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}, {0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}, {0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}, {0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}, {0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L, 0x323517D9L, 9L, 0x323517D9L, 0x754459D4L}};
        ushort2 l_3894 = make_ushort2(65529UL, 0x688AL);
        uint16_t l_3899[9][3] = {{0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}, {0x579FL, 0x922CL, 0x4F27L}};
        uint32_t l_3902 = 18446744073709551615UL;
        int32_t l_3923 = 0xD34FCB96L;
        int32_t l_3953[7] = {2L, 2L, 0xF3D53254L, 2L, 2L, 0xF3D53254L, 2L};
        union U0 ****l_3959 = &p_4372->g_2977[4];
        ushort4 l_3962 = make_ushort4(0UL, 0x884AL, 0UL, 0x884AL);
        char3 l_4058 = make_char3(1L, 0L, 1L);
        ushort2 l_4063 = make_ushort2(0xAEA9L, 0UL);
        uint64_t **l_4123[4][3][9] = {{{&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}}, {{&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}}, {{&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}}, {{&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}, {&l_3720, &l_3720, nullptr, &p_4372->g_2510[5][0][1], &p_4372->g_2510[2][4][5], &p_4372->g_2510[5][0][1], nullptr, &l_3720, &l_3720}}};
        uint4 l_4125 = make_uint4(0x6B3EA4C1L, 4294967295UL, 0x6B3EA4C1L, 4294967295UL);
        int16_t l_4130 = 0x6FAFL;
        int64_t ***l_4145 = &p_4372->g_3488[5];
        int64_t ****l_4162 = nullptr;
        int64_t *****l_4161 = &l_4162;
        int32_t l_4173 = 0x096E3277L;
        uint32_t l_4174 = 0xB1AF2C42L;
        long4 l_4182 = make_long4(0xA38C3F32862B35DBLL, (-5L), 0xA38C3F32862B35DBLL, (-5L));
        union U1 l_4185 = {0x4E48L};
        int32_t **l_4190 = nullptr;
        int32_t ***l_4207 = &p_4372->g_471[0];
        uint16_t l_4210 = 0x0C18L;
        union U1 l_4276 = {9UL};
        uint8_t l_4282[7][3] = {{0x68L, 255UL, 5UL}, {0x68L, 255UL, 5UL}, {0x68L, 255UL, 5UL}, {0x68L, 255UL, 5UL}, {0x68L, 255UL, 5UL}, {0x68L, 255UL, 5UL}, {0x68L, 255UL, 5UL}};
        ulong2 l_4309 = make_ulong2(0x7504D7575A781206LL, 0xB32B0440A25B7EF6LL);
        int8_t *l_4329 = nullptr;
        uint8_t l_4340 = 254UL;
        int i, j, k;
        for (p_4372->g_71.f1 = 0; (p_4372->g_71.f1 > 28); p_4372->g_71.f1 = safe_add_func_uint16_t_u_u(p_4372->g_71.f1, 3))
        { /* block id: 1430 */
            uint8_t l_3698 = 0x64L;
            int64_t l_3751[3];
            int16_t *****l_3773 = &p_4372->g_1785;
            uint64_t *****l_3792 = &p_4372->g_3510;
            int32_t ***l_3804 = &p_4372->g_820;
            int64_t l_3847 = 0xF8CF039508CD3113LL;
            union U0 l_3895 = {65533UL};
            int64_t l_3903 = 0x741D450EBDDA9AF1LL;
            int32_t l_3905 = 1L;
            union U1 *l_3906 = &p_4372->g_71;
            int8_t *l_3930[4][9][7] = {{{nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}}, {{nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}}, {{nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}}, {{nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}, {nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, nullptr, nullptr}}};
            uint8_t *l_4010 = &p_4372->g_244.f2;
            union U0 **l_4026 = &p_4372->g_878;
            uint3 l_4036 = make_uint3(4294967295UL, 4294967292UL, 4294967295UL);
            long2 l_4044 = make_long2((-7L), 0x05D5545EA9EC4C95LL);
            uint8_t l_4056 = 0x07L;
            ushort3 l_4064 = make_ushort3(0x5631L, 1UL, 0x5631L);
            int32_t l_4083 = (-9L);
            int32_t l_4100 = 0x3AA148A1L;
            uint2 l_4141 = make_uint2(4294967295UL, 0x040A14D4L);
            int32_t *l_4156[6] = {nullptr, nullptr, &p_4372->g_44[1][2], nullptr, nullptr, &p_4372->g_44[1][2]};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_3751[i] = 1L;
            for (p_4372->g_31 = (-17); (p_4372->g_31 == 10); p_4372->g_31 = safe_add_func_int8_t_s_s(p_4372->g_31, 5))
            { /* block id: 1433 */
                int16_t l_3689 = 0xF4DAL;
                int32_t l_3694 = 0L;
                int32_t l_3695 = 0xF6197B71L;
                int32_t l_3696 = (-3L);
                int32_t l_3701 = (-5L);
                int3 l_3702 = make_int3(0x1CB9C359L, 0xA7D360CBL, 0x1CB9C359L);
                uint64_t **l_3719[5] = {nullptr, nullptr, nullptr, nullptr, nullptr};
                uint16_t *l_3730 = &p_4372->g_3648[6].f0;
                int i;
                for (p_4372->g_244.f1 = (-12); (p_4372->g_244.f1 < 18); ++p_4372->g_244.f1)
                { /* block id: 1436 */
                    (*p_4372->g_820) = &p_4372->g_59;
                    if (l_3689)
                        continue;
                    for (p_4372->g_37 = 0; (p_4372->g_37 <= (-1)); p_4372->g_37 = safe_sub_func_int8_t_s_s(p_4372->g_37, 1))
                    { /* block id: 1441 */
                        int32_t *l_3692 = nullptr;
                        int32_t *l_3693 = nullptr;
                        int32_t *l_3697[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_3697[i] = nullptr;
                        l_3698--;
                    }
                }
                for (l_3674 = 0; (l_3674 <= 0); l_3674 += 1)
                { /* block id: 1447 */
                    l_3701 ^= (*p_4372->g_2089);
                }
                l_2.x = ((make_int3(l_3702.y, l_3702.y, l_3702.y) ^ ((safe_lshift(make_int3(((safe_sub_func_int32_t_s_s(((l_3694 ^ 3L) & make_ulong3(0x298363495F7AF6C1LL, 18446744073709551607UL, (safe_mul_func_int32_t_s_s(((make_int3(p_4372->g_3709.z, p_4372->g_3709.z, p_4372->g_3709.z) ^ ((safe_lshift(make_int3(p_4372->g_3712.y, p_4372->g_3712.y, p_4372->g_3712.y), make_int3(32, 32, 32)))))).y, (((safe_mul(make_ushort1(p_4372->g_3715.y), make_ushort1(0UL)))).x & (safe_sub_func_int8_t_s_s((p_4372->g_1508 = (l_3718 != (l_9[0][1] , ((*p_4372->g_2509) == ((****p_4372->g_2976) , (l_3720 = nullptr)))))), (make_ushort3((p_4372->g_3731 = ((*l_3730) |= ((safe_div(make_ushort3(((((make_ushort1(p_4372->g_3723.z) ^ ((((safe_div(((safe_lshift(make_ushort1((p_4372->g_3728[1] == ((0xD691C87F479BC4A5LL < 18446744073709551615UL) , &p_4372->g_3729))), make_ushort1(16)))), make_ushort1(0x88DCL)))) ^ make_ushort1(0x1566L))))) ^ make_ushort1(0UL))).x, 65530UL, 0xD9A4L), make_ushort3(0x44EEL, 0x44EEL, 0x44EEL)))).x)), 1UL, 0x0686L).y , 7UL))))))).z), l_3655.y)) ^ l_3698), (-3L), 0x216416DDL), make_int3(0x9F363207L, 0x9F363207L, 0x9F363207L)))))).z;
            }
            if ((250UL & make_uchar4(p_4372->g_3732.x, p_4372->g_3732.x, p_4372->g_3732.x, p_4372->g_3732.x).x))
            { /* block id: 1456 */
                int64_t l_3745 = (-1L);
                int8_t *l_3748 = nullptr;
                int8_t *l_3749 = &p_4372->g_3568;
                int32_t l_3750 = 0x940DBA7FL;
                int64_t l_3752 = 0xA0B52E191613223ALL;
                int32_t ***l_3801 = &p_4372->g_820;
                short3 l_3838 = make_short3(0x2987L, 0x3D12L, 0x2987L);
                uint32_t l_3868 = 18446744073709551606UL;
                int16_t l_3870[9];
                int i;
                for (i = 0; i < 9; i++)
                    l_3870[i] = 0xEE0DL;
                if (((l_2.x < (((((safe_add(((make_short4(((safe_add_func_int64_t_s_s((safe_mul_func_uint64_t_u_u(((safe_div_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u((make_char3((((*l_3749) = ((safe_div_func_int32_t_s_s(0xA7D4E1A6L, (l_3698 && ((l_3745 = l_3663.y) <= (safe_div_func_uint8_t_u_u(((&p_4372->g_1014 != &p_4372->g_1014) != l_3698), l_3663.x)))))) ^ l_3698)) && l_3650.x), l_3745, l_3674).y , 4294967293UL), l_3750)) | l_3751[2]), l_3673)) | 0L), l_3752)), l_3750)) && l_3750), l_3753, l_3745, l_3718) | make_short4((-7L), (-7L), (-7L), (-7L)))), make_short4(0xA750L, 0xA750L, 0xA750L, 0xA750L)))) ^ make_short4(0L, 0L, 0L, 0L))).y || l_3698)) && l_3650.x))
                { /* block id: 1459 */
                    int32_t *l_3754 = &p_4372->g_44[1][2];
                    int32_t l_3760 = 1L;
                    int2 l_3767 = make_int2(1L, 5L);
                    uint64_t l_3770 = 0xD4B38F4CC29167D5LL;
                    int32_t ****l_3802 = nullptr;
                    int32_t ****l_3803[6][5][2] = {{{&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}}, {{&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}}, {{&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}}, {{&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}}, {{&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}}, {{&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}, {&l_3801, &p_4372->g_819}}};
                    uint32_t *l_3807 = nullptr;
                    uint32_t *l_3808 = nullptr;
                    uint32_t *l_3809 = nullptr;
                    uint32_t *l_3810 = &p_4372->g_136[4];
                    int64_t *l_3811 = nullptr;
                    int64_t *l_3812 = nullptr;
                    int64_t *l_3813 = nullptr;
                    int i, j, k;
                    (*p_4372->g_820) = l_3754;
                    if (l_3655.z)
                    { /* block id: 1461 */
                        int32_t *l_3755 = nullptr;
                        int32_t *l_3756 = &p_4372->g_1178[0][5];
                        int32_t *l_3757 = nullptr;
                        int32_t *l_3758 = &p_4372->g_13;
                        int32_t *l_3759 = nullptr;
                        int32_t *l_3761 = &p_4372->g_44[1][1];
                        int32_t *l_3762 = nullptr;
                        int32_t *l_3763 = nullptr;
                        int32_t *l_3764 = nullptr;
                        int32_t *l_3765 = nullptr;
                        int32_t *l_3766 = &p_4372->g_56[6].f0;
                        int32_t *l_3768 = &p_4372->g_56[6].f0;
                        int32_t *l_3769[4] = {nullptr, nullptr, nullptr, nullptr};
                        int i;
                        l_3770++;
                        if ((*p_4372->g_77))
                            break;
                    }
                    else
                    { /* block id: 1464 */
                        p_4372->g_3774[0][2] = l_3773;
                    }
                    l_2.x = ((safe_mod_func_uint8_t_u_u(((((((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int32_t_s_u(make_int1(p_4372->g_3781.y).x, ((safe_div_func_uint32_t_u_u(((safe_add_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s((((((***l_3801) = (p_4372->g_2505.w , (safe_add_func_int16_t_s_s((safe_mul_func_uint64_t_u_u(((l_3792 != &p_4372->g_3510) , 0x079AC501F64214D0LL), ((safe_mul_func_int8_t_s_s(l_3668, (make_short3(p_4372->g_3795.x, p_4372->g_3795.x, p_4372->g_3795.x).z | (!(((*l_3810) = (((safe_add_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(((l_3718 , l_3800) == (l_3804 = l_3801)), 14)), (safe_lshift_func_uint32_t_u_u(l_3751[2], 22)))) < (***l_3800)) != l_3673)) != (*l_3754)))))) || 7L))), l_3666.x)))) | 0x02C3D18147C04E82LL) | l_3673) & 18446744073709551606UL), l_3668)) && l_3753), 0x15CBL)) > l_9[1][0]), 0x7E866E5FL)) , l_3674))) | l_3750), l_3718)) , &p_4372->g_3487) != nullptr) & 0x06FCL) != l_3650.x) || 65527UL), l_9[0][0])) > l_3814);
                }
                else
                { /* block id: 1471 */
                    union U2 *l_3815 = &p_4372->g_56[6];
                    (*p_4372->g_2089) = (l_3815 != ((*p_4372->g_2089) , (*p_4372->g_940)));
                }
                for (p_4372->g_3371 = 0; (p_4372->g_3371 > 24); p_4372->g_3371 = safe_add_func_int16_t_s_s(p_4372->g_3371, 3))
                { /* block id: 1476 */
                    uint8_t l_3844[2][2][3] = {{{0x6FL, 0x7EL, 247UL}, {0x6FL, 0x7EL, 247UL}}, {{0x6FL, 0x7EL, 247UL}, {0x6FL, 0x7EL, 247UL}}};
                    int32_t l_3845 = 0x7045D8BCL;
                    uint8_t l_3846 = 249UL;
                    int i, j, k;
                    p_4372->g_37 ^= (((l_9[0][1] = (l_3673 ^= ((safe_sub(make_char3(((((safe_mod_func_uint32_t_u_u(((safe_sub_func_uint64_t_u_u(make_ulong2(p_4372->g_3824.x, p_4372->g_3824.x).y, ((l_3668 && ((safe_rshift_func_int16_t_s_s(((l_2.x = ((make_short4(p_4372->g_3827.y, p_4372->g_3827.y, p_4372->g_3827.y, p_4372->g_3827.y).w != (!(safe_sub_func_int64_t_s_s(make_long2(0x77D09EB6BDDFE50ALL, 0x50344CFDE7B09303LL).x, (safe_div_func_int32_t_s_s((make_short1(0x09F8L).x || (safe_div_func_uint8_t_u_u(l_2.x, ((safe_lshift_func_int16_t_s_s(((safe_div_func_int16_t_s_s(l_9[1][1], make_short3(l_3838.x, l_3838.x, l_3838.x).y)) && make_ulong1(1UL).x), 0)) || (l_3846 = (0x4C73L | make_ushort4(l_3814, (make_short1(l_3841.x).x | ((((safe_div_func_int8_t_s_s(((*l_3749) = (((*p_4372->g_2089) , (l_3845 = ((((0x9452014387A08BDBLL <= l_3650.y) == l_3844[1][0][2]) && l_3674) , 0xB53FB048L))) , l_3674)), 1UL)) == l_3844[0][1][1]) ^ l_3844[1][0][2]) < 0x60442D28L)), 0xDCF3L, 0xC43CL).y)))))), l_9[0][0])))))) <= 0x5F96L)) <= l_3847), 8)) || 7UL)) , l_2.x))) == l_3848.w), l_3698)) , (-1L)) < (-3L)) , l_3655.z), l_3846, l_3655.y), make_char3(0xD3L, 0xD3L, 0xD3L)))).x)) , 0xCFFBL) < l_3841.x);
                    for (p_4372->g_1884 = (-20); (p_4372->g_1884 < 18); p_4372->g_1884 = safe_add_func_uint64_t_u_u(p_4372->g_1884, 7))
                    { /* block id: 1486 */
                        uint32_t l_3862 = 18446744073709551615UL;
                        int32_t *l_3869 = &p_4372->g_44[0][2];
                        (*l_3869) = ((*p_4372->g_2089) = (safe_rshift_func_uint64_t_u_s((l_9[1][0] = (safe_add_func_int8_t_s_s(l_3844[1][0][2], ((safe_mul_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(make_ushort3(p_4372->g_3859.x, p_4372->g_3859.x, p_4372->g_3859.x).x, l_3838.x)), (l_3750 &= ((safe_mod_func_uint16_t_u_u(l_3862, (safe_div_func_uint8_t_u_u(((((l_3867 == (0xABE2L < ((*p_4372->g_3510) != nullptr))) || 0L) >= (((-1L) <= (*p_4372->g_2089)) || 0xAA84L)) , l_3868), 0x86L)))) == l_3846)))) , l_3862)))), l_3655.y)));
                        return l_3870[2];
                    }
                    (**l_3800) = &p_4372->g_2711;
                }
                if (l_3663.x)
                    break;
            }
            else
            { /* block id: 1496 */
                uchar2 l_3879 = make_uchar2(0x7BL, 0xFDL);
                uchar3 l_3886 = make_uchar3(1UL, 0UL, 1UL);
                uint4 l_3890 = make_uint4(0x80203B96L, 4294967295UL, 0x80203B96L, 4294967295UL);
                uint8_t *l_3900[5][8][6] = {{{&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}}, {{&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}}, {{&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}}, {{&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}}, {{&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}, {&l_3698, nullptr, nullptr, nullptr, &l_3698, nullptr}}};
                int32_t l_3901 = 0xAB7A69CDL;
                int16_t *l_3904 = &p_4372->g_1031;
                uint64_t l_3970 = 0x4848E7EB0FD35B92LL;
                union U2 **l_3995 = &p_4372->g_941;
                int32_t l_3998 = 0x26E36C92L;
                union U1 l_4013 = {0x4AAAL};
                int16_t l_4082 = 0xDE73L;
                int32_t l_4084 = 9L;
                int32_t **l_4096 = &p_4372->g_2089;
                int32_t *l_4154 = &l_3905;
                int i, j, k;
                if (((*p_4372->g_2089) > (safe_add_func_uint16_t_u_u(0UL, (4UL > ((((((*l_3904) = (((safe_mul(((safe_mod(make_uchar1(make_uchar4(l_3879.y, l_3879.y, l_3879.y, l_3879.y).y), ((((make_uchar1(p_4372->g_3880.w) ^ ((((safe_rshift(make_uchar1(255UL), make_uchar1(8)))) | make_uchar1(p_4372->g_3883.y))))) | ((make_uchar1(4UL) ^ ((safe_mod(make_uchar1(l_3886.y), make_uchar1(l_3886.y))))))))))), make_uchar1(3UL)))).x != (make_char4(((make_short1(l_3886.y).x , (l_3901 = (((make_int3((-6L), (l_3891[1][3] &= (safe_mul_func_int32_t_s_s(make_int3(p_4372->g_3889.x, p_4372->g_3889.x, p_4372->g_3889.x).x, make_uint1(l_3890.x).x))), make_int2(((safe_mul_func_uint16_t_u_u(make_ushort1(l_3894.x).x, ((l_3886.y && (l_3895 , (make_uint4(0x2B49E651L, 0x625E6B0FL, (safe_mul_func_int16_t_s_s((l_3886.y == ((l_3898 &= 0x4CF0F075L) | l_3899[8][1])), 7L)), 0x624E54D5L).y < l_2.x))) >= l_3890.z))) | l_3879.y), l_3886.x).x).z , nullptr) != nullptr) | 5L))) == l_3902), 0x5CL, 0L, l_3903).x , l_3879.y))) != l_3905) , nullptr) == l_3906) <= 1UL))))))
                { /* block id: 1501 */
                    uint64_t l_3928 = 0x85B211588BB0AB41LL;
                    union U1 l_3946 = {65534UL};
                    int32_t l_3950 = 0xC853D430L;
                    int32_t l_3951 = (-6L);
                    int8_t **l_3958 = &l_3930[1][4][4];
                    ushort2 l_3965 = make_ushort2(0xFFCBL, 0x286DL);
                    uint32_t l_3996 = 0xED3E5834L;
                    int i;
                    for (p_4372->g_3731 = 2; (p_4372->g_3731 < 30); p_4372->g_3731 = safe_add_func_uint64_t_u_u(p_4372->g_3731, 7))
                    { /* block id: 1504 */
                        uint16_t l_3909 = 0x0FF4L;
                        return l_3909;
                    }
                    for (p_4372->g_3163 = 0; (p_4372->g_3163 == (-28)); p_4372->g_3163 = safe_sub_func_int32_t_s_s(p_4372->g_3163, 6))
                    { /* block id: 1509 */
                        char1 l_3914 = make_char1(1L);
                        int32_t l_3929 = 0xAA5459E9L;
                        int i;
                        (*p_4372->g_2089) = ((safe_mul_func_int32_t_s_s(((~((&p_4372->g_1014 == (make_char4(l_3914.x, l_3914.x, l_3914.x, l_3914.x).z , l_3915)) < (0x0CDC748BL ^ ((((&l_3720 != nullptr) == (safe_lshift_func_int32_t_s_s((((safe_mul_func_int16_t_s_s((l_3666.x < make_short2(p_4372->g_3920.y, p_4372->g_3920.y).x), (safe_add_func_int64_t_s_s((((7UL || (((make_uchar3(l_3923, (safe_sub_func_uint8_t_u_u((l_3929 |= ((safe_div_func_int32_t_s_s((((l_3928 ^ l_3914.x) || (-8L)) , (*p_4372->g_2089)), l_3891[4][0])) && l_3879.y)), 0xECL)), 0x56L).y <= l_3901) & 0x3FE0546221C46C42LL) == l_9[0][1])) | l_3886.y) , l_3914.x), l_3914.x)))) , l_3930[1][4][4]) == nullptr), 8))) < 0x53L) && (-1L))))) <= l_3914.x), 4294967295UL)) > (-1L));
                        (*p_4372->g_2089) &= (((*l_3904) = (safe_mul_func_int64_t_s_s((l_3914.x > (make_uchar4(p_4372->g_3935.z, p_4372->g_3935.z, p_4372->g_3935.z, p_4372->g_3935.z).z == (((((l_9[0][1] &= (make_int4(0x44D72870L, make_int3(0x23AFC116L, 0x339ED079L, 5L).x, 0x31F368ABL, (l_3879.x || (safe_sub_func_uint8_t_u_u((l_3929 &= (safe_mod_func_int8_t_s_s((((((0x4DL <= l_3751[2]) > (((((safe_add_func_int8_t_s_s(((((l_3951 &= (safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(0xA0L, (l_3894.x == (l_3946 , (l_3950 = (safe_add_func_int64_t_s_s(l_3949, (((&p_4372->g_1327 == &p_4372->g_1327) == 0xC3L) != 0x6EL)))))))), 6))) != (-4L)) && l_3674) && 0x0873L), 0L)) , l_3952[2]) >= l_3668) | 252UL) , 1UL)) ^ 0xF17CL) || 0x3AL) <= l_3848.z), l_3668))), l_3663.y)))).y && (-2L))) | (-7L)) <= l_3914.x) | l_3902) & l_3841.x))), l_3953[1]))) < l_3954);
                    }
                    if ((*p_4372->g_2089))
                        continue;
                    if ((l_3954 > (l_3950 = (((safe_mul_func_uint16_t_u_u((((make_ulong3(l_3951, 18446744073709551615UL, 0x5D221CF66F0CDD50LL) ^ make_ulong3((((&p_4372->g_2977[0] != ((l_3957 == l_3958) , l_3959)) <= ((~((safe_mul(make_ushort2(l_3962.w, l_3962.w), ((make_ushort2((safe_div_func_uint32_t_u_u(l_3950, make_int2(0x7341E91BL, 1L).y)), 0UL) ^ ((make_ushort2(l_3965.x, l_3965.x) | make_ushort2(l_3905, 5UL)))))))))).y) & ((safe_lshift_func_uint16_t_u_s((safe_mod_func_uint64_t_u_u(1UL, 0xFCA22B19E3FEE7D7LL)), l_3890.x)) > l_9[1][0])), l_3970, 0x42DBFA528CD408B4LL))).x > l_3655.y), 0x890CL)) >= l_3673) < 0x5EBD539AL))))
                    { /* block id: 1521 */
                        uint64_t *l_3997[6];
                        int32_t l_4000 = 0xA9BAECBEL;
                        int32_t l_4002[4][6][1] = {{{0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}}, {{0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}}, {{0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}}, {{0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}, {0xB3BA5393L}}};
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_3997[i] = nullptr;
                        (*p_4372->g_2089) = (l_2.y = (((safe_div_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((p_4372->g_3978 = ((safe_sub(make_ulong1(p_4372->g_3977.x), make_ulong1(0UL)))).x), make_long1((((safe_add_func_uint8_t_u_u((l_3886.x , (l_9[0][1] = (safe_add_func_int8_t_s_s(l_3879.x, (l_4002[1][5][0] ^= ((l_3946.f0 , (((~l_3753) ^ (((safe_div_func_int16_t_s_s(((safe_add_func_int16_t_s_s(((((l_3998 |= (safe_mod_func_uint8_t_u_u((l_3901 = (safe_sub_func_int16_t_s_s((l_3951 != (safe_mul_func_uint64_t_u_u((&p_4372->g_941 != ((**p_4372->g_940) , l_3995)), (~(7UL ^ l_3996))))), 65530UL))), l_3946.f0))) , l_3999) & l_4000) | l_3954), l_3965.x)) >= 0L), l_3951)) | l_3886.z) | l_4001)) , l_3946.f0)) , l_3674)))))), 3UL)) & 0L) < 4UL)).x)), l_3965.x)) ^ l_3965.x) , l_4002[0][0][0]));
                        if (l_3879.x)
                            break;
                        (*p_4372->g_1327) = &l_3946;
                    }
                    else
                    { /* block id: 1531 */
                        union U1 *l_4003 = &p_4372->g_3648[6];
                        (*l_3915) = l_4003;
                    }
                }
                else
                { /* block id: 1534 */
                    union U0 **l_4005[5][3];
                    union U0 ***l_4004 = &l_4005[1][0];
                    int32_t l_4008 = (-1L);
                    uint8_t **l_4009 = &p_4372->g_2900[5];
                    int32_t *l_4016 = nullptr;
                    int32_t *l_4017 = nullptr;
                    int32_t *l_4018[5] = {&l_3891[0][6], &l_3891[6][4], &l_3891[0][6], &l_3891[6][4], &l_3891[0][6]};
                    uint32_t *****l_4022 = &p_4372->g_1694;
                    int32_t *****l_4023 = nullptr;
                    uint16_t ***l_4025 = nullptr;
                    int i, j;
                    for (i = 0; i < 5; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_4005[i][j] = &p_4372->g_878;
                    }
                    l_3905 &= ((((*l_3669) == ((*l_4004) = (**l_3959))) != ((safe_mul_func_int64_t_s_s(l_4008, (((*l_4009) = p_4372->g_2900[7]) == (l_4010 = nullptr)))) > (((safe_mod_func_uint8_t_u_u(0x99L, make_char4((l_4013 , (+(l_4014 == nullptr))), l_4015, l_3848.x, l_3650.y).z)) , (*p_4372->g_2089)) || l_4013.f0))) > l_4008);
                    (*p_4372->g_2089) ^= (safe_mod_func_int8_t_s_s((l_4021.x , ((((((((***l_4004) = l_3895) , l_4022) != &p_4372->g_2024) == (&p_4372->g_752 == (p_4372->g_4024 = &p_4372->g_752))) < ((l_4025 == ((l_3848.z <= ((*l_4004) != l_4026)) , nullptr)) , (-4L))) ^ l_3674) <= 18446744073709551609UL)), (-6L)));
                    l_4027 = (l_9[1][0] &= ((*p_4372->g_2089) = make_int1(0xCA6DB719L).x));
                }
                (*p_4372->g_3487) = (*p_4372->g_3487);
                for (l_3905 = 5; (l_3905 >= 0); l_3905 -= 1)
                { /* block id: 1549 */
                    int32_t ***l_4030 = &p_4372->g_820;
                    uint32_t *l_4033 = &l_3895.f3;
                    uint32_t *l_4037 = nullptr;
                    uint32_t *l_4038 = &p_4372->g_136[1];
                    int64_t *l_4047 = nullptr;
                    int64_t *l_4048 = nullptr;
                    int64_t *l_4049 = &hip_const_4;
                    int64_t *l_4050 = nullptr;
                    int64_t *l_4051 = nullptr;
                    int64_t *l_4052 = nullptr;
                    int64_t *l_4053 = &p_4372->g_3371;
                    uint64_t l_4110 = 1UL;
                    int i, j;
                    if ((0x40L == (safe_div_func_uint32_t_u_u((l_4030 != l_3800), (safe_lshift_func_int64_t_s_u((((p_4372->g_1178[l_3905][(l_3905 + 1)] ^ ((*l_4033) = l_3999)) > (~((*l_4053) |= ((safe_add_func_int32_t_s_s((make_uint2(l_4036.z, l_4036.z).y <= ((*l_4038)--)), p_4372->g_1178[l_3905][(l_3905 + 1)])) >= (~((((safe_mul_func_uint8_t_u_u(((&l_3804 == l_4043) & ((~(make_long2(l_4044.y, l_4044.y).x != (safe_unary_minus_func_int32_t_s(((safe_unary_minus_func_uint16_t_u(65535UL)) , (*p_4372->g_2089)))))) , 0x6870020AL)), 3L)) != l_3998) , (*p_4372->g_2089)) , p_4372->g_1178[l_3905][(l_3905 + 1)])))))) || 0xADL), l_3879.y))))))
                    { /* block id: 1553 */
                        if (l_3886.x)
                            break;
                        (*p_4372->g_2089) ^= 3L;
                    }
                    else
                    { /* block id: 1556 */
                        uint8_t l_4062 = 0x13L;
                        int32_t l_4071 = 2L;
                        int32_t l_4072 = 0L;
                        l_4084 |= ((safe_add_func_uint64_t_u_u(l_4056, (safe_unary_minus_func_uint16_t_u((((make_ushort2(0UL, 0xC728L).x >= (make_char2(l_4058.y, l_4058.y).y != (safe_mod_func_int8_t_s_s(l_4061, l_4062)))) > ((((make_ushort1(65527UL) & make_ushort1(l_4063.x))) ^ make_ushort1(l_4064.y))).x) >= l_3879.y))))) > (safe_add_func_int8_t_s_s(((((make_uint3(((*l_4038) = (safe_mul_func_int16_t_s_s((((safe_mul_func_uint32_t_u_u(((make_uint3(0xCF883DC8L, (((l_3999 <= (l_4071 = make_char2(0L, 0L).y)) & ((**p_4372->g_940) , l_4072)) ^ (safe_add_func_int64_t_s_s(l_3848.x, (((*l_4033) = (safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_div_func_int8_t_s_s(make_char3(p_4372->g_4081.y, p_4372->g_4081.y, p_4372->g_4081.y).x, (~l_3998))) == l_4082), l_3879.x)), l_4064.z))) , l_4062)))), 0x44C6E2F0L) & make_uint3(9UL, 9UL, 9UL))).x, l_3901)) || l_3970) | 1UL), l_4013.f0))), l_4083, 2UL) ^ make_uint3(4294967295UL, 4294967295UL, 4294967295UL))).z <= (*p_4372->g_2089)) == l_3998), l_4062)));
                        if ((*p_4372->g_2089))
                            continue;
                    }
                    if (((l_3879.y | l_3894.x) , (safe_lshift_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(((safe_mul(((make_ushort4(p_4372->g_4091.z, p_4372->g_4091.z, p_4372->g_4091.z, p_4372->g_4091.z) ^ ((safe_mod(make_ushort4(9UL, ((p_4372->g_71 , 2L) , (safe_mod_func_uint32_t_u_u(make_uint1((nullptr == l_4096)).x, p_4372->g_1178[l_3905][(l_3905 + 1)]))), (safe_mod_func_int32_t_s_s(((**l_4096) = (((l_4013 , nullptr) == nullptr) == l_4099)), p_4372->g_3177.y)), l_3891[4][1]), make_ushort4(0UL, 0UL, 0UL, 0UL)))))), make_ushort4(0xF8A7L, 0xF8A7L, 0xF8A7L, 0xF8A7L)))).x, l_4100)), 6))))
                    { /* block id: 1564 */
                        int32_t *l_4101 = &l_3953[4];
                        int32_t *l_4102 = &p_4372->g_1178[l_3905][(l_3905 + 1)];
                        int32_t *l_4103 = nullptr;
                        int32_t *l_4104 = &p_4372->g_44[1][2];
                        int32_t *l_4105 = &p_4372->g_37;
                        int32_t *l_4106 = nullptr;
                        int32_t *l_4107 = nullptr;
                        int32_t *l_4108 = &l_3999;
                        int32_t *l_4109[5] = {nullptr, nullptr, nullptr, nullptr, nullptr};
                        union U0 **l_4115 = &p_4372->g_878;
                        int i;
                        --l_4110;
                        (**l_3800) = (((safe_sub_func_int16_t_s_s(((*l_3904) &= (((*l_3669) = (**p_4372->g_2976)) != l_4115)), (l_3698 <= (safe_add_func_uint8_t_u_u(make_uchar1(p_4372->g_4118.x).x, make_uchar2(p_4372->g_4119.z, p_4372->g_4119.z).x))))) >= make_short4(p_4372->g_4120.y, p_4372->g_4120.y, p_4372->g_4120.y, p_4372->g_4120.y).y) , (*l_4096));
                        return (**l_4096);
                    }
                    else
                    { /* block id: 1570 */
                        uint64_t ***l_4124 = &p_4372->g_2509;
                        int32_t l_4144[3];
                        int64_t ****l_4146[3];
                        int64_t ***l_4147 = &p_4372->g_3488[6];
                        int1 l_4150 = make_int1(0xC3F23F24L);
                        int32_t l_4151 = 0L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_4144[i] = 0x7436DD69L;
                        for (i = 0; i < 3; i++)
                            l_4146[i] = nullptr;
                        (**l_4096) |= (safe_add_func_int32_t_s_s((l_4123[0][2][4] != ((*l_4124) = l_4123[1][2][4])), make_uint1(l_4125.y).x));
                        (*p_4372->g_820) = &p_4372->g_62;
                        if ((**l_4096))
                            continue;
                        l_4151 ^= (safe_sub_func_uint64_t_u_u(((***l_3804) , ((***l_3804) != ((((l_3891[1][3] = ((((l_4130 &= (safe_div_func_int64_t_s_s((+make_long4((-1L), 0xECDD9D14F674455BLL, 5L, (-1L)).w), (***l_3804)))) >= (safe_unary_minus_func_int16_t_s(make_short1(p_4372->g_4132.y).x))) || (safe_mul_func_int8_t_s_s((+(safe_sub_func_uint64_t_u_u(((((*l_4053) &= (safe_rshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((***l_4030) && (***l_3804)), make_uint2(l_4141.x, l_4141.x).y)), 15))) == (safe_lshift_func_int8_t_s_u(l_4144[2], ((l_4145 = l_4145) == (p_4372->g_3487 = l_4147))))) ^ (safe_mod_func_uint64_t_u_u((l_4150.x |= 0x112426A9342A853CLL), (***l_3804)))), 1L))), (***l_3804)))) < l_4144[2])) <= (***l_3804)) == (***l_4030)) , (**l_4096)))), (***l_3800)));
                    }
                }
                for (p_4372->g_3163 = 0; (p_4372->g_3163 < 22); p_4372->g_3163 = safe_add_func_uint16_t_u_u(p_4372->g_3163, 5))
                { /* block id: 1586 */
                    (**l_3804) = l_4154;
                }
            }
            (*p_4372->g_2089) = make_int2(p_4372->g_4155.z, p_4372->g_4155.z).y;
            l_4158--;
        }
        (*l_4161) = &p_4372->g_3487;
        if (l_3894.x)
        { /* block id: 1594 */
            if ((*p_4372->g_2089))
                break;
        }
        else
        { /* block id: 1596 */
            uint32_t l_4172[9][1] = {{0x15FBAD73L}, {0x15FBAD73L}, {0x15FBAD73L}, {0x15FBAD73L}, {0x15FBAD73L}, {0x15FBAD73L}, {0x15FBAD73L}, {0x15FBAD73L}, {0x15FBAD73L}};
            int32_t l_4177 = 4L;
            int3 l_4192 = make_int3(0xC6847F29L, (-7L), 0xC6847F29L);
            int64_t l_4209 = 0xA01FD559941DBCDELL;
            union U1 *l_4254[4][1][1] = {{{&l_4185}}, {{&l_4185}}, {{&l_4185}}, {{&l_4185}}};
            int32_t l_4257 = 0xED156A69L;
            uint32_t l_4259 = 1UL;
            uint32_t l_4284 = 0xE97EDF4BL;
            int8_t l_4310 = 0x00L;
            uint16_t l_4328 = 0xBE14L;
            int8_t *l_4330 = &l_4310;
            ushort3 l_4337 = make_ushort3(0UL, 7UL, 0UL);
            union U0 l_4351 = {0UL};
            int32_t l_4352 = 0x202C0501L;
            uint8_t *l_4354 = &l_4188;
            int i, j, k;
            if (p_4372->g_4163)
            { /* block id: 1597 */
                long2 l_4181 = make_long2((-4L), 0x4095E629C70C7C4ALL);
                int64_t *l_4183 = nullptr;
                int64_t *l_4184 = &l_3954;
                uint8_t *l_4191[3];
                int8_t l_4193 = (-9L);
                int32_t l_4194 = 0L;
                int8_t *l_4195 = nullptr;
                int8_t *l_4196 = nullptr;
                int8_t *l_4197 = nullptr;
                int8_t *l_4198 = nullptr;
                int8_t *l_4199 = nullptr;
                int8_t *l_4200 = nullptr;
                int8_t *l_4201 = &l_4193;
                int32_t *l_4202 = nullptr;
                int32_t *l_4203 = nullptr;
                int32_t *l_4204[10] = {nullptr, &p_4372->g_1178[5][1], nullptr, &p_4372->g_1178[5][1], nullptr, &p_4372->g_1178[5][1], nullptr, &p_4372->g_1178[5][1], nullptr, &p_4372->g_1178[5][1]};
                union U2 l_4205[6] = {{0xD6CA305EL}, {0xD6CA305EL}, {-9L}, {0xD6CA305EL}, {0xD6CA305EL}, {-9L}};
                union U1 l_4206 = {65528UL};
                int8_t ***l_4215 = &l_3957;
                int32_t l_4234 = (-1L);
                uint32_t l_4277 = 0x22BB931AL;
                uint32_t l_4281 = 0xC9B03CB7L;
                int32_t *l_4296 = nullptr;
                int32_t **l_4295 = &l_4296;
                int i;
                for (i = 0; i < 3; i++)
                    l_4191[i] = nullptr;
                p_4372->g_1178[5][1] ^= (safe_lshift_func_uint64_t_u_u(make_ulong3(1UL, (safe_div_func_uint8_t_u_u(((safe_mod_func_int8_t_s_s((safe_add_func_int64_t_s_s(l_4172[2][0], (l_4173 != (((*l_4201) = (((l_4174--) != ((make_char4(((((l_4178 |= (l_4177 &= l_4172[7][0])) & (0x2AB4D7EB94B093A9LL <= ((safe_mul_func_int64_t_s_s(((*l_4184) = ((make_long1(l_4181.x) | make_long1(l_4182.x))).x), (((*p_4372->g_2089) = ((l_4185 , make_ushort2(p_4372->g_4186.y, p_4372->g_4186.y).x) == ((l_4188 = ((make_int1(0xAB920217L) & make_int1(p_4372->g_4187.z))).x) , make_ushort2(9UL, 0UL).x))) == 1UL))) <= ((make_long1((safe_unary_minus_func_uint8_t_u((l_4192.x |= (nullptr != l_4190))))).x & (l_4194 = (l_4172[3][0] <= l_4193))) > l_4181.y)))) ^ l_4172[6][0]) , l_3952[6]), 0xFEL, l_4172[2][0], (-9L)).y , 255UL) | l_4001)) >= l_4181.y)) == l_4172[1][0])))), l_4181.x)) <= 0x34E2L), 255UL)), 0xEA256F40804E561DLL).y, l_4172[2][0]));
                if ((((**p_4372->g_940) = l_4205[3]) , ((l_4206 , (p_4372->g_3648[2] , l_4207)) != (*p_4372->g_4024))))
                { /* block id: 1609 */
                    int16_t l_4208 = 0x866EL;
                    l_4210--;
                    if ((*p_4372->g_2089))
                        continue;
                }
                else
                { /* block id: 1612 */
                    int32_t l_4228 = 1L;
                    int16_t l_4232 = (-1L);
                    uchar1 l_4233 = make_uchar1(0UL);
                    int i;
                    for (l_4130 = (-15); (l_4130 >= 18); l_4130++)
                    { /* block id: 1615 */
                        int8_t ****l_4216[3];
                        int32_t l_4226[9][9] = {{0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}, {0xF620675FL, 4L, (-4L), 0xAFF0AB54L, 0L, 5L, 0x4BB31F39L, 0x180B725CL, 1L}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_4216[i] = &l_4215;
                        if (l_4209)
                            break;
                        p_4372->g_4217 = l_4215;
                        l_4234 = ((*p_4372->g_2089) |= (safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(((*l_4184) = (safe_sub_func_uint32_t_u_u((l_4226[4][5] != make_ushort1(p_4372->g_4227.y).x), (((**l_4162) = (*p_4372->g_3487)) != nullptr)))), l_4228)), (!make_uchar4(make_uchar1(p_4372->g_4229.y).x, 255UL, l_4226[4][5], (safe_lshift_func_uint32_t_u_u(((&p_4372->g_2976 == nullptr) > l_4232), 10))).w))), make_uchar1(l_4233.x).x)));
                    }
                }
                for (p_4372->g_3592 = 0; (p_4372->g_3592 <= 2); p_4372->g_3592 += 1)
                { /* block id: 1626 */
                    int32_t *l_4237 = nullptr;
                    int8_t l_4252 = (-1L);
                    int8_t l_4258 = (-7L);
                    int16_t l_4280 = 0x8A2FL;
                    if ((p_4372->g_4235 < p_4372->g_4236))
                    { /* block id: 1627 */
                        ulong4 l_4238 = make_ulong4(5UL, 0UL, 5UL, 0UL);
                        int i;
                        l_4204[6] = l_4237;
                        l_4238.y++;
                    }
                    else
                    { /* block id: 1630 */
                        int64_t *****l_4249 = &l_4162;
                        int32_t l_4255 = 0x82957E92L;
                        (*p_4372->g_2089) &= (((((safe_mul_func_int32_t_s_s((safe_div_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(((((((safe_unary_minus(make_long3(((l_4249 = l_4249) != (p_4372->g_4250 = &l_4162)), l_4252, 0xEC2B2418035914E8LL)))) & make_long3(l_4253.y, l_4253.y, l_4253.y))) ^ make_long3((l_4172[2][0] || (&p_4372->g_3401[1] == nullptr)), 0x284B4E8FF38C38ACLL, ((l_4254[3][0][0] == nullptr) <= ((l_4192.x , l_4255) , p_4372->g_4256))))).x, (-1L))) < l_4255), l_4257)), l_4258)), l_4259)) != l_4209) > l_4255) != 18446744073709551615UL) , l_4209);
                        (*p_4372->g_2089) |= l_4257;
                        if (l_4260[1][1])
                            continue;
                        (*p_4372->g_2976) = (*p_4372->g_2976);
                    }
                    for (l_3674 = 0; (l_3674 <= 2); l_3674 += 1)
                    { /* block id: 1640 */
                        return l_4172[4][0];
                    }
                    (*p_4372->g_2089) = (((safe_mul_func_int8_t_s_s((!(safe_lshift_func_uint8_t_u_u(((l_3962.z == (safe_add_func_int32_t_s_s(((((*p_4372->g_2089) || ((l_4258 > (l_4192.z ^= (~l_4267))) != ((safe_div_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u(((safe_add_func_int32_t_s_s((((safe_mul_func_int32_t_s_s((*p_4372->g_2089), 0x8C8F3331L)) == ((l_4276 , (!(l_4277 ^ (safe_lshift_func_int8_t_s_s(((*l_4201) = l_4280), 5))))) > l_4281)) , 0xBF643D7CL), 0x89397A5EL)) && 0xD4F08E4BL), l_4282[5][0])) ^ (*p_4372->g_2089)) & l_4283[4]), 3L)) ^ l_4284))) >= 0xB8L) <= 0xD5L), 0x80ECE2C4L))) , l_4259), 4))), l_4177)) ^ (*p_4372->g_2089)) , (*p_4372->g_2089));
                    for (l_4099 = 0; (l_4099 <= 2); l_4099 += 1)
                    { /* block id: 1648 */
                        int32_t l_4289[4][2];
                        int32_t **l_4297 = &l_4296;
                        int32_t **l_4298[7] = {nullptr, &l_4296, nullptr, &l_4296, nullptr, &l_4296, nullptr};
                        int32_t ***l_4299 = &p_4372->g_471[0];
                        int32_t ***l_4300 = &l_4298[3];
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_4289[i][j] = 1L;
                        }
                        (*p_4372->g_2089) = (safe_mul_func_int8_t_s_s((safe_unary_minus_func_int32_t_s(make_int1(p_4372->g_4288.z).x)), ((&p_4372->g_2977[4] != nullptr) < l_4289[0][1])));
                        (*p_4372->g_2089) &= (0xCEE591EAL && ((l_4290 || (safe_mul_func_int8_t_s_s(((safe_mul_func_uint32_t_u_u(0x0C5ECC0BL, l_4192.y)) , (~(((l_4297 = l_4295) != ((*l_4300) = l_4298[0])) , ((((l_4289[1][0] , (safe_add_func_int8_t_s_s(l_4289[0][0], (safe_unary_minus_func_uint32_t_u(make_uint3(p_4372->g_4304[1][5], 0x523BB79FL, 0x965A999CL).z))))) , l_4284) && l_4259) != l_4257)))), 0x3DL))) , 0x5D78821DL));
                        (*p_4372->g_2089) = make_int3(p_4372->g_4305.y, p_4372->g_4305.y, p_4372->g_4305.y).x;
                        (*p_4372->g_2089) = 1L;
                    }
                }
                if (l_4172[7][0])
                    break;
            }
            else
            { /* block id: 1658 */
                uint16_t **l_4318 = &p_4372->g_3401[0];
                int32_t l_4319[7][9][4] = {{{0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}}, {{0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}}, {{0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}}, {{0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}}, {{0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}}, {{0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}}, {{0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}, {0x2A909EA5L, 0xA82D5303L, 0x8A18ECE4L, 1L}}};
                int16_t l_4320 = 0x7CCDL;
                int32_t *l_4321 = &l_3891[1][3];
                int32_t *l_4322 = &p_4372->g_4163;
                int32_t *l_4323[3][8][5] = {{{&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}}, {{&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}}, {{&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}, {&l_3953[4], nullptr, nullptr, nullptr, nullptr}}};
                uint32_t l_4325 = 4294967288UL;
                int i, j, k;
                (*p_4372->g_2089) = (((safe_mul_func_uint16_t_u_u((((nullptr != &l_3867) == 1UL) & (make_int2(p_4372->g_4308.z, p_4372->g_4308.z).y , make_ulong1(l_4309.y).x)), (l_4310 , ((safe_mul_func_int16_t_s_s((make_uint2(make_uint4(0x4155C48AL, make_uint2(l_4284, 0xFF374F40L).y, ((make_uint3(p_4372->g_4313.x, p_4372->g_4313.x, p_4372->g_4313.x) ^ make_uint3(4294967295UL, (0UL != (safe_add_func_uint32_t_u_u((((safe_rshift_func_uint8_t_u_s(((****p_4372->g_2976) , (l_4192.z = (l_4318 != &p_4372->g_3401[1]))), 7)) | l_4319[1][0][1]) > l_4319[3][7][1]), 0xB7AE98D9L))), 0x3B57C277L))).z, 0x986EE612L).x, 1UL).x <= (*p_4372->g_2089)), l_4320)) | l_4320)))) , l_4192.z) & l_4320);
                l_4325--;
                return l_4328;
            }
            (*p_4372->g_2089) ^= (((*l_4330) = ((l_4329 = &l_4310) == nullptr)) , ((safe_div(make_int2(0x6A142CECL, (safe_add_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(make_ushort4(l_4337.z, l_4337.z, l_4337.z, l_4337.z).w, (safe_add_func_uint16_t_u_u(0x4415L, l_4340)))), ((*l_4354) = ((safe_sub_func_int64_t_s_s(make_long4((((safe_unary_minus_func_int16_t_s((~0x7EBFL))) | (p_4372->g_4344 > make_long3(((safe_unary_minus_func_uint32_t_u(((l_4182.y & make_ulong1(p_4372->g_4346.x).x) | (((((((safe_rshift_func_int16_t_s_s(make_short1(((((safe_mod(make_short3(((l_4351 , &p_4372->g_2025) != &p_4372->g_2025), 0xA9FEL, 0x80A9L), make_short3((-3L), (-3L), (-3L))))) & make_short3(0xEF41L, 0xEF41L, 0xEF41L))).x).x, l_4209)) , l_4352) != l_4125.y) != 255UL) , 0xDF274E8DL) <= l_4257) == (-1L))))) > l_3954), l_4172[5][0], l_4177).z)) || l_4328), p_4372->g_4353[0], l_4309.x, 0xEDD24A4AF0568C99LL).w, l_4021.w)) & (-9L)))))), make_int2((-1L), (-1L))))).x);
            for (l_4351.f0 = 28; (l_4351.f0 != 46); ++l_4351.f0)
            { /* block id: 1670 */
                int32_t *l_4357 = nullptr;
                int32_t *l_4358[4] = {&l_3953[2], &l_9[0][1], &l_3953[2], &l_9[0][1]};
                uint32_t l_4359 = 0UL;
                int i;
                l_4359--;
            }
            if (l_4259)
                break;
        }
    }
    ++l_4369;
    return (*l_4364);
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_13 hip_const_1 p_4372->g_37 hip_const_5 p_4372->g_31 p_4372->g_44 p_4372->g_46 p_4372->g_56 p_4372->g_136 hip_const_6 p_4372->g_147 p_4372->g_391 p_4372->g_77 p_4372->g_71 p_4372->g_62 p_4372->g_566 p_4372->g_244 p_4372->g_820 p_4372->g_441 p_4372->g_877 p_4372->g_499 p_4372->g_59 p_4372->g_179 p_4372->g_722 p_4372->g_244.f3 p_4372->g_940 p_4372->g_944 p_4372->g_947 p_4372->g_953 p_4372->g_160 p_4372->g_878 p_4372->g_970 p_4372->g_992 p_4372->g_285 p_4372->g_941 p_4372->g_163 p_4372->g_819 p_4372->g_340 p_4372->g_1043 p_4372->g_549 p_4372->g_362 p_4372->g_721 p_4372->g_526 p_4372->g_132 p_4372->g_357 p_4372->g_658 p_4372->g_705 p_4372->g_892 p_4372->g_1167 p_4372->g_527 p_4372->g_306 p_4372->g_1291 p_4372->g_724 p_4372->g_418 p_4372->g_1031 p_4372->g_1111 p_4372->g_633 p_4372->g_80 p_4372->g_1395 p_4372->g_1555 p_4372->g_1187 p_4372->g_475 p_4372->g_1136 p_4372->g_826 p_4372->g_719 p_4372->g_884 p_4372->g_481 p_4372->g_244.f2 p_4372->g_1785 p_4372->g_1224 p_4372->g_1662 p_4372->g_2024 p_4372->g_2037 p_4372->g_2039 p_4372->g_1953 p_4372->g_2089 p_4372->g_71.f0 p_4372->g_244.f0 p_4372->g_1558 p_4372->g_2509 p_4372->g_2510 p_4372->g_2677 p_4372->g_2349 p_4372->g_2025 p_4372->g_1542 p_4372->g_2900 p_4372->g_1727 p_4372->g_1671 p_4372->g_2859 p_4372->g_244.f4 p_4372->g_2976 p_4372->g_2269 p_4372->g_2994 p_4372->g_2977 p_4372->g_3421 p_4372->g_3423 p_4372->g_2905 p_4372->g_3447 p_4372->g_3371 p_4372->g_3487 p_4372->g_3492 p_4372->g_3504 p_4372->g_3510 p_4372->g_3516 p_4372->g_3592 p_4372->g_2375 p_4372->g_2078 p_4372->g_752 p_4372->g_3488 p_4372->g_3645 p_4372->g_3648
 * writes: p_4372->g_13 p_4372->g_31 p_4372->g_37 p_4372->g_44 p_4372->g_46 p_4372->g_59 p_4372->g_62 p_4372->g_71.f1 p_4372->g_147 p_4372->g_77 p_4372->g_418 p_4372->g_56.f2 p_4372->g_244.f0 p_4372->g_752 p_4372->g_244.f3 p_4372->g_136 p_4372->g_441 p_4372->g_722 p_4372->g_940 p_4372->g_724 p_4372->g_941 p_4372->g_285 p_4372->g_1014 p_4372->g_132 p_4372->g_244.f4 p_4372->g_1031 p_4372->g_244.f2 p_4372->g_970 p_4372->g_718 p_4372->g_1308.f2 p_4372->g_56 p_4372->g_658 p_4372->g_340 p_4372->g_1308.f0 p_4372->g_878 p_4372->g_1678 p_4372->g_1785 p_4372->g_71.f0 p_4372->g_1662 p_4372->g_2037 p_4372->g_1111 p_4372->g_1308.f1 p_4372->g_2349 p_4372->g_2509 p_4372->g_2510 p_4372->g_1786 p_4372->g_2900 p_4372->g_1508 p_4372->g_306 p_4372->g_3007 p_4372->g_2976 p_4372->g_3371 p_4372->g_3487 p_4372->g_819 p_4372->g_2078 p_4372->g_471 p_4372->g_3563 p_4372->g_3645
 */
__device__ uint64_t  func_5(uint32_t  p_6, int32_t  p_7, int32_t  p_8, struct S3 * p_4372)
{ /* block id: 2 */
    int32_t *l_10 = nullptr;
    int32_t *l_11 = nullptr;
    int32_t *l_12[8] = {nullptr, &p_4372->g_13, nullptr, &p_4372->g_13, nullptr, &p_4372->g_13, nullptr, &p_4372->g_13};
    int32_t *l_30 = &p_4372->g_31;
    uint32_t l_1295 = 4294967294UL;
    int32_t ****l_1296 = &p_4372->g_819;
    union U1 l_1297[7] = {{0x0FD2L}, {0x0FD2L}, {0x0FD2L}, {0x0FD2L}, {0x0FD2L}, {0x0FD2L}, {0x0FD2L}};
    int32_t ****l_1298 = &p_4372->g_819;
    int64_t *l_1301[4][9][7] = {{{nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}}, {{nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}}, {{nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}}, {{nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}, {nullptr, &hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4}}};
    int2 l_2560 = make_int2((-6L), (-9L));
    int16_t l_3429 = 3L;
    int3 l_3430 = make_int3((-1L), 1L, (-1L));
    short1 l_3435 = make_short1(0x8CF1L);
    int32_t ****l_3445[1];
    int32_t ****l_3446 = nullptr;
    int32_t l_3454 = 0xEDCEC9DCL;
    uint8_t **l_3507 = nullptr;
    int64_t l_3515 = 9L;
    uint32_t l_3595 = 0x2EF30906L;
    uint8_t l_3600 = 0UL;
    short4 l_3649 = make_short4(1L, 0xFB21L, 1L, 0xFB21L);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_3445[i] = nullptr;
    p_4372->g_13 &= p_8;
    p_7 = p_6;
    l_3429 ^= (safe_sub_func_uint8_t_u_u(hip_const_1[0][1][0], func_16(func_18(func_23((func_28(((*l_30) = p_8), p_4372) , ((+((l_1295 &= p_8) >= ((l_1296 = l_1296) != (l_1297[0] , l_1298)))) , (safe_sub_func_int32_t_s_s(((((l_1301[0][7][1] != (p_6 , &hip_const_3)) || p_4372->g_992.y) && p_4372->g_721.x) , p_7), p_6)))), p_6, p_7, l_12[7], p_4372), l_2560.y, p_8, l_1297[0], p_4372), p_4372)));
    if (make_int3(0L, make_int4(l_3430.x, l_3430.x, l_3430.x, l_3430.x).y, 0x131D7205L).x)
    { /* block id: 1322 */
        char4 l_3436 = make_char4(1L, 0x6AL, 1L, 0x6AL);
        int16_t *l_3437[7] = {nullptr, &hip_const_5[3][1][0], nullptr, &hip_const_5[3][1][0], nullptr, &hip_const_5[3][1][0], nullptr};
        int32_t l_3438 = 0x5958A218L;
        int32_t ****l_3443 = &p_4372->g_752;
        int32_t *****l_3444[5] = {nullptr, &l_3443, nullptr, &l_3443, nullptr};
        int64_t l_3448 = 0L;
        int32_t l_3451 = 0xD3ADBFDDL;
        union U0 *****l_3452 = &p_4372->g_2976;
        uint64_t *l_3453 = &p_4372->g_2349;
        int32_t l_3455[5] = {(-1L), 0xBBEAB838L, (-1L), 0xBBEAB838L, (-1L)};
        int1 l_3466 = make_int1((-1L));
        uint32_t **l_3471 = &p_4372->g_1543[0];
        union U1 l_3514 = {1UL};
        int32_t l_3545 = 0xDDD7AEDCL;
        uint64_t ****l_3577 = &p_4372->g_3511[0][2][0];
        uint32_t l_3593[6][6] = {{0x58C6111AL, 0x549730AFL, 0x875687A5L, 0xEA3B1FCEL, 0x3E12ED5EL, 0xEA3B1FCEL}, {0x58C6111AL, 0x549730AFL, 0x875687A5L, 0xEA3B1FCEL, 0x3E12ED5EL, 0xEA3B1FCEL}, {0x58C6111AL, 0x549730AFL, 0x875687A5L, 0xEA3B1FCEL, 0x3E12ED5EL, 0xEA3B1FCEL}, {0x58C6111AL, 0x549730AFL, 0x875687A5L, 0xEA3B1FCEL, 0x3E12ED5EL, 0xEA3B1FCEL}, {0x58C6111AL, 0x549730AFL, 0x875687A5L, 0xEA3B1FCEL, 0x3E12ED5EL, 0xEA3B1FCEL}, {0x58C6111AL, 0x549730AFL, 0x875687A5L, 0xEA3B1FCEL, 0x3E12ED5EL, 0xEA3B1FCEL}};
        uint8_t l_3596 = 0UL;
        int i, j;
        if (((safe_rshift_func_int32_t_s_u(0x400B58AFL, (safe_mod_func_int16_t_s_s((l_3438 = (l_3436.y = make_short4(l_3435.x, l_3435.x, l_3435.x, l_3435.x).z)), ((safe_mod_func_uint16_t_u_u(p_8, ((safe_div_func_int32_t_s_s((l_3448 ^= make_int4((*p_4372->g_2089), (((l_3445[0] = l_3443) == l_3446) & make_long2(p_4372->g_3447.x, p_4372->g_3447.x).y), (-1L), 0xEEC3847BL).w), ((safe_sub_func_uint64_t_u_u(((*l_3453) &= (255UL | ((l_3451 &= 254UL) , (((*l_3452) = &p_4372->g_2977[7]) != nullptr)))), 18446744073709551613UL)) , l_3454))) ^ l_3455[4]))) , p_6))))) > l_3455[3]))
        { /* block id: 1330 */
            uint32_t l_3458 = 1UL;
            uint64_t ***l_3464[2][3];
            uint64_t ****l_3463 = &l_3464[1][2];
            int32_t *l_3467 = nullptr;
            uint32_t **l_3470 = &p_4372->g_1543[2];
            int32_t l_3532[5];
            uint32_t l_3534 = 0xC1C18EE2L;
            uint16_t l_3571 = 0x20A0L;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 3; j++)
                    l_3464[i][j] = nullptr;
            }
            for (i = 0; i < 5; i++)
                l_3532[i] = 0xFD549848L;
            l_3438 ^= (safe_mod_func_int32_t_s_s(l_3458, (-1L)));
            for (p_4372->g_3371 = 0; (p_4372->g_3371 <= 5); p_4372->g_3371 = safe_add_func_uint32_t_u_u(p_4372->g_3371, 1))
            { /* block id: 1334 */
                int16_t l_3513 = 1L;
                uint32_t *l_3521 = &p_4372->g_2039;
                uchar2 l_3524 = make_uchar2(0x87L, 0x64L);
                ulong4 l_3528 = make_ulong4(0x5B144BA8A6151BF0LL, 0UL, 0x5B144BA8A6151BF0LL, 0UL);
                int32_t l_3531 = 0xAC690F32L;
                int32_t l_3533 = 0L;
                int32_t l_3543 = (-1L);
                int32_t l_3549[6] = {1L, 0x9E95D1C5L, 1L, 0x9E95D1C5L, 1L, 0x9E95D1C5L};
                int32_t l_3574 = 0x01A50DD6L;
                union U0 l_3575 = {0xFEA1L};
                ulong2 l_3584 = make_ulong2(18446744073709551615UL, 0x442BEC65207D733ALL);
                int32_t l_3594 = (-1L);
                int i;
                for (l_3429 = 0; (l_3429 <= 22); l_3429 = safe_add_func_int16_t_s_s(l_3429, 8))
                { /* block id: 1337 */
                    uint64_t *****l_3465 = &l_3463;
                    int32_t l_3475 = (-1L);
                    int3 l_3501 = make_int3((-1L), 0x293FB938L, (-1L));
                    uint32_t *****l_3512 = &p_4372->g_2024;
                    int32_t l_3551[6][1] = {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}};
                    int16_t l_3569 = 0x14EDL;
                    int i, j;
                    (*l_3465) = l_3463;
                    if (make_int2(l_3466.x, l_3466.x).y)
                    { /* block id: 1339 */
                        uint16_t *l_3472 = nullptr;
                        uint16_t *l_3473 = nullptr;
                        uint16_t *l_3474[9][9][3] = {{{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}, {{&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}, {&l_1297[0].f0, nullptr, &l_1297[0].f0}}};
                        int32_t l_3478 = 0x239D21D8L;
                        uint64_t *l_3479 = &hip_const_1[8][2][3];
                        int3 l_3486 = make_int3(1L, 0x72494FA4L, 1L);
                        int i, j, k;
                        if (p_6)
                            break;
                        (***l_1296) = l_3467;
                        (*p_4372->g_2089) |= (0x7452D70DL == (safe_mul_func_int16_t_s_s(p_8, (p_6 & ((l_3475 = (l_3470 != l_3471)) & (l_3478 < (l_3479 == (((safe_mod_func_uint32_t_u_u((((make_char4((safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(65526UL, ((l_3478 >= p_4372->g_884.x) , l_3451))), 15)), (-10L), 0x53L, p_7).y != 253UL) >= p_7) && p_7), l_3478)) , 0xA747C727L) , (*p_4372->g_2509)))))))));
                        (*p_4372->g_2089) = make_int2(l_3486.x, l_3486.x).y;
                    }
                    else
                    { /* block id: 1345 */
                        int64_t ****l_3489 = &p_4372->g_3487;
                        (*l_3489) = p_4372->g_3487;
                    }
                    for (p_4372->g_244.f2 = 0; (p_4372->g_244.f2 != 12); p_4372->g_244.f2++)
                    { /* block id: 1350 */
                        int8_t *l_3522 = nullptr;
                        int8_t *l_3523 = &p_4372->g_970;
                        uint16_t l_3525 = 65535UL;
                        l_3515 = ((((((make_ushort2(((((make_ushort4(p_4372->g_3492.x, p_4372->g_3492.x, p_4372->g_3492.x, p_4372->g_3492.x) ^ make_ushort4((~make_ushort2((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((safe_lshift(((safe_mod(make_int4(l_3501.y, l_3501.y, l_3501.y, l_3501.y), make_int4((((safe_mod(make_short3(p_4372->g_3504.x, p_4372->g_3504.x, p_4372->g_3504.x), make_short3(p_6, 0x273CL, (-4L))))).x , l_3475), ((safe_mod_func_int64_t_s_s((p_8 || ((((nullptr == l_3507) | (safe_lshift_func_int8_t_s_u(p_8, (p_4372->g_3510 == nullptr)))) , &p_4372->g_1694) == l_3512)), l_3475)) && 7L), (-1L), 0xD6B4CF9DL)))), make_int4(32, 32, 32, 32)))).x, 0x2F7969D7L)), 12)), 0x5AD3L).x), l_3458, l_3513, p_8))) ^ make_ushort4(65535UL, 65535UL, 65535UL, 65535UL))).w, 65534UL).y != l_3501.x) < 0xABC115285B7625BCLL) <= p_8) == 255UL) , l_3514) , p_7);
                        (*p_4372->g_2089) = ((make_ushort1(p_4372->g_3516.y).x && (safe_add_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s(((*l_3523) &= (nullptr == l_3521)), make_uchar4(l_3524.x, l_3524.x, l_3524.x, l_3524.x).x)) , l_3525), (l_3501.x ^ (!((safe_mod_func_uint64_t_u_u(3UL, (((make_ulong1(0x37E529BD4025C028LL) ^ make_ulong1(l_3528.x))).x ^ p_8))) , l_3501.z)))))) ^ ((p_6 && p_6) != l_3524.y));
                    }
                    for (p_4372->g_62 = 19; (p_4372->g_62 < (-7)); p_4372->g_62 = safe_sub_func_uint64_t_u_u(p_4372->g_62, 1))
                    { /* block id: 1357 */
                        uint8_t *l_3539 = nullptr;
                        uint8_t *l_3540 = nullptr;
                        uint8_t *l_3541[6][8] = {{&p_4372->g_244.f2, nullptr, nullptr, nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, nullptr}, {&p_4372->g_244.f2, nullptr, nullptr, nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, nullptr}, {&p_4372->g_244.f2, nullptr, nullptr, nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, nullptr}, {&p_4372->g_244.f2, nullptr, nullptr, nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, nullptr}, {&p_4372->g_244.f2, nullptr, nullptr, nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, nullptr}, {&p_4372->g_244.f2, nullptr, nullptr, nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, nullptr}};
                        int64_t l_3542 = 1L;
                        int32_t l_3544 = 0xEE4C8C86L;
                        int32_t l_3546 = (-9L);
                        int32_t l_3547 = 0x70A77C87L;
                        int32_t l_3548 = 1L;
                        int8_t l_3550 = 1L;
                        int32_t l_3552 = 0x762406C4L;
                        int32_t l_3554 = 0x18431BB5L;
                        int32_t l_3555 = 0L;
                        int32_t l_3556 = 0x0EDC6758L;
                        int32_t l_3557 = 0xA503ECEFL;
                        int32_t l_3558 = 0x1B8B0164L;
                        int32_t l_3559 = 5L;
                        int32_t l_3560 = 0xAAA7E9ADL;
                        int32_t l_3561 = 0x83A9A7DBL;
                        int32_t l_3562 = 0xE2E48255L;
                        int32_t l_3564 = 0xF70A894EL;
                        int32_t l_3565 = (-1L);
                        int32_t l_3566 = 0x1D5F7C6FL;
                        int32_t l_3567 = 8L;
                        int32_t l_3570 = 0x47D87865L;
                        uint64_t *l_3576 = &hip_const_6;
                        ulong1 l_3587 = make_ulong1(0x57F89F2780F63046LL);
                        int i, j;
                        if (p_8)
                            break;
                        l_3534--;
                        l_3594 |= (((safe_mod_func_int16_t_s_s((make_int4((((make_int3((l_3531 &= ((l_3543 ^= ((l_3533 = make_ulong1(0xFFB08086683B4F22LL).x) > ((l_3549[2] = (l_3571--)) != (l_3574 | (((65535UL >= (((*l_3453) = ((l_3575 , l_3576) != (((((((nullptr == l_3577) < (safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((((((safe_lshift(make_ulong1(make_ulong1(l_3584.x).x), make_ulong1(64)))) & ((safe_rshift(make_ulong1(l_3587.x), make_ulong1(64)))))).x == (((((*****l_3452) , ((((safe_lshift_func_uint16_t_u_s(l_3514.f0, l_3566)) , nullptr) == nullptr) ^ 0xD2223924L)) , 0x316CF6D4L) >= l_3448) | 0L)), l_3501.y)), p_7))) && p_4372->g_3592) , p_4372->g_2900[7]) != p_4372->g_2900[7]) || p_4372->g_2375.z) , (*p_4372->g_2509)))) & p_7)) || 0x0A606BAACADE1094LL) > p_8))))) , p_8)), (-8L), (-7L)) ^ make_int3(0xD87551B8L, 0xD87551B8L, 0xD87551B8L))).z == p_8), l_3593[5][2], (-1L), 0xB7011B64L).x > p_6), p_8)) | p_8) < 0x22C6D3FCL);
                        return l_3595;
                    }
                }
            }
            ++l_3596;
        }
        else
        { /* block id: 1372 */
            int32_t ***l_3599 = nullptr;
            (*l_1298) = l_3599;
            return l_3600;
        }
    }
    else
    { /* block id: 1376 */
        uint32_t l_3601 = 4294967295UL;
        uint32_t ****l_3606[3];
        union U1 l_3608 = {0UL};
        int32_t ***l_3627 = &p_4372->g_471[0];
        int32_t l_3642 = 0x820B8333L;
        int i;
        for (i = 0; i < 3; i++)
            l_3606[i] = &p_4372->g_2025;
        l_3601 ^= (*p_4372->g_2089);
        for (p_4372->g_2078 = 0; (p_4372->g_2078 <= 7); p_4372->g_2078 += 1)
        { /* block id: 1380 */
            int32_t **l_3609[9] = {nullptr, &l_30, nullptr, &l_30, nullptr, &l_30, nullptr, &l_30, nullptr};
            int32_t l_3631 = 0xDE88CFFDL;
            int32_t l_3643 = 0x46904C32L;
            int i;
            if (l_3601)
            { /* block id: 1381 */
                char1 l_3607 = make_char1(0xA3L);
                int8_t *l_3618 = nullptr;
                int8_t *l_3619 = nullptr;
                int8_t *l_3620 = nullptr;
                int8_t *l_3621 = &p_4372->g_970;
                int i;
                (*p_4372->g_2089) &= (((safe_mul_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((l_3606[1] == &p_4372->g_2025), make_char2(l_3607.x, l_3607.x).x)) ^ (l_3608 , (((*p_4372->g_752) = l_3609[8]) == nullptr))), ((safe_add_func_int8_t_s_s(p_6, 0x64L)) ^ (1L <= (safe_lshift_func_int8_t_s_s(((*l_3621) = (((safe_lshift_func_int16_t_s_s((nullptr != (*p_4372->g_3487)), 9)) != p_6) || p_8)), p_8)))))) ^ p_6) == 0x09EB3430D3C639A3LL);
                if (p_8)
                    continue;
            }
            else
            { /* block id: 1386 */
                int8_t l_3622 = 0x50L;
                int1 l_3623 = make_int1(0xB41C2A2BL);
                union U1 ***l_3635 = &p_4372->g_1327;
                int64_t l_3644[10][6][4] = {{{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}, {{0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}, {0xC169C809A6A33111LL, 0xC1196864273B3ADBLL, 0xD2330DB3FD751D76LL, 3L}}};
                int i, j, k;
                for (p_4372->g_1031 = 0; (p_4372->g_1031 <= 9); p_4372->g_1031 += 1)
                { /* block id: 1389 */
                    uint8_t l_3624 = 0UL;
                    uint32_t l_3632 = 0UL;
                    int3 l_3641 = make_int3(0L, 1L, 0L);
                    int i;
                    for (p_4372->g_3563 = 1; (p_4372->g_3563 >= 0); p_4372->g_3563 -= 1)
                    { /* block id: 1392 */
                        uint8_t l_3628[2][8];
                        union U1 ***l_3636 = nullptr;
                        union U1 ***l_3638 = &p_4372->g_1327;
                        union U1 ****l_3637 = &l_3638;
                        int32_t l_3640 = (-1L);
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 8; j++)
                                l_3628[i][j] = 1UL;
                        }
                        (*p_4372->g_2089) ^= l_3622;
                        l_3624 = make_int1(l_3623.x).x;
                        l_3640 = ((*p_4372->g_2089) = ((safe_sub_func_int32_t_s_s(((l_3627 == &p_4372->g_471[0]) & (p_6 < (l_3623.x = 0xCA91A60AL))), (++l_3628[1][0]))) ^ (l_3631 , (l_3632 , (safe_add_func_int16_t_s_s(((l_3636 = l_3635) == ((*l_3637) = &p_4372->g_1327)), make_ushort4(p_4372->g_3639.z, p_4372->g_3639.z, p_4372->g_3639.z, p_4372->g_3639.z).x))))));
                        (*p_4372->g_2089) ^= p_7;
                    }
                    ++p_4372->g_3645;
                    for (l_3622 = 6; (l_3622 >= 3); l_3622 -= 1)
                    { /* block id: 1406 */
                        p_7 |= (p_4372->g_3648[6] , ((*p_4372->g_2089) = l_3624));
                        l_3641.z = l_3623.x;
                    }
                }
            }
        }
        (*p_4372->g_2089) = (0x1F55L == make_short3(l_3649.x, l_3649.x, l_3649.x).y);
    }
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_2089 p_4372->g_62
 * writes: p_4372->g_62
 */
__device__ int8_t  func_16(union U1  p_17, struct S3 * p_4372)
{ /* block id: 1317 */
    union U0 ***l_3427 = &p_4372->g_877;
    int32_t l_3428[7];
    int i;
    for (i = 0; i < 7; i++)
        l_3428[i] = 0x6FBF31ADL;
    (*p_4372->g_2089) ^= (~(l_3427 == l_3427));
    (*p_4372->g_2089) &= l_3428[0];
    return l_3428[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_2089 p_4372->g_62 p_4372->g_953 p_4372->g_1558 p_4372->g_819 p_4372->g_820 p_4372->g_877 p_4372->g_878 p_4372->g_46 p_4372->g_340 p_4372->g_132 p_4372->g_306 p_4372->g_1111 p_4372->g_633 p_4372->g_80 p_4372->g_549 p_4372->g_722 p_4372->g_160 p_4372->g_566 p_4372->g_136 p_4372->g_527 p_4372->g_1395 p_4372->g_1555 p_4372->g_1187 p_4372->g_475 p_4372->g_499 p_4372->g_1136 hip_const_6 p_4372->g_826 p_4372->g_719 p_4372->g_884 p_4372->g_481 p_4372->g_244.f2 p_4372->g_285 p_4372->g_1785 p_4372->g_1224 p_4372->g_1662 p_4372->g_940 p_4372->g_941 p_4372->g_56 p_4372->g_2024 p_4372->g_147 p_4372->g_2037 p_4372->g_2039 p_4372->g_1953 p_4372->g_944 p_4372->g_2509 p_4372->g_2510 p_4372->g_71 p_4372->g_77 p_4372->g_2025 p_4372->g_1542 p_4372->g_2349 p_4372->g_2900 p_4372->g_1727 p_4372->g_1671 p_4372->g_44 p_4372->g_2859 p_4372->g_244.f4 p_4372->g_2976 p_4372->g_163 p_4372->g_2269 p_4372->g_59 p_4372->g_2994 p_4372->g_13 p_4372->g_2977 p_4372->g_3421 p_4372->g_3423 p_4372->g_2905 p_4372->g_244 p_4372->g_244.f0 p_4372->g_31 p_4372->g_2677
 * writes: p_4372->g_244.f0 p_4372->g_13 p_4372->g_1308.f1 p_4372->g_62 p_4372->g_44 p_4372->g_77 p_4372->g_878 p_4372->g_31 p_4372->g_1031 p_4372->g_244.f2 p_4372->g_46 p_4372->g_970 p_4372->g_724 p_4372->g_718 p_4372->g_1308.f2 p_4372->g_132 p_4372->g_56 p_4372->g_658 p_4372->g_340 p_4372->g_136 p_4372->g_1308.f0 p_4372->g_1678 p_4372->g_1785 p_4372->g_71.f0 p_4372->g_1662 p_4372->g_59 p_4372->g_940 p_4372->g_2037 p_4372->g_1111 p_4372->g_37 p_4372->g_2349 p_4372->g_2509 p_4372->g_2510 p_4372->g_147 p_4372->g_1786 p_4372->g_2900 p_4372->g_1508 p_4372->g_244.f4 p_4372->g_306 p_4372->g_3007
 */
__device__ union U1  func_18(int32_t * p_19, uint32_t  p_20, int8_t  p_21, union U1  p_22, struct S3 * p_4372)
{ /* block id: 967 */
    ushort1 l_2581 = make_ushort1(65528UL);
    int4 l_2605 = make_int4(0xCE550D67L, 0xA44062ADL, 0xCE550D67L, 0xA44062ADL);
    int32_t l_2616 = (-1L);
    int32_t l_2619 = (-1L);
    ushort1 l_2624 = make_ushort1(0xCEBFL);
    int4 l_2647 = make_int4(0x536C9C7AL, (-4L), 0x536C9C7AL, (-4L));
    int4 l_2650 = make_int4(1L, 8L, 1L, 8L);
    ushort1 l_2662 = make_ushort1(0UL);
    ulong1 l_2666 = make_ulong1(0x13299D907B7BD0EELL);
    union U1 l_2706 = {1UL};
    int64_t l_2712 = 0L;
    union U2 l_2735 = {0x8C63BF3AL};
    char1 l_2738 = make_char1(0x48L);
    union U0 l_2746 = {1UL};
    int32_t ****l_2754 = &p_4372->g_819;
    int16_t l_2809 = 4L;
    uint64_t l_2840 = 18446744073709551612UL;
    union U0 ***l_2866 = &p_4372->g_877;
    short1 l_2867 = make_short1((-1L));
    uchar4 l_2913 = make_uchar4(0xB3L, 255UL, 0xB3L, 255UL);
    char2 l_2966 = make_char2(0x28L, (-9L));
    ulong4 l_2967 = make_ulong4(0x78C01603BB236FC4LL, 0x525D683260D01266LL, 0x78C01603BB236FC4LL, 0x525D683260D01266LL);
    uint16_t l_2978 = 0UL;
    int16_t l_2983[2];
    uint8_t l_2986 = 255UL;
    int32_t ****l_3008[10] = {&p_4372->g_752, &p_4372->g_752, &p_4372->g_752, &p_4372->g_752, &p_4372->g_752, &p_4372->g_752, &p_4372->g_752, &p_4372->g_752, &p_4372->g_752, &p_4372->g_752};
    uint32_t *l_3016 = nullptr;
    uint32_t *l_3017 = &l_2746.f3;
    uint32_t *l_3018 = nullptr;
    uint32_t *l_3019 = &p_4372->g_136[3];
    uint64_t *l_3027[2];
    int16_t *l_3028[1][5][1];
    int32_t l_3029[8] = {0xFE3C1BFCL, (-1L), 0xFE3C1BFCL, (-1L), 0xFE3C1BFCL, (-1L), 0xFE3C1BFCL, (-1L)};
    int8_t l_3030 = 0xADL;
    ushort4 l_3036 = make_ushort4(5UL, 0UL, 5UL, 0UL);
    ushort3 l_3040 = make_ushort3(0xBB37L, 0x5D64L, 0xBB37L);
    char3 l_3055 = make_char3(2L, 0x9BL, 2L);
    int64_t l_3063 = 1L;
    int16_t l_3066 = 1L;
    uint64_t l_3087 = 6UL;
    short2 l_3198 = make_short2(0x94B5L, 0x9E7EL);
    uint32_t ***l_3205 = &p_4372->g_1542[0];
    uchar3 l_3216 = make_uchar3(7UL, 0xF5L, 7UL);
    int64_t **l_3238 = &p_4372->g_1678[1][7];
    uchar1 l_3288 = make_uchar1(0xE9L);
    short2 l_3320 = make_short2(0x9B37L, 0L);
    int16_t ****l_3329[10][3] = {{nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}, {nullptr, &p_4372->g_1786[5], nullptr}};
    ushort2 l_3385 = make_ushort2(0x55E0L, 0x1B88L);
    int4 l_3422 = make_int4(0x399D01D4L, 0xDD70E944L, 0x399D01D4L, 0xDD70E944L);
    int32_t l_3424 = 0x6C56C466L;
    uint16_t l_3425 = 0x6C37L;
    int16_t *****l_3426 = &l_3329[5][1];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2983[i] = 0xFC62L;
    for (i = 0; i < 2; i++)
        l_3027[i] = &p_4372->g_2349;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
                l_3028[i][j][k] = &hip_const_5[2][0][2];
        }
    }
lbl_2749:
    for (p_4372->g_244.f0 = 0; (p_4372->g_244.f0 >= 22); p_4372->g_244.f0 = safe_add_func_int8_t_s_s(p_4372->g_244.f0, 9))
    { /* block id: 970 */
        union U0 ***l_2566 = &p_4372->g_877;
        union U0 ****l_2565 = &l_2566;
        int32_t l_2573 = 0xF560F144L;
        int32_t ****l_2595 = nullptr;
        int16_t *l_2600[8][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
        int i, j;
        for (p_4372->g_13 = 0; (p_4372->g_13 < 8); p_4372->g_13 = safe_add_func_int16_t_s_s(p_4372->g_13, 6))
        { /* block id: 973 */
            union U0 *****l_2567 = nullptr;
            union U0 *****l_2568 = &l_2565;
            int32_t l_2594 = 0x97B90E42L;
            int32_t l_2596 = 0xE4DA8CC6L;
            uint64_t *l_2597 = &p_4372->g_1308[6][1][2].f1;
            uint64_t *l_2598[7][4] = {{&p_4372->g_2349, nullptr, &p_4372->g_2349, nullptr}, {&p_4372->g_2349, nullptr, &p_4372->g_2349, nullptr}, {&p_4372->g_2349, nullptr, &p_4372->g_2349, nullptr}, {&p_4372->g_2349, nullptr, &p_4372->g_2349, nullptr}, {&p_4372->g_2349, nullptr, &p_4372->g_2349, nullptr}, {&p_4372->g_2349, nullptr, &p_4372->g_2349, nullptr}, {&p_4372->g_2349, nullptr, &p_4372->g_2349, nullptr}};
            union U0 *****l_2614[6] = {nullptr, &l_2565, nullptr, &l_2565, nullptr, &l_2565};
            uint8_t l_2629 = 0x1DL;
            uint8_t l_2631 = 255UL;
            int i, j;
            (*l_2568) = l_2565;
            if ((safe_sub_func_uint64_t_u_u(p_20, (p_21 | ((l_2573 | (l_2596 = ((*l_2597) = (safe_lshift_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u((safe_unary_minus_func_int64_t_s(((safe_sub_func_uint16_t_u_u((make_ushort2(l_2581.x, l_2581.x).x < ((p_20 ^ (*p_4372->g_2089)) != ((safe_mul_func_int8_t_s_s(p_4372->g_953.x, (p_20 , (safe_div_func_int32_t_s_s((0x91L >= (safe_rshift_func_int32_t_s_s((((((safe_mul_func_uint32_t_u_u((safe_lshift_func_uint32_t_u_u(((l_2594 &= ((safe_mul_func_int32_t_s_s(p_21, 0x922488DCL)) , p_22.f0)) | 0xDCDDA37A55EF5714LL), p_22.f0)), p_22.f0)) || 0x3D5CAB09L) , l_2595) == &p_4372->g_752) | l_2596), 16))), 0xFD8B9102L))))) != p_22.f0))), 0x283DL)) > 0xAE4079D0L))), l_2573)) ^ 0x40345B868E71119DLL), p_4372->g_1558.y))))) == p_21)))))
            { /* block id: 978 */
                int16_t **l_2601 = &l_2600[0][0];
                l_2573 = ((*p_4372->g_2089) ^= (((*l_2601) = ((make_char4(p_4372->g_2599.w, p_4372->g_2599.w, p_4372->g_2599.w, p_4372->g_2599.w).y , 6UL) , l_2600[5][0])) != nullptr));
            }
            else
            { /* block id: 982 */
                int8_t l_2632 = 0xC2L;
                if (l_2594)
                    break;
                for (p_4372->g_62 = 14; (p_4372->g_62 <= 16); p_4372->g_62 = safe_add_func_int8_t_s_s(p_4372->g_62, 5))
                { /* block id: 986 */
                    union U0 *l_2610 = &p_4372->g_244;
                    int32_t l_2611 = 0xB5CAEFE8L;
                    int64_t *l_2615 = nullptr;
                    uint32_t *****l_2617[2][7] = {{&p_4372->g_2024, &p_4372->g_1694, &p_4372->g_2024, &p_4372->g_1694, &p_4372->g_2024, &p_4372->g_1694, &p_4372->g_2024}, {&p_4372->g_2024, &p_4372->g_1694, &p_4372->g_2024, &p_4372->g_1694, &p_4372->g_2024, &p_4372->g_1694, &p_4372->g_2024}};
                    uint32_t *****l_2618 = &p_4372->g_1694;
                    long1 l_2627 = make_long1(0xECEA4C26859DA2E8LL);
                    int32_t *l_2654[9] = {nullptr, &p_4372->g_37, nullptr, &p_4372->g_37, nullptr, &p_4372->g_37, nullptr, &p_4372->g_37, nullptr};
                    int i, j;
                    if (((((make_int4(0x674F3025L, 0xC5C91DC3L, 1L, 0xECAD03DFL) | make_int4(p_4372->g_2604.z, p_4372->g_2604.z, p_4372->g_2604.z, p_4372->g_2604.z))) ^ ((make_int4(l_2605.y, l_2605.y, l_2605.y, l_2605.y) ^ ((make_int4(9L, l_2605.y, (-4L), (safe_sub_func_int8_t_s_s((((l_2610 != (****l_2568)) , l_2611) < ((*p_4372->g_877) != nullptr)), (safe_lshift_func_int32_t_s_u((((l_2616 |= (nullptr != l_2614[4])) , ((((((l_2617[0][5] != l_2618) || 0xEF038019L) >= p_20) <= p_21) <= p_21) || l_2619)) <= 0x7167687D42607D7ELL), 11))))) ^ make_int4(0xC1EDA1F9L, 0xC1EDA1F9L, 0xC1EDA1F9L, 0xC1EDA1F9L))))))).z)
                    { /* block id: 988 */
                        int32_t l_2620 = 0x7D0532F5L;
                        union U2 **l_2630 = &p_4372->g_941;
                        uint8_t *l_2633 = nullptr;
                        uint8_t *l_2634 = nullptr;
                        uint8_t *l_2635 = &p_4372->g_1308[6][1][2].f2;
                        int32_t *l_2636 = &p_4372->g_44[1][2];
                        (*l_2636) = make_int1((((((*l_2635) = ((l_2620 | (((((safe_unary_minus_func_int32_t_s(((*p_4372->g_941) , (safe_div_func_uint16_t_u_u(make_ushort1(l_2624.x).x, (((safe_rshift_func_uint8_t_u_u((((((*p_4372->g_878) , p_20) <= 8UL) | (p_22.f0 <= (!(l_2629 = ((make_long1(l_2627.x) ^ make_long1(p_4372->g_2628.x))).x)))) > (l_2611 = (nullptr != l_2630))), l_2631)) & l_2627.x) | p_21)))))) != l_2632) | l_2620) <= p_22.f0) | l_2573)) | l_2632)) && l_2605.z) == 1L) , 0xCC0F8114L)).x;
                    }
                    else
                    { /* block id: 993 */
                        int32_t l_2637 = (-10L);
                        int32_t *l_2638 = nullptr;
                        int32_t *l_2639 = nullptr;
                        int32_t *l_2640 = nullptr;
                        l_2605.z = (p_22 , l_2637);
                    }
                    l_2647.z = ((l_2594 = (safe_add_func_uint8_t_u_u(l_2627.x, p_22.f0))) == ((safe_div_func_uint32_t_u_u(((make_uint3(p_4372->g_2645.y, p_4372->g_2645.y, p_4372->g_2645.y) ^ make_uint3(p_4372->g_2646.y, p_4372->g_2646.y, p_4372->g_2646.y))).x, ((make_int3(l_2647.y, l_2647.y, l_2647.y) ^ ((safe_div(make_int3(l_2573, 0x0A794B48L, 0x8DA96B49L), make_int3(l_2650.z, l_2650.z, l_2650.z)))))).y)) != make_ulong3(p_4372->g_2651.x, p_4372->g_2651.x, p_4372->g_2651.x).z));
                    for (l_2619 = 0; (l_2619 <= 13); l_2619 = safe_add_func_uint64_t_u_u(l_2619, 4))
                    { /* block id: 1000 */
                        (**p_4372->g_819) = &l_2573;
                        (**l_2566) = (**l_2566);
                    }
                    l_2573 = l_2632;
                }
            }
        }
    }
    if (((*p_4372->g_2089) = 0xC7528070L))
    { /* block id: 1010 */
        uint64_t l_2657 = 0x875C8065E8BC6E10LL;
        int32_t l_2665 = 0x6A46193CL;
        int8_t l_2667 = 0L;
        int32_t ****l_2674 = &p_4372->g_752;
        for (p_4372->g_31 = 0; (p_4372->g_31 < (-23)); --p_4372->g_31)
        { /* block id: 1013 */
            ushort3 l_2663 = make_ushort3(0x28C1L, 0x5C82L, 0x28C1L);
            int i;
            if (l_2657)
                break;
            (*p_4372->g_2089) &= (safe_lshift_func_int8_t_s_u((l_2665 = (safe_lshift_func_uint16_t_u_u(((make_ushort4(l_2662.x, l_2662.x, l_2662.x, l_2662.x) | make_ushort4(l_2663.x, l_2663.x, l_2663.x, l_2663.x))).x, (safe_unary_minus_func_int64_t_s((-6L)))))), 0));
        }
        if ((l_2667 = (p_22.f0 && make_ulong2(18446744073709551609UL, make_ulong4(l_2666.x, l_2666.x, l_2666.x, l_2666.x).x).y)))
        { /* block id: 1019 */
            return p_22;
        }
        else
        { /* block id: 1021 */
            int3 l_2668 = make_int3(1L, (-3L), 1L);
            int i;
            if (make_int4(l_2668.y, l_2668.y, l_2668.y, l_2668.y).y)
            { /* block id: 1022 */
                int16_t l_2669 = 6L;
                union U1 l_2670 = {65533UL};
                (**p_4372->g_819) = func_23(p_22.f0, p_22.f0, l_2669, &l_2616, p_4372);
                return l_2670;
            }
            else
            { /* block id: 1025 */
                int32_t l_2676 = 0x787ED3A3L;
                for (p_4372->g_13 = 0; (p_4372->g_13 == (-27)); --p_4372->g_13)
                { /* block id: 1028 */
                    uint32_t l_2673[4][3][1] = {{{0xE3F85486L}, {0xE3F85486L}, {0xE3F85486L}}, {{0xE3F85486L}, {0xE3F85486L}, {0xE3F85486L}}, {{0xE3F85486L}, {0xE3F85486L}, {0xE3F85486L}}, {{0xE3F85486L}, {0xE3F85486L}, {0xE3F85486L}}};
                    int32_t *l_2675 = &p_4372->g_37;
                    int i, j, k;
                    l_2676 |= ((*l_2675) = (&p_4372->g_752 == (((*p_4372->g_2089) = ((nullptr != (*p_4372->g_2509)) <= l_2673[0][1][0])) , l_2674)));
                }
                return p_4372->g_71;
            }
        }
    }
    else
    { /* block id: 1036 */
        int4 l_2678 = make_int4(0x77EAF03FL, (-8L), 0x77EAF03FL, (-8L));
        ulong4 l_2683 = make_ulong4(9UL, 1UL, 9UL, 1UL);
        int1 l_2690 = make_int1(0xDBA61A08L);
        union U0 ***l_2696[10] = {&p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877};
        union U0 ****l_2695[1][5][6] = {{{&l_2696[7], &l_2696[7], nullptr, &l_2696[4], &l_2696[7], &l_2696[6]}, {&l_2696[7], &l_2696[7], nullptr, &l_2696[4], &l_2696[7], &l_2696[6]}, {&l_2696[7], &l_2696[7], nullptr, &l_2696[4], &l_2696[7], &l_2696[6]}, {&l_2696[7], &l_2696[7], nullptr, &l_2696[4], &l_2696[7], &l_2696[6]}, {&l_2696[7], &l_2696[7], nullptr, &l_2696[4], &l_2696[7], &l_2696[6]}}};
        uint32_t *l_2703 = &p_4372->g_147;
        long2 l_2739 = make_long2(0xE9A8E7D506395895LL, 0L);
        ushort4 l_2785 = make_ushort4(0x4EE7L, 2UL, 0x4EE7L, 2UL);
        long4 l_2811 = make_long4(1L, (-1L), 1L, (-1L));
        uint8_t l_2849 = 0x00L;
        int3 l_2871 = make_int3(0xB0D5BB70L, 0xA6C061DFL, 0xB0D5BB70L);
        union U1 l_2893 = {0x6C35L};
        int32_t *l_2894 = &p_4372->g_44[1][2];
        uint64_t l_2963 = 0UL;
        uint1 l_2970 = make_uint1(4UL);
        uint32_t l_2973[10] = {18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL};
        long3 l_2984 = make_long3(0x8C4F3B6DA95FB85ELL, 0x17776C1EA144AF45LL, 0x8C4F3B6DA95FB85ELL);
        int i, j, k;
        if (((make_int3(p_4372->g_2677.x, p_4372->g_2677.x, p_4372->g_2677.x) ^ ((safe_unary_minus(make_int3(l_2678.w, l_2678.w, l_2678.w)))))).z)
        { /* block id: 1037 */
lbl_2723:
            (*p_4372->g_2089) ^= p_20;
        }
        else
        { /* block id: 1039 */
            uint32_t *l_2701 = &p_4372->g_244.f3;
            uint32_t *l_2702 = &p_4372->g_147;
            uint32_t *l_2704 = nullptr;
            int32_t l_2705 = (-6L);
            int32_t *l_2707 = nullptr;
            int32_t *l_2708 = &p_4372->g_1178[5][1];
            int32_t *l_2709 = nullptr;
            int32_t *l_2710[4] = {nullptr, &p_4372->g_1178[0][3], nullptr, &p_4372->g_1178[0][3]};
            uint64_t l_2713 = 0xE9E3EAB4CB246487LL;
            int i;
            (*p_4372->g_820) = p_19;
            ++l_2713;
            for (p_21 = 14; (p_21 < 28); p_21 = safe_add_func_uint32_t_u_u(p_21, 9))
            { /* block id: 1046 */
                for (l_2706.f0 = 0; (l_2706.f0 < 52); ++l_2706.f0)
                { /* block id: 1049 */
                    uint32_t l_2722 = 18446744073709551615UL;
                    for (p_4372->g_31 = 0; (p_4372->g_31 > (-17)); p_4372->g_31 = safe_sub_func_int8_t_s_s(p_4372->g_31, 1))
                    { /* block id: 1052 */
                        p_19 = (**p_4372->g_819);
                    }
                    if (l_2605.z)
                    { /* block id: 1055 */
                        (*p_4372->g_877) = (*p_4372->g_877);
                    }
                    else
                    { /* block id: 1057 */
                        if (l_2624.x)
                            break;
                        (**p_4372->g_819) = p_19;
                        if (l_2722)
                            continue;
                        (**p_4372->g_819) = (**p_4372->g_819);
                    }
                }
                return p_22;
            }
            if (p_4372->g_147)
                goto lbl_2723;
        }
        for (p_4372->g_2349 = 1; (p_4372->g_2349 <= 5); p_4372->g_2349 += 1)
        { /* block id: 1070 */
            int32_t *l_2724 = nullptr;
            uint64_t **l_2727 = &p_4372->g_2510[3][2][4];
            int32_t ****l_2757 = &p_4372->g_819;
            ulong2 l_2762 = make_ulong2(1UL, 0x47F5B1BC7470A13FLL);
            union U0 l_2766 = {65534UL};
            int32_t l_2777[6];
            uint16_t l_2778 = 7UL;
            ushort1 l_2789 = make_ushort1(0x2470L);
            int8_t l_2807 = 9L;
            union U2 l_2852 = {1L};
            int16_t ***l_2880[9][7][4] = {{{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}, {{&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}, {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724}}};
            ulong2 l_2995 = make_ulong2(0x4CF1AECA89204331LL, 0x2D294DC3635BADC6LL);
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_2777[i] = 0xAA8C5F9FL;
            (**p_4372->g_819) = l_2724;
            if (l_2666.x)
            { /* block id: 1072 */
                uint64_t ***l_2725 = nullptr;
                uint64_t ***l_2726 = &p_4372->g_2509;
                int32_t l_2732[5][7][2] = {{{(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}}, {{(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}}, {{(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}}, {{(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}}, {{(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}, {(-1L), (-6L)}}};
                int32_t l_2768[10] = {0x55FB5E59L, 0xEDE77162L, 0x55FB5E59L, 0xEDE77162L, 0x55FB5E59L, 0xEDE77162L, 0x55FB5E59L, 0xEDE77162L, 0x55FB5E59L, 0xEDE77162L};
                int32_t *l_2769 = &p_4372->g_62;
                int32_t *l_2770 = nullptr;
                int32_t *l_2771 = nullptr;
                int32_t *l_2772 = nullptr;
                int32_t *l_2773 = &l_2732[2][0][1];
                int32_t *l_2774 = &l_2616;
                int32_t *l_2775 = nullptr;
                int32_t *l_2776[4] = {&l_2768[4], &l_2768[4], &l_2768[4], &l_2768[4]};
                int16_t l_2841 = 4L;
                int16_t *****l_2870 = &p_4372->g_1785;
                uint16_t l_2872 = 7UL;
                int64_t l_2873[6] = {1L, 1L, 1L, 1L, 1L, 1L};
                union U2 l_2881 = {9L};
                uint16_t l_2889 = 1UL;
                int i, j, k;
                if ((((*l_2726) = &p_4372->g_2510[2][4][5]) != l_2727))
                { /* block id: 1074 */
                    l_2616 ^= make_int4(0x7D2D1877L, (0x49L & (((safe_mul_func_uint64_t_u_u((((-10L) && p_22.f0) <= l_2690.x), l_2732[2][0][1])) == ((safe_mul_func_uint32_t_u_u((l_2735 , (+(0UL == (((~((((safe_sub(((make_char1(0xE5L) | make_char1(0xBBL))), make_char1((-1L))))) ^ make_char1(l_2738.x))))).x , make_long1(l_2739.x).x)))), (safe_sub_func_int16_t_s_s((((safe_mod_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((l_2746 , ((safe_sub_func_uint8_t_u_u(0x98L, l_2732[3][4][0])) || 0x14DD8C84FEFC8152LL)), 0xC8L)) != 0x9C91L), p_4372->g_718)) > 0L) || (-5L)), p_21)))) != 7L)) || 0L)), 0xC7BA67EFL, 0x24FD2C0EL).w;
                    (**p_4372->g_819) = p_19;
                }
                else
                { /* block id: 1077 */
                    int32_t ***l_2763 = &p_4372->g_820;
                    uint16_t *l_2767[8];
                    int i;
                    for (i = 0; i < 8; i++)
                        l_2767[i] = nullptr;
                    if (((*p_4372->g_2089) = l_2650.y))
                    { /* block id: 1079 */
                        if (l_2732[2][0][1])
                            break;
                        if ((*p_4372->g_2089))
                            break;
                        if (p_4372->g_2039)
                            goto lbl_2749;
                        (*p_4372->g_2089) = (-3L);
                    }
                    else
                    { /* block id: 1084 */
                        uint32_t *l_2755 = nullptr;
                        uint32_t *l_2756[5][6][7] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                        char4 l_2761 = make_char4(8L, 0x59L, 8L, 0x59L);
                        int i, j, k;
                        (*p_4372->g_2089) = (((l_2690.x || (safe_add_func_uint64_t_u_u((l_2754 != ((p_20 = (nullptr == (*p_4372->g_820))) , l_2757)), ((((**l_2726) = (*l_2727)) == &hip_const_1[8][2][4]) && (((safe_lshift(make_char2(p_4372->g_2760.x, p_4372->g_2760.x), make_char2(8, 8)))).x != make_char1(l_2761.x).x))))) , make_ulong3(l_2762.y, l_2762.y, l_2762.y).x) & (l_2763 == nullptr));
                        (*p_4372->g_2089) ^= 1L;
                    }
                    (*p_4372->g_2089) &= (safe_add_func_int16_t_s_s((l_2766 , l_2732[0][5][1]), (l_2768[4] |= p_4372->g_1224.x)));
                }
                ++l_2778;
                for (p_4372->g_62 = 0; (p_4372->g_62 <= 5); p_4372->g_62 += 1)
                { /* block id: 1096 */
                    return p_22;
                }
                for (p_4372->g_147 = 0; (p_4372->g_147 <= 5); p_4372->g_147 += 1)
                { /* block id: 1101 */
                    ushort1 l_2788 = make_ushort1(0xE515L);
                    ulong2 l_2800 = make_ulong2(0xB87E82EBD12A2DD2LL, 2UL);
                    uint8_t **l_2808 = &p_4372->g_2037[1];
                    int32_t l_2810 = (-2L);
                    int32_t l_2843 = (-9L);
                    int32_t l_2844 = 0L;
                    int32_t l_2845 = 1L;
                    int32_t l_2846 = (-1L);
                    int32_t l_2847 = (-8L);
                    int32_t l_2848 = 0x06974B60L;
                    ushort2 l_2868 = make_ushort2(0xCCB3L, 0UL);
                    union U1 l_2869 = {65533UL};
                    int16_t ***l_2883 = &p_4372->g_724;
                    int16_t l_2888 = 5L;
                    int i;
                    if ((safe_mul_func_uint16_t_u_u((!((safe_lshift(make_ushort1(l_2785.z), ((((safe_sub(make_ushort1(l_2788.x), make_ushort1(l_2789.x)))) ^ make_ushort1(((safe_div_func_uint32_t_u_u((p_20 = ((safe_mul_func_uint8_t_u_u(p_20, (safe_lshift_func_int16_t_s_s((l_2788.x ^ (safe_mul_func_int64_t_s_s((l_2788.x != ((*p_4372->g_941) , ((p_22 , (safe_rshift_func_uint64_t_u_u(make_ulong4(l_2800.y, l_2800.y, l_2800.y, l_2800.y).y, ((l_2810 = ((+(safe_mod_func_uint8_t_u_u(((((0xCFL >= (safe_lshift_func_uint16_t_u_s(((make_ushort3((((make_int4(0x45220D13L, (-1L), l_2800.y, make_int2((-1L), 0xC13CFCE3L).x).w > (((safe_add_func_int16_t_s_s((0xBA2E441B9BA5D540LL != l_2690.x), l_2807)) , 0x5FF55982513B736DLL) && p_20)) || p_21) & p_20), 0x2A53L, 0x1497L) | make_ushort3(0x5A62L, 0x5A62L, 0x5A62L))).x, 13))) && 0xA7D3L) , nullptr) != l_2808), l_2809))) < 4294967295UL)) && p_20)))) && p_22.f0))), p_22.f0))), l_2690.x)))) , p_20)), 1L)) | p_22.f0))))))).x), l_2788.x)))
                    { /* block id: 1104 */
                        char3 l_2818 = make_char3(0x44L, 0xE0L, 0x44L);
                        char4 l_2823 = make_char4((-4L), 7L, (-4L), 7L);
                        union U1 *l_2824 = &p_4372->g_71;
                        union U1 **l_2825 = &p_4372->g_1014;
                        union U1 **l_2826 = &l_2824;
                        uint32_t *l_2834 = &l_2766.f3;
                        uint8_t *l_2835 = &p_4372->g_244.f2;
                        uint8_t *l_2836 = &p_4372->g_1308[6][1][2].f4;
                        uint8_t *l_2837 = nullptr;
                        uint8_t *l_2838 = nullptr;
                        uint8_t *l_2839 = nullptr;
                        int32_t l_2842[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_2842[i] = 2L;
                        (*l_2769) ^= make_int2(((((make_long1(l_2811.y).x < ((safe_div_func_int64_t_s_s((-3L), (safe_sub_func_uint16_t_u_u(((make_ushort4((safe_div_func_int8_t_s_s(make_char1(l_2818.x).x, ((safe_rshift_func_int16_t_s_s(((((make_char4(l_2823.x, l_2823.x, l_2823.x, l_2823.x) ^ ((make_char4((((*l_2826) = l_2824) != nullptr), ((!((((safe_rshift(make_short2((-9L), (((&hip_const_3 == &hip_const_4) ^ ((make_ulong1((make_uchar2(0x82L, (l_2678.x ^= (((safe_sub_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((l_2809 && (l_2811.x , p_22.f0)) ^ ((*l_2834) = (((make_char2(p_4372->g_2833.x, p_4372->g_2833.x).y > (p_22.f0 || l_2788.x)) , 1L) | p_21))), p_22.f0)), 1L)) && l_2800.y) >= p_4372->g_992.x))).y >= p_4372->g_2677.y)).x , 0x6AB8L) < 0x339DL)) >= 4294967295UL)), make_short2(6L, 6L)))) ^ make_short2(0xE3FFL, 0xE3FFL))).y) ^ p_21), p_4372->g_481.x, l_2800.x) | make_char4(9L, 9L, 9L, 9L))))).z <= l_2788.x) , l_2840), p_22.f0)) | 0UL))), 1UL, 0xE804L, p_4372->g_499.x) ^ make_ushort4(1UL, 1UL, 1UL, 1UL))).y, p_4372->g_718)))) == 65533UL)) , 1L) | l_2818.z) || p_4372->g_357.w), (-1L)).y;
                        --l_2849;
                        return p_22;
                    }
                    else
                    { /* block id: 1111 */
                        union U1 l_2882 = {1UL};
                        uint32_t l_2890[10][7] = {{0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}, {0x6A2577D5L, 0xCF0DE7E8L, 18446744073709551611UL, 0UL, 0UL, 18446744073709551611UL, 0xCF0DE7E8L}};
                        int i, j;
                        l_2873[0] = ((l_2852 , ((safe_sub_func_uint32_t_u_u((safe_lshift_func_int32_t_s_s(((((l_2650.y = ((safe_mul(((make_int1(make_int2(p_4372->g_2859.y, p_4372->g_2859.y).y) | make_int1((safe_unary_minus_func_uint16_t_u((safe_add_func_int64_t_s_s(((make_long1(0xB26BB63D2ACF57D3LL) | make_long1(p_4372->g_2863.x))).x, (((**p_4372->g_877) , (!(safe_sub_func_int16_t_s_s((l_2866 == &p_4372->g_877), ((make_short2(l_2867.x, l_2867.x).x && make_ushort4(l_2868.x, l_2868.x, l_2868.x, l_2868.x).y) | p_21))))) , (&p_4372->g_1785 == (l_2869 , l_2870)))))))))), make_int1(l_2871.x)))).x) && (l_2846 >= p_22.f0)) , nullptr) != (**p_4372->g_2024)), 12)), l_2872)) & 0x06C7B2707FE36E63LL)) ^ p_22.f0);
                        (***l_2754) = func_23(l_2800.x, ((*l_2769) = ((safe_lshift_func_uint8_t_u_u((l_2678.z != (((safe_div_func_uint8_t_u_u((0x0E84L && (safe_rshift_func_int16_t_s_s((p_22.f1 = ((p_4372->g_1786[p_4372->g_2349] = l_2880[7][2][3]) != ((l_2881 , l_2882) , l_2883))), (safe_rshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((l_2882.f0 <= ((*p_4372->g_941) , 0x4B64L)), l_2888)), l_2739.x))))), p_20)) >= l_2811.w) ^ p_21)), l_2888)) , l_2889)), p_20, (*p_4372->g_820), p_4372);
                        l_2890[0][5]--;
                        return l_2893;
                    }
                }
            }
            else
            { /* block id: 1122 */
                uint16_t l_2897 = 0x7312L;
                uint8_t **l_2901 = &p_4372->g_2037[1];
                uint8_t **l_2902 = &p_4372->g_2900[7];
                int8_t *l_2908[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                int32_t l_2918 = 0x30BA3E85L;
                int32_t l_2920[6][9] = {{1L, 6L, 0x105BD58EL, 0x34A5BAE8L, 0L, 0L, 0xEA7FBE69L, (-4L), 0xEA7FBE69L}, {1L, 6L, 0x105BD58EL, 0x34A5BAE8L, 0L, 0L, 0xEA7FBE69L, (-4L), 0xEA7FBE69L}, {1L, 6L, 0x105BD58EL, 0x34A5BAE8L, 0L, 0L, 0xEA7FBE69L, (-4L), 0xEA7FBE69L}, {1L, 6L, 0x105BD58EL, 0x34A5BAE8L, 0L, 0L, 0xEA7FBE69L, (-4L), 0xEA7FBE69L}, {1L, 6L, 0x105BD58EL, 0x34A5BAE8L, 0L, 0L, 0xEA7FBE69L, (-4L), 0xEA7FBE69L}, {1L, 6L, 0x105BD58EL, 0x34A5BAE8L, 0L, 0L, 0xEA7FBE69L, (-4L), 0xEA7FBE69L}};
                long4 l_2941 = make_long4(0x8DD3FEF6509AE2A0LL, (-6L), 0x8DD3FEF6509AE2A0LL, (-6L));
                int i, j;
                (*p_4372->g_820) = p_19;
                (*p_4372->g_820) = l_2894;
                if (((safe_mod_func_int8_t_s_s(l_2897, (safe_mul_func_uint8_t_u_u(((((*l_2902) = ((*l_2901) = p_4372->g_2900[7])) == nullptr) , ((safe_add_func_int16_t_s_s(make_short1((make_char2(p_4372->g_2905.y, p_4372->g_2905.y).x >= (p_21 = (safe_lshift_func_uint64_t_u_s(p_21, 9))))).x, (safe_sub_func_int8_t_s_s(p_22.f0, p_4372->g_1727.x)))) <= (p_4372->g_1671.y < (!(****l_2757))))), ((safe_mul(((make_uchar4(l_2913.w, l_2913.w, l_2913.w, l_2913.w) ^ make_uchar4(0x10L, 0x1BL, 0UL, 0xDFL))), make_uchar4(3UL, 3UL, 3UL, 3UL)))).z)))) == 0x70D1L))
                { /* block id: 1128 */
                    for (p_4372->g_244.f2 = (-8); (p_4372->g_244.f2 < 54); ++p_4372->g_244.f2)
                    { /* block id: 1131 */
                        return p_22;
                    }
                }
                else
                { /* block id: 1134 */
                    int64_t l_2921[1][2][8] = {{{(-1L), (-1L), 0x6C0B807D921A67E3LL, 0x60EB4568BE0C9C8ELL, 0xEC4FB679F53108C0LL, 0x60EB4568BE0C9C8ELL, 0x6C0B807D921A67E3LL, (-1L)}, {(-1L), (-1L), 0x6C0B807D921A67E3LL, 0x60EB4568BE0C9C8ELL, 0xEC4FB679F53108C0LL, 0x60EB4568BE0C9C8ELL, 0x6C0B807D921A67E3LL, (-1L)}}};
                    int32_t l_2922 = 0x3B63364AL;
                    int i, j, k;
                    if ((**p_4372->g_820))
                        break;
                    for (p_4372->g_1508 = 0; (p_4372->g_1508 == 20); p_4372->g_1508++)
                    { /* block id: 1138 */
                        int32_t *l_2919[1];
                        uint32_t l_2923[6] = {1UL, 1UL, 0x5288289BL, 1UL, 1UL, 0x5288289BL};
                        uchar2 l_2944 = make_uchar2(1UL, 0x2FL);
                        uint16_t l_2946 = 65535UL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_2919[i] = nullptr;
                        l_2923[3]--;
                        (*p_4372->g_2089) = (safe_div_func_uint16_t_u_u(((safe_rshift_func_int64_t_s_u((make_short4(p_4372->g_2930.x, p_4372->g_2930.x, p_4372->g_2930.x, p_4372->g_2930.x).x != (safe_div_func_uint64_t_u_u((safe_add_func_int16_t_s_s(((*l_2894) | p_4372->g_2859.x), (l_2918 == ((safe_lshift_func_int64_t_s_s(((safe_rshift(((safe_add(make_long1(l_2941.y), make_long1(make_long2((-8L), (((safe_mul_func_uint64_t_u_u(p_20, (make_uchar2(l_2944.y, l_2944.y).y , make_ulong3(p_4372->g_2945.w, p_4372->g_2945.w, p_4372->g_2945.w).z))) , nullptr) != nullptr)).x)))), make_long1(64)))).x, (****l_2754))) , (!((((p_22.f0 ^ 0UL) , 1UL) >= p_21) > 0x8855EAFEL)))))), (-2L)))), 2)) <= 4L), l_2946));
                    }
                }
                for (p_4372->g_244.f4 = 0; (p_4372->g_244.f4 != 59); ++p_4372->g_244.f4)
                { /* block id: 1145 */
                    char3 l_2962 = make_char3((-1L), 1L, (-1L));
                    int32_t l_2980 = (-1L);
                    int32_t l_2985[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_2985[i] = 9L;
                    if (((safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(p_4372->g_46.x, (safe_rshift_func_uint64_t_u_s(0x08C427E2CCE2D21ELL, 38)))), (safe_lshift_func_int8_t_s_s(((((make_char2(0xF5L, (safe_mul_func_uint64_t_u_u(p_20, ((safe_unary_minus_func_uint8_t_u((0x3F500D3DL || (****l_2757)))) | 1L)))) ^ make_char2(1L, 0xA6L))) ^ make_char2(((safe_mod(make_char3(0x15L, 0L, (l_2963 = (p_4372->g_306.x = make_char2(l_2962.y, l_2962.y).y))), ((make_char3((safe_rshift_func_uint64_t_u_s(p_22.f0, 33)), p_20, 0x1BL) ^ ((make_char3(0x26L, 0x4AL, 1L) ^ make_char3(9L, make_char4(l_2966.x, l_2966.x, l_2966.x, l_2966.x).x, (-3L))))))))).z, 3L))).y, 1)))) && (((make_ulong4(0x09DB708B58253B84LL, 0xCA5B4C68BA13695CLL, 0UL, 0xAE2E4B7AC0259F1ALL) | make_ulong4(l_2967.x, l_2967.x, l_2967.x, l_2967.x))).w != (safe_mod_func_int64_t_s_s((****l_2757), p_22.f0)))))
                    { /* block id: 1148 */
                        uint16_t *l_2979[2];
                        int16_t ****l_2981 = &l_2880[7][2][3];
                        int32_t *l_2982[1][9] = {{&p_4372->g_62, &p_4372->g_62, &l_2980, &p_4372->g_62, &p_4372->g_62, &l_2980, &p_4372->g_62, &p_4372->g_62, &l_2980}};
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_2979[i] = &l_2778;
                        l_2981 = ((p_20 , ((make_uint4(l_2970.x, l_2970.x, l_2970.x, l_2970.x) & ((make_uint4((safe_div_func_uint16_t_u_u(l_2973[5], (l_2980 |= ((p_21 = (((0UL != (l_2978 = ((safe_mod_func_int64_t_s_s((((p_4372->g_71 , nullptr) == (p_20 , p_4372->g_2976)) & ((nullptr != (*p_4372->g_819)) != p_4372->g_944.x)), 0x224D94615EE7CE29LL)) >= (****l_2754)))) != p_4372->g_163.y) < 0x46L)) >= l_2918)))), 0x0F73527CL, p_4372->g_2269.x, 0x448F7CB7L) | make_uint4(0xE4C9DB12L, 0xE4C9DB12L, 0xE4C9DB12L, 0xE4C9DB12L))))).y) , &l_2880[4][6][2]);
                        ++l_2986;
                        return p_22;
                    }
                    else
                    { /* block id: 1155 */
                        int32_t l_2989[7][5] = {{0x2A1DF7EDL, (-3L), 0x5824D477L, 0L, 0xD2B2EC86L}, {0x2A1DF7EDL, (-3L), 0x5824D477L, 0L, 0xD2B2EC86L}, {0x2A1DF7EDL, (-3L), 0x5824D477L, 0L, 0xD2B2EC86L}, {0x2A1DF7EDL, (-3L), 0x5824D477L, 0L, 0xD2B2EC86L}, {0x2A1DF7EDL, (-3L), 0x5824D477L, 0L, 0xD2B2EC86L}, {0x2A1DF7EDL, (-3L), 0x5824D477L, 0L, 0xD2B2EC86L}, {0x2A1DF7EDL, (-3L), 0x5824D477L, 0L, 0xD2B2EC86L}};
                        int i, j;
                        (****l_2754) = (**p_4372->g_820);
                        (*p_4372->g_2089) |= ((*l_2894) , l_2989[0][4]);
                    }
                }
            }
            for (p_4372->g_59 = (-25); (p_4372->g_59 >= (-28)); p_4372->g_59 = safe_sub_func_int32_t_s_s(p_4372->g_59, 7))
            { /* block id: 1163 */
                uint32_t l_3000 = 0xBDD8ECBCL;
                uint32_t *l_3001 = nullptr;
                uint32_t *l_3002 = nullptr;
                uint32_t *l_3003[4] = {&p_4372->g_136[3], &p_4372->g_1555[1][0], &p_4372->g_136[3], &p_4372->g_1555[1][0]};
                int64_t *l_3004 = nullptr;
                int64_t *l_3005 = nullptr;
                int64_t *l_3006[8][5][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
                int32_t l_3009 = 0x686E37F3L;
                int i, j, k;
                (*l_2894) ^= ((safe_div_func_uint32_t_u_u(((((*p_4372->g_819) != &p_19) , ((make_ulong1(p_4372->g_2994) ^ make_ulong1(l_2995.y))).x) <= (p_4372->g_3007[0] = (safe_mul_func_uint32_t_u_u(4294967287UL, (p_20 = ((safe_mod_func_uint8_t_u_u(0x5FL, p_21)) | (l_3000 == p_22.f0))))))), (((l_3009 = (nullptr != l_3008[2])) < 0xAA0782D0L) && 0xF3L))) < p_4372->g_1671.x);
            }
        }
        if (p_4372->g_13)
            goto lbl_2723;
    }
    if (((make_char2(0x47L, 0xD5L).x && (((((safe_add(((safe_lshift(make_ushort2((((*p_4372->g_2089) = (((*l_3019) &= (p_21 == 0x5F52970E382BA08CLL)) == (!((l_2650.x = ((((p_22.f0 > ((*p_4372->g_2509) == &l_2840)) <= ((safe_mul_func_uint32_t_u_u(p_21, l_2581.x)) < (((l_2605.x ^= ((l_2616 ^= ((safe_unary_minus_func_int32_t_s((p_20 ^ l_2986))) && 1UL)) >= p_22.f0)) || l_2986) >= l_3029[1]))) , p_22.f0) , p_20)) >= 0x0E8149BBE1B436CBLL)))) || p_20), l_3030), make_ushort2(0xF6C6L, 0xF6C6L)))), make_ushort2(0x38AAL, 0x38AAL)))) ^ make_ushort2(6UL, 6UL))).y > l_2986)) , 0x076FCC6DL))
    { /* block id: 1177 */
        uint32_t l_3031 = 0xC796FC3FL;
        ushort2 l_3041 = make_ushort2(65535UL, 65535UL);
        ushort1 l_3042 = make_ushort1(8UL);
        ushort4 l_3043 = make_ushort4(0x7810L, 65535UL, 0x7810L, 65535UL);
        ushort4 l_3044 = make_ushort4(0x5DE3L, 0x0D62L, 0x5DE3L, 0x0D62L);
        ushort3 l_3045 = make_ushort3(1UL, 65535UL, 1UL);
        uint32_t *l_3064 = nullptr;
        uint32_t *l_3065 = &l_2735.f1;
        ushort1 l_3067 = make_ushort1(65535UL);
        uint64_t l_3084[7][4][3] = {{{0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}}, {{0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}}, {{0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}}, {{0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}}, {{0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}}, {{0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}}, {{0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}, {0xC168327AF01BD414LL, 1UL, 18446744073709551615UL}}};
        int32_t l_3096 = (-10L);
        uint16_t *l_3107 = nullptr;
        union U2 l_3120 = {0L};
        union U1 **l_3124 = &p_4372->g_1014;
        uint32_t ***l_3168 = nullptr;
        uint32_t l_3181 = 0xCC4E9F66L;
        union U0 l_3188[1][3] = {{{0xC2F9L}, {0xC2F9L}, {0xC2F9L}}};
        uint8_t l_3210 = 0x85L;
        union U1 l_3233 = {0x3AB8L};
        uint64_t l_3262 = 5UL;
        uchar3 l_3331 = make_uchar3(1UL, 0UL, 1UL);
        uint16_t *l_3376 = nullptr;
        uint16_t *l_3377 = &l_2706.f0;
        uint16_t *l_3384 = &p_4372->g_244.f0;
        union U2 *l_3387 = &l_2735;
        union U2 **l_3386 = &l_3387;
        union U0 *l_3399 = &l_3188[0][0];
        int i, j, k;
        (*p_4372->g_2089) = (!(l_3031 ^ (safe_sub_func_uint16_t_u_u((l_3031 & (safe_div_func_uint16_t_u_u(make_ushort1(l_3036.y).x, ((((make_ushort2(65535UL, 0UL) ^ make_ushort2(4UL, 1UL))) ^ ((((make_ushort2(p_4372->g_3037.x, p_4372->g_3037.x) ^ ((((safe_mod(((make_ushort2(l_3040.z, l_3040.z) ^ make_ushort2(l_3041.x, l_3041.x))), ((make_ushort2(l_3042.x, l_3042.x) | make_ushort2(l_3043.w, l_3043.w)))))) ^ make_ushort2(l_3044.w, l_3044.w))))) | make_ushort2(l_3045.x, l_3045.x))))).x))), 0xF2AEL))));
        (***p_4372->g_2976) = (**l_2866);
    }
    else
    { /* block id: 1311 */
        int32_t l_3403 = 0x12A6D282L;
        int1 l_3420 = make_int1(0xFFAC43ACL);
        int i;
        (*p_4372->g_2089) = ((((make_uchar4(0x38L, 0x29L, ((((l_3403 != (+((safe_mod_func_uint64_t_u_u((safe_rshift_func_int64_t_s_u(0L, 48)), l_3403)) && ((((safe_add(((make_uchar4(0UL, (safe_mul_func_uint64_t_u_u((l_3420.x = (0L && (((((safe_mod_func_int16_t_s_s(make_short3(l_3403, 0x3704L, 1L).y, p_20)) , (p_20 | ((((safe_add(make_ulong2(0x7591FD6354635A74LL, (safe_div_func_int32_t_s_s(((safe_mod(make_int1(l_3420.x), ((make_int1(p_4372->g_3421.x) & make_int1(l_3422.w)))))).x, l_3403))), make_ulong2(p_4372->g_3423.x, p_4372->g_3423.x)))).x >= (((((p_20 | p_4372->g_2905.x) , (***l_2866)) , p_20) | 0x51B7L) < l_3424)) >= p_21))) == 255UL) >= (*p_4372->g_2089)) >= p_21))), 0x671D662B78178F52LL)), 0x24L, p_20) & make_uchar4(6UL, 6UL, 6UL, 6UL))), make_uchar4(3UL, 3UL, 3UL, 3UL)))) | make_uchar4(0UL, 0UL, 0UL, 0UL))).y))) ^ p_20) , 0x67C7L) | p_20), 0x12L) ^ make_uchar4(0xCBL, 0xCBL, 0xCBL, 0xCBL))).y & l_3425) == p_22.f0);
    }
    l_3426 = &l_3329[0][2];
    return l_2706;
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_1031 p_4372->g_877 p_4372->g_878 p_4372->g_46 p_4372->g_340 p_4372->g_132 p_4372->g_306 p_4372->g_1111 p_4372->g_633 p_4372->g_80 p_4372->g_549 p_4372->g_722 p_4372->g_160 p_4372->g_566 p_4372->g_136 p_4372->g_527 p_4372->g_819 p_4372->g_820 p_4372->g_1395 p_4372->g_1555 p_4372->g_1187 p_4372->g_475 p_4372->g_499 p_4372->g_1136 hip_const_6 p_4372->g_826 p_4372->g_719 p_4372->g_884 p_4372->g_481 p_4372->g_244.f2 p_4372->g_285 p_4372->g_1785 p_4372->g_1224 p_4372->g_1662 p_4372->g_940 p_4372->g_941 p_4372->g_56 p_4372->g_62 p_4372->g_2024 p_4372->g_147 p_4372->g_2037 p_4372->g_2039 p_4372->g_1953 p_4372->g_944 p_4372->g_2089 p_4372->g_71.f0
 * writes: p_4372->g_1031 p_4372->g_244.f2 p_4372->g_13 p_4372->g_46 p_4372->g_970 p_4372->g_724 p_4372->g_718 p_4372->g_1308.f2 p_4372->g_132 p_4372->g_56 p_4372->g_658 p_4372->g_340 p_4372->g_136 p_4372->g_1308.f0 p_4372->g_77 p_4372->g_878 p_4372->g_1678 p_4372->g_44 p_4372->g_62 p_4372->g_1785 p_4372->g_71.f0 p_4372->g_1662 p_4372->g_59 p_4372->g_940 p_4372->g_2037 p_4372->g_1111
 */
__device__ int32_t * func_23(uint32_t  p_24, uint64_t  p_25, int32_t  p_26, int32_t * p_27, struct S3 * p_4372)
{ /* block id: 499 */
    int16_t l_1323 = 0xC892L;
    ulong1 l_1339 = make_ulong1(0x3FB1CBCC08D4F442LL);
    ulong3 l_1344 = make_ulong3(18446744073709551615UL, 0xFE50AC03EA611D99LL, 18446744073709551615UL);
    ushort4 l_1366 = make_ushort4(0x1589L, 0UL, 0x1589L, 0UL);
    int32_t l_1375 = 0x9FE03907L;
    int32_t l_1442 = (-1L);
    int32_t l_1443 = (-2L);
    union U1 *l_1453 = nullptr;
    int16_t l_1478 = 5L;
    int32_t l_1479 = (-10L);
    int32_t l_1490[2];
    int32_t l_1506 = 0xA4BEE793L;
    uint32_t ***l_1553 = nullptr;
    uint32_t l_1573[2][3] = {{1UL, 4294967291UL, 1UL}, {1UL, 4294967291UL, 1UL}};
    char3 l_1608 = make_char3(0L, 0xF6L, 0L);
    int32_t *l_1646 = nullptr;
    int32_t **l_1645 = &l_1646;
    uchar4 l_1711 = make_uchar4(0xE8L, 2UL, 0xE8L, 2UL);
    uint64_t l_1805 = 0x886CC78ED14C3474LL;
    uint32_t l_1811[7][7] = {{4294967295UL, 1UL, 0x3C218025L, 1UL, 4294967295UL, 0x1B5C318BL, 4294967295UL}, {4294967295UL, 1UL, 0x3C218025L, 1UL, 4294967295UL, 0x1B5C318BL, 4294967295UL}, {4294967295UL, 1UL, 0x3C218025L, 1UL, 4294967295UL, 0x1B5C318BL, 4294967295UL}, {4294967295UL, 1UL, 0x3C218025L, 1UL, 4294967295UL, 0x1B5C318BL, 4294967295UL}, {4294967295UL, 1UL, 0x3C218025L, 1UL, 4294967295UL, 0x1B5C318BL, 4294967295UL}, {4294967295UL, 1UL, 0x3C218025L, 1UL, 4294967295UL, 0x1B5C318BL, 4294967295UL}, {4294967295UL, 1UL, 0x3C218025L, 1UL, 4294967295UL, 0x1B5C318BL, 4294967295UL}};
    uint64_t l_1828 = 1UL;
    ushort1 l_1880 = make_ushort1(65528UL);
    uint32_t l_1895 = 0xED1E823FL;
    uint3 l_1911 = make_uint3(6UL, 0x17A05B44L, 6UL);
    uchar1 l_1931 = make_uchar1(0xBCL);
    long4 l_1947 = make_long4(0L, 0xC16B0B2A739FFCCELL, 0L, 0xC16B0B2A739FFCCELL);
    int16_t *l_2016 = &l_1323;
    union U1 **l_2068 = &l_1453;
    int32_t ****l_2104 = &p_4372->g_752;
    union U2 **l_2110 = &p_4372->g_941;
    short3 l_2165 = make_short3(0xFE27L, 0x15AFL, 0xFE27L);
    ushort4 l_2179 = make_ushort4(65535UL, 0x9615L, 65535UL, 0x9615L);
    int64_t l_2193 = 0xF69AE219D6C69412LL;
    union U0 *l_2241 = &p_4372->g_244;
    int16_t **l_2242[7][10][3] = {{{&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}}, {{&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}}, {{&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}}, {{&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}}, {{&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}}, {{&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}}, {{&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}, {&p_4372->g_418[0][7], nullptr, &l_2016}}};
    int32_t l_2302 = 0x3123A4ADL;
    long4 l_2333 = make_long4(0L, 0xD464552DB92817C1LL, 0L, 0xD464552DB92817C1LL);
    int8_t l_2437 = 2L;
    long1 l_2508 = make_long1(3L);
    int1 l_2519 = make_int1(0x274990F8L);
    uint32_t l_2524 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1490[i] = 0L;
    for (p_4372->g_1031 = 0; (p_4372->g_1031 > (-12)); p_4372->g_1031 = safe_sub_func_int32_t_s_s(p_4372->g_1031, 3))
    { /* block id: 502 */
        union U0 *l_1307[3][2];
        uint32_t *l_1310 = &p_4372->g_136[0];
        uint32_t *l_1312[8] = {&p_4372->g_136[0], &p_4372->g_136[3], &p_4372->g_136[0], &p_4372->g_136[3], &p_4372->g_136[0], &p_4372->g_136[3], &p_4372->g_136[0], &p_4372->g_136[3]};
        uint32_t **l_1311 = &l_1312[5];
        int32_t *l_1313[6][4][7] = {{{nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}}, {{nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}}, {{nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}}, {{nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}}, {{nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}}, {{nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}, {nullptr, nullptr, &p_4372->g_44[1][2], &p_4372->g_44[1][0], nullptr, nullptr, &p_4372->g_62}}};
        int1 l_1322 = make_int1(0L);
        union U1 **l_1324 = &p_4372->g_1014;
        union U1 **l_1326[1];
        union U1 ***l_1325[7] = {&l_1326[0], &l_1326[0], &l_1326[0], &l_1326[0], &l_1326[0], &l_1326[0], &l_1326[0]};
        int64_t *l_1334 = nullptr;
        int64_t *l_1335 = nullptr;
        int64_t *l_1336 = nullptr;
        int64_t *l_1337 = nullptr;
        int64_t *l_1338 = nullptr;
        uint32_t l_1347[6] = {1UL, 0UL, 1UL, 0UL, 1UL, 0UL};
        int16_t *l_1359 = &hip_const_5[2][6][0];
        ushort2 l_1369 = make_ushort2(0xFFA5L, 0UL);
        union U2 l_1378 = {3L};
        uint1 l_1379 = make_uint1(0xE2F9CE99L);
        ushort4 l_1392 = make_ushort4(0UL, 0xC68BL, 0UL, 0xC68BL);
        ulong3 l_1430 = make_ulong3(0x60872653B67F04B3LL, 4UL, 0x60872653B67F04B3LL);
        int16_t *l_1471 = &p_4372->g_566[4];
        uint64_t l_1523 = 0x578E9210832D37E0LL;
        ushort2 l_1546 = make_ushort2(65532UL, 65532UL);
        uint64_t *l_1548 = nullptr;
        uint32_t l_1616 = 0xC54C62CAL;
        uint32_t l_1617 = 0xAC2A3A9FL;
        int32_t *l_1631[10][6][4] = {{{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}, {{nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}, {nullptr, &l_1479, &l_1479, &l_1479}}};
        int64_t l_1632[3];
        long1 l_1636 = make_long1((-1L));
        ushort2 l_1689 = make_ushort2(7UL, 0UL);
        uint8_t l_1705 = 0UL;
        int16_t l_1716 = 0xE5BDL;
        int16_t ****l_1717 = nullptr;
        long1 l_1728 = make_long1(0L);
        short2 l_1740 = make_short2(0x2093L, 1L);
        int8_t l_1748[5][10][5] = {{{(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}}, {{(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}}, {{(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}}, {{(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}}, {{(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}, {(-4L), 7L, 0L, (-1L), 0x11L}}};
        union U0 l_1840 = {65528UL};
        int32_t l_1890 = 5L;
        union U2 **l_1899 = &p_4372->g_941;
        ulong3 l_1922 = make_ulong3(0UL, 1UL, 0UL);
        uchar4 l_1963 = make_uchar4(6UL, 0xF2L, 6UL, 0xF2L);
        uint8_t l_1971 = 249UL;
        uint32_t ****l_1978[7] = {&l_1553, &l_1553, &l_1553, &l_1553, &l_1553, &l_1553, &l_1553};
        int4 l_2013 = make_int4((-8L), 0x99F29085L, (-8L), 0x99F29085L);
        int32_t l_2055 = 5L;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_1307[i][j] = &p_4372->g_1308[6][1][2];
        }
        for (i = 0; i < 1; i++)
            l_1326[i] = &p_4372->g_1014;
        for (i = 0; i < 3; i++)
            l_1632[i] = (-1L);
        for (p_4372->g_244.f2 = 17; (p_4372->g_244.f2 <= 28); p_4372->g_244.f2 = safe_add_func_uint32_t_u_u(p_4372->g_244.f2, 2))
        { /* block id: 505 */
            union U0 **l_1306 = nullptr;
            int32_t *l_1309 = &p_4372->g_13;
            if (p_24)
                break;
            (*l_1309) = ((*p_4372->g_877) != (l_1307[0][0] = (*p_4372->g_877)));
        }
        p_4372->g_46.x ^= (l_1310 != ((*l_1311) = &p_24));
        if ((safe_sub_func_uint8_t_u_u(((safe_mod(make_uchar3(0x21L, (safe_add_func_int16_t_s_s(0x20E2L, (safe_div_func_int32_t_s_s(make_int1(l_1322.x).x, l_1323)))), (l_1324 != (p_4372->g_1327 = l_1324))), make_uchar3((safe_div_func_int64_t_s_s(l_1323, p_4372->g_826.x)), (safe_add_func_uint32_t_u_u(((safe_rshift_func_int64_t_s_u((p_4372->g_892.x = p_4372->g_658.y), make_ulong4(l_1339.x, l_1339.x, l_1339.x, l_1339.x).z)) == ((!(safe_rshift_func_uint16_t_u_s(p_4372->g_953.x, 0))) == ((safe_add_func_uint64_t_u_u(make_ulong1(l_1344.y).x, (safe_lshift_func_uint16_t_u_s((l_1347[4] ^ p_26), p_26)))) > p_4372->g_13))), p_25)), 0x09L)))).z, 0x6FL)))
        { /* block id: 514 */
            int16_t **l_1350 = &p_4372->g_418[0][7];
            uint8_t l_1352 = 7UL;
            long4 l_1357 = make_long4(7L, 0xF1BF6611F2C93B28LL, 7L, 0xF1BF6611F2C93B28LL);
            uint8_t *l_1358 = &p_4372->g_1308[6][1][2].f2;
            int i;
            for (p_4372->g_970 = 0; (p_4372->g_970 > 9); ++p_4372->g_970)
            { /* block id: 517 */
                int16_t ***l_1351[8];
                int i;
                for (i = 0; i < 8; i++)
                    l_1351[i] = &p_4372->g_724;
                p_4372->g_724 = l_1350;
                for (p_4372->g_718 = 0; p_4372->g_718 < 1; p_4372->g_718 += 1)
                {
                    l_1326[p_4372->g_718] = &p_4372->g_1014;
                }
            }
            if (l_1352)
                continue;
            p_4372->g_132.x = (safe_sub_func_uint8_t_u_u(((*l_1358) = (safe_mod_func_int64_t_s_s(((make_long3(p_25, l_1352, p_25) ^ make_long3(l_1357.z, l_1357.z, l_1357.z))).z, p_25))), (make_uchar2(250UL, p_4372->g_362.y).y != (l_1359 != &l_1323))));
        }
        else
        { /* block id: 524 */
            int8_t *l_1370 = nullptr;
            int8_t *l_1371 = &hip_const_7;
            int8_t *l_1372[1][3];
            int16_t *l_1373 = nullptr;
            int16_t *l_1374[6] = {&p_4372->g_566[5], nullptr, &p_4372->g_566[5], nullptr, &p_4372->g_566[5], nullptr};
            ushort3 l_1380 = make_ushort3(1UL, 65526UL, 1UL);
            union U1 *l_1387 = &p_4372->g_71;
            long3 l_1414 = make_long3(1L, 0xD53DC116500ADF02LL, 1L);
            int32_t l_1438 = (-8L);
            long4 l_1450 = make_long4(3L, 9L, 3L, 9L);
            uint64_t l_1480 = 18446744073709551609UL;
            union U2 l_1486 = {-1L};
            int32_t l_1488 = 0xC5F47545L;
            int32_t l_1492 = 0x1A00C59BL;
            int32_t l_1494 = 0x6AD09628L;
            int32_t l_1495 = 1L;
            int32_t l_1497 = 1L;
            int32_t l_1501 = 0x96BBC442L;
            int32_t l_1502 = 3L;
            int32_t l_1503 = 1L;
            int32_t l_1504[2][3];
            int8_t l_1507 = (-4L);
            int32_t l_1512 = (-1L);
            short1 l_1599 = make_short1((-1L));
            uint1 l_1612 = make_uint1(0xDAEA1C0EL);
            uint3 l_1613 = make_uint3(0UL, 4294967289UL, 0UL);
            uint16_t l_1619 = 65527UL;
            ushort4 l_1690 = make_ushort4(65534UL, 0xB987L, 65534UL, 0xB987L);
            uint64_t l_1698 = 1UL;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1372[i][j] = &p_4372->g_970;
            }
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1504[i][j] = 0xA3FC4E0AL;
            }
            if ((0xA215C43BA907FC65LL || (((safe_sub_func_uint8_t_u_u(p_4372->g_340.x, p_26)) | make_ulong4(((0xB5E6L < (safe_add_func_int16_t_s_s((l_1375 = ((safe_mul_func_uint16_t_u_u(make_ushort2(l_1366.y, l_1366.y).y, ((p_4372->g_884.x = (safe_add_func_uint16_t_u_u(4UL, make_ushort2(l_1369.y, l_1369.y).x))) & p_25))) | 255UL)), (safe_mul_func_uint16_t_u_u(((l_1378 , make_uint2(l_1379.x, l_1379.x).x) , make_ushort1(l_1380.z).x), p_4372->g_1308[6][1][2].f0))))) ^ p_26), l_1380.z, 0x40FD2969B64552F1LL, 0x12868FCEA5D72B84LL).w) , 0x8F6CE5E4F90D4ADELL)))
            { /* block id: 527 */
                int32_t l_1400 = 0xE24BF991L;
                int32_t l_1403[3];
                int32_t l_1404[6] = {0xDED8E1E4L, 0L, 0xDED8E1E4L, 0L, 0xDED8E1E4L, 0L};
                int4 l_1407 = make_int4(0x8834416EL, 0xBDB37BE1L, 0x8834416EL, 0xBDB37BE1L);
                int2 l_1408 = make_int2(1L, 5L);
                union U1 l_1447[5] = {{65526UL}, {65526UL}, {65526UL}, {65526UL}, {65526UL}};
                int32_t l_1505 = 0L;
                int1 l_1526 = make_int1(0L);
                int32_t l_1531 = (-1L);
                uint16_t *l_1532 = &p_4372->g_1308[6][1][2].f0;
                int i;
                for (i = 0; i < 3; i++)
                    l_1403[i] = (-8L);
                l_1404[2] ^= (safe_lshift_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((nullptr != l_1387), (safe_lshift_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u(make_ushort3(l_1392.x, l_1392.x, l_1392.x).x, (+(safe_mul_func_uint32_t_u_u(p_26, (p_26 & ((((+255UL) == make_char3(p_4372->g_1395.x, p_4372->g_1395.x, p_4372->g_1395.x).y) & (((safe_mul_func_uint64_t_u_u((safe_add_func_int32_t_s_s(8L, 0xC3F31E42L)), l_1400)) | (safe_mod_func_int32_t_s_s((l_1403[1] = p_24), p_4372->g_132.x))) > l_1400)) >= 0x12L))))))) , 0x1A3DL), 6)))), 0x7BA7L)), p_4372->g_306.z));
                if ((safe_div_func_int32_t_s_s((make_int4(l_1407.y, l_1407.y, l_1407.y, l_1407.y).x || l_1404[2]), p_24)))
                { /* block id: 530 */
                    int8_t l_1409 = (-1L);
                    for (p_24 = 0; p_24 < 8; p_24 += 1)
                    {
                        union U2 tmp = {0x0566FE37L};
                        p_4372->g_56[p_24] = tmp;
                    }
                    if (p_25)
                        break;
                    l_1409 = make_int4(l_1408.x, l_1408.x, l_1408.x, l_1408.x).z;
                }
                else
                { /* block id: 534 */
                    int64_t l_1429 = 0xD04F66A6B85FB19ALL;
                    union U0 **l_1433[1];
                    int32_t l_1437 = 0L;
                    int32_t l_1439 = 0xA451623BL;
                    union U1 *l_1454 = nullptr;
                    union U2 l_1455[1][2][7] = {{{{0L}, {0x1A6A3E7CL}, {0L}, {0x1A6A3E7CL}, {0L}, {0x1A6A3E7CL}, {0L}}, {{0L}, {0x1A6A3E7CL}, {0L}, {0x1A6A3E7CL}, {0L}, {0x1A6A3E7CL}, {0L}}}};
                    int64_t l_1487[7][9] = {{(-1L), 0x6FE650CDA27AE814LL, 0x37FB65994E8BE503LL, (-6L), 0xDE347A4E5007D5D1LL, 0xC8B38330CF009AD7LL, 0xC8B38330CF009AD7LL, 0xDE347A4E5007D5D1LL, (-6L)}, {(-1L), 0x6FE650CDA27AE814LL, 0x37FB65994E8BE503LL, (-6L), 0xDE347A4E5007D5D1LL, 0xC8B38330CF009AD7LL, 0xC8B38330CF009AD7LL, 0xDE347A4E5007D5D1LL, (-6L)}, {(-1L), 0x6FE650CDA27AE814LL, 0x37FB65994E8BE503LL, (-6L), 0xDE347A4E5007D5D1LL, 0xC8B38330CF009AD7LL, 0xC8B38330CF009AD7LL, 0xDE347A4E5007D5D1LL, (-6L)}, {(-1L), 0x6FE650CDA27AE814LL, 0x37FB65994E8BE503LL, (-6L), 0xDE347A4E5007D5D1LL, 0xC8B38330CF009AD7LL, 0xC8B38330CF009AD7LL, 0xDE347A4E5007D5D1LL, (-6L)}, {(-1L), 0x6FE650CDA27AE814LL, 0x37FB65994E8BE503LL, (-6L), 0xDE347A4E5007D5D1LL, 0xC8B38330CF009AD7LL, 0xC8B38330CF009AD7LL, 0xDE347A4E5007D5D1LL, (-6L)}, {(-1L), 0x6FE650CDA27AE814LL, 0x37FB65994E8BE503LL, (-6L), 0xDE347A4E5007D5D1LL, 0xC8B38330CF009AD7LL, 0xC8B38330CF009AD7LL, 0xDE347A4E5007D5D1LL, (-6L)}, {(-1L), 0x6FE650CDA27AE814LL, 0x37FB65994E8BE503LL, (-6L), 0xDE347A4E5007D5D1LL, 0xC8B38330CF009AD7LL, 0xC8B38330CF009AD7LL, 0xDE347A4E5007D5D1LL, (-6L)}};
                    int32_t l_1491[8];
                    uint64_t l_1509[7][2][9] = {{{2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}, {2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}}, {{2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}, {2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}}, {{2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}, {2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}}, {{2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}, {2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}}, {{2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}, {2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}}, {{2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}, {2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}}, {{2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}, {2UL, 0x710073C19DCF1723LL, 7UL, 1UL, 0xA7AFA60CD5FC6ED0LL, 18446744073709551609UL, 1UL, 0x710073C19DCF1723LL, 0UL}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1433[i] = &l_1307[0][0];
                    for (i = 0; i < 8; i++)
                        l_1491[i] = 0xA8A46A9DL;
                    for (l_1378.f3 = 7; (l_1378.f3 >= 1); l_1378.f3--)
                    { /* block id: 537 */
                        union U0 **l_1431 = &l_1307[0][0];
                        union U0 ***l_1432 = &l_1431;
                        uint64_t *l_1435 = nullptr;
                        uint64_t *l_1436[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1436[i] = &hip_const_6;
                        l_1439 |= (make_short3((l_1438 ^= ((safe_lshift_func_int64_t_s_u(make_long4(l_1414.z, l_1414.z, l_1414.z, l_1414.z).w, (l_1437 ^= (safe_rshift_func_uint8_t_u_s(((((safe_add_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u((((safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s(l_1414.x, ((safe_mod_func_uint16_t_u_u(p_24, l_1429)) , make_ulong4(l_1430.z, l_1430.z, l_1430.z, l_1430.z).w))), 4)) == (((*l_1432) = l_1431) == (p_4372->g_179.x , l_1433[0]))) <= ((((((p_4372->g_722.y |= ((safe_unary_minus_func_int32_t_s(1L)) != p_24)) < (-9L)) < p_24) < p_26) && 0x6B258DE04B907E44LL) > p_24)), 0L)) < p_25), 0x6F8002DAFC282381LL)), p_24)) > 255UL) != p_4372->g_721.y) <= 0UL), p_26))))) , (-1L))), l_1404[1], (-3L)).z , l_1366.y);
                        if (p_24)
                            break;
                    }
                    for (p_4372->g_244.f2 = 12; (p_4372->g_244.f2 > 26); ++p_4372->g_244.f2)
                    { /* block id: 547 */
                        uint32_t l_1444 = 18446744073709551615UL;
                        l_1444++;
                        l_1442 |= (!l_1444);
                    }
                    if (((l_1447[1] , (l_1407.y = 0x4DDD7C36L)) <= ((safe_mul_func_int64_t_s_s(make_long4(l_1450.z, l_1450.z, l_1450.z, l_1450.z).z, ((+(((p_25 == (l_1438 = l_1344.x)) , p_4372->g_1111.x) & (((l_1453 = &p_4372->g_71) != l_1454) < (l_1455[0][0][2] , (l_1414.x , 0x39L))))) < (-3L)))) , l_1429)))
                    { /* block id: 554 */
                        int16_t **l_1470[3];
                        int32_t l_1481 = 5L;
                        int16_t l_1489 = (-1L);
                        int32_t l_1493 = 0L;
                        int32_t l_1496 = 0xB1CF8B20L;
                        int32_t l_1498 = 0xAEFC76D6L;
                        int32_t l_1499 = 0x99ADA5A8L;
                        int32_t l_1500[3][9][6] = {{{0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}}, {{0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}}, {{0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}, {0x72FE8BDAL, 1L, 0x81C41C5DL, 0x64EDFDBCL, (-1L), 0x61362D60L}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_1470[i] = &l_1374[5];
                        l_1439 = ((safe_add_func_int16_t_s_s((l_1481 = (safe_add_func_uint32_t_u_u(((((safe_lshift_func_int32_t_s_u((safe_mod_func_int8_t_s_s(((p_4372->g_658.y = (0x0DL ^ (safe_add_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(make_uchar1((((make_ushort1(0x5191L).x < (p_4372->g_306.z & ((p_24 > make_int1((l_1359 == (l_1471 = l_1373))).x) && (safe_div_func_int64_t_s_s((safe_div_func_uint16_t_u_u(((make_long1((-10L)).x ^ ((0x86L && (safe_lshift_func_uint16_t_u_u(make_ushort4(((make_ushort3(0xC5EBL, l_1447[1].f0, 65535UL) ^ ((~make_ushort3(0x28B4L, 0x261FL, 65531UL))))).z, p_26, 0x5F0FL, 65535UL).x, p_26))) || 3UL)) >= l_1478), p_25)), p_26))))) || l_1479) >= 0xDAE1FD98E11A4B68LL)).x, 6)), p_4372->g_633.x)), p_4372->g_80.x)))) < l_1480), p_26)), p_4372->g_549.y)) ^ p_4372->g_722.x) & p_4372->g_160.w) <= 9UL), p_26))), p_26)) && p_24);
                        l_1438 &= (l_1442 = ((safe_mul_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u(p_4372->g_566[5], 14)), ((p_26 , l_1486) , p_26))) & l_1481));
                        l_1509[3][0][7]--;
                    }
                    else
                    { /* block id: 562 */
                        l_1512 &= p_26;
                        p_4372->g_340.x = p_24;
                        if (l_1488)
                            break;
                    }
                }
                if ((safe_mul_func_uint8_t_u_u(l_1366.y, (safe_add_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((safe_add_func_uint16_t_u_u((0xD790L <= (l_1323 != (safe_lshift_func_int64_t_s_s((l_1523 &= p_25), 15)))), 0x33E6L)), (safe_sub_func_uint32_t_u_u(((p_24 &= ((*l_1310) ^= l_1407.y)) != make_int2(l_1526.x, l_1526.x).y), (safe_mul_func_int64_t_s_s(p_26, p_4372->g_527.y)))))) != ((((((*l_1532) = (safe_add_func_int8_t_s_s(((((((~((~make_ulong2((l_1404[0] < 0x26L), 0UL))))) ^ make_ulong2(0x71E5D8171F7BCECALL, 0x71E5D8171F7BCECALL))).x || 0L) > l_1512), l_1531))) <= 0x8D22L) , l_1506) , l_1506) || 0L)), p_25)))))
                { /* block id: 572 */
                    l_1490[0] = (0xF2L == l_1366.y);
                    return p_27;
                }
                else
                { /* block id: 575 */
                    int8_t l_1549 = 0xF5L;
                    p_4372->g_132.x |= l_1403[1];
                    for (l_1488 = 0; (l_1488 <= 3); l_1488 += 1)
                    { /* block id: 579 */
                        uint32_t **l_1541 = &l_1312[4];
                        int32_t l_1547 = (-2L);
                        p_4372->g_340.x = make_int1((safe_mul_func_uint8_t_u_u(((~make_uchar4(make_uchar3(255UL, (((safe_lshift_func_int8_t_s_u(((safe_sub_func_int64_t_s_s((safe_add_func_uint8_t_u_u(((l_1541 == p_4372->g_1542[0]) , ((p_26 >= (((safe_sub_func_int64_t_s_s(((p_4372->g_526.y = p_25) , (make_ushort3(l_1546.y, l_1546.y, l_1546.y).y > p_24)), l_1547)) , &hip_const_2) != l_1548)) && (((((-1L) | 8UL) , p_26) == p_25) | l_1547))), p_4372->g_970)), (-6L))) < l_1549), 1)) , p_25) && 0xDA934B4CL), l_1480).z, p_26, 0x06L, 0xDBL))).y, l_1366.y))).x;
                        if (p_26)
                            break;
                    }
                }
            }
            else
            { /* block id: 585 */
                uint32_t **l_1550[3];
                uint32_t ***l_1551 = &l_1550[1];
                int32_t l_1552 = (-1L);
                int16_t ***l_1589 = &p_4372->g_724;
                union U1 l_1615[9][1][10] = {{{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}, {{{65535UL}, {0UL}, {1UL}, {0UL}, {0x50E3L}, {0x9C01L}, {0x50E3L}, {0UL}, {1UL}, {0UL}}}};
                long3 l_1627 = make_long3(9L, 0L, 9L);
                int32_t l_1633 = 0xBC5C4056L;
                uint8_t *l_1653[2][6][10] = {{{nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}}, {{nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}, {nullptr, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, &p_4372->g_244.f2, &p_4372->g_244.f2, nullptr, nullptr}}};
                int1 l_1663 = make_int1(0x68946F14L);
                union U0 l_1668 = {1UL};
                union U1 **l_1701[4] = {&l_1453, &l_1453, &l_1453, &l_1453};
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_1550[i] = &p_4372->g_1543[0];
                (*l_1551) = l_1550[1];
                if (l_1552)
                { /* block id: 587 */
                    int8_t l_1581 = 0xC7L;
                    int16_t ****l_1590 = &l_1589;
                    short1 l_1602 = make_short1(0x5636L);
                    union U2 l_1603 = {-1L};
                    int i;
                    if (l_1552)
                    { /* block id: 588 */
                        (**p_4372->g_819) = nullptr;
                        (*p_4372->g_877) = (*p_4372->g_877);
                    }
                    else
                    { /* block id: 591 */
                        uint32_t ****l_1554 = &l_1553;
                        int64_t *l_1576 = &hip_const_3;
                        int64_t *l_1577 = nullptr;
                        int64_t *l_1578 = nullptr;
                        int64_t *l_1579 = &hip_const_4;
                        int3 l_1580 = make_int3((-1L), 0x3BC3EEB9L, (-1L));
                        int32_t l_1582 = 0x685CD3E4L;
                        int32_t *l_1583 = &p_4372->g_56[6].f2;
                        int32_t *l_1584 = nullptr;
                        int32_t *l_1585 = nullptr;
                        int32_t *l_1586 = nullptr;
                        int32_t *l_1587 = &l_1479;
                        int32_t l_1588 = 0L;
                        int i;
                        l_1501 &= p_4372->g_1395.x;
                        (*l_1554) = l_1553;
                        l_1588 = (((*l_1587) |= ((p_4372->g_1555[2][0] , 4294967295UL) != (((((make_long4((safe_mul_func_int64_t_s_s((0xB22DL >= make_short3(p_4372->g_1558.x, p_4372->g_1558.x, p_4372->g_1558.x).z), (l_1582 = (l_1552 , ((safe_rshift_func_uint16_t_u_s((((safe_add_func_int32_t_s_s((l_1486 , p_24), (safe_mul_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((safe_mul_func_int64_t_s_s((+(safe_lshift_func_int8_t_s_s((safe_mul_func_int32_t_s_s(l_1573[0][2], (safe_lshift_func_uint32_t_u_s(((0xD9L | ((l_1580.z = 7L) , l_1581)) , p_24), 27)))), 3))), p_24)), l_1506)) , (-1L)), p_25)))) , l_1581) > l_1582), 4)) || p_25))))), 0L, 8L, 0xC4A134483DCF104BLL).w , 8UL) , p_4372->g_1187.y) , p_4372->g_475.x) , l_1443) ^ (-1L)))) , 0L);
                    }
                    (*l_1590) = l_1589;
                    for (l_1323 = 0; (l_1323 >= 20); l_1323 = safe_add_func_uint16_t_u_u(l_1323, 5))
                    { /* block id: 602 */
                        uint64_t l_1618 = 0x4479CE98A47711C5LL;
                        (**p_4372->g_819) = &l_1552;
                    }
                    l_1633 ^= ((safe_add_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(p_4372->g_499.x, (((((1L || ((safe_sub(make_long2(0xCDB8EFDB56DDACF2LL, p_4372->g_1626.w), make_long2(make_long3(0x3537AA4920246165LL, ((make_long2(l_1627.y, l_1627.y) & make_long2(p_4372->g_1628.x, p_4372->g_1628.x))).y, 5L).z, 0xEFC3E163722C6CBDLL)))).y) && ((l_1602.x || p_4372->g_1136.x) , (safe_add_func_uint8_t_u_u((l_1552 <= (l_1581 ^ (nullptr != l_1631[6][0][1]))), p_24)))) <= 0xB5A5L) | hip_const_6) <= p_26))) , p_25), p_25)) & l_1632[0]);
                }
                else
                { /* block id: 606 */
                    return p_27;
                }
                if (((((safe_lshift(((((make_long4(l_1636.x, l_1636.x, l_1636.x, l_1636.x) ^ ((make_long4(2L, (p_4372->g_552.y = ((((safe_lshift_func_uint32_t_u_s((((safe_div_func_int64_t_s_s(((safe_mod_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((p_4372->g_391.y || (l_1645 == (*p_4372->g_752))) >= p_4372->g_944.y), ((p_26 = (safe_mod_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((p_4372->g_244.f2++), (safe_rshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u((safe_add_func_int32_t_s_s(((make_int2((-1L), 1L) | make_int2(p_4372->g_1662.y, p_4372->g_1662.y))).y, make_int2(l_1663.x, l_1663.x).y)), l_1663.x)), ((safe_sub_func_uint8_t_u_u(((((l_1663.x , (l_1486.f0 = (l_1633 | ((l_1495 &= ((*l_1471) ^= 0xCE0AL)) == (safe_rshift_func_int32_t_s_s((((l_1668 , nullptr) == (*p_4372->g_819)) <= l_1663.x), l_1344.z)))))) <= 6UL) == 0x41L) & 0UL), (-1L))) >= p_24))))), p_24)) || l_1450.z) == 0x8537L), 1UL))) , l_1668.f0))), p_4372->g_1669)) ^ p_25), 0xAE32DA1571EB6552LL)) || p_24) , 1UL), 13)) || p_26) ^ 0xF5B23E5FL) | p_24)), (-1L), l_1479) & make_long4(0x2DB58E469AD59E57LL, 0x2DB58E469AD59E57LL, 0x2DB58E469AD59E57LL, 0x2DB58E469AD59E57LL))))) ^ make_long4((-1L), (-1L), (-1L), (-1L)))), make_long4(9L, 9L, 9L, 9L)))).x || p_4372->g_826.x) , l_1479))
                { /* block id: 615 */
                    uint16_t l_1670 = 0x8EE4L;
                    uint16_t l_1672 = 0x1BA0L;
                    int64_t *l_1677 = nullptr;
                    int64_t **l_1679 = &l_1336;
                    int64_t *l_1680 = &hip_const_4;
                    int64_t *l_1681 = nullptr;
                    int64_t *l_1682 = &hip_const_4;
                    int64_t *l_1683 = nullptr;
                    int64_t *l_1684[10][9][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
                    int1 l_1691 = make_int1(0x713EC2CFL);
                    uint16_t *l_1693 = &p_4372->g_1308[6][1][2].f0;
                    uint32_t ****l_1696 = &l_1553;
                    uint32_t *****l_1695 = &l_1696;
                    uint16_t *l_1697 = &l_1619;
                    int i, j, k;
                    if (l_1670)
                        break;
                    l_1672 |= (make_ulong4(p_4372->g_1671.z, p_4372->g_1671.z, p_4372->g_1671.z, p_4372->g_1671.z).x , p_4372->g_719.y);
                    if (((l_1442 = (safe_lshift_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(((l_1504[1][0] = ((p_4372->g_884.y , &hip_const_3) != (l_1668 , ((*l_1679) = (p_4372->g_1678[3][7] = l_1677))))) , (safe_mul_func_int16_t_s_s(l_1663.x, ((safe_div(make_ushort2(l_1689.x, l_1689.x), ((make_ushort2(l_1690.x, l_1690.x) ^ ((make_ushort2(((*l_1693) = (((make_int1((-1L)) ^ ((make_int1(l_1691.x) | make_int1(2L))))).x , (p_25 && make_short1(((*l_1471) = make_short1(p_4372->g_1692.y).x)).x))), 65535UL) ^ make_ushort2(0UL, (((p_4372->g_1508 &= (65535UL >= ((*l_1697) = ((p_4372->g_1694 = &l_1551) == ((*l_1695) = &l_1553))))) && 6L) , 1UL))))))))).x))), 0xB69ACB3BL)), l_1670))) <= p_4372->g_136[0]))
                    { /* block id: 628 */
                        l_1698--;
                    }
                    else
                    { /* block id: 630 */
                        l_1701[3] = &l_1453;
                    }
                }
                else
                { /* block id: 633 */
                    int1 l_1704 = make_int1(7L);
                    int i;
                    for (l_1698 = 12; (l_1698 <= 5); l_1698 = safe_sub_func_uint32_t_u_u(l_1698, 3))
                    { /* block id: 636 */
                        l_1490[1] = make_int2(l_1704.x, l_1704.x).y;
                        l_1633 = ((((0x91BCL || p_26) < l_1339.x) , (l_1375 |= p_4372->g_481.x)) || p_4372->g_244.f2);
                        l_1490[0] = l_1705;
                    }
                    return p_27;
                }
            }
        }
        if ((p_4372->g_44[1][2] = (safe_add_func_int16_t_s_s((((safe_mul(make_uchar4(p_4372->g_1710.x, p_4372->g_1710.x, p_4372->g_1710.x, p_4372->g_1710.x), make_uchar4(l_1711.w, l_1711.w, l_1711.w, l_1711.w)))).z >= p_24), (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(l_1716, (p_25 || ((nullptr == l_1717) ^ p_25)))), 7))))))
        { /* block id: 647 */
            int32_t l_1720 = 0x7B0EADF1L;
            uint16_t *l_1747 = &p_4372->g_1308[6][1][2].f0;
            ushort4 l_1762 = make_ushort4(0UL, 0UL, 0UL, 0UL);
            int32_t l_1788 = 7L;
            int32_t l_1789 = (-8L);
            int32_t l_1790 = 0x8D72065DL;
            int32_t l_1792[5];
            int32_t l_1793 = 1L;
            int16_t l_1833 = 0xDDB0L;
            uint32_t l_1863 = 0x5EB201C3L;
            ushort2 l_1879 = make_ushort2(2UL, 0x011EL);
            ushort1 l_1883 = make_ushort1(0x23D6L);
            union U2 **l_1901[5][7][7] = {{{&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}}, {{&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}}, {{&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}}, {{&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}}, {{&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}, {&p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, &p_4372->g_941, nullptr, nullptr}}};
            uchar3 l_1932 = make_uchar3(0x47L, 2UL, 0x47L);
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_1792[i] = 8L;
            l_1720 = (safe_rshift_func_uint8_t_u_s(((make_uchar1(4UL) ^ make_uchar1(p_4372->g_163.y))).x, 7));
            if ((((safe_add_func_int16_t_s_s(((safe_sub_func_int32_t_s_s(((l_1490[0] = (((safe_mul_func_int64_t_s_s(((make_long4(p_4372->g_1727.y, p_4372->g_1727.y, p_4372->g_1727.y, p_4372->g_1727.y) ^ make_long4(l_1728.x, l_1728.x, l_1728.x, l_1728.x))).y, l_1720)) | p_4372->g_285.x) | (((make_ushort3(((*l_1747) = ((((safe_mul_func_uint32_t_u_u(make_uint1(make_uint2(p_4372->g_1731.y, p_4372->g_1731.y).y).x, ((((make_uint1((safe_add_func_int8_t_s_s((safe_rshift_func_int64_t_s_u(((safe_unary_minus(make_long2(0xEC4865E95B66984BLL, 8L)))).x, (p_25 | ((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_u(make_short3(l_1740.x, l_1740.x, l_1740.x).y, ((safe_lshift_func_uint32_t_u_u(p_25, ((*l_1310) = 0xC81CAAAAL))) || (((safe_add_func_uint8_t_u_u((l_1720 , p_4372->g_357.z), ((safe_add_func_uint8_t_u_u(0xDCL, p_25)) | p_4372->g_702.y))) & 0UL) > p_26)))) ^ p_25), 10)) | p_26)))), l_1573[0][2]))) ^ make_uint1(4294967292UL))) ^ make_uint1(1UL))).x)) > p_4372->g_1628.x) || p_26) < 0xB4L)), 1UL, p_4372->g_179.x) | make_ushort3(0xCA12L, 0xCA12L, 0xCA12L))).y < 65527UL))) ^ l_1748[3][9][1]), 4294967289UL)) ^ p_25), 0x92FDL)) , p_24) >= 2UL))
            { /* block id: 652 */
                uint32_t l_1754 = 0xED89A753L;
                int32_t l_1782 = 1L;
                union U1 l_1783 = {65528UL};
                int32_t l_1791[1][3];
                int16_t l_1801 = 0x5DB7L;
                uint64_t **l_1831 = &l_1548;
                uchar3 l_1832 = make_uchar3(0xB7L, 0UL, 0xB7L);
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_1791[i][j] = (-1L);
                }
                for (p_4372->g_62 = 0; (p_4372->g_62 > (-19)); --p_4372->g_62)
                { /* block id: 655 */
                    int16_t l_1753 = 0L;
                    int32_t l_1771 = 0x78CD3039L;
                    int32_t l_1778 = (-8L);
                    int32_t l_1795 = 1L;
                    int64_t l_1796 = 0L;
                    int32_t l_1797 = (-4L);
                    int32_t l_1798 = 0xE1D4163EL;
                    int32_t l_1799[7][2] = {{(-6L), 0x445F0763L}, {(-6L), 0x445F0763L}, {(-6L), 0x445F0763L}, {(-6L), 0x445F0763L}, {(-6L), 0x445F0763L}, {(-6L), 0x445F0763L}, {(-6L), 0x445F0763L}};
                    uint64_t l_1802 = 1UL;
                    union U1 l_1809 = {0x510BL};
                    uint8_t l_1814 = 0xCDL;
                    int i, j;
                    for (l_1378.f0 = 0; l_1378.f0 < 8; l_1378.f0 += 1)
                    {
                        for (l_1617 = 0; l_1617 < 10; l_1617 += 1)
                        {
                            p_4372->g_1678[l_1378.f0][l_1617] = nullptr;
                        }
                    }
                    for (l_1443 = (-22); (l_1443 == 24); l_1443 = safe_add_func_uint32_t_u_u(l_1443, 6))
                    { /* block id: 659 */
                        ++l_1754;
                    }
                    if (l_1754)
                    { /* block id: 662 */
                        uint32_t l_1761 = 0xC9F75E26L;
                        uint16_t *l_1763 = nullptr;
                        uint16_t *l_1764 = nullptr;
                        uint16_t *l_1765 = nullptr;
                        uint16_t *l_1766 = nullptr;
                        uint16_t *l_1767 = &p_4372->g_244.f0;
                        uint16_t *l_1768 = nullptr;
                        uint16_t *l_1769 = nullptr;
                        uint16_t *l_1770 = &p_4372->g_71.f0;
                        uint16_t *l_1772 = &p_4372->g_244.f0;
                        uint16_t *l_1773 = nullptr;
                        uint16_t *l_1774 = nullptr;
                        uint16_t *l_1775 = nullptr;
                        uint16_t *l_1776 = nullptr;
                        uint16_t *l_1777[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int8_t *l_1781[5];
                        int32_t *l_1784 = nullptr;
                        int16_t *****l_1787 = &p_4372->g_1785;
                        int32_t l_1794 = 0x0B3E3A31L;
                        int32_t l_1800[1][5];
                        int i, j;
                        for (i = 0; i < 5; i++)
                            l_1781[i] = &p_4372->g_1508;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_1800[i][j] = 0xC9A174EFL;
                        }
                        (*p_4372->g_820) = l_1784;
                        (*l_1787) = p_4372->g_1785;
                        --l_1802;
                        if (l_1479)
                            break;
                    }
                    else
                    { /* block id: 669 */
                        uint64_t l_1806 = 0x7BA4540D8EDE5B9BLL;
                        int32_t l_1810[10] = {3L, (-3L), (-9L), (-9L), (-3L), 3L, (-3L), (-9L), (-9L), (-3L)};
                        int i;
                        if (l_1805)
                            break;
                        (**p_4372->g_819) = p_27;
                        l_1811[0][1]++;
                        if (p_26)
                            break;
                    }
                    l_1814--;
                }
                if (p_24)
                { /* block id: 677 */
                    uint8_t l_1822 = 0xCBL;
                    for (l_1323 = 0; (l_1323 < 13); ++l_1323)
                    { /* block id: 680 */
                        uint64_t l_1819 = 0x248D75DF0EC7BDEFLL;
                        ++l_1819;
                        l_1822--;
                        l_1782 = l_1790;
                        if (l_1490[0])
                            break;
                    }
                }
                else
                { /* block id: 686 */
                    int2 l_1827 = make_int2(2L, 0xB2F4937AL);
                    int i;
                    for (p_4372->g_71.f0 = 0; (p_4372->g_71.f0 <= 53); p_4372->g_71.f0 = safe_add_func_int8_t_s_s(p_4372->g_71.f0, 6))
                    { /* block id: 689 */
                        if (p_25)
                            break;
                        return l_1313[0][2][5];
                    }
                    l_1782 |= make_int3(l_1827.y, l_1827.y, l_1827.y).y;
                    l_1828--;
                }
                l_1833 = ((((*l_1831) = &hip_const_1[4][1][0]) != &p_25) >= (l_1783.f0 && (make_uchar4(l_1832.z, l_1832.z, l_1832.z, l_1832.z).x < l_1789)));
            }
            else
            { /* block id: 698 */
                uint16_t l_1844 = 0UL;
                int32_t l_1873 = 0x660102FAL;
                int32_t l_1888 = 0xE13CED05L;
                int32_t l_1891 = 1L;
                int32_t l_1894 = 0L;
                int16_t **l_1914 = &l_1471;
                int2 l_1942 = make_int2(0xA206A817L, (-2L));
                uint3 l_1958 = make_uint3(0xC42437F1L, 0x93877264L, 0xC42437F1L);
                uint8_t *l_1966 = &l_1840.f4;
                uint32_t l_1969 = 0x314886F2L;
                int8_t *l_1970 = &l_1748[2][3][1];
                uint4 l_1991 = make_uint4(4294967288UL, 6UL, 4294967288UL, 6UL);
                uint2 l_1992 = make_uint2(0xFCEBD946L, 0x49A4F330L);
                int i;
                for (l_1378.f2 = 1; (l_1378.f2 <= 5); l_1378.f2 += 1)
                { /* block id: 701 */
                    int32_t l_1841 = 5L;
                    int2 l_1858 = make_int2(0xFE953CFFL, 1L);
                    int32_t l_1887 = 0xCBEAC97DL;
                    int1 l_1916 = make_int1(0x03F51C23L);
                    ulong1 l_1921 = make_ulong1(18446744073709551615UL);
                    union U1 *l_1936 = &p_4372->g_71;
                    union U0 **l_1937 = &p_4372->g_878;
                    int i;
                    l_1789 ^= (safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(make_short2((-4L), (l_1841 = (l_1720 = (((*p_4372->g_819) == nullptr) != (p_4372->g_136[l_1378.f2] < (safe_mod_func_uint32_t_u_u(p_4372->g_136[l_1378.f2], (l_1840 , p_4372->g_136[l_1378.f2])))))))).y, 12)), ((safe_mul_func_int32_t_s_s(l_1844, (((((((make_long1(p_4372->g_1845.y).x & (((safe_mod_func_int32_t_s_s((safe_rshift_func_uint32_t_u_s((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint32_t_u_u(1UL, 31)), (safe_mod_func_uint16_t_u_u(((((safe_mod(make_int4(l_1858.x, l_1858.x, l_1858.x, l_1858.x), make_int4((safe_div_func_int8_t_s_s((safe_add_func_int8_t_s_s((~make_char4(hip_const_3, 0x28L, p_25, p_4372->g_391.x).z), p_24)), p_25)), 0xAF20DD8BL, 0x59E16A0EL, 1L)))).x , &p_4372->g_1678[3][7]) == &p_4372->g_1678[3][3]), p_24)))), l_1792[0])), p_24)) , l_1863) , 0x9A6713A9174A0397LL)) == p_25) | p_24) & 0x7AC7E0E843E2EB9DLL) > p_24) && p_24) & p_4372->g_1224.z))) >= p_26)));
                    for (l_1840.f1 = 0; (l_1840.f1 <= 0); l_1840.f1 += 1)
                    { /* block id: 707 */
                        ushort3 l_1878 = make_ushort3(65531UL, 0x37D9L, 65531UL);
                        uint64_t *l_1885 = nullptr;
                        uint64_t *l_1886 = &p_4372->g_244.f1;
                        int32_t l_1889 = (-7L);
                        int32_t l_1892 = 0x30E184D9L;
                        int32_t l_1893 = 0x2EB8970CL;
                        union U1 l_1898 = {0x255DL};
                        union U2 ***l_1900[6][8];
                        int16_t **l_1915[3];
                        uint64_t *l_1917 = nullptr;
                        uint64_t *l_1918[2][5][4] = {{{nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}}, {{nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}, {nullptr, &hip_const_1[0][2][2], nullptr, &hip_const_2}}};
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 8; j++)
                                l_1900[i][j] = nullptr;
                        }
                        for (i = 0; i < 3; i++)
                            l_1915[i] = &p_4372->g_418[0][7];
                        p_4372->g_1662.x = (safe_add_func_int32_t_s_s(((safe_add_func_int8_t_s_s((make_uint1(p_4372->g_1868.y).x || (safe_mod_func_uint32_t_u_u(((~make_uint3(0x49C6AE55L, (p_24 >= (p_25 ^ (safe_sub_func_int16_t_s_s(l_1506, (((*l_1747) = (l_1873 &= 1UL)) , ((safe_mul_func_int32_t_s_s(((((*l_1886) = ((((safe_lshift(((((make_ushort4(l_1878.x, l_1878.x, l_1878.x, l_1878.x) ^ make_ushort4(l_1879.y, l_1879.y, l_1879.y, l_1879.y))) ^ ((((((((make_ushort4(l_1880.x, l_1880.x, l_1880.x, l_1880.x) ^ ((safe_mod(make_ushort4(l_1883.x, l_1883.x, l_1883.x, l_1883.x), make_ushort4(0x9413L, 0xD7ADL, 0x0120L, 1UL)))))) & ((make_ushort4((((((+make_char4(0L, p_24, 0xACL, (-2L)).w) < p_4372->g_1555[2][0]) , p_4372->g_1884) | 0x2BF5C012D40EA4F8LL) , p_4372->g_1626.w), 0x5968L, 65532UL, 0xE6FBL) ^ make_ushort4(9UL, 9UL, 9UL, 9UL))))) ^ make_ushort4(1UL, 1UL, 1UL, 1UL))) ^ make_ushort4(0UL, 0UL, 0UL, 0UL))))), make_ushort4(0x067BL, 0x067BL, 0x067BL, 0x067BL)))).w , p_24) < l_1878.y)) ^ 1UL) & p_4372->g_566[5]), p_24)) ^ l_1878.z)))))), 4294967295UL))).z, (-8L)))), 0UL)) != p_25), l_1844));
                        --l_1895;
                        l_1443 = ((l_1898 , nullptr) == (l_1901[0][0][5] = l_1899));
                        l_1490[1] &= (safe_lshift_func_int16_t_s_u((((safe_rshift_func_uint32_t_u_s(((safe_mul(((((safe_rshift(make_uint1(p_4372->g_1910.y), make_uint1(l_1911.x)))) ^ make_uint1(p_4372->g_1912.z))), make_uint1(p_4372->g_1913.z)))).x, (l_1888 = (l_1914 != l_1915[1])))) == make_int2(l_1916.x, l_1916.x).y) , ((++p_25) ^ (18446744073709551610UL < (-6L)))), (((make_ulong2(l_1921.x, l_1921.x) ^ ((~make_ulong2(l_1922.y, l_1922.y))))).y != (safe_add_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s(((safe_mul(make_uchar3(l_1931.x, l_1931.x, l_1931.x), make_uchar3(l_1932.x, l_1932.x, l_1932.x)))).x, (make_uint4(p_4372->g_1933.x, p_4372->g_1933.x, p_4372->g_1933.x, p_4372->g_1933.x).w > (((make_ushort4(((safe_sub_func_uint8_t_u_u((l_1936 == (l_1453 = nullptr)), p_26)) , ((*l_1936) , (0xAD70L <= l_1887))), l_1841, 0xFBDDL, p_24).x & 3UL) , l_1937) == &l_1307[0][0])))) , 0x2D9FDC5CL), l_1889)), 0x59L)))));
                    }
                    for (p_4372->g_71.f0 = 0; (p_4372->g_71.f0 <= 1); p_4372->g_71.f0 += 1)
                    { /* block id: 722 */
                        p_4372->g_1662.y ^= (p_4372->g_136[l_1378.f2] == 1L);
                    }
                }
                (**p_4372->g_819) = p_27;
                l_1443 &= (safe_mul_func_int32_t_s_s((safe_mod_func_int8_t_s_s(((make_int1(l_1942.x).x | ((safe_rshift_func_int8_t_s_s((((**l_1899) = (**p_4372->g_940)) , ((((safe_sub(make_long1(l_1947.z), make_long1(p_4372->g_1948.x)))).x & ((!p_24) || ((safe_div_func_int8_t_s_s(make_char4(1L, ((safe_mul_func_int8_t_s_s(make_char4(p_4372->g_1953.z, p_4372->g_1953.z, p_4372->g_1953.z, p_4372->g_1953.z).w, (safe_mul_func_uint8_t_u_u((safe_lshift_func_uint64_t_u_s(0x462DA2580746486ALL, 38)), (((((~(l_1788 ^= (make_uint2(l_1958.x, l_1958.x).y == (((p_4372->g_1662.y &= (safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(make_uchar1(l_1963.x).x, (safe_add_func_uint8_t_u_u(p_25, (&p_24 == &p_24))))), (p_4372->g_1291.x == (((((~((((make_uchar4(0x12L, ((*l_1966) = p_4372->g_947.x), (safe_mod_func_int32_t_s_s(l_1969, l_1969)), 0x08L) ^ make_uchar4(0x4CL, 0x4CL, 0x4CL, 0x4CL))) ^ make_uchar4(6UL, 6UL, 6UL, 6UL))))).x && 0UL) , &p_4372->g_1669) == l_1970))))) && 0x4C902AD9L) || hip_const_5[2][6][0])))) && (-1L)) == p_4372->g_1558.z) & 2UL) && 0L))))) || p_4372->g_498.y), 0x13L, 0xFFL).x, 7L)) , l_1762.w))) , p_24)), p_24)) , p_26)) <= (-1L)), l_1971)), p_26));
                l_1375 = (safe_lshift_func_int32_t_s_s((~(l_1792[2] ^= (safe_sub_func_uint16_t_u_u(((*l_1747) = p_26), (safe_sub_func_int16_t_s_s(((l_1978[3] == ((((*l_1310) ^= (safe_add_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u((l_1978[3] != &l_1553), (l_1969 <= (~(p_24 = (safe_mod_func_int32_t_s_s((-2L), (((safe_mul_func_uint32_t_u_u(((safe_rshift_func_int32_t_s_u(0x135B0497L, 9)) , ((((safe_mod(((~make_uint1(l_1991.z))), make_uint1(l_1992.y)))).x ^ 1UL) < l_1931.x)), 0xBFE9B3ADL)) && (-1L)) | p_24)))))))) != 255UL) | (-1L)), l_1891))) == l_1880.x) , nullptr)) != l_1608.x), p_25)))))), l_1762.z));
            }
        }
        else
        { /* block id: 738 */
            uint4 l_1999 = make_uint4(1UL, 0x0AD23FF0L, 1UL, 0x0AD23FF0L);
            uint1 l_2012 = make_uint1(0xC90E10F9L);
            int32_t l_2071 = 0xAC9F0B61L;
            int32_t l_2072[10] = {(-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L)};
            uint32_t l_2086[8];
            int i;
            for (i = 0; i < 8; i++)
                l_2086[i] = 0x7BDF5DA1L;
            for (p_4372->g_970 = 0; (p_4372->g_970 != (-13)); p_4372->g_970--)
            { /* block id: 741 */
                union U0 l_2006 = {0xD059L};
                uint32_t *l_2007 = &p_4372->g_147;
                union U1 l_2022 = {1UL};
                uint32_t ***l_2023 = &l_1311;
                int8_t *l_2043 = nullptr;
                int8_t *l_2044 = &p_4372->g_1669;
                uint64_t l_2063 = 18446744073709551611UL;
                uint32_t l_2069 = 7UL;
                int32_t l_2070 = 0xA5F1A5C1L;
                int32_t l_2081 = 0x922DA0A2L;
                int2 l_2082 = make_int2(0xA090583AL, 0x007E50D1L);
                int i;
                p_4372->g_62 |= ((p_4372->g_59 = p_24) & ((safe_sub_func_int64_t_s_s((&hip_const_6 != &p_25), p_24)) && (1UL && (make_uint2(l_1999.y, l_1999.y).y != ((safe_sub_func_int8_t_s_s((safe_mul_func_int8_t_s_s((((((safe_mod(make_uchar2((~(((((*l_2007) = ((l_2006 , &p_4372->g_471[0]) == &l_1645)) , (p_4372->g_1291.x ^ 255UL)) >= p_24) , p_4372->g_1953.w)), 0x98L), make_uchar2(0x94L, 0x94L)))) ^ make_uchar2(0x6EL, 0x6EL))).y != 0xBBL), l_2006.f0)), 1UL)) , 0x568DA990L)))));
                if (p_26)
                { /* block id: 745 */
                    uint16_t l_2014 = 0UL;
                    int16_t *l_2015 = &l_1716;
                    int16_t *l_2017 = &l_1378.f3;
                    uint8_t *l_2026 = &l_2006.f2;
                    uint8_t *l_2027 = &l_1840.f2;
                    ushort3 l_2062 = make_ushort3(0xD185L, 0x930FL, 0xD185L);
                    int i;
                    if ((safe_mod_func_int16_t_s_s(((((safe_sub_func_int32_t_s_s((((((make_uint1(0x8E0FB35FL) ^ make_uint1(4294967295UL))) | make_uint1(l_2012.x))).x , make_int1(l_2013.x).x), l_2014)) == (((l_2016 = l_2015) != (l_2017 = l_2015)) >= (0xD8L && (!(safe_add_func_int16_t_s_s(p_26, p_25)))))) | ((safe_sub_func_uint8_t_u_u((l_1339.x ^ 0x168FABA3L), ((*l_2027) = (((((l_2022 , l_2023) == &p_4372->g_1542[0]) , p_4372->g_2024) == nullptr) , l_2006.f0)))) , p_4372->g_147)) != p_25), (-9L))))
                    { /* block id: 749 */
                        union U2 ***l_2028 = &l_1899;
                        union U2 ***l_2029 = &p_4372->g_940;
                        int32_t l_2030 = 0x170D2564L;
                        uint8_t **l_2036 = &l_2027;
                        uint8_t **l_2038 = &p_4372->g_2037[1];
                        int8_t **l_2040 = nullptr;
                        int8_t *l_2042 = &l_1748[3][9][1];
                        int8_t **l_2041[5][5] = {{&l_2042, &l_2042, &l_2042, &l_2042, &l_2042}, {&l_2042, &l_2042, &l_2042, &l_2042, &l_2042}, {&l_2042, &l_2042, &l_2042, &l_2042, &l_2042}, {&l_2042, &l_2042, &l_2042, &l_2042, &l_2042}, {&l_2042, &l_2042, &l_2042, &l_2042, &l_2042}};
                        int i, j;
                        l_2030 = ((((*l_2028) = nullptr) != ((*l_2029) = &p_4372->g_941)) || make_ulong4(l_2014, 0x82CDA672BF1DF1F3LL, 0xBEC294A7829B129BLL, p_25).x);
                        l_1490[1] = ((safe_add_func_int16_t_s_s(p_26, p_4372->g_285.x)) , (((*l_2016) ^= (((safe_add_func_uint8_t_u_u((0UL < (safe_unary_minus_func_uint8_t_u((((*l_2036) = l_2026) != ((*l_2038) = p_4372->g_2037[1]))))), p_4372->g_2039)) ^ l_1999.w) < ((p_4372->g_1111.x = (p_25 = ((l_2043 = &p_4372->g_970) == l_2044))) != p_4372->g_1953.y))) == p_26));
                        l_2070 ^= (safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((safe_mul_func_int64_t_s_s(((safe_sub_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(((+l_2055) , (safe_rshift_func_uint64_t_u_s((18446744073709551614UL == (l_2006.f0 & ((safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u((+l_2006.f0), (p_25 > make_ushort4(l_2062.z, l_2062.z, l_2062.z, l_2062.z).w))), l_2063)) < (safe_rshift_func_uint64_t_u_s((((safe_lshift_func_uint32_t_u_u((0x11L || ((!((make_ushort3(6UL, 0x83A4L, 65535UL).x & ((***l_2029) , (((l_2068 = &l_1453) != nullptr) <= 0UL))) ^ 0UL)) < p_25)), p_26)) , p_24) , p_24), 11))))), 62))), 1)) > l_2063), p_26)) | l_2014), 0x1B054E2E740D2FB3LL)), (-1L))), l_2069));
                        l_2072[1] &= (~(l_2069 & (l_2014 != (l_2071 = (+(!(p_4372->g_944.y && (make_char1(0x80L).x | (l_1375 = ((**l_2036) = p_24))))))))));
                    }
                    else
                    { /* block id: 766 */
                        (**p_4372->g_819) = &l_2071;
                    }
                }
                else
                { /* block id: 769 */
                    int64_t l_2073 = 0xB9DC796784784100LL;
                    int32_t l_2074 = 0x4A6785EBL;
                    int32_t l_2075 = (-8L);
                    int32_t l_2076 = 0xFA99D5E3L;
                    int32_t l_2077 = 0x419B7663L;
                    int32_t l_2079 = (-1L);
                    int32_t l_2080 = 0xB086EFCDL;
                    int32_t l_2083 = 0x310BEA4FL;
                    int32_t l_2084 = 0x37AD12D1L;
                    int32_t l_2085 = 4L;
                    ++l_2086[4];
                    return p_4372->g_2089;
                }
            }
        }
    }
    (*l_2068) = (*l_2068);
    for (p_4372->g_71.f0 = (-7); (p_4372->g_71.f0 == 48); p_4372->g_71.f0++)
    { /* block id: 779 */
        uint32_t l_2100 = 0x0769C408L;
        union U2 ***l_2114 = &p_4372->g_940;
        uint16_t *l_2117 = nullptr;
        uint8_t *l_2118 = &p_4372->g_244.f2;
        uint2 l_2133 = make_uint2(4294967295UL, 0x1BB39B35L);
        int32_t l_2135 = 0x4209A0DFL;
        int32_t l_2140 = 1L;
        int32_t l_2141 = 0x32F2CD07L;
        int32_t l_2142 = 0x84C916B8L;
        int16_t l_2155 = (-3L);
        uint8_t l_2161 = 0xEDL;
        int64_t *l_2181[5];
        int32_t l_2190 = (-1L);
        int32_t l_2191 = 0L;
        int32_t l_2192[6];
        uint32_t l_2194 = 0x881D8151L;
        int2 l_2206 = make_int2((-1L), 0x447F3CAEL);
        uint3 l_2216 = make_uint3(18446744073709551613UL, 18446744073709551607UL, 18446744073709551613UL);
        long2 l_2268 = make_long2((-2L), 0x716EBCCFD7ED1529LL);
        uint16_t l_2288 = 2UL;
        ulong1 l_2301 = make_ulong1(1UL);
        int2 l_2318 = make_int2(5L, 7L);
        uint1 l_2324 = make_uint1(2UL);
        int32_t l_2329[8][1];
        int32_t ****l_2339 = &p_4372->g_819;
        uint16_t l_2355 = 1UL;
        union U0 *l_2364 = &p_4372->g_1308[6][1][2];
        int4 l_2408 = make_int4((-1L), (-2L), (-1L), (-2L));
        union U2 l_2433[8] = {{0L}, {0x695A281BL}, {0L}, {0x695A281BL}, {0L}, {0x695A281BL}, {0L}, {0x695A281BL}};
        union U1 l_2469 = {65535UL};
        uint64_t l_2498 = 0x8B87D062C433DA6CLL;
        ushort1 l_2506 = make_ushort1(0xF7D8L);
        int8_t l_2551 = 0x6BL;
        int i, j;
        for (i = 0; i < 5; i++)
            l_2181[i] = nullptr;
        for (i = 0; i < 6; i++)
            l_2192[i] = 9L;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 1; j++)
                l_2329[i][j] = 0x47AC7FC2L;
        }
    }
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_37 hip_const_5 p_4372->g_31 p_4372->g_44 p_4372->g_46 p_4372->g_56 p_4372->g_136 hip_const_6 p_4372->g_147 p_4372->g_391 p_4372->g_13 p_4372->g_77 p_4372->g_71 p_4372->g_62 p_4372->g_566 p_4372->g_244 p_4372->g_820 p_4372->g_441 p_4372->g_877 p_4372->g_499 p_4372->g_59 p_4372->g_179 p_4372->g_722 p_4372->g_244.f3 p_4372->g_940 p_4372->g_944 p_4372->g_947 p_4372->g_953 p_4372->g_160 p_4372->g_878 p_4372->g_970 p_4372->g_992 p_4372->g_285 p_4372->g_941 p_4372->g_163 p_4372->g_819 p_4372->g_340 p_4372->g_1043 p_4372->g_549 p_4372->g_362 p_4372->g_721 p_4372->g_526 p_4372->g_132 p_4372->g_357 p_4372->g_658 p_4372->g_705 p_4372->g_892 p_4372->g_1167 p_4372->g_527 p_4372->g_306 p_4372->g_1291 p_4372->g_724 p_4372->g_418
 * writes: p_4372->g_13 p_4372->g_37 p_4372->g_44 p_4372->g_31 p_4372->g_46 p_4372->g_59 p_4372->g_62 p_4372->g_71.f1 p_4372->g_147 p_4372->g_77 p_4372->g_418 p_4372->g_56.f2 p_4372->g_244.f0 p_4372->g_752 p_4372->g_244.f3 p_4372->g_136 p_4372->g_441 p_4372->g_722 p_4372->g_940 p_4372->g_724 p_4372->g_941 p_4372->g_285 p_4372->g_1014 p_4372->g_132 p_4372->g_244.f4
 */
__device__ uint8_t  func_28(int32_t  p_29, struct S3 * p_4372)
{ /* block id: 6 */
    int16_t l_774 = 0xA016L;
    int32_t l_783 = 0x09D3273EL;
    int32_t l_790 = 0xFD8D391DL;
    int32_t l_793 = 0x46B00A60L;
    int32_t l_794 = 0x06145181L;
    int32_t l_795 = 1L;
    int32_t ***l_822 = nullptr;
    uint32_t l_854 = 18446744073709551615UL;
    int16_t *l_910[5][9] = {{nullptr, nullptr, nullptr, &l_774, nullptr, &p_4372->g_566[5], &l_774, nullptr, nullptr}, {nullptr, nullptr, nullptr, &l_774, nullptr, &p_4372->g_566[5], &l_774, nullptr, nullptr}, {nullptr, nullptr, nullptr, &l_774, nullptr, &p_4372->g_566[5], &l_774, nullptr, nullptr}, {nullptr, nullptr, nullptr, &l_774, nullptr, &p_4372->g_566[5], &l_774, nullptr, nullptr}, {nullptr, nullptr, nullptr, &l_774, nullptr, &p_4372->g_566[5], &l_774, nullptr, nullptr}};
    int8_t l_911 = (-6L);
    uint16_t *l_929[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int64_t l_930 = 0xFEE54009539A2C45LL;
    ulong2 l_943 = make_ulong2(9UL, 0UL);
    int32_t l_982 = (-3L);
    union U0 l_991 = {0x1C72L};
    union U2 l_1012 = {0xB0CD549BL};
    int64_t l_1028[5][7][7] = {{{0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}}, {{0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}}, {{0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}}, {{0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}}, {{0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}, {0xFCEE2EBD96D70F0ELL, (-1L), 0xFCEE2EBD96D70F0ELL, 0x119F91EFB813CDB5LL, 0xBB62F5BD9BE47FEALL, 0x08A119AABDF09BD4LL, 0x5FB7DE6668E7C78BLL}}};
    int32_t l_1030 = 0xB072D2F8L;
    int32_t l_1032 = 0x11D67652L;
    int32_t l_1033 = 1L;
    int32_t l_1034[8][9] = {{0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}, {0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}, {0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}, {0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}, {0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}, {0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}, {0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}, {0x1D519CD7L, 1L, 1L, 1L, 0x1D519CD7L, 0x495044FDL, 0x1D519CD7L, 1L, 1L}};
    uint64_t l_1044 = 0xFE0B11227B2BF068LL;
    uint32_t *l_1046 = &p_4372->g_136[4];
    uint32_t **l_1045 = &l_1046;
    long2 l_1073 = make_long2((-9L), 0x854A23DBCF745E08LL);
    ulong1 l_1114 = make_ulong1(1UL);
    ulong4 l_1115 = make_ulong4(0xE4A506DB8E3768FFLL, 1UL, 0xE4A506DB8E3768FFLL, 1UL);
    ulong1 l_1131 = make_ulong1(0xD08437CA675132C8LL);
    ulong2 l_1133 = make_ulong2(0xE9CCD5C5C91B58E4LL, 9UL);
    uint64_t l_1179 = 0xF9BC96CCE99E798DLL;
    int32_t l_1225 = (-1L);
    int16_t ****l_1283 = nullptr;
    int i, j, k;
    for (p_29 = (-22); (p_29 >= 4); p_29 = safe_add_func_int32_t_s_s(p_29, 6))
    { /* block id: 9 */
        short2 l_41 = make_short2(0xD263L, (-6L));
        int32_t l_52 = 6L;
        int32_t l_782[5] = {0x494D2A9CL, 0x5B7232F1L, 0x494D2A9CL, 0x5B7232F1L, 0x494D2A9CL};
        uint64_t l_796 = 18446744073709551608UL;
        uint1 l_889 = make_uint1(0xE6B0D208L);
        int32_t *l_890 = &p_4372->g_31;
        int i;
        for (p_4372->g_13 = (-23); (p_4372->g_13 <= (-7)); p_4372->g_13 = safe_add_func_int64_t_s_s(p_4372->g_13, 4))
        { /* block id: 12 */
            int32_t *l_42 = &p_4372->g_37;
            int32_t *l_43 = &p_4372->g_44[1][2];
            if (make_int1(hip_const_7).x)
            { /* block id: 13 */
                int32_t *l_36 = &p_4372->g_37;
                (*l_36) ^= p_29;
            }
            else
            { /* block id: 15 */
                for (p_4372->g_37 = 19; (p_4372->g_37 < 8); p_4372->g_37 = safe_sub_func_uint32_t_u_u(p_4372->g_37, 1))
                { /* block id: 18 */
                    int64_t l_40 = 0xEA20016C6A45D312LL;
                    return l_40;
                }
            }
            (*l_43) = ((*l_42) |= (p_29 , (make_short3(l_41.y, l_41.y, l_41.y).x || hip_const_5[2][6][0])));
        }
        for (p_4372->g_37 = 1; (p_4372->g_37 >= 0); p_4372->g_37 -= 1)
        { /* block id: 27 */
            int16_t *l_53 = nullptr;
            int32_t l_759[8][7] = {{0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}, {0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}, {0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}, {0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}, {0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}, {0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}, {0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}, {0x35CFF39CL, 0L, 7L, 0x57CF9F49L, 0L, 0x8AB27CCDL, 0L}};
            int32_t l_767 = 0xF62D82D0L;
            uchar2 l_812 = make_uchar2(0UL, 6UL);
            int i, j;
            for (p_4372->g_13 = 1; (p_4372->g_13 >= 0); p_4372->g_13 -= 1)
            { /* block id: 30 */
                uint64_t l_763 = 0x002E0A437DADFC40LL;
                uint32_t *l_768[6][1];
                int32_t l_772 = 0x6831D0C8L;
                int32_t l_786 = 0xE5179A0EL;
                int32_t l_787 = 0L;
                int32_t l_789[8] = {0x9FFAD3B8L, (-7L), 0x9FFAD3B8L, (-7L), 0x9FFAD3B8L, (-7L), 0x9FFAD3B8L, (-7L)};
                int32_t *l_801 = &l_790;
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_768[i][j] = nullptr;
                }
                for (p_4372->g_31 = 1; (p_4372->g_31 >= 0); p_4372->g_31 -= 1)
                { /* block id: 33 */
                    int32_t *l_45 = &p_4372->g_46.x;
                    int16_t *l_49 = &hip_const_5[2][6][0];
                    int16_t *l_50 = &hip_const_5[2][6][0];
                    int16_t *l_51[9] = {&hip_const_5[2][6][0], &hip_const_5[2][6][0], &hip_const_5[3][7][0], &hip_const_5[2][6][0], &hip_const_5[2][6][0], &hip_const_5[3][7][0], &hip_const_5[2][6][0], &hip_const_5[2][6][0], &hip_const_5[3][7][0]};
                    int32_t ***l_751 = &p_4372->g_471[2];
                    int32_t l_784 = (-1L);
                    int32_t l_785 = (-2L);
                    int32_t l_788 = 0x68899455L;
                    int32_t l_791 = 0x97C858E4L;
                    int32_t l_792[3][9][7] = {{{0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}}, {{0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}}, {{0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}, {0xE57EF0EEL, 0L, 0L, 0L, 0xE57EF0EEL, (-1L), 0L}}};
                    int i, j, k;
                    (*l_45) ^= p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)];
                    if (((~(((l_52 &= p_4372->g_44[1][2]) , &l_52) != nullptr)) > (&hip_const_5[3][6][1] != l_53)))
                    { /* block id: 36 */
                        (*l_45) &= func_54(p_4372->g_56[6], p_4372);
                    }
                    else
                    { /* block id: 298 */
                        int16_t ***l_754 = &p_4372->g_724;
                        int16_t ****l_753 = &l_754;
                        p_4372->g_752 = l_751;
                        (*l_753) = nullptr;
                    }
                    for (p_4372->g_62 = 1; (p_4372->g_62 <= 5); p_4372->g_62 += 1)
                    { /* block id: 304 */
                        int8_t *l_764 = nullptr;
                        int8_t *l_765 = &hip_const_7;
                        int8_t *l_766[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        uint64_t *l_769 = nullptr;
                        uint64_t *l_770 = &hip_const_6;
                        uint64_t *l_771[7][10] = {{&hip_const_1[8][2][2], &hip_const_1[8][0][1], &hip_const_1[7][1][1], &hip_const_2, &hip_const_1[6][1][2], nullptr, &hip_const_2, &hip_const_1[6][1][2], &l_763, &hip_const_6}, {&hip_const_1[8][2][2], &hip_const_1[8][0][1], &hip_const_1[7][1][1], &hip_const_2, &hip_const_1[6][1][2], nullptr, &hip_const_2, &hip_const_1[6][1][2], &l_763, &hip_const_6}, {&hip_const_1[8][2][2], &hip_const_1[8][0][1], &hip_const_1[7][1][1], &hip_const_2, &hip_const_1[6][1][2], nullptr, &hip_const_2, &hip_const_1[6][1][2], &l_763, &hip_const_6}, {&hip_const_1[8][2][2], &hip_const_1[8][0][1], &hip_const_1[7][1][1], &hip_const_2, &hip_const_1[6][1][2], nullptr, &hip_const_2, &hip_const_1[6][1][2], &l_763, &hip_const_6}, {&hip_const_1[8][2][2], &hip_const_1[8][0][1], &hip_const_1[7][1][1], &hip_const_2, &hip_const_1[6][1][2], nullptr, &hip_const_2, &hip_const_1[6][1][2], &l_763, &hip_const_6}, {&hip_const_1[8][2][2], &hip_const_1[8][0][1], &hip_const_1[7][1][1], &hip_const_2, &hip_const_1[6][1][2], nullptr, &hip_const_2, &hip_const_1[6][1][2], &l_763, &hip_const_6}, {&hip_const_1[8][2][2], &hip_const_1[8][0][1], &hip_const_1[7][1][1], &hip_const_2, &hip_const_1[6][1][2], nullptr, &hip_const_2, &hip_const_1[6][1][2], &l_763, &hip_const_6}};
                        int32_t *l_773 = &p_4372->g_44[p_4372->g_37][p_4372->g_37];
                        int32_t *l_775 = &l_759[6][6];
                        int32_t l_776 = 0L;
                        int32_t *l_777 = nullptr;
                        int32_t *l_778 = &l_759[7][2];
                        int32_t *l_779 = &l_767;
                        int32_t *l_780 = &l_759[5][5];
                        int32_t *l_781[5][9][5] = {{{&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}}, {{&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}}, {{&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}}, {{&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}}, {{&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}, {&p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_772, &p_4372->g_44[p_4372->g_31][(p_4372->g_31 + 1)], &l_52, nullptr}}};
                        int i, j, k;
                        (*l_45) |= p_4372->g_566[p_4372->g_62];
                        (*l_773) = (make_long1((!(1L == (1L == ((l_759[5][4] = ((safe_mod_func_uint16_t_u_u(p_4372->g_566[p_4372->g_62], (p_4372->g_658.x || (l_759[7][2] < (l_772 = (((l_767 &= (safe_mul_func_uint8_t_u_u(0UL, ((*l_45) = (safe_unary_minus_func_uint64_t_u(l_763)))))) , l_768[5][0]) == nullptr)))))) > l_763)) < p_4372->g_721.y))))).x > p_4372->g_566[p_4372->g_62]);
                        l_796++;
                        (*l_773) = p_29;
                    }
                    for (p_4372->g_59 = 7; (p_4372->g_59 != (-24)); p_4372->g_59--)
                    { /* block id: 316 */
                        return p_29;
                    }
                }
                (*l_801) = l_759[7][2];
            }
            for (l_793 = 0; (l_793 <= 1); l_793 += 1)
            { /* block id: 324 */
                union U2 *l_802 = &p_4372->g_56[1];
                union U1 l_832 = {0x3BE5L};
                int i, j;
                p_4372->g_44[p_4372->g_37][(p_4372->g_37 + 1)] = (p_4372->g_244 , ((p_4372->g_44[l_793][p_4372->g_37] , &p_4372->g_77) != &p_4372->g_77));
                for (l_783 = 1; (l_783 >= 0); l_783 -= 1)
                { /* block id: 328 */
                    union U2 **l_803 = &l_802;
                    long2 l_807 = make_long2((-1L), 0L);
                    long4 l_808 = make_long4(0x3454E910B3C1AC9FLL, 2L, 0x3454E910B3C1AC9FLL, 2L);
                    union U0 l_811[8][7] = {{{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}, {{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}, {{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}, {{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}, {{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}, {{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}, {{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}, {{8UL}, {0UL}, {8UL}, {6UL}, {0x03E0L}, {0xE5E0L}, {0x2CF7L}}};
                    int32_t ***l_821 = &p_4372->g_820;
                    int32_t ****l_823 = &l_822;
                    int8_t *l_827 = nullptr;
                    int8_t *l_828 = nullptr;
                    int16_t *l_829 = nullptr;
                    int16_t *l_830 = nullptr;
                    int16_t *l_831[4] = {nullptr, nullptr, nullptr, nullptr};
                    int i, j;
                    (*l_803) = l_802;
                    (*p_4372->g_820) = &l_782[3];
                }
            }
            for (p_4372->g_244.f3 = 0; (p_4372->g_244.f3 <= 26); ++p_4372->g_244.f3)
            { /* block id: 339 */
                int16_t l_845 = 3L;
                int32_t l_846 = (-1L);
                for (l_796 = 0; (l_796 == 2); l_796 = safe_add_func_int16_t_s_s(l_796, 2))
                { /* block id: 342 */
                    int32_t *l_837 = &l_52;
                    int32_t l_838 = 0x497C22C2L;
                    int32_t l_847 = 0x80367FA7L;
                    int32_t l_848 = (-6L);
                    uint32_t l_849 = 0x6034C563L;
                    long4 l_891 = make_long4(0xAEDD27D26304DCB7LL, 0xB55F6ACC0871A811LL, 0xAEDD27D26304DCB7LL, 0xB55F6ACC0871A811LL);
                    int i;
                    (*l_837) = 0L;
                    for (l_52 = 0; (l_52 <= 5); l_52 += 1)
                    { /* block id: 346 */
                        int32_t *l_839 = &l_782[0];
                        int32_t *l_840 = &l_838;
                        int32_t *l_841 = nullptr;
                        int32_t *l_842 = &p_4372->g_44[1][2];
                        int32_t *l_843 = &l_838;
                        int32_t *l_844[5][9][4] = {{{nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}}, {{nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}}, {{nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}}, {{nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}}, {{nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}, {nullptr, nullptr, &p_4372->g_44[1][3], nullptr}}};
                        union U2 l_855 = {0x585C9941L};
                        uint16_t *l_866 = &p_4372->g_71.f0;
                        uint16_t *l_867 = nullptr;
                        uint16_t *l_868[10][2][5] = {{{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}};
                        union U0 **l_879[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int32_t l_899 = 4L;
                        int i, j, k;
                        ++l_849;
                        (*l_842) ^= ((*l_843) = ((p_4372->g_136[(p_4372->g_37 + 4)] || (l_854 ^ (!(l_855 , (safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((p_4372->g_441.z |= (safe_mod_func_int32_t_s_s(((p_4372->g_136[l_52] = ((safe_lshift_func_int32_t_s_s(make_int1(1L).x, 30)) & 65531UL)) != l_812.x), (safe_lshift_func_int8_t_s_s(l_846, 7))))), (safe_rshift_func_int8_t_s_u(l_52, (((((l_782[3] = (safe_add_func_int32_t_s_s(p_4372->g_46.x, p_29))) ^ (*l_837)) ^ 0xC0602931L) <= p_29) | 0x64E8D787L))))), hip_const_6)))))) <= p_29));
                        if (p_29)
                            continue;
                        (*l_842) ^= (safe_mod_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((p_4372->g_877 == l_879[2]), l_846)), (((*l_839) ^= (((safe_mul_func_uint16_t_u_u((((safe_mod_func_uint16_t_u_u((p_29 | ((((make_char1(p_4372->g_884.x) | make_char1((((safe_rshift_func_int8_t_s_s((safe_add_func_uint32_t_u_u(hip_const_3, make_uint1(l_889.x).x)), (&p_29 != l_890))) < ((((make_long2(l_891.x, l_891.x) ^ ((make_long2(make_long3(p_4372->g_892.z, p_4372->g_892.z, p_4372->g_892.z).x, 0xAD4E9F3172EAE587LL) ^ make_long2(((safe_div_func_uint32_t_u_u((((((((make_uchar1(((p_29 || (safe_lshift_func_int16_t_s_s((((safe_mul_func_uint32_t_u_u((((p_4372->g_56[1] , p_29) == p_29) & p_29), p_4372->g_163.x)) , p_4372->g_71) , l_812.y), 6))) >= 0xD8B55BE8L)) & make_uchar1(252UL))).x && (*l_837)) , l_846) & p_29) , 0x80L) >= 4UL), p_29)) , l_899), 9L))))) & make_long2((-1L), (-1L)))).y) == 0UL)))).x == 1L) >= 1L)), p_29)) > l_845) ^ p_4372->g_499.y), p_29)) > 0x9C5034FA3DAB73B3LL) <= p_4372->g_59)) | p_29)));
                    }
                    (*l_837) &= make_int3(p_4372->g_900.x, p_4372->g_900.x, p_4372->g_900.x).x;
                }
                for (l_52 = 0; (l_52 <= (-10)); l_52 = safe_sub_func_int64_t_s_s(l_52, 8))
                { /* block id: 361 */
                    int16_t l_903 = 0L;
                    int32_t *l_904[3][3][9] = {{{nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, &p_4372->g_13, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                    int i, j, k;
                    l_795 ^= l_903;
                    (*p_4372->g_820) = l_904[2][0][0];
                }
            }
        }
        l_52 |= (safe_rshift_func_int8_t_s_s((0x56D0AD9AL && (l_782[3] = (p_4372->g_179.x == p_29))), l_41.x));
    }
    if ((l_793 <= (l_911 = (safe_unary_minus_func_int32_t_s(p_29)))))
    { /* block id: 371 */
        return p_29;
    }
    else
    { /* block id: 373 */
        int64_t l_922 = 1L;
        int32_t *l_927 = nullptr;
        int32_t *l_928 = &p_4372->g_37;
        (*l_928) = (safe_mul_func_uint16_t_u_u(make_ushort3(p_4372->g_44[1][2], (safe_rshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((safe_sub_func_int64_t_s_s(0xB0E454641EC3B6DBLL, l_922)) ^ l_922), p_29)), l_922)), (safe_sub_func_uint8_t_u_u(l_922, (-1L))))), 65535UL).y, (safe_add_func_int16_t_s_s(p_29, p_29))));
    }
    if (((--p_4372->g_722.y) , (-9L)))
    { /* block id: 377 */
        union U2 *l_938 = &p_4372->g_56[6];
        union U2 **l_937 = &l_938;
        union U1 l_939[7] = {{65532UL}, {1UL}, {65532UL}, {1UL}, {65532UL}, {1UL}, {65532UL}};
        union U0 *l_963 = &p_4372->g_244;
        int32_t l_966 = (-1L);
        uint2 l_967 = make_uint2(4294967295UL, 0x7C3E4F52L);
        int32_t l_984 = 0xA50C203BL;
        uint64_t *l_1010 = &hip_const_6;
        int32_t l_1019[6] = {0L, 0L, 7L, 0L, 0L, 7L};
        uint32_t l_1020 = 0xBD38729CL;
        int8_t l_1029 = 0x53L;
        int32_t l_1035 = 0L;
        uint8_t l_1036 = 255UL;
        uint32_t ***l_1047 = &l_1045;
        int32_t *l_1054[10] = {&l_1035, &l_1035, &l_1035, &l_1035, &l_1035, &l_1035, &l_1035, &l_1035, &l_1035, &l_1035};
        int i;
        for (p_4372->g_244.f3 = 0; (p_4372->g_244.f3 < 26); ++p_4372->g_244.f3)
        { /* block id: 380 */
            union U2 ***l_942 = &p_4372->g_940;
            int3 l_952 = make_int3(0x8AE7FE9CL, (-4L), 0x8AE7FE9CL);
            int16_t ****l_954 = nullptr;
            int32_t l_955 = 3L;
            int32_t *l_956 = &p_4372->g_62;
            int64_t l_990 = (-1L);
            ulong3 l_995 = make_ulong3(0x69E2D1C4339834F5LL, 0UL, 0x69E2D1C4339834F5LL);
            ulong1 l_996 = make_ulong1(18446744073709551615UL);
            uint64_t *l_1011[4][8][8] = {{{&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}}, {{&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}}, {{&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}}, {{&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}, {&hip_const_1[7][2][4], nullptr, &hip_const_2, &hip_const_6, nullptr, nullptr, &hip_const_2, nullptr}}};
            int i, j, k;
            if (((*l_956) |= (((safe_sub_func_uint64_t_u_u(((make_ulong2((l_937 == ((*l_942) = (l_939[6] , p_4372->g_940))), make_ulong1(l_943.y).x) ^ make_ulong2(p_4372->g_944.y, p_4372->g_944.y))).y, ((((safe_div(make_long3(p_4372->g_947.x, p_4372->g_947.x, p_4372->g_947.x), ((make_long3((((safe_rshift_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((-1L), l_952.x)) , make_short3(p_4372->g_953.x, p_4372->g_953.x, p_4372->g_953.x).z), 3)) | ((p_4372->g_160.y ^ (p_29 , ((nullptr != l_954) , (-3L)))) < p_29)) == l_955), p_29, 5L) ^ make_long3(0x5DD7D0DF31108BA7LL, 0x5DD7D0DF31108BA7LL, 0x5DD7D0DF31108BA7LL)))))) & make_long3(0x074DACABBB6751CBLL, 0x074DACABBB6751CBLL, 0x074DACABBB6751CBLL))).z)) || p_29) == p_29)))
            { /* block id: 383 */
                if (p_29)
                    break;
            }
            else
            { /* block id: 385 */
                uint4 l_961 = make_uint4(0x8916DA00L, 4294967289UL, 0x8916DA00L, 4294967289UL);
                uint32_t *l_962 = &p_4372->g_136[0];
                int16_t **l_964 = &l_910[4][5];
                int16_t ***l_965[10][8][3] = {{{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}, {{&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}, {&l_964, &l_964, nullptr}}};
                int32_t l_981 = 7L;
                int32_t l_983 = 0L;
                union U2 *l_997[9][10] = {{&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}, {&p_4372->g_56[6], nullptr, &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[2], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6], &p_4372->g_56[6]}};
                int32_t l_1007 = 0x587D5567L;
                union U1 *l_1013 = &l_939[3];
                int32_t *l_1023 = nullptr;
                int32_t *l_1024 = &l_1019[3];
                int32_t *l_1025 = &l_795;
                int32_t *l_1026 = &l_981;
                int32_t *l_1027[2];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1027[i] = &p_4372->g_44[0][2];
                if (((make_int1(0x84D01681L).x != ((*l_962) |= (safe_sub_func_uint64_t_u_u((p_29 != (l_939[6].f0 == (0x8AA2CB2EL & (safe_lshift_func_uint32_t_u_u(make_uint2(l_961.x, l_961.x).y, 4))))), 0x2D41DDA422123777LL)))) <= ((((*p_4372->g_877) != l_963) , &p_4372->g_418[0][8]) == (p_4372->g_724 = l_964))))
                { /* block id: 388 */
                    int32_t l_980 = 0xC2ECF719L;
                    uint32_t l_985 = 4294967290UL;
                    int64_t *l_993 = nullptr;
                    int64_t *l_994[3];
                    uint8_t *l_1002 = &l_991.f2;
                    uint8_t *l_1003 = nullptr;
                    uint8_t *l_1004 = &l_991.f2;
                    uint8_t *l_1005 = &l_991.f2;
                    uint8_t *l_1006[3][3][7] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                    union U1 **l_1015 = &l_1013;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_994[i] = nullptr;
                    --l_967.y;
                    if (p_29)
                    { /* block id: 390 */
                        int32_t *l_971 = &l_795;
                        int32_t *l_972 = &p_4372->g_56[6].f0;
                        int32_t *l_973 = &l_966;
                        int32_t *l_974 = &l_783;
                        int32_t *l_975 = &p_4372->g_56[6].f0;
                        int32_t *l_976 = nullptr;
                        int32_t *l_977 = nullptr;
                        int32_t *l_978 = &l_966;
                        int32_t *l_979[10][8] = {{nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}, {nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59, nullptr, &p_4372->g_59}};
                        int i, j;
                        (*l_956) |= (p_4372->g_970 , p_29);
                        --l_985;
                        (*l_974) = p_29;
                    }
                    else
                    { /* block id: 394 */
                        if (l_980)
                            break;
                    }
                    (*l_956) = (safe_mul_func_uint8_t_u_u(((((make_long3(0xC28F9E3A02D6A308LL, (((l_990 && (((l_991 , ((make_long2(8L, 0x1AB71E0EA70FEC3DLL) ^ make_long2(p_4372->g_992.y, p_4372->g_992.y))).y) && ((l_981 |= p_4372->g_285.x) || make_long2(0xBA951325CF3CDE01LL, 0x292FC61990FE411FLL).x)) | ((make_ulong2(l_995.x, l_995.x).y ^ make_ulong1(l_996.x).x) , (((*l_937) = l_997[7][5]) == ((**l_942) = (**l_942)))))) , p_29) && (safe_sub_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s(((p_4372->g_285.x--) , 2L), 1UL)) && (((make_uint1((l_1010 != l_1011[2][2][0])).x || l_774) || p_4372->g_46.x) && p_4372->g_163.y)), p_4372->g_992.y))), 2L).z < p_4372->g_566[5]) != (*l_956)) , l_1012) , 0x51L), l_961.w));
                    (*l_1015) = (p_4372->g_1014 = l_1013);
                }
                else
                { /* block id: 404 */
                    int16_t l_1016 = (-4L);
                    int32_t *l_1017 = nullptr;
                    int32_t *l_1018[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1018[i] = &p_4372->g_59;
                    l_1020++;
                    return p_29;
                }
                ++l_1036;
            }
            (**p_4372->g_819) = l_956;
            if ((***p_4372->g_819))
                break;
            return p_4372->g_340.x;
        }
        l_1032 = ((safe_div_func_int16_t_s_s(((safe_lshift_func_int32_t_s_u(((make_int4(p_4372->g_1043.y, p_4372->g_1043.y, p_4372->g_1043.y, p_4372->g_1043.y) ^ make_int4((-3L), 0x30F2998EL, (-4L), ((p_4372->g_549.x , l_1044) ^ (((*l_1047) = l_1045) != (make_int4(0L, 1L, (nullptr != &p_29), 3L).y , &l_1046)))))).w, (safe_mod_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((safe_div_func_int8_t_s_s(((**p_4372->g_940) , l_984), p_29)), p_4372->g_362.y)), p_29)))) != 0xCEL), 0x5446L)) <= 2L);
        return p_4372->g_285.x;
    }
    else
    { /* block id: 417 */
        uint8_t l_1059 = 0x8FL;
        uint16_t l_1078 = 65528UL;
        union U1 **l_1083 = &p_4372->g_1014;
        int32_t l_1084 = 1L;
        int32_t l_1094 = 0x93C0B3E9L;
        int32_t l_1095 = 0x1D6DA717L;
        uint64_t l_1103 = 1UL;
        ulong1 l_1120 = make_ulong1(0x6FEFE4B75DA06E0ALL);
        union U0 l_1159[4] = {{65535UL}, {65535UL}, {65535UL}, {65535UL}};
        int32_t l_1162 = 0xE4FDF260L;
        uint8_t l_1180 = 0xBCL;
        int16_t ***l_1197 = &p_4372->g_724;
        uint64_t l_1205 = 18446744073709551609UL;
        int32_t ***l_1243 = &p_4372->g_471[0];
        int32_t l_1265 = 0L;
        int32_t l_1266 = (-3L);
        int32_t l_1267 = 0x080E01E7L;
        int32_t l_1268 = 0x3BB51FCDL;
        int32_t l_1269 = 0x5E123CDBL;
        int32_t l_1270 = 0xC6A42A55L;
        uint8_t l_1271 = 0x32L;
        int16_t ****l_1282[9][2] = {{nullptr, &l_1197}, {nullptr, &l_1197}, {nullptr, &l_1197}, {nullptr, &l_1197}, {nullptr, &l_1197}, {nullptr, &l_1197}, {nullptr, &l_1197}, {nullptr, &l_1197}, {nullptr, &l_1197}};
        int16_t *****l_1281 = &l_1282[7][1];
        int8_t *l_1284[7][7][5] = {{{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}};
        int32_t ***l_1292[4];
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_1292[i] = nullptr;
lbl_1274:
        for (l_982 = 7; (l_982 <= (-16)); l_982--)
        { /* block id: 420 */
            int32_t *l_1057 = &l_794;
            int32_t *l_1058 = nullptr;
            int64_t *l_1066 = nullptr;
            int64_t *l_1067 = nullptr;
            int64_t *l_1068 = &hip_const_3;
            int64_t *l_1069 = nullptr;
            int64_t *l_1070[8];
            int2 l_1071 = make_int2(0xA38FF5DCL, 0x27F7F7BBL);
            ushort4 l_1072 = make_ushort4(65527UL, 0x0951L, 65527UL, 0x0951L);
            int32_t *l_1079 = nullptr;
            int32_t *l_1080 = nullptr;
            int32_t *l_1081 = &l_795;
            union U1 **l_1082 = &p_4372->g_1014;
            int16_t l_1104 = (-1L);
            short1 l_1123 = make_short1(0L);
            uchar3 l_1126 = make_uchar3(0xC8L, 0UL, 0xC8L);
            int64_t l_1134[6][1] = {{(-7L)}, {(-7L)}, {(-7L)}, {(-7L)}, {(-7L)}, {(-7L)}};
            char3 l_1198 = make_char3(0x5DL, 7L, 0x5DL);
            uint16_t l_1249 = 0xB629L;
            int i, j;
            for (i = 0; i < 8; i++)
                l_1070[i] = &l_1028[1][6][5];
            (*l_1057) ^= p_29;
            --l_1059;
            if (hip_const_6)
                goto lbl_1274;
            if ((safe_mul_func_uint16_t_u_u(((((safe_mod_func_int16_t_s_s(((((*l_1057) = (p_29 == ((l_1034[2][0] = (*l_1057)) || p_4372->g_721.x))) | (p_4372->g_526.z <= 4294967295UL)) && make_int4(l_1071.x, l_1071.x, l_1071.x, l_1071.x).y), make_ushort4(l_1072.y, l_1072.y, l_1072.y, l_1072.y).x)) | (!(l_1012.f0 |= make_long2(l_1073.x, l_1073.x).y))) , (safe_lshift_func_int16_t_s_u(((l_943.y || p_29) , 1L), 6))) && (((safe_mod_func_int32_t_s_s(((*l_1081) |= (p_4372->g_132.x ^= ((((*l_1057) ^= p_29) , p_29) , l_1078))), 0x42AA5F14L)) , l_1082) == l_1083)), p_29)))
            { /* block id: 429 */
                uint16_t l_1096 = 0UL;
                int8_t *l_1124 = nullptr;
                int8_t *l_1125 = &l_911;
                uint64_t *l_1132 = &l_991.f1;
                int32_t l_1135 = 3L;
                for (p_4372->g_13 = 0; (p_4372->g_13 <= 5); p_4372->g_13 += 1)
                { /* block id: 432 */
                    int16_t l_1085 = 7L;
                    int32_t *l_1086 = &p_4372->g_56[6].f0;
                    int32_t *l_1087 = &p_4372->g_59;
                    int32_t *l_1088 = &l_1034[2][0];
                    int32_t *l_1089 = nullptr;
                    int32_t *l_1090 = nullptr;
                    int32_t l_1091 = (-7L);
                    int32_t l_1092[8][4] = {{2L, 2L, 0x6BF66B46L, 1L}, {2L, 2L, 0x6BF66B46L, 1L}, {2L, 2L, 0x6BF66B46L, 1L}, {2L, 2L, 0x6BF66B46L, 1L}, {2L, 2L, 0x6BF66B46L, 1L}, {2L, 2L, 0x6BF66B46L, 1L}, {2L, 2L, 0x6BF66B46L, 1L}, {2L, 2L, 0x6BF66B46L, 1L}};
                    int32_t *l_1093[7][10] = {{&l_1091, &l_794, &l_1091, &l_1091, &p_4372->g_62, &p_4372->g_13, &l_1034[7][5], &l_1034[7][5], &p_4372->g_13, &p_4372->g_62}, {&l_1091, &l_794, &l_1091, &l_1091, &p_4372->g_62, &p_4372->g_13, &l_1034[7][5], &l_1034[7][5], &p_4372->g_13, &p_4372->g_62}, {&l_1091, &l_794, &l_1091, &l_1091, &p_4372->g_62, &p_4372->g_13, &l_1034[7][5], &l_1034[7][5], &p_4372->g_13, &p_4372->g_62}, {&l_1091, &l_794, &l_1091, &l_1091, &p_4372->g_62, &p_4372->g_13, &l_1034[7][5], &l_1034[7][5], &p_4372->g_13, &p_4372->g_62}, {&l_1091, &l_794, &l_1091, &l_1091, &p_4372->g_62, &p_4372->g_13, &l_1034[7][5], &l_1034[7][5], &p_4372->g_13, &p_4372->g_62}, {&l_1091, &l_794, &l_1091, &l_1091, &p_4372->g_62, &p_4372->g_13, &l_1034[7][5], &l_1034[7][5], &p_4372->g_13, &p_4372->g_62}, {&l_1091, &l_794, &l_1091, &l_1091, &p_4372->g_62, &p_4372->g_13, &l_1034[7][5], &l_1034[7][5], &p_4372->g_13, &p_4372->g_62}};
                    int i, j;
                    --l_1096;
                }
                if ((*l_1057))
                    continue;
                (*p_4372->g_820) = &p_4372->g_59;
            }
            else
            { /* block id: 442 */
                union U2 l_1158 = {1L};
                union U2 ***l_1161 = &p_4372->g_940;
                int32_t *l_1164 = &p_4372->g_37;
                uint32_t l_1181 = 0x9E2FB88BL;
                union U0 l_1192 = {65535UL};
                uchar4 l_1194 = make_uchar4(0UL, 0x8CL, 0UL, 0x8CL);
                uint32_t l_1238 = 0xE5F4AC07L;
                int32_t ***l_1245 = &p_4372->g_471[0];
                int32_t *l_1250 = &l_790;
                int32_t *l_1251 = &l_783;
                int32_t *l_1252 = nullptr;
                int32_t *l_1253 = &l_1034[2][0];
                int32_t *l_1254 = &l_790;
                int32_t *l_1255 = &l_1034[2][0];
                int32_t *l_1256 = &l_795;
                int32_t *l_1257 = &l_783;
                int32_t *l_1258 = &l_794;
                int32_t *l_1259 = &p_4372->g_1178[5][1];
                int32_t *l_1260 = &p_4372->g_1178[6][6];
                int32_t *l_1261 = &p_4372->g_62;
                int32_t *l_1262 = &p_4372->g_1178[5][1];
                int32_t *l_1263 = &p_4372->g_44[1][1];
                int32_t *l_1264[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_1264[i] = &l_1084;
                for (p_4372->g_244.f4 = 0; (p_4372->g_244.f4 <= 5); p_4372->g_244.f4 += 1)
                { /* block id: 445 */
                    union U0 l_1160 = {3UL};
                    uint8_t *l_1182[8];
                    char1 l_1220 = make_char1(0x0FL);
                    int i;
                    for (i = 0; i < 8; i++)
                        l_1182[i] = nullptr;
                    for (l_1030 = 0; (l_1030 <= 5); l_1030 += 1)
                    { /* block id: 448 */
                        int32_t l_1163 = (-1L);
                        int i;
                        (*p_4372->g_820) = ((make_ulong2(p_4372->g_1136.x, p_4372->g_1136.x).x >= ((safe_mul_func_int64_t_s_s(((l_1163 = (safe_mod_func_int32_t_s_s(((safe_add(make_int4((safe_lshift_func_uint8_t_u_s((0xECA5L | (((~(make_ulong3(1UL, 0UL, (((safe_sub_func_uint32_t_u_u(0x1C7C431DL, ((*p_4372->g_941) , ((safe_rshift(make_int4(0x16A6E426L, ((safe_lshift_func_uint16_t_u_u((1UL | (((*l_1057) = (safe_unary_minus_func_int8_t_s(0L))) & (safe_add_func_uint16_t_u_u(7UL, (safe_div_func_uint8_t_u_u((((safe_mod_func_int16_t_s_s(0x423BL, make_short4((((l_1158 , ((l_1160 = l_1159[0]) , &p_4372->g_940)) == l_1161) , 0x0951L), 0x67A9L, (-1L), 0x5D55L).y)) , nullptr) != nullptr), p_4372->g_160.x)))))), l_1162)) != l_1158.f0), (-1L), p_29), make_int4(32, 32, 32, 32)))).x))) != p_29) , p_4372->g_953.x)).y | l_1059)) >= 0x2CADL) & p_4372->g_658.x)), 4)), p_29, 0xE0A72466L, (-7L)), make_int4(0x6A2EEB5CL, 0x6A2EEB5CL, 0x6A2EEB5CL, 0x6A2EEB5CL)))).z, p_29))) ^ 0x0E27L), hip_const_6)) >= p_29)) , l_1164);
                        return p_4372->g_357.w;
                    }
                    if (p_29)
                        continue;
                    if (((246UL >= ((*l_1081) ^= (safe_rshift_func_uint64_t_u_u(make_ulong2(p_4372->g_1167.y, p_4372->g_1167.y).x, ((!(p_29 & (((safe_add_func_int64_t_s_s(make_long3(((((make_ushort4(0x7E1EL, make_ushort1((*l_1164)).x, p_4372->g_441.y, (safe_rshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u((((safe_sub_func_uint32_t_u_u(((safe_add_func_uint16_t_u_u((*l_1164), (p_4372->g_1178[5][1] = 0xE46FL))) | make_ushort2((p_4372->g_71.f0 = ((0x0100L >= (p_29 == ((l_1159[1] , l_1160.f0) & p_4372->g_391.y))) ^ p_4372->g_705.y)), 7UL).x), l_1179)) != (*l_1164)) && p_29), p_4372->g_900.z)), l_1078))) | make_ushort4(1UL, 1UL, 1UL, 1UL))).w , 0x3F10CEDC5D948D1CLL) >= p_29), l_1160.f0, p_4372->g_62).y, p_29)) > l_1180) < p_29))) && l_1181))))) < p_4372->g_658.y))
                    { /* block id: 459 */
                        int16_t ***l_1196 = &p_4372->g_724;
                        int16_t ****l_1195 = &l_1196;
                        (*l_1057) |= ((*l_1164) = (((safe_unary_minus(((safe_mod(((safe_sub(((make_char1(p_4372->g_1187.y) | ((safe_mod(make_char1((p_29 && (((safe_mod_func_int32_t_s_s(0xBF6375AFL, (l_1192 , 0x403578FFL))) || (safe_unary_minus_func_uint8_t_u(make_uchar2(make_uchar3(l_1194.x, l_1194.x, l_1194.x).y, 1UL).y))) , (((*l_1195) = &p_4372->g_724) != l_1197)))), make_char1(0L)))))), ((make_char1(l_1198.y) & make_char1(0x8FL)))))), ((safe_div(make_char1((safe_sub_func_uint16_t_u_u((p_29 && make_short1((((safe_add_func_uint64_t_u_u(0x640D5B0E815F7D72LL, p_4372->g_658.x)) >= p_4372->g_1167.z) | l_1205)).x), p_4372->g_441.w))), make_char1((-7L))))))))))).x || p_29));
                        (**p_4372->g_819) = l_1057;
                    }
                    else
                    { /* block id: 464 */
                        char1 l_1221 = make_char1(0xF7L);
                        int8_t *l_1226[6][10] = {{nullptr, nullptr, &l_911, nullptr, nullptr, nullptr, nullptr, nullptr, &l_911, nullptr}, {nullptr, nullptr, &l_911, nullptr, nullptr, nullptr, nullptr, nullptr, &l_911, nullptr}, {nullptr, nullptr, &l_911, nullptr, nullptr, nullptr, nullptr, nullptr, &l_911, nullptr}, {nullptr, nullptr, &l_911, nullptr, nullptr, nullptr, nullptr, nullptr, &l_911, nullptr}, {nullptr, nullptr, &l_911, nullptr, nullptr, nullptr, nullptr, nullptr, &l_911, nullptr}, {nullptr, nullptr, &l_911, nullptr, nullptr, nullptr, nullptr, nullptr, &l_911, nullptr}};
                        int32_t l_1237 = 0xE5F1FF28L;
                        int32_t *l_1239 = nullptr;
                        int32_t *l_1240 = &l_793;
                        int i, j;
                        (*l_1240) ^= (safe_mul_func_int8_t_s_s((p_4372->g_1043.x , (safe_add_func_int32_t_s_s((safe_add_func_uint32_t_u_u(((safe_sub_func_int32_t_s_s((safe_add_func_int32_t_s_s((p_29 | ((0xBCL <= make_uchar2(255UL, p_4372->g_481.y).x) || ((safe_div(make_char4(make_char3(6L, 0x9FL, (-4L)).x, (-4L), 0xFAL, ((safe_mul(make_char1(l_1220.x), make_char1(l_1221.x)))).x), make_char4(0xECL, 0x6DL, 0x09L, ((*l_1164) = (safe_sub_func_int64_t_s_s((l_1225 = make_long3(p_4372->g_1224.y, p_4372->g_1224.y, p_4372->g_1224.y).y), (*l_1081)))))))).x)), ((((-4L) == ((safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(p_29, 3)), ((l_1237 = (safe_div_func_uint64_t_u_u(0xBB798E76BDB01525LL, (safe_lshift_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((~p_4372->g_705.x), 4)), p_4372->g_892.w))))) == (*l_1057)))) || 65535UL)) > p_29) || l_1238))), l_1162)) != p_4372->g_1167.y), 0x9AF2EA5FL)), (-9L)))), p_4372->g_527.z));
                        return p_4372->g_306.y;
                    }
                }
                for (l_1181 = (-2); (l_1181 < 55); ++l_1181)
                { /* block id: 474 */
                    int32_t ****l_1244 = nullptr;
                    int32_t *l_1248 = nullptr;
                    l_1245 = l_1243;
                    for (p_4372->g_147 = 24; (p_4372->g_147 != 15); p_4372->g_147 = safe_sub_func_uint8_t_u_u(p_4372->g_147, 9))
                    { /* block id: 478 */
                        (*p_4372->g_820) = l_1248;
                        (*p_4372->g_940) = (*p_4372->g_940);
                        if (p_29)
                            continue;
                    }
                    if (l_1249)
                        continue;
                }
                l_1271--;
            }
        }
        p_4372->g_46.x = ((safe_lshift_func_int16_t_s_s((safe_lshift_func_int64_t_s_s((nullptr != &hip_const_3), (safe_div_func_int32_t_s_s(p_29, ((((*l_1281) = &l_1197) != l_1283) , (l_1159[0] , l_1271)))))), 2)) | (l_1265 &= p_29));
        l_795 = (safe_lshift_func_int64_t_s_u((((safe_mul_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(make_ulong1(p_4372->g_1291.z).x, ((*p_4372->g_724) == ((((l_1292[2] == (l_822 = &p_4372->g_820)) != p_4372->g_1043.y) > ((p_29 , ((l_1114.x < (++(**l_1045))) < hip_const_6)) || 0xB1L)) , (*p_4372->g_724))))), l_943.y)) >= 0UL) > (-6L)), p_4372->g_722.x));
    }
    return p_4372->g_44[1][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_59 p_4372->g_136 hip_const_6 p_4372->g_147 p_4372->g_391 p_4372->g_13 p_4372->g_77 p_4372->g_71 p_4372->g_362 p_4372->g_244.f0
 * writes: p_4372->g_59 p_4372->g_62 p_4372->g_71.f1 p_4372->g_147 p_4372->g_77 p_4372->g_418 p_4372->g_56.f2 p_4372->g_362 p_4372->g_244.f0
 */
__device__ int32_t  func_54(union U2  p_55, struct S3 * p_4372)
{ /* block id: 37 */
    uint16_t l_369[7][9][4] = {{{0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}}, {{0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}}, {{0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}}, {{0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}}, {{0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}}, {{0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}}, {{0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}, {0x5564L, 0xE2F4L, 0x14D9L, 65535UL}}};
    int16_t l_380 = 0L;
    uchar4 l_424 = make_uchar4(0x18L, 0x39L, 0x18L, 0x39L);
    uint8_t *l_425[4][5] = {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}};
    int32_t l_428 = 0x0BC76E3EL;
    union U0 l_429 = {0xB8A0L};
    int32_t l_430[5][5][8] = {{{(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}}, {{(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}}, {{(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}}, {{(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}}, {{(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}, {(-1L), 0xA58FD17BL, 0xA58FD17BL, (-1L), (-1L), 1L, 0L, 2L}}};
    uint32_t l_431[6][9] = {{18446744073709551610UL, 0x1BF91304L, 7UL, 0xF90AA0F6L, 0xB59AF330L, 0xD2A2814DL, 0UL, 0x9DCF4C54L, 0UL}, {18446744073709551610UL, 0x1BF91304L, 7UL, 0xF90AA0F6L, 0xB59AF330L, 0xD2A2814DL, 0UL, 0x9DCF4C54L, 0UL}, {18446744073709551610UL, 0x1BF91304L, 7UL, 0xF90AA0F6L, 0xB59AF330L, 0xD2A2814DL, 0UL, 0x9DCF4C54L, 0UL}, {18446744073709551610UL, 0x1BF91304L, 7UL, 0xF90AA0F6L, 0xB59AF330L, 0xD2A2814DL, 0UL, 0x9DCF4C54L, 0UL}, {18446744073709551610UL, 0x1BF91304L, 7UL, 0xF90AA0F6L, 0xB59AF330L, 0xD2A2814DL, 0UL, 0x9DCF4C54L, 0UL}, {18446744073709551610UL, 0x1BF91304L, 7UL, 0xF90AA0F6L, 0xB59AF330L, 0xD2A2814DL, 0UL, 0x9DCF4C54L, 0UL}};
    int32_t *l_470 = &p_4372->g_31;
    int32_t **l_469 = &l_470;
    int4 l_509 = make_int4(1L, 0x96024B26L, 1L, 0x96024B26L);
    union U2 *l_597[1];
    int2 l_661 = make_int2(0x555FF2C1L, (-1L));
    char3 l_662 = make_char3(0xE4L, 1L, 0xE4L);
    int32_t l_665 = 0x9BCDC577L;
    ulong1 l_691 = make_ulong1(0x10A7C55B63308B15LL);
    union U1 l_701 = {65535UL};
    char1 l_712 = make_char1(0x76L);
    int32_t *l_749[4][5][2] = {{{&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}}, {{&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}}, {{&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}}, {{&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}, {&l_430[3][3][2], &p_4372->g_56[6].f0}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_597[i] = &p_4372->g_56[6];
    for (p_55.f2 = 0; (p_55.f2 > 10); ++p_55.f2)
    { /* block id: 40 */
        uint32_t l_70 = 2UL;
        int32_t **l_383 = &p_4372->g_77;
        int32_t l_403 = 1L;
        uint32_t l_405[5][5][2] = {{{0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}}, {{0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}}, {{0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}}, {{0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}}, {{0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}, {0UL, 4294967287UL}}};
        int i, j, k;
        if (p_55.f2)
        { /* block id: 41 */
            int32_t *l_336 = &p_4372->g_44[1][2];
            uint32_t *l_411 = &l_405[2][0][0];
            for (p_4372->g_59 = 0; (p_4372->g_59 > (-15)); p_4372->g_59 = safe_sub_func_int64_t_s_s(p_4372->g_59, 2))
            { /* block id: 44 */
                uint16_t l_364 = 1UL;
                long3 l_393 = make_long3(0xFF5F84A0A2328D64LL, 1L, 0xFF5F84A0A2328D64LL);
                int32_t l_398 = 0x8954F009L;
                uint32_t *l_412 = &l_70;
                int16_t *l_413 = &p_4372->g_71.f1;
                int i;
                for (p_4372->g_62 = 0; (p_4372->g_62 >= 1); p_4372->g_62++)
                { /* block id: 47 */
                    int16_t l_388 = 0x952EL;
                }
                for (l_380 = 5; (l_380 >= 0); l_380 -= 1)
                { /* block id: 189 */
                    int32_t l_404 = 0x294204A8L;
                    char3 l_410 = make_char3(0L, 0x64L, 0L);
                    int i;
                    for (p_4372->g_71.f1 = 1; (p_4372->g_71.f1 >= 0); p_4372->g_71.f1 -= 1)
                    { /* block id: 192 */
                        int i;
                        return p_4372->g_136[l_380];
                    }
                    for (p_4372->g_147 = 1; (p_4372->g_147 <= 5); p_4372->g_147 += 1)
                    { /* block id: 197 */
                        int32_t *l_401 = nullptr;
                        int32_t *l_402[7] = {&p_4372->g_44[1][2], &p_4372->g_62, &p_4372->g_44[1][2], &p_4372->g_62, &p_4372->g_44[1][2], &p_4372->g_62, &p_4372->g_44[1][2]};
                        int16_t *l_417 = &hip_const_5[3][1][0];
                        int16_t **l_416[1];
                        int32_t *l_419 = &p_4372->g_56[6].f2;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_416[i] = &l_417;
                        if (p_4372->g_136[l_380])
                            break;
                        (*l_383) = &l_398;
                        l_405[2][0][0]++;
                        (**l_383) = (safe_lshift_func_int16_t_s_s(((make_char4(l_410.y, l_410.y, l_410.y, l_410.y).x , ((((l_411 == l_412) >= ((((*l_419) = ((l_413 != (p_4372->g_418[0][7] = (((safe_sub(make_short2(0x0B3DL, 2L), ((make_short2((-1L), (l_410.x <= (0x45E57118F05971BFLL & (((p_55.f2 == 0x09L) <= (-1L)) == (1UL >= 0xFFL))))) ^ make_short2(1L, 1L)))))).x , nullptr))) >= 0L)) , hip_const_6) , 255UL)) & p_4372->g_147) > p_4372->g_391.y)) , (-1L)), p_4372->g_13));
                    }
                }
            }
            return p_55.f2;
        }
        else
        { /* block id: 208 */
            return l_380;
        }
    }
    if ((((safe_div_func_uint64_t_u_u((p_4372->g_71 , 18446744073709551615UL), (safe_div_func_uint64_t_u_u(((0L != (((make_uchar1(l_424.w) | make_uchar1(((l_430[0][3][1] = (((((l_428 = (++p_4372->g_362.z)) , l_429) , ((18446744073709551610UL < l_428) , (&l_428 != (p_55 , &l_428)))) , 0UL) & p_55.f2)) > 0x86L)))).x , l_424.x)) != p_55.f2), 0xA15FD459E581E608LL)))) != 0x3FDD34F56F5195AALL) >= l_431[5][2]))
    { /* block id: 215 */
        uint64_t l_436 = 1UL;
        int64_t l_450 = 0xCB84A5573BDD2BEBLL;
        int32_t l_454 = 0x42373CDFL;
        int32_t ***l_487 = &p_4372->g_471[1];
        long2 l_546 = make_long2((-7L), 0x48FE03E5D4793746LL);
        int32_t l_557 = 0xEF5639C9L;
        int32_t **l_562 = nullptr;
        int32_t l_577 = 0x410E9796L;
        int32_t l_578 = 0L;
        int32_t l_579 = 0x99A131E4L;
        int32_t l_580 = (-1L);
        int32_t l_581 = (-9L);
        int32_t l_583 = (-1L);
        int32_t l_584[4];
        char4 l_680 = make_char4(1L, 0xCAL, 1L, 0xCAL);
        uint32_t l_686 = 0x9E26A667L;
        int2 l_694 = make_int2((-10L), (-5L));
        int16_t **l_723 = &p_4372->g_418[0][7];
        int i;
        for (i = 0; i < 4; i++)
            l_584[i] = 0xCE0A833FL;
        for (p_4372->g_244.f0 = (-26); (p_4372->g_244.f0 > 21); ++p_4372->g_244.f0)
        { /* block id: 218 */
            uint16_t l_446 = 0x58DEL;
            int32_t l_452 = 0xDD572776L;
            int32_t l_465 = 6L;
            uint8_t l_493 = 0xC4L;
            union U2 l_500 = {1L};
            long1 l_553 = make_long1(0x78C76CB069B19D47LL);
            long1 l_554 = make_long1((-1L));
            int32_t l_582[9][5][2] = {{{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}, {{0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}, {0x66BF22E5L, 4L}}};
            int64_t l_586 = 0x0AC5F961E3A937ABLL;
            uint32_t l_587 = 0x11507378L;
            int32_t *l_618 = &p_4372->g_31;
            int i, j, k;
        }
    }
    else
    { /* block id: 291 */
        int32_t *l_725 = nullptr;
        int32_t *l_726 = &p_4372->g_44[0][3];
        int32_t *l_727 = &p_4372->g_59;
        int32_t *l_728 = &l_430[3][1][1];
        int32_t *l_729 = &p_4372->g_59;
        int32_t *l_730 = &l_428;
        int32_t *l_731 = &p_4372->g_59;
        int32_t l_732 = 0xD9EDDB88L;
        int32_t *l_733 = &p_4372->g_59;
        int32_t *l_734 = nullptr;
        int32_t *l_735 = &p_4372->g_56[6].f0;
        int32_t *l_736 = &l_428;
        int32_t *l_737 = nullptr;
        int32_t *l_738 = &l_428;
        int32_t *l_739 = nullptr;
        int32_t *l_740 = nullptr;
        int32_t *l_741[1];
        int8_t l_742 = 0xEBL;
        char2 l_743 = make_char2(0L, (-6L));
        int8_t l_744[10] = {0xF3L, 0xF3L, 0L, 0xF3L, 0xF3L, 0L, 0xF3L, 0xF3L, 0L, 0xF3L};
        uint32_t l_745[10];
        int32_t **l_748 = nullptr;
        int32_t **l_750[3][8] = {{&l_733, nullptr, &l_735, nullptr, nullptr, &l_735, nullptr, &l_733}, {&l_733, nullptr, &l_735, nullptr, nullptr, &l_735, nullptr, &l_733}, {&l_733, nullptr, &l_735, nullptr, nullptr, &l_735, nullptr, &l_733}};
        int i, j;
        for (i = 0; i < 1; i++)
            l_741[i] = nullptr;
        for (i = 0; i < 10; i++)
            l_745[i] = 0xB35E2A23L;
        --l_745[0];
        p_4372->g_77 = (l_749[1][0][0] = &p_4372->g_62);
    }
    return p_55.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_59 p_4372->g_306 p_4372->g_179 p_4372->g_132 hip_const_1 p_4372->g_44
 * writes:
 */
__device__ int32_t  func_65(int32_t * p_66, struct S3 * p_4372)
{ /* block id: 160 */
    int32_t l_292[1][6] = {{0x6B1F9055L, 0x6B1F9055L, 1L, 0x6B1F9055L, 0x6B1F9055L, 1L}};
    int1 l_293 = make_int1(0xEE13FE99L);
    int4 l_294 = make_int4(0xD94507BBL, 0L, 0xD94507BBL, 0L);
    char3 l_305 = make_char3(6L, 6L, 6L);
    char4 l_307 = make_char4(0x0DL, 2L, 0x0DL, 2L);
    int8_t *l_308 = &hip_const_7;
    int8_t *l_309 = &hip_const_7;
    int8_t *l_310 = nullptr;
    int8_t *l_311[6][10][1] = {{{&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}}, {{&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}}, {{&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}}, {{&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}}, {{&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}}, {{&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}, {&hip_const_7}}};
    int32_t l_312 = 0x299F0A38L;
    int32_t l_321 = 0xCF5C49D3L;
    int32_t *l_322 = &l_321;
    int32_t *l_323 = &p_4372->g_56[6].f0;
    int32_t *l_324 = nullptr;
    int32_t *l_325 = nullptr;
    int32_t *l_326 = nullptr;
    int32_t *l_327 = &p_4372->g_44[1][2];
    int32_t *l_328[9][4] = {{&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], nullptr}};
    int32_t l_329 = 0x87817E4CL;
    int8_t l_330[7][4][8] = {{{(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}}, {{(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}}, {{(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}}, {{(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}}, {{(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}}, {{(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}}, {{(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}, {(-6L), 8L, 0x73L, 0x4FL, 0x24L, 0x9BL, 0xE8L, 0xA5L}}};
    uint8_t l_331 = 251UL;
    union U0 *l_335 = &p_4372->g_244;
    union U0 **l_334 = &l_335;
    int i, j, k;
    l_293.x ^= (l_292[0][2] && 0xD729L);
    l_294.y = ((make_int3(l_294.x, l_294.x, l_294.x) | make_int3((-2L), l_293.x, (0x72L > (safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(0x72L, (l_321 = (safe_sub_func_uint8_t_u_u((make_ushort2(0xE100L, p_4372->g_59).x , l_294.x), ((((safe_rshift(((safe_rshift(make_char3(l_305.z, l_305.z, l_305.z), make_char3(p_4372->g_306.x, p_4372->g_306.x, p_4372->g_306.x)))), make_char3(l_307.w, l_307.w, l_307.w)))) ^ make_char3((l_312 = (l_293.x &= make_char4(0x00L, (-1L), 0L, (-1L)).z)), (safe_sub_func_uint64_t_u_u(0x7635144D632458DELL, ((safe_mul_func_uint8_t_u_u(((safe_lshift_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(p_4372->g_179.x, p_4372->g_132.x)) >= make_ushort2(0x998AL, 0x9833L).x), 19)) == 0UL), l_293.x)) & hip_const_1[6][1][2]))), 0xBAL))).z))))), 0xBFD1CAE2L)))))).x;
    l_331++;
    (*l_334) = &p_4372->g_244;
    return p_4372->g_44[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_80 hip_const_5 p_4372->g_71.f0 hip_const_6 p_4372->g_44 p_4372->g_77 p_4372->g_71.f1 hip_const_4 p_4372->g_37 p_4372->g_147 hip_const_1 hip_const_3 p_4372->g_285 p_4372->g_56 p_4372->g_46 hip_const_7 hip_const_2
 * writes: p_4372->g_77 p_4372->g_71.f0 p_4372->g_44 p_4372->g_71.f1 p_4372->g_147 p_4372->g_244.f1 p_4372->g_56.f3 p_4372->g_46 p_4372->g_179
 */
__device__ int32_t * func_67(uint16_t  p_68, union U1  p_69, struct S3 * p_4372)
{ /* block id: 48 */
    int32_t *l_73 = nullptr;
    int32_t **l_72 = &l_73;
    int32_t **l_74 = nullptr;
    int32_t *l_76 = nullptr;
    int32_t **l_75[2][8][1] = {{{&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}}, {{&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}, {&l_76}}};
    int32_t *l_96 = &p_4372->g_31;
    int16_t *l_270 = nullptr;
    int16_t *l_271 = &p_4372->g_56[6].f3;
    int4 l_272 = make_int4((-10L), 0x6BBBD3E5L, (-10L), 0x6BBBD3E5L);
    uint2 l_279 = make_uint2(0x649D72B7L, 0xCEEC597CL);
    uchar4 l_282 = make_uchar4(249UL, 0x69L, 249UL, 0x69L);
    int64_t *l_290[8] = {nullptr, &hip_const_4, nullptr, &hip_const_4, nullptr, &hip_const_4, nullptr, &hip_const_4};
    uint32_t l_291 = 0xEFC572CBL;
    int i, j, k;
    p_4372->g_77 = ((*l_72) = &p_4372->g_44[1][2]);
    (*l_73) = ((((safe_mul(make_uint4(0x6B1C03A7L, 18446744073709551609UL, 18446744073709551608UL, 18446744073709551615UL), make_uint4(p_4372->g_80.x, p_4372->g_80.x, p_4372->g_80.x, p_4372->g_80.x)))).w , hip_const_5[2][5][2]) > (safe_div_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u(((*l_271) = func_85((safe_lshift_func_int32_t_s_s((-6L), 17)), p_69, (safe_add_func_int64_t_s_s((p_4372->g_71.f0 || p_68), (~(safe_unary_minus_func_uint16_t_u(0UL))))), hip_const_6, l_96, p_4372)), p_68)), 1L)));
    (**l_72) = make_int3(l_272.y, l_272.y, l_272.y).x;
    p_4372->g_179.x = (l_291 |= (safe_sub_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s(((safe_add_func_uint32_t_u_u(make_uint1(l_279.x).x, 4294967295UL)) && (p_4372->g_147 <= ((safe_add_func_int32_t_s_s((p_4372->g_46.x &= (p_68 <= ((make_ulong3(0UL, (p_68 != make_uchar4(l_282.x, l_282.x, l_282.x, l_282.x).y), 0xF5AB09884D231ED3LL).x | p_68) <= (((safe_mul_func_uint32_t_u_u(((hip_const_3 || make_uchar3(p_4372->g_285.x, p_4372->g_285.x, p_4372->g_285.x).x) | (((safe_lshift_func_uint16_t_u_u((((((*l_271) = (p_4372->g_37 < (((**l_72) = (p_4372->g_56[6] , (safe_div_func_int64_t_s_s(p_4372->g_80.x, hip_const_1[7][0][1])))) , hip_const_5[2][6][0]))) == p_69.f0) | p_68) , p_4372->g_285.x), p_69.f0)) & 0x18198BDFED1B261DLL) && 0xB44387E8C3443746LL)), 0x6C9B1D3DL)) < 0xC6B66814L) & 0x8C91F0A3L)))), hip_const_7)) == 1L))), hip_const_2)) < 18446744073709551615UL), 0x9621L)));
    return &p_4372->g_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_4372->g_71.f0 p_4372->g_44 p_4372->g_77 hip_const_4 p_4372->g_37 p_4372->g_147 hip_const_1 p_4372->g_80 p_4372->g_71.f1
 * writes: p_4372->g_71.f0 p_4372->g_44 p_4372->g_71.f1 p_4372->g_147 p_4372->g_77 p_4372->g_244.f1
 */
__device__ int16_t  func_85(uint32_t  p_86, union U1  p_87, uint8_t  p_88, uint32_t  p_89, int32_t * p_90, struct S3 * p_4372)
{ /* block id: 51 */
    uint8_t l_104 = 0xA9L;
    int32_t l_121[4][3] = {{1L, (-1L), 1L}, {1L, (-1L), 1L}, {1L, (-1L), 1L}, {1L, (-1L), 1L}};
    uint16_t l_148[6][8][4] = {{{2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}}, {{2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}}, {{2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}}, {{2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}}, {{2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}}, {{2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}, {2UL, 0x176EL, 65532UL, 5UL}}};
    uint32_t l_162 = 0xC2FFDF52L;
    union U0 l_199 = {0x1714L};
    int32_t l_221 = 1L;
    int i, j, k;
    for (p_4372->g_71.f0 = 0; (p_4372->g_71.f0 <= 1); p_4372->g_71.f0 += 1)
    { /* block id: 54 */
        uint64_t l_101 = 0x9422B6A99605DBDBLL;
        if (p_88)
            break;
        for (p_86 = 0; (p_86 <= 1); p_86 += 1)
        { /* block id: 58 */
            int i, j;
            if (p_4372->g_44[p_86][(p_4372->g_71.f0 + 2)])
                break;
            for (p_89 = (-7); (p_89 > 37); p_89 = safe_add_func_uint32_t_u_u(p_89, 3))
            { /* block id: 62 */
                int32_t *l_99 = &p_4372->g_56[6].f0;
                int32_t *l_100[7][9] = {{nullptr, &p_4372->g_37, &p_4372->g_59, &p_4372->g_37, nullptr, nullptr, nullptr, &p_4372->g_37, &p_4372->g_59}, {nullptr, &p_4372->g_37, &p_4372->g_59, &p_4372->g_37, nullptr, nullptr, nullptr, &p_4372->g_37, &p_4372->g_59}, {nullptr, &p_4372->g_37, &p_4372->g_59, &p_4372->g_37, nullptr, nullptr, nullptr, &p_4372->g_37, &p_4372->g_59}, {nullptr, &p_4372->g_37, &p_4372->g_59, &p_4372->g_37, nullptr, nullptr, nullptr, &p_4372->g_37, &p_4372->g_59}, {nullptr, &p_4372->g_37, &p_4372->g_59, &p_4372->g_37, nullptr, nullptr, nullptr, &p_4372->g_37, &p_4372->g_59}, {nullptr, &p_4372->g_37, &p_4372->g_59, &p_4372->g_37, nullptr, nullptr, nullptr, &p_4372->g_37, &p_4372->g_59}, {nullptr, &p_4372->g_37, &p_4372->g_59, &p_4372->g_37, nullptr, nullptr, nullptr, &p_4372->g_37, &p_4372->g_59}};
                int i, j;
                --l_101;
                if (p_4372->g_44[p_86][(p_4372->g_71.f0 + 2)])
                    continue;
            }
            if (p_4372->g_44[p_86][(p_4372->g_71.f0 + 2)])
                break;
        }
    }
    --l_104;
lbl_194:
    (*p_4372->g_77) |= l_104;
    for (p_4372->g_71.f1 = 0; (p_4372->g_71.f1 > (-12)); p_4372->g_71.f1 = safe_sub_func_int16_t_s_s(p_4372->g_71.f1, 1))
    { /* block id: 73 */
        int32_t *l_115[10];
        int32_t **l_116 = &l_115[9];
        int64_t *l_117 = nullptr;
        int64_t *l_118 = &hip_const_3;
        int64_t *l_119 = &hip_const_3;
        int64_t *l_120[2];
        int32_t l_122 = 0x252EC475L;
        int32_t *l_133[1][8][8] = {{{&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}, {&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}, {&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}, {&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}, {&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}, {&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}, {&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}, {&p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59, &p_4372->g_44[1][2], &p_4372->g_59}}};
        uchar2 l_178 = make_uchar2(1UL, 0xE5L);
        uint32_t l_209 = 3UL;
        uint8_t l_229[1];
        int i, j, k;
        for (i = 0; i < 10; i++)
            l_115[i] = &p_4372->g_31;
        for (i = 0; i < 2; i++)
            l_120[i] = &hip_const_3;
        for (i = 0; i < 1; i++)
            l_229[i] = 0xE1L;
        if ((safe_sub_func_int16_t_s_s((p_88 && (+(nullptr == &p_4372->g_31))), (0x6CDB74EBL || ((*p_4372->g_77) != make_uint3((safe_sub_func_int32_t_s_s((make_uchar1((((p_90 == ((*l_116) = l_115[9])) == (l_121[2][0] = ((((0xF23DC045L & (0x0B28L & l_104)) >= 1UL) || hip_const_7) <= p_4372->g_46.x))) | 0xE8L)).x == p_89), (*p_4372->g_77))), l_122, p_88).z)))))
        { /* block id: 76 */
            uint3 l_129 = make_uint3(0xA791DEB0L, 0x78ACAA54L, 0xA791DEB0L);
            int32_t *l_134 = nullptr;
            int32_t *l_151 = &p_4372->g_31;
            long4 l_161 = make_long4(0x71733CD63981B1BCLL, 1L, 0x71733CD63981B1BCLL, 1L);
            union U0 l_197[5] = {{3UL}, {3UL}, {3UL}, {3UL}, {3UL}};
            int32_t l_208 = 8L;
            int64_t l_212 = 0xA15CE6520A05F7ACLL;
            int32_t l_217 = 0L;
            int32_t l_227 = (-9L);
            int32_t l_228 = 1L;
            int i;
            if (p_88)
            { /* block id: 77 */
                uint32_t *l_135 = &p_4372->g_136[0];
                int8_t *l_145 = nullptr;
                int8_t *l_146[5][10][3] = {{{nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}}, {{nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}}, {{nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}}, {{nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}}, {{nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, &hip_const_7}}};
                int32_t l_164 = 1L;
                uint64_t l_165 = 0xDBFA45521639E250LL;
                int4 l_180 = make_int4(0x0661D1CEL, 0xAC7219EBL, 0x0661D1CEL, 0xAC7219EBL);
                int i, j, k;
                (*p_4372->g_77) = (((0xF531248EL && (((safe_add_func_int8_t_s_s((l_121[2][0] = ((safe_mod_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(((((make_uint2(l_129.z, l_129.z) ^ make_uint2(1UL, 0x359DE98DL))) ^ make_uint2((+((*l_135) = (safe_add_func_int32_t_s_s(make_int4(p_4372->g_132.x, p_4372->g_132.x, p_4372->g_132.x, p_4372->g_132.x).w, (l_133[0][5][4] == l_134))))), 0x0E296350L))).y, ((safe_mod_func_uint8_t_u_u(make_uchar3(247UL, 0xA0L, 2UL).y, (p_4372->g_147 = make_char2((((p_88 , (0xB385C65EB6223421LL || (((p_87.f0 , (safe_mod_func_uint32_t_u_u((l_121[2][0] , (safe_add_func_int64_t_s_s(((hip_const_1[6][1][2] && (safe_rshift_func_uint8_t_u_u(p_89, p_4372->g_44[1][2]))) && l_121[2][0]), p_4372->g_44[0][1]))), p_4372->g_132.x))) ^ 0x89L) < 0x2A71L))) , nullptr) != nullptr), hip_const_7).x))) , 9UL))), l_148[5][7][2])) , hip_const_4)), 0x09L)) >= p_86) , p_87.f0)) != l_148[5][7][2]) ^ p_86);
                if ((safe_mul_func_uint8_t_u_u(((l_151 == p_90) != ((safe_rshift_func_uint8_t_u_s(p_4372->g_37, p_88)) == ((safe_sub_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u((safe_rshift_func_int64_t_s_s((l_162 = ((make_long2(p_4372->g_46.x, 4L) | ((make_long2(p_4372->g_160.z, p_4372->g_160.z) | make_long2(l_161.x, l_161.x))))).x), 39)), (+make_short1(p_4372->g_163.y).x))) ^ (l_164 = make_long3(0xD7C33F7625D64D03LL, p_89, (0x75L != p_89)).z)) >= p_88), 0UL)) | 65534UL))), l_165)))
                { /* block id: 84 */
                    if ((p_86 < p_4372->g_147))
                    { /* block id: 85 */
                        int32_t **l_166 = nullptr;
                        int32_t **l_167 = &p_4372->g_77;
                        (*l_167) = l_134;
                        return p_87.f0;
                    }
                    else
                    { /* block id: 88 */
                        uint16_t l_181 = 0x8836L;
                        l_181 ^= ((safe_mod(((make_int1((safe_mul_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(0x880AL, 0x2165L)), (safe_lshift_func_uint8_t_u_s((l_148[0][6][0] , (safe_mul_func_uint8_t_u_u(make_uchar1(l_178.y).x, p_89))), 3))))) ^ ((((((make_int1(p_4372->g_179.x) ^ make_int1((*p_4372->g_77)))) ^ make_int1(0x08AECDC9L))) ^ make_int1((-3L)))))), make_int1(make_int4(l_180.x, l_180.x, l_180.x, l_180.x).y)))).x;
                        return p_87.f0;
                    }
                }
                else
                { /* block id: 92 */
                    int32_t **l_182 = &l_133[0][7][2];
                    (*l_182) = &l_122;
                    for (p_86 = (-4); (p_86 >= 59); p_86 = safe_add_func_int64_t_s_s(p_86, 1))
                    { /* block id: 96 */
                        (*p_4372->g_77) |= 0x327C09D1L;
                    }
                    for (p_88 = (-1); (p_88 >= 14); p_88 = safe_add_func_uint8_t_u_u(p_88, 7))
                    { /* block id: 101 */
                        int32_t **l_193[9][6] = {{&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}, {&l_133[0][0][2], &l_134, &p_4372->g_77, &l_134, &p_4372->g_77, &l_134}};
                        int i, j;
                        (*p_4372->g_77) ^= (safe_rshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(p_89, p_87.f0)), (safe_mod_func_uint16_t_u_u((nullptr != l_193[4][1]), hip_const_1[6][1][2]))));
                        (*p_4372->g_77) = 0x511DFB01L;
                        return p_87.f0;
                    }
                }
                if (l_122)
                    goto lbl_194;
                if (l_121[2][0])
                    continue;
            }
            else
            { /* block id: 109 */
                union U0 l_198 = {1UL};
                int32_t l_204 = 0xDA91A525L;
                int16_t *l_205 = &hip_const_5[2][5][2];
                int32_t l_214 = (-3L);
                int32_t l_218 = (-1L);
                int32_t l_220[10] = {0x335BF821L, 0L, 0x335BF821L, 0L, 0x335BF821L, 0L, 0x335BF821L, 0L, 0x335BF821L, 0L};
                uint64_t l_241 = 0UL;
                int64_t l_261 = 0L;
                int i;
                for (l_162 = 0; (l_162 <= 1); l_162 += 1)
                { /* block id: 112 */
                    uint2 l_202 = make_uint2(0xC4771298L, 1UL);
                    uint32_t *l_203 = &l_199.f3;
                    int32_t l_206 = (-10L);
                    int32_t l_213 = 0xBA8A70E6L;
                    int32_t l_216 = 0L;
                    int32_t l_219 = (-1L);
                    int32_t l_223[8] = {2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L};
                    union U2 l_236 = {0x9258C689L};
                    uint16_t l_243 = 0x7E30L;
                    uint64_t l_257 = 0x2492859D2BFCDB38LL;
                    ushort1 l_260 = make_ushort1(0x0BE9L);
                    int16_t *l_262 = &p_4372->g_56[6].f3;
                    int16_t *l_263 = nullptr;
                    int16_t *l_264 = nullptr;
                    int i, j;
                }
                return p_4372->g_80.x;
            }
        }
        else
        { /* block id: 137 */
            for (l_199.f3 = 0; l_199.f3 < 2; l_199.f3 += 1)
            {
                for (p_86 = 0; p_86 < 4; p_86 += 1)
                {
                    p_4372->g_44[l_199.f3][p_86] = 0x296C2F90L;
                }
            }
            for (p_4372->g_244.f1 = 0; (p_4372->g_244.f1 <= 53); p_4372->g_244.f1 = safe_add_func_int16_t_s_s(p_4372->g_244.f1, 4))
            { /* block id: 141 */
                for (p_86 = 7; (p_86 != 27); p_86 = safe_add_func_int32_t_s_s(p_86, 5))
                { /* block id: 144 */
                    int32_t *l_269[7][5] = {{&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], &p_4372->g_59, &l_121[2][0]}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], &p_4372->g_59, &l_121[2][0]}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], &p_4372->g_59, &l_121[2][0]}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], &p_4372->g_59, &l_121[2][0]}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], &p_4372->g_59, &l_121[2][0]}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], &p_4372->g_59, &l_121[2][0]}, {&p_4372->g_44[1][2], nullptr, &p_4372->g_44[1][2], &p_4372->g_59, &l_121[2][0]}};
                    int i, j;
                    l_269[1][4] = &p_4372->g_13;
                }
            }
        }
    }
    return p_89;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S3 c_4373;
    struct S3* p_4372 = &c_4373;
    struct S3 c_4374 = {
        .g_13 = 0x24B7C80BL,
        .g_31 = 0x33308626L,
        .g_37 = 0x0EC44CB1L,
        .g_44 = {{(-8L), 1L, (-8L), 1L}, {(-8L), 1L, (-8L), 1L}},
        .g_46 = make_int1(0L),
        .g_56 = {{0x4FBAEB33L}, {0x4FBAEB33L}, {0x4FBAEB33L}, {0x4FBAEB33L}, {0x4FBAEB33L}, {0x4FBAEB33L}, {0x4FBAEB33L}, {0x4FBAEB33L}},
        .g_59 = 0L,
        .g_62 = 0L,
        .g_71 = {65535UL},
        .g_77 = nullptr,
        .g_80 = make_uint1(0x3389D4FEL),
        .g_132 = make_int1(0L),
        .g_136 = {0x83C55790L, 0x83C55790L, 1UL, 0x83C55790L, 0x83C55790L, 1UL},
        .g_147 = 0xB63E7769L,
        .g_160 = make_long4(0x88A37CDCD6FD7885LL, 0xDF793C2613D90FEALL, 0x88A37CDCD6FD7885LL, 0xDF793C2613D90FEALL),
        .g_163 = make_short2((-1L), 0L),
        .g_179 = make_int1((-1L)),
        .g_244 = {65530UL},
        .g_285 = make_uchar1(0xF1L),
        .g_306 = make_char4(0xD8L, 6L, 0xD8L, 6L),
        .g_340 = make_int1(0L),
        .g_357 = make_uchar4(0xBFL, 0x48L, 0xBFL, 0x48L),
        .g_362 = make_uchar3(0x08L, 0x0EL, 0x08L),
        .g_391 = make_long2(5L, (-1L)),
        .g_418 = {{&hip_const_5[1][1][0], &p_4372->g_71.f1, &hip_const_5[3][1][2], &p_4372->g_71.f1, &hip_const_5[1][1][0], nullptr, &hip_const_5[1][1][0], &p_4372->g_71.f1, &hip_const_5[3][1][2]}, {&hip_const_5[1][1][0], &p_4372->g_71.f1, &hip_const_5[3][1][2], &p_4372->g_71.f1, &hip_const_5[1][1][0], nullptr, &hip_const_5[1][1][0], &p_4372->g_71.f1, &hip_const_5[3][1][2]}},
        .g_441 = make_ushort4(0x955CL, 9UL, 0x955CL, 9UL),
        .g_471 = {nullptr, nullptr, nullptr},
        .g_475 = make_short1((-4L)),
        .g_481 = make_uchar2(249UL, 1UL),
        .g_498 = make_char2(5L, 0x4CL),
        .g_499 = make_char2((-10L), 0L),
        .g_526 = make_long3(0x93036E1EACD4D707LL, 0xE14DC194E333BA57LL, 0x93036E1EACD4D707LL),
        .g_527 = make_long3((-1L), 0L, (-1L)),
        .g_549 = make_uint2(0xA74B97F7L, 0x7ED7062BL),
        .g_552 = make_long2((-4L), 0xF1E536DFE1596873LL),
        .g_566 = {0xF789L, 0xF789L, (-1L), 0xF789L, 0xF789L, (-1L)},
        .g_633 = make_long1(0x751D9133BB1D3E63LL),
        .g_649 = make_uchar2(0xBAL, 0x6FL),
        .g_658 = make_int2(0L, 1L),
        .g_702 = make_long2(3L, (-6L)),
        .g_705 = make_long3((-1L), 0L, (-1L)),
        .g_718 = (-7L),
        .g_719 = make_ulong2(0x9FFEF797DE336D0FLL, 0UL),
        .g_721 = make_long2(5L, (-1L)),
        .g_722 = make_ushort3(0x284FL, 0x5924L, 0x284FL),
        .g_724 = &p_4372->g_418[0][7],
        .g_752 = &p_4372->g_471[0],
        .g_820 = &p_4372->g_77,
        .g_819 = &p_4372->g_820,
        .g_826 = make_int2(0xE82A9B9EL, 0x44C887BBL),
        .g_878 = &p_4372->g_244,
        .g_877 = &p_4372->g_878,
        .g_884 = make_char2(0xE2L, 0x71L),
        .g_892 = make_long4(0x9C95EF63EB9142C9LL, 2L, 0x9C95EF63EB9142C9LL, 2L),
        .g_900 = make_int3(0x2678FE42L, 4L, 0x2678FE42L),
        .g_941 = &p_4372->g_56[6],
        .g_940 = &p_4372->g_941,
        .g_944 = make_ulong2(0xA9C272022F03C360LL, 0UL),
        .g_947 = make_long1(0xB4693672CE9C2650LL),
        .g_953 = make_short1((-6L)),
        .g_970 = 6L,
        .g_992 = make_long3(0x157591041F656F0CLL, (-10L), 0x157591041F656F0CLL),
        .g_1014 = &p_4372->g_71,
        .g_1031 = 0xBBD3L,
        .g_1043 = make_int2(0xFBDC7D6FL, 4L),
        .g_1111 = make_ulong1(0x9BD1949E23864740LL),
        .g_1136 = make_ulong1(18446744073709551606UL),
        .g_1167 = make_ulong4(0xC0BD0A7B68B7E87FLL, 18446744073709551615UL, 0xC0BD0A7B68B7E87FLL, 18446744073709551615UL),
        .g_1178 = {{0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}, {0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}, {0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}, {0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}, {0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}, {0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}, {0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}, {0xD35CA1F9L, 0L, 5L, (-3L), (-9L), 0xE2AD50A6L, (-1L)}},
        .g_1187 = make_char3(0x5AL, 1L, 0x5AL),
        .g_1224 = make_long4(7L, 9L, 7L, 9L),
        .g_1291 = make_ulong3(0UL, 0UL, 0UL),
        .g_1308 = {{{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}, {{{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}, {{8UL}, {65534UL}, {8UL}, {65534UL}, {8UL}}}},
        .g_1327 = &p_4372->g_1014,
        .g_1395 = make_char2(0x5FL, 1L),
        .g_1508 = (-4L),
        .g_1543 = {nullptr, &p_4372->g_136[0], nullptr, &p_4372->g_136[0], nullptr, &p_4372->g_136[0], nullptr, &p_4372->g_136[0], nullptr, &p_4372->g_136[0]},
        .g_1542 = {&p_4372->g_1543[0]},
        .g_1555 = {{2UL}, {2UL}, {2UL}},
        .g_1558 = make_short4(0x409EL, 1L, 0x409EL, 1L),
        .g_1611 = make_uint1(0x971C352CL),
        .g_1626 = make_uint4(0x6F9C091FL, 0x196A84AFL, 0x6F9C091FL, 0x196A84AFL),
        .g_1628 = make_long1(0xAEEA17F360D5803BLL),
        .g_1662 = make_int2(0xF593B6ACL, 0x96EEC540L),
        .g_1669 = 2L,
        .g_1671 = make_ulong3(18446744073709551615UL, 18446744073709551607UL, 18446744073709551615UL),
        .g_1678 = {{&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}, {&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}, {&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}, {&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}, {&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}, {&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}, {&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}, {&hip_const_4, nullptr, nullptr, nullptr, nullptr, &hip_const_4, &hip_const_4, nullptr, nullptr, nullptr}},
        .g_1692 = make_short4(0x5D2BL, 0L, 0x5D2BL, 0L),
        .g_1694 = nullptr,
        .g_1710 = make_uchar1(0xB8L),
        .g_1727 = make_long2(0x48F969C76AAD2A6ELL, (-8L)),
        .g_1731 = make_uint3(0x06858527L, 0xAA9168F8L, 0x06858527L),
        .g_1786 = {&p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724, &p_4372->g_724},
        .g_1785 = &p_4372->g_1786[5],
        .g_1845 = make_long3(1L, 0L, 1L),
        .g_1868 = make_uint4(9UL, 4294967295UL, 9UL, 4294967295UL),
        .g_1884 = 0xB48DL,
        .g_1910 = make_uint2(0x505C4A6BL, 4294967289UL),
        .g_1912 = make_uint4(3UL, 4294967295UL, 3UL, 4294967295UL),
        .g_1913 = make_uint3(0xE4198391L, 0xF2800572L, 0xE4198391L),
        .g_1933 = make_uint3(0x447DE0C2L, 0x592DFB3AL, 0x447DE0C2L),
        .g_1948 = make_long1(1L),
        .g_1953 = make_char4(0xD5L, (-4L), 0xD5L, (-4L)),
        .g_2025 = &p_4372->g_1542[0],
        .g_2024 = &p_4372->g_2025,
        .g_2037 = {&p_4372->g_244.f2, &p_4372->g_244.f2},
        .g_2039 = 18446744073709551613UL,
        .g_2078 = 0x6280L,
        .g_2089 = &p_4372->g_62,
        .g_2103 = make_short1(0x1542L),
        .g_2109 = make_ulong2(0x94E32670A8FE62EALL, 0xE708650B0CA8C557LL),
        .g_2113 = make_int4(0xB7497936L, (-3L), 0xB7497936L, (-3L)),
        .g_2125 = make_short2(0xC02BL, (-1L)),
        .g_2130 = make_long2(8L, 0xD8CEF07CA94EC49FLL),
        .g_2163 = make_short3(0xB4CDL, 1L, 0xB4CDL),
        .g_2180 = make_uint3(4294967295UL, 0x77CE7ADCL, 4294967295UL),
        .g_2269 = make_int4((-1L), 0x4F60C39AL, (-1L), 0x4F60C39AL),
        .g_2290 = make_int4(0x5378F7A9L, 0x736ED41FL, 0x5378F7A9L, 0x736ED41FL),
        .g_2305 = make_long1(5L),
        .g_2325 = make_uint2(4294967295UL, 4294967290UL),
        .g_2326 = make_uint1(0UL),
        .g_2349 = 0xC822212D97D05DC9LL,
        .g_2375 = make_short3(0L, (-4L), 0L),
        .g_2411 = make_int3(0x041881A4L, (-1L), 0x041881A4L),
        .g_2426 = make_int3(5L, (-3L), 5L),
        .g_2446 = make_int1(1L),
        .g_2451 = make_long4(0L, 0xFD254B94ABEFC174LL, 0L, 0xFD254B94ABEFC174LL),
        .g_2464 = make_ulong1(18446744073709551607UL),
        .g_2494 = make_short4(0xEE6DL, 1L, 0xEE6DL, 1L),
        .g_2505 = make_ushort4(65531UL, 0x48E1L, 65531UL, 0x48E1L),
        .g_2510 = {{{&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}}, {{&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}}, {{&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}}, {{&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}}, {{&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}}, {{&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}}, {{&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}, {&hip_const_1[6][1][2], nullptr, &p_4372->g_2349, nullptr, &hip_const_1[4][1][2], nullptr}}},
        .g_2509 = &p_4372->g_2510[2][4][5],
        .g_2511 = make_short4(1L, 3L, 1L, 3L),
        .g_2518 = make_int2(0x9A991700L, 3L),
        .g_2533 = make_ulong1(0UL),
        .g_2599 = make_char4((-1L), (-3L), (-1L), (-3L)),
        .g_2604 = make_int3((-3L), 0L, (-3L)),
        .g_2628 = make_long1(1L),
        .g_2645 = make_uint2(0UL, 0UL),
        .g_2646 = make_uint2(0x7A953D40L, 0x633107E0L),
        .g_2651 = make_ulong1(0xEBF03D2EE0708B01LL),
        .g_2677 = make_int3(0xBC163297L, 0L, 0xBC163297L),
        .g_2711 = 2L,
        .g_2760 = make_char2(1L, 0x09L),
        .g_2833 = make_char1(1L),
        .g_2859 = make_int2(0x6EDDD682L, 0x84A81ADCL),
        .g_2863 = make_long4(0x35D6F7883D7E0267LL, 0x0DE993198A2710C3LL, 0x35D6F7883D7E0267LL, 0x0DE993198A2710C3LL),
        .g_2900 = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr},
        .g_2905 = make_char3(9L, (-1L), 9L),
        .g_2930 = make_short2(0x61DCL, 0xF43CL),
        .g_2945 = make_ulong4(0xA5B44E2F3A6F4EC2LL, 4UL, 0xA5B44E2F3A6F4EC2LL, 4UL),
        .g_2977 = {&p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877, &p_4372->g_877},
        .g_2976 = &p_4372->g_2977[7],
        .g_2994 = 0x9F03L,
        .g_3007 = {(-9L), (-9L)},
        .g_3037 = make_ushort1(0x85CAL),
        .g_3054 = make_int3(0xF9EFEF9AL, (-7L), 0xF9EFEF9AL),
        .g_3056 = make_uint1(18446744073709551615UL),
        .g_3130 = make_long2(0x8B82DC7BBA9FDFCDLL, (-1L)),
        .g_3163 = 9L,
        .g_3171 = make_short2(0xFDE6L, 0xA3F2L),
        .g_3177 = make_short2(0x8467L, (-6L)),
        .g_3217 = make_uchar3(0x48L, 0x9EL, 0x48L),
        .g_3223 = make_uchar1(255UL),
        .g_3229 = make_int3((-1L), 1L, (-1L)),
        .g_3270 = make_ulong3(0x6B9D4B43F2C2D89BLL, 18446744073709551611UL, 0x6B9D4B43F2C2D89BLL),
        .g_3271 = make_short3(0L, 0x3F44L, 0L),
        .g_3307 = make_ulong4(0xBBA500769BE567CDLL, 0x562B5EB412A6CA64LL, 0xBBA500769BE567CDLL, 0x562B5EB412A6CA64LL),
        .g_3348 = make_uint2(0x1B6945E2L, 4294967292UL),
        .g_3351 = make_int1(0xEE0AAE75L),
        .g_3360 = make_int3(0x5DE147A3L, 0x895089BBL, 0x5DE147A3L),
        .g_3366 = make_uint1(0xB6DCD348L),
        .g_3371 = 0xE0821D6E7AA2596ALL,
        .g_3392 = 0x507311A031F730E6LL,
        .g_3398 = make_char3(1L, 0x46L, 1L),
        .g_3401 = {&p_4372->g_244.f0, &p_4372->g_244.f0, &p_4372->g_244.f0},
        .g_3400 = {{&p_4372->g_3401[1], &p_4372->g_3401[0], &p_4372->g_3401[1], &p_4372->g_3401[0], &p_4372->g_3401[1]}},
        .g_3421 = make_int1(0x42EC8751L),
        .g_3423 = make_ulong1(0UL),
        .g_3447 = make_long1(3L),
        .g_3488 = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr},
        .g_3487 = &p_4372->g_3488[5],
        .g_3492 = make_ushort4(0x9E61L, 0x16EEL, 0x9E61L, 0x16EEL),
        .g_3504 = make_short2(9L, 0x0C6BL),
        .g_3511 = {{{&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}}, {{&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}, {&p_4372->g_2509, &p_4372->g_2509, &p_4372->g_2509}}},
        .g_3510 = &p_4372->g_3511[0][2][0],
        .g_3516 = make_ushort3(0xC1E4L, 0x9804L, 0xC1E4L),
        .g_3553 = 0x5D5DF5B04CE9D061LL,
        .g_3563 = (-4L),
        .g_3568 = 8L,
        .g_3592 = 0L,
        .g_3639 = make_ushort3(0xDD46L, 0UL, 0xDD46L),
        .g_3645 = 0xCA31FB82L,
        .g_3648 = {{7UL}, {7UL}, {7UL}, {7UL}, {7UL}, {7UL}, {7UL}, {7UL}},
        .g_3662 = make_char3(0x96L, 2L, 0x96L),
        .g_3667 = make_int3((-1L), 0x45A4210CL, (-1L)),
        .g_3709 = make_int3((-1L), 0xD898C2D4L, (-1L)),
        .g_3712 = make_int2(0x532BA9FDL, 0x9FD41D7BL),
        .g_3715 = make_ushort4(0x230BL, 0x22CBL, 0x230BL, 0x22CBL),
        .g_3723 = make_ushort3(0x0E83L, 0xBCB6L, 0x0E83L),
        .g_3729 = nullptr,
        .g_3728 = {&p_4372->g_3729, &p_4372->g_3729},
        .g_3731 = 0x0FF0L,
        .g_3732 = make_uchar4(0x37L, 0x18L, 0x37L, 0x18L),
        .g_3774 = {{&p_4372->g_1785, &p_4372->g_1785, &p_4372->g_1785}, {&p_4372->g_1785, &p_4372->g_1785, &p_4372->g_1785}, {&p_4372->g_1785, &p_4372->g_1785, &p_4372->g_1785}, {&p_4372->g_1785, &p_4372->g_1785, &p_4372->g_1785}, {&p_4372->g_1785, &p_4372->g_1785, &p_4372->g_1785}, {&p_4372->g_1785, &p_4372->g_1785, &p_4372->g_1785}},
        .g_3781 = make_int2(0x7A2AB3D7L, 0x2CDEF5D3L),
        .g_3795 = make_short2(2L, 0x78ABL),
        .g_3824 = make_ulong4(0xDCB467A9C4D51D86LL, 0x97A311BCDE5819E9LL, 0xDCB467A9C4D51D86LL, 0x97A311BCDE5819E9LL),
        .g_3827 = make_short3(0L, 0x903DL, 0L),
        .g_3859 = make_ushort4(0xD673L, 0x2784L, 0xD673L, 0x2784L),
        .g_3880 = make_uchar4(0UL, 0x49L, 0UL, 0x49L),
        .g_3883 = make_uchar2(1UL, 0xCBL),
        .g_3889 = make_int2(9L, (-10L)),
        .g_3920 = make_short2(0xB8DBL, 0x105FL),
        .g_3935 = make_uchar4(0x6BL, 2UL, 0x6BL, 2UL),
        .g_3977 = make_ulong2(0x64744DF4F4DEA61DLL, 0xBE7E9B71E8BBE87ALL),
        .g_3978 = 0xA37F8EC5EFF23066LL,
        .g_4024 = &p_4372->g_752,
        .g_4081 = make_char2((-1L), (-2L)),
        .g_4091 = make_ushort3(0x2081L, 65528UL, 0x2081L),
        .g_4118 = make_uchar1(0xC6L),
        .g_4119 = make_uchar3(1UL, 0x67L, 1UL),
        .g_4120 = make_short4(0x1570L, 0x05C0L, 0x1570L, 0x05C0L),
        .g_4132 = make_short3(0xEEDDL, 0L, 0xEEDDL),
        .g_4155 = make_int3(0xF3BEA210L, 0xF943B8F1L, 0xF3BEA210L),
        .g_4157 = (-1L),
        .g_4163 = (-1L),
        .g_4186 = make_ushort2(0UL, 0xC24DL),
        .g_4187 = make_int3(6L, 0xE320B6A8L, 6L),
        .g_4217 = &p_4372->g_3728[1],
        .g_4227 = make_ushort4(65535UL, 0UL, 65535UL, 0UL),
        .g_4229 = make_uchar3(0x72L, 1UL, 0x72L),
        .g_4235 = 0UL,
        .g_4236 = 4L,
        .g_4251 = &p_4372->g_3487,
        .g_4250 = &p_4372->g_4251,
        .g_4256 = 250UL,
        .g_4288 = make_int4((-1L), 0x784E05CBL, (-1L), 0x784E05CBL),
        .g_4304 = {{0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL}, {0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL, 0x4103BF7763AB955ALL, 0x42CAD181743921C6LL}},
        .g_4305 = make_int2(0xD05F931FL, 0x93CBD865L),
        .g_4308 = make_int3((-2L), 0x8FD12745L, (-2L)),
        .g_4313 = make_uint1(4294967295UL),
        .g_4344 = 0UL,
        .g_4346 = make_ulong1(18446744073709551609UL),
        .g_4353 = {8UL, 8UL},
    };
    c_4373 = c_4374;

    // Execute core logic
    func_1(p_4372);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                transparent_crc(hip_const_1[i][j][k], "hip_const_1[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(hip_const_5[i][j][k], "hip_const_5[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    transparent_crc(hip_const_7, "hip_const_7", print_hash_value);
    transparent_crc(p_4372->g_13, "p_4372->g_13", print_hash_value);
    transparent_crc(p_4372->g_31, "p_4372->g_31", print_hash_value);
    transparent_crc(p_4372->g_37, "p_4372->g_37", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            transparent_crc(p_4372->g_44[i][j], "p_4372->g_44[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4372->g_46.x, "p_4372->g_46.x", print_hash_value);
    transparent_crc(p_4372->g_59, "p_4372->g_59", print_hash_value);
    transparent_crc(p_4372->g_62, "p_4372->g_62", print_hash_value);
    transparent_crc(p_4372->g_80.x, "p_4372->g_80.x", print_hash_value);
    transparent_crc(p_4372->g_132.x, "p_4372->g_132.x", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        transparent_crc(p_4372->g_136[i], "p_4372->g_136[i]", print_hash_value);

    }
    transparent_crc(p_4372->g_147, "p_4372->g_147", print_hash_value);
    transparent_crc(p_4372->g_160.x, "p_4372->g_160.x", print_hash_value);
    transparent_crc(p_4372->g_160.y, "p_4372->g_160.y", print_hash_value);
    transparent_crc(p_4372->g_160.z, "p_4372->g_160.z", print_hash_value);
    transparent_crc(p_4372->g_160.w, "p_4372->g_160.w", print_hash_value);
    transparent_crc(p_4372->g_163.x, "p_4372->g_163.x", print_hash_value);
    transparent_crc(p_4372->g_163.y, "p_4372->g_163.y", print_hash_value);
    transparent_crc(p_4372->g_179.x, "p_4372->g_179.x", print_hash_value);
    transparent_crc(p_4372->g_285.x, "p_4372->g_285.x", print_hash_value);
    transparent_crc(p_4372->g_306.x, "p_4372->g_306.x", print_hash_value);
    transparent_crc(p_4372->g_306.y, "p_4372->g_306.y", print_hash_value);
    transparent_crc(p_4372->g_306.z, "p_4372->g_306.z", print_hash_value);
    transparent_crc(p_4372->g_306.w, "p_4372->g_306.w", print_hash_value);
    transparent_crc(p_4372->g_340.x, "p_4372->g_340.x", print_hash_value);
    transparent_crc(p_4372->g_357.x, "p_4372->g_357.x", print_hash_value);
    transparent_crc(p_4372->g_357.y, "p_4372->g_357.y", print_hash_value);
    transparent_crc(p_4372->g_357.z, "p_4372->g_357.z", print_hash_value);
    transparent_crc(p_4372->g_357.w, "p_4372->g_357.w", print_hash_value);
    transparent_crc(p_4372->g_362.x, "p_4372->g_362.x", print_hash_value);
    transparent_crc(p_4372->g_362.y, "p_4372->g_362.y", print_hash_value);
    transparent_crc(p_4372->g_362.z, "p_4372->g_362.z", print_hash_value);
    transparent_crc(p_4372->g_391.x, "p_4372->g_391.x", print_hash_value);
    transparent_crc(p_4372->g_391.y, "p_4372->g_391.y", print_hash_value);
    transparent_crc(p_4372->g_441.x, "p_4372->g_441.x", print_hash_value);
    transparent_crc(p_4372->g_441.y, "p_4372->g_441.y", print_hash_value);
    transparent_crc(p_4372->g_441.z, "p_4372->g_441.z", print_hash_value);
    transparent_crc(p_4372->g_441.w, "p_4372->g_441.w", print_hash_value);
    transparent_crc(p_4372->g_475.x, "p_4372->g_475.x", print_hash_value);
    transparent_crc(p_4372->g_481.x, "p_4372->g_481.x", print_hash_value);
    transparent_crc(p_4372->g_481.y, "p_4372->g_481.y", print_hash_value);
    transparent_crc(p_4372->g_498.x, "p_4372->g_498.x", print_hash_value);
    transparent_crc(p_4372->g_498.y, "p_4372->g_498.y", print_hash_value);
    transparent_crc(p_4372->g_499.x, "p_4372->g_499.x", print_hash_value);
    transparent_crc(p_4372->g_499.y, "p_4372->g_499.y", print_hash_value);
    transparent_crc(p_4372->g_526.x, "p_4372->g_526.x", print_hash_value);
    transparent_crc(p_4372->g_526.y, "p_4372->g_526.y", print_hash_value);
    transparent_crc(p_4372->g_526.z, "p_4372->g_526.z", print_hash_value);
    transparent_crc(p_4372->g_527.x, "p_4372->g_527.x", print_hash_value);
    transparent_crc(p_4372->g_527.y, "p_4372->g_527.y", print_hash_value);
    transparent_crc(p_4372->g_527.z, "p_4372->g_527.z", print_hash_value);
    transparent_crc(p_4372->g_549.x, "p_4372->g_549.x", print_hash_value);
    transparent_crc(p_4372->g_549.y, "p_4372->g_549.y", print_hash_value);
    transparent_crc(p_4372->g_552.x, "p_4372->g_552.x", print_hash_value);
    transparent_crc(p_4372->g_552.y, "p_4372->g_552.y", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        transparent_crc(p_4372->g_566[i], "p_4372->g_566[i]", print_hash_value);

    }
    transparent_crc(p_4372->g_633.x, "p_4372->g_633.x", print_hash_value);
    transparent_crc(p_4372->g_649.x, "p_4372->g_649.x", print_hash_value);
    transparent_crc(p_4372->g_649.y, "p_4372->g_649.y", print_hash_value);
    transparent_crc(p_4372->g_658.x, "p_4372->g_658.x", print_hash_value);
    transparent_crc(p_4372->g_658.y, "p_4372->g_658.y", print_hash_value);
    transparent_crc(p_4372->g_702.x, "p_4372->g_702.x", print_hash_value);
    transparent_crc(p_4372->g_702.y, "p_4372->g_702.y", print_hash_value);
    transparent_crc(p_4372->g_705.x, "p_4372->g_705.x", print_hash_value);
    transparent_crc(p_4372->g_705.y, "p_4372->g_705.y", print_hash_value);
    transparent_crc(p_4372->g_705.z, "p_4372->g_705.z", print_hash_value);
    transparent_crc(p_4372->g_718, "p_4372->g_718", print_hash_value);
    transparent_crc(p_4372->g_719.x, "p_4372->g_719.x", print_hash_value);
    transparent_crc(p_4372->g_719.y, "p_4372->g_719.y", print_hash_value);
    transparent_crc(p_4372->g_721.x, "p_4372->g_721.x", print_hash_value);
    transparent_crc(p_4372->g_721.y, "p_4372->g_721.y", print_hash_value);
    transparent_crc(p_4372->g_722.x, "p_4372->g_722.x", print_hash_value);
    transparent_crc(p_4372->g_722.y, "p_4372->g_722.y", print_hash_value);
    transparent_crc(p_4372->g_722.z, "p_4372->g_722.z", print_hash_value);
    transparent_crc(p_4372->g_826.x, "p_4372->g_826.x", print_hash_value);
    transparent_crc(p_4372->g_826.y, "p_4372->g_826.y", print_hash_value);
    transparent_crc(p_4372->g_884.x, "p_4372->g_884.x", print_hash_value);
    transparent_crc(p_4372->g_884.y, "p_4372->g_884.y", print_hash_value);
    transparent_crc(p_4372->g_892.x, "p_4372->g_892.x", print_hash_value);
    transparent_crc(p_4372->g_892.y, "p_4372->g_892.y", print_hash_value);
    transparent_crc(p_4372->g_892.z, "p_4372->g_892.z", print_hash_value);
    transparent_crc(p_4372->g_892.w, "p_4372->g_892.w", print_hash_value);
    transparent_crc(p_4372->g_900.x, "p_4372->g_900.x", print_hash_value);
    transparent_crc(p_4372->g_900.y, "p_4372->g_900.y", print_hash_value);
    transparent_crc(p_4372->g_900.z, "p_4372->g_900.z", print_hash_value);
    transparent_crc(p_4372->g_944.x, "p_4372->g_944.x", print_hash_value);
    transparent_crc(p_4372->g_944.y, "p_4372->g_944.y", print_hash_value);
    transparent_crc(p_4372->g_947.x, "p_4372->g_947.x", print_hash_value);
    transparent_crc(p_4372->g_953.x, "p_4372->g_953.x", print_hash_value);
    transparent_crc(p_4372->g_970, "p_4372->g_970", print_hash_value);
    transparent_crc(p_4372->g_992.x, "p_4372->g_992.x", print_hash_value);
    transparent_crc(p_4372->g_992.y, "p_4372->g_992.y", print_hash_value);
    transparent_crc(p_4372->g_992.z, "p_4372->g_992.z", print_hash_value);
    transparent_crc(p_4372->g_1031, "p_4372->g_1031", print_hash_value);
    transparent_crc(p_4372->g_1043.x, "p_4372->g_1043.x", print_hash_value);
    transparent_crc(p_4372->g_1043.y, "p_4372->g_1043.y", print_hash_value);
    transparent_crc(p_4372->g_1111.x, "p_4372->g_1111.x", print_hash_value);
    transparent_crc(p_4372->g_1136.x, "p_4372->g_1136.x", print_hash_value);
    transparent_crc(p_4372->g_1167.x, "p_4372->g_1167.x", print_hash_value);
    transparent_crc(p_4372->g_1167.y, "p_4372->g_1167.y", print_hash_value);
    transparent_crc(p_4372->g_1167.z, "p_4372->g_1167.z", print_hash_value);
    transparent_crc(p_4372->g_1167.w, "p_4372->g_1167.w", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 7; j++)
        {
            transparent_crc(p_4372->g_1178[i][j], "p_4372->g_1178[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4372->g_1187.x, "p_4372->g_1187.x", print_hash_value);
    transparent_crc(p_4372->g_1187.y, "p_4372->g_1187.y", print_hash_value);
    transparent_crc(p_4372->g_1187.z, "p_4372->g_1187.z", print_hash_value);
    transparent_crc(p_4372->g_1224.x, "p_4372->g_1224.x", print_hash_value);
    transparent_crc(p_4372->g_1224.y, "p_4372->g_1224.y", print_hash_value);
    transparent_crc(p_4372->g_1224.z, "p_4372->g_1224.z", print_hash_value);
    transparent_crc(p_4372->g_1224.w, "p_4372->g_1224.w", print_hash_value);
    transparent_crc(p_4372->g_1291.x, "p_4372->g_1291.x", print_hash_value);
    transparent_crc(p_4372->g_1291.y, "p_4372->g_1291.y", print_hash_value);
    transparent_crc(p_4372->g_1291.z, "p_4372->g_1291.z", print_hash_value);
    transparent_crc(p_4372->g_1395.x, "p_4372->g_1395.x", print_hash_value);
    transparent_crc(p_4372->g_1395.y, "p_4372->g_1395.y", print_hash_value);
    transparent_crc(p_4372->g_1508, "p_4372->g_1508", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            transparent_crc(p_4372->g_1555[i][j], "p_4372->g_1555[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4372->g_1558.x, "p_4372->g_1558.x", print_hash_value);
    transparent_crc(p_4372->g_1558.y, "p_4372->g_1558.y", print_hash_value);
    transparent_crc(p_4372->g_1558.z, "p_4372->g_1558.z", print_hash_value);
    transparent_crc(p_4372->g_1558.w, "p_4372->g_1558.w", print_hash_value);
    transparent_crc(p_4372->g_1611.x, "p_4372->g_1611.x", print_hash_value);
    transparent_crc(p_4372->g_1626.x, "p_4372->g_1626.x", print_hash_value);
    transparent_crc(p_4372->g_1626.y, "p_4372->g_1626.y", print_hash_value);
    transparent_crc(p_4372->g_1626.z, "p_4372->g_1626.z", print_hash_value);
    transparent_crc(p_4372->g_1626.w, "p_4372->g_1626.w", print_hash_value);
    transparent_crc(p_4372->g_1628.x, "p_4372->g_1628.x", print_hash_value);
    transparent_crc(p_4372->g_1662.x, "p_4372->g_1662.x", print_hash_value);
    transparent_crc(p_4372->g_1662.y, "p_4372->g_1662.y", print_hash_value);
    transparent_crc(p_4372->g_1669, "p_4372->g_1669", print_hash_value);
    transparent_crc(p_4372->g_1671.x, "p_4372->g_1671.x", print_hash_value);
    transparent_crc(p_4372->g_1671.y, "p_4372->g_1671.y", print_hash_value);
    transparent_crc(p_4372->g_1671.z, "p_4372->g_1671.z", print_hash_value);
    transparent_crc(p_4372->g_1692.x, "p_4372->g_1692.x", print_hash_value);
    transparent_crc(p_4372->g_1692.y, "p_4372->g_1692.y", print_hash_value);
    transparent_crc(p_4372->g_1692.z, "p_4372->g_1692.z", print_hash_value);
    transparent_crc(p_4372->g_1692.w, "p_4372->g_1692.w", print_hash_value);
    transparent_crc(p_4372->g_1710.x, "p_4372->g_1710.x", print_hash_value);
    transparent_crc(p_4372->g_1727.x, "p_4372->g_1727.x", print_hash_value);
    transparent_crc(p_4372->g_1727.y, "p_4372->g_1727.y", print_hash_value);
    transparent_crc(p_4372->g_1731.x, "p_4372->g_1731.x", print_hash_value);
    transparent_crc(p_4372->g_1731.y, "p_4372->g_1731.y", print_hash_value);
    transparent_crc(p_4372->g_1731.z, "p_4372->g_1731.z", print_hash_value);
    transparent_crc(p_4372->g_1845.x, "p_4372->g_1845.x", print_hash_value);
    transparent_crc(p_4372->g_1845.y, "p_4372->g_1845.y", print_hash_value);
    transparent_crc(p_4372->g_1845.z, "p_4372->g_1845.z", print_hash_value);
    transparent_crc(p_4372->g_1868.x, "p_4372->g_1868.x", print_hash_value);
    transparent_crc(p_4372->g_1868.y, "p_4372->g_1868.y", print_hash_value);
    transparent_crc(p_4372->g_1868.z, "p_4372->g_1868.z", print_hash_value);
    transparent_crc(p_4372->g_1868.w, "p_4372->g_1868.w", print_hash_value);
    transparent_crc(p_4372->g_1884, "p_4372->g_1884", print_hash_value);
    transparent_crc(p_4372->g_1910.x, "p_4372->g_1910.x", print_hash_value);
    transparent_crc(p_4372->g_1910.y, "p_4372->g_1910.y", print_hash_value);
    transparent_crc(p_4372->g_1912.x, "p_4372->g_1912.x", print_hash_value);
    transparent_crc(p_4372->g_1912.y, "p_4372->g_1912.y", print_hash_value);
    transparent_crc(p_4372->g_1912.z, "p_4372->g_1912.z", print_hash_value);
    transparent_crc(p_4372->g_1912.w, "p_4372->g_1912.w", print_hash_value);
    transparent_crc(p_4372->g_1913.x, "p_4372->g_1913.x", print_hash_value);
    transparent_crc(p_4372->g_1913.y, "p_4372->g_1913.y", print_hash_value);
    transparent_crc(p_4372->g_1913.z, "p_4372->g_1913.z", print_hash_value);
    transparent_crc(p_4372->g_1933.x, "p_4372->g_1933.x", print_hash_value);
    transparent_crc(p_4372->g_1933.y, "p_4372->g_1933.y", print_hash_value);
    transparent_crc(p_4372->g_1933.z, "p_4372->g_1933.z", print_hash_value);
    transparent_crc(p_4372->g_1948.x, "p_4372->g_1948.x", print_hash_value);
    transparent_crc(p_4372->g_1953.x, "p_4372->g_1953.x", print_hash_value);
    transparent_crc(p_4372->g_1953.y, "p_4372->g_1953.y", print_hash_value);
    transparent_crc(p_4372->g_1953.z, "p_4372->g_1953.z", print_hash_value);
    transparent_crc(p_4372->g_1953.w, "p_4372->g_1953.w", print_hash_value);
    transparent_crc(p_4372->g_2039, "p_4372->g_2039", print_hash_value);
    transparent_crc(p_4372->g_2078, "p_4372->g_2078", print_hash_value);
    transparent_crc(p_4372->g_2103.x, "p_4372->g_2103.x", print_hash_value);
    transparent_crc(p_4372->g_2109.x, "p_4372->g_2109.x", print_hash_value);
    transparent_crc(p_4372->g_2109.y, "p_4372->g_2109.y", print_hash_value);
    transparent_crc(p_4372->g_2113.x, "p_4372->g_2113.x", print_hash_value);
    transparent_crc(p_4372->g_2113.y, "p_4372->g_2113.y", print_hash_value);
    transparent_crc(p_4372->g_2113.z, "p_4372->g_2113.z", print_hash_value);
    transparent_crc(p_4372->g_2113.w, "p_4372->g_2113.w", print_hash_value);
    transparent_crc(p_4372->g_2125.x, "p_4372->g_2125.x", print_hash_value);
    transparent_crc(p_4372->g_2125.y, "p_4372->g_2125.y", print_hash_value);
    transparent_crc(p_4372->g_2130.x, "p_4372->g_2130.x", print_hash_value);
    transparent_crc(p_4372->g_2130.y, "p_4372->g_2130.y", print_hash_value);
    transparent_crc(p_4372->g_2163.x, "p_4372->g_2163.x", print_hash_value);
    transparent_crc(p_4372->g_2163.y, "p_4372->g_2163.y", print_hash_value);
    transparent_crc(p_4372->g_2163.z, "p_4372->g_2163.z", print_hash_value);
    transparent_crc(p_4372->g_2180.x, "p_4372->g_2180.x", print_hash_value);
    transparent_crc(p_4372->g_2180.y, "p_4372->g_2180.y", print_hash_value);
    transparent_crc(p_4372->g_2180.z, "p_4372->g_2180.z", print_hash_value);
    transparent_crc(p_4372->g_2269.x, "p_4372->g_2269.x", print_hash_value);
    transparent_crc(p_4372->g_2269.y, "p_4372->g_2269.y", print_hash_value);
    transparent_crc(p_4372->g_2269.z, "p_4372->g_2269.z", print_hash_value);
    transparent_crc(p_4372->g_2269.w, "p_4372->g_2269.w", print_hash_value);
    transparent_crc(p_4372->g_2290.x, "p_4372->g_2290.x", print_hash_value);
    transparent_crc(p_4372->g_2290.y, "p_4372->g_2290.y", print_hash_value);
    transparent_crc(p_4372->g_2290.z, "p_4372->g_2290.z", print_hash_value);
    transparent_crc(p_4372->g_2290.w, "p_4372->g_2290.w", print_hash_value);
    transparent_crc(p_4372->g_2305.x, "p_4372->g_2305.x", print_hash_value);
    transparent_crc(p_4372->g_2325.x, "p_4372->g_2325.x", print_hash_value);
    transparent_crc(p_4372->g_2325.y, "p_4372->g_2325.y", print_hash_value);
    transparent_crc(p_4372->g_2326.x, "p_4372->g_2326.x", print_hash_value);
    transparent_crc(p_4372->g_2349, "p_4372->g_2349", print_hash_value);
    transparent_crc(p_4372->g_2375.x, "p_4372->g_2375.x", print_hash_value);
    transparent_crc(p_4372->g_2375.y, "p_4372->g_2375.y", print_hash_value);
    transparent_crc(p_4372->g_2375.z, "p_4372->g_2375.z", print_hash_value);
    transparent_crc(p_4372->g_2411.x, "p_4372->g_2411.x", print_hash_value);
    transparent_crc(p_4372->g_2411.y, "p_4372->g_2411.y", print_hash_value);
    transparent_crc(p_4372->g_2411.z, "p_4372->g_2411.z", print_hash_value);
    transparent_crc(p_4372->g_2426.x, "p_4372->g_2426.x", print_hash_value);
    transparent_crc(p_4372->g_2426.y, "p_4372->g_2426.y", print_hash_value);
    transparent_crc(p_4372->g_2426.z, "p_4372->g_2426.z", print_hash_value);
    transparent_crc(p_4372->g_2446.x, "p_4372->g_2446.x", print_hash_value);
    transparent_crc(p_4372->g_2451.x, "p_4372->g_2451.x", print_hash_value);
    transparent_crc(p_4372->g_2451.y, "p_4372->g_2451.y", print_hash_value);
    transparent_crc(p_4372->g_2451.z, "p_4372->g_2451.z", print_hash_value);
    transparent_crc(p_4372->g_2451.w, "p_4372->g_2451.w", print_hash_value);
    transparent_crc(p_4372->g_2464.x, "p_4372->g_2464.x", print_hash_value);
    transparent_crc(p_4372->g_2494.x, "p_4372->g_2494.x", print_hash_value);
    transparent_crc(p_4372->g_2494.y, "p_4372->g_2494.y", print_hash_value);
    transparent_crc(p_4372->g_2494.z, "p_4372->g_2494.z", print_hash_value);
    transparent_crc(p_4372->g_2494.w, "p_4372->g_2494.w", print_hash_value);
    transparent_crc(p_4372->g_2505.x, "p_4372->g_2505.x", print_hash_value);
    transparent_crc(p_4372->g_2505.y, "p_4372->g_2505.y", print_hash_value);
    transparent_crc(p_4372->g_2505.z, "p_4372->g_2505.z", print_hash_value);
    transparent_crc(p_4372->g_2505.w, "p_4372->g_2505.w", print_hash_value);
    transparent_crc(p_4372->g_2511.x, "p_4372->g_2511.x", print_hash_value);
    transparent_crc(p_4372->g_2511.y, "p_4372->g_2511.y", print_hash_value);
    transparent_crc(p_4372->g_2511.z, "p_4372->g_2511.z", print_hash_value);
    transparent_crc(p_4372->g_2511.w, "p_4372->g_2511.w", print_hash_value);
    transparent_crc(p_4372->g_2518.x, "p_4372->g_2518.x", print_hash_value);
    transparent_crc(p_4372->g_2518.y, "p_4372->g_2518.y", print_hash_value);
    transparent_crc(p_4372->g_2533.x, "p_4372->g_2533.x", print_hash_value);
    transparent_crc(p_4372->g_2599.x, "p_4372->g_2599.x", print_hash_value);
    transparent_crc(p_4372->g_2599.y, "p_4372->g_2599.y", print_hash_value);
    transparent_crc(p_4372->g_2599.z, "p_4372->g_2599.z", print_hash_value);
    transparent_crc(p_4372->g_2599.w, "p_4372->g_2599.w", print_hash_value);
    transparent_crc(p_4372->g_2604.x, "p_4372->g_2604.x", print_hash_value);
    transparent_crc(p_4372->g_2604.y, "p_4372->g_2604.y", print_hash_value);
    transparent_crc(p_4372->g_2604.z, "p_4372->g_2604.z", print_hash_value);
    transparent_crc(p_4372->g_2628.x, "p_4372->g_2628.x", print_hash_value);
    transparent_crc(p_4372->g_2645.x, "p_4372->g_2645.x", print_hash_value);
    transparent_crc(p_4372->g_2645.y, "p_4372->g_2645.y", print_hash_value);
    transparent_crc(p_4372->g_2646.x, "p_4372->g_2646.x", print_hash_value);
    transparent_crc(p_4372->g_2646.y, "p_4372->g_2646.y", print_hash_value);
    transparent_crc(p_4372->g_2651.x, "p_4372->g_2651.x", print_hash_value);
    transparent_crc(p_4372->g_2677.x, "p_4372->g_2677.x", print_hash_value);
    transparent_crc(p_4372->g_2677.y, "p_4372->g_2677.y", print_hash_value);
    transparent_crc(p_4372->g_2677.z, "p_4372->g_2677.z", print_hash_value);
    transparent_crc(p_4372->g_2711, "p_4372->g_2711", print_hash_value);
    transparent_crc(p_4372->g_2760.x, "p_4372->g_2760.x", print_hash_value);
    transparent_crc(p_4372->g_2760.y, "p_4372->g_2760.y", print_hash_value);
    transparent_crc(p_4372->g_2833.x, "p_4372->g_2833.x", print_hash_value);
    transparent_crc(p_4372->g_2859.x, "p_4372->g_2859.x", print_hash_value);
    transparent_crc(p_4372->g_2859.y, "p_4372->g_2859.y", print_hash_value);
    transparent_crc(p_4372->g_2863.x, "p_4372->g_2863.x", print_hash_value);
    transparent_crc(p_4372->g_2863.y, "p_4372->g_2863.y", print_hash_value);
    transparent_crc(p_4372->g_2863.z, "p_4372->g_2863.z", print_hash_value);
    transparent_crc(p_4372->g_2863.w, "p_4372->g_2863.w", print_hash_value);
    transparent_crc(p_4372->g_2905.x, "p_4372->g_2905.x", print_hash_value);
    transparent_crc(p_4372->g_2905.y, "p_4372->g_2905.y", print_hash_value);
    transparent_crc(p_4372->g_2905.z, "p_4372->g_2905.z", print_hash_value);
    transparent_crc(p_4372->g_2930.x, "p_4372->g_2930.x", print_hash_value);
    transparent_crc(p_4372->g_2930.y, "p_4372->g_2930.y", print_hash_value);
    transparent_crc(p_4372->g_2945.x, "p_4372->g_2945.x", print_hash_value);
    transparent_crc(p_4372->g_2945.y, "p_4372->g_2945.y", print_hash_value);
    transparent_crc(p_4372->g_2945.z, "p_4372->g_2945.z", print_hash_value);
    transparent_crc(p_4372->g_2945.w, "p_4372->g_2945.w", print_hash_value);
    transparent_crc(p_4372->g_2994, "p_4372->g_2994", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_4372->g_3007[i], "p_4372->g_3007[i]", print_hash_value);

    }
    transparent_crc(p_4372->g_3037.x, "p_4372->g_3037.x", print_hash_value);
    transparent_crc(p_4372->g_3054.x, "p_4372->g_3054.x", print_hash_value);
    transparent_crc(p_4372->g_3054.y, "p_4372->g_3054.y", print_hash_value);
    transparent_crc(p_4372->g_3054.z, "p_4372->g_3054.z", print_hash_value);
    transparent_crc(p_4372->g_3056.x, "p_4372->g_3056.x", print_hash_value);
    transparent_crc(p_4372->g_3130.x, "p_4372->g_3130.x", print_hash_value);
    transparent_crc(p_4372->g_3130.y, "p_4372->g_3130.y", print_hash_value);
    transparent_crc(p_4372->g_3163, "p_4372->g_3163", print_hash_value);
    transparent_crc(p_4372->g_3171.x, "p_4372->g_3171.x", print_hash_value);
    transparent_crc(p_4372->g_3171.y, "p_4372->g_3171.y", print_hash_value);
    transparent_crc(p_4372->g_3177.x, "p_4372->g_3177.x", print_hash_value);
    transparent_crc(p_4372->g_3177.y, "p_4372->g_3177.y", print_hash_value);
    transparent_crc(p_4372->g_3217.x, "p_4372->g_3217.x", print_hash_value);
    transparent_crc(p_4372->g_3217.y, "p_4372->g_3217.y", print_hash_value);
    transparent_crc(p_4372->g_3217.z, "p_4372->g_3217.z", print_hash_value);
    transparent_crc(p_4372->g_3223.x, "p_4372->g_3223.x", print_hash_value);
    transparent_crc(p_4372->g_3229.x, "p_4372->g_3229.x", print_hash_value);
    transparent_crc(p_4372->g_3229.y, "p_4372->g_3229.y", print_hash_value);
    transparent_crc(p_4372->g_3229.z, "p_4372->g_3229.z", print_hash_value);
    transparent_crc(p_4372->g_3270.x, "p_4372->g_3270.x", print_hash_value);
    transparent_crc(p_4372->g_3270.y, "p_4372->g_3270.y", print_hash_value);
    transparent_crc(p_4372->g_3270.z, "p_4372->g_3270.z", print_hash_value);
    transparent_crc(p_4372->g_3271.x, "p_4372->g_3271.x", print_hash_value);
    transparent_crc(p_4372->g_3271.y, "p_4372->g_3271.y", print_hash_value);
    transparent_crc(p_4372->g_3271.z, "p_4372->g_3271.z", print_hash_value);
    transparent_crc(p_4372->g_3307.x, "p_4372->g_3307.x", print_hash_value);
    transparent_crc(p_4372->g_3307.y, "p_4372->g_3307.y", print_hash_value);
    transparent_crc(p_4372->g_3307.z, "p_4372->g_3307.z", print_hash_value);
    transparent_crc(p_4372->g_3307.w, "p_4372->g_3307.w", print_hash_value);
    transparent_crc(p_4372->g_3348.x, "p_4372->g_3348.x", print_hash_value);
    transparent_crc(p_4372->g_3348.y, "p_4372->g_3348.y", print_hash_value);
    transparent_crc(p_4372->g_3351.x, "p_4372->g_3351.x", print_hash_value);
    transparent_crc(p_4372->g_3360.x, "p_4372->g_3360.x", print_hash_value);
    transparent_crc(p_4372->g_3360.y, "p_4372->g_3360.y", print_hash_value);
    transparent_crc(p_4372->g_3360.z, "p_4372->g_3360.z", print_hash_value);
    transparent_crc(p_4372->g_3366.x, "p_4372->g_3366.x", print_hash_value);
    transparent_crc(p_4372->g_3371, "p_4372->g_3371", print_hash_value);
    transparent_crc(p_4372->g_3392, "p_4372->g_3392", print_hash_value);
    transparent_crc(p_4372->g_3398.x, "p_4372->g_3398.x", print_hash_value);
    transparent_crc(p_4372->g_3398.y, "p_4372->g_3398.y", print_hash_value);
    transparent_crc(p_4372->g_3398.z, "p_4372->g_3398.z", print_hash_value);
    transparent_crc(p_4372->g_3421.x, "p_4372->g_3421.x", print_hash_value);
    transparent_crc(p_4372->g_3423.x, "p_4372->g_3423.x", print_hash_value);
    transparent_crc(p_4372->g_3447.x, "p_4372->g_3447.x", print_hash_value);
    transparent_crc(p_4372->g_3492.x, "p_4372->g_3492.x", print_hash_value);
    transparent_crc(p_4372->g_3492.y, "p_4372->g_3492.y", print_hash_value);
    transparent_crc(p_4372->g_3492.z, "p_4372->g_3492.z", print_hash_value);
    transparent_crc(p_4372->g_3492.w, "p_4372->g_3492.w", print_hash_value);
    transparent_crc(p_4372->g_3504.x, "p_4372->g_3504.x", print_hash_value);
    transparent_crc(p_4372->g_3504.y, "p_4372->g_3504.y", print_hash_value);
    transparent_crc(p_4372->g_3516.x, "p_4372->g_3516.x", print_hash_value);
    transparent_crc(p_4372->g_3516.y, "p_4372->g_3516.y", print_hash_value);
    transparent_crc(p_4372->g_3516.z, "p_4372->g_3516.z", print_hash_value);
    transparent_crc(p_4372->g_3553, "p_4372->g_3553", print_hash_value);
    transparent_crc(p_4372->g_3563, "p_4372->g_3563", print_hash_value);
    transparent_crc(p_4372->g_3568, "p_4372->g_3568", print_hash_value);
    transparent_crc(p_4372->g_3592, "p_4372->g_3592", print_hash_value);
    transparent_crc(p_4372->g_3639.x, "p_4372->g_3639.x", print_hash_value);
    transparent_crc(p_4372->g_3639.y, "p_4372->g_3639.y", print_hash_value);
    transparent_crc(p_4372->g_3639.z, "p_4372->g_3639.z", print_hash_value);
    transparent_crc(p_4372->g_3645, "p_4372->g_3645", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(p_4372->g_3648[i].f0, "p_4372->g_3648[i].f0", print_hash_value);

    }
    transparent_crc(p_4372->g_3662.x, "p_4372->g_3662.x", print_hash_value);
    transparent_crc(p_4372->g_3662.y, "p_4372->g_3662.y", print_hash_value);
    transparent_crc(p_4372->g_3662.z, "p_4372->g_3662.z", print_hash_value);
    transparent_crc(p_4372->g_3667.x, "p_4372->g_3667.x", print_hash_value);
    transparent_crc(p_4372->g_3667.y, "p_4372->g_3667.y", print_hash_value);
    transparent_crc(p_4372->g_3667.z, "p_4372->g_3667.z", print_hash_value);
    transparent_crc(p_4372->g_3709.x, "p_4372->g_3709.x", print_hash_value);
    transparent_crc(p_4372->g_3709.y, "p_4372->g_3709.y", print_hash_value);
    transparent_crc(p_4372->g_3709.z, "p_4372->g_3709.z", print_hash_value);
    transparent_crc(p_4372->g_3712.x, "p_4372->g_3712.x", print_hash_value);
    transparent_crc(p_4372->g_3712.y, "p_4372->g_3712.y", print_hash_value);
    transparent_crc(p_4372->g_3715.x, "p_4372->g_3715.x", print_hash_value);
    transparent_crc(p_4372->g_3715.y, "p_4372->g_3715.y", print_hash_value);
    transparent_crc(p_4372->g_3715.z, "p_4372->g_3715.z", print_hash_value);
    transparent_crc(p_4372->g_3715.w, "p_4372->g_3715.w", print_hash_value);
    transparent_crc(p_4372->g_3723.x, "p_4372->g_3723.x", print_hash_value);
    transparent_crc(p_4372->g_3723.y, "p_4372->g_3723.y", print_hash_value);
    transparent_crc(p_4372->g_3723.z, "p_4372->g_3723.z", print_hash_value);
    transparent_crc(p_4372->g_3731, "p_4372->g_3731", print_hash_value);
    transparent_crc(p_4372->g_3732.x, "p_4372->g_3732.x", print_hash_value);
    transparent_crc(p_4372->g_3732.y, "p_4372->g_3732.y", print_hash_value);
    transparent_crc(p_4372->g_3732.z, "p_4372->g_3732.z", print_hash_value);
    transparent_crc(p_4372->g_3732.w, "p_4372->g_3732.w", print_hash_value);
    transparent_crc(p_4372->g_3781.x, "p_4372->g_3781.x", print_hash_value);
    transparent_crc(p_4372->g_3781.y, "p_4372->g_3781.y", print_hash_value);
    transparent_crc(p_4372->g_3795.x, "p_4372->g_3795.x", print_hash_value);
    transparent_crc(p_4372->g_3795.y, "p_4372->g_3795.y", print_hash_value);
    transparent_crc(p_4372->g_3824.x, "p_4372->g_3824.x", print_hash_value);
    transparent_crc(p_4372->g_3824.y, "p_4372->g_3824.y", print_hash_value);
    transparent_crc(p_4372->g_3824.z, "p_4372->g_3824.z", print_hash_value);
    transparent_crc(p_4372->g_3824.w, "p_4372->g_3824.w", print_hash_value);
    transparent_crc(p_4372->g_3827.x, "p_4372->g_3827.x", print_hash_value);
    transparent_crc(p_4372->g_3827.y, "p_4372->g_3827.y", print_hash_value);
    transparent_crc(p_4372->g_3827.z, "p_4372->g_3827.z", print_hash_value);
    transparent_crc(p_4372->g_3859.x, "p_4372->g_3859.x", print_hash_value);
    transparent_crc(p_4372->g_3859.y, "p_4372->g_3859.y", print_hash_value);
    transparent_crc(p_4372->g_3859.z, "p_4372->g_3859.z", print_hash_value);
    transparent_crc(p_4372->g_3859.w, "p_4372->g_3859.w", print_hash_value);
    transparent_crc(p_4372->g_3880.x, "p_4372->g_3880.x", print_hash_value);
    transparent_crc(p_4372->g_3880.y, "p_4372->g_3880.y", print_hash_value);
    transparent_crc(p_4372->g_3880.z, "p_4372->g_3880.z", print_hash_value);
    transparent_crc(p_4372->g_3880.w, "p_4372->g_3880.w", print_hash_value);
    transparent_crc(p_4372->g_3883.x, "p_4372->g_3883.x", print_hash_value);
    transparent_crc(p_4372->g_3883.y, "p_4372->g_3883.y", print_hash_value);
    transparent_crc(p_4372->g_3889.x, "p_4372->g_3889.x", print_hash_value);
    transparent_crc(p_4372->g_3889.y, "p_4372->g_3889.y", print_hash_value);
    transparent_crc(p_4372->g_3920.x, "p_4372->g_3920.x", print_hash_value);
    transparent_crc(p_4372->g_3920.y, "p_4372->g_3920.y", print_hash_value);
    transparent_crc(p_4372->g_3935.x, "p_4372->g_3935.x", print_hash_value);
    transparent_crc(p_4372->g_3935.y, "p_4372->g_3935.y", print_hash_value);
    transparent_crc(p_4372->g_3935.z, "p_4372->g_3935.z", print_hash_value);
    transparent_crc(p_4372->g_3935.w, "p_4372->g_3935.w", print_hash_value);
    transparent_crc(p_4372->g_3977.x, "p_4372->g_3977.x", print_hash_value);
    transparent_crc(p_4372->g_3977.y, "p_4372->g_3977.y", print_hash_value);
    transparent_crc(p_4372->g_3978, "p_4372->g_3978", print_hash_value);
    transparent_crc(p_4372->g_4081.x, "p_4372->g_4081.x", print_hash_value);
    transparent_crc(p_4372->g_4081.y, "p_4372->g_4081.y", print_hash_value);
    transparent_crc(p_4372->g_4091.x, "p_4372->g_4091.x", print_hash_value);
    transparent_crc(p_4372->g_4091.y, "p_4372->g_4091.y", print_hash_value);
    transparent_crc(p_4372->g_4091.z, "p_4372->g_4091.z", print_hash_value);
    transparent_crc(p_4372->g_4118.x, "p_4372->g_4118.x", print_hash_value);
    transparent_crc(p_4372->g_4119.x, "p_4372->g_4119.x", print_hash_value);
    transparent_crc(p_4372->g_4119.y, "p_4372->g_4119.y", print_hash_value);
    transparent_crc(p_4372->g_4119.z, "p_4372->g_4119.z", print_hash_value);
    transparent_crc(p_4372->g_4120.x, "p_4372->g_4120.x", print_hash_value);
    transparent_crc(p_4372->g_4120.y, "p_4372->g_4120.y", print_hash_value);
    transparent_crc(p_4372->g_4120.z, "p_4372->g_4120.z", print_hash_value);
    transparent_crc(p_4372->g_4120.w, "p_4372->g_4120.w", print_hash_value);
    transparent_crc(p_4372->g_4132.x, "p_4372->g_4132.x", print_hash_value);
    transparent_crc(p_4372->g_4132.y, "p_4372->g_4132.y", print_hash_value);
    transparent_crc(p_4372->g_4132.z, "p_4372->g_4132.z", print_hash_value);
    transparent_crc(p_4372->g_4155.x, "p_4372->g_4155.x", print_hash_value);
    transparent_crc(p_4372->g_4155.y, "p_4372->g_4155.y", print_hash_value);
    transparent_crc(p_4372->g_4155.z, "p_4372->g_4155.z", print_hash_value);
    transparent_crc(p_4372->g_4157, "p_4372->g_4157", print_hash_value);
    transparent_crc(p_4372->g_4163, "p_4372->g_4163", print_hash_value);
    transparent_crc(p_4372->g_4186.x, "p_4372->g_4186.x", print_hash_value);
    transparent_crc(p_4372->g_4186.y, "p_4372->g_4186.y", print_hash_value);
    transparent_crc(p_4372->g_4187.x, "p_4372->g_4187.x", print_hash_value);
    transparent_crc(p_4372->g_4187.y, "p_4372->g_4187.y", print_hash_value);
    transparent_crc(p_4372->g_4187.z, "p_4372->g_4187.z", print_hash_value);
    transparent_crc(p_4372->g_4227.x, "p_4372->g_4227.x", print_hash_value);
    transparent_crc(p_4372->g_4227.y, "p_4372->g_4227.y", print_hash_value);
    transparent_crc(p_4372->g_4227.z, "p_4372->g_4227.z", print_hash_value);
    transparent_crc(p_4372->g_4227.w, "p_4372->g_4227.w", print_hash_value);
    transparent_crc(p_4372->g_4229.x, "p_4372->g_4229.x", print_hash_value);
    transparent_crc(p_4372->g_4229.y, "p_4372->g_4229.y", print_hash_value);
    transparent_crc(p_4372->g_4229.z, "p_4372->g_4229.z", print_hash_value);
    transparent_crc(p_4372->g_4235, "p_4372->g_4235", print_hash_value);
    transparent_crc(p_4372->g_4236, "p_4372->g_4236", print_hash_value);
    transparent_crc(p_4372->g_4256, "p_4372->g_4256", print_hash_value);
    transparent_crc(p_4372->g_4288.x, "p_4372->g_4288.x", print_hash_value);
    transparent_crc(p_4372->g_4288.y, "p_4372->g_4288.y", print_hash_value);
    transparent_crc(p_4372->g_4288.z, "p_4372->g_4288.z", print_hash_value);
    transparent_crc(p_4372->g_4288.w, "p_4372->g_4288.w", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            transparent_crc(p_4372->g_4304[i][j], "p_4372->g_4304[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4372->g_4305.x, "p_4372->g_4305.x", print_hash_value);
    transparent_crc(p_4372->g_4305.y, "p_4372->g_4305.y", print_hash_value);
    transparent_crc(p_4372->g_4308.x, "p_4372->g_4308.x", print_hash_value);
    transparent_crc(p_4372->g_4308.y, "p_4372->g_4308.y", print_hash_value);
    transparent_crc(p_4372->g_4308.z, "p_4372->g_4308.z", print_hash_value);
    transparent_crc(p_4372->g_4313.x, "p_4372->g_4313.x", print_hash_value);
    transparent_crc(p_4372->g_4344, "p_4372->g_4344", print_hash_value);
    transparent_crc(p_4372->g_4346.x, "p_4372->g_4346.x", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_4372->g_4353[i], "p_4372->g_4353[i]", print_hash_value);

    }

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

