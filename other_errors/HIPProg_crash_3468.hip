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
// Seed: 2240573224

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   uint64_t  f1;
   uint32_t  f2;
   signed f3 : 13;
   int32_t  f4;
   int32_t  f5;
   int32_t  f6;
   uint32_t  f7;
   uint32_t  f8;
};

struct S1 {
   int32_t  f0;
   signed f1 : 22;
   signed f2 : 28;
   unsigned f3 : 2;
   signed f4 : 11;
   uint32_t  f5;
   uint32_t  f6;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ int32_t hip_const_1[4][6][3];
__constant__ uint32_t hip_const_2;
__constant__ uint32_t hip_const_3;
__constant__ uint32_t hip_const_4;
__constant__ struct S1 hip_const_5;
__constant__ uint16_t hip_const_6;
__constant__ struct S0 hip_const_7[3];
__constant__ int32_t hip_const_8;
__constant__ struct S1 hip_const_9;
__constant__ int64_t hip_const_10[1][9][8];
__constant__ uint8_t hip_const_11;
__constant__ uint8_t hip_const_12[7][10][3];
__constant__ int32_t hip_const_13;
__constant__ uint16_t hip_const_14[5][7];

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        int32_t host_hip_const_1[4][6][3] = {{{0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}}, {{0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}}, {{0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}}, {{0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}, {0x5B054DBBL, 0x9C63C407L, 0x85CE96B7L}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint32_t host_hip_const_2 = 0xF07C70ABL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        uint32_t host_hip_const_3 = 0xD373EE76L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        uint32_t host_hip_const_4 = 0xA4C924B5L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        struct S1 host_hip_const_5 = {0x45714FFDL,-424,-16164,0,23,0x45799333L,0x7D24B5E4L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint16_t host_hip_const_6 = 0x5537L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        struct S0 host_hip_const_7[3] = {{0xF39CEE24L,0x2E809B4AF7BDD484LL,0x7374FD52L,-26,1L,1L,0xB0881DDAL,0UL,0x846B51F0L}, {0xF39CEE24L,0x2E809B4AF7BDD484LL,0x7374FD52L,-26,1L,1L,0xB0881DDAL,0UL,0x846B51F0L}, {0xF39CEE24L,0x2E809B4AF7BDD484LL,0x7374FD52L,-26,1L,1L,0xB0881DDAL,0UL,0x846B51F0L}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        int32_t host_hip_const_8 = 0xACD6BA8DL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        struct S1 host_hip_const_9 = {0x6C5533F2L,-970,9594,1,-18,18446744073709551613UL,0x12D49381L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        int64_t host_hip_const_10[1][9][8] = {{{(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}, {(-5L), (-5L), 0x20C3D8D58945CB29LL, (-9L), (-3L), (-9L), 0x20C3D8D58945CB29LL, (-5L)}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
        uint8_t host_hip_const_11 = 0xB1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_11, &host_hip_const_11, sizeof(host_hip_const_11)));
        uint8_t host_hip_const_12[7][10][3] = {{{1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}}, {{1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}}, {{1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}}, {{1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}}, {{1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}}, {{1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}}, {{1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}, {1UL, 0UL, 0x19L}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_12, &host_hip_const_12, sizeof(host_hip_const_12)));
        int32_t host_hip_const_13 = 7L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_13, &host_hip_const_13, sizeof(host_hip_const_13)));
        uint16_t host_hip_const_14[5][7] = {{65532UL, 0x3202L, 0UL, 0x3202L, 65532UL, 0x3202L, 0UL}, {65532UL, 0x3202L, 0UL, 0x3202L, 65532UL, 0x3202L, 0UL}, {65532UL, 0x3202L, 0UL, 0x3202L, 65532UL, 0x3202L, 0UL}, {65532UL, 0x3202L, 0UL, 0x3202L, 65532UL, 0x3202L, 0UL}, {65532UL, 0x3202L, 0UL, 0x3202L, 65532UL, 0x3202L, 0UL}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_14, &host_hip_const_14, sizeof(host_hip_const_14)));
}

struct S2 {
    ushort3 g_103;
    ushort1 g_109;
    uint64_t g_113;
    uint64_t *g_115[7];
    uchar4 g_143;
    int64_t g_145;
    ulong3 g_152;
    int2 g_154;
    uchar2 g_172;
    int3 g_189;
    short1 g_210;
    long1 g_220;
    int32_t *g_223;
    int32_t **g_222;
    ushort4 g_271;
    int16_t *g_326;
    int64_t g_327;
    uint16_t g_361[10][4];
    int2 g_376;
    uchar1 g_379;
    struct S0 g_400;
    struct S0 *g_425;
    struct S0 **g_424;
    uint4 g_427;
    int64_t *g_449;
    int64_t **g_448;
    int64_t ***g_447[10][7][3];
    ulong2 g_472;
    uint64_t g_495;
    uchar3 g_520;
    int1 g_521;
    char2 g_535;
    char3 g_536;
    uint1 g_537;
    char4 g_601;
    int32_t g_605;
    uchar1 g_669;
    int32_t g_671;
    long2 g_678;
    struct S1 g_685[4][6];
    long3 g_706;
    uint3 g_715;
    uint2 g_736;
    uint3 g_745;
    int32_t g_757;
    char3 g_797;
    short3 g_811;
    int16_t g_837;
    short4 g_840;
    uint32_t *g_851;
    uint32_t **g_850;
    uint16_t g_873;
    struct S1 *g_877;
    ulong1 g_905;
    ushort1 g_907;
    int32_t g_928;
    ushort4 g_971;
    ushort2 g_1026;
    uint32_t ***g_1038[9][4];
    uint32_t ****g_1037;
    struct S0 g_1052;
    int4 g_1101;
    uint16_t g_1112;
    uint8_t g_1149;
    uchar1 g_1158;
    ulong3 g_1159;
    ulong4 g_1168;
    ulong3 g_1172;
    ushort1 g_1209;
    long1 g_1220;
    uint2 g_1231;
    int4 g_1239;
    int32_t g_1242;
    int64_t g_1246;
    long2 g_1322;
    short4 g_1333;
    int1 g_1334;
    int2 g_1335;
    uint8_t *g_1372[7];
    uint8_t **g_1371;
    uint8_t ***g_1370;
    long2 g_1410;
    uint4 g_1468;
    uint64_t **g_1483;
    ushort1 g_1507;
    ushort3 g_1508;
    ushort3 g_1509;
    int16_t ****g_1517;
    struct S0 ***g_1545;
    struct S0 ****g_1544;
    ulong1 g_1560;
    int32_t g_1574;
    uchar3 g_1580;
    int2 g_1618;
    ushort1 g_1669;
    int64_t *****g_1699;
    uchar2 g_1713;
    uint3 g_1718;
    uint4 g_1744;
    struct S1 **g_1755;
    struct S1 ***g_1754;
    struct S1 ****g_1753;
    uchar2 g_1842;
    uchar2 g_1847;
    long2 g_1852;
    uint3 g_1859;
    int16_t g_1920;
    int8_t g_1922;
    long3 g_1950;
    long3 g_1983;
    ulong1 g_1989;
    short4 g_2076;
    ushort3 g_2079;
    long1 g_2209;
    uchar1 g_2261;
    short4 g_2304;
    int4 g_2306;
    uint64_t ***g_2361;
    uint64_t ****g_2360[5][6][1];
    uint64_t *****g_2359;
    int32_t g_2382;
    uchar2 g_2405;
    uchar1 g_2406;
    ushort3 g_2420;
    int64_t g_2454;
    uint2 g_2477;
    ulong4 g_2486;
    ushort4 g_2521;
    short1 g_2551;
    ushort2 g_2554;
    long1 g_2559;
    int64_t ****g_2571;
    uint2 g_2579;
    int3 g_2651;
    ushort2 g_2730;
    short4 g_2804;
    ulong3 g_2871;
    uchar3 g_2877;
    ushort2 g_2913;
    int3 g_2920;
    uchar3 g_2922;
    char1 g_2979;
    int32_t ***g_2985;
    int32_t ****g_2984;
    int32_t *****g_2983[5][3][4];
    char3 g_3017;
    char2 g_3018;
    uchar2 g_3039;
    uchar1 g_3056;
    uchar3 g_3059;
    char3 g_3076;
    uint8_t g_3102;
    uint32_t g_3117;
    uint2 g_3133;
    uint4 g_3134;
    int32_t g_3160;
    int16_t g_3162[1];
    uint64_t g_3187;
    int1 g_3192;
    uint16_t g_3196;
    int32_t g_3215;
    int1 g_3223;
    int2 g_3229;
    uint16_t **g_3234;
    uint16_t *g_3241;
    uint16_t **g_3240;
    uint16_t g_3245;
    char3 g_3258;
    uint4 g_3297;
    int3 g_3300;
    uint32_t g_3311;
    uint64_t g_3354;
    long3 g_3440;
    int2 g_3443;
    uchar1 g_3455;
    char3 g_3477;
    ushort4 g_3535;
    char3 g_3551;
    uint16_t g_3568;
    short1 g_3601;
    ushort4 g_3609;
    ulong4 g_3610;
    uint8_t g_3616;
    ulong3 g_3628;
    uint8_t g_3647;
    int32_t g_3667;
    uint32_t g_3675[3];
    uchar2 g_3678;
    short1 g_3681;
    uint32_t *g_3694;
    uint32_t **g_3693;
    uint64_t g_3730;
    ushort2 g_3754;
    ushort2 g_3757;
    int32_t g_3764[7][1];
    int4 g_3772;
    char4 g_3774;
    char1 g_3799;
    ulong4 g_3845;
    ulong1 g_3846;
    ulong3 g_3847;
    ulong3 g_3849;
    ushort1 g_3877;
    uint8_t g_3899[4][4][8];
    int32_t ***g_3912[2];
    long3 g_3919;
    uint32_t *****g_3932;
    ulong1 g_3947;
    struct S1 g_3962;
    ushort2 g_3967;
    uchar1 g_4005;
    int32_t *g_4019;
    uint16_t g_4058;
    uint1 g_4070;
    long2 g_4110;
    int1 g_4130;
    int2 g_4142;
    uint8_t g_4145;
    int16_t ***g_4168[5];
    uchar3 g_4179;
    uchar1 g_4180;
    ulong2 g_4252;
    ulong3 g_4255;
    char3 g_4295;
    ulong3 g_4296;
    int3 g_4369;
    char4 g_4388;
    int1 g_4402;
    char2 g_4428;
    uchar1 g_4463;
    int1 g_4464;
    char3 g_4471;
    uchar4 g_4476;
    uchar3 g_4477;
    int8_t g_4521;
    int1 g_4543;
    uint1 g_4546;
};


/* --- FORWARD DECLARATIONS --- */
__device__ int16_t  func_1(struct S2 * p_4589);
__device__ int32_t  func_9(uint32_t  p_10, uint32_t  p_11, struct S1  p_12, struct S2 * p_4589);
__device__ uint64_t  func_21(int32_t  p_22, uint32_t * p_23, int32_t  p_24, int64_t * p_25, struct S2 * p_4589);
__device__ int32_t * func_30(struct S0  p_31, int64_t * p_32, uint64_t  p_33, int32_t  p_34, struct S2 * p_4589);
__device__ int64_t * func_35(uint32_t * p_36, struct S1  p_37, uint8_t  p_38, int64_t * p_39, uint32_t * p_40, struct S2 * p_4589);
__device__ struct S1  func_42(uint64_t  p_43, int32_t * p_44, struct S2 * p_4589);
__device__ uint64_t  func_54(uint32_t * p_55, int32_t  p_56, int32_t  p_57, int64_t * p_58, int64_t  p_59, struct S2 * p_4589);
__device__ uint16_t  func_61(int16_t  p_62, int64_t  p_63, int8_t  p_64, int64_t * p_65, struct S2 * p_4589);
__device__ uint64_t  func_68(uint16_t  p_69, int64_t * p_70, uint32_t  p_71, uint32_t  p_72, struct S2 * p_4589);
__device__ uint8_t  func_75(int64_t * p_76, struct S2 * p_4589);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_8 hip_const_7.f0 hip_const_14 hip_const_9.f2 hip_const_12 hip_const_7.f4 hip_const_9 hip_const_7 p_4589->g_222 p_4589->g_671 p_4589->g_1112 p_4589->g_877 p_4589->g_811 p_4589->g_1159 p_4589->g_605 p_4589->g_361 p_4589->g_1246 hip_const_13 p_4589->g_400.f3 p_4589->g_837 p_4589->g_1370 p_4589->g_449 hip_const_10 p_4589->g_448 p_4589->g_1334 hip_const_1 p_4589->g_797 p_4589->g_907 p_4589->g_271 p_4589->g_757 p_4589->g_223 p_4589->g_400.f7 p_4589->g_1517 p_4589->g_1544 p_4589->g_1052.f5 p_4589->g_1052.f7 p_4589->g_1322 p_4589->g_536 p_4589->g_1052.f1 p_4589->g_1580 p_4589->g_1172 p_4589->g_154 p_4589->g_1574 p_4589->g_1149 hip_const_5.f1 p_4589->g_685 p_4589->g_1507 p_4589->g_706 p_4589->g_400.f4 p_4589->g_1052.f4 p_4589->g_537 p_4589->g_2359 p_4589->g_2360 p_4589->g_400.f1 hip_const_5.f2 p_4589->g_1989 p_4589->g_1468 p_4589->g_1052.f2 p_4589->g_2454 p_4589->g_376 p_4589->g_851 hip_const_2 p_4589->g_1101 p_4589->g_2304 p_4589->g_1052.f3 p_4589->g_1052 p_4589->g_1859 p_4589->g_1220 p_4589->g_1718 p_4589->g_2079 p_4589->g_928 p_4589->g_520 p_4589->g_1920 p_4589->g_2913 p_4589->g_2382 p_4589->g_1983 p_4589->g_2406 p_4589->g_2984 p_4589->g_2985 p_4589->g_1026 p_4589->g_3102 p_4589->g_3919 p_4589->g_3162 p_4589->g_3240 p_4589->g_3241 p_4589->g_3196 p_4589->g_1545 p_4589->g_424 p_4589->g_425 p_4589->g_3947 p_4589->g_1744 p_4589->g_3962 p_4589->g_3967 p_4589->g_1242 p_4589->g_327 p_4589->g_4005 p_4589->g_210 p_4589->g_745 p_4589->g_4058 p_4589->g_400.f8 p_4589->g_2571 p_4589->g_447 p_4589->g_3667 p_4589->g_715 hip_const_5
 * writes: p_4589->g_1052.f2 p_4589->g_400.f7 p_4589->g_223 p_4589->g_400.f4 p_4589->g_145 p_4589->g_605 p_4589->g_671 p_4589->g_1112 p_4589->g_400.f5 p_4589->g_873 p_4589->g_1052.f5 p_4589->g_685 p_4589->g_361 p_4589->g_400.f2 p_4589->g_1052.f4 p_4589->g_327 p_4589->g_400.f3 p_4589->g_400.f0 p_4589->g_1037 p_4589->g_1052.f1 p_4589->g_1052.f0 p_4589->g_757 p_4589->g_115 p_4589->g_400.f8 p_4589->g_1483 p_4589->g_1509 p_4589->g_1335 p_4589->g_1544 p_4589->g_1246 p_4589->g_154 p_4589->g_1334 p_4589->g_400.f1 p_4589->g_1052 p_4589->g_837 p_4589->g_210 p_4589->g_1149 p_4589->g_1242 p_4589->g_811 p_4589->g_928 p_4589->g_2360 p_4589->g_1922 p_4589->g_1333 p_4589->g_1718 p_4589->g_1920 p_4589->g_1574 p_4589->g_400.f6 p_4589->g_2454 p_4589->g_797 p_4589->g_3102 p_4589->g_2420 p_4589->g_400 p_4589->g_2382 p_4589->g_3912 p_4589->g_3932 p_4589->g_1545 p_4589->g_3196 p_4589->g_4019 p_4589->g_3667 p_4589->g_4168
 */
__device__ int16_t  func_1(struct S2 * p_4589)
{ /* block id: 0 */
    uint1 l_8 = make_uint1(4294967295UL);
    uint32_t *l_13[4][2][9] = {{{nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}, {nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}}, {{nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}, {nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}}, {{nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}, {nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}}, {{nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}, {nullptr, &hip_const_5.f5, nullptr, &hip_const_7[2].f7, &hip_const_9.f5, nullptr, &hip_const_9.f5, &hip_const_7[2].f7, nullptr}}};
    int32_t l_14 = 0x8C3FCEEEL;
    int64_t *l_15 = nullptr;
    int64_t *l_16 = nullptr;
    int32_t l_17 = 0L;
    int64_t *l_20[5];
    int32_t l_3951[1];
    uint32_t l_3952 = 0UL;
    struct S0 ***l_3955 = &p_4589->g_424;
    __shared__ uint32_t l_3973;
    l_3973 = 0x016A024FL;
    int32_t l_4054 = 0L;
    int64_t l_4116 = 0x653D78C476A67C6CLL;
    int32_t l_4154 = 0L;
    uint8_t ****l_4162 = &p_4589->g_1370;
    // attempting a hip shared for loop
    __shared__ struct S1 l_4165[8];
    for (int i = 0; i < 8; i++)
        l_4165[i] = {-1L,-2006,-4105,0,14,9UL,3UL};
    uint16_t l_4185 = 0UL;
    uint64_t l_4196 = 0xAA8B2F2FDBA830F7LL;
    struct S0 l_4204 = {18446744073709551615UL,0UL,4294967287UL,42,-1L,1L,0x3162FD39L,18446744073709551612UL,5UL};
    uint8_t l_4205 = 0xDDL;
    int8_t l_4220 = 0x2EL;
    __shared__ ulong4 l_4256;
    l_4256 = make_ulong4(1UL, 1UL, 1UL, 1UL);
    uint64_t l_4277 = 0xCADB6FA924392A14LL;
    uint32_t l_4344 = 0xFB717679L;
    uint32_t l_4358 = 1UL;
    uint64_t *****l_4380 = &p_4589->g_2360[1][1][0];
    uint32_t l_4434 = 0x3B9DD25AL;
    uint32_t ***l_4439 = &p_4589->g_850;
    struct S1 **l_4450 = &p_4589->g_877;
    int32_t ****l_4453 = &p_4589->g_3912[1];
    uint8_t l_4524 = 0x84L;
    uint64_t l_4548 = 18446744073709551615UL;
    ushort2 l_4553 = make_ushort2(1UL, 0x8AFCL);
    __shared__ uint32_t l_4563;
    l_4563 = 0UL;
    long2 l_4568 = make_long2((-1L), 0x8890B9DDE583CD54LL);
    uint16_t l_4578 = 0xF9FEL;
    struct S0 *****l_4587 = &p_4589->g_1544;
    // attempting a hip shared for loop
    __shared__ struct S0 *****l_4588[4][4][3];
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 3; k++)
                l_4588[i][j][k] = &p_4589->g_1544;
        }
    }
    int i, j, k;
    for (int i = 0; i < 5; i++)
        l_20[i] = nullptr;
    for (int i = 0; i < 1; i++)
        l_3951[i] = 1L;
    if ((hip_const_8 , (((make_uchar3(255UL, (+0x1EL), 0x1DL) ^ make_uchar3(0xC7L, 0xCAL, ((safe_mul_func_int64_t_s_s(make_long3(hip_const_7[2].f0, 0xA16747B1D005767ALL, ((safe_mod_func_int8_t_s_s((-9L), ((safe_div_func_uint32_t_u_u(make_uint1(l_8.x).x, func_9((l_14 &= hip_const_14[2][2]), ((l_17 = hip_const_9.f2) == (make_ushort2(0xC54CL, (safe_div_func_uint16_t_u_u((l_20[1] != l_20[4]), hip_const_12[0][5][1]))).y < hip_const_7[2].f4)), hip_const_9, p_4589))) , p_4589->g_1744.z))) >= (-6L))).z, 0xBE87BEE4A3C2BAC1LL)) , 252UL)))).z >= l_8.x)))
    { /* block id: 1864 */
        int32_t *l_3948 = nullptr;
        int32_t *l_3949[3][1];
        int8_t l_3950 = 0x2EL;
        int8_t *l_3979 = &l_3950;
        int32_t l_3995[6];
        uint32_t l_4012[4][1] = {{0x84C6F43DL}, {0x84C6F43DL}, {0x84C6F43DL}, {0x84C6F43DL}};
        // attempting a hip shared for loop
        __shared__ int32_t *l_4018[8][2][3];
        for (int i = 0; i < 8; i++)
        {
            for (int j = 0; j < 2; j++)
            {
                for (int k = 0; k < 3; k++)
                    l_4018[i][j][k] = &p_4589->g_3962.f0;
            }
        }
        uint32_t l_4082 = 0x62A09AB6L;
        __shared__ int32_t *l_4083;
        l_4083 = nullptr;
        int32_t l_4127 = 0xC91139FFL;
        int64_t l_4155[6] = {0x584C6198420BB520LL, 0x85E4CBE1DF055086LL, 0x584C6198420BB520LL, 0x85E4CBE1DF055086LL, 0x584C6198420BB520LL, 0x85E4CBE1DF055086LL};
        int16_t **l_4167[6][1];
        int16_t ***l_4166 = &l_4167[4][0];
        uint32_t l_4178 = 0xDC9BE755L;
        int32_t *l_4183 = nullptr;
        ushort3 l_4234 = make_ushort3(0x3D8FL, 0x1240L, 0x3D8FL);
        uint64_t l_4236 = 0x1DBD17083C948940LL;
        __shared__ uint32_t l_4278;
        l_4278 = 0UL;
        uint16_t ***l_4314 = &p_4589->g_3240;
        uint16_t ****l_4313[7] = {&l_4314, &l_4314, &l_4314, &l_4314, &l_4314, &l_4314, &l_4314};
        struct S1 l_4325[9] = {{0L,-852,4094,1,-28,8UL,9UL}, {0L,-1468,15023,0,-41,1UL,0xF7ABFC44L}, {0L,-852,4094,1,-28,8UL,9UL}, {0L,-1468,15023,0,-41,1UL,0xF7ABFC44L}, {0L,-852,4094,1,-28,8UL,9UL}, {0L,-1468,15023,0,-41,1UL,0xF7ABFC44L}, {0L,-852,4094,1,-28,8UL,9UL}, {0L,-1468,15023,0,-41,1UL,0xF7ABFC44L}, {0L,-852,4094,1,-28,8UL,9UL}};
        int32_t l_4329 = 0x8CE9F962L;
        struct S0 l_4337 = {0x4A7E88D7L,0xA7AA6D9E4EFA5592LL,4294967293UL,22,6L,-2L,0x3BA4A8CCL,18446744073709551609UL,0xBDD960E6L};
        int32_t *l_4345 = nullptr;
        uint8_t l_4361 = 0x2BL;
        long4 l_4391 = make_long4(0x1913BB72C0BF1DB9LL, 0x3CBD8CDE1EE427C2LL, 0x1913BB72C0BF1DB9LL, 0x3CBD8CDE1EE427C2LL);
        uint64_t l_4393 = 0UL;
        __shared__ uint8_t ****l_4394;
        l_4394 = &p_4589->g_1370;
        uint32_t l_4397 = 1UL;
        int32_t l_4416[6][2] = {{9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}};
        int64_t *l_4433 = &p_4589->g_2454;
        int64_t l_4483 = 0x175196D114D252B1LL;
        int16_t l_4523 = (-4L);
        uint32_t l_4556 = 0x494AE63FL;
        uint64_t l_4562[9][7][4] = {{{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}, {{18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}, {18446744073709551615UL, 0xAF67482672F849EELL, 18446744073709551611UL, 18446744073709551606UL}}};
        int i, j, k;
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 1; j++)
                l_3949[i][j] = &p_4589->g_1574;
        }
        for (int i = 0; i < 6; i++)
            l_3995[i] = (-1L);
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 1; j++)
                l_4167[i][j] = nullptr;
        }
lbl_3975:
        l_3952++;
        if (l_8.x)
        { /* block id: 1866 */
            __shared__ uint64_t *l_3956;
            l_3956 = &p_4589->g_1052.f1;
            struct S0 l_3961 = {0x799A52D7L,1UL,0x16CCB9EBL,52,0x84F019E0L,0xEA2B2A99L,0x9F0A45ADL,0x5FDA3885L,0x3913C3F7L};
            int8_t l_3972 = 0x99L;
            __shared__ uint64_t ***l_3978;
            l_3978 = &p_4589->g_1483;
            struct S1 ****l_3986 = &p_4589->g_1754;
            __shared__ int32_t *l_3991;
            l_3991 = &p_4589->g_1242;
            uint32_t l_4002 = 18446744073709551612UL;
            int32_t l_4025 = 0L;
            int64_t l_4030 = 1L;
            uint16_t **l_4056 = &p_4589->g_3241;
            __shared__ uint32_t ***l_4124;
            l_4124 = &p_4589->g_3693;
            struct S1 *l_4157 = &hip_const_5;
            if ((make_ulong3(((l_3955 != ((*p_4589->g_1544) = (*p_4589->g_1544))) | ((*l_3956) ^= make_ulong3(18446744073709551608UL, 0UL, 0UL).x)), (safe_div_func_int16_t_s_s((safe_sub_func_int64_t_s_s(make_long4(((((**p_4589->g_3240) = ((l_3961 , p_4589->g_3962) , l_3961.f7)) , (safe_div_func_uint64_t_u_u(((*l_3956) = ((l_3961.f4 = ((safe_rshift_func_uint16_t_u_s(((*p_4589->g_3241) < make_ushort1(p_4589->g_3967.x).x), make_short1((-6L)).x)) | (+(safe_mod_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(l_3972, l_3961.f1)), (**p_4589->g_448)))))) | l_3961.f2)), l_8.x))) || 0x3CC7L), (-1L), 1L, (**p_4589->g_448)).w, 0x1F5ADE6958E2F14ALL)), (-10L))), l_3973).x & (*p_4589->g_449)))
            { /* block id: 1872 */
                __shared__ int64_t l_3987;
                l_3987 = 0x48B80DEC54AC4380LL;
                int32_t l_4028[3][10][1];
                __shared__ uint32_t l_4032;
                l_4032 = 18446744073709551613UL;
                uint64_t ***l_4039 = nullptr;
                int64_t ***l_4071 = &p_4589->g_448;
                long2 l_4113 = make_long2((-8L), (-1L));
                uint32_t ***l_4123 = &p_4589->g_3693;
                __shared__ int32_t *l_4133;
                l_4133 = nullptr;
                uint64_t l_4159 = 0x25FCBFC88014A075LL;
                int i, j, k;
                for (int i = 0; i < 3; i++)
                {
                    for (int j = 0; j < 10; j++)
                    {
                        for (int k = 0; k < 1; k++)
                            l_4028[i][j][k] = 0x306833A3L;
                    }
                }
lbl_3974:
                p_4589->g_1052 = l_3961;
                for (p_4589->g_1052.f8 = 0; (p_4589->g_1052.f8 <= 0); p_4589->g_1052.f8 += 1)
                { /* block id: 1876 */
                    int i;
                    if (p_4589->g_3962.f0)
                        goto lbl_3974;
                    if (p_4589->g_3162[p_4589->g_1052.f8])
                        break;
                    for (p_4589->g_1242 = 0; (p_4589->g_1242 >= 0); p_4589->g_1242 -= 1)
                    { /* block id: 1881 */
                        if (p_4589->g_3962.f3)
                            goto lbl_3975;
                    }
                }
                if (l_17)
                { /* block id: 1885 */
                    uint32_t l_3980 = 18446744073709551615UL;
                    if (((safe_add(make_int1(0x8B57FCC8L), make_int1((-4L))))).x)
                    { /* block id: 1886 */
                        int8_t l_3981[8][9] = {{0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}, {0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}, {0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}, {0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}, {0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}, {0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}, {0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}, {0x19L, 0L, 0xB8L, (-1L), (-1L), 1L, (-1L), (-1L), 0xB8L}};
                        int i, j;
                        l_3980 &= ((l_3978 != nullptr) , (nullptr != l_3979));
                        return l_3981[3][1];
                    }
                    else
                    { /* block id: 1889 */
                        return l_8.x;
                    }
                }
                else
                { /* block id: 1892 */
                    uint32_t l_4003 = 4294967288UL;
                    uint16_t *l_4004 = &p_4589->g_873;
                    struct S1 *l_4011[3][2][8] = {{{&hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3]}, {&hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3]}}, {{&hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3]}, {&hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3]}}, {{&hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3]}, {&hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3], &hip_const_9, &p_4589->g_685[2][3]}}};
                    __shared__ int32_t l_4026;
                    l_4026 = (-10L);
                    int32_t l_4027[4] = {1L, (-5L), 1L, (-5L)};
                    __shared__ uint64_t ***l_4035;
                    l_4035 = &p_4589->g_1483;
                    int64_t *l_4040 = nullptr;
                    int i, j, k;
                    l_3961.f5 ^= (safe_lshift_func_int32_t_s_u((safe_mul_func_uint64_t_u_u((nullptr == l_3986), (make_ulong2(0x4C5E7F4C6606CE10LL, 0xFDCE8E35D5DE9769LL).x != (*p_4589->g_449)))), l_3987));
                    for (p_4589->g_327 = 0; (p_4589->g_327 == 13); ++p_4589->g_327)
                    { /* block id: 1896 */
                        uint64_t l_3990 = 0x5F4F0686C636F152LL;
                        __shared__ int32_t *l_3992;
                        l_3992 = nullptr;
                        l_3990 |= 0L;
                        l_3992 = l_3991;
                    }
                    if ((safe_lshift_func_uint16_t_u_u(((((l_3995[0] , (&p_4589->g_1922 != &p_4589->g_1922)) < (**p_4589->g_3240)) | (safe_lshift_func_int64_t_s_u((safe_div_func_int16_t_s_s((0xC1C672FFL ^ (l_3951[0] > ((*l_3991) , ((((*l_4004) = (safe_div_func_uint64_t_u_u(l_4002, l_4003))) >= (**p_4589->g_3240)) < (*l_3991))))), 0x3F52L)), (*l_3991)))) ^ l_3987), 10)))
                    { /* block id: 1901 */
                        __shared__ struct S1 *l_4010;
                        l_4010 = &p_4589->g_685[2][3];
                        int32_t l_4020 = (-10L);
                        uint32_t *l_4024 = nullptr;
                        l_3951[0] |= (((*l_3991) , ((make_uchar2(p_4589->g_4005.x, p_4589->g_4005.x) ^ ((safe_div(make_uchar2(255UL, 2UL), make_uchar2((0xE76B826381547EA9LL && (((*p_4589->g_851) , (safe_sub_func_int16_t_s_s((l_4010 == l_4011[1][1][6]), (**p_4589->g_3240)))) , 0x13B255DEB71CF955LL)), (l_8.x & 0x70L))))))).y) || l_4012[2][0]);
                        l_4025 |= ((*l_3991) = ((safe_lshift_func_uint8_t_u_s(make_uchar1((l_3951[0] , ((safe_unary_minus_func_int16_t_s(0x23B7L)) , ((((safe_mod_func_uint16_t_u_u((((l_4018[3][1][0] != (p_4589->g_4019 = &p_4589->g_3764[1][0])) >= (l_4020 ^ (((safe_unary_minus_func_int64_t_s((((0x42BF0BEEFDD49532LL != ((l_3951[0] = ((l_3987 >= (safe_rshift_func_int32_t_s_s((-4L), (p_4589->g_210.x > p_4589->g_685[2][3].f5)))) ^ (*l_3991))) && 4294967295UL)) >= l_4020) >= l_4020))) < p_4589->g_837) ^ l_4020))) < 0xDD673D86L), 0x211FL)) <= l_3973) || l_3987) > 1UL)))).x, p_4589->g_745.y)) , l_4020));
                    }
                    else
                    { /* block id: 1907 */
                        __shared__ int64_t l_4029;
                        l_4029 = 0L;
                        __shared__ int32_t l_4031;
                        l_4031 = 0xDD602187L;
                        uint64_t ****l_4036 = nullptr;
                        uint64_t ****l_4037[7][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                        uint4 l_4038 = make_uint4(0x3C48E0F5L, 6UL, 0x3C48E0F5L, 6UL);
                        struct S0 l_4051 = {0xB6D924C7L,9UL,1UL,-6,-8L,0xCA2A0A46L,-1L,0UL,0x53628A56L};
                        uint32_t *l_4053 = &l_4012[2][0];
                        int32_t *l_4055 = nullptr;
                        uint16_t ***l_4057 = &l_4056;
                        int i, j;
                        l_4032--;
                        l_4055 = &l_3951[0];
                        (*l_4057) = l_4056;
                    }
                    (*l_3991) = p_4589->g_4058;
                }
                for (p_4589->g_400.f8 = 0; (p_4589->g_400.f8 <= 2); p_4589->g_400.f8 += 1)
                { /* block id: 1922 */
                    uint2 l_4069 = make_uint2(0xCD578F47L, 0x65B5BBD7L);
                    struct S0 ****l_4081 = &p_4589->g_1545;
                    int32_t l_4158 = 0xBF46F0BEL;
                    int i;
                    for (p_4589->g_400.f4 = 0; (p_4589->g_400.f4 <= 2); p_4589->g_400.f4 += 1)
                    { /* block id: 1925 */
                        __shared__ int32_t *l_4059;
                        l_4059 = &p_4589->g_3667;
                        uint16_t l_4068[10] = {0xDA36L, 65529UL, 0xDA36L, 65529UL, 0xDA36L, 65529UL, 0xDA36L, 65529UL, 0xDA36L, 65529UL};
                        struct S0 l_4080[8][1] = {{{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}, {{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}, {{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}, {{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}, {{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}, {{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}, {{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}, {{1UL,1UL,0x451F87E0L,85,4L,0xC3E1D19DL,1L,0UL,0x607F1586L}}};
                        int i, j;
                        (**p_4589->g_2985) = l_4059;
                        (**p_4589->g_222) = ((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((safe_div_func_int16_t_s_s(make_short1((-5L)).x, ((safe_sub_func_uint8_t_u_u(((*p_4589->g_425) , l_4068[7]), 1UL)) || ((make_uint2(l_4069.x, l_4069.x) ^ make_uint2(p_4589->g_4070.x, p_4589->g_4070.x))).y))), ((l_4071 == (*p_4589->g_2571)) && l_4028[0][8][0]))), (((*l_3956) = ((safe_rshift_func_uint32_t_u_s(((safe_add_func_uint32_t_u_u(((safe_mod_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u(((&p_4589->g_1545 != (l_4080[3][0] , l_4081)) == (*p_4589->g_3241)), 2)) > (*l_3991)), 255UL)) & (-8L)), l_3951[0])) & 4L), (**p_4589->g_222))) , l_4082)) >= l_4032))) , l_3952);
                        return l_4069.y;
                    }
                    l_4083 = nullptr;
                    if (make_int1(0xD0FF338BL).x)
                    { /* block id: 1932 */
                        uint8_t ****l_4085 = &p_4589->g_1370;
                        uint8_t *****l_4084 = &l_4085;
                        (*l_4084) = &p_4589->g_1370;
                    }
                    else
                    { /* block id: 1934 */
                        int32_t l_4114 = 1L;
                        int32_t l_4115[2];
                        struct S0 *l_4121 = &p_4589->g_400;
                        uint32_t ***l_4122 = nullptr;
                        uint8_t ***l_4129[7][2] = {{&p_4589->g_1371, &p_4589->g_1371}, {&p_4589->g_1371, &p_4589->g_1371}, {&p_4589->g_1371, &p_4589->g_1371}, {&p_4589->g_1371, &p_4589->g_1371}, {&p_4589->g_1371, &p_4589->g_1371}, {&p_4589->g_1371, &p_4589->g_1371}, {&p_4589->g_1371, &p_4589->g_1371}};
                        int i, j;
                        for (int i = 0; i < 2; i++)
                            l_4115[i] = 0x4E1052C5L;
                        (*l_3991) = l_8.x;
                        l_3961.f3 = (l_3951[0] , (safe_mod_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(((safe_mod_func_int32_t_s_s((safe_mod_func_uint8_t_u_u(((safe_rshift_func_int32_t_s_u(((4L || ((&p_4589->g_3764[1][0] != l_4018[3][0][2]) == (safe_sub_func_uint16_t_u_u(((safe_mul_func_uint32_t_u_u(((((safe_lshift_func_int32_t_s_u((((*l_3956)--) | (safe_sub_func_int16_t_s_s((((safe_add_func_int64_t_s_s((l_4114 = ((*l_3991) = (safe_mul_func_uint16_t_u_u((make_long4(p_4589->g_4110.y, p_4589->g_4110.y, p_4589->g_4110.y, p_4589->g_4110.y).w && (safe_mul_func_int64_t_s_s((&p_4589->g_877 == nullptr), make_long2(l_4113.x, l_4113.x).x))), ((nullptr != &l_17) != 0x8F1AL))))), l_4113.y)) ^ l_4028[2][2][0]) ^ l_4028[2][5][0]), l_4115[1]))), l_8.x)) == p_4589->g_715.z) < l_3987) != 0L), l_8.x)) != l_4028[0][3][0]), l_4069.x)))) < l_4116), 23)) != (-8L)), p_4589->g_1159.y)), l_3987)) , 0x328CC39DL), (-4L))) , l_4113.x), 0x63L)));
                        l_4115[0] |= (safe_mul_func_uint16_t_u_u(((((safe_lshift_func_int64_t_s_s((0xC0EB27F8701188EALL > (*p_4589->g_449)), 42)) , (nullptr != l_4121)) , l_4122) != (l_4124 = l_4123)), ((safe_rshift_func_uint64_t_u_u(l_4127, 46)) <= ((*l_3991) = (safe_unary_minus_func_int8_t_s((nullptr == l_4129[4][1])))))));
                        (*l_3991) = make_int1(p_4589->g_4130.x).x;
                    }
                    for (p_4589->g_327 = 0; (p_4589->g_327 <= 1); p_4589->g_327 += 1)
                    { /* block id: 1947 */
                        int32_t *l_4131 = &p_4589->g_2382;
                        int32_t **l_4132[10][10] = {{&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}, {&l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0], &l_4131, &l_3949[2][0]}};
                        __shared__ struct S1 *l_4156;
                        l_4156 = &hip_const_9;
                        int i, j;
                        l_4083 = l_4131;
                        l_4133 = ((*p_4589->g_222) = &l_3995[0]);
                        l_4157 = ((safe_rshift_func_int32_t_s_s((((safe_add(((safe_add(((safe_add(make_int3(p_4589->g_4142.x, p_4589->g_4142.x, p_4589->g_4142.x), make_int3(((safe_mod_func_int32_t_s_s(((make_uint1(0x7B9B2B85L).x , (p_4589->g_4145 < ((*l_3991) | (((safe_add_func_int8_t_s_s(((safe_div(make_char4((-1L), 5L, 0L, (((safe_div_func_int8_t_s_s((safe_div_func_int32_t_s_s(make_int2(0xEC8AC73AL, l_4069.y).y, l_3952)), 251UL)) ^ (nullptr != &p_4589->g_447[0][6][0])) < 0x7439F36826C00A90LL)), make_char4(p_4589->g_907.x, p_4589->g_3039.y, 0L, (-1L))))).x, (*l_3991))) || l_17) , (-8L))))) <= (*l_4131)), l_4154)) < 4294967289UL), 0xA353D7E1L, 0xC025ADBEL)))), make_int3(1L, 1L, 1L)))), make_int3(0xBAA02CF0L, 0xBAA02CF0L, 0xBAA02CF0L)))).y > l_4155[4]), 28)) , l_4156);
                        if ((*l_4133))
                            break;
                    }
                    for (l_3961.f2 = 0; (l_3961.f2 <= 2); l_3961.f2 += 1)
                    { /* block id: 1956 */
                        uint8_t *****l_4163 = &l_4162;
                        int32_t l_4164 = 0x5BF93E69L;
                        --l_4159;
                        (*l_4163) = l_4162;
                        l_3951[0] |= (!(0x12339AADL | make_int2((-2L), 0x9D234319L).x));
                        if (l_4164)
                            break;
                    }
                }
            }
            else
            { /* block id: 1963 */
                l_4165[5] = (*l_4157);
            }
        }
        else
        { /* block id: 1966 */
            int32_t l_4173 = 0x70605509L;
            // attempting a hip shared for loop
            __shared__ uint64_t l_4184[6][9];
            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 9; j++)
                    l_4184[i][j] = 0xBE9AC138B768BF19LL;
            }
            uint32_t *l_4233 = nullptr;
            int32_t l_4235 = 0x20691E32L;
            char2 l_4301 = make_char2(0x6EL, (-1L));
            char4 l_4302 = make_char4((-3L), 5L, (-3L), 5L);
            uchar2 l_4305 = make_uchar2(246UL, 0x07L);
            int32_t *****l_4316 = nullptr;
            ushort4 l_4322 = make_ushort4(8UL, 0xCFFDL, 8UL, 0xCFFDL);
            int32_t ***l_4372 = &p_4589->g_222;
            char4 l_4387 = make_char4(0xD4L, 0xD1L, 0xD4L, 0xD1L);
            uint64_t l_4452 = 8UL;
            uchar3 l_4478 = make_uchar3(0UL, 0x7BL, 0UL);
            uint32_t l_4485 = 0x2F9FB45BL;
            struct S1 l_4486 = {-4L,-1799,-7252,0,2,0xB55FE692L,0UL};
            int32_t l_4495 = 1L;
            __shared__ uint32_t l_4518;
            l_4518 = 0xC0B80722L;
            int16_t l_4547 = 0xD562L;
            struct S0 l_4551 = {1UL,0xF77BD324CD905F98LL,1UL,-50,-10L,0x1C9646ABL,0xFA49983FL,18446744073709551615UL,0x9DBB3B7CL};
            long4 l_4564 = make_long4((-10L), 0x3E8638DCB38BF02DLL, (-10L), 0x3E8638DCB38BF02DLL);
            uint16_t l_4579 = 9UL;
            int i, j;
            p_4589->g_4168[2] = l_4166;
        }
    }
    else
    { /* block id: 2093 */
        __shared__ struct S0 l_4581;
        l_4581 = {0x5A456930L,0x83E2E9BB931B0DFBLL,1UL,51,0xFFA4CDD5L,0x64DF9D16L,0x81483B71L,0xAA71C73EL,0x9750D2B4L};
        struct S0 *l_4582 = &p_4589->g_400;
        __shared__ int32_t *l_4583;
        l_4583 = &p_4589->g_1052.f5;
        struct S1 l_4584 = {0xC549D73AL,-475,-715,0,-13,0UL,18446744073709551607UL};
        struct S1 *l_4585 = nullptr;
        struct S1 *l_4586[10] = {&l_4584, &l_4584, &hip_const_9, &l_4584, &l_4584, &hip_const_9, &l_4584, &l_4584, &hip_const_9, &l_4584};
        int i;
        (*l_4582) = l_4581;
        p_4589->g_685[3][2] = l_4584;
    }
    l_4588[2][3][0] = l_4587;
    return l_8.x;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_7 p_4589->g_222 p_4589->g_671 p_4589->g_1112 p_4589->g_877 p_4589->g_811 p_4589->g_1159 p_4589->g_605 p_4589->g_361 p_4589->g_1246 hip_const_13 p_4589->g_400.f3 p_4589->g_837 p_4589->g_1370 p_4589->g_449 hip_const_10 p_4589->g_448 p_4589->g_1334 hip_const_1 p_4589->g_797 p_4589->g_907 p_4589->g_271 p_4589->g_757 p_4589->g_223 p_4589->g_400.f7 p_4589->g_1517 p_4589->g_1544 p_4589->g_1052.f5 p_4589->g_1052.f7 p_4589->g_1322 p_4589->g_536 p_4589->g_1052.f1 p_4589->g_1580 p_4589->g_1172 p_4589->g_154 p_4589->g_1574 p_4589->g_1149 hip_const_5.f1 p_4589->g_685 p_4589->g_1507 p_4589->g_706 p_4589->g_400.f4 hip_const_9.f6 p_4589->g_1052.f4 p_4589->g_537 p_4589->g_2359 p_4589->g_2360 p_4589->g_400.f1 hip_const_5.f2 hip_const_9.f3 p_4589->g_1989 p_4589->g_1468 p_4589->g_1052.f2 p_4589->g_2454 p_4589->g_376 p_4589->g_851 hip_const_2 p_4589->g_1101 p_4589->g_2304 p_4589->g_1052.f3 p_4589->g_1052 p_4589->g_1859 p_4589->g_1220 p_4589->g_1718 hip_const_9.f1 p_4589->g_2079 p_4589->g_928 p_4589->g_520 p_4589->g_1920 p_4589->g_2913 p_4589->g_2382 p_4589->g_1983 p_4589->g_2406 p_4589->g_2984 p_4589->g_2985 p_4589->g_1026 p_4589->g_3102 p_4589->g_3919 p_4589->g_3162 p_4589->g_3240 p_4589->g_3241 p_4589->g_3196 p_4589->g_1545 p_4589->g_424 p_4589->g_425 p_4589->g_3947
 * writes: p_4589->g_1052.f2 p_4589->g_400.f7 p_4589->g_223 p_4589->g_400.f4 p_4589->g_145 p_4589->g_605 p_4589->g_671 p_4589->g_1112 p_4589->g_400.f5 p_4589->g_873 p_4589->g_1052.f5 p_4589->g_685 p_4589->g_361 p_4589->g_400.f2 p_4589->g_1052.f4 p_4589->g_327 p_4589->g_400.f3 p_4589->g_400.f0 p_4589->g_1037 p_4589->g_1052.f1 p_4589->g_1052.f0 p_4589->g_757 p_4589->g_115 p_4589->g_400.f8 p_4589->g_1483 p_4589->g_1509 p_4589->g_1335 p_4589->g_1544 p_4589->g_1246 p_4589->g_154 p_4589->g_1334 p_4589->g_400.f1 p_4589->g_1052 p_4589->g_837 p_4589->g_210 p_4589->g_1149 p_4589->g_1242 p_4589->g_811 p_4589->g_928 p_4589->g_2360 p_4589->g_1922 p_4589->g_1333 p_4589->g_1718 p_4589->g_1920 p_4589->g_1574 p_4589->g_400.f6 p_4589->g_2454 p_4589->g_797 p_4589->g_3102 p_4589->g_2420 p_4589->g_400 p_4589->g_2382 p_4589->g_3912 p_4589->g_3932
 */
__device__ int32_t  func_9(uint32_t  p_10, uint32_t  p_11, struct S1  p_12, struct S2 * p_4589)
{ /* block id: 3 */
    long1 l_26 = make_long1(0xDE3FE27FCE2E6445LL);
    int64_t *l_27 = &hip_const_10[0][1][6];
    int64_t l_2936 = 0x9EADE45FBC7676B6LL;
    int64_t l_2937 = 0x7D8913605A0B2A57LL;
    __shared__ uchar4 l_2991;
    l_2991 = make_uchar4(0x1AL, 0x8AL, 0x1AL, 0x8AL);
    uchar4 l_2994 = make_uchar4(251UL, 1UL, 251UL, 1UL);
    int32_t *l_2998[3][5] = {{nullptr, nullptr, &hip_const_7[2].f4, &p_4589->g_671, &p_4589->g_671}, {nullptr, nullptr, &hip_const_7[2].f4, &p_4589->g_671, &p_4589->g_671}, {nullptr, nullptr, &hip_const_7[2].f4, &p_4589->g_671, &p_4589->g_671}};
    uint16_t l_3036 = 1UL;
    char2 l_3077 = make_char2(0L, 0x7FL);
    int32_t ****l_3088[7] = {nullptr, &p_4589->g_2985, nullptr, &p_4589->g_2985, nullptr, &p_4589->g_2985, nullptr};
    int32_t *l_3089 = &p_4589->g_1052.f6;
    ushort3 l_3109 = make_ushort3(1UL, 0x6152L, 1UL);
    int16_t **l_3112[10][2] = {{nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}, {nullptr, &p_4589->g_326}};
    int16_t ***l_3111 = &l_3112[7][0];
    __shared__ int16_t ****l_3110;
    l_3110 = &l_3111;
    int32_t *l_3125 = &hip_const_13;
    __shared__ int1 l_3137;
    l_3137 = make_int1(0x3F740867L);
    uint16_t *l_3157 = &hip_const_14[2][4];
    uint16_t **l_3156 = &l_3157;
    int64_t l_3167 = 0x2E7F7A6C36F7E945LL;
    struct S0 ****l_3171 = &p_4589->g_1545;
    struct S1 l_3204 = {2L,720,-6743,1,-15,0x20127E57L,18446744073709551614UL};
    uint32_t l_3217 = 18446744073709551611UL;
    __shared__ ushort3 l_3220;
    l_3220 = make_ushort3(5UL, 65531UL, 5UL);
    uchar2 l_3250 = make_uchar2(0UL, 1UL);
    struct S0 l_3267 = {3UL,0xAF5F022C297BD82CLL,0UL,-22,0x00657B17L,0xB8553A23L,0xCF359965L,18446744073709551608UL,0xF14233DAL};
    int3 l_3279 = make_int3(3L, 0xCB771EAEL, 3L);
    ulong3 l_3292 = make_ulong3(0UL, 0UL, 0UL);
    char4 l_3346 = make_char4(1L, 0x1BL, 1L, 0x1BL);
    long4 l_3360 = make_long4(6L, 6L, 6L, 6L);
    uchar2 l_3367 = make_uchar2(255UL, 250UL);
    short1 l_3398 = make_short1((-1L));
    long4 l_3470 = make_long4(0x90ED8C1933B76524LL, 0x1BF10860C8AE4DCBLL, 0x90ED8C1933B76524LL, 0x1BF10860C8AE4DCBLL);
    int16_t l_3484 = 0xF4C0L;
    uint3 l_3503 = make_uint3(4294967295UL, 0x689A91ECL, 4294967295UL);
    uint32_t l_3513 = 4294967287UL;
    short4 l_3544 = make_short4(7L, (-1L), 7L, (-1L));
    __shared__ uint64_t ****l_3569;
    l_3569 = &p_4589->g_2361;
    uint16_t ***l_3574 = &p_4589->g_3240;
    // attempting a hip shared for loop
    __shared__ uint16_t ****l_3573[1];
    for (int i = 0; i < 1; i++)
        l_3573[i] = &l_3574;
    int3 l_3661 = make_int3(1L, (-3L), 1L);
    __shared__ int64_t l_3672;
    l_3672 = 0x5FF29E76B6A6C3DBLL;
    int32_t l_3700 = 0L;
    uint32_t l_3702 = 0x678ABB4DL;
    __shared__ int8_t l_3705;
    l_3705 = 1L;
    // attempting a hip shared for loop
    __shared__ uint16_t l_3717[1];
    for (int i = 0; i < 1; i++)
        l_3717[i] = 65535UL;
    long1 l_3762 = make_long1(0x10B11FA73E7556B8LL);
    __shared__ int32_t *l_3773;
    l_3773 = &p_4589->g_2382;
    uint8_t **l_3811 = &p_4589->g_1372[3];
    int8_t l_3830 = 0x65L;
    ulong2 l_3848 = make_ulong2(0x15437C276635DA90LL, 18446744073709551608UL);
    uint8_t *l_3853 = &hip_const_12[4][5][2];
    uint32_t **l_3857 = nullptr;
    ushort4 l_3876 = make_ushort4(1UL, 0xC5B5L, 1UL, 0xC5B5L);
    __shared__ uint64_t l_3878;
    l_3878 = 18446744073709551614UL;
    uint32_t *l_3908 = nullptr;
    uint32_t *l_3909[8] = {&p_4589->g_1052.f0, &p_4589->g_1052.f0, &p_4589->g_3675[1], &p_4589->g_1052.f0, &p_4589->g_1052.f0, &p_4589->g_3675[1], &p_4589->g_1052.f0, &p_4589->g_1052.f0};
    uint32_t **l_3917 = &p_4589->g_3694;
    int2 l_3918 = make_int2(0x94848776L, (-1L));
    char1 l_3924 = make_char1((-1L));
    struct S1 *l_3931 = &p_4589->g_685[3][0];
    short4 l_3936 = make_short4((-1L), 1L, (-1L), 1L);
    int8_t l_3939 = 0xCDL;
    struct S0 l_3943 = {0x8CC0D43DL,0x80DC614B35775E56LL,0xE155EDE3L,-80,0L,0x65B7B1EDL,-1L,0xDAE2280DL,0xD1963ED3L};
    int i, j;
    for (int i = 0; i < 1; i++)
        l_3573[i] = &l_3574;
    for (int i = 0; i < 1; i++)
        l_3717[i] = 65535UL;
    if (p_12.f6)
    { /* block id: 4 */
        uint8_t l_2914 = 255UL;
        int32_t l_2916 = 0x4A12E86AL;
        long4 l_2977 = make_long4(0xFBAD367ED67C336DLL, 0x019987D96B788033LL, 0xFBAD367ED67C336DLL, 0x019987D96B788033LL);
        struct S0 *****l_2999 = &p_4589->g_1544;
        uint32_t l_3053 = 1UL;
        uchar2 l_3055 = make_uchar2(0x3DL, 0x8DL);
        __shared__ int32_t l_3095;
        l_3095 = (-5L);
        __shared__ int32_t l_3099;
        l_3099 = (-1L);
        uint32_t l_3146 = 18446744073709551615UL;
        uint16_t **l_3158 = nullptr;
        int32_t l_3161 = (-9L);
        // attempting a hip shared for loop
        __shared__ int32_t l_3163[10];
        for (int i = 0; i < 10; i++)
            l_3163[i] = 0L;
        int i;
        for (int i = 0; i < 10; i++)
            l_3163[i] = 0L;
        if ((func_21(p_12.f5, &hip_const_4, l_26.x, l_27, p_4589) && (safe_mod_func_uint64_t_u_u(l_26.x, (make_ushort2(p_4589->g_2913.x, p_4589->g_2913.x).y ^ (l_2914 ^ (make_char2(l_26.x, (-6L)).y , (18446744073709551615UL != 0x9D0AF857E13CFB99LL))))))))
        { /* block id: 1331 */
            int32_t l_2915 = (-4L);
            int32_t *l_2917 = &p_4589->g_1052.f5;
            int32_t *l_2940 = &p_4589->g_2382;
            uint32_t l_2958 = 1UL;
            char3 l_2963 = make_char3(0x3DL, 0xEAL, 0x3DL);
            char1 l_2964 = make_char1(0x4FL);
            __shared__ int8_t *l_2969;
            l_2969 = nullptr;
            int8_t *l_2970 = nullptr;
            int8_t *l_2971 = nullptr;
            int8_t *l_2972 = &p_4589->g_1922;
            int i;
            l_2916 &= (0x62E2E5EEL & l_2915);
            (*p_4589->g_222) = l_2917;
            for (p_4589->g_400.f4 = 10; (p_4589->g_400.f4 > 1); p_4589->g_400.f4--)
            { /* block id: 1336 */
                // attempting a hip shared for loop
                __shared__ int64_t l_2921[4];
                for (int i = 0; i < 4; i++)
                    l_2921[i] = (-1L);
                uint8_t *l_2923 = &hip_const_12[0][5][1];
                uint8_t *l_2924 = &hip_const_11;
                uint8_t *l_2925 = &p_4589->g_1149;
                int32_t **l_2933 = &l_2917;
                uint8_t l_2947 = 1UL;
                int i;
            }
            (*p_4589->g_223) = (((safe_div_func_uint16_t_u_u(((((safe_rshift_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s(p_11, (safe_sub_func_int16_t_s_s(l_2958, 1UL)))) <= 1L), (safe_mod_func_int8_t_s_s(p_12.f3, ((safe_sub_func_int16_t_s_s((((-6L) || ((make_char4(((make_char3(l_2963.x, l_2963.x, l_2963.x) ^ make_char3(l_2964.x, l_2964.x, l_2964.x))).y, 0x12L, (safe_rshift_func_int16_t_s_u(((safe_lshift_func_int8_t_s_s(((*l_2972) = (*l_2940)), ((0x23L < (safe_lshift_func_uint8_t_u_s((p_4589->g_1983.x && l_2936), 2))) || 0xD600L))) <= p_4589->g_2406.x), 6)), 0x4EL) ^ make_char4(0L, 0L, 0L, 0L))).x) && (*l_2940)), p_12.f0)) , p_4589->g_1220.x))))) , 6UL) , p_12.f1) < 2L), 0x6311L)) <= l_2916) <= (*l_2917));
        }
        else
        { /* block id: 1375 */
            uint32_t l_2978 = 6UL;
            int32_t *****l_2986 = &p_4589->g_2984;
            int32_t l_2997 = 0x45183A11L;
            uint16_t *l_3003[4] = {nullptr, nullptr, nullptr, nullptr};
            int64_t l_3015 = 4L;
            uint1 l_3035 = make_uint1(0xB4E39CF5L);
            __shared__ int32_t l_3060;
            l_3060 = 0xE7295776L;
            int32_t l_3094 = 1L;
            int32_t l_3096 = (-1L);
            int32_t l_3098 = 0x8DEB256CL;
            __shared__ int32_t l_3100;
            l_3100 = 0x5C875FF9L;
            int3 l_3101 = make_int3(0xB879B684L, 0x57AFC499L, 0xB879B684L);
            int16_t ****l_3114[7] = {&l_3111, &l_3111, &l_3111, &l_3111, &l_3111, &l_3111, &l_3111};
            ushort4 l_3149 = make_ushort4(65535UL, 0UL, 65535UL, 0UL);
            uint16_t l_3164 = 0UL;
            int i;
            for (p_4589->g_1052.f6 = 0; (p_4589->g_1052.f6 <= 3); p_4589->g_1052.f6 += 1)
            { /* block id: 1378 */
                int2 l_3002 = make_int2(0x9FF81995L, 0xE7FB7480L);
                __shared__ uint16_t *l_3004;
                l_3004 = nullptr;
                uint64_t *l_3007 = nullptr;
                uint64_t *l_3008 = nullptr;
                uint64_t *l_3009 = nullptr;
                // attempting a hip shared for loop
                __shared__ uint64_t *l_3010[4];
                for (int i = 0; i < 4; i++)
                    l_3010[i] = &hip_const_7[2].f1;
                struct S0 l_3011[1] = {{0x9DFB580EL,18446744073709551612UL,0UL,10,0xF7441111L,-10L,-4L,0x77EE18CFL,0x67BD2FE9L}};
                __shared__ int8_t l_3014;
                l_3014 = 0xEDL;
                __shared__ short2 l_3033;
                l_3033 = make_short2(1L, 0L);
                int32_t l_3034[3];
                __shared__ long1 l_3046;
                l_3046 = make_long1(0xE881313A365C8519LL);
                int16_t *l_3054 = nullptr;
                int4 l_3082 = make_int4(0x9556182BL, (-3L), 0x9556182BL, (-3L));
                int32_t ***l_3144 = &p_4589->g_222;
                int32_t ***l_3145 = &p_4589->g_222;
                uint8_t l_3155 = 0UL;
                int i;
                for (int i = 0; i < 3; i++)
                    l_3034[i] = 0x40E02297L;
                for (p_4589->g_1574 = 3; (p_4589->g_1574 >= 0); p_4589->g_1574 -= 1)
                { /* block id: 1381 */
                    int16_t l_3001 = 0x125DL;
                    l_2997 ^= (safe_add_func_int64_t_s_s(((make_long4(l_2977.y, l_2977.y, l_2977.y, l_2977.y) ^ make_long4(l_2978, 1L, (-1L), 1L))).x, (make_char3(p_4589->g_2979.x, p_4589->g_2979.x, p_4589->g_2979.x).x <= ((safe_lshift(make_uchar3((safe_unary_minus_func_uint16_t_u(0UL)), (l_2977.z < ((p_4589->g_2983[1][0][0] != (l_2986 = l_2986)) , p_12.f2)), 0xB2L), ((safe_mod(((safe_add(make_uchar3(247UL, 249UL, ((make_uchar1(l_2991.w) & ((safe_add(make_uchar1(l_2994.z), make_uchar1(0x5AL)))))).x), make_uchar3(0xE0L, 255UL, (safe_sub_func_uint16_t_u_u((4294967295UL != 0xB95826BFL), p_12.f1)))))), make_uchar3(0x9EL, 0x9EL, 0x9EL))))))).y)));
                    for (p_4589->g_873 = 0; (p_4589->g_873 <= 3); p_4589->g_873 += 1)
                    { /* block id: 1386 */
                        int32_t l_3000 = (-1L);
                        (****l_2986) = l_2998[1][0];
                        l_2999 = nullptr;
                        if (p_12.f4)
                            continue;
                        if (l_3000)
                            continue;
                    }
                    for (p_4589->g_400.f6 = 0; (p_4589->g_400.f6 <= 3); p_4589->g_400.f6 += 1)
                    { /* block id: 1394 */
                        return p_12.f3;
                    }
                    p_12.f4 &= 0x8B0D18D2L;
                    for (p_4589->g_145 = 0; (p_4589->g_145 <= 3); p_4589->g_145 += 1)
                    { /* block id: 1400 */
                        l_3001 ^= (1L > hip_const_2);
                    }
                }
                if (((((p_10 >= (0UL & make_int4(l_3002.x, l_3002.x, l_3002.x, l_3002.x).z)) || (l_3003[0] != ((make_int3((make_char3(0xF9L, 1L, 0L).z , l_3002.x), 0x2C7454E9L, 0xC18BDF02L).y & p_12.f5) , l_3004))) , (safe_sub_func_int64_t_s_s((((l_2997 = p_12.f2) , l_3011[0]) , (safe_rshift_func_int32_t_s_s(p_12.f0, l_3014))), l_3015))) != p_12.f3))
                { /* block id: 1405 */
                    __shared__ char3 l_3016;
                    l_3016 = make_char3(1L, 2L, 1L);
                    int64_t *l_3049 = &p_4589->g_2454;
                    int64_t *l_3050 = &hip_const_10[0][2][5];
                    int64_t *l_3051 = &l_2936;
                    int8_t l_3052 = 0xE1L;
                    int i;
                    l_2997 = (l_3036 = make_int4(0x04DA3D34L, ((~((((make_char4(l_3016.x, l_3016.x, l_3016.x, l_3016.x) ^ make_char4(p_4589->g_3017.y, p_4589->g_3017.y, p_4589->g_3017.y, p_4589->g_3017.y))) ^ ((make_char4(p_4589->g_3018.y, p_4589->g_3018.y, p_4589->g_3018.y, p_4589->g_3018.y) | ((make_char4((safe_sub_func_int16_t_s_s((l_3016.x , ((l_3011[0].f4 |= ((safe_lshift_func_uint8_t_u_s((safe_lshift_func_int64_t_s_s((l_3002.y ^= make_long3(((safe_sub_func_uint32_t_u_u(make_uint4(0xC7C226F7L, 0xECBEB63AL, 0UL, 0UL).z, ((p_11 || p_4589->g_971.x) || (safe_sub_func_int32_t_s_s(((p_12.f6 , (safe_rshift_func_uint64_t_u_u(0xACD44BB088C18BD1LL, (nullptr != &p_4589->g_2984)))) ^ make_char1(0L).x), (safe_sub_func_uint8_t_u_u((((make_short3(l_3033.y, l_3033.y, l_3033.y).z < 0x3CB1L) >= l_3034[2]) != l_3035.x), p_10))))))) <= 2UL), 0x0EDC799D2094DB76LL, p_12.f0).x), l_2916)), 4)) ^ p_10)) != p_12.f5)), p_12.f0)), 0L, p_12.f2, (-1L)) & make_char4(0x69L, 0x69L, 0x69L, 0x69L))))))).x) && l_3016.z), 0L, 0L).y);
                    l_2997 |= (safe_mul_func_uint64_t_u_u((((l_3011[0].f5 = ((make_uchar2(p_4589->g_3039.y, p_4589->g_3039.y).y || p_11) & (((1L != p_10) < (make_long2(((((l_2916 = make_int3((safe_mul_func_uint8_t_u_u(248UL, ((l_3011[0].f4 &= (safe_div_func_uint16_t_u_u(((l_3016.x < make_ulong3(18446744073709551613UL, 6UL, (((((((p_4589->g_2877.x | ((((p_12.f1 | (safe_mul_func_int64_t_s_s((!p_12.f2), ((((*l_3051) = ((make_long3(l_3046.x, l_3046.x, l_3046.x) ^ make_long3(0x57B2E983235585A8LL, 0xD5D927ADE3A068F1LL, ((*l_3049) = (safe_lshift_func_int8_t_s_u(p_12.f4, 5)))))).x) | (-1L)) != (-2L))))) & l_3052) == p_4589->g_1334.x) || 0x7F8CL)) & l_2977.x) != 0xD7C0021DL) | 1UL) ^ l_3014) , p_12.f1) , l_3016.y)).z) > p_12.f1), 65535UL))) , l_3053))), (-10L), 0x10B51362L).x) <= p_12.f1) , &p_4589->g_837) == l_3054), (**p_4589->g_448)).x == p_12.f0)) | p_12.f3))) < 0x97E74533L) <= p_12.f1), l_3016.y));
                    l_3060 ^= (((make_uchar3(l_3055.x, l_3055.x, l_3055.x) ^ make_uchar3(p_4589->g_3056.x, p_4589->g_3056.x, p_4589->g_3056.x))).z == ((safe_lshift(make_uchar2(p_4589->g_3059.x, p_4589->g_3059.x), make_uchar2(8, 8)))).y);
                }
                else
                { /* block id: 1417 */
                    int64_t l_3062 = 0L;
                    for (p_10 = 0; (p_10 <= 3); p_10 += 1)
                    { /* block id: 1420 */
                        uint16_t l_3061 = 0x48ADL;
                        char3 l_3075 = make_char3((-3L), 0x4BL, (-3L));
                        __shared__ int8_t *l_3078;
                        l_3078 = &p_4589->g_1922;
                        __shared__ int64_t *l_3079;
                        l_3079 = &hip_const_10[0][0][3];
                        int64_t *l_3080 = nullptr;
                        int64_t *l_3081[5] = {nullptr, &p_4589->g_1246, nullptr, &p_4589->g_1246, nullptr};
                        int i, j;
                        l_3062 = (l_3061 = (-7L));
                        p_12.f1 ^= (safe_lshift_func_int32_t_s_s(((p_4589->g_685[p_10][(p_10 + 1)] , (safe_mul_func_int64_t_s_s((l_2916 = ((255UL != ((*l_3078) = (5UL < (((((safe_sub(make_char2(p_4589->g_715.y, (safe_mul_func_uint32_t_u_u(4294967292UL, make_uint1(0x4B7EC57EL).x))), ((safe_lshift(((safe_lshift(make_char2(l_3075.y, l_3075.y), ((make_char2(p_4589->g_3076.y, p_4589->g_3076.y) ^ make_char2(l_3077.y, l_3077.y)))))), make_char2(l_3061, (p_12.f2 & 65535UL)))))))) | make_char2(1L, 1L))).x && p_12.f5)))) | p_4589->g_271.z)), 5UL))) <= p_12.f2), l_3034[2]));
                        p_4589->g_685[p_10][(p_10 + 1)].f4 ^= make_int3(l_3082.x, l_3082.x, l_3082.x).x;
                        if (p_12.f4)
                            break;
                    }
                    for (p_4589->g_1052.f8 = 0; (p_4589->g_1052.f8 <= 3); p_4589->g_1052.f8 += 1)
                    { /* block id: 1431 */
                        return l_3062;
                    }
                }
                for (p_4589->g_2454 = 0; (p_4589->g_2454 <= 3); p_4589->g_2454 += 1)
                { /* block id: 1437 */
                    int64_t l_3085 = (-10L);
                    // attempting a hip shared for loop
                    __shared__ struct S1 **l_3086[4];
                    for (int i = 0; i < 4; i++)
                        l_3086[i] = &p_4589->g_877;
                    int32_t ****l_3087 = &p_4589->g_2985;
                    uint16_t l_3090[10] = {0UL, 0xAFFFL, 0x04BBL, 0x04BBL, 0xAFFFL, 0UL, 0xAFFFL, 0x04BBL, 0x04BBL, 0xAFFFL};
                    // attempting a hip shared for loop
                    __shared__ uint8_t l_3091[2];
                    for (int i = 0; i < 2; i++)
                        l_3091[i] = 0x2BL;
                    int1 l_3097 = make_int1(0xE45DB0FFL);
                    uint16_t l_3118 = 0x52EBL;
                    struct S0 l_3119 = {0x98811FBAL,18446744073709551615UL,4294967295UL,-32,1L,0xD830BE99L,0xAA20CFB0L,1UL,1UL};
                    uint32_t l_3122 = 0xA97375CEL;
                    int i, j;
                    for (int i = 0; i < 4; i++)
                        l_3086[i] = &p_4589->g_877;
                    for (int i = 0; i < 2; i++)
                        l_3091[i] = 0x2BL;
                    l_2916 ^= ((safe_lshift_func_uint64_t_u_u((((make_int2((-1L), ((((!make_int4((-10L), 0xAAC7F836L, 0x7565472CL, 0x46322B40L).z) < l_3085) , l_3011[0].f0) == ((l_3014 , &p_4589->g_685[p_4589->g_1052.f6][(p_4589->g_1052.f6 + 2)]) != (p_4589->g_877 = nullptr)))).x == ((p_4589->g_797.y = ((((((l_3087 == l_3088[5]) != ((nullptr != l_3089) & 7UL)) < p_4589->g_1026.y) , l_3090[2]) <= 0x462EL) ^ l_3091[1])) > p_11)) != p_12.f1) < 4L), l_3014)) | 5L);
                    if (l_3002.x)
                    { /* block id: 1441 */
                        int64_t l_3092 = 0L;
                        __shared__ int1 l_3093;
                        l_3093 = make_int1(0xB2BC40EDL);
                        int16_t *****l_3113 = &p_4589->g_1517;
                        struct S0 *l_3120 = &hip_const_7[2];
                        struct S0 *l_3121 = &p_4589->g_400;
                        int i;
                        --p_4589->g_3102;
                        p_12.f2 = (((((safe_sub_func_uint8_t_u_u(0x97L, (p_10 >= (p_4589->g_2420.z = p_10)))) | ((+((((((safe_sub(make_ushort2(l_3109.y, l_3109.y), make_ushort2(0x0A08L, 1UL)))) & make_ushort2(0xFE49L, ((((*l_3113) = l_3110) != l_3114[1]) <= ((((safe_lshift(((make_short4((-1L), 0xA9B2L, (l_3046.x < p_12.f2), (p_4589->g_3117 = p_4589->g_113)) ^ make_short4(0x2F28L, 2L, l_3118, (-9L)))), make_short4((-1L), (-1L), (-1L), (-1L))))).z , 0x50L) > 252UL))))) ^ make_ushort2(0UL, 0UL))).y) & p_12.f0)) < 18446744073709551608UL) & p_12.f1) ^ 0x721BA6C3L);
                        (*l_3121) = l_3119;
                        ++l_3122;
                    }
                    else
                    { /* block id: 1449 */
                        short4 l_3126 = make_short4(0x349BL, 0L, 0x349BL, 0L);
                        int64_t *l_3150 = nullptr;
                        int64_t *l_3151 = nullptr;
                        int64_t *l_3152[7][1][1] = {{{nullptr}}, {{nullptr}}, {{nullptr}}, {{nullptr}}, {{nullptr}}, {{nullptr}}, {{nullptr}}};
                        int32_t l_3153 = 0x1DA83384L;
                        uint16_t l_3154[9][1] = {{0UL}, {0UL}, {0UL}, {0UL}, {0UL}, {0UL}, {0UL}, {0UL}, {0UL}};
                        int i, j, k;
                        l_3125 = nullptr;
                        if (l_3082.x)
                            continue;
                        l_3155 = ((make_short1(l_3126.w).x , ((l_3126.x | p_12.f6) & (((safe_mul(((make_int2((((((safe_add(((((safe_rshift(make_uint1(make_uint4(p_4589->g_3133.y, p_4589->g_3133.y, p_4589->g_3133.y, p_4589->g_3133.y).w), make_uint1(32)))) ^ make_uint1(p_4589->g_3134.w))), make_uint1(0xA43AFDC6L)))) & make_uint1(0x5C1620E1L))).x , (safe_lshift_func_int64_t_s_u((make_int1(0x3055D875L).x , p_12.f4), 23))), 0x6E21E60EL) & make_int2(l_3137.x, l_3137.x))), make_int2(0xE4FB37E2L, (safe_mod_func_int16_t_s_s(((((l_3153 = (safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((l_3099 ^ (((p_12.f6 < (p_12.f1 |= (l_3144 == l_3145))) & l_3146) == (safe_lshift_func_uint16_t_u_s((l_2916 ^= ((make_ushort4(l_3149.w, l_3149.w, l_3149.w, l_3149.w) ^ ((((make_ushort4(p_12.f6, 65535UL, 4UL, 65535UL) ^ make_ushort4(0UL, 0UL, 0UL, 0UL))) ^ make_ushort4(0x9351L, 0x9351L, 0x9351L, 0x9351L))))).z), p_12.f3)))), 3)), (-3L)))) != 0xF5C3AA76F27FDA64LL) > hip_const_9.f5) > (-3L)), hip_const_7[2].f3)))))).x && p_12.f5))) || l_3154[8][0]);
                        if (p_12.f5)
                            break;
                    }
                }
                for (p_4589->g_400.f0 = 0; (p_4589->g_400.f0 <= 3); p_4589->g_400.f0 += 1)
                { /* block id: 1461 */
                    l_3158 = l_3156;
                    for (p_4589->g_2382 = 0; (p_4589->g_2382 <= 3); p_4589->g_2382 += 1)
                    { /* block id: 1465 */
                        int32_t l_3159 = (-1L);
                        (****l_2986) = nullptr;
                        p_12.f1 ^= (l_3159 = p_12.f0);
                        (**p_4589->g_2985) = &l_2916;
                    }
                }
            }
            l_3164--;
            l_3161 = (l_3100 = l_3167);
        }
        return p_10;
    }
    else
    { /* block id: 1478 */
        __shared__ int16_t ***l_3170;
        l_3170 = &l_3112[7][0];
        long3 l_3172 = make_long3((-1L), 0xEBD653036A6536C6LL, (-1L));
        uint32_t *l_3177 = &p_4589->g_400.f2;
        uint16_t *l_3178[10][7] = {{nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}, {nullptr, nullptr, &p_4589->g_361[3][3], nullptr, nullptr, nullptr, &hip_const_6}};
        int32_t l_3179 = 0xFC9B2B40L;
        uint32_t l_3180 = 4294967295UL;
        __shared__ uint64_t **l_3182;
        l_3182 = nullptr;
        char3 l_3193 = make_char3(0x9FL, 0xDCL, 0x9FL);
        uint16_t l_3202 = 1UL;
        int32_t *l_3203[6][8][5] = {{{&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}}, {{&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}}, {{&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}}, {{&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}}, {{&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}}, {{&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}, {&p_4589->g_2382, nullptr, nullptr, &p_4589->g_1052.f4, &hip_const_1[1][5][1]}}};
        int16_t l_3209 = 0x43FEL;
        int32_t *l_3242 = &hip_const_5.f0;
        __shared__ int32_t *****l_3243;
        l_3243 = nullptr;
        char3 l_3257 = make_char3(0x4BL, 3L, 0x4BL);
        uint4 l_3281 = make_uint4(0x33E30AB4L, 4294967295UL, 0x33E30AB4L, 4294967295UL);
        int4 l_3304 = make_int4(0xD2D4502EL, 0xE5B8AEF1L, 0xD2D4502EL, 0xE5B8AEF1L);
        int8_t l_3330 = 0xD1L;
        int32_t l_3336 = 1L;
        int32_t l_3353 = 0L;
        uint32_t *l_3368 = &p_4589->g_1052.f8;
        int3 l_3384 = make_int3(0xEF459C97L, (-1L), 0xEF459C97L);
        short2 l_3401 = make_short2((-1L), 0xE497L);
        uint64_t l_3414 = 0x17E6BF83182F7136LL;
        __shared__ int64_t l_3421;
        l_3421 = (-1L);
        char2 l_3492 = make_char2((-1L), 4L);
        uint8_t *l_3493 = &p_4589->g_3102;
        int32_t l_3498 = 0x06BE3BB0L;
        int64_t ****l_3510[3];
        int64_t *****l_3511 = nullptr;
        int64_t *****l_3512 = &p_4589->g_2571;
        struct S0 *l_3541 = &p_4589->g_1052;
        __shared__ ushort4 l_3556;
        l_3556 = make_ushort4(0x3311L, 6UL, 0x3311L, 6UL);
        char1 l_3562 = make_char1((-3L));
        __shared__ uint16_t ****l_3572;
        l_3572 = nullptr;
        __shared__ uint16_t l_3582;
        l_3582 = 65526UL;
        int32_t l_3701 = 0x62CAA4F7L;
        ushort1 l_3709 = make_ushort1(0x0528L);
        long1 l_3740 = make_long1(0xDF14ABCF1F6BB09DLL);
        uint32_t l_3751 = 0x41930358L;
        uint32_t ***l_3768 = &p_4589->g_850;
        int32_t *l_3866 = &p_4589->g_2382;
        __shared__ uint32_t ***l_3892;
        l_3892 = &p_4589->g_850;
        int i, j, k;
        for (int i = 0; i < 3; i++)
            l_3510[i] = &p_4589->g_447[2][5][0];
    }
lbl_3927:
    if (p_12.f0)
    { /* block id: 1822 */
        for (l_3267.f8 = 0; (l_3267.f8 > 47); l_3267.f8 = safe_add_func_uint16_t_u_u(l_3267.f8, 5))
        { /* block id: 1825 */
            return (*l_3773);
        }
        p_12.f4 = p_11;
    }
    else
    { /* block id: 1829 */
        int32_t *l_3905 = nullptr;
        l_3905 = l_3905;
    }
    if ((0xC5L != ((++p_11) , (((*p_4589->g_2984) == (p_4589->g_3912[1] = (*p_4589->g_2984))) >= ((*l_3773) |= ((p_12.f3 , (((((safe_mod_func_int64_t_s_s((safe_add_func_int32_t_s_s(7L, ((l_3917 != l_3917) > make_int4(l_3918.y, l_3918.y, l_3918.y, l_3918.y).z))), make_long1(p_4589->g_3919.y).x)) || (safe_lshift_func_int16_t_s_u((safe_sub_func_uint32_t_u_u((((p_11 , (((((make_char1(l_3924.x).x , p_4589->g_3162[0]) <= 0xAEL) , nullptr) != &l_3088[3]) || 1UL)) | hip_const_10[0][1][0]) >= 0x7B051E13F8AB3C6ALL), p_12.f1)), (**p_4589->g_3240)))) , (**p_4589->g_448)) <= p_12.f2) <= (*p_4589->g_3241))) && p_12.f5))))))
    { /* block id: 1835 */
        int16_t l_3925 = 0x0C0FL;
        int32_t l_3926 = (-9L);
        l_3926 = l_3925;
        if (p_12.f0)
            goto lbl_3927;
        (*p_4589->g_877) = l_3204;
    }
    else
    { /* block id: 1839 */
        // attempting a hip shared for loop
        __shared__ struct S0 l_3928[6];
        for (int i = 0; i < 6; i++)
            l_3928[i] = {0xB6BC0AEEL,0x40D8F8B34E881DCDLL,0UL,-10,0x9901192CL,0x179518ABL,1L,18446744073709551611UL,0x33ACFEE7L};
        __shared__ struct S1 *l_3929;
        l_3929 = &p_4589->g_685[2][3];
        // attempting a hip shared for loop
        __shared__ struct S1 **l_3930[6][3];
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 3; j++)
                l_3930[i][j] = &p_4589->g_877;
        }
        int i, j;
        (*p_4589->g_222) = (make_ulong4(1UL, 0x1DDD1A678DE901C1LL, 0xCA7DD23DFA80F6A0LL, p_10).w , (***p_4589->g_2984));
        (*p_4589->g_222) = func_30(l_3928[4], &l_2936, (+make_ulong1(18446744073709551609UL).x), ((l_3931 = l_3929) == &p_12), p_4589);
        p_4589->g_3932 = &p_4589->g_1037;
    }
    for (l_3705 = 0; (l_3705 <= 2); l_3705 = safe_add_func_uint32_t_u_u(l_3705, 6))
    { /* block id: 1847 */
        struct S1 l_3935 = {1L,-987,1403,1,2,0xF8CE30F9L,8UL};
        uint64_t l_3937 = 0xEECD9BBB2D4C812FLL;
        short2 l_3938 = make_short2(9L, 0x989CL);
        int i;
        if ((((l_3935 , ((make_short1(l_3936.w) ^ make_short1(0xA52EL))).x) , l_3937) ^ (~make_short4(l_3938.y, l_3938.y, l_3938.y, l_3938.y).x)))
        { /* block id: 1848 */
            p_12.f1 = l_3935.f0;
            if (l_3939)
                continue;
        }
        else
        { /* block id: 1851 */
            __shared__ int64_t l_3946;
            l_3946 = 0L;
            for (l_3267.f4 = 0; (l_3267.f4 > (-5)); --l_3267.f4)
            { /* block id: 1854 */
                struct S0 *l_3942[8] = {&hip_const_7[2], &p_4589->g_400, &hip_const_7[2], &p_4589->g_400, &hip_const_7[2], &p_4589->g_400, &hip_const_7[2], &p_4589->g_400};
                int i;
                l_3943 = (****p_4589->g_1544);
            }
            p_12.f4 |= (safe_mul_func_uint64_t_u_u(l_3946, (l_3935.f1 |= make_ulong3(p_4589->g_3947.x, p_4589->g_3947.x, p_4589->g_3947.x).y)));
            if (l_3935.f2)
                break;
            for (p_4589->g_757 = 0; p_4589->g_757 < 3; p_4589->g_757 += 1)
            {
                for (l_3204.f5 = 0; l_3204.f5 < 5; l_3204.f5 += 1)
                {
                    l_2998[p_4589->g_757][l_3204.f5] = nullptr;
                }
            }
        }
    }
    return p_12.f2;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_7 p_4589->g_222 p_4589->g_671 p_4589->g_1112 p_4589->g_877 p_4589->g_811 p_4589->g_1159 p_4589->g_605 p_4589->g_361 p_4589->g_1246 hip_const_13 p_4589->g_400.f3 p_4589->g_837 p_4589->g_1370 p_4589->g_449 hip_const_10 p_4589->g_448 p_4589->g_1334 hip_const_1 p_4589->g_797 p_4589->g_907 p_4589->g_271 p_4589->g_757 p_4589->g_223 p_4589->g_400.f7 p_4589->g_1517 p_4589->g_1544 p_4589->g_1052.f5 p_4589->g_1052.f7 p_4589->g_1322 p_4589->g_536 p_4589->g_1052.f1 p_4589->g_1580 p_4589->g_1172 p_4589->g_154 p_4589->g_1574 p_4589->g_1149 hip_const_5.f1 p_4589->g_685 p_4589->g_1507 p_4589->g_706 p_4589->g_400.f4 hip_const_9.f6 p_4589->g_1052.f4 p_4589->g_537 p_4589->g_2359 p_4589->g_2360 p_4589->g_400.f1 hip_const_5.f2 hip_const_9.f3 p_4589->g_1989 p_4589->g_1468 p_4589->g_1052.f2 p_4589->g_2454 p_4589->g_376 p_4589->g_851 hip_const_2 p_4589->g_1101 p_4589->g_2304 p_4589->g_1052.f3 p_4589->g_1052 p_4589->g_1859 p_4589->g_1220 p_4589->g_1718 hip_const_9.f1 p_4589->g_2079 p_4589->g_928 p_4589->g_520 p_4589->g_1920
 * writes: p_4589->g_1052.f2 p_4589->g_400.f7 p_4589->g_223 p_4589->g_400.f4 p_4589->g_145 p_4589->g_605 p_4589->g_671 p_4589->g_1112 p_4589->g_400.f5 p_4589->g_873 p_4589->g_1052.f5 p_4589->g_685 p_4589->g_361 p_4589->g_400.f2 p_4589->g_1052.f4 p_4589->g_327 p_4589->g_400.f3 p_4589->g_400.f0 p_4589->g_1037 p_4589->g_1052.f1 p_4589->g_1052.f0 p_4589->g_757 p_4589->g_115 p_4589->g_400.f8 p_4589->g_1483 p_4589->g_1509 p_4589->g_1335 p_4589->g_1544 p_4589->g_1246 p_4589->g_154 p_4589->g_1334 p_4589->g_400.f1 p_4589->g_1052 p_4589->g_837 p_4589->g_210 p_4589->g_1149 p_4589->g_1242 p_4589->g_811 p_4589->g_928 p_4589->g_2360 p_4589->g_1922 p_4589->g_1333 p_4589->g_1718 p_4589->g_1920
 */
__device__ uint64_t  func_21(int32_t  p_22, uint32_t * p_23, int32_t  p_24, int64_t * p_25, struct S2 * p_4589)
{ /* block id: 5 */
    uint32_t *l_41 = &hip_const_7[2].f7;
    int32_t l_80 = (-7L);
    int32_t l_1096[2][1][10] = {{{0xC596AE43L, 0L, 0x353E0D2FL, 0x353E0D2FL, 0L, 0xC596AE43L, 0L, 0x353E0D2FL, 0x353E0D2FL, 0L}}, {{0xC596AE43L, 0L, 0x353E0D2FL, 0x353E0D2FL, 0L, 0xC596AE43L, 0L, 0x353E0D2FL, 0x353E0D2FL, 0L}}};
    uint8_t l_1258 = 0x96L;
    int64_t *l_1259[7][10] = {{&p_4589->g_1246, &p_4589->g_1246, nullptr, nullptr, &p_4589->g_1246, &p_4589->g_1246, &p_4589->g_1246, &hip_const_10[0][5][4], &hip_const_10[0][1][6], &hip_const_10[0][0][1]}, {&p_4589->g_1246, &p_4589->g_1246, nullptr, nullptr, &p_4589->g_1246, &p_4589->g_1246, &p_4589->g_1246, &hip_const_10[0][5][4], &hip_const_10[0][1][6], &hip_const_10[0][0][1]}, {&p_4589->g_1246, &p_4589->g_1246, nullptr, nullptr, &p_4589->g_1246, &p_4589->g_1246, &p_4589->g_1246, &hip_const_10[0][5][4], &hip_const_10[0][1][6], &hip_const_10[0][0][1]}, {&p_4589->g_1246, &p_4589->g_1246, nullptr, nullptr, &p_4589->g_1246, &p_4589->g_1246, &p_4589->g_1246, &hip_const_10[0][5][4], &hip_const_10[0][1][6], &hip_const_10[0][0][1]}, {&p_4589->g_1246, &p_4589->g_1246, nullptr, nullptr, &p_4589->g_1246, &p_4589->g_1246, &p_4589->g_1246, &hip_const_10[0][5][4], &hip_const_10[0][1][6], &hip_const_10[0][0][1]}, {&p_4589->g_1246, &p_4589->g_1246, nullptr, nullptr, &p_4589->g_1246, &p_4589->g_1246, &p_4589->g_1246, &hip_const_10[0][5][4], &hip_const_10[0][1][6], &hip_const_10[0][0][1]}, {&p_4589->g_1246, &p_4589->g_1246, nullptr, nullptr, &p_4589->g_1246, &p_4589->g_1246, &p_4589->g_1246, &hip_const_10[0][5][4], &hip_const_10[0][1][6], &hip_const_10[0][0][1]}};
    uint16_t l_2824 = 65529UL;
    __shared__ uchar3 l_2853;
    l_2853 = make_uchar3(246UL, 0x5FL, 246UL);
    int32_t l_2857 = 0L;
    int16_t **l_2886 = &p_4589->g_326;
    int16_t ***l_2885 = &l_2886;
    int16_t ****l_2884[7] = {&l_2885, &l_2885, &l_2885, &l_2885, &l_2885, &l_2885, &l_2885};
    int16_t *****l_2892 = &p_4589->g_1517;
    int i, j, k;
    for (p_22 = 0; (p_22 >= (-6)); p_22--)
    { /* block id: 8 */
        short3 l_45 = make_short3(1L, (-1L), 1L);
        __shared__ uint32_t *l_60;
        l_60 = &hip_const_7[2].f8;
        int64_t *l_78[5][6] = {{&hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][3][2], &hip_const_10[0][1][6], &hip_const_10[0][3][2]}, {&hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][3][2], &hip_const_10[0][1][6], &hip_const_10[0][3][2]}, {&hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][3][2], &hip_const_10[0][1][6], &hip_const_10[0][3][2]}, {&hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][3][2], &hip_const_10[0][1][6], &hip_const_10[0][3][2]}, {&hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][1][6], &hip_const_10[0][3][2], &hip_const_10[0][1][6], &hip_const_10[0][3][2]}};
        int64_t **l_77 = &l_78[1][2];
        int32_t *l_1095[3][5][10] = {{{&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}}, {{&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}}, {{&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}, {&p_4589->g_605, nullptr, &l_80, &hip_const_7[2].f4, &p_4589->g_1052.f4, nullptr, &l_80, nullptr, &p_4589->g_928, nullptr}}};
        __shared__ struct S1 *l_1256;
        l_1256 = &hip_const_9;
        struct S1 *l_1257 = &p_4589->g_685[3][4];
        int32_t **l_2822 = nullptr;
        int16_t l_2823 = 0L;
        int32_t ***l_2828 = &p_4589->g_222;
        int32_t ****l_2827 = &l_2828;
        __shared__ int32_t *****l_2829;
        l_2829 = &l_2827;
        int i, j, k;
        l_1095[2][1][0] = func_30(hip_const_7[0], func_35(l_41, ((*l_1257) = func_42((((!((((make_short2(l_45.y, l_45.y) & ((safe_add(((safe_lshift(make_short2((safe_add_func_uint16_t_u_u((make_short1(1L).x > (((((((safe_div_func_uint32_t_u_u((hip_const_9.f6 , ((l_80 = ((func_54(l_60, (p_22 != func_61(hip_const_10[0][1][6], (safe_lshift_func_uint32_t_u_s(0x529FE0D4L, 27)), ((((func_68(((safe_rshift_func_uint8_t_u_u(func_75(((*l_77) = &hip_const_10[0][7][7]), p_4589), hip_const_5.f2)) && l_80), &hip_const_10[0][2][2], l_45.y, hip_const_9.f1, p_4589) > 0UL) != hip_const_9.f0) , p_4589->g_472.x) <= 4294967295UL), (*p_4589->g_448), p_4589)), p_24, (*p_4589->g_448), (*p_25), p_4589) , nullptr) != p_23)) , 0x141B90AFL)), 0xD1D6DD99L)) & p_4589->g_400.f1) || 4294967295UL) , 255UL) ^ 0L) == 65535UL) == p_22)), p_24)), 1L), make_short2(16, 16)))), make_short2(0L, 0L)))))) & make_short2(0xF79CL, 0xF79CL))).x) > p_24) != l_1096[0][0][7]), &hip_const_13, p_4589)), l_1258, l_1259[4][8], p_23, p_4589), p_22, hip_const_10[0][1][6], p_4589);
        l_1096[1][0][2] = (+0x713E7947L);
        ++l_2824;
        (*l_2829) = l_2827;
    }
    for (p_4589->g_1052.f6 = 4; (p_4589->g_1052.f6 >= 1); p_4589->g_1052.f6 -= 1)
    { /* block id: 1264 */
        int32_t *l_2830 = nullptr;
        int32_t *l_2831 = nullptr;
        __shared__ int32_t *l_2832;
        l_2832 = nullptr;
        int32_t *l_2833 = nullptr;
        int32_t *l_2834 = &hip_const_7[2].f4;
        int32_t *l_2835 = &p_4589->g_1242;
        int32_t *l_2836 = &l_1096[1][0][2];
        int32_t *l_2837 = &p_4589->g_757;
        int32_t *l_2838[6][4] = {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}};
        int32_t l_2839 = 3L;
        __shared__ uint8_t l_2840;
        l_2840 = 1UL;
        int i, j;
        l_2840++;
        for (l_80 = 0; (l_80 <= 0); l_80 += 1)
        { /* block id: 1268 */
            int64_t l_2854[1];
            int16_t *l_2858 = nullptr;
            int16_t *l_2859 = &p_4589->g_837;
            uint32_t *l_2860 = nullptr;
            uint32_t *l_2861 = &p_4589->g_1052.f2;
            int32_t l_2888[4][3][5] = {{{0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}}, {{0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}}, {{0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}}, {{0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}, {0L, 0xC68E187FL, 1L, (-1L), 1L}}};
            // attempting a hip shared for loop
            __shared__ uint32_t l_2891[5][8];
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 8; j++)
                    l_2891[i][j] = 0UL;
            }
            int i, j, k;
            for (int i = 0; i < 1; i++)
                l_2854[i] = 0xBB3B8B0327450777LL;
            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 8; j++)
                    l_2891[i][j] = 0UL;
            }
            if (((safe_mod_func_uint16_t_u_u(make_ushort4((((*l_2836) |= 0xF16EF537L) | ((*l_2861) = ((p_24 && ((safe_sub_func_uint64_t_u_u(((safe_add_func_uint8_t_u_u(((*p_25) > (safe_div_func_int64_t_s_s(0x37379E06F973637ALL, (*l_2834)))), make_uchar1(l_2853.y).x)) , ((l_2854[0] , &l_41) == ((((*l_2859) = ((l_2857 |= (safe_mod_func_uint8_t_u_u(((~make_uchar1(l_2854[0]))).x, 1UL))) >= 0x65B162B7D42D0035LL)) <= 0x6C54L) , nullptr))), (*l_2835))) , l_1258)) <= p_4589->g_472.x))), 0x2922L, 1UL, 65535UL).y, l_2854[0])) == p_24))
            { /* block id: 1273 */
                for (p_4589->g_928 = 0; (p_4589->g_928 <= 0); p_4589->g_928 += 1)
                { /* block id: 1276 */
                    uint8_t l_2870 = 251UL;
                    int32_t l_2872 = 4L;
                    int32_t *l_2878 = &hip_const_9.f0;
                    short1 l_2881 = make_short1(0x87B9L);
                    __shared__ uint32_t l_2889;
                    l_2889 = 0x75EEFD66L;
                    int32_t l_2890[2];
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_2890[i] = 0L;
                    for (p_4589->g_400.f8 = 0; (p_4589->g_400.f8 <= 0); p_4589->g_400.f8 += 1)
                    { /* block id: 1279 */
                        __shared__ int16_t *****l_2887;
                        l_2887 = &l_2884[6];
                        int i, j, k;
                        l_2890[1] &= (((safe_rshift_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(0xAEL, l_1096[p_4589->g_928][l_80][(p_4589->g_928 + 7)])), (safe_div_func_int8_t_s_s(p_4589->g_520.x, l_2870)))) || (l_2872 = make_ulong1(p_4589->g_2871.y).x)), (make_ushort3((safe_mul_func_int64_t_s_s((l_2888[3][2][2] = (safe_rshift_func_uint8_t_u_u(((make_uchar4(((make_uchar4(make_uchar3(p_4589->g_2877.x, p_4589->g_2877.x, p_4589->g_2877.x).x, 1UL, 1UL, ((nullptr != l_2878) <= make_char2((-1L), (-1L)).y)) | make_uchar4(((safe_rshift_func_uint16_t_u_s(p_4589->g_536.y, make_short1(l_2881.x).x)) < (((((safe_mul_func_int16_t_s_s(((((*l_2887) = l_2884[6]) != nullptr) , l_2854[0]), 0xFD46L)) , p_22) , l_1096[p_4589->g_928][l_80][(p_4589->g_928 + 7)]) & 0x8CB9L) >= p_22)), l_1096[p_4589->g_928][l_80][(p_4589->g_928 + 7)], 1UL, 0x00L))).w, 0x54L, 251UL, 7UL) ^ make_uchar4(8UL, 8UL, 8UL, 8UL))).w, p_22))), 0UL)), 65535UL, 65535UL).z == 65535UL))) ^ l_2889) ^ p_22);
                    }
                    for (l_2824 = 0; (l_2824 <= 0); l_2824 += 1)
                    { /* block id: 1287 */
                        (*p_4589->g_222) = nullptr;
                        if (l_2853.z)
                            break;
                    }
                    l_2890[1] |= (nullptr == &l_2888[3][2][2]);
                    l_2891[0][0] ^= p_24;
                }
            }
            else
            { /* block id: 1294 */
                __shared__ int64_t l_2893;
                l_2893 = (-3L);
                (*p_4589->g_222) = &l_2888[0][1][0];
                if (((l_2892 = &l_2884[5]) == &p_4589->g_1517))
                { /* block id: 1297 */
                    (*l_2836) ^= (make_uchar2(0x60L, 0x8AL).x != p_22);
                    for (p_22 = 0; (p_22 <= 0); p_22 += 1)
                    { /* block id: 1301 */
                        int i, j, k;
                        (*p_4589->g_222) = &l_1096[p_22][p_22][(l_80 + 9)];
                        (*p_4589->g_222) = &l_2857;
                        return l_2893;
                    }
                    return l_2888[3][2][2];
                }
                else
                { /* block id: 1307 */
                    uint8_t ***l_2908 = &p_4589->g_1371;
                    uint8_t ****l_2909 = &l_2908;
                    struct S0 l_2910 = {18446744073709551609UL,0UL,4294967295UL,5,0L,5L,-2L,18446744073709551609UL,3UL};
                    (**p_4589->g_222) = (safe_lshift_func_int64_t_s_s((**p_4589->g_448), (((safe_sub_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(make_int3((safe_add_func_int32_t_s_s((safe_div_func_int64_t_s_s((*p_4589->g_449), (safe_sub_func_int16_t_s_s(0L, p_24)))), ((((safe_div_func_uint32_t_u_u((((*l_2909) = l_2908) == (l_2910 , &p_4589->g_1371)), p_22)) < 254UL) , 0x69C13A4165CBF54ELL) == (-7L)))), (-1L), (**p_4589->g_222)).x, 0x0AC01D72L)), (-1L))) , (-2L)) == (-1L))));
                    return (*l_2837);
                }
            }
            for (l_2824 = 0; (l_2824 <= 0); l_2824 += 1)
            { /* block id: 1315 */
                if (p_24)
                    break;
            }
        }
        for (p_4589->g_1052.f2 = 0; (p_4589->g_1052.f2 <= 0); p_4589->g_1052.f2 += 1)
        { /* block id: 1321 */
            (*p_4589->g_222) = &l_1096[0][0][1];
            for (p_4589->g_1920 = 0; (p_4589->g_1920 <= 0); p_4589->g_1920 += 1)
            { /* block id: 1325 */
                return p_24;
            }
        }
    }
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_4589->g_1052.f1 p_4589->g_222 p_4589->g_1334 hip_const_1 p_4589->g_797 p_4589->g_907 p_4589->g_448 p_4589->g_449 hip_const_10 p_4589->g_271 p_4589->g_757 p_4589->g_223 p_4589->g_400.f7 p_4589->g_1517 p_4589->g_1544 p_4589->g_1246 p_4589->g_1052.f5 p_4589->g_1052.f7 p_4589->g_1322 p_4589->g_1159 p_4589->g_536 p_4589->g_1545 p_4589->g_424 p_4589->g_1580 p_4589->g_400.f1 p_4589->g_1172 p_4589->g_1950 p_4589->g_1052.f3 p_4589->g_154 p_4589->g_1983 p_4589->g_1989 p_4589->g_1052.f8 p_4589->g_1574 p_4589->g_877 p_4589->g_2076 p_4589->g_2079 p_4589->g_361 p_4589->g_1847 hip_const_9.f2 hip_const_7.f5 p_4589->g_1699 p_4589->g_1333 p_4589->g_1149 p_4589->g_1242 hip_const_5.f1 p_4589->g_671 p_4589->g_1112 p_4589->g_811 p_4589->g_605 p_4589->g_685 p_4589->g_1507 p_4589->g_706 p_4589->g_400.f4 hip_const_9.f6 p_4589->g_1052.f4 p_4589->g_537 p_4589->g_928 p_4589->g_1560 p_4589->g_2359 hip_const_9.f3 p_4589->g_2360 p_4589->g_1922 p_4589->g_2405 p_4589->g_2406 p_4589->g_2420 hip_const_5.f2 p_4589->g_1468 p_4589->g_1052.f2 p_4589->g_2454 p_4589->g_376 p_4589->g_851 hip_const_7.f7 hip_const_2 p_4589->g_1101 p_4589->g_2304 p_4589->g_1052 p_4589->g_1859 p_4589->g_2651 hip_const_11 p_4589->g_1239 p_4589->g_1220 hip_const_13 p_4589->g_2730 p_4589->g_1718 hip_const_9.f1
 * writes: p_4589->g_1052.f1 p_4589->g_223 p_4589->g_1052.f5 p_4589->g_1052.f0 p_4589->g_757 p_4589->g_115 p_4589->g_400.f8 p_4589->g_1483 p_4589->g_1509 p_4589->g_1335 p_4589->g_1544 p_4589->g_1246 p_4589->g_1052.f2 p_4589->g_154 p_4589->g_1334 p_4589->g_400.f1 p_4589->g_1038 p_4589->g_1052 p_4589->g_424 p_4589->g_685 p_4589->g_222 p_4589->g_361 p_4589->g_907 p_4589->g_837 p_4589->g_210 p_4589->g_1149 p_4589->g_1242 p_4589->g_400.f7 p_4589->g_400.f4 p_4589->g_145 p_4589->g_605 p_4589->g_671 p_4589->g_1112 p_4589->g_400.f5 p_4589->g_873 p_4589->g_811 p_4589->g_928 p_4589->g_1922 p_4589->g_2360 p_4589->g_797 p_4589->g_536 p_4589->g_1333 p_4589->g_1209 p_4589->g_271 p_4589->g_1718
 */
__device__ int32_t * func_30(struct S0  p_31, int64_t * p_32, uint64_t  p_33, int32_t  p_34, struct S2 * p_4589)
{ /* block id: 647 */
    int32_t *l_1411 = &hip_const_1[1][0][2];
    int32_t l_1439 = (-2L);
    int32_t l_1447 = 0x195A90D5L;
    int32_t l_1451 = (-8L);
    int32_t l_1452 = 0x34F0AF33L;
    int32_t l_1453[5][2][6] = {{{0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}, {0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}}, {{0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}, {0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}}, {{0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}, {0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}}, {{0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}, {0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}}, {{0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}, {0x0D1BBA52L, 0x7F980DF5L, (-3L), 0x0506694CL, 0x768586A9L, 0L}}};
    ushort3 l_1488 = make_ushort3(0xB6D0L, 65535UL, 0xB6D0L);
    uint32_t ****l_1528 = &p_4589->g_1038[5][3];
    uint8_t *l_1559 = nullptr;
    uint1 l_1561 = make_uint1(7UL);
    __shared__ struct S1 l_1684;
    l_1684 = {0xD6D0C921L,340,-5791,0,-2,1UL,0UL};
    int64_t ****l_1698 = nullptr;
    int64_t *****l_1697[6] = {&l_1698, &l_1698, &l_1698, &l_1698, &l_1698, &l_1698};
    struct S0 l_1704 = {0xB87FC28EL,0UL,4294967295UL,-14,0x2AA7DFBDL,0xCB5EBD3BL,-1L,0xB25185A7L,0x0D68F9EEL};
    int64_t l_1729[1];
    int32_t *l_1730 = nullptr;
    struct S0 *l_1765 = &p_4589->g_1052;
    __shared__ uint3 l_1777;
    l_1777 = make_uint3(0xB638007EL, 0xF4345ABBL, 0xB638007EL);
    int16_t l_1792[5];
    __shared__ uint16_t l_1793;
    l_1793 = 0UL;
    int4 l_1819 = make_int4(0xC8F3EE53L, 0xDF84B790L, 0xC8F3EE53L, 0xDF84B790L);
    int3 l_1820 = make_int3(0x2B751EC9L, 0x25EA2949L, 0x2B751EC9L);
    int32_t l_1826[10];
    int16_t **l_1862 = &p_4589->g_326;
    int16_t ***l_1861[8][5][5] = {{{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}, {{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}, {{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}, {{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}, {{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}, {{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}, {{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}, {{&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}, {&l_1862, &l_1862, &l_1862, &l_1862, &l_1862}}};
    int16_t ****l_1860 = &l_1861[3][0][0];
    __shared__ char1 l_1918;
    l_1918 = make_char1(0xAFL);
    uint64_t l_1923 = 0x066ED8F880533926LL;
    int16_t **l_1961 = &p_4589->g_326;
    int8_t l_1984 = 0xF8L;
    uint64_t ***l_2007 = &p_4589->g_1483;
    int16_t l_2022 = 0L;
    int64_t l_2037 = 0xC89B6FF4D0E6371ELL;
    uint8_t ***l_2047 = &p_4589->g_1371;
    __shared__ int8_t l_2093;
    l_2093 = 0x58L;
    __shared__ uint32_t l_2100;
    l_2100 = 1UL;
    __shared__ int64_t l_2105;
    l_2105 = 0x16BB8C728DB434C3LL;
    __shared__ int32_t l_2106;
    l_2106 = 0x52E6E109L;
    ushort1 l_2125 = make_ushort1(0x6BF6L);
    int2 l_2128 = make_int2(0x4AF7389AL, 0x0179A03DL);
    int32_t *l_2202 = &p_4589->g_1052.f4;
    uint2 l_2225 = make_uint2(6UL, 1UL);
    char2 l_2262 = make_char2(0xF9L, 0xEAL);
    struct S1 l_2272 = {-6L,243,7597,0,-17,0x237869CAL,1UL};
    int32_t *l_2315 = nullptr;
    struct S1 *l_2373 = &hip_const_5;
    uint32_t l_2389 = 0xFFE058D7L;
    int1 l_2390 = make_int1((-9L));
    __shared__ uint16_t l_2428;
    l_2428 = 5UL;
    uint64_t l_2471 = 0x00643C6475EDA492LL;
    ulong3 l_2494 = make_ulong3(0x3E07C6EE3D7CD45ALL, 6UL, 0x3E07C6EE3D7CD45ALL);
    int1 l_2648 = make_int1(0xBFCE1DF4L);
    ulong3 l_2654 = make_ulong3(8UL, 0xD6C31B8AE6EE0E2ALL, 8UL);
    __shared__ int2 l_2655;
    l_2655 = make_int2(0x2CACFECAL, 0xF3330EDFL);
    __shared__ int2 l_2656;
    l_2656 = make_int2(0xFAD0AF2FL, 0x2C2E9D12L);
    ulong1 l_2724 = make_ulong1(0UL);
    char4 l_2725 = make_char4(0xD8L, (-9L), 0xD8L, (-9L));
    int2 l_2811 = make_int2((-1L), 0L);
    uint8_t l_2818 = 6UL;
    int32_t *l_2821 = &hip_const_13;
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_1729[i] = 0xC2A5FD6FEA0349FBLL;
    for (int i = 0; i < 5; i++)
        l_1792[i] = 0x166CL;
    for (int i = 0; i < 10; i++)
        l_1826[i] = 3L;
    for (p_4589->g_1052.f1 = 0; (p_4589->g_1052.f1 <= 51); p_4589->g_1052.f1 = safe_add_func_uint64_t_u_u(p_4589->g_1052.f1, 7))
    { /* block id: 650 */
        (*p_4589->g_222) = (make_long4(p_4589->g_1410.y, p_4589->g_1410.y, p_4589->g_1410.y, p_4589->g_1410.y).z , l_1411);
    }
lbl_1927:
    for (p_4589->g_1052.f5 = 0; (p_4589->g_1052.f5 > (-19)); p_4589->g_1052.f5 = safe_sub_func_uint32_t_u_u(p_4589->g_1052.f5, 4))
    { /* block id: 655 */
        int16_t l_1426 = (-3L);
        int32_t l_1431 = (-2L);
        __shared__ int32_t l_1445;
        l_1445 = 0L;
        // attempting a hip shared for loop
        __shared__ int32_t l_1448[3][2];
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 2; j++)
                l_1448[i][j] = 0x9BF1E753L;
        }
        uint32_t l_1498 = 0x9EB9C0C5L;
        uint32_t **l_1510 = &p_4589->g_851;
        int32_t *l_1542 = &l_1439;
        uint8_t **l_1551 = &p_4589->g_1372[3];
        int3 l_1599 = make_int3(1L, 1L, 1L);
        uchar2 l_1613 = make_uchar2(1UL, 1UL);
        ulong3 l_1633 = make_ulong3(2UL, 0UL, 2UL);
        struct S1 ***l_1683 = nullptr;
        int32_t ***l_1737[9][9][3] = {{{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}, {{nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}, {nullptr, &p_4589->g_222, &p_4589->g_222}}};
        int i, j, k;
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 2; j++)
                l_1448[i][j] = 0x9BF1E753L;
        }
        for (p_4589->g_1052.f0 = 0; (p_4589->g_1052.f0 < 54); p_4589->g_1052.f0++)
        { /* block id: 658 */
            uint32_t l_1418 = 0x890EF4F0L;
            struct S1 **l_1421 = &p_4589->g_877;
            struct S1 ***l_1422 = &l_1421;
            int32_t *l_1423 = nullptr;
            int32_t *l_1424 = &p_4589->g_757;
            struct S0 l_1425 = {0UL,0x4E1ECADA0730FE34LL,1UL,66,0xD42B2F77L,1L,0xFFDC6DA1L,18446744073709551615UL,1UL};
            __shared__ int1 l_1467;
            l_1467 = make_int1(0xF3FCEB6CL);
            int32_t *l_1521 = nullptr;
            int32_t *l_1522 = nullptr;
            __shared__ int32_t *l_1523;
            l_1523 = &p_4589->g_1052.f4;
            // attempting a hip shared for loop
            __shared__ int32_t *l_1524[6];
            for (int i = 0; i < 6; i++)
                l_1524[i] = &p_4589->g_1052.f4;
            uint32_t l_1525 = 0xC996A659L;
            int i;
            if ((((((safe_lshift_func_uint64_t_u_u((l_1418 ^ ((safe_mul_func_int16_t_s_s(((((((4294967290UL != (((*l_1422) = l_1421) == &p_4589->g_877)) <= ((p_4589->g_1334.x ^ ((*l_1424) = 1L)) != (18446744073709551612UL || ((l_1425 , (l_1426 & l_1426)) >= 0xEC89L)))) != (*l_1411)) >= 0xECL) && p_4589->g_797.z) >= l_1426), p_31.f3)) < p_4589->g_907.x)), 44)) > (**p_4589->g_448)) > p_31.f4) , 0xDE41A56757EACC80LL) <= (**p_4589->g_448)))
            { /* block id: 661 */
                int64_t l_1434 = 0L;
                int32_t l_1435 = 0x9DE55B9AL;
                __shared__ int32_t l_1449;
                l_1449 = 0x9235FFDCL;
                __shared__ int32_t l_1454;
                l_1454 = 0xE495DE8DL;
                int32_t l_1455 = 0x40D64A6FL;
                int32_t l_1457 = 0x56EE8F16L;
                int32_t l_1458 = (-1L);
                uint64_t *l_1469[9][5] = {{&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}, {&p_4589->g_113, &p_4589->g_1052.f1, &p_4589->g_113, nullptr, &l_1425.f1}};
                int16_t **l_1476 = nullptr;
                int16_t ***l_1475 = &l_1476;
                __shared__ int16_t ****l_1474;
                l_1474 = &l_1475;
                int i, j;
                for (l_1425.f5 = 0; l_1425.f5 < 7; l_1425.f5 += 1)
                {
                    p_4589->g_115[l_1425.f5] = nullptr;
                }
                for (p_4589->g_400.f8 = 0; (p_4589->g_400.f8 != 27); ++p_4589->g_400.f8)
                { /* block id: 665 */
                    int2 l_1429 = make_int2(0L, 0x1535E780L);
                    uint8_t l_1478 = 246UL;
                    int i;
                    if ((0xB6A70123L == (p_31.f4 ^ p_4589->g_271.y)))
                    { /* block id: 666 */
                        int32_t *l_1430[2];
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_1430[i] = &p_4589->g_605;
                        l_1431 = ((*l_1424) = ((make_int1(l_1429.y) ^ make_int1(0x1DCD6C18L))).x);
                        (*l_1424) = (safe_mod_func_uint32_t_u_u(p_31.f6, l_1429.y));
                        return &p_4589->g_757;
                    }
                    else
                    { /* block id: 671 */
                        uint8_t *l_1436 = &hip_const_12[0][5][1];
                        __shared__ int32_t l_1437;
                        l_1437 = (-1L);
                        uint8_t *l_1438 = &hip_const_12[3][9][0];
                        uint8_t *l_1440 = &hip_const_11;
                        uint8_t *l_1441 = &hip_const_11;
                        uint8_t *l_1442 = nullptr;
                        uint8_t *l_1443 = nullptr;
                        uint8_t *l_1444 = nullptr;
                        uint8_t *l_1446[5] = {&p_4589->g_1149, &p_4589->g_1149, &p_4589->g_1149, &p_4589->g_1149, &p_4589->g_1149};
                        int32_t l_1450 = (-9L);
                        int1 l_1456 = make_int1(0xA6A61425L);
                        uint16_t l_1459 = 0x1A32L;
                        int i;
                        l_1445 = (((++l_1459) ^ (safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s(((safe_unary_minus_func_int16_t_s((((*l_1424) ^ make_int4(l_1467.x, l_1467.x, l_1467.x, l_1467.x).z) && make_uint4(p_4589->g_1468.x, p_4589->g_1468.x, p_4589->g_1468.x, p_4589->g_1468.x).z))) & (nullptr == &p_4589->g_326)), (&p_4589->g_495 != l_1469[7][1]))), (safe_rshift_func_int64_t_s_u((p_33 == (safe_lshift_func_int8_t_s_u((nullptr != l_1474), 0))), (&p_4589->g_837 != &p_4589->g_837)))))) == 2UL);
                        (*p_4589->g_222) = &p_4589->g_1242;
                    }
                    for (l_1452 = 4; (l_1452 >= 0); l_1452 -= 1)
                    { /* block id: 678 */
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_1477[9][3];
                        for (int i = 0; i < 9; i++)
                        {
                            for (int j = 0; j < 3; j++)
                                l_1477[i][j] = &l_1425.f4;
                        }
                        int i, j;
                        ++l_1478;
                        (*p_4589->g_222) = &l_1431;
                        (*p_4589->g_223) ^= p_31.f3;
                    }
                }
            }
            else
            { /* block id: 684 */
                int16_t **l_1491 = &p_4589->g_326;
                int16_t ***l_1490 = &l_1491;
                int16_t ****l_1489[3];
                uint8_t *l_1494 = nullptr;
                uint8_t *l_1495 = nullptr;
                uint8_t *l_1496 = nullptr;
                uint8_t *l_1497[6];
                uint16_t *l_1515[1][8][10] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4589->g_1112, nullptr, nullptr, nullptr}}};
                // attempting a hip shared for loop
                __shared__ int32_t l_1516[1][1];
                for (int i = 0; i < 1; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_1516[i][j] = 0x9A03C867L;
                }
                int i, j, k;
                for (int i = 0; i < 3; i++)
                    l_1489[i] = &l_1490;
                for (int i = 0; i < 6; i++)
                    l_1497[i] = nullptr;
                for (int i = 0; i < 1; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_1516[i][j] = 0x9A03C867L;
                }
                for (l_1431 = 0; (l_1431 <= 1); l_1431 += 1)
                { /* block id: 687 */
                    uint64_t **l_1482 = &p_4589->g_115[(l_1431 + 4)];
                    uint64_t ***l_1481[7];
                    int i, j, k;
                    for (int i = 0; i < 7; i++)
                        l_1481[i] = &l_1482;
                    p_4589->g_1483 = &p_4589->g_115[(l_1431 + 4)];
                    if (l_1453[(l_1431 + 3)][l_1431][l_1431])
                        continue;
                    return l_1423;
                }
                p_31.f4 &= ((*l_1424) = (safe_mul_func_uint16_t_u_u((*l_1424), (((((safe_lshift(make_ushort1(l_1488.x), make_ushort1(16)))).x > (*l_1424)) == ((l_1489[2] == ((p_4589->g_400.f7 , (p_4589->g_1509.z = make_ushort1(((safe_sub_func_int8_t_s_s(0x0BL, ((make_uchar3((l_1498--), 255UL, ((safe_lshift_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u(((((safe_rshift(make_ushort4(p_4589->g_1507.x, p_4589->g_1507.x, p_4589->g_1507.x, p_4589->g_1507.x), make_ushort4(p_4589->g_1508.y, p_4589->g_1508.y, p_4589->g_1508.y, p_4589->g_1508.y)))) ^ make_ushort4(p_4589->g_1509.y, p_4589->g_1509.y, p_4589->g_1509.y, p_4589->g_1509.y))).y, ((nullptr != l_1510) || ((((safe_lshift_func_int64_t_s_s((*l_1411), 25)) <= (safe_rshift_func_uint16_t_u_u((p_4589->g_271.w = (p_31.f1 | 9L)), hip_const_5.f5))) & (**p_4589->g_1483)) && p_31.f6)))) ^ 9L), 5)) <= p_4589->g_669.x)) ^ make_uchar3(0x8BL, 0x8BL, 0x8BL))).y)) >= l_1516[0][0])).x)) , p_4589->g_1517)) && (*l_1411))) , p_31.f7))));
                (*l_1424) = p_31.f4;
            }
            for (p_4589->g_757 = 0; (p_4589->g_757 != 4); p_4589->g_757 = safe_add_func_uint16_t_u_u(p_4589->g_757, 1))
            { /* block id: 701 */
                uint32_t l_1520 = 4294967295UL;
                p_31.f4 = l_1520;
            }
            ++l_1525;
        }
        p_4589->g_1335.y = (nullptr != l_1528);
        for (l_1447 = 0; (l_1447 >= (-2)); l_1447 = safe_sub_func_uint32_t_u_u(l_1447, 8))
        { /* block id: 709 */
            int8_t l_1538 = 0xB9L;
            struct S0 *****l_1546 = &p_4589->g_1544;
            struct S0 ****l_1547[6][3];
            int i, j;
            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 3; j++)
                    l_1547[i][j] = nullptr;
            }
            for (l_1426 = 0; (l_1426 <= 3); l_1426 += 1)
            { /* block id: 712 */
                __shared__ int32_t *l_1531;
                l_1531 = &hip_const_1[1][0][2];
                int32_t *l_1532 = &p_4589->g_1242;
                int32_t *l_1533 = nullptr;
                int32_t *l_1534 = &l_1431;
                __shared__ int32_t *l_1535;
                l_1535 = &hip_const_7[2].f4;
                int32_t *l_1536 = &p_4589->g_605;
                // attempting a hip shared for loop
                __shared__ int32_t *l_1537[6];
                for (int i = 0; i < 6; i++)
                    l_1537[i] = &p_4589->g_1242;
                uint64_t l_1539[3][10] = {{0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL}, {0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL}, {0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL, 0x7B4CE64C4C34B044LL, 0xB4C0F2668BABB994LL}};
                int i, j;
                for (int i = 0; i < 6; i++)
                    l_1537[i] = &p_4589->g_1242;
                l_1539[2][0]++;
                (*p_4589->g_222) = l_1542;
            }
            (*l_1542) &= (safe_unary_minus_func_int16_t_s((((*l_1546) = p_4589->g_1544) == l_1547[3][1])));
            p_31.f4 = p_34;
        }
        for (p_4589->g_1052.f1 = 6; (p_4589->g_1052.f1 != 28); p_4589->g_1052.f1 = safe_add_func_int16_t_s_s(p_4589->g_1052.f1, 1))
        { /* block id: 722 */
            uint8_t **l_1550 = &p_4589->g_1372[3];
            int32_t l_1558 = 0L;
            uint16_t *l_1562 = &hip_const_14[1][0];
            uint16_t *l_1563 = &p_4589->g_1112;
            uint16_t *l_1564 = &hip_const_14[4][1];
            uint16_t *l_1565 = nullptr;
            uint16_t *l_1566 = &hip_const_14[2][4];
            int32_t l_1575 = (-9L);
            __shared__ int32_t *l_1584;
            l_1584 = &p_4589->g_671;
            int8_t l_1629 = 0x48L;
            int32_t l_1630 = 1L;
            __shared__ int32_t l_1631;
            l_1631 = 0x0122D800L;
            int32_t l_1632[10];
            ulong2 l_1665 = make_ulong2(18446744073709551615UL, 0xB858EE3BABBD54EDLL);
            int16_t l_1676 = (-5L);
            __shared__ uchar2 l_1716;
            l_1716 = make_uchar2(0x36L, 0UL);
            ulong2 l_1719 = make_ulong2(6UL, 0xB1E3443E91BF3A08LL);
            uint64_t ***l_1720 = &p_4589->g_1483;
            __shared__ uint32_t ***l_1731;
            l_1731 = &l_1510;
            __shared__ int32_t ***l_1734;
            l_1734 = &p_4589->g_222;
            __shared__ struct S0 *l_1758;
            l_1758 = &p_4589->g_400;
            int i;
            for (int i = 0; i < 10; i++)
                l_1632[i] = 0xDDBC75B1L;
        }
    }
    if ((p_31.f6 || 0x4225L))
    { /* block id: 832 */
        __shared__ int8_t l_1761;
        l_1761 = 0x95L;
        int32_t *l_1768[8] = {&hip_const_13, &hip_const_13, nullptr, &hip_const_13, &hip_const_13, nullptr, &hip_const_13, &hip_const_13};
        uint2 l_1781 = make_uint2(4294967291UL, 0UL);
        uchar2 l_1784 = make_uchar2(0x06L, 0UL);
        int3 l_1797 = make_int3(0xA0C52178L, 0x69AABB43L, 0xA0C52178L);
        struct S1 l_1812 = {0x50023740L,15,5350,1,-32,0x64507E34L,18446744073709551615UL};
        long4 l_1828 = make_long4(6L, 0x13F83425B6DF7181LL, 6L, 0x13F83425B6DF7181LL);
        struct S1 **l_1904[10][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
        int32_t l_1917 = 7L;
        __shared__ int8_t l_1919;
        l_1919 = 0L;
        int16_t l_1921 = 0x8D64L;
        __shared__ int32_t l_1940;
        l_1940 = 0x0416B396L;
        uint32_t ***l_1953 = nullptr;
        int3 l_1964 = make_int3(0x8A77B1D8L, 0L, 0x8A77B1D8L);
        __shared__ short2 l_1973;
        l_1973 = make_short2(7L, 1L);
        int32_t l_1994 = 0x7C2ADD21L;
        int8_t l_2024 = 1L;
        uint32_t l_2029 = 0x50A325ABL;
        __shared__ uint64_t ****l_2044;
        l_2044 = &l_2007;
        int32_t *l_2052 = &hip_const_7[2].f5;
        int1 l_2055 = make_int1(0x52231288L);
        uint8_t l_2087 = 8UL;
        int16_t l_2096 = 0xEC4DL;
        // attempting a hip shared for loop
        __shared__ int32_t l_2103[9][9];
        for (int i = 0; i < 9; i++)
        {
            for (int j = 0; j < 9; j++)
                l_2103[i][j] = 4L;
        }
        int64_t l_2104 = 0x642F7ADC1D974426LL;
        uint32_t l_2107 = 0x704C7648L;
        int16_t **l_2110 = &p_4589->g_326;
        uint2 l_2111 = make_uint2(0x40DAE19FL, 0UL);
        uint64_t l_2198 = 0x4E8F9D0D93AAB1AALL;
        int3 l_2221 = make_int3(0x4C9B54A1L, 1L, 0x4C9B54A1L);
        int16_t **l_2249 = &p_4589->g_326;
        __shared__ uint2 l_2280;
        l_2280 = make_uint2(0xB96A0476L, 1UL);
        int64_t ****l_2284 = &p_4589->g_447[1][3][2];
        __shared__ int32_t l_2307;
        l_2307 = 0x2851A004L;
        uint1 l_2319 = make_uint1(0UL);
        struct S0 **l_2322[3][1];
        uint32_t l_2337 = 0xA33D1663L;
        int32_t l_2356 = (-5L);
        // attempting a hip shared for loop
        __shared__ int32_t l_2377[6];
        for (int i = 0; i < 6; i++)
            l_2377[i] = 0L;
        __shared__ int8_t l_2381;
        l_2381 = 0xAAL;
        // attempting a hip shared for loop
        __shared__ int32_t l_2383[10];
        for (int i = 0; i < 10; i++)
            l_2383[i] = 1L;
        short3 l_2410 = make_short3(0x75E9L, 0x0F0BL, 0x75E9L);
        int i, j;
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 1; j++)
                l_2322[i][j] = &l_1765;
        }
        for (int i = 0; i < 6; i++)
            l_2377[i] = 0L;
        if ((safe_div_func_int64_t_s_s(make_long1(2L).x, l_1761)))
        { /* block id: 833 */
            struct S0 *l_1764 = &l_1704;
            uint1 l_1780 = make_uint1(0xFF438287L);
            __shared__ int32_t l_1786;
            l_1786 = 0x74530BE2L;
            int32_t l_1787 = 0x6B7A6513L;
            int32_t l_1790[6] = {0L, 0x039C2A8EL, 0L, 0x039C2A8EL, 0L, 0x039C2A8EL};
            struct S1 l_1800 = {1L,1807,14855,0,-16,1UL,0x05B8496FL};
            char3 l_1843 = make_char3(0x0DL, 0x90L, 0x0DL);
            __shared__ int32_t *l_1880;
            l_1880 = &l_1447;
            int i;
            for (p_4589->g_1246 = (-5); (p_4589->g_1246 >= 18); p_4589->g_1246 = safe_add_func_uint64_t_u_u(p_4589->g_1246, 5))
            { /* block id: 836 */
                __shared__ int32_t *l_1767;
                l_1767 = &p_4589->g_1052.f5;
                int32_t l_1788 = 2L;
                int32_t l_1789 = 3L;
                int32_t l_1791 = (-1L);
                int4 l_1818 = make_int4(0x77340E4FL, 0x8759180EL, 0x77340E4FL, 0x8759180EL);
                uint16_t l_1823 = 65535UL;
                int32_t l_1866 = 0x53BB084FL;
                int i;
                l_1765 = l_1764;
                for (p_4589->g_1052.f2 = 0; (p_4589->g_1052.f2 <= 2); p_4589->g_1052.f2 += 1)
                { /* block id: 840 */
                    // attempting a hip shared for loop
                    __shared__ int32_t *l_1766[2];
                    for (int i = 0; i < 2; i++)
                        l_1766[i] = &l_1704.f5;
                    int1 l_1769 = make_int1(0x5A007060L);
                    int3 l_1817 = make_int3(0xC7EED4EAL, 0x16783712L, 0xC7EED4EAL);
                    // attempting a hip shared for loop
                    __shared__ int64_t **l_1821[3][9];
                    for (int i = 0; i < 3; i++)
                    {
                        for (int j = 0; j < 9; j++)
                            l_1821[i][j] = &p_4589->g_449;
                    }
                    int64_t **l_1822 = &p_4589->g_449;
                    __shared__ uchar1 l_1846;
                    l_1846 = make_uchar1(0UL);
                    int i, j;
                    for (int i = 0; i < 2; i++)
                        l_1766[i] = &l_1704.f5;
                    for (p_4589->g_400.f8 = 0; (p_4589->g_400.f8 <= 2); p_4589->g_400.f8 += 1)
                    { /* block id: 843 */
                        return l_1767;
                    }
                    (*p_4589->g_222) = l_1768[0];
                    for (p_31.f2 = 0; (p_31.f2 <= 2); p_31.f2 += 1)
                    { /* block id: 849 */
                        __shared__ uint16_t *l_1770;
                        l_1770 = nullptr;
                        int32_t l_1785[5];
                        int3 l_1796 = make_int3(0xA51722BCL, 0x09F48C37L, 0xA51722BCL);
                        int i;
                        for (int i = 0; i < 5; i++)
                            l_1785[i] = 0x28D6676DL;
                        (*l_1767) = make_int1(l_1769.x).x;
                        (*l_1767) |= (18446744073709551615UL || ((4L && (make_uint1(((nullptr != l_1770) , (safe_div_func_uint32_t_u_u((((safe_div(((safe_mul(make_uint2(l_1777.z, l_1777.z), ((safe_lshift(make_uint2(6UL, 0x3699C864L), make_uint2(p_33, 0x34DC5816L))))))), make_uint2(1UL, ((make_uint3(l_1780.x, l_1780.x, l_1780.x) ^ make_uint3(l_1781.x, l_1781.x, l_1781.x))).y)))).x < 1UL), make_uint3((!((safe_lshift_func_uint8_t_u_s(make_uchar2(l_1784.x, l_1784.x).y, 0)) > ((p_31.f6 , &p_4589->g_1483) != nullptr))), 0x1A848C92L, 4294967295UL).y)))).x || 4294967295UL)) < l_1785[3]));
                        --l_1793;
                        (*l_1767) = (p_31.f5 = (!((((make_int1(l_1796.y) & make_int1(l_1797.x))) | make_int1((((-9L) || (0xD2A3L & l_1790[0])) ^ p_33)))).x));
                    }
                    for (p_31.f5 = 2; (p_31.f5 >= 0); p_31.f5 -= 1)
                    { /* block id: 858 */
                        int32_t l_1824 = 8L;
                        int32_t l_1825 = 0x4B8D93F8L;
                        int1 l_1827 = make_int1(0x7B4DC1F5L);
                        uint16_t l_1829[3];
                        uint64_t *l_1863 = nullptr;
                        __shared__ uint64_t *l_1864;
                        l_1864 = &hip_const_7[2].f1;
                        int32_t l_1865 = (-2L);
                        int i;
                        for (int i = 0; i < 3; i++)
                            l_1829[i] = 0x39FBL;
                        l_1786 = (l_1824 |= (safe_mod_func_int64_t_s_s((l_1790[0] ^= ((*l_1767) = ((l_1800 , (make_long4(((p_31.f4 = ((safe_sub_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((0xB19E0C03L | ((((safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u((p_4589->g_1508.x ^ (safe_lshift_func_uint8_t_u_u((&p_32 == (l_1822 = (l_1821[0][1] = ((safe_unary_minus_func_uint32_t_u(((p_34 <= ((l_1812 , l_1766[0]) == nullptr)) || ((safe_div(((safe_sub(((make_int3(l_1817.x, l_1817.x, l_1817.x) ^ make_int3(l_1818.y, l_1818.y, l_1818.y))), make_int3(l_1819.w, l_1819.w, l_1819.w)))), make_int3(l_1820.y, l_1820.y, l_1820.y)))).y))) , &p_32)))), 6))), p_33)), 14)) && l_1823) != 0x3B1D1BEAFEB27DD0LL) < l_1800.f3)), 0x35L)), 0x24C9B862294A89D1LL)) < p_31.f5)) & p_4589->g_1508.y), 5L, 0xB1A312071DDF2FB8LL, p_31.f3).z || (**p_4589->g_448))) ^ (*l_1767)))), p_33)));
                        ++l_1829[2];
                        (*l_1767) ^= (((safe_mul_func_int8_t_s_s(p_31.f6, ((safe_lshift_func_uint32_t_u_s(p_4589->g_1052.f7, 1)) && (safe_mul_func_uint32_t_u_u(((safe_mod_func_uint8_t_u_u(make_uchar4(p_4589->g_1842.y, p_4589->g_1842.y, p_4589->g_1842.y, p_4589->g_1842.y).w, make_char4(l_1843.z, l_1843.z, l_1843.z, l_1843.z).w)) & ((safe_mul_func_int16_t_s_s((((make_uchar4(0x9BL, 255UL, make_uchar2(l_1846.x, l_1846.x).y, 253UL) & make_uchar4(p_4589->g_1847.x, p_4589->g_1847.x, p_4589->g_1847.x, p_4589->g_1847.x))).w > ((safe_lshift_func_int8_t_s_s((make_long1(p_4589->g_1852.y).x > (0x2570L == (safe_div_func_uint16_t_u_u((safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(((+1L) != (((((make_uint3(p_4589->g_1859.y, p_4589->g_1859.y, p_4589->g_1859.y).x & (l_1827.x <= p_4589->g_1322.y)) == (p_31.f0 >= (p_33 = ((((l_1860 != p_4589->g_1517) != (*l_1411)) < p_4589->g_271.z) < p_31.f8)))) >= 65528UL) <= p_31.f8) < p_31.f8)), 15)), l_1865)), p_4589->g_271.y)))), p_4589->g_1159.z)) || p_31.f3)), l_1866)) >= 18446744073709551612UL)), 4294967287UL))))) || p_33) ^ 4294967286UL);
                        (*p_4589->g_222) = &l_1825;
                    }
                    for (p_31.f6 = 2; (p_31.f6 >= 0); p_31.f6 -= 1)
                    { /* block id: 873 */
                        __shared__ uint32_t *l_1875;
                        l_1875 = nullptr;
                        uint32_t *l_1876[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int32_t *l_1879 = nullptr;
                        int i;
                        p_4589->g_154.x = (safe_sub_func_uint32_t_u_u(((safe_mod(((make_uint4(p_4589->g_1159.x, 0xC3F7EE11L, 3UL, 0xD9928076L) ^ ((((safe_add(((make_uint4(0x6968DE9EL, 0x8CD7C2C0L, (safe_add_func_uint32_t_u_u(p_31.f4, (p_31.f2++))), 5UL) ^ make_uint4((p_34 == make_long3(((*l_1767) |= ((nullptr != (*p_4589->g_1753)) == 1UL)), (p_4589->g_1052.f7 > ((~((**p_4589->g_1753) != (**p_4589->g_1753))) < p_31.f8)), (*p_4589->g_449)).x), p_4589->g_1026.y, p_31.f0, p_31.f0))), make_uint4(0xE228DF98L, 0xE228DF98L, 0xE228DF98L, 0xE228DF98L)))) | make_uint4(8UL, 8UL, 8UL, 8UL))))), make_uint4(0xE08426D6L, 0xE08426D6L, 0xE08426D6L, 0xE08426D6L)))).z, 1UL));
                        l_1880 = l_1879;
                        if (p_33)
                            continue;
                        p_31.f4 ^= p_4589->g_536.z;
                    }
                }
            }
            p_31.f3 |= (safe_lshift_func_int16_t_s_u(p_31.f2, 13));
        }
        else
        { /* block id: 884 */
            __shared__ ulong4 l_1891;
            l_1891 = make_ulong4(0xE9B67A100F9E8D90LL, 0x11E41D468F987C3BLL, 0xE9B67A100F9E8D90LL, 0x11E41D468F987C3BLL);
            struct S0 l_1893 = {18446744073709551615UL,0x656F078F233DE619LL,0x9DE96272L,42,-4L,-1L,0x8EA63B82L,18446744073709551615UL,1UL};
            int32_t l_1915 = 0x197C760FL;
            int4 l_1916 = make_int4(0x3F7E1A8BL, 0x5B149D69L, 0x3F7E1A8BL, 0x5B149D69L);
            struct S1 *l_1981 = nullptr;
            int8_t l_2011 = 0xF8L;
            uint32_t l_2032 = 0xB3708181L;
            int i;
lbl_1883:
            (*p_4589->g_222) = &hip_const_1[0][5][2];
            for (p_31.f0 = 0; (p_31.f0 <= 4); p_31.f0 += 1)
            { /* block id: 888 */
                __shared__ int32_t *l_1892;
                l_1892 = nullptr;
                int32_t l_1895 = 0x1932E26FL;
                int8_t *l_1898 = nullptr;
                int32_t l_1908[1];
                __shared__ int32_t l_1910;
                l_1910 = 0x04FD1D96L;
                int32_t l_1911[8][2][2] = {{{(-5L), (-10L)}, {(-5L), (-10L)}}, {{(-5L), (-10L)}, {(-5L), (-10L)}}, {{(-5L), (-10L)}, {(-5L), (-10L)}}, {{(-5L), (-10L)}, {(-5L), (-10L)}}, {{(-5L), (-10L)}, {(-5L), (-10L)}}, {{(-5L), (-10L)}, {(-5L), (-10L)}}, {{(-5L), (-10L)}, {(-5L), (-10L)}}, {{(-5L), (-10L)}, {(-5L), (-10L)}}};
                int32_t ***l_1926[10];
                int i, j, k;
                for (int i = 0; i < 1; i++)
                    l_1908[i] = 8L;
                for (int i = 0; i < 10; i++)
                    l_1926[i] = &p_4589->g_222;
                for (l_1704.f8 = 0; (l_1704.f8 <= 4); l_1704.f8 += 1)
                { /* block id: 891 */
                    __shared__ uint32_t l_1884;
                    l_1884 = 0xBD8EFDE8L;
                    int32_t *l_1894 = nullptr;
                    __shared__ int8_t *l_1899;
                    l_1899 = nullptr;
                    __shared__ uint32_t l_1909;
                    l_1909 = 0x630C53E9L;
                    if (p_4589->g_1052.f1)
                        goto lbl_1883;
                    if ((p_31.f6 < 6L))
                    { /* block id: 893 */
                        ++l_1884;
                    }
                    else
                    { /* block id: 895 */
                        uint3 l_1905 = make_uint3(0UL, 18446744073709551615UL, 0UL);
                        int i;
                        l_1895 &= make_int3((safe_mul_func_uint16_t_u_u(((8UL != (safe_rshift_func_int64_t_s_u((make_ulong1(p_31.f5).x , (**p_4589->g_448)), make_ulong2(l_1891.w, l_1891.w).x))) && (((((*p_4589->g_222) = l_1892) == (l_1893 , l_1894)) | (0xE9C0B0BB0E30100DLL & 0xD095E2F600C7A5CELL)) || (((((((make_ushort1(p_4589->g_145) ^ make_ushort1(0x35F0L))) ^ make_ushort1(0x4900L))) | make_ushort1(0x6195L))).x >= p_31.f8))), 0xEA4EL)), 0x6FCDFB73L, (-3L)).y;
                        l_1819.x |= (p_4589->g_1334.x = (((safe_sub_func_uint16_t_u_u((l_1898 != l_1899), ((((((safe_lshift(make_ushort2(65534UL, (((make_ushort4(65526UL, ((((nullptr == (**p_4589->g_1544)) , p_34) > ((**p_4589->g_448) != ((*l_1411) <= (safe_mul_func_int32_t_s_s((l_1904[9][0] == (l_1905.z , nullptr)), l_1893.f2))))) | (*l_1411)), 0x92B3L, 65533UL) ^ make_ushort4(0x58CCL, 0x58CCL, 0x58CCL, 0x58CCL))).z > (*l_1411))), make_ushort2(65531UL, 65531UL)))) ^ make_ushort2(0UL, 0UL))) ^ make_ushort2(0UL, 0UL))).x)) >= p_4589->g_1580.y) , p_31.f5));
                    }
                    (*p_4589->g_222) = (((l_1893.f3 ^= (p_34 , (safe_sub_func_int8_t_s_s((l_1908[0] , 1L), l_1909)))) == l_1893.f4) , nullptr);
                    for (l_1895 = 0; (l_1895 <= 4); l_1895 += 1)
                    { /* block id: 905 */
                        uint64_t l_1912 = 0x5095AC9275188B39LL;
                        l_1912--;
                    }
                }
                --l_1923;
                for (p_4589->g_400.f1 = 0; (p_4589->g_400.f1 <= 4); p_4589->g_400.f1 += 1)
                { /* block id: 912 */
                    // attempting a hip shared for loop
                    __shared__ int8_t l_1935[1];
                    for (int i = 0; i < 1; i++)
                        l_1935[i] = 2L;
                    __shared__ int32_t l_1942;
                    l_1942 = 1L;
                    int32_t l_1943 = 0xD6CB85DFL;
                    int32_t l_1944 = 0x518580C6L;
                    int32_t l_1945 = 0L;
                    int32_t l_1946 = 7L;
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_1935[i] = 2L;
                    p_4589->g_1334.x &= (p_31.f4 = (((l_1926[7] == nullptr) , (&p_31 == &p_31)) > p_4589->g_1172.z));
                    if (l_1893.f1)
                        break;
                    for (l_1704.f2 = 0; (l_1704.f2 <= 4); l_1704.f2 += 1)
                    { /* block id: 918 */
                        uint32_t l_1928 = 4294967292UL;
                        uint8_t *l_1933 = nullptr;
                        uint8_t *l_1934 = nullptr;
                        int32_t l_1936 = 0x140CC835L;
                        uint8_t *l_1937 = nullptr;
                        uint8_t *l_1938 = &hip_const_12[0][5][1];
                        uint8_t *l_1939[4][2][3] = {{{nullptr, nullptr, &hip_const_12[6][5][0]}, {nullptr, nullptr, &hip_const_12[6][5][0]}}, {{nullptr, nullptr, &hip_const_12[6][5][0]}, {nullptr, nullptr, &hip_const_12[6][5][0]}}, {{nullptr, nullptr, &hip_const_12[6][5][0]}, {nullptr, nullptr, &hip_const_12[6][5][0]}}, {{nullptr, nullptr, &hip_const_12[6][5][0]}, {nullptr, nullptr, &hip_const_12[6][5][0]}}};
                        int32_t l_1941[5][5][9] = {{{0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}}, {{0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}}, {{0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}}, {{0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}}, {{0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}, {0xDFE29B2EL, 0xEABC92F2L, 0xF9B03208L, 0x90BB7B87L, 0x9FFB845CL, 0x9FFB845CL, 0x90BB7B87L, 0xF9B03208L, 0xEABC92F2L}}};
                        uint8_t l_1947 = 0x75L;
                        int i, j, k;
                        if (p_4589->g_1052.f5)
                            goto lbl_1927;
                        l_1916.x ^= (p_31.f7 || 0x5DL);
                        l_1928++;
                        p_4589->g_154.x &= (l_1893.f6 && make_uchar1(make_uchar4((l_1820.y = ((-5L) || (((safe_unary_minus_func_uint8_t_u((((l_1935[0] = (safe_unary_minus_func_int32_t_s(p_33))) <= (l_1941[0][2][7] &= (--l_1947))) >= p_31.f7))) > ((make_long3(p_4589->g_1950.y, p_4589->g_1950.y, p_4589->g_1950.y).y < 1L) , (safe_mod_func_int16_t_s_s((((*p_4589->g_449) , nullptr) != ((*l_1528) = l_1953)), (((*l_1765) = p_31) , p_4589->g_1052.f3))))) < 65531UL))), 9UL, 0xEFL, 0x87L).y).x);
                    }
                }
            }
            for (p_31.f4 = 0; (p_31.f4 == 18); ++p_31.f4)
            { /* block id: 934 */
                int16_t l_1956 = 0L;
                int16_t **l_1960 = &p_4589->g_326;
                int32_t ****l_1987 = nullptr;
                uint8_t *l_1999 = &hip_const_12[0][5][1];
                __shared__ uint64_t ***l_2004;
                l_2004 = &p_4589->g_1483;
                __shared__ int32_t l_2015;
                l_2015 = (-3L);
                int32_t l_2017 = 0xA01E32E3L;
                __shared__ int32_t l_2018;
                l_2018 = 0x89B797DBL;
                int32_t l_2019[10] = {1L, 1L, 0x0F543487L, 0x0F543487L, 1L, 1L, 1L, 0x0F543487L, 0x0F543487L, 1L};
                // attempting a hip shared for loop
                __shared__ struct S1 l_2051[8][10][3];
                for (int i = 0; i < 8; i++)
                {
                    for (int j = 0; j < 10; j++)
                    {
                        for (int k = 0; k < 3; k++)
                            l_2051[i][j][k] = {0x2AD2BFEEL,958,-11062,0,-42,1UL,0xC42D2169L};
                    }
                }
                int i, j, k;
                if (((*p_4589->g_449) , p_31.f8))
                { /* block id: 935 */
                    uint32_t l_1957 = 18446744073709551607UL;
                    (*l_1765) = l_1893;
                    --l_1957;
                    if (p_31.f1)
                        break;
                    l_1961 = l_1960;
                }
                else
                { /* block id: 940 */
                    ushort1 l_1978 = make_ushort1(0UL);
                    struct S1 *l_1982 = &hip_const_9;
                    int i;
                    if (l_1916.w)
                        break;
                    p_31.f5 |= (0L & ((((make_int1(l_1964.y).x && (((make_uchar3(247UL, ((safe_lshift_func_int16_t_s_u((safe_add_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u((safe_mul_func_uint64_t_u_u(p_31.f0, (make_short2(l_1973.y, l_1973.y).y <= p_34))), (safe_mod_func_int16_t_s_s(((safe_mod_func_int8_t_s_s((make_ushort1(l_1978.x).x | 0xEB24L), (safe_rshift_func_int64_t_s_s(((l_1981 == l_1982) < (make_long4(p_4589->g_1983.z, p_4589->g_1983.z, p_4589->g_1983.z, p_4589->g_1983.z).w && (nullptr == &p_4589->g_448))), 17)))) >= 0x4BL), 2L)))) | p_31.f4), p_31.f0)), l_1984)) > (*l_1411)), 251UL).y & 6L) != p_31.f7) , 9UL)) > (-9L)) | 0xCDL) < p_31.f3));
                }
                for (l_1704.f6 = 0; (l_1704.f6 != (-4)); l_1704.f6 = safe_sub_func_int64_t_s_s(l_1704.f6, 4))
                { /* block id: 946 */
                    uint64_t l_1988 = 6UL;
                    l_1988 = (nullptr == l_1987);
                }
                if ((make_ulong1(p_4589->g_1989.x).x || ((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint32_t_u_u((l_1891.x < make_uchar1(4UL).x), 0xE06D45D2L)) && (l_1994 |= p_31.f5)), ((make_int4((safe_mul_func_uint32_t_u_u((4L < (safe_mul_func_uint8_t_u_u((((**p_4589->g_1544) = (**p_4589->g_1544)) != &l_1765), 0x59L))), (p_31.f8 == (l_1916.z = ((*l_1411) || 1UL))))), p_31.f5, p_4589->g_1052.f8, l_1916.x).x >= p_4589->g_1574) || p_31.f2))) == p_4589->g_1322.y)))
                { /* block id: 952 */
                    uint64_t ***l_2002 = &p_4589->g_1483;
                    __shared__ uint64_t ****l_2003;
                    l_2003 = &l_2002;
                    uint64_t ***l_2006 = &p_4589->g_1483;
                    uint64_t ****l_2005[7][10] = {{&l_2006, &l_2006, &l_2006, &l_2006, &l_2006, nullptr, &l_2006, &l_2006, &l_2006, &l_2006}, {&l_2006, &l_2006, &l_2006, &l_2006, &l_2006, nullptr, &l_2006, &l_2006, &l_2006, &l_2006}, {&l_2006, &l_2006, &l_2006, &l_2006, &l_2006, nullptr, &l_2006, &l_2006, &l_2006, &l_2006}, {&l_2006, &l_2006, &l_2006, &l_2006, &l_2006, nullptr, &l_2006, &l_2006, &l_2006, &l_2006}, {&l_2006, &l_2006, &l_2006, &l_2006, &l_2006, nullptr, &l_2006, &l_2006, &l_2006, &l_2006}, {&l_2006, &l_2006, &l_2006, &l_2006, &l_2006, nullptr, &l_2006, &l_2006, &l_2006, &l_2006}, {&l_2006, &l_2006, &l_2006, &l_2006, &l_2006, nullptr, &l_2006, &l_2006, &l_2006, &l_2006}};
                    int32_t l_2012 = 0x164BC0F6L;
                    int32_t l_2014 = 0x34D11276L;
                    int32_t l_2016 = (-10L);
                    int32_t l_2020 = 0x1FBA59D6L;
                    int32_t l_2021 = 0xBCC356E0L;
                    int64_t l_2023 = 6L;
                    int64_t l_2025 = 0x91C45E3FE44CDC6FLL;
                    int32_t l_2026 = 0x1F4A7136L;
                    int32_t l_2027 = 0xF8BC822CL;
                    int32_t l_2028 = 0x94A93DCCL;
                    __shared__ uint16_t l_2050;
                    l_2050 = 65535UL;
                    int i, j;
                    if ((safe_lshift_func_int32_t_s_u((((*l_2003) = l_2002) != (l_2007 = l_2004)), 24)))
                    { /* block id: 955 */
                        uint32_t l_2008 = 4294967295UL;
                        int32_t l_2013[1][5][9] = {{{(-2L), 0L, 0x563EF6D4L, 0xD64A2DB0L, (-9L), 0x3604303DL, (-9L), 0xD64A2DB0L, 0x563EF6D4L}, {(-2L), 0L, 0x563EF6D4L, 0xD64A2DB0L, (-9L), 0x3604303DL, (-9L), 0xD64A2DB0L, 0x563EF6D4L}, {(-2L), 0L, 0x563EF6D4L, 0xD64A2DB0L, (-9L), 0x3604303DL, (-9L), 0xD64A2DB0L, 0x563EF6D4L}, {(-2L), 0L, 0x563EF6D4L, 0xD64A2DB0L, (-9L), 0x3604303DL, (-9L), 0xD64A2DB0L, 0x563EF6D4L}, {(-2L), 0L, 0x563EF6D4L, 0xD64A2DB0L, (-9L), 0x3604303DL, (-9L), 0xD64A2DB0L, 0x563EF6D4L}}};
                        int i, j, k;
                        l_2008++;
                        l_2029++;
                    }
                    else
                    { /* block id: 958 */
                        uint64_t *****l_2042 = &l_2005[4][8];
                        uint64_t *****l_2043[7];
                        uint8_t *l_2048[10][10][2] = {{{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}, {{&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}, {&p_4589->g_1149, nullptr}}};
                        int32_t l_2049 = 0xC9989441L;
                        int i, j, k;
                        for (int i = 0; i < 7; i++)
                            l_2043[i] = nullptr;
                        ++l_2032;
                        p_31.f5 |= (safe_rshift_func_uint8_t_u_s(l_2037, 4));
                        l_1820.y ^= ((make_int4((((safe_lshift_func_uint8_t_u_u((safe_mul_func_int64_t_s_s((**p_4589->g_448), ((nullptr != (*p_4589->g_222)) < ((l_2044 = ((*l_2042) = &l_2007)) == nullptr)))), (safe_div_func_int32_t_s_s(((l_2049 = (l_1916.y = (((l_1916.x & (nullptr != l_2047)) | (((p_31.f1 , p_31.f0) ^ p_31.f8) && 0x8B70C198L)) , p_31.f0))) == 0xFDL), l_2020)))) , 1L) || l_1915), 0x680E1664L, 0xCEE4117AL, 0x1B963B85L) ^ make_int4((-5L), (-5L), (-5L), (-5L)))).y;
                        l_2050 &= (-4L);
                    }
                    (*p_4589->g_877) = l_2051[4][7][2];
                    return l_2052;
                }
                else
                { /* block id: 970 */
                    int8_t l_2058 = (-6L);
                    int3 l_2061 = make_int3((-1L), (-10L), (-1L));
                    __shared__ char3 l_2068;
                    l_2068 = make_char3((-1L), 0xA7L, (-1L));
                    int64_t **l_2075 = &p_4589->g_449;
                    ushort2 l_2080 = make_ushort2(0xE4B2L, 0x42F4L);
                    int32_t ***l_2081 = nullptr;
                    __shared__ int32_t ***l_2082;
                    l_2082 = nullptr;
                    int32_t ***l_2083 = &p_4589->g_222;
                    __shared__ uint16_t *l_2084;
                    l_2084 = nullptr;
                    uint16_t *l_2085 = nullptr;
                    uint16_t *l_2086 = &p_4589->g_361[9][3];
                    int32_t *l_2088 = &l_1994;
                    int i;
                    p_31.f3 = ((((((((safe_mod(((make_int2(l_2055.x, l_2055.x) ^ make_int2((((safe_sub_func_uint16_t_u_u((l_2058 && ((~((safe_add(make_int1(l_2061.x), make_int1((((0xAF0EDDEEL <= (make_int3(0x49EBB7B9L, 0x4F035FA3L, 1L).y , (0x6842F25D829A6A29LL || make_ulong1(l_2032).x))) , ((((*l_2088) = (safe_unary_minus_func_int32_t_s(((safe_sub_func_int64_t_s_s(((p_33 != ((safe_mul_func_int64_t_s_s((safe_unary_minus_func_int32_t_s((((make_char1(l_2068.y) & ((((((safe_mul(make_char1(2L), ((make_char1(1L) & ((make_char1((safe_div_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u((((l_2075 == nullptr) , make_ulong4((make_int4(1L, (make_short2(p_4589->g_2076.z, p_4589->g_2076.z).y <= ((safe_mul(make_ushort1(p_4589->g_2079.z), ((make_ushort1(l_2080.x) & make_ushort1(make_ushort1(65533UL).x)))))).x), (((*l_2086) ^= (((*l_2083) = &p_4589->g_223) != &l_1730)) ^ p_31.f2), p_31.f6).x , 0x8A024175F0D5B613LL), p_33, 0x9BC37EE2FB1B2DBBLL, 1UL).w) && l_2087), p_33)), 0xC2F0C947L))) & make_char1((-9L))))))))) ^ make_char1(0x59L))) | make_char1(0x5FL))))).x == p_4589->g_1847.y))), 0xDECBCEE837F8DF14LL)) , p_31.f3)) && 0xE8C067EAB9E15910LL), 0L)) ^ (-6L))))) , p_4589->g_1983.z) >= hip_const_9.f2)) <= (-3L)))))))).x), 65535UL)) == l_1893.f8) < 0xB6L), l_1891.x))), make_int2(0x15D999C9L, 0x15D999C9L)))) ^ make_int2(0x98AD7FB3L, 0x98AD7FB3L))) ^ make_int2(0x31FEA88AL, 0x31FEA88AL))) ^ make_int2(0x370243D3L, 0x370243D3L))).x;
                }
            }
        }
        for (l_1704.f5 = 22; (l_1704.f5 <= 24); ++l_1704.f5)
        { /* block id: 980 */
            int64_t l_2091 = 0x669710716CA97084LL;
            __shared__ int32_t l_2092;
            l_2092 = 0x399D75D5L;
            int32_t l_2094 = (-1L);
            int32_t l_2095 = 0x9D446968L;
            int32_t l_2097 = (-10L);
            int32_t l_2098 = 0x8DB38CF6L;
            // attempting a hip shared for loop
            __shared__ int32_t l_2099[2];
            for (int i = 0; i < 2; i++)
                l_2099[i] = 0x1F7E8DF9L;
            int i;
            for (int i = 0; i < 2; i++)
                l_2099[i] = 0x1F7E8DF9L;
            l_2100--;
            l_1765 = &p_31;
        }
        --l_2107;
        if ((l_2110 != (make_uint2(l_2111.x, l_2111.x).x , l_2110)))
        { /* block id: 985 */
            uint32_t l_2114 = 2UL;
            int32_t l_2115 = 1L;
            uint8_t l_2118 = 0UL;
            int64_t *****l_2133 = &l_1698;
            uint32_t *l_2134 = &p_4589->g_1052.f2;
            uint16_t *l_2135 = &hip_const_6;
            struct S1 *l_2136 = nullptr;
            __shared__ uint8_t *l_2137;
            l_2137 = nullptr;
            uint8_t *l_2138 = &hip_const_12[6][4][2];
            uint8_t *l_2139 = &hip_const_11;
            uint8_t *l_2140 = &p_4589->g_1149;
            int32_t *l_2141 = &l_1447;
            if ((safe_div_func_int64_t_s_s(((l_2114 != l_2115) != (((*l_2140) |= (l_2118 & (((p_4589->g_210.x = (p_4589->g_837 = (((safe_div_func_uint16_t_u_u((((~make_uchar3((((safe_rshift_func_uint64_t_u_u(p_31.f1, 0)) > (safe_mod_func_uint16_t_u_u((p_4589->g_907.x = ((make_ushort3(l_2125.x, l_2125.x, l_2125.x) ^ ((((~make_ushort3((((((safe_sub_func_int32_t_s_s(((*l_2052) ^ p_31.f4), make_int4(l_2128.x, l_2128.x, l_2128.x, l_2128.x).x)) || (safe_div_func_int32_t_s_s((*l_2052), ((*l_2134) = (safe_add_func_int64_t_s_s((l_2133 != p_4589->g_1699), p_31.f4)))))) && (*p_4589->g_449)) && 0L) == 8L), 1UL, p_4589->g_1333.z))) ^ make_ushort3(1UL, 1UL, 1UL))))).y), p_31.f3))) || p_31.f8), 5UL, 1UL).x) , p_31.f3) <= 1UL), 7UL)) , l_2136) != nullptr))) && (*l_1411)) && l_2118))) && 0UL)), p_31.f6)))
            { /* block id: 991 */
                for (p_4589->g_1242 = 4; (p_4589->g_1242 >= 0); p_4589->g_1242 -= 1)
                { /* block id: 994 */
                    int32_t *l_2142 = &p_4589->g_1052.f4;
                    return l_2142;
                }
            }
            else
            { /* block id: 997 */
                int32_t *l_2143[5];
                int i;
                for (int i = 0; i < 5; i++)
                    l_2143[i] = &p_4589->g_928;
                return l_2143[1];
            }
        }
        else
        { /* block id: 1000 */
            uint64_t l_2144 = 0x1707B4371289D53DLL;
            int32_t l_2145 = (-1L);
            int32_t l_2188[4];
            char3 l_2206 = make_char3((-7L), (-8L), (-7L));
            int32_t ***l_2213 = &p_4589->g_222;
            __shared__ int32_t ****l_2212;
            l_2212 = &l_2213;
            uint2 l_2232 = make_uint2(0x15E2EBB4L, 4294967289UL);
            uint8_t l_2254 = 248UL;
            uint64_t l_2265 = 0UL;
            struct S1 ****l_2277 = &p_4589->g_1754;
            uint64_t ***l_2314 = &p_4589->g_1483;
            ulong1 l_2367 = make_ulong1(0xA7ECAA9819C8BBB5LL);
            __shared__ int16_t l_2424;
            l_2424 = 0xEE3EL;
            int i;
            for (int i = 0; i < 4; i++)
                l_2188[i] = 0xF76AE1CFL;
            l_2145 = l_2144;
            for (p_33 = 0; (p_33 <= 5); p_33 += 1)
            { /* block id: 1004 */
                int64_t l_2146 = 0x0F9FEA2469C85389LL;
                uint16_t l_2175 = 65535UL;
                int8_t l_2176 = 1L;
                __shared__ short3 l_2180;
                l_2180 = make_short3(0x10E0L, 0x9EC9L, 0x10E0L);
                struct S1 ***l_2182 = &l_1904[9][0];
                uint8_t l_2183 = 1UL;
                uint32_t l_2186 = 0xB0BE86C8L;
                __shared__ int32_t l_2187;
                l_2187 = (-6L);
                __shared__ int32_t l_2190;
                l_2190 = 0L;
                int32_t l_2192 = 0L;
                __shared__ int2 l_2193;
                l_2193 = make_int2(1L, 0x04A489FBL);
                struct S1 l_2266 = {0L,-715,-4957,0,26,0x37C70E36L,18446744073709551607UL};
                int16_t **l_2278 = &p_4589->g_326;
                __shared__ int32_t *l_2279;
                l_2279 = &l_2188[3];
                int64_t ****l_2285[9][1] = {{&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}, {&p_4589->g_447[3][1][0]}};
                int8_t l_2331 = 0x12L;
                int i, j;
                l_2146 = (0x411C0163L > hip_const_5.f1);
                for (l_1684.f0 = 2; (l_1684.f0 <= 7); l_1684.f0 += 1)
                { /* block id: 1008 */
                    __shared__ uint16_t *l_2165;
                    l_2165 = &hip_const_14[2][4];
                    uint16_t *l_2166 = nullptr;
                    struct S1 ***l_2181 = &l_1904[9][0];
                    int32_t l_2191 = (-5L);
                    int32_t l_2194 = 0x5FC377B1L;
                    int32_t l_2195 = (-3L);
                    int32_t l_2196 = 0x71E7ED79L;
                    int32_t l_2197 = 1L;
                    int i, j;
                    if ((((nullptr == l_1697[p_33]) & ((safe_add_func_uint64_t_u_u(l_2103[(p_33 + 3)][l_1684.f0], (safe_add_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((((p_31.f6 && (safe_div_func_int8_t_s_s((safe_div_func_int64_t_s_s((make_int3(0xCA2591F1L, 9L, (p_31.f3 >= (safe_mod_func_int16_t_s_s(((&p_4589->g_1038[5][1] != &p_4589->g_1038[4][3]) , ((safe_lshift_func_int32_t_s_u((safe_lshift_func_int8_t_s_s(((safe_div_func_int16_t_s_s(((p_4589->g_1112++) > (safe_sub_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_31.f3, ((!p_34) || p_31.f7))), l_2145)) & 1UL), 0xDCCBL))), p_31.f8)) , l_2175), (*l_1411))), 7)) >= 0xFD1E7834L)), (*l_1411))))).y , l_2175), (*l_2052))), 6L))) , p_32) != &l_2104), 1L)), p_31.f4)))) && p_31.f0)) < l_2176))
                    { /* block id: 1010 */
                        __shared__ int64_t *****l_2177;
                        l_2177 = &l_1698;
                        int32_t l_2184 = 0x1588EF51L;
                        uint16_t *l_2185[8][9] = {{&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}, {&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}, {&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}, {&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}, {&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}, {&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}, {&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}, {&hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], &hip_const_14[2][4], nullptr, &l_2175, nullptr, &l_2175, nullptr}};
                        __shared__ int4 l_2189;
                        l_2189 = make_int4((-6L), 0x4EC3989DL, (-6L), 0x4EC3989DL);
                        int32_t l_2201 = (-3L);
                        int i, j;
                        l_2187 &= make_int3(((p_4589->g_109.x = (0x56EFL == (p_33 && (l_2184 = (l_2183 |= ((&l_1698 == l_2177) && (safe_div_func_int8_t_s_s((make_short3(l_2180.x, l_2180.x, l_2180.x).x || (((*p_4589->g_1753) = l_2181) == ((0UL <= (((***l_2044) = nullptr) == nullptr)) , l_2182))), p_31.f6)))))))) || l_2103[(p_33 + 3)][l_1684.f0]), l_2186, 0x860E55EBL).x;
                        --l_2198;
                        if (l_2201)
                            continue;
                        return l_2202;
                    }
                    else
                    { /* block id: 1020 */
                        long1 l_2203 = make_long1(0xFCF6D3D5DD967050LL);
                        int32_t l_2216 = (-6L);
                        uint32_t *l_2217 = nullptr;
                        uint32_t *l_2218 = &hip_const_7[2].f2;
                        uint64_t *l_2235[8][4] = {{nullptr, nullptr, &p_4589->g_113, nullptr}, {nullptr, nullptr, &p_4589->g_113, nullptr}, {nullptr, nullptr, &p_4589->g_113, nullptr}, {nullptr, nullptr, &p_4589->g_113, nullptr}, {nullptr, nullptr, &p_4589->g_113, nullptr}, {nullptr, nullptr, &p_4589->g_113, nullptr}, {nullptr, nullptr, &p_4589->g_113, nullptr}, {nullptr, nullptr, &p_4589->g_113, nullptr}};
                        struct S1 l_2236 = {-1L,678,-5675,1,22,18446744073709551611UL,18446744073709551615UL};
                        int i, j;
                        l_2236 = ((*p_4589->g_877) = func_42(((((l_2193.x |= (((make_long2(l_2203.x, l_2203.x).y || make_long1(1L).x) == (((((safe_div_func_int64_t_s_s((make_char4(l_2206.z, l_2206.z, l_2206.z, l_2206.z).w & 0x91L), ((safe_mul(make_long4(p_4589->g_2209.x, p_4589->g_2209.x, p_4589->g_2209.x, p_4589->g_2209.x), make_long4(((l_2216 = (p_4589->g_361[2][2] = ((safe_div_func_int32_t_s_s((~(nullptr == l_2212)), (*l_1411))) ^ (safe_rshift_func_int64_t_s_u(0xCF1C0D23D3AA5F46LL, (~p_31.f7)))))) == (((p_4589->g_1744.w = make_uint2(0UL, 4294967295UL).y) <= ((safe_sub(make_uint2((make_int3(l_2221.z, l_2221.z, l_2221.z).x != (p_4589->g_143.y > (safe_unary_minus_func_uint32_t_u(p_31.f8)))), 4294967290UL), ((safe_lshift(((make_uint2(l_2225.x, l_2225.x) ^ ((safe_add(make_uint2(0UL, 0x8AD99BECL), make_uint2(0x38EAE468L, (safe_add_func_int64_t_s_s(((p_31.f5 &= (make_short2((((safe_rshift(make_uint3(l_2232.y, l_2232.y, l_2232.y), make_uint3(32, 32, 32)))).x ^ (safe_div_func_uint64_t_u_u(0x63E3D2356614A35CLL, l_2146))), 0x93C9L).x && p_31.f4)) | p_4589->g_1334.x), p_31.f4)))))))), make_uint2(32, 32))))))).y) , p_31.f4)), 0xB2CF0BF8D7AA9058LL, 0xFE5C2E9B854570E7LL, 0x5C5FE2098A061C6BLL)))).w)) | 1L) == p_31.f7) ^ p_31.f8) && 0L)) & p_31.f2)) != p_31.f8) , nullptr) != nullptr), &l_2187, p_4589));
                    }
                    (*l_2202) = (safe_rshift_func_int8_t_s_s((((safe_rshift_func_uint32_t_u_u((*l_2052), p_31.f7)) < ((((p_31.f0 = (0x8B9F422C1256B86DLL ^ (l_2193.x = (make_ushort1(0xFAF7L).x , ((1L > (((safe_unary_minus_func_uint32_t_u((18446744073709551615UL >= p_31.f7))) == (safe_unary_minus_func_uint32_t_u((safe_rshift_func_uint16_t_u_u(p_34, (((safe_rshift_func_int32_t_s_s(((((safe_sub_func_int16_t_s_s(((l_1684 , l_2110) == l_2249), p_31.f1)) && 0x0D1A7C1AL) <= p_33) != p_33), p_31.f8)) & l_2175) != p_31.f2)))))) != 252UL)) != 0xF728714BL))))) , (-9L)) != p_31.f8) < 0xCFCB14A608771EA0LL)) & 0xB5F9L), 0));
                    if ((((*p_4589->g_877) , ((safe_sub_func_int64_t_s_s(((safe_mul_func_uint32_t_u_u((p_4589->g_1507.x , p_4589->g_706.z), (l_2103[(p_33 + 3)][l_1684.f0] ^ ((l_2254 = (**p_4589->g_448)) ^ (p_4589->g_400.f4 >= ((safe_mul_func_int32_t_s_s((safe_mul_func_int8_t_s_s(make_char4(((safe_mul_func_uint8_t_u_u(make_uchar4(p_4589->g_2261.x, p_4589->g_2261.x, p_4589->g_2261.x, p_4589->g_2261.x).y, make_char4(l_2262.y, l_2262.y, l_2262.y, l_2262.y).x)) < (safe_add_func_int16_t_s_s(1L, p_31.f3))), 5L, p_31.f5, p_31.f2).w, l_2265)), p_31.f1)) , p_4589->g_605)))))) < p_31.f4), p_33)) & l_2191)) < p_31.f7))
                    { /* block id: 1033 */
                        struct S1 l_2267[7][6] = {{{9L,-1614,12639,1,-16,0x9BC1A4CFL,18446744073709551609UL}, {0x4667D131L,-1660,-10995,0,-18,3UL,0x1AD91772L}, {3L,1633,6957,0,-26,0xF7D63653L,18446744073709551615UL}, {0xAD93938DL,-1988,15973,1,25,0x514C2C96L,0UL}, {0x437A5531L,-529,-3542,1,42,0x665F021DL,18446744073709551615UL}, {2L,-1916,-8695,1,25,2UL,9UL}}, {{9L,-1614,12639,1,-16,0x9BC1A4CFL,18446744073709551609UL}, {0x4667D131L,-1660,-10995,0,-18,3UL,0x1AD91772L}, {3L,1633,6957,0,-26,0xF7D63653L,18446744073709551615UL}, {0xAD93938DL,-1988,15973,1,25,0x514C2C96L,0UL}, {0x437A5531L,-529,-3542,1,42,0x665F021DL,18446744073709551615UL}, {2L,-1916,-8695,1,25,2UL,9UL}}, {{9L,-1614,12639,1,-16,0x9BC1A4CFL,18446744073709551609UL}, {0x4667D131L,-1660,-10995,0,-18,3UL,0x1AD91772L}, {3L,1633,6957,0,-26,0xF7D63653L,18446744073709551615UL}, {0xAD93938DL,-1988,15973,1,25,0x514C2C96L,0UL}, {0x437A5531L,-529,-3542,1,42,0x665F021DL,18446744073709551615UL}, {2L,-1916,-8695,1,25,2UL,9UL}}, {{9L,-1614,12639,1,-16,0x9BC1A4CFL,18446744073709551609UL}, {0x4667D131L,-1660,-10995,0,-18,3UL,0x1AD91772L}, {3L,1633,6957,0,-26,0xF7D63653L,18446744073709551615UL}, {0xAD93938DL,-1988,15973,1,25,0x514C2C96L,0UL}, {0x437A5531L,-529,-3542,1,42,0x665F021DL,18446744073709551615UL}, {2L,-1916,-8695,1,25,2UL,9UL}}, {{9L,-1614,12639,1,-16,0x9BC1A4CFL,18446744073709551609UL}, {0x4667D131L,-1660,-10995,0,-18,3UL,0x1AD91772L}, {3L,1633,6957,0,-26,0xF7D63653L,18446744073709551615UL}, {0xAD93938DL,-1988,15973,1,25,0x514C2C96L,0UL}, {0x437A5531L,-529,-3542,1,42,0x665F021DL,18446744073709551615UL}, {2L,-1916,-8695,1,25,2UL,9UL}}, {{9L,-1614,12639,1,-16,0x9BC1A4CFL,18446744073709551609UL}, {0x4667D131L,-1660,-10995,0,-18,3UL,0x1AD91772L}, {3L,1633,6957,0,-26,0xF7D63653L,18446744073709551615UL}, {0xAD93938DL,-1988,15973,1,25,0x514C2C96L,0UL}, {0x437A5531L,-529,-3542,1,42,0x665F021DL,18446744073709551615UL}, {2L,-1916,-8695,1,25,2UL,9UL}}, {{9L,-1614,12639,1,-16,0x9BC1A4CFL,18446744073709551609UL}, {0x4667D131L,-1660,-10995,0,-18,3UL,0x1AD91772L}, {3L,1633,6957,0,-26,0xF7D63653L,18446744073709551615UL}, {0xAD93938DL,-1988,15973,1,25,0x514C2C96L,0UL}, {0x437A5531L,-529,-3542,1,42,0x665F021DL,18446744073709551615UL}, {2L,-1916,-8695,1,25,2UL,9UL}}};
                        int64_t **l_2270 = &p_4589->g_449;
                        __shared__ int32_t *l_2271;
                        l_2271 = nullptr;
                        int i, j;
                        l_2267[2][1] = l_2266;
                        p_31.f5 ^= (safe_lshift_func_int8_t_s_u((l_2270 == (l_2183 , &p_32)), 3));
                        (*p_4589->g_222) = l_2271;
                        l_2272 = (*p_4589->g_877);
                    }
                    else
                    { /* block id: 1038 */
                        p_31.f3 = ((*l_2202) = (safe_mul_func_int8_t_s_s((hip_const_9.f6 | (safe_mul_func_int16_t_s_s((-1L), p_31.f4))), (l_2277 == &p_4589->g_1754))));
                    }
                    l_2278 = nullptr;
                }
                for (l_1704.f6 = 0; (l_1704.f6 <= 5); l_1704.f6 += 1)
                { /* block id: 1046 */
                    // attempting a hip shared for loop
                    __shared__ int64_t ****l_2283[5][8][3];
                    for (int i = 0; i < 5; i++)
                    {
                        for (int j = 0; j < 8; j++)
                        {
                            for (int k = 0; k < 3; k++)
                                l_2283[i][j][k] = &p_4589->g_447[4][4][2];
                        }
                    }
                    int16_t l_2296[10] = {0xFD5AL, 0x7C3DL, 0xFD5AL, 0x7C3DL, 0xFD5AL, 0x7C3DL, 0xFD5AL, 0x7C3DL, 0xFD5AL, 0x7C3DL};
                    uint8_t *l_2297 = nullptr;
                    uint8_t *l_2298 = &hip_const_11;
                    uint8_t *l_2299 = nullptr;
                    uint8_t *l_2300 = &l_2254;
                    int32_t l_2305 = 5L;
                    __shared__ int32_t l_2308;
                    l_2308 = 1L;
                    int32_t l_2309[6] = {0x61BA04F4L, (-2L), 0x61BA04F4L, (-2L), 0x61BA04F4L, (-2L)};
                    uint16_t l_2310 = 0x864EL;
                    int i, j, k;
                    p_31.f5 = ((((l_2279 = &l_1451) == nullptr) <= (((*l_2202) = (make_uint3(l_2280.y, l_2280.y, l_2280.y).y ^ p_31.f7)) | ((p_31.f3 > ((safe_mod_func_int64_t_s_s((l_2283[0][3][0] != (l_2285[8][0] = l_2284)), p_31.f0)) < (safe_rshift_func_uint32_t_u_u(make_uint1(0x2015BE61L).x, 1)))) > (*p_4589->g_449)))) & ((*l_2300) &= (safe_sub_func_uint8_t_u_u(((((safe_div(((((safe_div(((safe_div(make_uint2(0x0FE9165DL, 0x138C60D9L), make_uint2(l_2296[7], p_31.f8)))), make_uint2(0xEAADEC7FL, 0xEAADEC7FL)))) & make_uint2(0x2BB0B0F9L, 0x2BB0B0F9L))), make_uint2(4294967287UL, 4294967287UL)))).y && p_34) <= p_4589->g_1580.x), p_31.f6))));
                    if (((safe_div_func_int16_t_s_s((l_2305 = ((*l_2202) &= (safe_unary_minus_func_int16_t_s(make_short3(p_4589->g_2304.x, p_4589->g_2304.x, p_4589->g_2304.x).y)))), 2L)) , make_int1(p_4589->g_2306.y).x))
                    { /* block id: 1054 */
                        uint64_t ***l_2313[5] = {nullptr, &p_4589->g_1483, nullptr, &p_4589->g_1483, nullptr};
                        int i;
                        --l_2310;
                        (*l_2202) ^= p_31.f7;
                        (*l_2202) &= (((*l_2044) = l_2313[0]) == l_2314);
                    }
                    else
                    { /* block id: 1059 */
                        return l_2315;
                    }
                    (**l_2213) = &l_2309[5];
                }
                for (l_2096 = 0; (l_2096 <= 4); l_2096 += 1)
                { /* block id: 1066 */
                    long1 l_2316 = make_long1((-1L));
                    int32_t l_2333 = 0x56810FDAL;
                    int32_t l_2334 = (-2L);
                    int32_t l_2335 = 1L;
                    __shared__ int4 l_2336;
                    l_2336 = make_int4(1L, 0x2AC75646L, 1L, 0x2AC75646L);
                    uint16_t l_2340 = 65530UL;
                    uint8_t l_2370 = 0x65L;
                    int i;
                    for (l_1684.f6 = 1; (l_1684.f6 <= 4); l_1684.f6 += 1)
                    { /* block id: 1069 */
                        int32_t l_2332 = 1L;
                        int i;
                        (*l_2279) &= ((l_1792[l_1684.f6] == ((~make_long2(l_2316.x, l_2316.x))).x) != (safe_div_func_uint8_t_u_u(0x2DL, ((make_uint1(l_2319.x).x , (safe_add_func_int8_t_s_s(((nullptr != l_2322[1][0]) < (p_4589->g_811.y ^= 0xD3C6L)), ((p_31.f7 != (safe_mul_func_int8_t_s_s((safe_lshift_func_uint32_t_u_u(p_4589->g_537.x, 27)), (l_2332 = ((safe_add_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(l_2331, 0x33L)), l_2316.x)) < 0x9C74L))))) , 0x65L)))) , p_31.f3))));
                    }
                    ++l_2337;
                    for (p_4589->g_928 = 0; (p_4589->g_928 <= 5); p_4589->g_928 += 1)
                    { /* block id: 1077 */
                        uint32_t **l_2345 = &p_4589->g_851;
                        uint64_t *l_2352 = &p_4589->g_400.f1;
                        int8_t *l_2364 = &p_4589->g_1922;
                        int8_t *l_2368 = &l_2331;
                        int8_t *l_2369 = &l_2176;
                        int i;
                        l_2340++;
                        l_2333 |= ((safe_mul_func_int32_t_s_s((nullptr == l_2345), l_1792[l_2096])) > make_ulong3(((((l_1826[(l_2096 + 5)] != ((safe_mod_func_int16_t_s_s((make_char2(2L, ((safe_add_func_int64_t_s_s(l_2336.z, (+((make_long3((safe_lshift_func_uint64_t_u_s(((*l_2352) = p_31.f3), 39)), 0xF64E59CE61E25E09LL, make_long3((((make_long3(0x47FCA6103F007128LL, (((safe_unary_minus_func_int64_t_s(((safe_add_func_uint8_t_u_u((*l_2202), (((p_31.f1 ^ l_1826[(l_2096 + 5)]) ^ p_31.f2) || l_1792[l_2096]))) > 18446744073709551615UL))) , 0xAFC20E50L) || (-1L)), 0xC1B7EBBC507477ADLL).z && p_31.f6) ^ p_34) , l_2356), 1L, 0xA7754B24D44F6793LL).z) & make_long3(0L, 0L, 0L))).z))) <= p_31.f6)).x , p_31.f5), p_31.f2)) >= p_31.f7)) < p_4589->g_1560.x) != p_31.f8) == p_31.f3), l_2335, 1UL).y);
                        (*l_2202) &= (make_uchar2((0x5FL >= ((*l_2369) = ((safe_add_func_uint16_t_u_u((nullptr == p_4589->g_2359), ((nullptr != &l_2024) && ((safe_rshift_func_int32_t_s_u((((*l_2364) = (0xDDL < make_uchar2(make_uchar3(1UL, 255UL, make_uchar2(0xAEL, 0x99L).x).z, 246UL).x)) != ((*l_2368) ^= ((l_1792[l_2096] ^= ((safe_div_func_int32_t_s_s(((make_ulong3(l_2367.x, l_2367.x, l_2367.x).y & ((&l_2182 != &p_4589->g_1754) < p_31.f4)) , l_2336.x), hip_const_9.f3)) != p_4589->g_1149)) && l_1792[l_2096]))), p_4589->g_1172.x)) , 0xB00AL)))) != 0xEAL))), 0xF2L).x <= p_31.f3);
                        if (p_33)
                            break;
                    }
                    l_2370++;
                }
            }
            l_2373 = &l_2272;
            for (l_1704.f4 = (-7); (l_1704.f4 == 26); l_1704.f4 = safe_add_func_uint8_t_u_u(l_1704.f4, 1))
            { /* block id: 1094 */
                int8_t l_2376[8] = {(-10L), (-10L), 5L, (-10L), (-10L), 5L, (-10L), (-10L)};
                int32_t l_2378 = 5L;
                int32_t l_2379 = 0xFA3717C7L;
                int32_t l_2380[8] = {0xDE74A769L, 0xDE74A769L, 0L, 0xDE74A769L, 0xDE74A769L, 0L, 0xDE74A769L, 0xDE74A769L};
                __shared__ uint32_t l_2384;
                l_2384 = 0xE5940F56L;
                long3 l_2407 = make_long3(0x526254BA240C6A0ELL, 0L, 0x526254BA240C6A0ELL);
                ushort3 l_2415 = make_ushort3(65535UL, 65526UL, 65535UL);
                int i;
                (*p_4589->g_2359) = (*p_4589->g_2359);
                l_2384++;
                for (p_4589->g_1922 = 0; (p_4589->g_1922 < (-4)); p_4589->g_1922 = safe_sub_func_uint32_t_u_u(p_4589->g_1922, 1))
                { /* block id: 1099 */
                    int32_t l_2391 = 0L;
                    uint32_t *l_2398 = &p_4589->g_1052.f2;
                    __shared__ uint32_t **l_2397;
                    l_2397 = &l_2398;
                    uint64_t *l_2421 = &p_4589->g_400.f1;
                    uint8_t *l_2425[4][9] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &hip_const_12[0][5][1]}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &hip_const_12[0][5][1]}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &hip_const_12[0][5][1]}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &hip_const_12[0][5][1]}};
                    int32_t l_2426 = (-1L);
                    // attempting a hip shared for loop
                    __shared__ int32_t l_2427[6];
                    for (int i = 0; i < 6; i++)
                        l_2427[i] = 0xEFE62885L;
                    int i, j;
                    l_2389 = (-3L);
                    if (make_int2(l_2390.x, l_2390.x).x)
                    { /* block id: 1101 */
                        __shared__ int8_t l_2392;
                        l_2392 = 0x6CL;
                        int32_t l_2393 = (-1L);
                        uint64_t l_2394 = 0xEEA30E34EEC95FC4LL;
                        uint32_t **l_2400 = &l_2398;
                        uint32_t ***l_2399 = &l_2400;
                        ++l_2394;
                        (*l_2399) = l_2397;
                    }
                    else
                    { /* block id: 1104 */
                        p_31.f5 = 0xEB9A6EB2L;
                    }
                    (*l_2202) = ((l_2427[5] = ((((*l_2398) &= (safe_rshift_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(((make_uchar1(p_4589->g_2405.y) & make_uchar1(p_4589->g_2406.x))).x, (make_long1(l_2407.y).x >= ((l_2426 = (l_2380[5] |= (safe_add_func_uint32_t_u_u(p_31.f1, (((p_31.f8 != make_short1(l_2410.y).x) < (safe_rshift_func_uint32_t_u_u(0UL, (safe_add_func_uint16_t_u_u((((*l_2373) , l_2391) > 1UL), 0xD792L))))) || ((l_2376[6] && ((((make_ushort3(l_2415.z, l_2415.z, l_2415.z).y & (+(safe_rshift_func_int32_t_s_u(((((((safe_div_func_uint32_t_u_u((make_ushort3(p_4589->g_2420.z, p_4589->g_2420.z, p_4589->g_2420.z).z , (((~(--(*l_2421))) != (l_2424 ^ l_2391)) , p_31.f4)), p_31.f8)) , 0L) || 0x4BEC1017L) == hip_const_5.f2) ^ l_2378) <= l_2415.y), p_4589->g_1159.z)))) > (*p_4589->g_449)) != 0x6116L) < hip_const_9.f3)) , p_4589->g_1989.x)))))) ^ p_31.f7)))) > (*l_2052)), p_4589->g_1468.w))) || p_31.f6) == 1UL)) && l_2428);
                }
            }
        }
    }
    else
    { /* block id: 1116 */
        int32_t *l_2429 = &l_1453[2][1][2];
        __shared__ int32_t *l_2430;
        l_2430 = &p_4589->g_400.f4;
        __shared__ int32_t *l_2431;
        l_2431 = &l_1452;
        int32_t *l_2432[5] = {&hip_const_7[2].f5, &hip_const_13, &hip_const_7[2].f5, &hip_const_13, &hip_const_7[2].f5};
        int64_t l_2433 = 0xE9710AED58DB49EALL;
        uint8_t l_2434 = 0xD4L;
        int64_t ****l_2453 = &p_4589->g_447[2][5][1];
        struct S1 *l_2458[5] = {nullptr, &hip_const_5, nullptr, &hip_const_5, nullptr};
        __shared__ struct S0 l_2474;
        l_2474 = {1UL,18446744073709551609UL,0xA2137CBEL,-47,-4L,0xCC428108L,0x78A7B8B3L,0x4337D25AL,0xDA2A9E8BL};
        uint16_t l_2505 = 65534UL;
        __shared__ ushort3 l_2538;
        l_2538 = make_ushort3(0x662FL, 3UL, 0x662FL);
        short3 l_2562 = make_short3(1L, 4L, 1L);
        __shared__ ushort2 l_2610;
        l_2610 = make_ushort2(65531UL, 65535UL);
        int32_t l_2637 = 0x371DD9D8L;
        uint8_t l_2644 = 255UL;
        uint64_t **l_2659 = &p_4589->g_115[1];
        struct S1 ****l_2698 = &p_4589->g_1754;
        __shared__ int64_t l_2707;
        l_2707 = 0xBA6F108B80B562DDLL;
        char3 l_2737 = make_char3((-10L), 0xFEL, (-10L));
        uchar3 l_2749 = make_uchar3(0UL, 0UL, 0UL);
        uint32_t l_2806 = 1UL;
        int32_t *l_2812 = &p_4589->g_1052.f4;
        __shared__ int32_t l_2814;
        l_2814 = 0xE70CF8BAL;
        int8_t l_2816[5][9][5] = {{{0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}}, {{0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}}, {{0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}}, {{0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}}, {{0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}, {0x65L, 5L, 0x3BL, 1L, 0x1CL}}};
        int i, j, k;
lbl_2647:
        l_2434--;
        if (((safe_sub_func_int32_t_s_s(p_31.f7, (safe_lshift_func_uint32_t_u_s((((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(0x5C95L, ((p_31.f5 < (-1L)) > (*l_1411)))), (~(safe_mul_func_int16_t_s_s(((65535UL > ((((safe_add_func_int8_t_s_s((safe_mod_func_uint8_t_u_u((((safe_mod_func_uint64_t_u_u((nullptr == l_2453), ((make_long4((&p_4589->g_448 != (*l_2453)), 6L, (*l_2430), 0L) ^ make_long4(0xC9602C67A4F30DC7LL, 0xC9602C67A4F30DC7LL, 0xC9602C67A4F30DC7LL, 0xC9602C67A4F30DC7LL))).y)) | 0L) <= 0x487F56600C763962LL), p_4589->g_2454)), (*l_1411))) >= p_33) == 0x359EE217L) & (*l_2430))) >= p_4589->g_671), p_4589->g_376.x))))) > (*l_2202)) ^ p_33), 4)))) < p_31.f3))
        { /* block id: 1118 */
            int32_t *l_2455 = &hip_const_7[2].f5;
            __shared__ char1 l_2469;
            l_2469 = make_char1(0xEFL);
            __shared__ ulong4 l_2489;
            l_2489 = make_ulong4(0x664D96F15CC83F75LL, 18446744073709551615UL, 0x664D96F15CC83F75LL, 18446744073709551615UL);
            int32_t l_2499 = 0x7E48E7ABL;
            int32_t l_2509 = 0xB2A8A141L;
            uint32_t l_2537 = 0xA40DCD3AL;
            int32_t **l_2567 = &l_2455;
            short1 l_2599 = make_short1(0x6036L);
            __shared__ uint16_t l_2624;
            l_2624 = 0x3281L;
            uint8_t **l_2625 = &p_4589->g_1372[3];
            int32_t l_2628 = 0xFE4C05D3L;
            int32_t l_2631 = 0L;
            int32_t l_2632 = 1L;
            int32_t l_2633[10] = {0x00D135A5L, 1L, 0x00D135A5L, 1L, 0x00D135A5L, 1L, 0x00D135A5L, 1L, 0x00D135A5L, 1L};
            uint32_t l_2670 = 0xE6836C47L;
            struct S1 ****l_2699 = &p_4589->g_1754;
            char3 l_2738 = make_char3((-6L), 1L, (-6L));
            struct S1 *****l_2776[7][6] = {{nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753}, {nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753}, {nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753}, {nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753}, {nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753}, {nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753}, {nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753, nullptr, &p_4589->g_1753}};
            int i, j;
lbl_2503:
            (*p_4589->g_222) = l_2455;
lbl_2695:
            for (p_4589->g_1052.f5 = 0; (p_4589->g_1052.f5 >= 23); p_4589->g_1052.f5 = safe_add_func_int32_t_s_s(p_4589->g_1052.f5, 1))
            { /* block id: 1122 */
                int64_t l_2470 = 6L;
                int32_t l_2498 = 1L;
                __shared__ int64_t l_2508;
                l_2508 = 0L;
                __shared__ int64_t ****l_2570;
                l_2570 = &p_4589->g_447[6][2][0];
                int32_t l_2630 = 0x19B1B44BL;
                uint32_t l_2634 = 0xAB185BD3L;
                __shared__ int32_t l_2638;
                l_2638 = 0L;
                int32_t l_2639 = 0xBA300A1BL;
                __shared__ int32_t l_2640;
                l_2640 = 3L;
                int32_t l_2641 = 0xF720023BL;
                int32_t l_2642 = (-4L);
                int32_t l_2643 = 0xCC189CCCL;
                for (l_1793 = 0; (l_1793 <= 6); l_1793 += 1)
                { /* block id: 1125 */
                    struct S0 l_2495[6][3] = {{{1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}, {7UL,1UL,0x3F7E1B22L,-4,0x7AF464E4L,0L,0L,0x86FFCA9CL,0xA05E9F18L}, {1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}}, {{1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}, {7UL,1UL,0x3F7E1B22L,-4,0x7AF464E4L,0L,0L,0x86FFCA9CL,0xA05E9F18L}, {1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}}, {{1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}, {7UL,1UL,0x3F7E1B22L,-4,0x7AF464E4L,0L,0L,0x86FFCA9CL,0xA05E9F18L}, {1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}}, {{1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}, {7UL,1UL,0x3F7E1B22L,-4,0x7AF464E4L,0L,0L,0x86FFCA9CL,0xA05E9F18L}, {1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}}, {{1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}, {7UL,1UL,0x3F7E1B22L,-4,0x7AF464E4L,0L,0L,0x86FFCA9CL,0xA05E9F18L}, {1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}}, {{1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}, {7UL,1UL,0x3F7E1B22L,-4,0x7AF464E4L,0L,0L,0x86FFCA9CL,0xA05E9F18L}, {1UL,0xDB8FA4279CE912C4LL,0x4C6023A0L,-11,-1L,0x243CDF6DL,0x7D2E4F0DL,0UL,0xD4BDCD0AL}}};
                    int8_t l_2496[7][7][4] = {{{0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}}, {{0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}}, {{0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}}, {{0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}}, {{0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}}, {{0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}}, {{0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}, {0xCFL, 0L, 0x39L, (-5L)}}};
                    uint16_t *l_2497[7];
                    int i, j, k;
                    for (int i = 0; i < 7; i++)
                        l_2497[i] = nullptr;
                    if (((&l_2272 != ((*p_4589->g_851) , l_2458[1])) > (((~((safe_lshift_func_int64_t_s_u((l_2471 = (l_2470 = (safe_mul_func_uint64_t_u_u((p_31.f1 &= (p_33++)), (safe_lshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((+0xFEL), make_char1(l_2469.x).x)), p_31.f0)))))), 52)) & (safe_mul_func_int64_t_s_s(1L, (l_2474 , ((((((p_31.f4 || ((safe_sub_func_uint32_t_u_u(((~make_uint4(p_4589->g_2477.x, p_4589->g_2477.x, p_4589->g_2477.x, p_4589->g_2477.x))).w, (((safe_mod(make_ushort4(make_ushort1(1UL).x, 0x7E1FL, (p_4589->g_1507.x |= (safe_mod_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u(((safe_lshift(((make_ulong4(p_4589->g_2486.w, p_4589->g_2486.w, p_4589->g_2486.w, p_4589->g_2486.w) | ((safe_div(make_ulong4(l_2489.z, l_2489.z, l_2489.z, l_2489.z), ((safe_mod(((safe_div(((make_ulong4(l_2494.y, l_2494.y, l_2494.y, l_2494.y) | make_ulong4((((l_2495[3][2] , nullptr) != (**l_2047)) > 0x706F826DF30DBFFBLL), 18446744073709551615UL, (*l_2202), 0x9243831C61E600F7LL))), make_ulong4(8UL, 8UL, 8UL, 8UL)))), make_ulong4(1UL, 1UL, 1UL, 1UL))))))))), make_ulong4(64, 64, 64, 64)))).z, l_2496[2][3][3])) | 0x93A58BE7L), 0x6945L))), (*l_2455)), make_ushort4(0x7A0CL, 0x7A0CL, 0x7A0CL, 0x7A0CL)))).w ^ 0x41F5L))) == p_4589->g_1101.z)) || 0L) || p_4589->g_2304.z) < (*l_2430)) && l_2498) ^ 0L)))))) == p_4589->g_1052.f3) >= p_31.f2)))
                    { /* block id: 1131 */
                        uint64_t l_2500[9] = {0x8EE4F87A7B04717ALL, 0x8EE4F87A7B04717ALL, 18446744073709551615UL, 0x8EE4F87A7B04717ALL, 0x8EE4F87A7B04717ALL, 18446744073709551615UL, 0x8EE4F87A7B04717ALL, 0x8EE4F87A7B04717ALL, 18446744073709551615UL};
                        int i;
                        l_2500[4]--;
                    }
                    else
                    { /* block id: 1133 */
                        // attempting a hip shared for loop
                        __shared__ int32_t l_2504[3][5][9];
                        for (int i = 0; i < 3; i++)
                        {
                            for (int j = 0; j < 5; j++)
                            {
                                for (int k = 0; k < 9; k++)
                                    l_2504[i][j][k] = (-5L);
                            }
                        }
                        uint8_t l_2510 = 1UL;
                        int i, j, k;
                        if (l_1793)
                            goto lbl_2503;
                        --l_2505;
                        --l_2510;
                        l_1684 = (*p_4589->g_877);
                    }
                }
                if ((safe_lshift_func_uint8_t_u_s(1UL, 5)))
                { /* block id: 1140 */
                    uint64_t *l_2528 = nullptr;
                    uint64_t *l_2529 = nullptr;
                    uint64_t *l_2530[1];
                    uint32_t *l_2539 = &hip_const_3;
                    // attempting a hip shared for loop
                    __shared__ uint32_t *l_2540[5][1][2];
                    for (int i = 0; i < 5; i++)
                    {
                        for (int j = 0; j < 1; j++)
                        {
                            for (int k = 0; k < 2; k++)
                                l_2540[i][j][k] = nullptr;
                        }
                    }
                    uint32_t l_2541 = 0xD1EA0E3AL;
                    int64_t l_2546 = 0xA7B740759DFD26B6LL;
                    int i, j, k;
                    for (int i = 0; i < 1; i++)
                        l_2530[i] = nullptr;
                    (*l_2431) |= ((*l_2429) = ((*l_1765) , ((*l_2430) = (*p_4589->g_223))));
                    (*p_4589->g_222) = l_2430;
                    (*l_2202) = (safe_mod_func_int8_t_s_s((safe_rshift_func_uint64_t_u_u(p_31.f1, 44)), (safe_rshift_func_int32_t_s_u((((make_ushort1(p_4589->g_2521.w).x >= (safe_div_func_uint64_t_u_u(((&p_4589->g_1922 != nullptr) , ((((safe_mod_func_uint32_t_u_u((p_31.f2 = (safe_mod_func_uint64_t_u_u((p_33 = p_31.f8), (+((*l_2429) = (safe_add_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s(((+(safe_lshift_func_uint64_t_u_u((((l_2537 = (*l_2455)) == p_31.f0) == 0x69L), (l_2499 = ((*l_2431) &= (l_2498 = (p_31.f5 && (((((make_ushort2(l_2538.y, l_2538.y) & make_ushort2((~((l_2541++) && ((safe_add_func_uint16_t_u_u(p_31.f5, 0xD578L)) <= l_2541))), 1UL))) ^ make_ushort2(5UL, 5UL))).x | p_4589->g_685[2][3].f0)))))))) & hip_const_10[0][1][6]), p_31.f8)), l_2546))))))), p_31.f0)) >= 0xE747L) == p_4589->g_1859.x) , 6UL)), (**p_4589->g_448)))) <= 1L) , (*l_2429)), 22))));
                }
                else
                { /* block id: 1154 */
                    uint8_t **l_2592 = &p_4589->g_1372[4];
                    int32_t l_2598 = 0xFE1F8454L;
                    __shared__ int4 l_2621;
                    l_2621 = make_int4(0xB35FC055L, 0x553F7C21L, 0xB35FC055L, 0x553F7C21L);
                    int32_t l_2626 = 0x097B6ACAL;
                    int i;
                    for (p_34 = 12; (p_34 < (-23)); p_34 = safe_sub_func_int16_t_s_s(p_34, 6))
                    { /* block id: 1157 */
                        int64_t ****l_2572 = &p_4589->g_447[2][5][0];
                        (*l_2431) = ((safe_div_func_int16_t_s_s(make_short2(p_4589->g_2551.x, p_4589->g_2551.x).y, ((safe_rshift(make_ushort2(p_4589->g_2554.x, p_4589->g_2554.x), make_ushort2(1UL, 0x171CL)))).x)) && (safe_rshift_func_int64_t_s_s(((safe_div(make_long1(p_4589->g_2559.x), make_long1((safe_rshift_func_uint32_t_u_s((((make_short2(l_2562.x, l_2562.x).x && hip_const_1[2][1][2]) >= (safe_rshift_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u(((l_2567 = &l_2432[0]) != nullptr), (((l_2498 >= ((safe_sub_func_int32_t_s_s(((*l_2430) |= (((p_4589->g_2571 = l_2570) != l_2572) , ((safe_add_func_int32_t_s_s((safe_rshift_func_int8_t_s_u((safe_mod_func_uint16_t_u_u((0x313D61EDL ^ make_uint1(p_4589->g_2579.y).x), (safe_rshift_func_int32_t_s_s((make_uint4(4294967290UL, 0UL, 0x897380C9L, 0xDC3D26FAL).y > ((p_31.f7 , l_2508) , 1L)), (*l_2455))))), (*l_2202))), (-8L))) < (*p_4589->g_223)))), p_31.f7)) ^ (*l_2431))) >= (*l_2455)) & 0x1D8A5922B026DD2FLL))) >= 0x670438D3L), 0))) != 0x903BL), p_33)))))).x, 25)));
                    }
                    for (l_2470 = 18; (l_2470 < (-24)); --l_2470)
                    { /* block id: 1165 */
                        __shared__ uint32_t *l_2586;
                        l_2586 = &hip_const_3;
                        __shared__ uint32_t *l_2587;
                        l_2587 = nullptr;
                        uint32_t *l_2588 = nullptr;
                        uint32_t *l_2589 = &l_2474.f2;
                        uint16_t *l_2597[8][8][4] = {{{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}, {{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}, {{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}, {{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}, {{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}, {{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}, {{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}, {{nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}, {nullptr, nullptr, &hip_const_6, nullptr}}};
                        __shared__ int32_t l_2622;
                        l_2622 = 1L;
                        int8_t *l_2623 = &p_4589->g_1922;
                        int32_t l_2627 = 0x9E7D8197L;
                        int32_t l_2629 = (-5L);
                        int i, j, k;
                        l_2626 &= ((safe_div_func_int64_t_s_s((make_int2((((((p_31.f2 |= (--(*l_2589))) && ((l_2592 = ((*l_2047) = (*l_2047))) == ((p_31.f7 > ((((safe_add_func_int64_t_s_s((((safe_sub_func_int32_t_s_s(((l_2598 = p_31.f8) < make_short4(l_2599.x, l_2599.x, l_2599.x, l_2599.x).z), (((-4L) != ((safe_div_func_int64_t_s_s((safe_rshift_func_int8_t_s_u(((safe_add_func_int16_t_s_s(((-2L) == ((safe_sub_func_int32_t_s_s(make_int2((-5L), (-3L)).y, (&p_4589->g_447[2][5][0] != ((safe_div_func_uint16_t_u_u(((~make_ushort4(make_ushort4(l_2610.y, l_2610.y, l_2610.y, l_2610.y).w, 0x1665L, 65535UL, 3UL))).x, (((safe_sub(make_short4((safe_lshift_func_int8_t_s_s(((*l_2623) = ((make_char4(9L, ((safe_mod_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((p_31.f7 < (((((make_short4((safe_mod_func_uint16_t_u_u((((((~((make_int3(l_2621.z, l_2621.z, l_2621.z) ^ make_int3(((p_31.f7 && (~(+0x63L))) ^ l_2621.y), p_31.f5, 0x89C4B3F4L))))).z == p_4589->g_2477.y) >= l_2622) < p_4589->g_472.x), l_2622)), 1L, (*l_2429), 0x30C1L).y , nullptr) != nullptr) >= l_2621.y) & (**l_2567)) | (-1L))), p_31.f4)), (**l_2567))) > 0x689A1C409253F3A1LL), (-2L), 5L) | make_char4((-6L), (-6L), (-6L), (-6L)))).y), p_4589->g_472.x)), 9L, 0xBA70L, p_31.f1), make_short4(0x7D35L, 0x7D35L, 0x7D35L, 0x7D35L)))).y & p_31.f8))) , nullptr)))) , hip_const_5.f6)), p_4589->g_537.x)) >= (*l_1411)), 4)), (**l_2567))) ^ 0x61D7EE5D61153D1FLL)) > p_4589->g_928))) > (**p_4589->g_222)) , l_2624), p_31.f5)) && 0x30F77008L) , 1L) || 0xA9E33BC3L)) , l_2625))) > 0L) && (*l_2430)) ^ l_2621.z), (-9L)).y > p_31.f3), (**p_4589->g_448))) >= (*l_2429));
                        ++l_2634;
                        ++l_2644;
                    }
                }
                if (l_1684.f0)
                    goto lbl_2647;
            }
            if (((make_int2(l_2648.x, l_2648.x) & ((((((((((safe_lshift(((make_int2(p_4589->g_2651.x, p_4589->g_2651.x) & make_int2((-1L), ((safe_rshift_func_uint64_t_u_s(make_ulong4(l_2654.y, l_2654.y, l_2654.y, l_2654.y).y, 50)) == (+(*l_2202)))))), make_int2(32, 32)))) ^ ((make_int2(l_2655.x, l_2655.x) ^ make_int2(l_2656.y, l_2656.y))))) ^ ((make_int2((safe_add_func_int32_t_s_s((((*p_4589->g_449) <= (nullptr != l_2659)) , 0xBCE7ED7DL), ((((safe_div(make_int1((safe_div_func_uint64_t_u_u(p_31.f3, (safe_rshift_func_int8_t_s_u((+0x95L), (18446744073709551611UL && ((((safe_div_func_uint16_t_u_u((hip_const_11 <= (*l_2455)), (*l_2455))) != 0xBEL) || p_34) && (*l_2202)))))))), make_int1(0x052947A1L)))) | make_int1(0x458B72EFL))).x)), (*l_2202)) ^ make_int2(0xDC9CD24AL, 0xDC9CD24AL))))) ^ make_int2(0x93D53ADEL, 0x93D53ADEL))) ^ make_int2(0x271DA139L, 0x271DA139L))))).x)
            { /* block id: 1179 */
                __shared__ uint32_t l_2689;
                l_2689 = 18446744073709551613UL;
                for (l_1439 = 0; (l_1439 <= 10); l_1439 = safe_add_func_uint8_t_u_u(l_1439, 5))
                { /* block id: 1182 */
                    // attempting a hip shared for loop
                    __shared__ uint16_t l_2679[1][5][2];
                    for (int i = 0; i < 1; i++)
                    {
                        for (int j = 0; j < 5; j++)
                        {
                            for (int k = 0; k < 2; k++)
                                l_2679[i][j][k] = 0x9F31L;
                        }
                    }
                    int8_t *l_2682 = nullptr;
                    int8_t *l_2683 = nullptr;
                    int8_t *l_2684 = nullptr;
                    __shared__ int8_t *l_2685;
                    l_2685 = nullptr;
                    int8_t *l_2686 = nullptr;
                    int8_t *l_2687 = nullptr;
                    int8_t *l_2688 = &p_4589->g_1922;
                    int32_t l_2690[8];
                    uint64_t ***l_2694[1];
                    int i, j, k;
                    for (int i = 0; i < 8; i++)
                        l_2690[i] = 1L;
                    for (int i = 0; i < 1; i++)
                        l_2694[i] = nullptr;
                    if ((*l_2429))
                        break;
                    if ((make_char4(((*l_2431) = (make_uchar4(0x67L, l_2670, p_31.f5, 0x7FL).y || (p_4589->g_536.x ^= (p_4589->g_797.z = (safe_mod_func_uint8_t_u_u(((**p_4589->g_448) ^ ((*l_2429) = ((safe_rshift(((((safe_mul(((safe_sub(make_long4((-6L), l_2679[0][4][1], 0xF18586E540C63725LL, make_long2(9L, ((*l_2430) ^ (((*l_2688) = (p_31.f6 && (-7L))) < (*l_2455)))).x), make_long4((-6L), (-6L), (-6L), (-6L))))), make_long4(0x672D1BD0F3C89E72LL, 0x672D1BD0F3C89E72LL, 0x672D1BD0F3C89E72LL, 0x672D1BD0F3C89E72LL)))) ^ make_long4(0L, 0L, 0L, 0L))), make_long4(64, 64, 64, 64)))).z)), p_31.f0)))))), (-1L), p_4589->g_1239.z, 0x4EL).x <= 3L))
                    { /* block id: 1189 */
                        (*l_2431) &= l_2689;
                        if ((**p_4589->g_222))
                            break;
                    }
                    else
                    { /* block id: 1192 */
                        uint16_t l_2691 = 0UL;
                        if ((**p_4589->g_222))
                            break;
                        l_2691++;
                        p_31.f3 ^= (l_2691 | ((l_2694[0] != nullptr) <= p_31.f6));
                    }
                    for (p_31.f0 = 0; (p_31.f0 <= 4); p_31.f0 += 1)
                    { /* block id: 1199 */
                        int i;
                        if (l_2633[(p_31.f0 + 5)])
                            break;
                    }
                    if (l_2428)
                        goto lbl_2695;
                }
            }
            else
            { /* block id: 1204 */
                uint8_t *l_2702 = nullptr;
                uint8_t *l_2703[3][2] = {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}};
                uint16_t *l_2706 = &hip_const_14[1][0];
                int32_t l_2711 = (-10L);
                uint32_t **l_2714 = &p_4589->g_851;
                int32_t l_2744 = 0xAA22D512L;
                int2 l_2763 = make_int2(0x37314385L, 0L);
                int64_t ****l_2766[6][5][8] = {{{&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}}, {{&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}}, {{&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}}, {{&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}}, {{&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}}, {{&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}, {&p_4589->g_447[2][5][0], nullptr, &p_4589->g_447[2][1][1], &p_4589->g_447[2][5][0], &p_4589->g_447[0][6][1], &p_4589->g_447[0][5][1], &p_4589->g_447[4][3][1], nullptr}}};
                int16_t l_2775[10] = {0L, 0L, 0x3911L, 0L, 0L, 0x3911L, 0L, 0L, 0x3911L, 0L};
                int i, j, k;
                if ((make_long4(0L, (**p_4589->g_448), (-10L), 0x87423C1AD10D76EELL).x != ((p_4589->g_1220.x ^ (p_4589->g_1333.w = p_31.f4)) >= ((*l_2431) = ((l_2698 != l_2699) >= ((l_2707 = (((safe_mul_func_int32_t_s_s((((*l_2202) = 0x2AL) < (0x600B351BE4D01D13LL > ((*l_2430) != (*p_4589->g_449)))), 5L)) , p_31.f1) & (*l_1411))) & 1UL))))))
                { /* block id: 1209 */
                    __shared__ int32_t l_2712;
                    l_2712 = 1L;
                    uint32_t **l_2713 = &p_4589->g_851;
                    (*l_2431) |= ((safe_mod_func_uint32_t_u_u((safe_unary_minus_func_uint8_t_u(255UL)), ((-7L) && (l_2711 != ((l_2712 < (l_2713 == l_2714)) || (*l_2455)))))) , (safe_div_func_int64_t_s_s(1L, ((*p_4589->g_449) && l_2712))));
                    return (*p_4589->g_222);
                }
                else
                { /* block id: 1212 */
                    ushort2 l_2731 = make_ushort2(0xC9E1L, 1UL);
                    // attempting a hip shared for loop
                    __shared__ uint16_t *l_2732[8][8][1];
                    for (int i = 0; i < 8; i++)
                    {
                        for (int j = 0; j < 8; j++)
                        {
                            for (int k = 0; k < 1; k++)
                                l_2732[i][j][k] = &hip_const_14[1][3];
                        }
                    }
                    uint64_t l_2741 = 0x392DAE2901ED1315LL;
                    int2 l_2743 = make_int2(2L, (-5L));
                    int32_t l_2745 = 0xC15C0859L;
                    __shared__ uint64_t l_2746;
                    l_2746 = 18446744073709551613UL;
                    int8_t *l_2774[4];
                    int i, j, k;
                    for (int i = 0; i < 8; i++)
                    {
                        for (int j = 0; j < 8; j++)
                        {
                            for (int k = 0; k < 1; k++)
                                l_2732[i][j][k] = &hip_const_14[1][3];
                        }
                    }
                    for (int i = 0; i < 4; i++)
                        l_2774[i] = nullptr;
                    (*l_2431) = (-1L);
                    if (l_1793)
                        goto lbl_2742;
                    if ((func_42(l_2711, ((*l_2567) = l_2432[0]), p_4589) , (safe_mul_func_uint16_t_u_u((((p_33 > (make_long1(0x3398DD82164CB944LL).x >= ((safe_sub_func_int32_t_s_s((**p_4589->g_222), ((((make_long4(((safe_mul_func_uint16_t_u_u(0UL, (((((safe_unary_minus_func_uint64_t_u(make_ulong4(l_2724.x, l_2724.x, l_2724.x, l_2724.x).x)) , make_char2(l_2725.y, l_2725.y).y) ^ (safe_sub_func_uint16_t_u_u(65533UL, (((p_4589->g_271.w &= (p_4589->g_1209.x = ((safe_sub(((make_ushort1(p_4589->g_2730.x) ^ make_ushort1(6UL))), make_ushort1(l_2731.y)))).x)) < (safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(((*l_2429) > make_char2(((make_char2(l_2737.y, l_2737.y) & make_char2(l_2738.z, l_2738.z))).x, 0xCAL).y), (safe_div_func_uint8_t_u_u(make_uchar2(0x4FL, 0xC8L).x, 1L)))), p_31.f2))) >= 0UL)))) && 255UL) , l_2731.x))) <= (*l_2430)), 0xDEF4252F5C02AF1BLL, (**p_4589->g_448), (*p_4589->g_449)) ^ make_long4(4L, 4L, 4L, 4L))).x != 0UL) < l_2731.y))) || p_33))) || l_2741) , l_2711), 0xA4D9L))))
                    { /* block id: 1217 */
lbl_2742:
                        (*p_4589->g_877) = (*p_4589->g_877);
                        l_2746++;
                    }
                    else
                    { /* block id: 1221 */
                        int8_t l_2767 = 0xFAL;
                        struct S0 *l_2768 = &l_1704;
                        (*l_2429) = ((((nullptr != l_2702) , make_uchar4(l_2749.y, l_2749.y, l_2749.y, l_2749.y).y) & ((safe_rshift_func_int32_t_s_s(((safe_rshift_func_uint32_t_u_s((p_4589->g_1718.z++), ((0x3CF4FEA2L == (safe_add_func_int32_t_s_s(((*l_2431) = ((safe_lshift_func_int8_t_s_s(((safe_rshift_func_int64_t_s_u(6L, p_31.f3)) && (safe_unary_minus_func_int32_t_s(((*l_2430) = make_int4(l_2763.y, l_2763.y, l_2763.y, l_2763.y).z)))), 6)) , (safe_rshift_func_uint16_t_u_u(((l_2766[0][1][5] == ((((~l_2746) > l_2767) && (!0L)) , nullptr)) | hip_const_9.f1), 11)))), p_34))) >= l_2746))) ^ 0xC77DL), 1)) & p_31.f1)) | p_31.f3);
                        (*l_2768) = ((*l_1765) = p_31);
                    }
                    (*l_2431) &= (safe_add_func_uint8_t_u_u(0x5CL, (l_2775[3] ^= (safe_lshift_func_int8_t_s_s(p_4589->g_2079.y, (safe_unary_minus_func_int8_t_s(0xFFL)))))));
                }
            }
            l_2698 = l_2699;
        }
        else
        { /* block id: 1234 */
            __shared__ short2 l_2805;
            l_2805 = make_short2(0L, 0x0BF4L);
            __shared__ int32_t l_2809;
            l_2809 = 0xBACFA30BL;
            __shared__ int32_t l_2810;
            l_2810 = 0x690BCC86L;
            int32_t l_2815 = 1L;
            int32_t l_2817 = 0xF9613975L;
            int i;
            for (l_1704.f2 = 3; (l_1704.f2 >= 59); l_1704.f2 = safe_add_func_uint8_t_u_u(l_1704.f2, 9))
            { /* block id: 1237 */
                (*l_2202) ^= p_31.f7;
            }
            if (p_4589->g_757)
                goto lbl_2813;
lbl_2813:
            for (l_2637 = 7; (l_2637 == (-9)); l_2637--)
            { /* block id: 1242 */
                uint64_t l_2785 = 0xB9C05D34CF351A3ALL;
                int8_t *l_2799[7][3];
                __shared__ uint32_t *l_2807;
                l_2807 = nullptr;
                // attempting a hip shared for loop
                __shared__ uint32_t *l_2808[4][10][6];
                for (int i = 0; i < 4; i++)
                {
                    for (int j = 0; j < 10; j++)
                    {
                        for (int k = 0; k < 6; k++)
                            l_2808[i][j][k] = &p_4589->g_400.f2;
                    }
                }
                int i, j, k;
                for (int i = 0; i < 7; i++)
                {
                    for (int j = 0; j < 3; j++)
                        l_2799[i][j] = &l_1984;
                }
                (*l_2431) ^= (l_2810 = (safe_sub_func_int32_t_s_s((p_31.f1 & (l_2809 = ((make_int4((p_31.f4 = (safe_mul_func_uint16_t_u_u(((l_2785 , l_2047) != nullptr), (((((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(((safe_unary_minus_func_uint32_t_u((safe_sub_func_uint64_t_u_u(0UL, (~(safe_div_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((((*l_2202) ^= 0xDFL) < (safe_mod_func_int8_t_s_s(0xC7L, ((((safe_add(make_short2((p_31 , make_short4(p_4589->g_2804.w, p_4589->g_2804.w, p_4589->g_2804.w, p_4589->g_2804.w).z), 0xE871L), make_short2(l_2805.y, l_2805.y)))).y < (-9L)) , 255UL)))), (-1L))), 0x09L))))))) || p_31.f0), 0x46F37F00L)), p_4589->g_1220.x)), p_34)) == 7L) , l_2785) >= p_4589->g_715.y) && l_2806)))), l_2785, p_31.f4, (-1L)).z , l_2805.x) , p_31.f3))), l_2785)));
                if (p_4589->g_1052.f8)
                    goto lbl_2813;
                (*l_2431) |= make_int3(l_2811.y, l_2811.y, l_2811.y).y;
                return l_2812;
            }
            l_2818--;
        }
    }
    return l_2821;
}


/* ------------------------------------------ */
/* 
 * reads : p_4589->g_671 p_4589->g_400.f3 p_4589->g_400.f0 p_4589->g_837 p_4589->g_1370 p_4589->g_449 hip_const_10 p_4589->g_448
 * writes: p_4589->g_671 p_4589->g_400.f2 p_4589->g_1052.f4 p_4589->g_327 p_4589->g_400.f3 p_4589->g_400.f0 p_4589->g_1037
 */
__device__ int64_t * func_35(uint32_t * p_36, struct S1  p_37, uint8_t  p_38, int64_t * p_39, uint32_t * p_40, struct S2 * p_4589)
{ /* block id: 584 */
    int32_t l_1270 = 0x5020506CL;
    int8_t l_1271 = 0L;
    // attempting a hip shared for loop
    __shared__ int32_t *l_1296[10];
    for (int i = 0; i < 10; i++)
        l_1296[i] = nullptr;
    ushort2 l_1332 = make_ushort2(0x9104L, 0x18F9L);
    uint32_t l_1337[4][3][3] = {{{0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}}, {{0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}}, {{0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}}, {{0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}, {0UL, 0xB62FF7D8L, 0xCA447AEDL}}};
    int32_t ***l_1392 = nullptr;
    int i, j, k;
    for (p_4589->g_671 = 0; (p_4589->g_671 != (-24)); p_4589->g_671--)
    { /* block id: 587 */
        __shared__ uint16_t l_1272;
        l_1272 = 0x2BF3L;
        __shared__ ushort2 l_1286;
        l_1286 = make_ushort2(65532UL, 0x726FL);
        __shared__ int32_t l_1309;
        l_1309 = 0xD271867AL;
        int32_t l_1312[6] = {0x5556F9B4L, 0x77823649L, 0x5556F9B4L, 0x77823649L, 0x5556F9B4L, 0x77823649L};
        uint1 l_1329 = make_uint1(0UL);
        int i;
        for (p_4589->g_400.f2 = (-26); (p_4589->g_400.f2 >= 35); p_4589->g_400.f2 = safe_add_func_int64_t_s_s(p_4589->g_400.f2, 3))
        { /* block id: 590 */
            int64_t l_1276 = 0x49AF04E27C6EEA5ELL;
            int32_t l_1295 = (-9L);
            int32_t l_1301 = 0xCA5C963BL;
            int32_t l_1302 = 0x397E3ED8L;
            __shared__ int32_t l_1304;
            l_1304 = 8L;
            __shared__ int32_t l_1305;
            l_1305 = (-1L);
            int32_t l_1306 = 0xCBC714D7L;
            __shared__ int32_t l_1310;
            l_1310 = 2L;
            int32_t l_1311[3];
            uint32_t *l_1336 = &hip_const_4;
            int8_t l_1379 = (-7L);
            uint64_t l_1385[10] = {0x79C0467193B682F0LL, 0x79C0467193B682F0LL, 0x960828BDA59FD70DLL, 0x79C0467193B682F0LL, 0x79C0467193B682F0LL, 0x960828BDA59FD70DLL, 0x79C0467193B682F0LL, 0x79C0467193B682F0LL, 0x960828BDA59FD70DLL, 0x79C0467193B682F0LL};
            int i;
            for (int i = 0; i < 3; i++)
                l_1311[i] = 0x8C87BA63L;
            if ((0x59B4L >= 0xEDD1L))
            { /* block id: 591 */
                __shared__ int32_t *l_1264;
                l_1264 = &p_4589->g_928;
                int32_t *l_1265 = &hip_const_1[1][0][2];
                int32_t *l_1266 = &p_4589->g_400.f4;
                int32_t *l_1267 = &hip_const_1[2][1][1];
                int32_t *l_1268 = nullptr;
                // attempting a hip shared for loop
                __shared__ int32_t *l_1269[9];
                for (int i = 0; i < 9; i++)
                    l_1269[i] = nullptr;
                int3 l_1275 = make_int3(0xA92F97C2L, (-1L), 0xA92F97C2L);
                int i;
                l_1272--;
                l_1276 ^= make_int1(l_1275.y).x;
            }
            else
            { /* block id: 594 */
                uint32_t l_1279 = 6UL;
                int32_t **l_1282 = &p_4589->g_223;
                int64_t *l_1285 = &p_4589->g_145;
                int32_t l_1299 = 1L;
                __shared__ int8_t l_1300;
                l_1300 = 0x79L;
                int32_t l_1307 = 0x125CDBA0L;
                int32_t l_1308 = 0x64FB58F0L;
                int32_t l_1313 = 0xC88A91E7L;
                __shared__ int32_t l_1316;
                l_1316 = 0L;
                int32_t l_1377 = 1L;
                int32_t l_1382 = 1L;
                __shared__ int32_t l_1384;
                l_1384 = (-7L);
                uint32_t ****l_1394 = &p_4589->g_1038[4][3];
                for (p_4589->g_1052.f4 = 0; (p_4589->g_1052.f4 != 6); p_4589->g_1052.f4++)
                { /* block id: 597 */
                    if (l_1279)
                        break;
                    return p_39;
                }
                l_1296[2] = ((safe_sub_func_int16_t_s_s((nullptr == l_1282), ((((safe_mod(make_ushort4((((*p_4589->g_877) , (((*l_1285) = (**p_4589->g_448)) ^ 0xC508872D397463B6LL)) > p_37.f5), 0x5E20L, 0x9D39L, 65535UL), make_ushort4(l_1286.x, l_1286.x, l_1286.x, l_1286.x)))) ^ ((safe_mul(make_ushort4(0x6B6EL, 0UL, (safe_mod_func_int16_t_s_s(0x5DC3L, (l_1295 |= (safe_rshift_func_uint32_t_u_s((p_37.f4 && (safe_lshift_func_int8_t_s_s(p_37.f6, 5))), 27))))), l_1271), make_ushort4(0x6318L, 0x6318L, 0x6318L, 0x6318L)))))).y)) , nullptr);
                for (p_4589->g_327 = 0; (p_4589->g_327 >= (-3)); p_4589->g_327--)
                { /* block id: 606 */
                    int32_t l_1303 = 0x75403357L;
                    int32_t l_1314 = (-1L);
                    int32_t l_1315[7] = {0x44B19154L, 0x44B19154L, 0x9F651278L, 0x44B19154L, 0x44B19154L, 0x9F651278L, 0x44B19154L};
                    __shared__ uint8_t l_1317;
                    l_1317 = 254UL;
                    int32_t l_1338 = 0xA7FAB0F9L;
                    int i;
                    p_4589->g_400.f3 |= 0x85F6A534L;
                    l_1317++;
                    for (l_1303 = (-7); (l_1303 != 17); l_1303 = safe_add_func_int32_t_s_s(l_1303, 1))
                    { /* block id: 611 */
                        uint64_t *l_1339 = &p_4589->g_400.f1;
                        l_1308 |= (1UL ^ ((((make_long4(p_4589->g_1322.y, p_4589->g_1322.y, p_4589->g_1322.y, p_4589->g_1322.y) ^ make_long4(l_1312[1], (-1L), (safe_lshift_func_int8_t_s_s((((*l_1339) = (((safe_lshift_func_int32_t_s_u(((safe_lshift_func_int64_t_s_s(l_1329.x, (((0x59119E90F6273098LL < (*p_4589->g_449)) ^ (0xD0L == (safe_add_func_uint64_t_u_u((make_ushort2(l_1332.x, l_1332.x).y < ((&p_4589->g_1038[4][3] == (((((*p_4589->g_850) = p_36) != (l_1336 = ((p_37.f1 = (p_37.f4 ^= (make_short1(p_4589->g_1333.w).x , ((((make_int2(p_4589->g_1334.x, p_4589->g_1334.x) ^ make_int2(p_4589->g_1335.y, p_4589->g_1335.y))) ^ ((make_int2(((make_int3(0x3811771BL, p_37.f2, l_1312[0]) ^ make_int3((-1L), (-1L), (-1L)))).z, l_1315[4]) | make_int2(0L, 0L))))).y))) , l_1336))) ^ p_37.f0) , nullptr)) != p_4589->g_1026.x)), p_37.f6)))) >= p_4589->g_152.x))) == p_37.f3), l_1337[1][0][1])) & l_1338) || 0x8AL)) < p_37.f0), l_1309)), 5L))).x < l_1329.x) , 3UL));
                        if (p_37.f1)
                            break;
                    }
                    for (l_1338 = (-27); (l_1338 > (-7)); l_1338 = safe_add_func_int64_t_s_s(l_1338, 1))
                    { /* block id: 622 */
                        int16_t l_1342[1][5] = {{6L, 0xB447L, 6L, 0xB447L, 6L}};
                        int64_t **l_1353 = &l_1285;
                        int32_t l_1354 = (-1L);
                        int i, j;
                    }
                }
                for (p_4589->g_400.f0 = 6; (p_4589->g_400.f0 > 56); p_4589->g_400.f0 = safe_add_func_uint8_t_u_u(p_4589->g_400.f0, 8))
                { /* block id: 630 */
                    int32_t l_1374[5][2] = {{0xC6FCFB1CL, (-1L)}, {0xC6FCFB1CL, (-1L)}, {0xC6FCFB1CL, (-1L)}, {0xC6FCFB1CL, (-1L)}, {0xC6FCFB1CL, (-1L)}};
                    __shared__ int4 l_1376;
                    l_1376 = make_int4((-4L), 0xA57A61A4L, (-4L), 0xA57A61A4L);
                    struct S0 *l_1399 = &p_4589->g_400;
                    int4 l_1405 = make_int4(0x37FC513CL, 0x0318E823L, 0x37FC513CL, 0x0318E823L);
                    int i, j;
                    for (p_37.f5 = 0; (p_37.f5 <= 2); p_37.f5 += 1)
                    { /* block id: 633 */
                        int32_t l_1373 = 0L;
                        __shared__ int32_t l_1375;
                        l_1375 = 0xCC76E87AL;
                        __shared__ int32_t l_1378;
                        l_1378 = 0x5933F8AFL;
                        int32_t l_1380 = 0x66E4E471L;
                        int32_t l_1381 = (-4L);
                        int32_t l_1383[7] = {0x0824E35DL, 9L, 0x0824E35DL, 9L, 0x0824E35DL, 9L, 0x0824E35DL};
                        int32_t ****l_1393 = &l_1392;
                        uint32_t ****l_1395 = &p_4589->g_1038[0][0];
                        uint32_t *****l_1396 = &p_4589->g_1037;
                        uint32_t *l_1400 = &l_1337[2][1][2];
                        int i, j, k;
                        l_1311[p_37.f5] = (p_4589->g_837 , (((safe_lshift_func_int32_t_s_s((p_37.f1 || ((safe_add_func_int32_t_s_s((&p_4589->g_495 != nullptr), 9UL)) == (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(0UL, 5)), 27)), 1)))), 22)) == (safe_unary_minus_func_int16_t_s((safe_lshift_func_int32_t_s_s((nullptr == p_4589->g_1370), p_37.f1))))) ^ l_1373));
                        --l_1385[8];
                        l_1312[5] = (safe_div_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(((make_short3(1L, 0x57B1L, (((*l_1393) = l_1392) != nullptr)).y , l_1394) == ((*l_1396) = l_1395)), (safe_lshift_func_int8_t_s_s(((l_1399 == (((--(*l_1400)) && (safe_mul_func_uint32_t_u_u((((make_int4(l_1405.x, l_1405.x, l_1405.x, l_1405.x).w , l_1311[0]) ^ (*p_4589->g_449)) && 18446744073709551611UL), 2UL))) , nullptr)) >= p_37.f5), 5)))), p_37.f2));
                    }
                    p_37.f2 &= (safe_mul_func_int64_t_s_s((*p_4589->g_449), 0L));
                }
            }
        }
    }
    return (*p_4589->g_448);
}


/* ------------------------------------------ */
/* 
 * reads : p_4589->g_1052.f2 p_4589->g_222 p_4589->g_400.f4 p_4589->g_145 p_4589->g_605 p_4589->g_671 p_4589->g_1112 p_4589->g_877 p_4589->g_811 p_4589->g_1209 p_4589->g_1159 p_4589->g_361 p_4589->g_1220 p_4589->g_1231 hip_const_13 p_4589->g_1239 p_4589->g_1242 p_4589->g_1246 hip_const_7.f5
 * writes: p_4589->g_1052.f2 p_4589->g_400.f7 p_4589->g_223 p_4589->g_400.f4 p_4589->g_145 p_4589->g_605 p_4589->g_671 p_4589->g_1112 p_4589->g_400.f5 p_4589->g_873 p_4589->g_1052.f5 p_4589->g_685 p_4589->g_361
 */
__device__ struct S1  func_42(uint64_t  p_43, int32_t * p_44, struct S2 * p_4589)
{ /* block id: 507 */
    int2 l_1102 = make_int2(0L, 0L);
    __shared__ uint16_t l_1132;
    l_1132 = 0xA814L;
    int32_t l_1152 = 0L;
    int32_t l_1185 = 0x5A8E04ACL;
    uint32_t *l_1210 = nullptr;
    uint4 l_1227 = make_uint4(0x8537C2FFL, 0x84316DADL, 0x8537C2FFL, 0x84316DADL);
    struct S1 l_1255 = {0L,-576,1710,1,19,0x1D6B7C03L,0x8BC60FD8L};
    int i;
    for (p_4589->g_1052.f2 = (-29); (p_4589->g_1052.f2 == 49); p_4589->g_1052.f2++)
    { /* block id: 510 */
        int32_t *l_1099 = &p_4589->g_671;
        int32_t l_1107 = 1L;
        int32_t l_1108 = 0x4B3A86D0L;
        int2 l_1109 = make_int2((-9L), 0x30333680L);
        int8_t l_1111 = 1L;
        long4 l_1119 = make_long4(0xE11A818BFA57B725LL, (-1L), 0xE11A818BFA57B725LL, (-1L));
        struct S1 l_1128[10][9] = {{{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}, {{-2L,-288,5762,1,15,0UL,1UL}, {0xF88DC69AL,-659,-14415,1,38,0x2DD2BDC1L,0x051825C3L}, {0x01700681L,-83,5223,0,32,18446744073709551615UL,0x28A3B3F4L}, {-1L,1582,-7245,0,43,0x7E0D263FL,1UL}, {0x4EB68AACL,1733,-5891,0,43,0x2F90268FL,0UL}, {1L,-158,-689,0,6,0x2D0AC8C1L,18446744073709551615UL}, {0xB7A5D77BL,813,-10637,0,29,0x73540210L,0x1D8C150BL}, {0xCE1DC18CL,948,1060,1,-23,0x1FEBF4CBL,0x0EE0C203L}, {0xE53DEEF1L,461,12054,1,-16,1UL,18446744073709551615UL}}};
        int32_t l_1131 = (-1L);
        uint8_t l_1138 = 0xECL;
        long1 l_1143 = make_long1(0xEF6C2DDAA1C343C3LL);
        uint32_t *l_1146 = &l_1128[4][1].f6;
        uint32_t *l_1243 = nullptr;
        int i, j;
        for (p_4589->g_400.f7 = 0; (p_4589->g_400.f7 <= 3); p_4589->g_400.f7 += 1)
        { /* block id: 513 */
            int32_t l_1100 = 0x7683BD86L;
            (*p_4589->g_222) = l_1099;
            for (p_4589->g_400.f4 = 2; (p_4589->g_400.f4 >= 0); p_4589->g_400.f4 -= 1)
            { /* block id: 517 */
                for (p_4589->g_145 = 0; (p_4589->g_145 <= 3); p_4589->g_145 += 1)
                { /* block id: 520 */
                    if (l_1100)
                        break;
                }
            }
        }
        for (p_4589->g_605 = 0; (p_4589->g_605 <= 3); p_4589->g_605 += 1)
        { /* block id: 527 */
            __shared__ int32_t *l_1103;
            l_1103 = &hip_const_1[2][2][1];
            int32_t *l_1104 = &p_4589->g_671;
            int32_t *l_1105 = &hip_const_1[1][0][2];
            int32_t *l_1106[4][2][10] = {{{nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}, {nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}}, {{nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}, {nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}}, {{nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}, {nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}}, {{nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}, {nullptr, &hip_const_13, &hip_const_7[2].f4, &p_4589->g_1052.f5, nullptr, &p_4589->g_1052.f5, &hip_const_7[2].f4, &hip_const_13, nullptr, &p_4589->g_400.f4}}};
            int32_t l_1110 = 0L;
            // attempting a hip shared for loop
            __shared__ uint32_t *l_1147[3];
            for (int i = 0; i < 3; i++)
                l_1147[i] = &p_4589->g_400.f0;
            ulong4 l_1171 = make_ulong4(0xFE7C21FAD6ABF978LL, 18446744073709551606UL, 0xFE7C21FAD6ABF978LL, 18446744073709551606UL);
            int i, j, k;
            for (int i = 0; i < 3; i++)
                l_1147[i] = &p_4589->g_400.f0;
            (*l_1099) |= ((make_int2(p_4589->g_1101.y, p_4589->g_1101.y) ^ make_int2(l_1102.y, l_1102.y))).y;
            ++p_4589->g_1112;
            if (l_1102.y)
                continue;
            p_4589->g_400.f4 = make_int4(8L, (-3L), 0x9A827C9DL, (7L <= (p_43 <= (safe_sub_func_int8_t_s_s(((p_4589->g_685[2][3].f0 ^ p_4589->g_685[2][3].f0) & ((make_ulong1(0x1FE2480D055BA4DCLL) ^ ((((make_ulong1((p_43 != ((safe_div(make_long4(l_1119.x, l_1119.x, l_1119.x, l_1119.x), make_long4(0x3183E457EA1A3A3BLL, (p_43 & ((safe_mod(((safe_sub(make_uchar4(249UL, ((*l_1099) = ((safe_mod_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((l_1128[4][1] , (safe_add_func_int32_t_s_s(3L, ((-1L) <= l_1131)))) , 0xAF3AL), p_43)), p_4589->g_840.x)) | 0xFB8479BC33A5E950LL)), 6UL, hip_const_10[0][1][6]), make_uchar4(0x3AL, 0x3AL, 0x3AL, 0x3AL)))), make_uchar4(0UL, 0UL, 0UL, 0UL)))).y), l_1132, (*p_4589->g_449))))).y)) ^ make_ulong1(18446744073709551613UL))) & make_ulong1(0x6CD62669164FD3F4LL))))).x), p_4589->g_907.x))))).w;
            for (p_4589->g_400.f5 = 3; (p_4589->g_400.f5 >= 0); p_4589->g_400.f5 -= 1)
            { /* block id: 535 */
                __shared__ uint32_t l_1133;
                l_1133 = 0xDCE630FCL;
                uint2 l_1175 = make_uint2(0x08ECAA89L, 0xCB9A6E5AL);
                int32_t l_1182[5][6][4] = {{{0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}}, {{0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}}, {{0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}}, {{0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}}, {{0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}, {0x9916B36AL, 0x77726DE6L, 0x1F1D22C6L, (-6L)}}};
                uint1 l_1201 = make_uint1(0UL);
                struct S1 l_1205 = {5L,662,-16269,1,17,0UL,2UL};
                uint3 l_1232 = make_uint3(4294967292UL, 0x5D134BA5L, 4294967292UL);
                uint8_t l_1252 = 7UL;
                int i, j, k;
                l_1133--;
                for (p_4589->g_873 = 0; (p_4589->g_873 <= 3); p_4589->g_873 += 1)
                { /* block id: 539 */
                    short4 l_1148 = make_short4(0x33F0L, 0x072EL, 0x33F0L, 0x072EL);
                    uint32_t *l_1150[8] = {&hip_const_7[2].f2, &hip_const_7[2].f2, &p_4589->g_400.f2, &hip_const_7[2].f2, &hip_const_7[2].f2, &p_4589->g_400.f2, &hip_const_7[2].f2, &hip_const_7[2].f2};
                    int32_t l_1151 = 0xCC3BD3FFL;
                    int16_t *l_1178 = nullptr;
                    __shared__ int32_t l_1183;
                    l_1183 = 0L;
                    int32_t l_1186 = 0xFF2D6367L;
                    int32_t l_1187 = 0x4126C331L;
                    __shared__ int32_t l_1189;
                    l_1189 = (-1L);
                    int32_t l_1191 = 0x2107BF04L;
                    int32_t l_1193 = (-7L);
                    __shared__ int32_t l_1195;
                    l_1195 = (-1L);
                    long1 l_1196 = make_long1(0x964C01FE1FAC5C8CLL);
                    int32_t l_1197 = 0xDDE6F86EL;
                    uint16_t l_1198 = 0x6776L;
                    struct S1 l_1204[10][2][9] = {{{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}, {{{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}, {{-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {5L,-1991,10241,1,28,18446744073709551610UL,18446744073709551610UL}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-6L,-1835,-15006,1,-38,0xF346882EL,0xACDDDEA9L}, {-8L,-544,14924,1,-4,0UL,18446744073709551614UL}, {0L,1884,9095,1,28,9UL,0x62168489L}, {4L,216,-285,1,-10,0UL,18446744073709551615UL}, {-8L,264,5156,0,18,0x2DEFE780L,0xE23E233FL}}}};
                    int i, j, k;
                    l_1152 |= (safe_div_func_uint16_t_u_u((0xE3L == (l_1138 | p_43)), (safe_rshift_func_int16_t_s_s((safe_mod_func_int64_t_s_s((-6L), (((make_uchar3(l_1102.x, 0xD2L, 0x28L) ^ make_uchar3(((l_1151 = (((((((*p_44) > (((((*l_1099) ^= make_long3(l_1143.x, l_1143.x, l_1143.x).x) >= ((safe_rshift_func_uint16_t_u_s(((l_1146 = (*p_4589->g_850)) != l_1147[2]), make_short4(l_1148.x, l_1148.x, l_1148.x, l_1148.x).z)) , 0L)) <= 250UL) || p_4589->g_1149)) & p_43) , 0UL) , (*p_4589->g_851)) , &l_1146) != &l_1147[2])) == 0x996E4F9AL), 4UL, 0x57L))).z && (-5L)))), p_43))));
                    for (p_4589->g_671 = 3; (p_4589->g_671 >= 0); p_4589->g_671 -= 1)
                    { /* block id: 546 */
                        struct S0 l_1155[8] = {{9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}, {9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}, {9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}, {9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}, {9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}, {9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}, {9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}, {9UL,0x6AAC4AA97DB707E2LL,0x675DB21BL,-11,0x86EA91F9L,6L,-1L,18446744073709551608UL,1UL}};
                        // attempting a hip shared for loop
                        __shared__ int16_t *l_1162[8][6];
                        for (int i = 0; i < 8; i++)
                        {
                            for (int j = 0; j < 6; j++)
                                l_1162[i][j] = nullptr;
                        }
                        int16_t **l_1163 = &l_1162[2][4];
                        int16_t *l_1179 = nullptr;
                        int16_t *l_1180 = nullptr;
                        int16_t *l_1181 = &p_4589->g_837;
                        int i, j;
                        p_4589->g_1052.f5 = (((safe_mod(make_uchar2(0x71L, 5UL), make_uchar2(8UL, (l_1155[3] , (((((make_uchar1(p_4589->g_1158.x).x , p_4589->g_706.z) , make_short4(p_43, l_1148.x, (-2L), 0xD108L).x) && (((*l_1181) = ((make_ulong3(p_4589->g_1159.z, p_4589->g_1159.z, p_4589->g_1159.z).z || p_43) <= (safe_mod_func_int8_t_s_s(((*p_4589->g_449) , (((((*l_1163) = l_1162[2][4]) == ((((((safe_rshift(((safe_div(make_ulong4(p_4589->g_1168.x, p_4589->g_1168.x, p_4589->g_1168.x, p_4589->g_1168.x), ((safe_div(make_ulong4(l_1171.z, l_1171.z, l_1171.z, l_1171.z), make_ulong4(p_4589->g_1172.z, p_4589->g_1172.z, p_4589->g_1172.z, p_4589->g_1172.z))))))), make_ulong4(64, 64, 64, 64)))).w == (safe_mod_func_uint64_t_u_u((((make_uint3(l_1175.y, l_1175.y, l_1175.y).x && (safe_mul_func_int32_t_s_s((&p_4589->g_837 != l_1178), l_1155[3].f2))) > (**p_4589->g_448)) , p_43), p_43))) && (*p_44)) & 0xBF0160C2L) , nullptr)) , 0x0821L) == l_1155[3].f8)), 1L)))) && 0UL)) != 0x762911C9L) <= p_43)))))).x > 0L);
                    }
                    if (l_1102.y)
                    { /* block id: 551 */
                        int8_t l_1184 = 0xE8L;
                        int32_t l_1188 = (-3L);
                        int32_t l_1190 = 0x0785013FL;
                        int32_t l_1192 = 1L;
                        int32_t l_1194[6];
                        int i;
                        for (int i = 0; i < 6; i++)
                            l_1194[i] = 1L;
                        l_1198--;
                        l_1201.x++;
                        (*p_4589->g_877) = l_1204[3][1][8];
                    }
                    else
                    { /* block id: 555 */
                        uint32_t l_1206 = 1UL;
                        (*p_4589->g_877) = l_1205;
                        if (l_1206)
                            break;
                    }
                    if (p_4589->g_811.y)
                        break;
                }
                for (l_1107 = 0; (l_1107 <= 2); l_1107 += 1)
                { /* block id: 563 */
                    uint32_t l_1248 = 0x49ED9877L;
                    int32_t l_1251 = 5L;
                    for (l_1205.f5 = 0; (l_1205.f5 <= 2); l_1205.f5 += 1)
                    { /* block id: 566 */
                        __shared__ long1 l_1219;
                        l_1219 = make_long1(0L);
                        __shared__ uint3 l_1230;
                        l_1230 = make_uint3(4294967290UL, 0x91B6FC8FL, 4294967290UL);
                        uint32_t *l_1244[8][3][6] = {{{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}, {{&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}, {&p_4589->g_400.f2, nullptr, nullptr, nullptr, &hip_const_3, nullptr}}};
                        // attempting a hip shared for loop
                        __shared__ uint16_t *l_1245[4][1];
                        for (int i = 0; i < 4; i++)
                        {
                            for (int j = 0; j < 1; j++)
                                l_1245[i][j] = &p_4589->g_1112;
                        }
                        uint64_t *l_1247[3];
                        __shared__ int32_t l_1249;
                        l_1249 = 0xAB29DF1EL;
                        int32_t l_1250 = 0x98DFF551L;
                        int i, j, k;
                        for (int i = 0; i < 4; i++)
                        {
                            for (int j = 0; j < 1; j++)
                                l_1245[i][j] = &p_4589->g_1112;
                        }
                        for (int i = 0; i < 3; i++)
                            l_1247[i] = nullptr;
                        l_1182[3][1][1] = ((l_1248 |= ((safe_sub_func_uint64_t_u_u((((make_ushort2(p_4589->g_1209.x, p_4589->g_1209.x) | make_ushort2(3UL, 7UL))).y & p_4589->g_1159.y), ((nullptr == l_1210) >= ((safe_lshift_func_uint16_t_u_s((--p_4589->g_361[(l_1205.f5 + 6)][p_4589->g_605]), (safe_rshift_func_uint64_t_u_u((0x6BA3L <= (p_4589->g_873 = ((safe_sub_func_int64_t_s_s(((make_long1(l_1219.x) ^ make_long1(p_4589->g_1220.x))).x, ((make_long3((-10L), (((safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s((((*l_1104) ^= 0L) != (make_uint2(4294967295UL, ((((make_uint1(l_1227.w) ^ ((safe_div(make_uint1(l_1230.y), make_uint1(p_4589->g_1231.y)))))) & make_uint1(l_1232.z))).x).y > (((((safe_lshift_func_uint16_t_u_u(((make_ulong2((safe_sub_func_uint32_t_u_u(0x9192CCC2L, (*p_44))), (((safe_mul_func_int32_t_s_s(((((make_int2(p_4589->g_1239.x, p_4589->g_1239.x) ^ make_int2((l_1205.f4 = ((make_ulong3(0x77CFA5E03FB507A3LL, 1UL, 18446744073709551615UL).x | p_43) != (+(safe_add_func_uint32_t_u_u(p_43, (*p_44)))))), l_1132))) ^ make_int2(0L, 0L))).y, 0xDA8ECCECL)) > p_43) , 0UL)).y >= l_1230.y) , l_1201.x), p_43)) & 0x9BFEBAA1E6C6902BLL) > 0UL) , p_4589->g_1242) <= 0xF4L))), 1UL)), 1L)), p_43)) , l_1243) != l_1244[7][1][3]), p_43) ^ make_long3(0L, 0L, 0L))).z)) != p_43))), 21)))) & 0x2398L)))) < p_4589->g_1246)) <= p_43);
                        l_1152 = 0x4CE9B4A3L;
                        l_1252++;
                        if ((*p_44))
                            continue;
                    }
                    if ((*p_44))
                        break;
                }
            }
        }
    }
    return l_1255;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ uint64_t  func_54(uint32_t * p_55, int32_t  p_56, int32_t  p_57, int64_t * p_58, int64_t  p_59, struct S2 * p_4589)
{ /* block id: 504 */
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_10 p_4589->g_537 hip_const_13 p_4589->g_424 p_4589->g_425 hip_const_7 p_4589->g_326 p_4589->g_189 p_4589->g_222 p_4589->g_400.f7 p_4589->g_669 hip_const_5 p_4589->g_678 hip_const_9 p_4589->g_271 p_4589->g_706 p_4589->g_715 p_4589->g_400.f8 hip_const_14 p_4589->g_220 p_4589->g_400.f0 p_4589->g_671 p_4589->g_535 hip_const_12 hip_const_3 p_4589->g_873 p_4589->g_495 p_4589->g_877 p_4589->g_928 hip_const_1 p_4589->g_797 p_4589->g_448 p_4589->g_449 p_4589->g_400.f3 p_4589->g_400.f4 p_4589->g_172 p_4589->g_1052.f0 p_4589->g_400.f1 p_4589->g_605 p_4589->g_757 p_4589->g_905
 * writes: p_4589->g_537 p_4589->g_424 p_4589->g_223 p_4589->g_400.f7 p_4589->g_154 p_4589->g_685 p_4589->g_400.f0 p_4589->g_145 p_4589->g_757 p_4589->g_671 p_4589->g_535 p_4589->g_400.f4 p_4589->g_873 p_4589->g_877 p_4589->g_495 p_4589->g_928 p_4589->g_605
 */
__device__ uint16_t  func_61(int16_t  p_62, int64_t  p_63, int8_t  p_64, int64_t * p_65, struct S2 * p_4589)
{ /* block id: 290 */
    uchar1 l_615 = make_uchar1(0xD3L);
    int64_t **l_616 = &p_4589->g_449;
    int64_t **l_617 = &p_4589->g_449;
    int32_t l_620[9] = {(-9L), 0xBE5B11DCL, (-9L), 0xBE5B11DCL, (-9L), 0xBE5B11DCL, (-9L), 0xBE5B11DCL, (-9L)};
    struct S0 ***l_624[10] = {&p_4589->g_424, &p_4589->g_424, &p_4589->g_424, &p_4589->g_424, &p_4589->g_424, &p_4589->g_424, &p_4589->g_424, &p_4589->g_424, &p_4589->g_424, &p_4589->g_424};
    uint8_t **l_649 = nullptr;
    __shared__ int64_t **l_655;
    l_655 = &p_4589->g_449;
    __shared__ struct S1 l_675;
    l_675 = {0x0D1D42F4L,-1221,-15252,1,-4,0x9E51C81CL,0x05CC9AFBL};
    int32_t l_683 = (-7L);
    uint8_t l_687[3];
    __shared__ short3 l_711;
    l_711 = make_short3(0x0461L, 0x0FE2L, 0x0461L);
    __shared__ char2 l_732;
    l_732 = make_char2(0L, (-1L));
    __shared__ uint2 l_735;
    l_735 = make_uint2(0x33378E84L, 0x3A61886AL);
    char3 l_739 = make_char3((-4L), 1L, (-4L));
    uint64_t l_786 = 0x5ED45A8CA728E64ELL;
    int32_t l_872[7][7] = {{0x207BEDBBL, 0xC32866AEL, 1L, 0xC32866AEL, 0x207BEDBBL, 0x0D402CA8L, 0x207BEDBBL}, {0x207BEDBBL, 0xC32866AEL, 1L, 0xC32866AEL, 0x207BEDBBL, 0x0D402CA8L, 0x207BEDBBL}, {0x207BEDBBL, 0xC32866AEL, 1L, 0xC32866AEL, 0x207BEDBBL, 0x0D402CA8L, 0x207BEDBBL}, {0x207BEDBBL, 0xC32866AEL, 1L, 0xC32866AEL, 0x207BEDBBL, 0x0D402CA8L, 0x207BEDBBL}, {0x207BEDBBL, 0xC32866AEL, 1L, 0xC32866AEL, 0x207BEDBBL, 0x0D402CA8L, 0x207BEDBBL}, {0x207BEDBBL, 0xC32866AEL, 1L, 0xC32866AEL, 0x207BEDBBL, 0x0D402CA8L, 0x207BEDBBL}, {0x207BEDBBL, 0xC32866AEL, 1L, 0xC32866AEL, 0x207BEDBBL, 0x0D402CA8L, 0x207BEDBBL}};
    uint32_t l_911 = 0x687644F6L;
    uint64_t **l_941 = &p_4589->g_115[5];
    int4 l_953 = make_int4(0x2B3A1577L, 0L, 0x2B3A1577L, 0L);
    uint64_t l_990[9][4] = {{0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}, {0x4F3214BE6EA55B45LL, 0x4F3214BE6EA55B45LL, 0xBB4EEF9F1EE86A49LL, 0x4F3214BE6EA55B45LL}};
    struct S1 *l_1015[2];
    uint32_t ****l_1039 = nullptr;
    int2 l_1050 = make_int2(0x4DE50092L, 0x89EE2B25L);
    int32_t ***l_1061 = nullptr;
    int i, j;
    for (int i = 0; i < 3; i++)
        l_687[i] = 1UL;
    for (int i = 0; i < 2; i++)
        l_1015[i] = nullptr;
    if (((make_uchar1(l_615.x).x , l_616) == (l_617 = l_616)))
    { /* block id: 292 */
        int32_t *l_618 = &hip_const_13;
        int32_t *l_619[2][6] = {{&hip_const_7[2].f4, &hip_const_7[2].f4, &hip_const_7[2].f5, &hip_const_7[2].f4, &hip_const_7[2].f4, &hip_const_7[2].f5}, {&hip_const_7[2].f4, &hip_const_7[2].f4, &hip_const_7[2].f5, &hip_const_7[2].f4, &hip_const_7[2].f4, &hip_const_7[2].f5}};
        struct S0 ***l_623 = &p_4589->g_424;
        int32_t l_662 = 0xF2F58411L;
        uint64_t l_672 = 1UL;
        __shared__ uint32_t *l_676;
        l_676 = &hip_const_9.f6;
        int i, j;
lbl_686:
        l_620[2] ^= p_63;
        if ((safe_sub_func_int64_t_s_s((*p_65), ((l_624[7] = l_623) == &p_4589->g_424))))
        { /* block id: 295 */
            __shared__ int32_t l_625;
            l_625 = 0x281C4298L;
            uint32_t *l_638 = nullptr;
            __shared__ uint32_t *l_639;
            l_639 = nullptr;
            struct S0 **l_644 = &p_4589->g_425;
            int64_t **l_656 = &p_4589->g_449;
            int4 l_657 = make_int4(0xD3EE6B74L, 0L, 0xD3EE6B74L, 0L);
            int3 l_670 = make_int3(0xD1B6A3DDL, (-10L), 0xD1B6A3DDL);
            uint32_t *l_677[2];
            uint32_t *l_680[4][9] = {{nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr}, {nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr}, {nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr}, {nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr, &hip_const_7[2].f0, &hip_const_9.f5, &hip_const_7[2].f0, nullptr}};
            uint32_t **l_679 = &l_680[1][6];
            struct S1 *l_684[6][5][5] = {{{&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}}, {{&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}}, {{&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}}, {{&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}}, {{&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}}, {{&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}, {&hip_const_9, &hip_const_5, &hip_const_9, &hip_const_9, &hip_const_5}}};
            int i, j, k;
            for (int i = 0; i < 2; i++)
                l_677[i] = &p_4589->g_400.f7;
            if (((l_625 , (safe_mul_func_uint64_t_u_u((safe_div_func_int32_t_s_s(l_625, (safe_mod_func_int64_t_s_s((safe_lshift_func_int64_t_s_s(((safe_sub_func_uint32_t_u_u((p_4589->g_537.x |= (0x99L || 0xFAL)), (*l_618))) < (!((**p_4589->g_424) , (p_63 |= (safe_div_func_uint32_t_u_u(((safe_sub_func_int16_t_s_s((p_4589->g_326 == p_4589->g_326), (((*l_623) = l_644) != &p_4589->g_425))) <= l_620[7]), p_62)))))), 55)), 0x3D1C319A76067A00LL)))), 0x1E0D99EDAD7CE0AALL))) <= p_4589->g_189.y))
            { /* block id: 299 */
                int64_t *l_647 = &hip_const_10[0][1][6];
                int64_t *l_648[2][10][4] = {{{&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}}, {{&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}, {&p_4589->g_327, &p_4589->g_327, &p_4589->g_145, &p_4589->g_145}}};
                uint8_t ***l_650 = &l_649;
                int i, j, k;
                (*p_4589->g_222) = ((((nullptr != &p_63) ^ p_63) > (safe_lshift_func_int64_t_s_u((l_620[7] = (*p_65)), 43))) , &l_620[2]);
                (*l_650) = l_649;
                return l_625;
            }
            else
            { /* block id: 304 */
                int32_t l_660 = 0x4BEBE05EL;
                int32_t l_661 = (-1L);
                int32_t l_663 = 0L;
                uint32_t l_664 = 0x3893D4F7L;
                for (p_4589->g_400.f7 = 21; (p_4589->g_400.f7 <= 22); ++p_4589->g_400.f7)
                { /* block id: 307 */
                    (*l_623) = nullptr;
                }
                p_4589->g_154.x = ((((0xA58E728CL & 1UL) == (safe_sub_func_int8_t_s_s((((p_62 |= (l_655 == l_656)) < (p_63 && (l_657.z = l_620[0]))) < ((safe_mul_func_uint64_t_u_u(p_63, ((l_615.x , (l_620[2] & 0xFC5180ED03A20E90LL)) > l_660))) == p_64)), l_660))) , p_62) > p_64);
                --l_664;
                l_663 ^= ((l_661 <= (l_644 == nullptr)) < make_uchar3(p_4589->g_669.x, p_4589->g_669.x, p_4589->g_669.x).y);
            }
            l_672--;
            l_683 |= ((((l_677[1] = (((**l_644) , l_675) , (hip_const_5 , l_676))) == ((make_long2(p_4589->g_678.x, p_4589->g_678.x).y | l_620[2]) , ((*l_679) = &hip_const_4))) , hip_const_9) , (l_657.z |= (safe_add_func_int8_t_s_s(p_64, 4L))));
            p_4589->g_685[2][3] = hip_const_9;
        }
        else
        { /* block id: 322 */
            if (p_64)
                goto lbl_686;
        }
        --l_687[1];
    }
    else
    { /* block id: 326 */
        uint8_t l_700 = 0UL;
        int16_t l_721 = (-1L);
        struct S1 *l_780[9] = {&p_4589->g_685[2][3], &p_4589->g_685[2][3], &p_4589->g_685[2][3], &p_4589->g_685[2][3], &p_4589->g_685[2][3], &p_4589->g_685[2][3], &p_4589->g_685[2][3], &p_4589->g_685[2][3], &p_4589->g_685[2][3]};
        int32_t l_792 = 1L;
        int16_t ***l_824 = nullptr;
        uint32_t *l_849 = &l_675.f5;
        uint32_t **l_848 = &l_849;
        int32_t l_866 = (-1L);
        int32_t l_867 = 0xD404DED6L;
        int32_t l_869[9] = {(-1L), (-1L), 3L, (-1L), (-1L), 3L, (-1L), (-1L), 3L};
        __shared__ int32_t *l_923;
        l_923 = &p_4589->g_757;
        int i;
        if (make_int3(1L, 0L, 0xE2882B7CL).z)
        { /* block id: 327 */
            return p_4589->g_271.x;
        }
        else
        { /* block id: 329 */
            uint8_t l_712[5];
            __shared__ int32_t l_720;
            l_720 = 0x0A06543BL;
            int32_t *l_722 = nullptr;
            int32_t *l_723[10] = {nullptr, &l_683, &l_620[1], &l_620[1], &l_683, nullptr, &l_683, &l_620[1], &l_620[1], &l_683};
            int i;
            for (int i = 0; i < 5; i++)
                l_712[i] = 0x8EL;
            p_4589->g_685[2][3].f2 = (safe_add_func_int8_t_s_s(((safe_sub_func_int16_t_s_s((((((make_long4((-10L), 5L, 0xD9672E041E62BF20LL, (safe_add_func_uint8_t_u_u(2UL, (safe_sub_func_uint32_t_u_u((safe_rshift_func_int64_t_s_u((l_700 & ((safe_unary_minus_func_int32_t_s(0x6B310FD1L)) && ((safe_sub_func_uint32_t_u_u((safe_lshift_func_uint32_t_u_s((((make_long3(p_4589->g_706.x, p_4589->g_706.x, p_4589->g_706.x) ^ make_long3((safe_sub_func_int32_t_s_s((safe_rshift_func_int16_t_s_s((p_62 = make_short4(l_711.y, l_711.y, l_711.y, l_711.y).x), 13)), ((make_ulong4(1UL, 1UL, (p_63 , (--l_712[3])), 0UL).z , ((~make_uint3(p_4589->g_715.z, p_4589->g_715.z, p_4589->g_715.z).z) , &p_4589->g_425)) != &p_4589->g_425))), 0xD38108FAA1B794C6LL, (-1L)))).x | ((safe_mod_func_uint32_t_u_u(0x89139EB7L, (((safe_sub_func_uint32_t_u_u((l_720 < 0x89L), (-10L))) & hip_const_7[2].f2) , 0xED44ED4CL))) >= (-6L))), l_687[1])), p_63)) , p_4589->g_400.f8))), l_721)), hip_const_14[1][3]))))) | make_long4((-1L), (-1L), (-1L), (-1L)))) & make_long4(0xE7FF497BA0F4B3A8LL, 0xE7FF497BA0F4B3A8LL, 0xE7FF497BA0F4B3A8LL, 0xE7FF497BA0F4B3A8LL))).z & p_63), l_700)) >= 0x2AFF98560A8025D1LL), 0x52L));
            for (p_62 = (-17); (p_62 != (-5)); ++p_62)
            { /* block id: 335 */
                if (p_4589->g_220.x)
                    break;
            }
        }
        for (p_4589->g_400.f0 = 0; (p_4589->g_400.f0 >= 33); p_4589->g_400.f0++)
        { /* block id: 341 */
            int16_t l_740 = 0L;
            long1 l_754 = make_long1(0x253D340502D22C13LL);
            int32_t l_785 = 0x3377593CL;
            int32_t l_791 = 0L;
            struct S1 l_808 = {-1L,1742,12838,0,-15,0x7A7F37F5L,0UL};
            int16_t **l_822 = &p_4589->g_326;
            int16_t ***l_821 = &l_822;
            __shared__ uint4 l_844;
            l_844 = make_uint4(4294967292UL, 0x123AA290L, 4294967292UL, 0x123AA290L);
            int8_t l_871 = 0xDCL;
            __shared__ uint8_t l_918;
            l_918 = 251UL;
            int64_t l_922 = 0L;
            int i;
            for (p_4589->g_145 = (-19); (p_4589->g_145 < 25); p_4589->g_145 = safe_add_func_uint32_t_u_u(p_4589->g_145, 5))
            { /* block id: 344 */
                int8_t *l_748[5][5][7] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                __shared__ int32_t l_749;
                l_749 = (-1L);
                uint32_t l_764 = 4294967295UL;
                __shared__ int32_t l_789;
                l_789 = 0xD1CD90F5L;
                int32_t l_804 = 0xA7910031L;
                int32_t l_855 = 0xD1FEAD80L;
                __shared__ int32_t l_868;
                l_868 = 7L;
                __shared__ int32_t l_870;
                l_870 = 0xAE99CA50L;
                int i, j, k;
                if (((safe_add_func_uint16_t_u_u((((make_char3(l_732.y, l_732.y, l_732.y).z | ((p_64 , &p_4589->g_424) != nullptr)) | (make_char4((safe_lshift_func_int8_t_s_s((p_4589->g_535.x = (((make_uint1(l_735.x) | make_uint1(p_4589->g_736.y))).x , (((safe_lshift_func_uint32_t_u_s((make_char2(l_739.z, l_739.z).x > p_4589->g_400.f4), l_700)) ^ l_740) <= ((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint32_t_u_s(((0UL & make_ushort3(0UL, 0UL, 7UL).x) != (l_620[8] = (!make_long1((((*p_65) & (make_uint4(p_4589->g_745.z, p_4589->g_745.z, p_4589->g_745.z, p_4589->g_745.z).y || ((safe_rshift_func_uint32_t_u_u((l_675.f4 , p_4589->g_745.z), 15)) > hip_const_12[6][4][0]))) != 2UL)).x))), l_675.f2)), 4)) && 4L)))), p_64)), l_749, 0x24L, 0x1FL).w < p_4589->g_400.f7)) | p_63), 0x684EL)) && 0x06D6753CL))
                { /* block id: 347 */
                    struct S1 *l_763 = nullptr;
                    struct S1 **l_762 = &l_763;
                    __shared__ uchar1 l_771;
                    l_771 = make_uchar1(250UL);
                    uint8_t *l_787 = nullptr;
                    uint8_t *l_788[3];
                    // attempting a hip shared for loop
                    __shared__ int32_t *l_790[5];
                    for (int i = 0; i < 5; i++)
                        l_790[i] = &hip_const_1[1][5][1];
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_788[i] = nullptr;
                    for (p_64 = 0; (p_64 <= 3); p_64 += 1)
                    { /* block id: 350 */
                        int64_t *l_755 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int64_t *l_756[10];
                        for (int i = 0; i < 10; i++)
                            l_756[i] = nullptr;
                        __shared__ int32_t *l_760;
                        l_760 = &p_4589->g_671;
                        int i;
                        (*l_760) ^= (safe_rshift_func_uint8_t_u_s((safe_mul_func_int64_t_s_s((p_4589->g_757 = make_long2(0xA7BAF27AFE74AD48LL, make_long1(l_754.x).x).x), (safe_rshift_func_int16_t_s_s(p_63, 4)))), 6));
                        (*p_4589->g_222) = &p_4589->g_757;
                        if (l_749)
                            continue;
                    }
                    l_764 &= (safe_unary_minus_func_uint32_t_u((nullptr == l_762)));
                    l_792 = (+(l_791 &= ((((-1L) == ((p_4589->g_535.y &= (safe_mod_func_int64_t_s_s((((safe_sub_func_uint8_t_u_u(l_749, (make_uchar1((l_675.f1 = make_uchar1(l_771.x).x)).x | (l_789 &= (hip_const_5.f5 >= (safe_sub_func_int32_t_s_s(((((safe_mul_func_uint16_t_u_u(((safe_div_func_int32_t_s_s(((safe_lshift_func_uint32_t_u_s((p_63 & ((*l_762) != l_780[7])), 2)) | make_short4(l_771.x, 1L, (-1L), (l_785 &= (safe_mul_func_uint16_t_u_u(((safe_mul_func_int32_t_s_s((l_764 && p_4589->g_521.x), hip_const_7[2].f8)) < p_4589->g_109.x), hip_const_7[2].f0)))).z), l_721)) > 0xBEC0710CL), p_62)) > 0x52L) || l_786) , l_675.f5), l_764))))))) && p_63) <= 7UL), 0xCE5AC394A992D0A0LL))) > (-1L))) , hip_const_12[6][5][0]) ^ p_63)));
                }
                else
                { /* block id: 363 */
                    uint32_t l_805 = 0xD851A478L;
                    uint32_t *l_846[7];
                    uint32_t **l_845 = &l_846[6];
                    int32_t *l_852 = nullptr;
                    int32_t l_865[7][4] = {{5L, 0L, 0x8E6AC5C7L, 0L}, {5L, 0L, 0x8E6AC5C7L, 0L}, {5L, 0L, 0x8E6AC5C7L, 0L}, {5L, 0L, 0x8E6AC5C7L, 0L}, {5L, 0L, 0x8E6AC5C7L, 0L}, {5L, 0L, 0x8E6AC5C7L, 0L}, {5L, 0L, 0x8E6AC5C7L, 0L}};
                    struct S1 **l_876[3];
                    int i, j;
                    for (int i = 0; i < 7; i++)
                        l_846[i] = &hip_const_2;
                    for (int i = 0; i < 3; i++)
                        l_876[i] = nullptr;
                    for (l_675.f5 = 0; (l_675.f5 <= 2); l_675.f5 += 1)
                    { /* block id: 366 */
                        uint8_t *l_798 = nullptr;
                        uint8_t *l_799 = nullptr;
                        __shared__ uint8_t *l_800;
                        l_800 = nullptr;
                        uint8_t *l_801 = &l_687[1];
                        int32_t *l_802 = nullptr;
                        int32_t *l_803[10];
                        int i;
                        for (int i = 0; i < 10; i++)
                            l_803[i] = &l_792;
                        l_675.f2 = (make_ulong2(18446744073709551612UL, 8UL).x > ((~(safe_sub_func_int32_t_s_s((0x61L >= (safe_div_func_int8_t_s_s(make_char4(p_4589->g_797.x, p_4589->g_797.x, p_4589->g_797.x, p_4589->g_797.x).z, ((*l_801) = p_63)))), l_785))) > hip_const_3));
                        if (p_64)
                            continue;
                        l_805--;
                    }
                    for (l_675.f5 = 1; (l_675.f5 <= 4); l_675.f5 += 1)
                    { /* block id: 374 */
                        struct S0 ***l_812[4];
                        struct S0 ****l_813 = &l_624[7];
                        struct S0 ****l_814 = &l_812[0];
                        struct S0 ***l_816 = &p_4589->g_424;
                        __shared__ struct S0 ****l_815;
                        l_815 = &l_816;
                        int16_t ****l_823 = &l_821;
                        int4 l_827 = make_int4(0x853482F5L, 0x7EA47C54L, 0x853482F5L, 0x7EA47C54L);
                        int32_t *l_828 = &p_4589->g_400.f4;
                        int32_t *l_841 = nullptr;
                        __shared__ int32_t *l_842;
                        l_842 = nullptr;
                        int32_t *l_843[10];
                        uint32_t ***l_847[8] = {&l_845, &l_845, &l_845, &l_845, &l_845, &l_845, &l_845, &l_845};
                        int i;
                        for (int i = 0; i < 4; i++)
                            l_812[i] = nullptr;
                        for (int i = 0; i < 10; i++)
                            l_843[i] = nullptr;
                        (*l_815) = ((l_808 , (safe_rshift_func_int16_t_s_s(make_short3(p_4589->g_811.y, p_4589->g_811.y, p_4589->g_811.y).z, 12))) , ((*l_814) = ((*l_813) = l_812[0])));
                        l_808.f4 = (safe_sub_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(1L, (((*l_823) = l_821) != (l_824 = &l_822)))), ((+(+make_int1(((safe_div(make_int3(l_827.z, l_827.z, l_827.z), make_int3((((-1L) | (((*l_828) = p_64) < ((safe_sub(make_uint4((safe_mul_func_int16_t_s_s(((((safe_add_func_int32_t_s_s((p_4589->g_154.y = (safe_mod_func_int16_t_s_s(p_4589->g_837, (safe_add_func_int16_t_s_s(make_short2(0xC5AEL, (-8L)).x, make_short4(p_4589->g_840.z, p_4589->g_840.z, p_4589->g_840.z, p_4589->g_840.z).w))))), 0x54420091L)) == make_uint3(l_844.z, l_844.z, l_844.z).y) , (l_848 = l_845)) != ((l_805 || (-10L)) , p_4589->g_850)), p_63)), 0x8D6B7B2AL, 0xFA6BF1A0L, 4UL), make_uint4(0x00D53C04L, 0x00D53C04L, 0x00D53C04L, 0x00D53C04L)))).z)) ^ p_62), l_711.y, 0xBCBDD1D8L)))).y).x)) & (-1L))));
                        (*p_4589->g_222) = l_852;
                        (*l_828) = (l_808 , (!(~0L)));
                    }
                    for (l_749 = 25; (l_749 <= (-19)); l_749 = safe_sub_func_uint8_t_u_u(l_749, 2))
                    { /* block id: 389 */
                        int32_t *l_856 = &l_620[4];
                        int32_t *l_857 = &l_785;
                        int32_t *l_858 = &hip_const_13;
                        int32_t *l_859 = &l_791;
                        int32_t *l_860 = &l_804;
                        __shared__ int32_t *l_861;
                        l_861 = nullptr;
                        int32_t *l_862 = &p_4589->g_400.f5;
                        int32_t *l_863 = &l_804;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_864[3];
                        for (int i = 0; i < 3; i++)
                            l_864[i] = &hip_const_13;
                        int i;
                        for (int i = 0; i < 3; i++)
                            l_864[i] = &hip_const_13;
                        --p_4589->g_873;
                    }
                    p_4589->g_877 = &p_4589->g_685[3][2];
                }
                for (l_740 = 3; (l_740 < 10); l_740 = safe_add_func_int16_t_s_s(l_740, 7))
                { /* block id: 396 */
                    uint16_t *l_886 = &hip_const_14[0][5];
                    int64_t *l_906 = &p_4589->g_327;
                    ulong1 l_910 = make_ulong1(0x8C63D73108E341E7LL);
                    __shared__ uint64_t *l_912;
                    l_912 = nullptr;
                    uint64_t *l_913 = &p_4589->g_113;
                    int32_t l_914 = 0xAA73CFAFL;
                    uint16_t *l_915 = nullptr;
                    uint16_t *l_916 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ uint32_t *l_917[1];
                    for (int i = 0; i < 1; i++)
                        l_917[i] = nullptr;
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_917[i] = nullptr;
                    if (p_64)
                        break;
                    if ((safe_mod_func_uint16_t_u_u(((*p_65) ^ (safe_unary_minus_func_int32_t_s((((((((((safe_unary_minus_func_uint32_t_u((l_870 = ((l_869[0] &= (safe_lshift_func_uint16_t_u_s(make_ushort3(0x343FL, (p_4589->g_361[7][2] = 0x5631L), (safe_mod_func_int8_t_s_s((~(safe_add_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(((safe_mul_func_uint64_t_u_u(0xC490AA5CBABFE523LL, (l_914 = (safe_lshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((((safe_mod_func_uint16_t_u_u(((safe_div(make_ushort3(((safe_mod_func_uint8_t_u_u((make_ulong2(p_4589->g_905.x, p_4589->g_905.x).x || ((((((*l_906) = 1L) , ((*l_913) = ((((((0xB6L || (((p_4589->g_873 ^= (l_749 = (((make_ushort4(p_4589->g_907.x, p_4589->g_907.x, p_4589->g_907.x, p_4589->g_907.x).w <= ((safe_lshift_func_uint64_t_u_u((0xBF03L && ((make_ulong4(make_ulong3(l_910.x, l_910.x, l_910.x).z, ((hip_const_7[2].f5 ^ p_63) >= (-3L)), 0xD06B646634707A41LL, 18446744073709551611UL).z , nullptr) == &p_65)), p_64)) || p_64)) < p_4589->g_811.x) & hip_const_14[2][4]))) ^ p_62) > p_4589->g_220.x)) >= (-9L)) && l_911) ^ l_910.x) && l_870) < 0x2A3E3A67EFAD95DELL))) >= 1L) < (-1L)) , p_63)), l_910.x)) >= 4UL), l_749, 0x696FL), make_ushort3(1UL, 1UL, 1UL)))).y, 0x104BL)) , 0x31L) > 7UL), 6L)), l_740))))) , 2L), p_4589->g_472.x)), 0xBB9FL))), 0x90L))).y, p_64))) >= l_910.x)))) <= p_64) == 0xD5A1E44BL) < l_918) ^ p_62) , p_62) < p_63) , &l_808) == &l_675)))), 8UL)))
                    { /* block id: 406 */
                        int32_t *l_919 = &l_872[4][1];
                        uint8_t l_920 = 250UL;
                        (*l_919) = 0x3CF28F73L;
                        if (l_920)
                            break;
                        return p_4589->g_873;
                    }
                    else
                    { /* block id: 410 */
                        int32_t *l_921 = &l_872[4][6];
                        (*l_921) &= l_700;
                    }
                    l_922 = (&l_786 == nullptr);
                    if (p_64)
                        continue;
                }
            }
        }
        l_923 = &l_872[4][6];
    }
    for (p_4589->g_495 = 0; (p_4589->g_495 != 13); ++p_4589->g_495)
    { /* block id: 422 */
        uint64_t l_937 = 0x59491CD6EFEAC7C9LL;
        __shared__ struct S0 l_952;
        l_952 = {0x40EF6C35L,0x85BED5715E7BA6A1LL,4UL,-24,0x11A90091L,-5L,-1L,18446744073709551615UL,18446744073709551615UL};
        if (((p_63 = ((nullptr != &p_63) | (l_675 , (safe_mul_func_uint8_t_u_u((((*p_4589->g_877) = l_675) , p_4589->g_928), p_4589->g_400.f7))))) == 0UL))
        { /* block id: 425 */
            uint32_t l_938 = 1UL;
            int32_t l_942[8][3][3] = {{{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}, {{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}, {{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}, {{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}, {{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}, {{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}, {{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}, {{0L, (-5L), 0L}, {0L, (-5L), 0L}, {0L, (-5L), 0L}}};
            int8_t *l_943 = nullptr;
            int8_t *l_944[7][7] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
            __shared__ int2 l_945;
            l_945 = make_int2((-1L), 0x0EA8BB80L);
            __shared__ int32_t *l_946;
            l_946 = &hip_const_13;
            int32_t *l_947 = &p_4589->g_400.f4;
            int i, j, k;
            (*l_947) ^= (safe_rshift_func_int8_t_s_u((l_945.y |= ((safe_div_func_uint16_t_u_u(0UL, ((make_ushort3((safe_mod_func_int8_t_s_s((((l_938 = l_937) , (l_937 >= p_63)) ^ ((hip_const_5.f5 != ((safe_lshift_func_int32_t_s_s((nullptr != l_941), ((nullptr == &p_4589->g_223) ^ hip_const_1[0][1][2]))) ^ p_4589->g_797.z)) <= (**p_4589->g_448))), l_942[2][1][1])), 65535UL, 1UL) ^ make_ushort3(0x6DDBL, 0x6DDBL, 0x6DDBL))).y)) , p_4589->g_400.f3)), 3));
            return p_4589->g_172.y;
        }
        else
        { /* block id: 430 */
            struct S0 l_951 = {0x4C7CA298L,0UL,3UL,7,0x3BFB33AAL,0xDFE3FE33L,0x6A0C416AL,18446744073709551615UL,0xC7F33011L};
            for (l_911 = (-18); (l_911 != 28); l_911++)
            { /* block id: 433 */
                int8_t l_950 = (-6L);
                if (l_950)
                    break;
            }
            l_952 = l_951;
        }
    }
    if (make_int2(l_953.z, l_953.z).y)
    { /* block id: 439 */
        int32_t *l_956 = &p_4589->g_928;
        int3 l_957 = make_int3(2L, 0x00D24B5CL, 2L);
        char1 l_975 = make_char1((-1L));
        uint8_t ***l_1008 = &l_649;
        struct S1 *l_1016 = &hip_const_9;
        int i;
        for (p_4589->g_400.f7 = 0; (p_4589->g_400.f7 < 57); p_4589->g_400.f7 = safe_add_func_int32_t_s_s(p_4589->g_400.f7, 3))
        { /* block id: 442 */
            int2 l_958 = make_int2(0x79407292L, (-3L));
            uint32_t l_1021[2];
            int64_t **l_1036 = &p_4589->g_449;
            __shared__ int32_t l_1062;
            l_1062 = 0xAB1A1958L;
            int i;
            for (int i = 0; i < 2; i++)
                l_1021[i] = 0xD6946E34L;
            l_956 = l_956;
        }
        for (p_4589->g_671 = 0; (p_4589->g_671 <= (-13)); p_4589->g_671--)
        { /* block id: 489 */
            __shared__ int32_t *l_1065;
            l_1065 = &l_620[2];
            ushort2 l_1066 = make_ushort2(65535UL, 0xEE44L);
            int i;
            (*l_1065) &= (0x10A7BD3DL ^ (*l_956));
            (*l_956) &= ((p_63 < make_ushort1(l_1066.y).x) && make_char2(0x0FL, (-1L)).x);
            (*l_1065) |= (safe_lshift_func_int64_t_s_s((*l_956), (*p_65)));
        }
        return (*l_956);
    }
    else
    { /* block id: 495 */
        int16_t *l_1078 = &p_4589->g_837;
        int32_t l_1081 = (-6L);
        struct S0 l_1082 = {8UL,0x5E406DE85EFE3A3FLL,5UL,70,-1L,0xC7220356L,1L,0xD917D776L,18446744073709551610UL};
        struct S0 *l_1093 = &p_4589->g_1052;
        if ((safe_lshift_func_uint32_t_u_s((((safe_div_func_uint16_t_u_u((p_64 , ((make_ushort4((((p_63 & (safe_add_func_uint16_t_u_u(((safe_unary_minus_func_uint16_t_u(((nullptr == l_1078) || (make_long1(3L).x < ((safe_mul_func_int64_t_s_s(l_1081, (l_1082 , ((safe_rshift_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u((((*p_65) && (((safe_lshift_func_uint16_t_u_u((+(make_short3(0L, 1L, (!p_62)).y > 0xF389L)), 4)) , 0xA329E7B6L) == p_63)) && p_64), p_4589->g_1052.f0)) > l_1082.f5), hip_const_7[2].f1)) != 0xB5L)))) ^ l_1082.f2))))) & p_64), hip_const_9.f5))) <= l_1082.f5) != l_1082.f6), hip_const_5.f0, 1UL, 65527UL).w ^ p_4589->g_400.f1) && (**p_4589->g_448))), hip_const_3)) <= p_4589->g_706.x) >= p_64), 14)))
        { /* block id: 496 */
            int32_t *l_1091 = &hip_const_1[1][0][2];
            __shared__ int32_t *l_1092;
            l_1092 = &p_4589->g_605;
            (*l_1092) ^= ((safe_lshift_func_int32_t_s_s(make_int1((l_911 > ((nullptr != &p_4589->g_495) <= make_long1((-1L)).x))).x, 10)) || 248UL);
        }
        else
        { /* block id: 498 */
            int32_t *l_1094 = &p_4589->g_757;
            l_1093 = &l_1082;
            (*l_1094) ^= ((&l_1081 == nullptr) == p_64);
        }
        return p_4589->g_905.x;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_4589->g_103 hip_const_7.f3 p_4589->g_109 p_4589->g_113 p_4589->g_115 hip_const_1 p_4589->g_222 hip_const_5.f4 hip_const_10 p_4589->g_154 hip_const_5.f2 hip_const_5.f0 hip_const_9.f0 p_4589->g_361 hip_const_13 p_4589->g_376 p_4589->g_379 p_4589->g_400 p_4589->g_424 p_4589->g_427 p_4589->g_189 p_4589->g_447 hip_const_7.f4 p_4589->g_472 hip_const_14 p_4589->g_210 p_4589->g_172 p_4589->g_448 p_4589->g_449 p_4589->g_495 p_4589->g_425 p_4589->g_223 p_4589->g_535 p_4589->g_536 p_4589->g_537 p_4589->g_601 p_4589->g_152 hip_const_7.f2 hip_const_7.f0 p_4589->g_220 p_4589->g_605 hip_const_7.f8 p_4589->g_143 hip_const_7
 * writes: p_4589->g_113 p_4589->g_145 p_4589->g_222 p_4589->g_154 p_4589->g_143 p_4589->g_327 p_4589->g_103 p_4589->g_424 p_4589->g_427 p_4589->g_189 p_4589->g_447 p_4589->g_495 p_4589->g_400.f6 p_4589->g_520 p_4589->g_223 p_4589->g_400.f8 p_4589->g_425 p_4589->g_400.f2 p_4589->g_379
 */
__device__ uint64_t  func_68(uint16_t  p_69, int64_t * p_70, uint32_t  p_71, uint32_t  p_72, struct S2 * p_4589)
{ /* block id: 12 */
    uint32_t *l_85 = &hip_const_5.f6;
    uint32_t **l_86 = &l_85;
    uint32_t *l_88 = &hip_const_7[2].f0;
    __shared__ uint32_t **l_87;
    l_87 = &l_88;
    uint32_t *l_90 = &hip_const_9.f6;
    __shared__ uint32_t **l_89;
    l_89 = &l_90;
    int32_t l_93[6][10] = {{0x3E9E3DC1L, 0x09B68504L, (-8L), (-1L), 0x8ED7A3FEL, (-7L), 0x8ED7A3FEL, (-1L), (-8L), 0x09B68504L}, {0x3E9E3DC1L, 0x09B68504L, (-8L), (-1L), 0x8ED7A3FEL, (-7L), 0x8ED7A3FEL, (-1L), (-8L), 0x09B68504L}, {0x3E9E3DC1L, 0x09B68504L, (-8L), (-1L), 0x8ED7A3FEL, (-7L), 0x8ED7A3FEL, (-1L), (-8L), 0x09B68504L}, {0x3E9E3DC1L, 0x09B68504L, (-8L), (-1L), 0x8ED7A3FEL, (-7L), 0x8ED7A3FEL, (-1L), (-8L), 0x09B68504L}, {0x3E9E3DC1L, 0x09B68504L, (-8L), (-1L), 0x8ED7A3FEL, (-7L), 0x8ED7A3FEL, (-1L), (-8L), 0x09B68504L}, {0x3E9E3DC1L, 0x09B68504L, (-8L), (-1L), 0x8ED7A3FEL, (-7L), 0x8ED7A3FEL, (-1L), (-8L), 0x09B68504L}};
    uint16_t *l_96 = &hip_const_6;
    uint16_t *l_97[2];
    ushort4 l_100 = make_ushort4(0x76FDL, 1UL, 0x76FDL, 1UL);
    int32_t l_106 = 0x4D0E7C88L;
    int32_t l_110 = 0xF8190269L;
    ushort1 l_111 = make_ushort1(65532UL);
    uint64_t *l_112[6][1] = {{&hip_const_7[2].f1}, {&hip_const_7[2].f1}, {&hip_const_7[2].f1}, {&hip_const_7[2].f1}, {&hip_const_7[2].f1}, {&hip_const_7[2].f1}};
    uint64_t **l_114 = &l_112[3][0];
    int32_t *l_129 = &l_106;
    uint32_t l_153 = 0x0BABF467L;
    int64_t *l_179[1][10];
    int32_t l_207 = 0xFBD2DB29L;
    char2 l_242 = make_char2(0x07L, 0xCDL);
    __shared__ uchar2 l_260;
    l_260 = make_uchar2(255UL, 254UL);
    __shared__ char3 l_263;
    l_263 = make_char3((-1L), (-2L), (-1L));
    struct S0 l_268 = {0x18D7C328L,0x494CCD08A4846136LL,0x9113F0E6L,18,9L,-9L,1L,0x21B171C3L,0UL};
    ushort2 l_272 = make_ushort2(1UL, 7UL);
    int16_t *l_286[9][8][3] = {{{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}};
    int32_t l_304 = 0xDB158A97L;
    ulong1 l_321 = make_ulong1(18446744073709551615UL);
    uint16_t l_371 = 65535UL;
    uint4 l_384 = make_uint4(4UL, 1UL, 4UL, 1UL);
    __shared__ uint8_t l_439;
    l_439 = 0xDFL;
    ushort3 l_446 = make_ushort3(1UL, 0x4ED8L, 1UL);
    int32_t l_485 = 0x70DBD586L;
    // attempting a hip shared for loop
    __shared__ uint64_t l_498[5][8];
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 8; j++)
            l_498[i][j] = 18446744073709551608UL;
    }
    __shared__ char4 l_531;
    l_531 = make_char4(0L, (-7L), 0L, (-7L));
    int8_t *l_534 = nullptr;
    int2 l_543 = make_int2(0x11A8B2A2L, 1L);
    // attempting a hip shared for loop
    __shared__ struct S1 l_567[5][1];
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 1; j++)
            l_567[i][j] = {-8L,204,-2869,1,35,0x2D53F5A0L,0UL};
    }
    int i, j, k;
    for (int i = 0; i < 2; i++)
        l_97[i] = &hip_const_14[0][5];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 10; j++)
            l_179[i][j] = &hip_const_10[0][1][6];
    }
    if ((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint32_t_u_s(((((*l_86) = l_85) != ((*l_89) = ((*l_87) = &hip_const_4))) && (((p_4589->g_113 &= (safe_rshift_func_uint16_t_u_u(l_93[5][1], (safe_mul_func_uint16_t_u_u((p_69--), (make_ushort3(l_100.z, l_100.z, l_100.z).y < ((safe_sub(make_ushort2(p_4589->g_103.y, p_4589->g_103.y), ((safe_sub(make_ushort2((l_106 = hip_const_7[2].f3), 1UL), ((safe_mod(make_ushort2(p_4589->g_109.x, p_4589->g_109.x), ((make_ushort2(1UL, (l_110 = 0UL)) & make_ushort2(l_111.x, l_111.x)))))))))))).y)))))) == make_long1(l_93[5][1]).x) ^ (((*l_114) = l_112[0][0]) != (p_72 , p_4589->g_115[1])))), hip_const_1[1][0][2])), 6UL)))
    { /* block id: 21 */
        int32_t *l_116 = &l_93[1][7];
        __shared__ int32_t *l_117;
        l_117 = &l_106;
        int32_t *l_118 = &l_93[5][1];
        int32_t *l_119 = &hip_const_13;
        int32_t *l_120 = &hip_const_13;
        int32_t *l_121 = nullptr;
        int32_t l_122 = (-1L);
        int32_t *l_123 = nullptr;
        // attempting a hip shared for loop
        __shared__ int32_t *l_124[10];
        for (int i = 0; i < 10; i++)
            l_124[i] = &l_93[5][1];
        __shared__ uint32_t l_125;
        l_125 = 0xC4D5004DL;
        uint64_t l_137 = 18446744073709551606UL;
        int3 l_159 = make_int3(1L, 0x12986392L, 1L);
        uchar1 l_180 = make_uchar1(0x69L);
        int16_t l_206 = 5L;
        short4 l_213 = make_short4(0xC4C6L, 0xB600L, 0xC4C6L, 0xB600L);
        __shared__ ulong4 l_217;
        l_217 = make_ulong4(0x57A09A846929B31ELL, 0xAF4106D26DCC5248LL, 0x57A09A846929B31ELL, 0xAF4106D26DCC5248LL);
        __shared__ int16_t *l_289;
        l_289 = &l_206;
        __shared__ struct S1 l_316;
        l_316 = {-6L,1583,-12984,1,29,18446744073709551615UL,0xAD75C8B4L};
        struct S0 l_341 = {18446744073709551607UL,0x56C4BF73BA36871CLL,0xEA10CC8CL,15,0x9B38F61AL,3L,-1L,9UL,0x50D7487AL};
        int32_t l_387 = 0x42F7637BL;
        __shared__ int32_t l_418;
        l_418 = 5L;
        uint64_t **l_460 = &l_112[0][0];
        int i;
        l_125++;
lbl_239:
        for (p_69 = 1; (p_69 <= 6); p_69 += 1)
        { /* block id: 25 */
            __shared__ int32_t *l_131;
            l_131 = &l_93[0][3];
            __shared__ int64_t *l_144;
            l_144 = &p_4589->g_145;
            int i;
            for (l_122 = 6; (l_122 >= 0); l_122 -= 1)
            { /* block id: 28 */
                int32_t **l_128[10];
                int i;
                for (int i = 0; i < 10; i++)
                    l_128[i] = &l_124[3];
                l_129 = &l_93[5][1];
                for (l_106 = 0; (l_106 <= 6); l_106 += 1)
                { /* block id: 32 */
                    int32_t *l_130 = &hip_const_1[1][0][2];
                    uint1 l_136 = make_uint1(2UL);
                    int32_t l_138 = 5L;
                    int i;
                    l_129 = (l_130 = &hip_const_1[1][0][2]);
                    for (l_125 = 0; (l_125 <= 6); l_125 += 1)
                    { /* block id: 37 */
                        l_131 = l_131;
                        return p_69;
                    }
                    l_110 = (l_138 = (safe_add_func_int16_t_s_s(0x953CL, ((((safe_add(make_uint1((hip_const_7[2].f8 , p_71)), make_uint1(l_136.x)))).x && (*l_131)) < l_137))));
                    return p_71;
                }
            }
            (*l_131) ^= 2L;
            (*l_118) = ((*l_117) ^= (safe_sub_func_int8_t_s_s((safe_add_func_int16_t_s_s(p_72, (make_char1((hip_const_9.f0 <= (make_uchar2(p_4589->g_143.y, p_4589->g_143.y).y ^ (((make_long4(1L, ((*l_144) = (*p_70)), ((hip_const_7[1] , (safe_rshift_func_uint64_t_u_u((safe_mul_func_int32_t_s_s(1L, (((safe_rshift_func_int32_t_s_u((-1L), 11)) & ((*l_131) <= make_ulong3(p_71, 0x7CB99A68D69DEFF5LL, make_ulong4(((~make_ulong2(p_4589->g_152.x, p_4589->g_152.x))).y, (!(l_110 &= l_153)), 0UL, 18446744073709551615UL).w).y)) && p_69))), 34))) <= p_71), (*l_118)).w || p_71) != (*p_70)) < (*l_131))))).x < p_69))), 0x53L)));
            (*l_118) = ((make_int1(0x167A4C18L) | make_int1(p_4589->g_154.y))).x;
        }
        for (p_69 = 11; (p_69 == 4); p_69 = safe_sub_func_int64_t_s_s(p_69, 3))
        { /* block id: 55 */
            int32_t l_186 = 0x5A916849L;
            int3 l_194 = make_int3((-6L), 0x2CBE3580L, (-6L));
            int32_t **l_225[8][8][3] = {{{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}, {{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}, {{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}, {{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}, {{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}, {{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}, {{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}, {{&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}, {&l_120, &l_121, &l_123}}};
            __shared__ uint16_t l_275;
            l_275 = 0x6920L;
            __shared__ int16_t *l_287;
            l_287 = nullptr;
            struct S0 l_306 = {18446744073709551611UL,18446744073709551615UL,4294967289UL,62,1L,-9L,0xE789EAF6L,9UL,9UL};
            __shared__ struct S1 l_328;
            l_328 = {0xF4D44978L,-223,7713,0,40,1UL,7UL};
            int8_t l_360 = 0x1CL;
            uchar1 l_380 = make_uchar1(7UL);
            int8_t l_405 = 4L;
            uint64_t l_432 = 0UL;
            uint16_t l_478 = 65529UL;
            int i, j, k;
            for (l_110 = 20; (l_110 != (-20)); --l_110)
            { /* block id: 58 */
                int32_t l_195 = 0L;
                int32_t l_196 = 0xB939D7BCL;
                __shared__ int32_t l_198;
                l_198 = (-10L);
                int32_t l_199[5][8][5] = {{{(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}}, {{(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}}, {{(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}}, {{(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}}, {{(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}, {(-3L), 0x5F372E63L, (-9L), 1L, 0xB5FAB9ACL}}};
                int32_t l_200 = 0x38E7317AL;
                int32_t ***l_224 = &p_4589->g_222;
                int32_t ***l_226 = &l_225[0][7][2];
                ulong4 l_235 = make_ulong4(0xE442C588E31144BCLL, 0UL, 0xE442C588E31144BCLL, 0UL);
                int i, j, k;
                for (p_72 = 0; (p_72 <= 6); p_72 += 1)
                { /* block id: 61 */
                    int i;
                    (*l_129) &= make_int1(l_159.y).x;
                }
                for (p_4589->g_145 = 0; (p_4589->g_145 != (-25)); p_4589->g_145 = safe_sub_func_uint16_t_u_u(p_4589->g_145, 5))
                { /* block id: 66 */
                    int32_t l_201[5][7] = {{0x2858AB29L, 0xE9691121L, 0xC20C0B13L, 0x9B1B637EL, 0xE9691121L, (-6L), 0xE9691121L}, {0x2858AB29L, 0xE9691121L, 0xC20C0B13L, 0x9B1B637EL, 0xE9691121L, (-6L), 0xE9691121L}, {0x2858AB29L, 0xE9691121L, 0xC20C0B13L, 0x9B1B637EL, 0xE9691121L, (-6L), 0xE9691121L}, {0x2858AB29L, 0xE9691121L, 0xC20C0B13L, 0x9B1B637EL, 0xE9691121L, (-6L), 0xE9691121L}, {0x2858AB29L, 0xE9691121L, 0xC20C0B13L, 0x9B1B637EL, 0xE9691121L, (-6L), 0xE9691121L}};
                    int i, j;
                    for (l_106 = 0; (l_106 <= 6); l_106 += 1)
                    { /* block id: 69 */
                        long3 l_183 = make_long3((-6L), 0x8C5487940BFAE5DCLL, (-6L));
                        uint32_t *l_188[7] = {nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr};
                        uint8_t *l_190 = &hip_const_12[3][3][0];
                        int32_t l_193 = 0x2CC7AF27L;
                        int32_t l_197[2][9][8] = {{{(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}}, {{(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}, {(-1L), 1L, 0x15C3C2E1L, 0x42474D7AL, 0x15C3C2E1L, 1L, (-1L), 0x4BEC2C41L}}};
                        struct S0 l_216 = {1UL,18446744073709551610UL,0xFFDFD508L,-29,0xB0ABCBBCL,0x2E24ED3EL,0xA5C54AC5L,1UL,0x5350917BL};
                        int32_t l_221 = 6L;
                        int i, j, k;
                        l_207 ^= (((((safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((0x2CL && (safe_div_func_int32_t_s_s(((safe_div(((safe_div(make_int2(((((make_uchar3(p_4589->g_172.x, p_4589->g_172.x, p_4589->g_172.x) ^ ((safe_sub(((make_uchar3(p_4589->g_109.x, 0xAFL, (safe_mul_func_int64_t_s_s((safe_sub_func_uint64_t_u_u(((l_179[0][5] == nullptr) > ((~make_uchar4(l_180.x, l_180.x, l_180.x, l_180.x))).x), (((safe_rshift_func_int64_t_s_s(make_long1(make_long1(l_183.x).x).x, ((safe_mul_func_uint8_t_u_u((p_4589->g_143.x |= (l_186 > ((p_71 = (safe_unary_minus_func_int32_t_s((p_4589->g_154.y = hip_const_7[2].f0)))) < make_int3(p_4589->g_189.x, p_4589->g_189.x, p_4589->g_189.x).y))), (*l_129))) < (p_72 = p_72)))) <= ((((safe_mul_func_uint16_t_u_u((p_4589->g_103.z++), (safe_mul_func_uint32_t_u_u(0x5BBA5569L, 4294967295UL)))) == 0UL) , 65529UL) == hip_const_11)) , (-4L)))), 0x534EDE82F0F24886LL))) ^ make_uchar3(0xB8L, 0xB8L, 0xB8L))), make_uchar3(1UL, 1UL, 1UL)))))).y <= hip_const_14[2][4]) == 0xDED41F1B08C51EAALL), 0x3307FDC0L), make_int2(0x12EF5272L, 0x12EF5272L)))), make_int2((-4L), (-4L))))).y, p_69))), 4)), l_206)) != p_69) ^ 6UL) , (*l_129)) && l_193);
                        l_194.z |= (safe_lshift_func_int16_t_s_s(make_short3(0x0300L, make_short1(p_4589->g_210.x).x, 9L).x, (!(safe_sub_func_int16_t_s_s((l_201[0][1] = ((make_short4(l_213.x, l_213.x, l_213.x, l_213.x) ^ ((make_short4(0x2A55L, 0x4FF0L, ((safe_div_func_uint16_t_u_u((nullptr == l_190), (l_216 , make_ushort2((((*l_114) = p_4589->g_115[l_106]) == nullptr), (((*l_129) | (l_198 ^= make_ulong4(l_217.z, l_217.z, l_217.z, l_217.z).x)) , make_ushort2((hip_const_14[1][3] < (((safe_rshift(make_long3(p_4589->g_220.x, p_4589->g_220.x, p_4589->g_220.x), make_long3(64, 64, 64)))).z ^ (nullptr != &hip_const_3))), hip_const_7[2].f8).x)).x))) & 0xDB47CDA2L), (-3L)) ^ make_short4(0x8B5CL, 0x8B5CL, 0x8B5CL, 0x8B5CL))))).x), l_221)))));
                    }
                    (*l_117) = (*l_129);
                }
                if (((p_4589->g_222 != &l_120) , (((*l_224) = &p_4589->g_223) != ((*l_226) = l_225[0][7][2]))))
                { /* block id: 85 */
                    __shared__ uint32_t l_236;
                    l_236 = 0x3F384602L;
                    struct S1 l_246 = {2L,782,7619,0,-26,0x7D461E55L,18446744073709551610UL};
                    uint64_t *l_258 = nullptr;
                    uint8_t *l_259[1];
                    // attempting a hip shared for loop
                    __shared__ int16_t *l_273[8][1];
                    for (int i = 0; i < 8; i++)
                    {
                        for (int j = 0; j < 1; j++)
                            l_273[i][j] = &l_206;
                    }
                    uint16_t l_274 = 7UL;
                    int i, j;
                    for (int i = 0; i < 1; i++)
                        l_259[i] = &hip_const_11;
                    (*l_118) &= (safe_mul_func_int64_t_s_s(make_long4((safe_lshift_func_uint16_t_u_s(hip_const_1[1][5][0], 2)), 0xBF3F15251F88785ALL, (safe_sub_func_uint8_t_u_u(make_uchar1(((p_4589->g_103.x >= ((safe_div_func_uint32_t_u_u(p_69, ((+(((*l_119) ^ 0x6EL) >= 65535UL)) || p_4589->g_109.x))) ^ ((((hip_const_9.f4 & (make_ulong3(l_235.x, l_235.x, l_235.x).y | (~make_ulong3(0x370606D169B05E94LL, 0xEA37F8D69C6D1A99LL, 1UL).x))) <= hip_const_8) <= hip_const_8) >= p_71))) ^ p_71)).x, p_71)), 0x448EBF453BB76792LL).x, 1L));
                    for (l_207 = 0; (l_207 <= 2); l_207 += 1)
                    { /* block id: 89 */
                        int i, j, k;
                        p_4589->g_154.y = (-5L);
                        --l_236;
                        if (p_4589->g_113)
                            goto lbl_239;
                        (*l_118) = ((*l_117) = (safe_lshift_func_int8_t_s_u(make_char1(l_242.x).x, (safe_unary_minus_func_int64_t_s(hip_const_5.f4)))));
                    }
                    for (l_122 = (-13); (l_122 == 4); l_122++)
                    { /* block id: 98 */
                        struct S1 *l_247 = nullptr;
                        struct S1 *l_248 = &hip_const_9;
                        struct S1 *l_249 = &l_246;
                        (*l_249) = l_246;
                    }
                    l_246.f4 &= (safe_rshift_func_int8_t_s_u(((p_4589->g_154.x ^= ((*l_129) = (safe_sub_func_uint64_t_u_u((*l_129), (((!(safe_lshift_func_uint64_t_u_s((safe_sub_func_uint8_t_u_u(((p_4589->g_143.x = (((*l_114) = nullptr) == l_258)) < make_uchar3(l_260.y, l_260.y, l_260.y).y), ((((p_71 > make_long2((-1L), 0xFB07C8B32E1C4210LL).x) | (safe_mod_func_uint32_t_u_u((((make_char1(l_263.y).x || ((p_69 >= ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((l_268 , (l_246.f1 = ((make_ushort2(0x68D6L, ((safe_rshift(make_ushort2(p_4589->g_271.x, p_4589->g_271.x), make_ushort2(l_272.y, l_272.y)))).x).y >= (0x3441L || (p_72 & p_72))) != 4294967287UL))), 14)), 2)) == l_246.f2)) == p_71)) <= l_274) | p_71), 6L))) , l_246.f0) | 0x400113F8EA9E55EBLL))), (*p_70)))) ^ p_72) <= l_275))))) | p_71), p_71));
                }
                else
                { /* block id: 107 */
                    __shared__ int16_t *l_290;
                    l_290 = &l_206;
                    int32_t l_303 = 0xC515AA2AL;
                    int32_t l_305 = 0xCE9D901EL;
                    struct S0 *l_307 = &l_268;
                    struct S1 l_312 = {1L,-401,6914,0,42,18446744073709551607UL,1UL};
                    struct S1 *l_313 = &hip_const_9;
                    struct S1 *l_314 = nullptr;
                    struct S1 *l_315[6][6][7] = {{{&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}}, {{&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}}, {{&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}}, {{&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}}, {{&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}}, {{&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}, {&l_312, nullptr, &hip_const_9, &l_312, &hip_const_9, &hip_const_5, nullptr}}};
                    int16_t *l_325 = nullptr;
                    int16_t **l_324[2][3] = {{&l_325, &l_325, &l_325}, {&l_325, &l_325, &l_325}};
                    int i, j, k;
                    for (l_207 = 25; (l_207 != (-15)); --l_207)
                    { /* block id: 110 */
                        int16_t **l_288[10][1][10] = {{{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}, {{&l_286[5][7][2], &l_286[2][1][0], &l_286[6][0][0], nullptr, &l_286[6][0][0], &l_286[6][0][0], &l_286[6][0][0], nullptr, nullptr, &l_286[6][0][0]}}};
                        int i, j, k;
                        l_305 &= (((l_303 = make_long4((hip_const_4 > ((*l_129) | ((safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_sub_func_int16_t_s_s((nullptr != &p_4589->g_222), make_short2((-5L), p_71).y)), (safe_sub_func_int32_t_s_s(((l_286[6][0][0] == (l_290 = (l_289 = l_287))) != (safe_add_func_int64_t_s_s(((safe_add_func_int8_t_s_s((safe_mod_func_int8_t_s_s(make_char1(0x4BL).x, (safe_mod_func_int16_t_s_s((safe_add_func_int8_t_s_s(hip_const_7[2].f6, (safe_mod_func_int64_t_s_s((0UL == hip_const_5.f3), p_71)))), hip_const_13)))), l_303)) == p_4589->g_103.y), (*l_120)))), 0L)))), l_304)) , p_72))), 0x83D2D2B7974138C1LL, 9L, 7L).z) & p_72) , l_303);
                        (*l_118) = p_71;
                    }
                    (*l_307) = l_306;
                    (*l_118) &= (safe_add_func_int64_t_s_s((l_312.f2 = ((safe_sub_func_int32_t_s_s(((l_316 = l_312) , p_72), (make_uint1((hip_const_10[0][7][6] , (safe_mul_func_int32_t_s_s((safe_div_func_uint64_t_u_u(make_ulong2(l_321.x, l_321.x).x, (safe_mul_func_int16_t_s_s(((p_4589->g_326 = (l_286[6][4][0] = l_287)) == nullptr), 65533UL)))), (p_4589->g_327 || (l_328 , (safe_div_func_uint64_t_u_u(p_69, p_69)))))))).x <= p_71))) & 1UL)), hip_const_1[1][0][2]));
                    if (p_71)
                        break;
                }
            }
            for (l_110 = 12; (l_110 >= 7); l_110 = safe_sub_func_int32_t_s_s(l_110, 5))
            { /* block id: 128 */
                int32_t l_359 = 4L;
                int32_t l_367 = (-1L);
                int32_t l_385 = 5L;
                int32_t l_386 = 0xBD46E123L;
                int32_t l_388 = (-10L);
                int32_t l_393 = 0L;
                int32_t l_395 = 5L;
                uint64_t l_397 = 0UL;
                int32_t l_411[1];
                uint8_t l_412 = 0x2AL;
                int16_t l_419 = 0xE0ABL;
                struct S0 ***l_426 = &p_4589->g_424;
                int i;
                for (int i = 0; i < 1; i++)
                    l_411[i] = (-9L);
                for (l_304 = 0; (l_304 <= 0); l_304 += 1)
                { /* block id: 131 */
                    int32_t l_358 = (-2L);
                    // attempting a hip shared for loop
                    __shared__ int8_t *l_362[6];
                    for (int i = 0; i < 6; i++)
                        l_362[i] = &l_360;
                    int32_t l_363 = (-4L);
                    int32_t l_369 = 5L;
                    __shared__ uint8_t l_389;
                    l_389 = 4UL;
                    struct S0 l_401 = {0UL,0x00A405B12BCAAC5ALL,4294967295UL,33,0x70A3C57DL,0x27129BBDL,6L,18446744073709551608UL,1UL};
                    __shared__ int32_t l_406;
                    l_406 = (-1L);
                    int32_t l_407 = 8L;
                    int32_t l_408 = (-1L);
                    int32_t l_409 = 0x97D7E8A4L;
                    int32_t l_410[6][6];
                    uint16_t l_415 = 0x1BCAL;
                    int i, j;
                    for (int i = 0; i < 6; i++)
                    {
                        for (int j = 0; j < 6; j++)
                            l_410[i][j] = (-9L);
                    }
                    if ((((l_306 , (((safe_mul_func_uint32_t_u_u(((l_363 = (((*l_117) ^= (safe_mod_func_int16_t_s_s((((safe_add_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(hip_const_5.f2, 5UL)) | ((p_4589->g_103.x |= ((((+(l_341 , (safe_sub_func_uint64_t_u_u(((safe_lshift_func_int16_t_s_s(0x0EE6L, 14)) || (safe_mod_func_uint8_t_u_u(((safe_unary_minus_func_int16_t_s(((safe_unary_minus_func_uint8_t_u((safe_rshift_func_int64_t_s_u((p_4589->g_327 = (&l_286[5][5][2] != nullptr)), ((safe_div_func_int64_t_s_s((((*l_116) = 0L) >= (safe_mul_func_int8_t_s_s(((safe_rshift_func_uint32_t_u_s(hip_const_5.f0, l_358)) < p_72), l_359))), (-1L))) < l_359))))) | 0xDC9B79D22448B24FLL))) && p_72), 0x8BL))), l_360)))) , l_358) , l_268) , 4UL)) | p_69)), hip_const_9.f0)) & p_4589->g_361[7][2]) && p_69), hip_const_10[0][1][6]))) || (*l_117))) & hip_const_5.f2), hip_const_10[0][1][6])) < (*l_120)) != 1UL)) == l_359) > p_4589->g_361[7][2]))
                    { /* block id: 137 */
                        __shared__ int32_t l_364;
                        l_364 = 1L;
                        int32_t l_365 = 1L;
                        __shared__ int32_t l_366;
                        l_366 = 0x76EC4814L;
                        int32_t l_368 = 0L;
                        int32_t l_370[6][6][1] = {{{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}};
                        __shared__ uint64_t *l_383;
                        l_383 = &l_341.f1;
                        int i, j, k;
                        l_371++;
                        (*l_117) |= make_int4(((safe_sub_func_int16_t_s_s(((((make_int1(p_4589->g_376.x).x , &p_4589->g_222) != &p_4589->g_222) | (0x07L && ((safe_mul(((make_uchar3(p_4589->g_379.x, p_4589->g_379.x, p_4589->g_379.x) ^ ((make_uchar3(l_380.x, l_380.x, l_380.x) & make_uchar3((l_268 , p_4589->g_103.y), (safe_lshift_func_int8_t_s_s((((nullptr == l_383) < make_short3((0xCCL != p_4589->g_154.y), l_364, (*l_119)).z) || (*l_118)), p_71)), 251UL))))), make_uchar3(0x0FL, 0x0FL, 0x0FL)))).x)) == (-1L)), 0x1414L)) ^ 0x6BF1L), 0xE55A843EL, l_384.w, l_364).w;
                        l_389++;
                    }
                    else
                    { /* block id: 141 */
                        __shared__ int64_t l_392;
                        l_392 = 0x05681FB296F36FBELL;
                        int32_t l_394 = 0x0DB52879L;
                        int32_t l_396 = 0x5C24016DL;
                        (*l_116) &= (-1L);
                        if (l_306.f8)
                            goto lbl_239;
                        --l_397;
                        (*l_129) ^= p_69;
                    }
                    for (l_388 = 0; (l_388 <= 2); l_388 += 1)
                    { /* block id: 149 */
                        struct S0 *l_402 = nullptr;
                        struct S0 *l_403 = nullptr;
                        __shared__ struct S0 *l_404;
                        l_404 = &l_268;
                        l_401 = p_4589->g_400;
                        (*l_404) = l_268;
                        (*l_129) |= p_72;
                    }
                    --l_412;
                    if ((p_69 > p_4589->g_376.y))
                    { /* block id: 155 */
                        uint16_t l_420 = 0x6914L;
                        --l_415;
                        l_420--;
                    }
                    else
                    { /* block id: 158 */
                        int8_t l_423 = 0xA7L;
                        return l_423;
                    }
                }
                (*l_426) = p_4589->g_424;
                (*l_116) = p_69;
                p_4589->g_427.y--;
            }
            if (p_72)
                break;
            for (l_328.f5 = 0; (l_328.f5 > 15); l_328.f5 = safe_add_func_uint16_t_u_u(l_328.f5, 3))
            { /* block id: 169 */
                // attempting a hip shared for loop
                __shared__ uint8_t l_440[4];
                for (int i = 0; i < 4; i++)
                    l_440[i] = 252UL;
                int32_t l_473 = 0xA4529255L;
                int32_t l_474 = 0xCFA9B97DL;
                int32_t l_477 = 4L;
                int i;
                p_4589->g_189.y ^= ((*l_119) < (((*l_129) == l_432) , ((safe_mul_func_uint16_t_u_u(p_71, p_69)) >= 1L)));
                for (l_306.f1 = (-10); (l_306.f1 < 39); l_306.f1 = safe_add_func_uint8_t_u_u(l_306.f1, 1))
                { /* block id: 173 */
                    uint32_t l_455 = 0x16D26AC5L;
                    uint64_t **l_461 = &l_112[0][0];
                    int32_t l_476[2];
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_476[i] = 8L;
                    if (((*l_118) ^= make_int2((safe_mod_func_uint32_t_u_u((l_439 , l_440[1]), (p_72 && (safe_div_func_uint32_t_u_u((safe_unary_minus_func_int16_t_s((((((safe_rshift_func_uint32_t_u_s(0x44CFFF9FL, 14)) , &l_268) == &l_268) , ((0xD631L ^ make_ushort4(l_446.y, l_446.y, l_446.y, l_446.y).z) ^ p_72)) && ((make_short1((((*p_70) <= (*p_70)) > 0x141CL)).x , (*l_119)) != p_69)))), p_71))))), (-1L)).x))
                    { /* block id: 175 */
                        // attempting a hip shared for loop
                        __shared__ int64_t ****l_450[4][3][10];
                        for (int i = 0; i < 4; i++)
                        {
                            for (int j = 0; j < 3; j++)
                            {
                                for (int k = 0; k < 10; k++)
                                    l_450[i][j][k] = &p_4589->g_447[2][5][0];
                            }
                        }
                        int32_t l_475 = (-3L);
                        int i, j, k;
                        p_4589->g_447[2][5][0] = p_4589->g_447[2][5][0];
                        l_474 |= (((((safe_lshift_func_int16_t_s_s(hip_const_7[2].f4, (((*l_118) = (*p_70)) != (p_72 == (safe_sub_func_int16_t_s_s(l_455, ((!((l_473 = (safe_add_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((make_uint3(((((l_460 != l_461) && (((safe_mul(make_uint4(0UL, 0x6022152BL, 1UL, ((safe_mul_func_uint16_t_u_u((p_71 != ((p_72 > (safe_rshift_func_int64_t_s_u((make_uint3((safe_mul_func_uint32_t_u_u((safe_div_func_uint64_t_u_u((l_268.f3 ^= make_ulong2(p_4589->g_472.x, p_4589->g_472.x).x), 0xE524871C7995905BLL)), 0x512186F8L)), 8UL, 0UL).x || 0UL), p_69))) != p_71)), p_72)) < hip_const_14[2][4])), make_uint4(0x2ECA4B50L, 0x2ECA4B50L, 0x2ECA4B50L, 0x2ECA4B50L)))).w <= 0x0A75CF4CL)) >= l_440[1]) , 7UL), 4294967295UL, 0x96764F14L).z > p_71), p_71)), (*l_117)))) && p_4589->g_210.x)) == p_71))))))) ^ p_4589->g_172.x) || (**p_4589->g_448)) & (*p_4589->g_449)) < l_440[1]);
                        l_478++;
                        if (p_69)
                            break;
                    }
                    else
                    { /* block id: 183 */
                        uint32_t l_481 = 1UL;
                        l_481 &= p_69;
                        if (p_71)
                            continue;
                    }
                    return l_440[1];
                }
            }
        }
    }
    else
    { /* block id: 191 */
        __shared__ int32_t l_483;
        l_483 = 0L;
        int32_t l_484 = 0x778D872CL;
        int32_t l_486 = (-6L);
        int32_t l_487 = (-1L);
        int32_t l_488 = 0x46F2460FL;
        int32_t l_489 = (-5L);
        int32_t l_490 = 0x3B5D6AFDL;
        int32_t l_491 = 6L;
        int32_t l_492 = 0x3AB05589L;
        int32_t l_493 = 1L;
        int32_t l_494[6][4] = {{0x38EEB235L, 0x5655455BL, 0x38EEB235L, 0x5655455BL}, {0x38EEB235L, 0x5655455BL, 0x38EEB235L, 0x5655455BL}, {0x38EEB235L, 0x5655455BL, 0x38EEB235L, 0x5655455BL}, {0x38EEB235L, 0x5655455BL, 0x38EEB235L, 0x5655455BL}, {0x38EEB235L, 0x5655455BL, 0x38EEB235L, 0x5655455BL}, {0x38EEB235L, 0x5655455BL, 0x38EEB235L, 0x5655455BL}};
        __shared__ int4 l_509;
        l_509 = make_int4(0x7B44B0DBL, 0L, 0x7B44B0DBL, 0L);
        struct S0 l_529 = {0xE85E53F1L,0x9AC62C6BFD13F9EALL,0xFCFACE72L,-20,0xE1675894L,0L,5L,0UL,4UL};
        char3 l_530 = make_char3(0x70L, (-1L), 0x70L);
        int32_t *l_540 = &hip_const_13;
        struct S1 l_561 = {0xFE1E9A06L,-796,-4683,0,-24,0x79D9481CL,18446744073709551615UL};
        __shared__ int1 l_572;
        l_572 = make_int1((-6L));
        char2 l_581 = make_char2(0xACL, 0x94L);
        short4 l_608 = make_short4(1L, 0xFB1EL, 1L, 0xFB1EL);
        int32_t *l_609 = &l_93[3][6];
        int32_t *l_610 = &l_106;
        int32_t *l_611[4];
        __shared__ uint32_t l_612;
        l_612 = 4294967286UL;
        int i, j;
        for (int i = 0; i < 4; i++)
            l_611[i] = &p_4589->g_605;
lbl_555:
        for (l_304 = 0; (l_304 >= 0); l_304 -= 1)
        { /* block id: 194 */
            int32_t *l_482[9][8] = {{nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}, {nullptr, &l_93[5][1], &hip_const_13, &hip_const_7[2].f5, &l_93[5][1], nullptr, &l_93[5][1], &hip_const_7[2].f5}};
            struct S0 *l_508[1];
            uchar1 l_519 = make_uchar1(8UL);
            int3 l_522 = make_int3(0x53D4816EL, (-1L), 0x53D4816EL);
            int64_t ****l_523[8];
            int i, j;
            for (int i = 0; i < 1; i++)
                l_508[i] = &p_4589->g_400;
            for (int i = 0; i < 8; i++)
                l_523[i] = &p_4589->g_447[0][2][2];
            p_4589->g_495--;
            if (p_69)
                continue;
            ++l_498[2][3];
            for (l_207 = 0; (l_207 >= 0); l_207 -= 1)
            { /* block id: 200 */
                uint8_t *l_501 = nullptr;
                uint8_t *l_502 = &hip_const_11;
                uint8_t *l_503 = nullptr;
                uint8_t *l_504 = &hip_const_12[0][5][1];
                __shared__ uint8_t *l_505;
                l_505 = &hip_const_12[2][1][2];
                uint8_t *l_506 = nullptr;
                uint8_t *l_507[1][4][1] = {{{&hip_const_11}, {&hip_const_11}, {&hip_const_11}, {&hip_const_11}}};
                int i, j, k;
                l_486 = l_93[(l_207 + 5)][(l_207 + 2)];
                (*l_129) &= (((hip_const_10[0][1][6] < (l_93[(l_207 + 5)][(l_207 + 2)] |= p_69)) , (*p_4589->g_424)) == l_508[0]);
                if (make_int1(l_509.x).x)
                { /* block id: 204 */
                    __shared__ uint64_t l_510;
                    l_510 = 0x8B725AD8F5DB093FLL;
                    int64_t *****l_524 = &l_523[7];
                    l_510--;
                    for (p_4589->g_400.f6 = 0; (p_4589->g_400.f6 >= 0); p_4589->g_400.f6 -= 1)
                    { /* block id: 208 */
                        (*p_4589->g_222) = (((p_4589->g_520.y = ((safe_lshift(((safe_rshift(((safe_div(((make_uchar3(make_uchar2(251UL, 1UL).x, 0x61L, make_uchar3(0UL, 0x8DL, ((*l_129) = (l_489 = 0x1FL))).z) ^ ((make_uchar3(p_69, 253UL, 255UL) ^ make_uchar3(l_519.x, l_519.x, l_519.x))))), ((make_uchar3(0xADL, 0x64L, 0x3BL) & make_uchar3(p_4589->g_520.y, p_4589->g_520.y, p_4589->g_520.y)))))), make_uchar3(8, 8, 8)))), make_uchar3(8, 8, 8)))).y) , ((make_int3(p_72, 0x1E05594BL, ((make_int2(p_4589->g_521.x, p_4589->g_521.x) ^ make_int2(l_522.y, l_522.y))).y) ^ make_int3(9L, hip_const_7[2].f1, (-8L)))).y) , &l_488);
                        (*p_4589->g_222) = (*p_4589->g_222);
                        if (p_71)
                            continue;
                        if (p_69)
                            continue;
                    }
                    (*l_129) ^= (((*l_524) = l_523[7]) != &p_4589->g_447[2][6][0]);
                }
                else
                { /* block id: 219 */
                    for (l_489 = 0; (l_489 <= 4); l_489 += 1)
                    { /* block id: 222 */
                        int i, j;
                        (*l_129) = l_498[(l_304 + 1)][(l_489 + 2)];
                        return l_498[l_207][l_207];
                    }
                }
            }
            for (l_268.f0 = 0; (l_268.f0 <= 0); l_268.f0 += 1)
            { /* block id: 230 */
                int16_t **l_525 = &p_4589->g_326;
                int16_t ***l_526 = &l_525;
                (*l_526) = l_525;
            }
        }
        l_110 = (p_4589->g_154.x || (safe_mod_func_int64_t_s_s((l_484 = (!((l_529 , (l_488 = (p_71 & p_69))) <= ((((make_char4(l_530.y, l_530.y, l_530.y, l_530.y) ^ make_char4(l_531.w, l_531.w, l_531.w, l_531.w))) ^ ((((make_char4(1L, (make_char1(1L).x & (safe_mod_func_uint8_t_u_u((l_534 == l_534), 0x64L))), 0x13L, make_char2(p_4589->g_535.y, p_4589->g_535.y).y) ^ make_char4(p_4589->g_536.z, p_4589->g_536.z, p_4589->g_536.z, p_4589->g_536.z))) ^ make_char4(4L, (make_uint2(p_4589->g_537.x, p_4589->g_537.x).y , hip_const_14[0][3]), 0x0AL, ((!(safe_sub_func_int32_t_s_s(((*l_129) = p_72), p_69))) ^ p_4589->g_537.x)))))).x))), (*p_70))));
        for (p_4589->g_400.f8 = 25; (p_4589->g_400.f8 <= 18); p_4589->g_400.f8 = safe_sub_func_uint32_t_u_u(p_4589->g_400.f8, 4))
        { /* block id: 240 */
            int64_t ****l_546 = &p_4589->g_447[2][5][0];
            int32_t **l_556 = &l_540;
            int1 l_562 = make_int1(0xFD2D4CCFL);
            uint32_t l_604 = 0xFA1EBD61L;
            int i;
            if (make_int4(l_543.x, l_543.x, l_543.x, l_543.x).x)
            { /* block id: 241 */
                uint8_t l_551[5] = {1UL, 0UL, 1UL, 0UL, 1UL};
                int i;
                for (p_4589->g_400.f6 = 5; (p_4589->g_400.f6 != 15); p_4589->g_400.f6++)
                { /* block id: 244 */
                    __shared__ uint16_t l_554;
                    l_554 = 0xFC89L;
                    (*l_129) &= (l_546 == nullptr);
                    for (l_529.f5 = 0; (l_529.f5 == 9); l_529.f5 = safe_add_func_uint32_t_u_u(l_529.f5, 7))
                    { /* block id: 248 */
                        int32_t *l_549 = &l_268.f4;
                        int32_t *l_550[10][10] = {{&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}, {&hip_const_1[1][0][2], &hip_const_7[2].f4, &l_487, &p_4589->g_400.f4, nullptr, &hip_const_1[1][0][2], nullptr, nullptr, &l_489, &hip_const_1[1][0][2]}};
                        int i, j;
                        --l_551[1];
                        (*p_4589->g_424) = (*p_4589->g_424);
                        return p_72;
                    }
                    if (l_554)
                        break;
                    if (l_554)
                        continue;
                }
            }
            else
            { /* block id: 256 */
                struct S1 l_559 = {0x9D4FE54AL,-1267,-13871,0,38,1UL,3UL};
                int16_t **l_603 = &l_286[6][0][0];
                int16_t ***l_602 = &l_603;
                int64_t l_606 = 0xF54268A3EFA5C634LL;
                for (l_207 = 3; (l_207 >= 0); l_207 -= 1)
                { /* block id: 259 */
                    int3 l_586 = make_int3(8L, 0xF28DF010L, 8L);
                    int32_t l_597 = 0xD96A8209L;
                    int32_t l_598 = (-1L);
                    int i, j;
                    if (l_489)
                        goto lbl_555;
                    if ((p_4589->g_361[(l_207 + 2)][l_207] | (&p_4589->g_223 != l_556)))
                    { /* block id: 261 */
                        struct S1 *l_558 = &hip_const_9;
                        struct S1 **l_557 = &l_558;
                        struct S1 *l_560[9] = {&hip_const_9, &hip_const_9, &hip_const_9, &hip_const_9, &hip_const_9, &hip_const_9, &hip_const_9, &hip_const_9, &hip_const_9};
                        int i;
                        if (l_268.f1)
                            goto lbl_555;
                        (*l_557) = &hip_const_5;
                        l_561 = l_559;
                    }
                    else
                    { /* block id: 265 */
                        (*l_129) = make_int2(l_562.x, l_562.x).y;
                    }
                    for (l_559.f5 = 0; (l_559.f5 <= 3); l_559.f5 += 1)
                    { /* block id: 270 */
                        return (*l_540);
                    }
                    for (p_4589->g_400.f2 = 0; (p_4589->g_400.f2 <= 3); p_4589->g_400.f2 += 1)
                    { /* block id: 275 */
                        uint8_t *l_593 = &hip_const_12[0][5][1];
                        uint8_t *l_594 = nullptr;
                        uint8_t *l_595 = &hip_const_12[0][5][1];
                        uint8_t *l_596[5];
                        int32_t *l_607[9] = {nullptr, nullptr, &l_490, nullptr, nullptr, &l_490, nullptr, nullptr, &l_490};
                        int i;
                        for (int i = 0; i < 5; i++)
                            l_596[i] = nullptr;
                        l_487 |= (safe_sub_func_int8_t_s_s(p_71, make_char4((safe_mul_func_int32_t_s_s((((l_559.f2 = (l_567[4][0] , ((make_ulong4(0x72D295F1826ED3D2LL, 0UL, 1UL, ((((((safe_mod_func_int64_t_s_s((safe_div_func_int64_t_s_s((l_559.f1 = make_long4((((make_int1(l_572.x).x && ((((safe_add_func_int32_t_s_s((safe_add_func_uint8_t_u_u(hip_const_1[1][5][0], ((safe_mod(make_char4(((((safe_mul(((make_char4(l_581.y, l_581.y, l_581.y, l_581.y) ^ make_char4(1L, 0xDEL, p_72, (p_72 ^ ((safe_mod_func_int64_t_s_s((((safe_sub_func_int32_t_s_s(make_int1(l_586.y).x, (safe_mod_func_uint64_t_u_u((((safe_mod_func_uint32_t_u_u(p_72, (safe_div_func_uint32_t_u_u((make_char3(((++p_4589->g_379.x) > (l_529 , make_char3(p_4589->g_601.y, p_4589->g_601.y, p_4589->g_601.y).z)), 0x71L, (nullptr != l_602)).y != p_4589->g_152.z), p_4589->g_210.x)))) , (*l_129)) == (*l_129)), 18446744073709551615UL)))) , p_71) != p_69), l_559.f4)) , p_4589->g_109.x))))), make_char4((-1L), (-1L), (-1L), (-1L))))) ^ make_char4(0x2CL, 0x2CL, 0x2CL, 0x2CL))).w, 0x77L, (-5L), hip_const_7[2].f2), make_char4((-1L), (-1L), (-1L), (-1L))))).y)), hip_const_13)) > (*p_70)) ^ hip_const_7[2].f0) > p_4589->g_220.x)) >= p_72) & l_604), 0L, 0L, l_586.y).x), (**p_4589->g_448))), 0x31083C7D2F99D0D2LL)) | (*l_540)) | p_4589->g_605) , (**l_556)) < l_606) >= p_71)).y >= (*l_540)) > 0x74L))) < (**l_556)) > 0UL), p_69)), 0x3CL, 0xF9L, (-1L)).y));
                        (*l_129) &= p_72;
                        if (p_71)
                            break;
                    }
                }
                return l_608.x;
            }
        }
        --l_612;
    }
    return p_69;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ uint8_t  func_75(int64_t * p_76, struct S2 * p_4589)
{ /* block id: 10 */
    uint16_t l_79 = 65535UL;
    return l_79;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S2 c_4590;
    struct S2* p_4589 = &c_4590;
    struct S2 c_4591 = {
        .g_103 = make_ushort3(65535UL, 0UL, 65535UL),
        .g_109 = make_ushort1(0x6D8AL),
        .g_113 = 0x11E331E6C26E64EFLL,
        .g_115 = {&hip_const_7[2].f1, &hip_const_7[2].f1, &hip_const_7[2].f1, &hip_const_7[2].f1, &hip_const_7[2].f1, &hip_const_7[2].f1, &hip_const_7[2].f1},
        .g_143 = make_uchar4(0UL, 0xF4L, 0UL, 0xF4L),
        .g_145 = 0xE33999F76DDF6E14LL,
        .g_152 = make_ulong3(0xA5BBF8F4250F7268LL, 18446744073709551612UL, 0xA5BBF8F4250F7268LL),
        .g_154 = make_int2((-3L), 0xA4AC0D40L),
        .g_172 = make_uchar2(1UL, 0UL),
        .g_189 = make_int3(0xF0A17803L, 6L, 0xF0A17803L),
        .g_210 = make_short1(0L),
        .g_220 = make_long1(0x47519545C7DD839CLL),
        .g_223 = nullptr,
        .g_222 = &p_4589->g_223,
        .g_271 = make_ushort4(65535UL, 0x30F1L, 65535UL, 0x30F1L),
        .g_326 = nullptr,
        .g_327 = 0xA7C934FE4D903703LL,
        .g_361 = {{0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}, {0xDE29L, 2UL, 65526UL, 65535UL}},
        .g_376 = make_int2(5L, (-1L)),
        .g_379 = make_uchar1(248UL),
        .g_400 = {1UL,1UL,0x66BFC1ACL,21,0x78339FF6L,0x908DBCF4L,-5L,0x1C2398CAL,18446744073709551615UL},
        .g_425 = &hip_const_7[2],
        .g_424 = &p_4589->g_425,
        .g_427 = make_uint4(0UL, 1UL, 0UL, 1UL),
        .g_449 = &hip_const_10[0][1][6],
        .g_448 = &p_4589->g_449,
        .g_447 = {{{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}, {{nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}, {nullptr, &p_4589->g_448, &p_4589->g_448}}},
        .g_472 = make_ulong2(8UL, 0x954C0FE5593B0353LL),
        .g_495 = 0x5349DC3984BEFF49LL,
        .g_520 = make_uchar3(0x56L, 255UL, 0x56L),
        .g_521 = make_int1((-2L)),
        .g_535 = make_char2((-7L), (-1L)),
        .g_536 = make_char3(0x6AL, 0x84L, 0x6AL),
        .g_537 = make_uint1(4294967295UL),
        .g_601 = make_char4(0xF8L, 8L, 0xF8L, 8L),
        .g_605 = 0x3285F9BBL,
        .g_669 = make_uchar1(1UL),
        .g_671 = 4L,
        .g_678 = make_long2((-6L), 5L),
        .g_685 = {{{-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}}, {{-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}}, {{-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}}, {{-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}, {-1L,-1575,-3944,1,1,0x91FB2EEDL,3UL}}},
        .g_706 = make_long3(0x49133AC885774E04LL, (-1L), 0x49133AC885774E04LL),
        .g_715 = make_uint3(0x67D7B532L, 0UL, 0x67D7B532L),
        .g_736 = make_uint2(0xA4D50797L, 0xF608FDCEL),
        .g_745 = make_uint3(0x22480007L, 4294967286UL, 0x22480007L),
        .g_757 = 0L,
        .g_797 = make_char3(0x6DL, 3L, 0x6DL),
        .g_811 = make_short3((-2L), 0x5AA8L, (-2L)),
        .g_837 = 0x93CBL,
        .g_840 = make_short4((-1L), 0x20F7L, (-1L), 0x20F7L),
        .g_851 = &hip_const_2,
        .g_850 = &p_4589->g_851,
        .g_873 = 5UL,
        .g_877 = &p_4589->g_685[0][2],
        .g_905 = make_ulong1(0xE85CDB492F42898ALL),
        .g_907 = make_ushort1(0x02D8L),
        .g_928 = (-1L),
        .g_971 = make_ushort4(0x325BL, 0xF24EL, 0x325BL, 0xF24EL),
        .g_1026 = make_ushort2(1UL, 0UL),
        .g_1038 = {{&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}, {&p_4589->g_850, &p_4589->g_850, &p_4589->g_850, nullptr}},
        .g_1037 = &p_4589->g_1038[4][3],
        .g_1052 = {0UL,0x64CE55DEEF134DF1LL,4294967286UL,6,8L,8L,-5L,0x1DF28B32L,18446744073709551615UL},
        .g_1101 = make_int4(0xC9B0F720L, 0xD1AC6716L, 0xC9B0F720L, 0xD1AC6716L),
        .g_1112 = 65531UL,
        .g_1149 = 0xD0L,
        .g_1158 = make_uchar1(255UL),
        .g_1159 = make_ulong3(0x7FC829C62F688AC5LL, 0x426355B3B4FFAFBCLL, 0x7FC829C62F688AC5LL),
        .g_1168 = make_ulong4(5UL, 0xC209DC6FF5DBCF8CLL, 5UL, 0xC209DC6FF5DBCF8CLL),
        .g_1172 = make_ulong3(0UL, 18446744073709551613UL, 0UL),
        .g_1209 = make_ushort1(65528UL),
        .g_1220 = make_long1(0x9DC48FC21CC9FBA7LL),
        .g_1231 = make_uint2(0x029283D4L, 0xE12ABD5DL),
        .g_1239 = make_int4(0xCD060FC8L, (-2L), 0xCD060FC8L, (-2L)),
        .g_1242 = 0L,
        .g_1246 = 0x49C47342C9E098E4LL,
        .g_1322 = make_long2(1L, 2L),
        .g_1333 = make_short4(0xB4CAL, 0x6C33L, 0xB4CAL, 0x6C33L),
        .g_1334 = make_int1(0L),
        .g_1335 = make_int2(0x0938B989L, 0x34397A69L),
        .g_1372 = {nullptr, &hip_const_12[5][5][0], nullptr, &hip_const_12[5][5][0], nullptr, &hip_const_12[5][5][0], nullptr},
        .g_1371 = &p_4589->g_1372[3],
        .g_1370 = &p_4589->g_1371,
        .g_1410 = make_long2(0xB610082A0CE65C41LL, 1L),
        .g_1468 = make_uint4(1UL, 0xDC4BE8BDL, 1UL, 0xDC4BE8BDL),
        .g_1483 = &p_4589->g_115[1],
        .g_1507 = make_ushort1(0xD654L),
        .g_1508 = make_ushort3(0x772AL, 1UL, 0x772AL),
        .g_1509 = make_ushort3(0UL, 0xEA57L, 0UL),
        .g_1517 = nullptr,
        .g_1545 = &p_4589->g_424,
        .g_1544 = &p_4589->g_1545,
        .g_1560 = make_ulong1(0x10546200A0771AA2LL),
        .g_1574 = 0xFC6ADA9AL,
        .g_1580 = make_uchar3(0x34L, 1UL, 0x34L),
        .g_1618 = make_int2(0x360D877AL, 0x06409CA6L),
        .g_1669 = make_ushort1(65532UL),
        .g_1699 = nullptr,
        .g_1713 = make_uchar2(1UL, 0x5BL),
        .g_1718 = make_uint3(0xE2562001L, 0UL, 0xE2562001L),
        .g_1744 = make_uint4(0x3A697CB4L, 0x3B3876E1L, 0x3A697CB4L, 0x3B3876E1L),
        .g_1755 = nullptr,
        .g_1754 = &p_4589->g_1755,
        .g_1753 = &p_4589->g_1754,
        .g_1842 = make_uchar2(255UL, 0x14L),
        .g_1847 = make_uchar2(0x9DL, 255UL),
        .g_1852 = make_long2((-1L), 1L),
        .g_1859 = make_uint3(6UL, 2UL, 6UL),
        .g_1920 = 1L,
        .g_1922 = (-1L),
        .g_1950 = make_long3((-1L), 0L, (-1L)),
        .g_1983 = make_long3(0L, 0x92804CF8857D3DA4LL, 0L),
        .g_1989 = make_ulong1(18446744073709551613UL),
        .g_2076 = make_short4(0x7E1FL, 0x7D4BL, 0x7E1FL, 0x7D4BL),
        .g_2079 = make_ushort3(0xC4DAL, 0x08FAL, 0xC4DAL),
        .g_2209 = make_long1(0x62011D36B79FC0D6LL),
        .g_2261 = make_uchar1(0x4CL),
        .g_2304 = make_short4(1L, (-3L), 1L, (-3L)),
        .g_2306 = make_int4(0L, (-9L), 0L, (-9L)),
        .g_2361 = nullptr,
        .g_2360 = {{{&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}}, {{&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}}, {{&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}}, {{&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}}, {{&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}, {&p_4589->g_2361}}},
        .g_2359 = &p_4589->g_2360[1][1][0],
        .g_2382 = 1L,
        .g_2405 = make_uchar2(0x3EL, 0x8BL),
        .g_2406 = make_uchar1(251UL),
        .g_2420 = make_ushort3(65527UL, 1UL, 65527UL),
        .g_2454 = 0x8F5E764DF3802DC2LL,
        .g_2477 = make_uint2(0xDCC98C3CL, 6UL),
        .g_2486 = make_ulong4(18446744073709551611UL, 18446744073709551615UL, 18446744073709551611UL, 18446744073709551615UL),
        .g_2521 = make_ushort4(0xA0F7L, 0x4029L, 0xA0F7L, 0x4029L),
        .g_2551 = make_short1(1L),
        .g_2554 = make_ushort2(1UL, 5UL),
        .g_2559 = make_long1((-2L)),
        .g_2571 = &p_4589->g_447[2][5][0],
        .g_2579 = make_uint2(0x7D03EFEAL, 0x437C55C4L),
        .g_2651 = make_int3(0xF763226AL, 0x3667C757L, 0xF763226AL),
        .g_2730 = make_ushort2(0xD799L, 5UL),
        .g_2804 = make_short4(0xE5A5L, 0x7A33L, 0xE5A5L, 0x7A33L),
        .g_2871 = make_ulong3(0UL, 18446744073709551614UL, 0UL),
        .g_2877 = make_uchar3(3UL, 0x5EL, 3UL),
        .g_2913 = make_ushort2(65526UL, 65531UL),
        .g_2920 = make_int3(0xEDE3A20EL, 0x6C21A3E0L, 0xEDE3A20EL),
        .g_2922 = make_uchar3(3UL, 0xC6L, 3UL),
        .g_2979 = make_char1(0L),
        .g_2985 = &p_4589->g_222,
        .g_2984 = &p_4589->g_2985,
        .g_2983 = {{{&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}}, {{&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}}, {{&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}}, {{&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}}, {{&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}, {&p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984, &p_4589->g_2984}}},
        .g_3017 = make_char3(0xEAL, 0x41L, 0xEAL),
        .g_3018 = make_char2((-2L), 1L),
        .g_3039 = make_uchar2(1UL, 250UL),
        .g_3056 = make_uchar1(0xA7L),
        .g_3059 = make_uchar3(0x8AL, 255UL, 0x8AL),
        .g_3076 = make_char3(0x8AL, 0L, 0x8AL),
        .g_3102 = 255UL,
        .g_3117 = 0UL,
        .g_3133 = make_uint2(0x239F508DL, 0xE007783CL),
        .g_3134 = make_uint4(0x544DF11EL, 18446744073709551607UL, 0x544DF11EL, 18446744073709551607UL),
        .g_3160 = 2L,
        .g_3162 = {(-5L)},
        .g_3187 = 18446744073709551607UL,
        .g_3192 = make_int1(0x5459D30CL),
        .g_3196 = 0xE86DL,
        .g_3215 = 0L,
        .g_3223 = make_int1(0xFF6E7AD5L),
        .g_3229 = make_int2(0xBD5B5CE8L, 1L),
        .g_3234 = nullptr,
        .g_3241 = &p_4589->g_3196,
        .g_3240 = &p_4589->g_3241,
        .g_3245 = 0UL,
        .g_3258 = make_char3(0xD1L, 0x72L, 0xD1L),
        .g_3297 = make_uint4(4294967295UL, 0xA2713F2CL, 4294967295UL, 0xA2713F2CL),
        .g_3300 = make_int3((-4L), 0x9A6D8715L, (-4L)),
        .g_3311 = 0UL,
        .g_3354 = 0x0ADAABED2BF591A2LL,
        .g_3440 = make_long3(0x228A39EBDA482998LL, 0x7705C020277AD21ALL, 0x228A39EBDA482998LL),
        .g_3443 = make_int2(0L, 0x692E4C58L),
        .g_3455 = make_uchar1(1UL),
        .g_3477 = make_char3((-1L), 9L, (-1L)),
        .g_3535 = make_ushort4(0x8456L, 2UL, 0x8456L, 2UL),
        .g_3551 = make_char3((-10L), 0x00L, (-10L)),
        .g_3568 = 65535UL,
        .g_3601 = make_short1(5L),
        .g_3609 = make_ushort4(1UL, 0x6E0EL, 1UL, 0x6E0EL),
        .g_3610 = make_ulong4(0x82CC7648F037C07ELL, 6UL, 0x82CC7648F037C07ELL, 6UL),
        .g_3616 = 7UL,
        .g_3628 = make_ulong3(7UL, 0UL, 7UL),
        .g_3647 = 253UL,
        .g_3667 = 0x22A56471L,
        .g_3675 = {1UL, 1UL, 1UL},
        .g_3678 = make_uchar2(0x43L, 5UL),
        .g_3681 = make_short1((-1L)),
        .g_3694 = nullptr,
        .g_3693 = &p_4589->g_3694,
        .g_3730 = 5UL,
        .g_3754 = make_ushort2(0xAB45L, 0xF1D6L),
        .g_3757 = make_ushort2(0x7B0DL, 0x68FFL),
        .g_3764 = {{9L}, {9L}, {9L}, {9L}, {9L}, {9L}, {9L}},
        .g_3772 = make_int4((-1L), 0xDE91883EL, (-1L), 0xDE91883EL),
        .g_3774 = make_char4(0x42L, 0x11L, 0x42L, 0x11L),
        .g_3799 = make_char1(0x27L),
        .g_3845 = make_ulong4(0UL, 0x8054622753082310LL, 0UL, 0x8054622753082310LL),
        .g_3846 = make_ulong1(0xD1C2111DF45FC750LL),
        .g_3847 = make_ulong3(0xC99FDA6526EC4B78LL, 0x9FEB7D585786ACB4LL, 0xC99FDA6526EC4B78LL),
        .g_3849 = make_ulong3(0xCF08F72FE36123C8LL, 0x112643176F1DE360LL, 0xCF08F72FE36123C8LL),
        .g_3877 = make_ushort1(0x3AD5L),
        .g_3899 = {{{0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}}, {{0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}}, {{0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}}, {{0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}, {0xF9L, 0UL, 255UL, 255UL, 0UL, 0xF9L, 0UL, 255UL}}},
        .g_3912 = {&p_4589->g_222, &p_4589->g_222},
        .g_3919 = make_long3(4L, 0x2559D11AA8360B44LL, 4L),
        .g_3932 = &p_4589->g_1037,
        .g_3947 = make_ulong1(0x620CA8A0008DD051LL),
        .g_3962 = {-6L,-1844,-12354,1,-20,0UL,18446744073709551615UL},
        .g_3967 = make_ushort2(0UL, 0x3937L),
        .g_4005 = make_uchar1(0xDAL),
        .g_4019 = nullptr,
        .g_4058 = 0xD9F7L,
        .g_4070 = make_uint1(0x1851ABF8L),
        .g_4110 = make_long2(0L, (-1L)),
        .g_4130 = make_int1(0x3ECB6B4AL),
        .g_4142 = make_int2(0x3BF02141L, 0xB62E33D2L),
        .g_4145 = 4UL,
        .g_4168 = {nullptr, nullptr, nullptr, nullptr, nullptr},
        .g_4179 = make_uchar3(2UL, 0xD7L, 2UL),
        .g_4180 = make_uchar1(0x5EL),
        .g_4252 = make_ulong2(18446744073709551606UL, 0xECAED3FDB7BD354ALL),
        .g_4255 = make_ulong3(0x4EF713D41F4295E1LL, 18446744073709551615UL, 0x4EF713D41F4295E1LL),
        .g_4295 = make_char3(0x38L, 0x21L, 0x38L),
        .g_4296 = make_ulong3(0x45C182182D776060LL, 18446744073709551615UL, 0x45C182182D776060LL),
        .g_4369 = make_int3(0x9578E332L, 1L, 0x9578E332L),
        .g_4388 = make_char4((-6L), 0L, (-6L), 0L),
        .g_4402 = make_int1(0xCE7EDD52L),
        .g_4428 = make_char2(0x10L, 0xA6L),
        .g_4463 = make_uchar1(1UL),
        .g_4464 = make_int1((-1L)),
        .g_4471 = make_char3(7L, (-1L), 7L),
        .g_4476 = make_uchar4(0xCCL, 0x27L, 0xCCL, 0x27L),
        .g_4477 = make_uchar3(0xB1L, 0UL, 0xB1L),
        .g_4521 = (-1L),
        .g_4543 = make_int1(1L),
        .g_4546 = make_uint1(1UL),
    };
    c_4590 = c_4591;

    // Execute core logic
    func_1(p_4589);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(hip_const_1[i][j][k], "hip_const_1[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(hip_const_5.f0, "hip_const_5.f0", print_hash_value);
    transparent_crc(hip_const_5.f1, "hip_const_5.f1", print_hash_value);
    transparent_crc(hip_const_5.f2, "hip_const_5.f2", print_hash_value);
    transparent_crc(hip_const_5.f3, "hip_const_5.f3", print_hash_value);
    transparent_crc(hip_const_5.f4, "hip_const_5.f4", print_hash_value);
    transparent_crc(hip_const_5.f5, "hip_const_5.f5", print_hash_value);
    transparent_crc(hip_const_5.f6, "hip_const_5.f6", print_hash_value);
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(hip_const_7[i].f0, "hip_const_7[i].f0", print_hash_value);
        transparent_crc(hip_const_7[i].f1, "hip_const_7[i].f1", print_hash_value);
        transparent_crc(hip_const_7[i].f2, "hip_const_7[i].f2", print_hash_value);
        transparent_crc(hip_const_7[i].f3, "hip_const_7[i].f3", print_hash_value);
        transparent_crc(hip_const_7[i].f4, "hip_const_7[i].f4", print_hash_value);
        transparent_crc(hip_const_7[i].f5, "hip_const_7[i].f5", print_hash_value);
        transparent_crc(hip_const_7[i].f6, "hip_const_7[i].f6", print_hash_value);
        transparent_crc(hip_const_7[i].f7, "hip_const_7[i].f7", print_hash_value);
        transparent_crc(hip_const_7[i].f8, "hip_const_7[i].f8", print_hash_value);

    }
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9.f0, "hip_const_9.f0", print_hash_value);
    transparent_crc(hip_const_9.f1, "hip_const_9.f1", print_hash_value);
    transparent_crc(hip_const_9.f2, "hip_const_9.f2", print_hash_value);
    transparent_crc(hip_const_9.f3, "hip_const_9.f3", print_hash_value);
    transparent_crc(hip_const_9.f4, "hip_const_9.f4", print_hash_value);
    transparent_crc(hip_const_9.f5, "hip_const_9.f5", print_hash_value);
    transparent_crc(hip_const_9.f6, "hip_const_9.f6", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            for (int k = 0; k < 8; k++)
            {
                transparent_crc(hip_const_10[i][j][k], "hip_const_10[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_11, "hip_const_11", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(hip_const_12[i][j][k], "hip_const_12[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_13, "hip_const_13", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 7; j++)
        {
            transparent_crc(hip_const_14[i][j], "hip_const_14[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4589->g_103.x, "p_4589->g_103.x", print_hash_value);
    transparent_crc(p_4589->g_103.y, "p_4589->g_103.y", print_hash_value);
    transparent_crc(p_4589->g_103.z, "p_4589->g_103.z", print_hash_value);
    transparent_crc(p_4589->g_109.x, "p_4589->g_109.x", print_hash_value);
    transparent_crc(p_4589->g_113, "p_4589->g_113", print_hash_value);
    transparent_crc(p_4589->g_143.x, "p_4589->g_143.x", print_hash_value);
    transparent_crc(p_4589->g_143.y, "p_4589->g_143.y", print_hash_value);
    transparent_crc(p_4589->g_143.z, "p_4589->g_143.z", print_hash_value);
    transparent_crc(p_4589->g_143.w, "p_4589->g_143.w", print_hash_value);
    transparent_crc(p_4589->g_145, "p_4589->g_145", print_hash_value);
    transparent_crc(p_4589->g_152.x, "p_4589->g_152.x", print_hash_value);
    transparent_crc(p_4589->g_152.y, "p_4589->g_152.y", print_hash_value);
    transparent_crc(p_4589->g_152.z, "p_4589->g_152.z", print_hash_value);
    transparent_crc(p_4589->g_154.x, "p_4589->g_154.x", print_hash_value);
    transparent_crc(p_4589->g_154.y, "p_4589->g_154.y", print_hash_value);
    transparent_crc(p_4589->g_172.x, "p_4589->g_172.x", print_hash_value);
    transparent_crc(p_4589->g_172.y, "p_4589->g_172.y", print_hash_value);
    transparent_crc(p_4589->g_189.x, "p_4589->g_189.x", print_hash_value);
    transparent_crc(p_4589->g_189.y, "p_4589->g_189.y", print_hash_value);
    transparent_crc(p_4589->g_189.z, "p_4589->g_189.z", print_hash_value);
    transparent_crc(p_4589->g_210.x, "p_4589->g_210.x", print_hash_value);
    transparent_crc(p_4589->g_220.x, "p_4589->g_220.x", print_hash_value);
    transparent_crc(p_4589->g_271.x, "p_4589->g_271.x", print_hash_value);
    transparent_crc(p_4589->g_271.y, "p_4589->g_271.y", print_hash_value);
    transparent_crc(p_4589->g_271.z, "p_4589->g_271.z", print_hash_value);
    transparent_crc(p_4589->g_271.w, "p_4589->g_271.w", print_hash_value);
    transparent_crc(p_4589->g_327, "p_4589->g_327", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            transparent_crc(p_4589->g_361[i][j], "p_4589->g_361[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4589->g_376.x, "p_4589->g_376.x", print_hash_value);
    transparent_crc(p_4589->g_376.y, "p_4589->g_376.y", print_hash_value);
    transparent_crc(p_4589->g_379.x, "p_4589->g_379.x", print_hash_value);
    transparent_crc(p_4589->g_400.f0, "p_4589->g_400.f0", print_hash_value);
    transparent_crc(p_4589->g_400.f1, "p_4589->g_400.f1", print_hash_value);
    transparent_crc(p_4589->g_400.f2, "p_4589->g_400.f2", print_hash_value);
    transparent_crc(p_4589->g_400.f3, "p_4589->g_400.f3", print_hash_value);
    transparent_crc(p_4589->g_400.f4, "p_4589->g_400.f4", print_hash_value);
    transparent_crc(p_4589->g_400.f5, "p_4589->g_400.f5", print_hash_value);
    transparent_crc(p_4589->g_400.f6, "p_4589->g_400.f6", print_hash_value);
    transparent_crc(p_4589->g_400.f7, "p_4589->g_400.f7", print_hash_value);
    transparent_crc(p_4589->g_400.f8, "p_4589->g_400.f8", print_hash_value);
    transparent_crc(p_4589->g_427.x, "p_4589->g_427.x", print_hash_value);
    transparent_crc(p_4589->g_427.y, "p_4589->g_427.y", print_hash_value);
    transparent_crc(p_4589->g_427.z, "p_4589->g_427.z", print_hash_value);
    transparent_crc(p_4589->g_427.w, "p_4589->g_427.w", print_hash_value);
    transparent_crc(p_4589->g_472.x, "p_4589->g_472.x", print_hash_value);
    transparent_crc(p_4589->g_472.y, "p_4589->g_472.y", print_hash_value);
    transparent_crc(p_4589->g_495, "p_4589->g_495", print_hash_value);
    transparent_crc(p_4589->g_520.x, "p_4589->g_520.x", print_hash_value);
    transparent_crc(p_4589->g_520.y, "p_4589->g_520.y", print_hash_value);
    transparent_crc(p_4589->g_520.z, "p_4589->g_520.z", print_hash_value);
    transparent_crc(p_4589->g_521.x, "p_4589->g_521.x", print_hash_value);
    transparent_crc(p_4589->g_535.x, "p_4589->g_535.x", print_hash_value);
    transparent_crc(p_4589->g_535.y, "p_4589->g_535.y", print_hash_value);
    transparent_crc(p_4589->g_536.x, "p_4589->g_536.x", print_hash_value);
    transparent_crc(p_4589->g_536.y, "p_4589->g_536.y", print_hash_value);
    transparent_crc(p_4589->g_536.z, "p_4589->g_536.z", print_hash_value);
    transparent_crc(p_4589->g_537.x, "p_4589->g_537.x", print_hash_value);
    transparent_crc(p_4589->g_601.x, "p_4589->g_601.x", print_hash_value);
    transparent_crc(p_4589->g_601.y, "p_4589->g_601.y", print_hash_value);
    transparent_crc(p_4589->g_601.z, "p_4589->g_601.z", print_hash_value);
    transparent_crc(p_4589->g_601.w, "p_4589->g_601.w", print_hash_value);
    transparent_crc(p_4589->g_605, "p_4589->g_605", print_hash_value);
    transparent_crc(p_4589->g_669.x, "p_4589->g_669.x", print_hash_value);
    transparent_crc(p_4589->g_671, "p_4589->g_671", print_hash_value);
    transparent_crc(p_4589->g_678.x, "p_4589->g_678.x", print_hash_value);
    transparent_crc(p_4589->g_678.y, "p_4589->g_678.y", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            transparent_crc(p_4589->g_685[i][j].f0, "p_4589->g_685[i][j].f0", print_hash_value);
            transparent_crc(p_4589->g_685[i][j].f1, "p_4589->g_685[i][j].f1", print_hash_value);
            transparent_crc(p_4589->g_685[i][j].f2, "p_4589->g_685[i][j].f2", print_hash_value);
            transparent_crc(p_4589->g_685[i][j].f3, "p_4589->g_685[i][j].f3", print_hash_value);
            transparent_crc(p_4589->g_685[i][j].f4, "p_4589->g_685[i][j].f4", print_hash_value);
            transparent_crc(p_4589->g_685[i][j].f5, "p_4589->g_685[i][j].f5", print_hash_value);
            transparent_crc(p_4589->g_685[i][j].f6, "p_4589->g_685[i][j].f6", print_hash_value);

        }
    }
    transparent_crc(p_4589->g_706.x, "p_4589->g_706.x", print_hash_value);
    transparent_crc(p_4589->g_706.y, "p_4589->g_706.y", print_hash_value);
    transparent_crc(p_4589->g_706.z, "p_4589->g_706.z", print_hash_value);
    transparent_crc(p_4589->g_715.x, "p_4589->g_715.x", print_hash_value);
    transparent_crc(p_4589->g_715.y, "p_4589->g_715.y", print_hash_value);
    transparent_crc(p_4589->g_715.z, "p_4589->g_715.z", print_hash_value);
    transparent_crc(p_4589->g_736.x, "p_4589->g_736.x", print_hash_value);
    transparent_crc(p_4589->g_736.y, "p_4589->g_736.y", print_hash_value);
    transparent_crc(p_4589->g_745.x, "p_4589->g_745.x", print_hash_value);
    transparent_crc(p_4589->g_745.y, "p_4589->g_745.y", print_hash_value);
    transparent_crc(p_4589->g_745.z, "p_4589->g_745.z", print_hash_value);
    transparent_crc(p_4589->g_757, "p_4589->g_757", print_hash_value);
    transparent_crc(p_4589->g_797.x, "p_4589->g_797.x", print_hash_value);
    transparent_crc(p_4589->g_797.y, "p_4589->g_797.y", print_hash_value);
    transparent_crc(p_4589->g_797.z, "p_4589->g_797.z", print_hash_value);
    transparent_crc(p_4589->g_811.x, "p_4589->g_811.x", print_hash_value);
    transparent_crc(p_4589->g_811.y, "p_4589->g_811.y", print_hash_value);
    transparent_crc(p_4589->g_811.z, "p_4589->g_811.z", print_hash_value);
    transparent_crc(p_4589->g_837, "p_4589->g_837", print_hash_value);
    transparent_crc(p_4589->g_840.x, "p_4589->g_840.x", print_hash_value);
    transparent_crc(p_4589->g_840.y, "p_4589->g_840.y", print_hash_value);
    transparent_crc(p_4589->g_840.z, "p_4589->g_840.z", print_hash_value);
    transparent_crc(p_4589->g_840.w, "p_4589->g_840.w", print_hash_value);
    transparent_crc(p_4589->g_873, "p_4589->g_873", print_hash_value);
    transparent_crc(p_4589->g_905.x, "p_4589->g_905.x", print_hash_value);
    transparent_crc(p_4589->g_907.x, "p_4589->g_907.x", print_hash_value);
    transparent_crc(p_4589->g_928, "p_4589->g_928", print_hash_value);
    transparent_crc(p_4589->g_971.x, "p_4589->g_971.x", print_hash_value);
    transparent_crc(p_4589->g_971.y, "p_4589->g_971.y", print_hash_value);
    transparent_crc(p_4589->g_971.z, "p_4589->g_971.z", print_hash_value);
    transparent_crc(p_4589->g_971.w, "p_4589->g_971.w", print_hash_value);
    transparent_crc(p_4589->g_1026.x, "p_4589->g_1026.x", print_hash_value);
    transparent_crc(p_4589->g_1026.y, "p_4589->g_1026.y", print_hash_value);
    transparent_crc(p_4589->g_1052.f0, "p_4589->g_1052.f0", print_hash_value);
    transparent_crc(p_4589->g_1052.f1, "p_4589->g_1052.f1", print_hash_value);
    transparent_crc(p_4589->g_1052.f2, "p_4589->g_1052.f2", print_hash_value);
    transparent_crc(p_4589->g_1052.f3, "p_4589->g_1052.f3", print_hash_value);
    transparent_crc(p_4589->g_1052.f4, "p_4589->g_1052.f4", print_hash_value);
    transparent_crc(p_4589->g_1052.f5, "p_4589->g_1052.f5", print_hash_value);
    transparent_crc(p_4589->g_1052.f6, "p_4589->g_1052.f6", print_hash_value);
    transparent_crc(p_4589->g_1052.f7, "p_4589->g_1052.f7", print_hash_value);
    transparent_crc(p_4589->g_1052.f8, "p_4589->g_1052.f8", print_hash_value);
    transparent_crc(p_4589->g_1101.x, "p_4589->g_1101.x", print_hash_value);
    transparent_crc(p_4589->g_1101.y, "p_4589->g_1101.y", print_hash_value);
    transparent_crc(p_4589->g_1101.z, "p_4589->g_1101.z", print_hash_value);
    transparent_crc(p_4589->g_1101.w, "p_4589->g_1101.w", print_hash_value);
    transparent_crc(p_4589->g_1112, "p_4589->g_1112", print_hash_value);
    transparent_crc(p_4589->g_1149, "p_4589->g_1149", print_hash_value);
    transparent_crc(p_4589->g_1158.x, "p_4589->g_1158.x", print_hash_value);
    transparent_crc(p_4589->g_1159.x, "p_4589->g_1159.x", print_hash_value);
    transparent_crc(p_4589->g_1159.y, "p_4589->g_1159.y", print_hash_value);
    transparent_crc(p_4589->g_1159.z, "p_4589->g_1159.z", print_hash_value);
    transparent_crc(p_4589->g_1168.x, "p_4589->g_1168.x", print_hash_value);
    transparent_crc(p_4589->g_1168.y, "p_4589->g_1168.y", print_hash_value);
    transparent_crc(p_4589->g_1168.z, "p_4589->g_1168.z", print_hash_value);
    transparent_crc(p_4589->g_1168.w, "p_4589->g_1168.w", print_hash_value);
    transparent_crc(p_4589->g_1172.x, "p_4589->g_1172.x", print_hash_value);
    transparent_crc(p_4589->g_1172.y, "p_4589->g_1172.y", print_hash_value);
    transparent_crc(p_4589->g_1172.z, "p_4589->g_1172.z", print_hash_value);
    transparent_crc(p_4589->g_1209.x, "p_4589->g_1209.x", print_hash_value);
    transparent_crc(p_4589->g_1220.x, "p_4589->g_1220.x", print_hash_value);
    transparent_crc(p_4589->g_1231.x, "p_4589->g_1231.x", print_hash_value);
    transparent_crc(p_4589->g_1231.y, "p_4589->g_1231.y", print_hash_value);
    transparent_crc(p_4589->g_1239.x, "p_4589->g_1239.x", print_hash_value);
    transparent_crc(p_4589->g_1239.y, "p_4589->g_1239.y", print_hash_value);
    transparent_crc(p_4589->g_1239.z, "p_4589->g_1239.z", print_hash_value);
    transparent_crc(p_4589->g_1239.w, "p_4589->g_1239.w", print_hash_value);
    transparent_crc(p_4589->g_1242, "p_4589->g_1242", print_hash_value);
    transparent_crc(p_4589->g_1246, "p_4589->g_1246", print_hash_value);
    transparent_crc(p_4589->g_1322.x, "p_4589->g_1322.x", print_hash_value);
    transparent_crc(p_4589->g_1322.y, "p_4589->g_1322.y", print_hash_value);
    transparent_crc(p_4589->g_1333.x, "p_4589->g_1333.x", print_hash_value);
    transparent_crc(p_4589->g_1333.y, "p_4589->g_1333.y", print_hash_value);
    transparent_crc(p_4589->g_1333.z, "p_4589->g_1333.z", print_hash_value);
    transparent_crc(p_4589->g_1333.w, "p_4589->g_1333.w", print_hash_value);
    transparent_crc(p_4589->g_1334.x, "p_4589->g_1334.x", print_hash_value);
    transparent_crc(p_4589->g_1335.x, "p_4589->g_1335.x", print_hash_value);
    transparent_crc(p_4589->g_1335.y, "p_4589->g_1335.y", print_hash_value);
    transparent_crc(p_4589->g_1410.x, "p_4589->g_1410.x", print_hash_value);
    transparent_crc(p_4589->g_1410.y, "p_4589->g_1410.y", print_hash_value);
    transparent_crc(p_4589->g_1468.x, "p_4589->g_1468.x", print_hash_value);
    transparent_crc(p_4589->g_1468.y, "p_4589->g_1468.y", print_hash_value);
    transparent_crc(p_4589->g_1468.z, "p_4589->g_1468.z", print_hash_value);
    transparent_crc(p_4589->g_1468.w, "p_4589->g_1468.w", print_hash_value);
    transparent_crc(p_4589->g_1507.x, "p_4589->g_1507.x", print_hash_value);
    transparent_crc(p_4589->g_1508.x, "p_4589->g_1508.x", print_hash_value);
    transparent_crc(p_4589->g_1508.y, "p_4589->g_1508.y", print_hash_value);
    transparent_crc(p_4589->g_1508.z, "p_4589->g_1508.z", print_hash_value);
    transparent_crc(p_4589->g_1509.x, "p_4589->g_1509.x", print_hash_value);
    transparent_crc(p_4589->g_1509.y, "p_4589->g_1509.y", print_hash_value);
    transparent_crc(p_4589->g_1509.z, "p_4589->g_1509.z", print_hash_value);
    transparent_crc(p_4589->g_1560.x, "p_4589->g_1560.x", print_hash_value);
    transparent_crc(p_4589->g_1574, "p_4589->g_1574", print_hash_value);
    transparent_crc(p_4589->g_1580.x, "p_4589->g_1580.x", print_hash_value);
    transparent_crc(p_4589->g_1580.y, "p_4589->g_1580.y", print_hash_value);
    transparent_crc(p_4589->g_1580.z, "p_4589->g_1580.z", print_hash_value);
    transparent_crc(p_4589->g_1618.x, "p_4589->g_1618.x", print_hash_value);
    transparent_crc(p_4589->g_1618.y, "p_4589->g_1618.y", print_hash_value);
    transparent_crc(p_4589->g_1669.x, "p_4589->g_1669.x", print_hash_value);
    transparent_crc(p_4589->g_1713.x, "p_4589->g_1713.x", print_hash_value);
    transparent_crc(p_4589->g_1713.y, "p_4589->g_1713.y", print_hash_value);
    transparent_crc(p_4589->g_1718.x, "p_4589->g_1718.x", print_hash_value);
    transparent_crc(p_4589->g_1718.y, "p_4589->g_1718.y", print_hash_value);
    transparent_crc(p_4589->g_1718.z, "p_4589->g_1718.z", print_hash_value);
    transparent_crc(p_4589->g_1744.x, "p_4589->g_1744.x", print_hash_value);
    transparent_crc(p_4589->g_1744.y, "p_4589->g_1744.y", print_hash_value);
    transparent_crc(p_4589->g_1744.z, "p_4589->g_1744.z", print_hash_value);
    transparent_crc(p_4589->g_1744.w, "p_4589->g_1744.w", print_hash_value);
    transparent_crc(p_4589->g_1842.x, "p_4589->g_1842.x", print_hash_value);
    transparent_crc(p_4589->g_1842.y, "p_4589->g_1842.y", print_hash_value);
    transparent_crc(p_4589->g_1847.x, "p_4589->g_1847.x", print_hash_value);
    transparent_crc(p_4589->g_1847.y, "p_4589->g_1847.y", print_hash_value);
    transparent_crc(p_4589->g_1852.x, "p_4589->g_1852.x", print_hash_value);
    transparent_crc(p_4589->g_1852.y, "p_4589->g_1852.y", print_hash_value);
    transparent_crc(p_4589->g_1859.x, "p_4589->g_1859.x", print_hash_value);
    transparent_crc(p_4589->g_1859.y, "p_4589->g_1859.y", print_hash_value);
    transparent_crc(p_4589->g_1859.z, "p_4589->g_1859.z", print_hash_value);
    transparent_crc(p_4589->g_1920, "p_4589->g_1920", print_hash_value);
    transparent_crc(p_4589->g_1922, "p_4589->g_1922", print_hash_value);
    transparent_crc(p_4589->g_1950.x, "p_4589->g_1950.x", print_hash_value);
    transparent_crc(p_4589->g_1950.y, "p_4589->g_1950.y", print_hash_value);
    transparent_crc(p_4589->g_1950.z, "p_4589->g_1950.z", print_hash_value);
    transparent_crc(p_4589->g_1983.x, "p_4589->g_1983.x", print_hash_value);
    transparent_crc(p_4589->g_1983.y, "p_4589->g_1983.y", print_hash_value);
    transparent_crc(p_4589->g_1983.z, "p_4589->g_1983.z", print_hash_value);
    transparent_crc(p_4589->g_1989.x, "p_4589->g_1989.x", print_hash_value);
    transparent_crc(p_4589->g_2076.x, "p_4589->g_2076.x", print_hash_value);
    transparent_crc(p_4589->g_2076.y, "p_4589->g_2076.y", print_hash_value);
    transparent_crc(p_4589->g_2076.z, "p_4589->g_2076.z", print_hash_value);
    transparent_crc(p_4589->g_2076.w, "p_4589->g_2076.w", print_hash_value);
    transparent_crc(p_4589->g_2079.x, "p_4589->g_2079.x", print_hash_value);
    transparent_crc(p_4589->g_2079.y, "p_4589->g_2079.y", print_hash_value);
    transparent_crc(p_4589->g_2079.z, "p_4589->g_2079.z", print_hash_value);
    transparent_crc(p_4589->g_2209.x, "p_4589->g_2209.x", print_hash_value);
    transparent_crc(p_4589->g_2261.x, "p_4589->g_2261.x", print_hash_value);
    transparent_crc(p_4589->g_2304.x, "p_4589->g_2304.x", print_hash_value);
    transparent_crc(p_4589->g_2304.y, "p_4589->g_2304.y", print_hash_value);
    transparent_crc(p_4589->g_2304.z, "p_4589->g_2304.z", print_hash_value);
    transparent_crc(p_4589->g_2304.w, "p_4589->g_2304.w", print_hash_value);
    transparent_crc(p_4589->g_2306.x, "p_4589->g_2306.x", print_hash_value);
    transparent_crc(p_4589->g_2306.y, "p_4589->g_2306.y", print_hash_value);
    transparent_crc(p_4589->g_2306.z, "p_4589->g_2306.z", print_hash_value);
    transparent_crc(p_4589->g_2306.w, "p_4589->g_2306.w", print_hash_value);
    transparent_crc(p_4589->g_2382, "p_4589->g_2382", print_hash_value);
    transparent_crc(p_4589->g_2405.x, "p_4589->g_2405.x", print_hash_value);
    transparent_crc(p_4589->g_2405.y, "p_4589->g_2405.y", print_hash_value);
    transparent_crc(p_4589->g_2406.x, "p_4589->g_2406.x", print_hash_value);
    transparent_crc(p_4589->g_2420.x, "p_4589->g_2420.x", print_hash_value);
    transparent_crc(p_4589->g_2420.y, "p_4589->g_2420.y", print_hash_value);
    transparent_crc(p_4589->g_2420.z, "p_4589->g_2420.z", print_hash_value);
    transparent_crc(p_4589->g_2454, "p_4589->g_2454", print_hash_value);
    transparent_crc(p_4589->g_2477.x, "p_4589->g_2477.x", print_hash_value);
    transparent_crc(p_4589->g_2477.y, "p_4589->g_2477.y", print_hash_value);
    transparent_crc(p_4589->g_2486.x, "p_4589->g_2486.x", print_hash_value);
    transparent_crc(p_4589->g_2486.y, "p_4589->g_2486.y", print_hash_value);
    transparent_crc(p_4589->g_2486.z, "p_4589->g_2486.z", print_hash_value);
    transparent_crc(p_4589->g_2486.w, "p_4589->g_2486.w", print_hash_value);
    transparent_crc(p_4589->g_2521.x, "p_4589->g_2521.x", print_hash_value);
    transparent_crc(p_4589->g_2521.y, "p_4589->g_2521.y", print_hash_value);
    transparent_crc(p_4589->g_2521.z, "p_4589->g_2521.z", print_hash_value);
    transparent_crc(p_4589->g_2521.w, "p_4589->g_2521.w", print_hash_value);
    transparent_crc(p_4589->g_2551.x, "p_4589->g_2551.x", print_hash_value);
    transparent_crc(p_4589->g_2554.x, "p_4589->g_2554.x", print_hash_value);
    transparent_crc(p_4589->g_2554.y, "p_4589->g_2554.y", print_hash_value);
    transparent_crc(p_4589->g_2559.x, "p_4589->g_2559.x", print_hash_value);
    transparent_crc(p_4589->g_2579.x, "p_4589->g_2579.x", print_hash_value);
    transparent_crc(p_4589->g_2579.y, "p_4589->g_2579.y", print_hash_value);
    transparent_crc(p_4589->g_2651.x, "p_4589->g_2651.x", print_hash_value);
    transparent_crc(p_4589->g_2651.y, "p_4589->g_2651.y", print_hash_value);
    transparent_crc(p_4589->g_2651.z, "p_4589->g_2651.z", print_hash_value);
    transparent_crc(p_4589->g_2730.x, "p_4589->g_2730.x", print_hash_value);
    transparent_crc(p_4589->g_2730.y, "p_4589->g_2730.y", print_hash_value);
    transparent_crc(p_4589->g_2804.x, "p_4589->g_2804.x", print_hash_value);
    transparent_crc(p_4589->g_2804.y, "p_4589->g_2804.y", print_hash_value);
    transparent_crc(p_4589->g_2804.z, "p_4589->g_2804.z", print_hash_value);
    transparent_crc(p_4589->g_2804.w, "p_4589->g_2804.w", print_hash_value);
    transparent_crc(p_4589->g_2871.x, "p_4589->g_2871.x", print_hash_value);
    transparent_crc(p_4589->g_2871.y, "p_4589->g_2871.y", print_hash_value);
    transparent_crc(p_4589->g_2871.z, "p_4589->g_2871.z", print_hash_value);
    transparent_crc(p_4589->g_2877.x, "p_4589->g_2877.x", print_hash_value);
    transparent_crc(p_4589->g_2877.y, "p_4589->g_2877.y", print_hash_value);
    transparent_crc(p_4589->g_2877.z, "p_4589->g_2877.z", print_hash_value);
    transparent_crc(p_4589->g_2913.x, "p_4589->g_2913.x", print_hash_value);
    transparent_crc(p_4589->g_2913.y, "p_4589->g_2913.y", print_hash_value);
    transparent_crc(p_4589->g_2920.x, "p_4589->g_2920.x", print_hash_value);
    transparent_crc(p_4589->g_2920.y, "p_4589->g_2920.y", print_hash_value);
    transparent_crc(p_4589->g_2920.z, "p_4589->g_2920.z", print_hash_value);
    transparent_crc(p_4589->g_2922.x, "p_4589->g_2922.x", print_hash_value);
    transparent_crc(p_4589->g_2922.y, "p_4589->g_2922.y", print_hash_value);
    transparent_crc(p_4589->g_2922.z, "p_4589->g_2922.z", print_hash_value);
    transparent_crc(p_4589->g_2979.x, "p_4589->g_2979.x", print_hash_value);
    transparent_crc(p_4589->g_3017.x, "p_4589->g_3017.x", print_hash_value);
    transparent_crc(p_4589->g_3017.y, "p_4589->g_3017.y", print_hash_value);
    transparent_crc(p_4589->g_3017.z, "p_4589->g_3017.z", print_hash_value);
    transparent_crc(p_4589->g_3018.x, "p_4589->g_3018.x", print_hash_value);
    transparent_crc(p_4589->g_3018.y, "p_4589->g_3018.y", print_hash_value);
    transparent_crc(p_4589->g_3039.x, "p_4589->g_3039.x", print_hash_value);
    transparent_crc(p_4589->g_3039.y, "p_4589->g_3039.y", print_hash_value);
    transparent_crc(p_4589->g_3056.x, "p_4589->g_3056.x", print_hash_value);
    transparent_crc(p_4589->g_3059.x, "p_4589->g_3059.x", print_hash_value);
    transparent_crc(p_4589->g_3059.y, "p_4589->g_3059.y", print_hash_value);
    transparent_crc(p_4589->g_3059.z, "p_4589->g_3059.z", print_hash_value);
    transparent_crc(p_4589->g_3076.x, "p_4589->g_3076.x", print_hash_value);
    transparent_crc(p_4589->g_3076.y, "p_4589->g_3076.y", print_hash_value);
    transparent_crc(p_4589->g_3076.z, "p_4589->g_3076.z", print_hash_value);
    transparent_crc(p_4589->g_3102, "p_4589->g_3102", print_hash_value);
    transparent_crc(p_4589->g_3117, "p_4589->g_3117", print_hash_value);
    transparent_crc(p_4589->g_3133.x, "p_4589->g_3133.x", print_hash_value);
    transparent_crc(p_4589->g_3133.y, "p_4589->g_3133.y", print_hash_value);
    transparent_crc(p_4589->g_3134.x, "p_4589->g_3134.x", print_hash_value);
    transparent_crc(p_4589->g_3134.y, "p_4589->g_3134.y", print_hash_value);
    transparent_crc(p_4589->g_3134.z, "p_4589->g_3134.z", print_hash_value);
    transparent_crc(p_4589->g_3134.w, "p_4589->g_3134.w", print_hash_value);
    transparent_crc(p_4589->g_3160, "p_4589->g_3160", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        transparent_crc(p_4589->g_3162[i], "p_4589->g_3162[i]", print_hash_value);

    }
    transparent_crc(p_4589->g_3187, "p_4589->g_3187", print_hash_value);
    transparent_crc(p_4589->g_3192.x, "p_4589->g_3192.x", print_hash_value);
    transparent_crc(p_4589->g_3196, "p_4589->g_3196", print_hash_value);
    transparent_crc(p_4589->g_3215, "p_4589->g_3215", print_hash_value);
    transparent_crc(p_4589->g_3223.x, "p_4589->g_3223.x", print_hash_value);
    transparent_crc(p_4589->g_3229.x, "p_4589->g_3229.x", print_hash_value);
    transparent_crc(p_4589->g_3229.y, "p_4589->g_3229.y", print_hash_value);
    transparent_crc(p_4589->g_3245, "p_4589->g_3245", print_hash_value);
    transparent_crc(p_4589->g_3258.x, "p_4589->g_3258.x", print_hash_value);
    transparent_crc(p_4589->g_3258.y, "p_4589->g_3258.y", print_hash_value);
    transparent_crc(p_4589->g_3258.z, "p_4589->g_3258.z", print_hash_value);
    transparent_crc(p_4589->g_3297.x, "p_4589->g_3297.x", print_hash_value);
    transparent_crc(p_4589->g_3297.y, "p_4589->g_3297.y", print_hash_value);
    transparent_crc(p_4589->g_3297.z, "p_4589->g_3297.z", print_hash_value);
    transparent_crc(p_4589->g_3297.w, "p_4589->g_3297.w", print_hash_value);
    transparent_crc(p_4589->g_3300.x, "p_4589->g_3300.x", print_hash_value);
    transparent_crc(p_4589->g_3300.y, "p_4589->g_3300.y", print_hash_value);
    transparent_crc(p_4589->g_3300.z, "p_4589->g_3300.z", print_hash_value);
    transparent_crc(p_4589->g_3311, "p_4589->g_3311", print_hash_value);
    transparent_crc(p_4589->g_3354, "p_4589->g_3354", print_hash_value);
    transparent_crc(p_4589->g_3440.x, "p_4589->g_3440.x", print_hash_value);
    transparent_crc(p_4589->g_3440.y, "p_4589->g_3440.y", print_hash_value);
    transparent_crc(p_4589->g_3440.z, "p_4589->g_3440.z", print_hash_value);
    transparent_crc(p_4589->g_3443.x, "p_4589->g_3443.x", print_hash_value);
    transparent_crc(p_4589->g_3443.y, "p_4589->g_3443.y", print_hash_value);
    transparent_crc(p_4589->g_3455.x, "p_4589->g_3455.x", print_hash_value);
    transparent_crc(p_4589->g_3477.x, "p_4589->g_3477.x", print_hash_value);
    transparent_crc(p_4589->g_3477.y, "p_4589->g_3477.y", print_hash_value);
    transparent_crc(p_4589->g_3477.z, "p_4589->g_3477.z", print_hash_value);
    transparent_crc(p_4589->g_3535.x, "p_4589->g_3535.x", print_hash_value);
    transparent_crc(p_4589->g_3535.y, "p_4589->g_3535.y", print_hash_value);
    transparent_crc(p_4589->g_3535.z, "p_4589->g_3535.z", print_hash_value);
    transparent_crc(p_4589->g_3535.w, "p_4589->g_3535.w", print_hash_value);
    transparent_crc(p_4589->g_3551.x, "p_4589->g_3551.x", print_hash_value);
    transparent_crc(p_4589->g_3551.y, "p_4589->g_3551.y", print_hash_value);
    transparent_crc(p_4589->g_3551.z, "p_4589->g_3551.z", print_hash_value);
    transparent_crc(p_4589->g_3568, "p_4589->g_3568", print_hash_value);
    transparent_crc(p_4589->g_3601.x, "p_4589->g_3601.x", print_hash_value);
    transparent_crc(p_4589->g_3609.x, "p_4589->g_3609.x", print_hash_value);
    transparent_crc(p_4589->g_3609.y, "p_4589->g_3609.y", print_hash_value);
    transparent_crc(p_4589->g_3609.z, "p_4589->g_3609.z", print_hash_value);
    transparent_crc(p_4589->g_3609.w, "p_4589->g_3609.w", print_hash_value);
    transparent_crc(p_4589->g_3610.x, "p_4589->g_3610.x", print_hash_value);
    transparent_crc(p_4589->g_3610.y, "p_4589->g_3610.y", print_hash_value);
    transparent_crc(p_4589->g_3610.z, "p_4589->g_3610.z", print_hash_value);
    transparent_crc(p_4589->g_3610.w, "p_4589->g_3610.w", print_hash_value);
    transparent_crc(p_4589->g_3616, "p_4589->g_3616", print_hash_value);
    transparent_crc(p_4589->g_3628.x, "p_4589->g_3628.x", print_hash_value);
    transparent_crc(p_4589->g_3628.y, "p_4589->g_3628.y", print_hash_value);
    transparent_crc(p_4589->g_3628.z, "p_4589->g_3628.z", print_hash_value);
    transparent_crc(p_4589->g_3647, "p_4589->g_3647", print_hash_value);
    transparent_crc(p_4589->g_3667, "p_4589->g_3667", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_4589->g_3675[i], "p_4589->g_3675[i]", print_hash_value);

    }
    transparent_crc(p_4589->g_3678.x, "p_4589->g_3678.x", print_hash_value);
    transparent_crc(p_4589->g_3678.y, "p_4589->g_3678.y", print_hash_value);
    transparent_crc(p_4589->g_3681.x, "p_4589->g_3681.x", print_hash_value);
    transparent_crc(p_4589->g_3730, "p_4589->g_3730", print_hash_value);
    transparent_crc(p_4589->g_3754.x, "p_4589->g_3754.x", print_hash_value);
    transparent_crc(p_4589->g_3754.y, "p_4589->g_3754.y", print_hash_value);
    transparent_crc(p_4589->g_3757.x, "p_4589->g_3757.x", print_hash_value);
    transparent_crc(p_4589->g_3757.y, "p_4589->g_3757.y", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            transparent_crc(p_4589->g_3764[i][j], "p_4589->g_3764[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4589->g_3772.x, "p_4589->g_3772.x", print_hash_value);
    transparent_crc(p_4589->g_3772.y, "p_4589->g_3772.y", print_hash_value);
    transparent_crc(p_4589->g_3772.z, "p_4589->g_3772.z", print_hash_value);
    transparent_crc(p_4589->g_3772.w, "p_4589->g_3772.w", print_hash_value);
    transparent_crc(p_4589->g_3774.x, "p_4589->g_3774.x", print_hash_value);
    transparent_crc(p_4589->g_3774.y, "p_4589->g_3774.y", print_hash_value);
    transparent_crc(p_4589->g_3774.z, "p_4589->g_3774.z", print_hash_value);
    transparent_crc(p_4589->g_3774.w, "p_4589->g_3774.w", print_hash_value);
    transparent_crc(p_4589->g_3799.x, "p_4589->g_3799.x", print_hash_value);
    transparent_crc(p_4589->g_3845.x, "p_4589->g_3845.x", print_hash_value);
    transparent_crc(p_4589->g_3845.y, "p_4589->g_3845.y", print_hash_value);
    transparent_crc(p_4589->g_3845.z, "p_4589->g_3845.z", print_hash_value);
    transparent_crc(p_4589->g_3845.w, "p_4589->g_3845.w", print_hash_value);
    transparent_crc(p_4589->g_3846.x, "p_4589->g_3846.x", print_hash_value);
    transparent_crc(p_4589->g_3847.x, "p_4589->g_3847.x", print_hash_value);
    transparent_crc(p_4589->g_3847.y, "p_4589->g_3847.y", print_hash_value);
    transparent_crc(p_4589->g_3847.z, "p_4589->g_3847.z", print_hash_value);
    transparent_crc(p_4589->g_3849.x, "p_4589->g_3849.x", print_hash_value);
    transparent_crc(p_4589->g_3849.y, "p_4589->g_3849.y", print_hash_value);
    transparent_crc(p_4589->g_3849.z, "p_4589->g_3849.z", print_hash_value);
    transparent_crc(p_4589->g_3877.x, "p_4589->g_3877.x", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 8; k++)
            {
                transparent_crc(p_4589->g_3899[i][j][k], "p_4589->g_3899[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_4589->g_3919.x, "p_4589->g_3919.x", print_hash_value);
    transparent_crc(p_4589->g_3919.y, "p_4589->g_3919.y", print_hash_value);
    transparent_crc(p_4589->g_3919.z, "p_4589->g_3919.z", print_hash_value);
    transparent_crc(p_4589->g_3947.x, "p_4589->g_3947.x", print_hash_value);
    transparent_crc(p_4589->g_3962.f0, "p_4589->g_3962.f0", print_hash_value);
    transparent_crc(p_4589->g_3962.f1, "p_4589->g_3962.f1", print_hash_value);
    transparent_crc(p_4589->g_3962.f2, "p_4589->g_3962.f2", print_hash_value);
    transparent_crc(p_4589->g_3962.f3, "p_4589->g_3962.f3", print_hash_value);
    transparent_crc(p_4589->g_3962.f4, "p_4589->g_3962.f4", print_hash_value);
    transparent_crc(p_4589->g_3962.f5, "p_4589->g_3962.f5", print_hash_value);
    transparent_crc(p_4589->g_3962.f6, "p_4589->g_3962.f6", print_hash_value);
    transparent_crc(p_4589->g_3967.x, "p_4589->g_3967.x", print_hash_value);
    transparent_crc(p_4589->g_3967.y, "p_4589->g_3967.y", print_hash_value);
    transparent_crc(p_4589->g_4005.x, "p_4589->g_4005.x", print_hash_value);
    transparent_crc(p_4589->g_4058, "p_4589->g_4058", print_hash_value);
    transparent_crc(p_4589->g_4070.x, "p_4589->g_4070.x", print_hash_value);
    transparent_crc(p_4589->g_4110.x, "p_4589->g_4110.x", print_hash_value);
    transparent_crc(p_4589->g_4110.y, "p_4589->g_4110.y", print_hash_value);
    transparent_crc(p_4589->g_4130.x, "p_4589->g_4130.x", print_hash_value);
    transparent_crc(p_4589->g_4142.x, "p_4589->g_4142.x", print_hash_value);
    transparent_crc(p_4589->g_4142.y, "p_4589->g_4142.y", print_hash_value);
    transparent_crc(p_4589->g_4145, "p_4589->g_4145", print_hash_value);
    transparent_crc(p_4589->g_4179.x, "p_4589->g_4179.x", print_hash_value);
    transparent_crc(p_4589->g_4179.y, "p_4589->g_4179.y", print_hash_value);
    transparent_crc(p_4589->g_4179.z, "p_4589->g_4179.z", print_hash_value);
    transparent_crc(p_4589->g_4180.x, "p_4589->g_4180.x", print_hash_value);
    transparent_crc(p_4589->g_4252.x, "p_4589->g_4252.x", print_hash_value);
    transparent_crc(p_4589->g_4252.y, "p_4589->g_4252.y", print_hash_value);
    transparent_crc(p_4589->g_4255.x, "p_4589->g_4255.x", print_hash_value);
    transparent_crc(p_4589->g_4255.y, "p_4589->g_4255.y", print_hash_value);
    transparent_crc(p_4589->g_4255.z, "p_4589->g_4255.z", print_hash_value);
    transparent_crc(p_4589->g_4295.x, "p_4589->g_4295.x", print_hash_value);
    transparent_crc(p_4589->g_4295.y, "p_4589->g_4295.y", print_hash_value);
    transparent_crc(p_4589->g_4295.z, "p_4589->g_4295.z", print_hash_value);
    transparent_crc(p_4589->g_4296.x, "p_4589->g_4296.x", print_hash_value);
    transparent_crc(p_4589->g_4296.y, "p_4589->g_4296.y", print_hash_value);
    transparent_crc(p_4589->g_4296.z, "p_4589->g_4296.z", print_hash_value);
    transparent_crc(p_4589->g_4369.x, "p_4589->g_4369.x", print_hash_value);
    transparent_crc(p_4589->g_4369.y, "p_4589->g_4369.y", print_hash_value);
    transparent_crc(p_4589->g_4369.z, "p_4589->g_4369.z", print_hash_value);
    transparent_crc(p_4589->g_4388.x, "p_4589->g_4388.x", print_hash_value);
    transparent_crc(p_4589->g_4388.y, "p_4589->g_4388.y", print_hash_value);
    transparent_crc(p_4589->g_4388.z, "p_4589->g_4388.z", print_hash_value);
    transparent_crc(p_4589->g_4388.w, "p_4589->g_4388.w", print_hash_value);
    transparent_crc(p_4589->g_4402.x, "p_4589->g_4402.x", print_hash_value);
    transparent_crc(p_4589->g_4428.x, "p_4589->g_4428.x", print_hash_value);
    transparent_crc(p_4589->g_4428.y, "p_4589->g_4428.y", print_hash_value);
    transparent_crc(p_4589->g_4463.x, "p_4589->g_4463.x", print_hash_value);
    transparent_crc(p_4589->g_4464.x, "p_4589->g_4464.x", print_hash_value);
    transparent_crc(p_4589->g_4471.x, "p_4589->g_4471.x", print_hash_value);
    transparent_crc(p_4589->g_4471.y, "p_4589->g_4471.y", print_hash_value);
    transparent_crc(p_4589->g_4471.z, "p_4589->g_4471.z", print_hash_value);
    transparent_crc(p_4589->g_4476.x, "p_4589->g_4476.x", print_hash_value);
    transparent_crc(p_4589->g_4476.y, "p_4589->g_4476.y", print_hash_value);
    transparent_crc(p_4589->g_4476.z, "p_4589->g_4476.z", print_hash_value);
    transparent_crc(p_4589->g_4476.w, "p_4589->g_4476.w", print_hash_value);
    transparent_crc(p_4589->g_4477.x, "p_4589->g_4477.x", print_hash_value);
    transparent_crc(p_4589->g_4477.y, "p_4589->g_4477.y", print_hash_value);
    transparent_crc(p_4589->g_4477.z, "p_4589->g_4477.z", print_hash_value);
    transparent_crc(p_4589->g_4521, "p_4589->g_4521", print_hash_value);
    transparent_crc(p_4589->g_4543.x, "p_4589->g_4543.x", print_hash_value);
    transparent_crc(p_4589->g_4546.x, "p_4589->g_4546.x", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

