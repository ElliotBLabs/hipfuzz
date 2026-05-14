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
// Seed: 4238714040

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   uint32_t  f1;
   int64_t  f2;
   uint32_t  f3;
   unsigned f4 : 25;
   int32_t  f5;
   int32_t  f6;
};

struct S1 {
   uint64_t  f0;
   uint32_t  f1;
   unsigned f2 : 12;
   uint32_t  f3;
   int32_t  f4;
   int64_t  f5;
   int32_t  f6;
   int32_t  f7;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ int16_t hip_const_1;
__constant__ int16_t hip_const_2;
__constant__ struct S0 hip_const_3;
__constant__ uint32_t hip_const_4;
__constant__ int64_t hip_const_5;
__constant__ uint64_t hip_const_6;
__constant__ uint16_t hip_const_7;
__constant__ uint32_t hip_const_8;
__constant__ uint32_t hip_const_9;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        int16_t host_hip_const_1 = 8L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        int16_t host_hip_const_2 = 0xC000L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        struct S0 host_hip_const_3 = {0x51C3C39BL,7UL,-5L,0UL,3779,0xA20B95AEL,0x49F6D4A0L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        uint32_t host_hip_const_4 = 0xF4F823AAL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        int64_t host_hip_const_5 = (-1L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint64_t host_hip_const_6 = 5UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        uint16_t host_hip_const_7 = 0UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        uint32_t host_hip_const_8 = 3UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        uint32_t host_hip_const_9 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
}

struct S2 {
    struct S1 g_42;
    int32_t g_75;
    struct S1 g_81;
    struct S1 *g_80[1][2];
    int32_t g_82[9][7];
    int1 g_83;
    int2 g_87;
    int32_t *g_95;
    short4 g_123;
    uint8_t g_164[10][6];
    long1 g_202;
    int3 g_217;
    uint8_t *g_243;
    uint8_t **g_242;
    short4 g_301;
    uint64_t *g_310;
    int8_t g_313;
    long3 g_334;
    long1 g_335;
    long2 g_336;
    short3 g_363;
    uchar1 g_371;
    uint8_t g_383;
    uchar2 g_402;
    ushort2 g_438;
    uint64_t g_478[8];
    uint16_t g_481;
    ushort3 g_483;
    int32_t g_502;
    int64_t g_533;
    uint64_t g_544[6];
    short2 g_567;
    short3 g_587;
    uint64_t **g_605[4];
    uint64_t ***g_604;
    long2 g_622;
    long3 g_623;
    ushort3 g_661;
    ushort2 g_677;
    uint8_t **g_705[5];
    uint8_t ***g_704;
    int4 g_711;
    int4 g_723;
    int2 g_728;
    int4 g_729;
    uint16_t g_739[8][5];
    uchar1 g_817;
    struct S0 *g_830;
    struct S0 **g_829;
    char3 g_869;
    short1 g_870;
    char3 g_908;
    ushort3 g_914;
    struct S0 ***g_941[2];
    struct S0 ***g_942;
    char1 g_973;
    uint1 g_983;
    short2 g_993;
    int2 g_1064;
    uint1 g_1069;
    ulong4 g_1072;
    uint16_t g_1089;
    short4 g_1118;
    short4 g_1122;
    long4 g_1132;
    ushort4 g_1149;
    short2 g_1150;
    long3 g_1167;
    ushort3 g_1174;
    uint8_t *g_1190;
    uint32_t *g_1192;
    uint32_t **g_1191;
    ushort4 g_1236;
    int8_t g_1241;
    ushort1 g_1291;
    ushort3 g_1292;
    uint32_t *g_1296;
    uint32_t **g_1295;
    int2 g_1339;
    short4 g_1346;
    int64_t **g_1388;
    uchar1 g_1417;
    ulong4 g_1424;
    uchar1 g_1492;
    short2 g_1502;
    uint16_t *g_1506;
    uint16_t **g_1505;
    ushort2 g_1519;
    int1 g_1552;
    uint8_t ****g_1557[8][2][6];
    ulong1 g_1581;
    char3 g_1617;
    int8_t g_1622;
    ulong3 g_1635;
    int32_t g_1663;
    ushort2 g_1684;
    ushort1 g_1685;
    ulong4 g_1701;
    uchar1 g_1740;
    uchar4 g_1754;
    uint1 g_1762;
    char2 g_1782;
    uint2 g_1787;
    short4 g_1794;
    ushort4 g_1819;
    char1 g_1821;
    ushort3 g_1879;
    int64_t g_1895;
    int4 g_1913;
    int1 g_1922;
    int4 g_1924;
    int1 g_1925;
    int32_t **g_1928[10][10][2];
    int32_t ***g_1927;
    int32_t ****g_1926;
    uint8_t g_1935;
    ulong1 g_1977;
    short4 g_1998;
    uint32_t ***g_2014;
    uint32_t ****g_2013[8];
    int8_t *g_2077[7];
    int8_t **g_2076;
    int2 g_2082;
    uint3 g_2101;
    int2 g_2131;
    ushort2 g_2151;
    ushort2 g_2153;
    uint32_t g_2174[8];
    ulong2 g_2188;
    long4 g_2189;
    ulong1 g_2198;
    uint4 g_2206;
    char2 g_2224;
    short3 g_2227;
    int4 g_2241;
    char3 g_2245;
    uchar3 g_2251;
    uchar3 g_2252;
    uint32_t ***g_2258;
    uint32_t ****g_2257[1][4];
    char2 g_2277;
    short3 g_2311;
    int32_t g_2363;
    uint1 g_2371;
    short4 g_2373;
    long1 g_2380;
    int1 g_2385;
    int4 g_2386;
    long3 g_2417;
    int2 g_2460;
    uint16_t g_2471;
    long4 g_2486;
    int32_t g_2496;
    ulong2 g_2508;
    ulong2 g_2516;
    uint8_t g_2527;
    short4 g_2549;
    short3 g_2550;
    int8_t ***g_2594;
    int8_t ****g_2593;
    int32_t g_2630[8][2];
    int1 g_2673;
    int2 g_2674;
    int8_t g_2675;
    short2 g_2680;
    uchar3 g_2690;
    int8_t g_2707;
    uint32_t g_2710;
    int32_t g_2743;
    uint32_t *****g_2770;
    int32_t *g_2777;
    int32_t **g_2776;
    ulong3 g_2801;
    uint4 g_2817;
    uint16_t g_2846;
    ulong3 g_2870;
    uchar4 g_2875;
    uint1 g_2914;
    ulong4 g_2944;
    int32_t g_2990[3];
    int4 g_3021;
    int3 g_3025;
    ushort3 g_3049;
    short3 g_3068;
    long1 g_3114;
    uint4 g_3135;
    long3 g_3146;
    short3 g_3166;
    uint3 g_3203;
    int2 g_3213;
    struct S1 **g_3221[10][5][4];
    struct S1 ***g_3220;
    struct S1 ****g_3219;
    ushort2 g_3232;
    ushort3 g_3233;
    int64_t *g_3235;
    int64_t **g_3234;
    uint1 g_3240;
    ushort2 g_3251;
    int3 g_3284;
    char2 g_3291;
    long4 g_3316;
    uint2 g_3323;
    uint4 g_3333;
    uint16_t g_3338;
    uint16_t g_3363;
    char1 g_3380;
    uint1 g_3414;
    char1 g_3421;
    int3 g_3433;
    int1 g_3449;
    uint8_t g_3452;
    uchar4 g_3483;
    int16_t g_3499;
    int32_t ****g_3504;
    int2 g_3530;
    int4 g_3531;
    int64_t g_3556;
    int32_t g_3582;
    ushort3 g_3586;
    char4 g_3603;
    char1 g_3605;
    long3 g_3609;
    ulong1 g_3612;
    ulong1 g_3613;
    ulong2 g_3618;
    ulong4 g_3663;
    ulong4 g_3668;
    ushort4 g_3669;
    ushort3 g_3671;
    uint8_t g_3687[2];
    int4 g_3691;
    uint3 g_3711;
    uint4 g_3712;
    ulong2 g_3726;
    ulong2 g_3727;
    ulong3 g_3756;
    short2 g_3761;
    struct S0 g_3771[6][6][7];
    int16_t **g_3779[4];
    uchar2 g_3781;
    uint32_t g_3808;
    ushort2 g_3843;
    int4 g_3881;
    struct S1 g_3895;
    short1 g_3896;
};


/* --- FORWARD DECLARATIONS --- */
__device__ int32_t  func_1(struct S2 * p_3897);
__device__ int8_t  func_3(uint64_t  p_4, uint32_t  p_5, int16_t  p_6, uint64_t  p_7, struct S2 * p_3897);
__device__ struct S1 * func_9(struct S1 * p_10, int64_t  p_11, struct S1 * p_12, int16_t  p_13, struct S2 * p_3897);
__device__ struct S1 * func_14(uint16_t  p_15, uint16_t  p_16, struct S1  p_17, struct S0  p_18, struct S2 * p_3897);
__device__ int32_t  func_21(struct S0  p_22, struct S1 * p_23, int64_t  p_24, struct S0  p_25, struct S2 * p_3897);
__device__ struct S0  func_26(uint64_t  p_27, struct S1  p_28, struct S2 * p_3897);
__device__ int8_t  func_33(int64_t  p_34, struct S1 * p_35, uint16_t  p_36, int8_t  p_37, struct S2 * p_3897);
__device__ struct S1 * func_39(struct S1 * p_40, struct S2 * p_3897);
__device__ uint32_t  func_43(int32_t  p_44, int8_t  p_45, struct S1 * p_46, struct S1 * p_47, int64_t  p_48, struct S2 * p_3897);
__device__ int8_t  func_55(struct S1 * p_56, int16_t  p_57, struct S1 * p_58, uint8_t  p_59, struct S2 * p_3897);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_3897->g_2776 p_3897->g_2777 p_3897->g_82
 * writes:
 */
__device__ int32_t  func_1(struct S2 * p_3897)
{ /* block id: 0 */
    __shared__ int32_t l_8;
    l_8 = 0x5C0DE450L;
    uint32_t l_1482 = 4294967295UL;
    int16_t *l_1483 = nullptr;
    int32_t l_1484 = (-3L);
    uint64_t *l_1485[2][9][1] = {{{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}};
    __shared__ int32_t l_1486;
    l_1486 = (-1L);
    struct S1 *l_1563 = nullptr;
    struct S0 l_1582 = {0xCAFE31C8L,0x30A7B06CL,6L,18446744073709551609UL,299,0L,0L};
    __shared__ int32_t **l_1589;
    l_1589 = &p_3897->g_95;
    int32_t ***l_1588 = &l_1589;
    int32_t l_1623 = (-10L);
    // attempting a hip shared for loop
    __shared__ int32_t l_1677[8];
    for (int i = 0; i < 8; i++)
        l_1677[i] = 0x2CDE66C4L;
    __shared__ int3 l_1700;
    l_1700 = make_int3(0xC733E58AL, 0xA349F55AL, 0xC733E58AL);
    uint32_t l_1702 = 18446744073709551607UL;
    int32_t l_1703 = 0x08053AD2L;
    __shared__ uint32_t ***l_1716;
    l_1716 = &p_3897->g_1295;
    char4 l_1723 = make_char4((-4L), 0x6AL, (-4L), 0x6AL);
    uchar3 l_1750 = make_uchar3(0UL, 3UL, 0UL);
    uint32_t l_1806 = 9UL;
    struct S0 ***l_1811 = &p_3897->g_829;
    uint64_t **l_1868[5][4] = {{&l_1485[1][8][0], &p_3897->g_310, &p_3897->g_310, nullptr}, {&l_1485[1][8][0], &p_3897->g_310, &p_3897->g_310, nullptr}, {&l_1485[1][8][0], &p_3897->g_310, &p_3897->g_310, nullptr}, {&l_1485[1][8][0], &p_3897->g_310, &p_3897->g_310, nullptr}, {&l_1485[1][8][0], &p_3897->g_310, &p_3897->g_310, nullptr}};
    struct S1 l_1876 = {0x687F7F2BFCFF1470LL,0UL,0,0x405EA325L,0x44896B3CL,0x3373E763FF636611LL,0xC509C0D0L,0xA963F445L};
    __shared__ ushort1 l_1880;
    l_1880 = make_ushort1(65535UL);
    struct S0 **l_1892 = &p_3897->g_830;
    int1 l_1923 = make_int1((-5L));
    int64_t *l_1940 = nullptr;
    uint64_t l_1942[7][5][7] = {{{0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}}, {{0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}}, {{0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}}, {{0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}}, {{0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}}, {{0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}}, {{0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}, {0UL, 0xDBB1F5C7022BC581LL, 18446744073709551615UL, 0x9ED6128A66A1571CLL, 0x7D797C3EE7E03242LL, 18446744073709551615UL, 18446744073709551611UL}}};
    int32_t l_1943 = 0x7360856DL;
    __shared__ int64_t l_1951;
    l_1951 = 0xA2B0718E8B4E1879LL;
    uint16_t l_1963 = 0x8BB7L;
    __shared__ uint8_t l_1991;
    l_1991 = 1UL;
    short4 l_1999 = make_short4((-1L), 0x8555L, (-1L), 0x8555L);
    int32_t *l_2015 = &l_1582.f5;
    short4 l_2044 = make_short4((-7L), (-1L), (-7L), (-1L));
    __shared__ short3 l_2045;
    l_2045 = make_short3((-7L), 0L, (-7L));
    int32_t *l_2112 = &l_1582.f5;
    struct S1 l_2126 = {4UL,1UL,53,4294967292UL,0xE77EB65DL,-1L,0x126BD788L,0L};
    uint32_t l_2179 = 0x634E57DEL;
    uint32_t l_2210 = 0x70843554L;
    int32_t *l_2225 = &l_2126.f6;
    uint32_t l_2247 = 0UL;
    __shared__ uint8_t l_2250;
    l_2250 = 255UL;
    __shared__ uint32_t l_2259;
    l_2259 = 4294967295UL;
    short3 l_2261 = make_short3(0xF423L, 0L, 0xF423L);
    int8_t l_2294 = 0L;
    uint32_t l_2390 = 0xB70340AAL;
    // attempting a hip shared for loop
    __shared__ uint8_t l_2426[1][2];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
            l_2426[i][j] = 0xD4L;
    }
    uint32_t l_2442 = 0x32869FEDL;
    __shared__ uint8_t l_2495;
    l_2495 = 0xFBL;
    int64_t l_2497 = 0xBA6266EA90350296LL;
    int4 l_2501 = make_int4((-8L), 0L, (-8L), 0L);
    __shared__ int8_t l_2546;
    l_2546 = 0x66L;
    uint32_t ***l_2576[3];
    uint32_t l_2591[9] = {0x2F9CD18AL, 18446744073709551606UL, 0x2F9CD18AL, 18446744073709551606UL, 0x2F9CD18AL, 18446744073709551606UL, 0x2F9CD18AL, 18446744073709551606UL, 0x2F9CD18AL};
    int64_t l_2713 = 0xE32958EE48D57C32LL;
    __shared__ uint1 l_2724;
    l_2724 = make_uint1(0xFB311062L);
    uint4 l_2725 = make_uint4(0x2FC9AE61L, 4294967290UL, 0x2FC9AE61L, 4294967290UL);
    uint32_t *l_2742 = &p_3897->g_2174[2];
    int32_t l_2744[3][2] = {{5L, 5L}, {5L, 5L}, {5L, 5L}};
    int32_t *l_2745 = nullptr;
    int32_t *l_2746 = nullptr;
    int32_t *l_2747 = &p_3897->g_42.f6;
    ushort4 l_2750 = make_ushort4(0x115FL, 0x1BA9L, 0x115FL, 0x1BA9L);
    uint16_t ***l_2751 = nullptr;
    uint16_t ***l_2753 = &p_3897->g_1505;
    uint16_t ****l_2752 = &l_2753;
    uint64_t l_2769 = 0xAF1F6AED0157163BLL;
    __shared__ int16_t l_2818;
    l_2818 = (-1L);
    int16_t l_2838 = 0x3AA7L;
    __shared__ uint32_t l_2849;
    l_2849 = 0x11083522L;
    ushort3 l_2856 = make_ushort3(0UL, 0x0CA6L, 0UL);
    // attempting a hip shared for loop
    __shared__ int32_t l_2878[4];
    for (int i = 0; i < 4; i++)
        l_2878[i] = (-7L);
    uint16_t l_2898 = 0x79C8L;
    uint8_t **l_2947 = &p_3897->g_243;
    // attempting a hip shared for loop
    __shared__ int16_t l_2952[6][1];
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 1; j++)
            l_2952[i][j] = 1L;
    }
    uint32_t ***l_2960 = &p_3897->g_1191;
    uint8_t **l_2983 = nullptr;
    uchar1 l_3039 = make_uchar1(1UL);
    int32_t l_3050 = 0L;
    long4 l_3059 = make_long4(0x6FACBABE284A3E4ALL, 0x78BCC92956A9797BLL, 0x6FACBABE284A3E4ALL, 0x78BCC92956A9797BLL);
    long2 l_3075 = make_long2(0xE182128416B7D373LL, 1L);
    __shared__ uint32_t ****l_3098;
    l_3098 = &p_3897->g_2014;
    int32_t ***l_3118 = &p_3897->g_2776;
    __shared__ long2 l_3145;
    l_3145 = make_long2(0xCC70462972AA88DFLL, 0x2A93A3F65C6352DBLL);
    struct S0 l_3160 = {-1L,0x60BC0E77L,0xAF768636D282F296LL,0UL,722,6L,2L};
    int16_t l_3162 = (-10L);
    short3 l_3167 = make_short3(0xC991L, 0x5702L, 0xC991L);
    __shared__ uint64_t ***l_3169;
    l_3169 = nullptr;
    // attempting a hip shared for loop
    __shared__ int8_t ***l_3179[2];
    for (int i = 0; i < 2; i++)
        l_3179[i] = &p_3897->g_2076;
    short1 l_3198 = make_short1(0x3F3FL);
    __shared__ uint64_t l_3204;
    l_3204 = 0x8BAFCD8FFFA565FBLL;
    int16_t l_3205[3][1][9] = {{{0L, 0L, (-10L), 0L, 0L, (-10L), 0L, 0L, (-10L)}}, {{0L, 0L, (-10L), 0L, 0L, (-10L), 0L, 0L, (-10L)}}, {{0L, 0L, (-10L), 0L, 0L, (-10L), 0L, 0L, (-10L)}}};
    ushort4 l_3252 = make_ushort4(65535UL, 0x6689L, 65535UL, 0x6689L);
    int2 l_3286 = make_int2((-1L), 0x5A884BF1L);
    // attempting a hip shared for loop
    __shared__ int64_t l_3313[2];
    for (int i = 0; i < 2; i++)
        l_3313[i] = 8L;
    uint32_t l_3337 = 0xAD5239C0L;
    __shared__ int32_t *l_3408;
    l_3408 = nullptr;
    int8_t l_3437 = 0xE3L;
    uint32_t l_3537[9];
    __shared__ ushort3 l_3585;
    l_3585 = make_ushort3(0x3635L, 65535UL, 0x3635L);
    struct S1 ****l_3590 = &p_3897->g_3220;
    int32_t l_3596[1];
    uint32_t l_3597 = 3UL;
    uint8_t l_3637 = 0x50L;
    int8_t l_3653 = (-1L);
    __shared__ uint64_t l_3765;
    l_3765 = 7UL;
    __shared__ uint64_t l_3774;
    l_3774 = 0xF2B00F4CB2D39F12LL;
    short1 l_3780 = make_short1(0L);
    uchar1 l_3782 = make_uchar1(0xC8L);
    uint64_t l_3807[4];
    int16_t l_3816[6] = {(-1L), (-1L), 0xA3D4L, (-1L), (-1L), 0xA3D4L};
    uint32_t l_3846 = 0xA33EBFF0L;
    uint32_t l_3878 = 1UL;
    int32_t l_3884 = 0x68DA3655L;
    int32_t l_3886 = 0L;
    // attempting a hip shared for loop
    __shared__ uint32_t l_3887[9];
    for (int i = 0; i < 9; i++)
        l_3887[i] = 0xC6FB6896L;
    int i, j, k;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
            l_2426[i][j] = 0xD4L;
    }
    for (int i = 0; i < 3; i++)
        l_2576[i] = &p_3897->g_1295;
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 1; j++)
            l_2952[i][j] = 1L;
    }
    for (int i = 0; i < 2; i++)
        l_3179[i] = &p_3897->g_2076;
    for (int i = 0; i < 2; i++)
        l_3313[i] = 8L;
    for (int i = 0; i < 9; i++)
        l_3537[i] = 8UL;
    for (int i = 0; i < 1; i++)
        l_3596[i] = 0xC59E35A5L;
    for (int i = 0; i < 4; i++)
        l_3807[i] = 2UL;
    return (**p_3897->g_2776);
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_3.f2 hip_const_1 p_3897->g_42.f4 p_3897->g_42.f0 p_3897->g_80 p_3897->g_82 p_3897->g_42.f6 p_3897->g_81.f6 p_3897->g_81.f4 p_3897->g_81.f7 p_3897->g_310 p_3897->g_243 p_3897->g_164 p_3897->g_242 p_3897->g_81.f5 p_3897->g_42.f5 p_3897->g_363 p_3897->g_402 p_3897->g_478 p_3897->g_438 p_3897->g_481 hip_const_3.f5 p_3897->g_483 hip_const_3 p_3897->g_81.f0 p_3897->g_95 p_3897->g_313 p_3897->g_81 hip_const_9 p_3897->g_533 p_3897->g_544 p_3897->g_42.f3 p_3897->g_87 p_3897->g_42.f7 p_3897->g_567 p_3897->g_604 p_3897->g_335 p_3897->g_502 hip_const_7 p_3897->g_217 p_3897->g_383 p_3897->g_42.f1 hip_const_6 p_3897->g_711 p_3897->g_622 p_3897->g_739 p_3897->g_75 p_3897->g_677 p_3897->g_605 p_3897->g_908 p_3897->g_914 p_3897->g_371 p_3897->g_334 hip_const_8 hip_const_4 p_3897->g_973 p_3897->g_301 p_3897->g_983 p_3897->g_993 p_3897->g_870 p_3897->g_587 hip_const_2 p_3897->g_1064 p_3897->g_1069 p_3897->g_1072 p_3897->g_1089 p_3897->g_723 p_3897->g_829 p_3897->g_830 p_3897->g_1118 p_3897->g_1122 p_3897->g_1132 p_3897->g_1167 p_3897->g_1174 p_3897->g_1190 p_3897->g_83 p_3897->g_1191 p_3897->g_1149 p_3897->g_1295
 * writes: p_3897->g_42.f6 p_3897->g_81.f7 p_3897->g_42.f5 p_3897->g_42.f3 p_3897->g_42.f0 p_3897->g_478 p_3897->g_481 p_3897->g_483 p_3897->g_95 p_3897->g_81.f4 p_3897->g_81.f1 p_3897->g_544 p_3897->g_87 p_3897->g_42.f7 p_3897->g_42.f1 p_3897->g_81.f6 p_3897->g_164 p_3897->g_313 p_3897->g_383 p_3897->g_83 p_3897->g_502 p_3897->g_301 p_3897->g_242 p_3897->g_217 p_3897->g_81 p_3897->g_567 p_3897->g_704 p_3897->g_75 p_3897->g_941 p_3897->g_942 p_3897->g_711 p_3897->g_870 p_3897->g_363 p_3897->g_830 p_3897->g_438 p_3897->g_908 p_3897->g_723 p_3897->g_1241 p_3897->g_533 p_3897->g_869 p_3897->g_983 p_3897->g_1388 p_3897->g_729 p_3897->g_80 p_3897->g_1064
 */
__device__ int8_t  func_3(uint64_t  p_4, uint32_t  p_5, int16_t  p_6, uint64_t  p_7, struct S2 * p_3897)
{ /* block id: 1 */
    struct S1 l_29 = {0xD1456014EFC71010LL,1UL,35,0xEFD9132EL,0x82408623L,-1L,8L,0x3C9199EDL};
    int32_t *l_489 = &p_3897->g_81.f4;
    struct S1 l_490 = {0x022545CF32CDA1ADLL,1UL,19,0UL,1L,-2L,0xD2B5CF9AL,-1L};
    struct S0 l_491 = {0x2FF8DBC5L,18446744073709551612UL,0x67A5ABDA1F29BAD1LL,18446744073709551610UL,4979,0L,0L};
    struct S1 **l_1473[9][8] = {{&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][1], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][0], &p_3897->g_80[0][1], &p_3897->g_80[0][1]}};
    uint1 l_1476 = make_uint1(0xF9B2D669L);
    __shared__ int32_t *l_1477;
    l_1477 = nullptr;
    int32_t *l_1478[9][3][3] = {{{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}, {{&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}, {&hip_const_3.f6, nullptr, &p_3897->g_502}}};
    int8_t l_1479 = (-5L);
    int i, j, k;
    p_3897->g_80[0][1] = func_9(func_14(((((*l_489) = (safe_add_func_int32_t_s_s(func_21(func_26(p_4, l_29, p_3897), p_3897->g_80[0][1], p_3897->g_81.f0, hip_const_3, p_3897), p_6))) , (l_29.f4 , nullptr)) != nullptr), hip_const_3.f2, l_490, l_491, p_3897), l_491.f6, p_3897->g_80[0][1], p_3897->g_313, p_3897);
    p_3897->g_87.x = (p_3897->g_1064.y &= (safe_sub_func_uint32_t_u_u(p_6, make_uint3(l_1476.x, l_1476.x, l_1476.x).y)));
    return l_1479;
}


/* ------------------------------------------ */
/* 
 * reads : p_3897->g_81 p_3897->g_42.f3 hip_const_3.f0 p_3897->g_164 p_3897->g_483 p_3897->g_87 p_3897->g_243 p_3897->g_313 p_3897->g_42.f4 p_3897->g_310 p_3897->g_42.f0 p_3897->g_95 p_3897->g_42.f6 p_3897->g_335 hip_const_3 p_3897->g_502 hip_const_7 p_3897->g_242 p_3897->g_217 p_3897->g_533 p_3897->g_383 p_3897->g_567 p_3897->g_42.f1 hip_const_6 p_3897->g_711 p_3897->g_622 p_3897->g_739 p_3897->g_75 p_3897->g_82 p_3897->g_438 p_3897->g_677 p_3897->g_604 p_3897->g_605 p_3897->g_363 p_3897->g_371 hip_const_4 p_3897->g_301 hip_const_9 p_3897->g_983 p_3897->g_587 hip_const_2 p_3897->g_829 p_3897->g_830 p_3897->g_1064 p_3897->g_1190 p_3897->g_908 p_3897->g_83 p_3897->g_1191 p_3897->g_1149 p_3897->g_1295 p_3897->g_42.f5 p_3897->g_334 p_3897->g_80 p_3897->g_544 p_3897->g_42.f7 p_3897->g_914 hip_const_8 p_3897->g_402 p_3897->g_973 p_3897->g_993 p_3897->g_870 p_3897->g_1069 p_3897->g_1072 p_3897->g_1089 p_3897->g_723 p_3897->g_1118 p_3897->g_1122 p_3897->g_1132 p_3897->g_1167 p_3897->g_1174
 * writes: p_3897->g_87 p_3897->g_42.f7 p_3897->g_42.f1 p_3897->g_81.f6 p_3897->g_42.f6 p_3897->g_95 p_3897->g_164 p_3897->g_313 p_3897->g_383 p_3897->g_83 p_3897->g_502 p_3897->g_42.f3 p_3897->g_301 p_3897->g_242 p_3897->g_217 p_3897->g_81 p_3897->g_481 p_3897->g_567 p_3897->g_704 p_3897->g_75 p_3897->g_42.f0 p_3897->g_544 p_3897->g_711 p_3897->g_363 p_3897->g_483 p_3897->g_830 p_3897->g_908 p_3897->g_723 p_3897->g_1241 p_3897->g_533 p_3897->g_869 p_3897->g_983 p_3897->g_1388 p_3897->g_729 p_3897->g_942 p_3897->g_941 p_3897->g_870 p_3897->g_438
 */
__device__ struct S1 * func_9(struct S1 * p_10, int64_t  p_11, struct S1 * p_12, int16_t  p_13, struct S2 * p_3897)
{ /* block id: 196 */
    // attempting a hip shared for loop
    __shared__ int32_t *l_511[2][4][9];
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 9; k++)
                l_511[i][j][k] = nullptr;
        }
    }
    ulong3 l_518 = make_ulong3(0UL, 0x0CB63743954A208BLL, 0UL);
    ulong4 l_523 = make_ulong4(0x44498443866E0124LL, 0x24805BA93F29A8F9LL, 0x44498443866E0124LL, 0x24805BA93F29A8F9LL);
    ulong2 l_526 = make_ulong2(0UL, 0x44D2CFC12411A38CLL);
    ulong4 l_527 = make_ulong4(18446744073709551611UL, 0x9459ECCC7C3635BFLL, 18446744073709551611UL, 0x9459ECCC7C3635BFLL);
    uint32_t *l_528 = &p_3897->g_81.f1;
    uint8_t ***l_529 = &p_3897->g_242;
    struct S1 *l_532 = &p_3897->g_81;
    uint32_t *l_534 = &hip_const_3.f1;
    uint32_t *l_535 = &hip_const_3.f3;
    __shared__ uint32_t *l_536;
    l_536 = nullptr;
    uint32_t *l_537 = &hip_const_3.f3;
    uint32_t *l_538 = &hip_const_4;
    uint32_t *l_539 = &hip_const_3.f3;
    uint32_t *l_540 = &hip_const_3.f3;
    __shared__ uint32_t *l_541;
    l_541 = &hip_const_3.f1;
    uint32_t *l_542 = nullptr;
    uint32_t *l_543[8] = {&hip_const_3.f1, &hip_const_3.f1, &hip_const_3.f1, &hip_const_3.f1, &hip_const_3.f1, &hip_const_3.f1, &hip_const_3.f1, &hip_const_3.f1};
    uint16_t *l_545 = &hip_const_7;
    struct S0 *l_579 = nullptr;
    struct S0 **l_578 = &l_579;
    int2 l_609 = make_int2(0x36C7473BL, (-8L));
    short1 l_617 = make_short1(0x713BL);
    int16_t l_625 = 5L;
    ushort4 l_664 = make_ushort4(1UL, 0UL, 1UL, 0UL);
    ushort3 l_674 = make_ushort3(0x101FL, 65527UL, 0x101FL);
    uint3 l_847 = make_uint3(0x56206F92L, 4294967291UL, 0x56206F92L);
    uint8_t l_880 = 0x26L;
    uint64_t *l_887 = &p_3897->g_42.f0;
    long3 l_897 = make_long3(0L, 1L, 0L);
    char2 l_907 = make_char2(0x2CL, 0xD9L);
    int32_t l_917 = 0xF9B1F70FL;
    int8_t l_930 = 0x49L;
    __shared__ short3 l_951;
    l_951 = make_short3(2L, 0x3D5DL, 2L);
    uint3 l_1037 = make_uint3(0UL, 4294967295UL, 0UL);
    __shared__ uint32_t l_1092;
    l_1092 = 0x05CD16BAL;
    __shared__ uint3 l_1097;
    l_1097 = make_uint3(0xEFE124AFL, 4294967295UL, 0xEFE124AFL);
    __shared__ long3 l_1104;
    l_1104 = make_long3(0x4274CB58C006F423LL, 0x3B79455AC1FFDDF0LL, 0x4274CB58C006F423LL);
    struct S0 l_1125 = {0x25E3F687L,0xCE653DD9L,0xD5893DAE7F4FC521LL,7UL,3386,0x869E8F4FL,3L};
    uint32_t **l_1193 = &p_3897->g_1192;
    int1 l_1203 = make_int1(0xD4070EF6L);
    int32_t *l_1206 = &p_3897->g_81.f6;
    uint32_t l_1212 = 8UL;
    int64_t l_1216 = 6L;
    int3 l_1255 = make_int3((-7L), (-5L), (-7L));
    uchar2 l_1294 = make_uchar2(255UL, 0x60L);
    int32_t l_1303 = 7L;
    ulong2 l_1329 = make_ulong2(0UL, 18446744073709551611UL);
    uchar1 l_1337 = make_uchar1(0x79L);
    uint8_t l_1431 = 0xBCL;
    long4 l_1469 = make_long4(0xC2D1E65B4C3E57A6LL, 0L, 0xC2D1E65B4C3E57A6LL, 0L);
    int i, j, k;
lbl_548:
    l_511[1][0][8] = &p_3897->g_502;
    if (((*p_10) , (p_3897->g_87.y |= ((((((((safe_div_func_int16_t_s_s(((safe_add_func_int64_t_s_s((safe_add_func_uint64_t_u_u(((make_ulong2(l_518.x, l_518.x) ^ ((((safe_rshift(((safe_mod(((~make_ulong2(l_523.z, l_523.z))), make_ulong2(18446744073709551606UL, 0xD0167514AE6B460BLL)))), make_ulong2(64, 64)))) ^ ((((((make_ulong2(p_13, 1UL) ^ ((~((safe_add(make_ulong2(l_526.y, l_526.y), ((((make_ulong2(l_527.y, l_527.y) ^ make_ulong2(0x18BB334DDC1EBFFFLL, (((((p_3897->g_544[5] |= (((((*l_528) |= p_3897->g_438.y) && ((((nullptr != l_529) , ((safe_mul_func_int16_t_s_s((p_10 == l_532), p_11)) || (-9L))) >= hip_const_9) ^ p_3897->g_533)) || 0x63C4B92494B5CD42LL) && 0x9257L)) , p_13) != p_11) & 18446744073709551610UL) >= 0x3FD91271L)))) | make_ulong2(1UL, 1UL)))))))))) | make_ulong2(1UL, 1UL))) ^ make_ulong2(9UL, 9UL))))))).y, 0x15415B443CC19C5BLL)), 0xFB47E9437CDA6063LL)) == 18446744073709551611UL), p_3897->g_42.f3)) , p_13) > hip_const_3.f0) , l_545) == nullptr) && p_3897->g_164[5][5]) <= p_3897->g_483.z) > 0x4CL))))
    { /* block id: 201 */
        uint64_t **l_562 = nullptr;
        int32_t l_595 = (-2L);
        uint32_t *l_608 = &hip_const_8;
        struct S1 l_632[8] = {{0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}, {0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}, {0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}, {0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}, {0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}, {0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}, {0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}, {0UL,7UL,46,1UL,0x70BAA20DL,-8L,0x392DAFD0L,0x71F00126L}};
        int32_t *l_643 = nullptr;
        int i;
lbl_645:
        for (p_3897->g_42.f7 = 0; (p_3897->g_42.f7 == (-11)); p_3897->g_42.f7--)
        { /* block id: 204 */
            int16_t l_551 = 0x17DBL;
            int32_t *l_554 = &p_3897->g_42.f6;
            int4 l_588 = make_int4(0x2D8DE5D0L, (-1L), 0x2D8DE5D0L, (-1L));
            char2 l_596 = make_char2(0x0AL, 1L);
            uint1 l_601 = make_uint1(4294967295UL);
            int i;
            if (p_3897->g_81.f7)
                goto lbl_548;
            for (p_3897->g_42.f1 = 0; (p_3897->g_42.f1 != 57); ++p_3897->g_42.f1)
            { /* block id: 208 */
                uint32_t l_575 = 9UL;
                struct S0 **l_580[10] = {nullptr, nullptr, &l_579, nullptr, nullptr, &l_579, nullptr, nullptr, &l_579, nullptr};
                __shared__ uint16_t *l_606;
                l_606 = &p_3897->g_481;
                __shared__ int32_t l_607;
                l_607 = 0xC38537A7L;
                int i;
                if (l_551)
                { /* block id: 209 */
                    int32_t **l_582 = &l_511[1][3][6];
                    for (p_3897->g_81.f6 = 0; (p_3897->g_81.f6 != (-27)); p_3897->g_81.f6 = safe_sub_func_uint8_t_u_u(p_3897->g_81.f6, 3))
                    { /* block id: 212 */
                        uint8_t *l_555[2];
                        uint64_t **l_564[3];
                        uint64_t ***l_563 = &l_564[1];
                        __shared__ ushort1 l_570;
                        l_570 = make_ushort1(0UL);
                        int8_t *l_581 = &p_3897->g_313;
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_555[i] = &p_3897->g_164[7][5];
                        for (int i = 0; i < 3; i++)
                            l_564[i] = &p_3897->g_310;
                        p_3897->g_42.f6 = ((&hip_const_9 == nullptr) == p_13);
                        p_3897->g_95 = l_554;
                        (*p_3897->g_95) = (((nullptr != l_555[0]) , p_13) || (((safe_mod_func_int16_t_s_s(((((safe_rshift_func_int8_t_s_u(0L, 1)) < (l_562 == ((*l_563) = l_562))) || ((*p_3897->g_243)--)) , make_short2(p_3897->g_567.x, p_3897->g_567.x).y), ((safe_sub(make_ushort2(l_570.x, l_570.x), make_ushort2(0x0654L, 65535UL)))).y)) >= (safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(((l_575 >= (((*l_581) ^= ((safe_div_func_uint64_t_u_u((l_578 == l_580[2]), p_3897->g_81.f7)) < l_575)) | p_13)) ^ 0xD40DL), p_3897->g_42.f4)), (*p_3897->g_310)))) & l_570.x));
                        if ((*p_3897->g_95))
                            continue;
                    }
                    (*l_582) = &p_3897->g_502;
                }
                else
                { /* block id: 222 */
                    for (p_3897->g_383 = 21; (p_3897->g_383 > 31); ++p_3897->g_383)
                    { /* block id: 225 */
                        return p_10;
                    }
                    (*l_554) = (safe_lshift_func_uint16_t_u_s(l_575, make_short3(p_3897->g_587.z, p_3897->g_587.z, p_3897->g_587.z).y));
                }
                p_3897->g_83.x = make_int1(l_588.w).x;
                if (p_11)
                    continue;
                l_607 &= (+((safe_lshift(((safe_rshift(make_int4((safe_mul_func_int16_t_s_s(((*l_529) != nullptr), (l_575 != ((l_595 == make_char3(l_596.x, l_596.x, l_596.x).x) | ((+p_13) && ((*l_606) = (safe_add_func_uint32_t_u_u((*l_554), ((safe_mod(((make_uint4(8UL, 0x8F4018BAL, ((make_uint4(l_601.x, l_601.x, l_601.x, l_601.x) ^ make_uint4(0xB52DAF65L, l_595, 0xDCBCF587L, (safe_add_func_uint32_t_u_u(0x3BF664E5L, (nullptr != p_3897->g_604)))))).w, 9UL) & make_uint4(1UL, 1UL, 1UL, 1UL))), make_uint4(0xF1FCCFA7L, 0xF1FCCFA7L, 0xF1FCCFA7L, 0xF1FCCFA7L)))).w)))))))), 0x692A9187L, 0x049F5DA7L, 0x965E26D8L), make_int4(32, 32, 32, 32)))), make_int4(32, 32, 32, 32)))).z);
            }
            (*l_554) &= (p_3897->g_335.x != (l_608 != (hip_const_3 , l_608)));
        }
        p_3897->g_502 &= ((~((make_int1(0x775074FBL) ^ make_int1(l_609.y))))).x;
        for (p_3897->g_42.f3 = 0; (p_3897->g_42.f3 >= 24); p_3897->g_42.f3 = safe_add_func_uint16_t_u_u(p_3897->g_42.f3, 1))
        { /* block id: 240 */
            uint32_t **l_624 = &l_528;
            // attempting a hip shared for loop
            __shared__ int32_t l_633[7];
            for (int i = 0; i < 7; i++)
                l_633[i] = (-4L);
            __shared__ uint64_t ***l_634;
            l_634 = &p_3897->g_605[3];
            int16_t *l_635 = nullptr;
            int16_t *l_636 = nullptr;
            // attempting a hip shared for loop
            __shared__ int16_t *l_637[10][2][2];
            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 2; j++)
                {
                    for (int k = 0; k < 2; k++)
                        l_637[i][j][k] = nullptr;
                }
            }
            int32_t *l_644 = nullptr;
            int i, j, k;
            if (((p_3897->g_301.z = (((safe_lshift_func_uint32_t_u_s((safe_unary_minus_func_int8_t_s(make_char3((safe_mul_func_uint16_t_u_u(1UL, (make_short1(l_617.x).x == (p_11 < (((safe_mod_func_int32_t_s_s((((safe_mul(((make_long1(p_3897->g_622.x) | make_long1(p_3897->g_217.y))), make_long1(p_3897->g_623.y)))).x == (((*l_624) = nullptr) == &hip_const_8)), make_uint3((+l_625), p_3897->g_81.f1, 4294967295UL).y)) , (((safe_div_func_int16_t_s_s(p_3897->g_481, (l_633[5] = ((((safe_add_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(p_11, 3L)), (*p_3897->g_310))) <= hip_const_3.f1) , l_632[2]) , l_632[2].f6)))) , l_634) == nullptr)) , l_633[1]))))), p_11, 0x35L).y)), 15)) < p_11) && p_13)) , hip_const_7))
            { /* block id: 244 */
                (*l_529) = (*l_529);
            }
            else
            { /* block id: 246 */
                for (p_3897->g_502 = (-15); (p_3897->g_502 > (-18)); p_3897->g_502 = safe_sub_func_uint64_t_u_u(p_3897->g_502, 7))
                { /* block id: 249 */
                    // attempting a hip shared for loop
                    __shared__ int32_t **l_642[7];
                    for (int i = 0; i < 7; i++)
                        l_642[i] = &l_511[1][2][7];
                    int i;
                    for (p_3897->g_42.f6 = 8; (p_3897->g_42.f6 > (-13)); --p_3897->g_42.f6)
                    { /* block id: 252 */
                        p_3897->g_217.z |= p_13;
                        return &p_3897->g_42;
                    }
                    l_643 = nullptr;
                    (*p_10) = l_632[2];
                    l_644 = l_511[1][0][8];
                }
                if (p_13)
                    continue;
                if (p_3897->g_533)
                    goto lbl_645;
            }
        }
    }
    else
    { /* block id: 264 */
        __shared__ ushort3 l_665;
        l_665 = make_ushort3(9UL, 0x184FL, 9UL);
        int32_t l_680 = 1L;
        int8_t l_687 = 0xB8L;
        uint32_t l_710 = 0x2FFF086BL;
        uint2 l_712 = make_uint2(4294967290UL, 0xD49309ACL);
        char4 l_720 = make_char4(0x78L, 0xABL, 0x78L, 0xABL);
        int64_t l_758 = (-1L);
        struct S1 l_760 = {7UL,0x7448E317L,40,5UL,-4L,0x332F8E03A803E2F2LL,2L,0xA5F8D0A0L};
        long2 l_765 = make_long2(0x3F6A527D56E35751LL, 1L);
        int1 l_800 = make_int1((-1L));
        uint8_t l_832 = 0UL;
        uint4 l_852 = make_uint4(0UL, 0x0945C37FL, 0UL, 0x0945C37FL);
        uint8_t ****l_874 = &l_529;
        long4 l_898 = make_long4(0L, (-1L), 0L, (-1L));
        short1 l_911 = make_short1(0xC491L);
        struct S0 ***l_938 = &p_3897->g_829;
        int32_t *l_954 = nullptr;
        char2 l_1017 = make_char2((-1L), 0x5DL);
        uint8_t *l_1028 = nullptr;
        int8_t l_1035 = (-6L);
        uint64_t l_1059 = 18446744073709551607UL;
        __shared__ short3 l_1117;
        l_1117 = make_short3(3L, 0xC80DL, 3L);
        __shared__ short2 l_1121;
        l_1121 = make_short2(0xCC26L, 0xD59BL);
        uint8_t *l_1126 = &p_3897->g_383;
        __shared__ uint8_t *l_1127;
        l_1127 = &l_880;
        __shared__ long3 l_1258;
        l_1258 = make_long3(0x3C4A9D2D47A80629LL, 1L, 0x3C4A9D2D47A80629LL);
        __shared__ int8_t l_1300;
        l_1300 = 0x98L;
        int16_t l_1305[10][4] = {{0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}, {0xDE5EL, 0x4791L, (-2L), (-7L)}};
        uint64_t l_1309 = 0xD3E1A1D42753155DLL;
        char2 l_1326 = make_char2(0x65L, 9L);
        uint64_t l_1357 = 0x37D09D8BAE15C297LL;
        __shared__ uint16_t l_1358;
        l_1358 = 0xA4CEL;
        uint32_t *l_1380 = &hip_const_8;
        uchar2 l_1430 = make_uchar2(0xD2L, 248UL);
        int32_t **l_1459 = nullptr;
        int32_t **l_1460[9] = {&l_511[1][2][8], &l_511[1][0][8], &l_511[1][2][8], &l_511[1][0][8], &l_511[1][2][8], &l_511[1][0][8], &l_511[1][2][8], &l_511[1][0][8], &l_511[1][2][8]};
        int64_t *l_1461 = &p_3897->g_533;
        __shared__ uint2 l_1468;
        l_1468 = make_uint2(4294967291UL, 0x4234E882L);
        uint64_t ***l_1472 = &p_3897->g_605[1];
        int i, j;
        for (p_3897->g_81.f1 = 0; (p_3897->g_81.f1 >= 12); ++p_3897->g_81.f1)
        { /* block id: 267 */
            struct S1 *l_652 = &p_3897->g_42;
            __shared__ int16_t *l_678;
            l_678 = &hip_const_1;
            int16_t *l_679[6][9][4] = {{{nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}}, {{nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}}, {{nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}}, {{nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}}, {{nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}}, {{nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}, {nullptr, nullptr, &l_625, &hip_const_1}}};
            int32_t l_683 = 0x42D62415L;
            uint64_t *l_684 = nullptr;
            uint64_t *l_685 = nullptr;
            uint64_t *l_686 = &p_3897->g_544[5];
            __shared__ uint16_t *l_688;
            l_688 = &p_3897->g_481;
            uint8_t ***l_703 = nullptr;
            int32_t l_706 = (-3L);
            struct S1 **l_715 = &p_3897->g_80[0][1];
            short4 l_724 = make_short4(0x522AL, 0xBD91L, 0x522AL, 0xBD91L);
            struct S0 *l_774 = &hip_const_3;
            __shared__ int32_t l_775;
            l_775 = 0x70BC3F13L;
            int2 l_779 = make_int2(0xC1A104D4L, (-1L));
            uint32_t **l_823 = nullptr;
            int32_t l_833 = 0xEA18B2E9L;
            uint32_t l_855 = 1UL;
            int1 l_879 = make_int1(0xCD16755DL);
            int i, j, k;
            if ((safe_rshift_func_int16_t_s_s(((((*l_688) = ((((((make_ulong1((((((safe_mod(make_short3(((((((*l_652) = (*p_10)) , (safe_div_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u(((*p_12) , (make_uint2(0x16F9C846L, 1UL).y , (***p_3897->g_604))), (safe_lshift_func_uint16_t_u_s(((safe_mod(make_ushort4(p_3897->g_661.y, p_3897->g_661.y, p_3897->g_661.y, p_3897->g_661.y), ((safe_sub(make_ushort4(l_664.w, l_664.w, l_664.w, l_664.w), make_ushort4(l_665.x, l_665.x, l_665.x, l_665.x))))))).y, p_3897->g_217.x)))), (l_665.y & (safe_lshift_func_uint64_t_u_s(((safe_lshift_func_uint32_t_u_s(((safe_lshift_func_uint64_t_u_u(((*l_686) = ((((safe_mod(make_ushort2(l_674.y, l_674.y), ((safe_div(make_ushort2(p_3897->g_677.y, p_3897->g_677.y), make_ushort2(make_ushort4(make_ushort2((((l_680 = make_short4(0x1F1BL, 6L, p_11, p_3897->g_677.x).y) || (l_680 && (safe_lshift_func_int32_t_s_s(l_683, 23)))) | 1L), p_11).x, 0x4C8BL, l_680, 0x2A23L).x, 0x49F2L))))))).x < 0x6DC2L) ^ l_665.x)), 61)) < p_3897->g_363.z), l_687)) | 0xB3917BD2L), 17)))))) , 0x9612L) < p_3897->g_164[9][4]) < 0xBEL), l_680, 0xCC25L), make_short3((-8L), (-8L), (-8L))))).y | p_3897->g_82[0][6]) ^ p_13) <= p_11)).x > l_665.y) != 5L) <= p_13) , (*l_529)) == &p_3897->g_243) < 0x6216L)) | l_683) , 0xC4B2L), 12)))
            { /* block id: 272 */
                ulong1 l_738 = make_ulong1(0UL);
                int32_t l_740[8] = {(-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L)};
                int32_t l_741 = 0xC07B9BE0L;
                uint8_t **l_753 = &p_3897->g_243;
                __shared__ ulong3 l_755;
                l_755 = make_ulong3(0xE183491AC2357E32LL, 0x7707D31680219523LL, 0xE183491AC2357E32LL);
                int i;
                if (p_11)
                { /* block id: 273 */
                    uint8_t *l_693 = &p_3897->g_383;
                    uint32_t *l_698 = &p_3897->g_42.f1;
                    int32_t l_709[8][4] = {{0L, 4L, 0x4A09C70FL, 0x4A09C70FL}, {0L, 4L, 0x4A09C70FL, 0x4A09C70FL}, {0L, 4L, 0x4A09C70FL, 0x4A09C70FL}, {0L, 4L, 0x4A09C70FL, 0x4A09C70FL}, {0L, 4L, 0x4A09C70FL, 0x4A09C70FL}, {0L, 4L, 0x4A09C70FL, 0x4A09C70FL}, {0L, 4L, 0x4A09C70FL, 0x4A09C70FL}, {0L, 4L, 0x4A09C70FL, 0x4A09C70FL}};
                    int i, j;
                    p_3897->g_42.f6 ^= (((safe_add_func_uint8_t_u_u(((safe_add_func_uint32_t_u_u(((l_680 |= (**p_3897->g_242)) != (++(*l_693))), p_13)) | ((p_3897->g_567.y |= l_683) == ((safe_div_func_uint32_t_u_u(((*l_698)++), (safe_lshift_func_int32_t_s_u(((l_706 &= (((p_3897->g_704 = l_703) == &p_3897->g_705[0]) || p_13)) || 0L), ((safe_div_func_uint16_t_u_u(hip_const_6, make_short3(0xB0F4L, (p_3897->g_42.f0 <= p_3897->g_42.f7), p_11).y)) <= l_709[4][1]))))) <= 0x938AD50D356672A9LL))), l_710)) & l_687) | (-8L));
                }
                else
                { /* block id: 281 */
                    p_3897->g_42.f6 ^= make_int1(p_3897->g_711.y).x;
                    if (hip_const_3.f1)
                        goto lbl_548;
                }
                l_741 = (make_uint1(l_712.y).x , (((l_740[2] &= (l_680 = ((safe_add_func_int32_t_s_s(((&p_3897->g_80[0][1] != (l_715 = &l_652)) , (safe_mul_func_uint16_t_u_u(p_3897->g_383, ((safe_mul_func_int8_t_s_s((p_3897->g_313 = ((((make_char1(1L) & make_char1(hip_const_3.f1))) & ((make_char1(0xB5L) | make_char1(l_720.z))))).x), (*p_3897->g_243))) > p_3897->g_711.z)))), ((safe_lshift_func_int32_t_s_s(make_int4(p_3897->g_723.z, p_3897->g_723.z, p_3897->g_723.z, p_3897->g_723.z).y, (p_3897->g_83.x = p_3897->g_622.x))) >= make_short2(l_724.z, l_724.z).x))) < ((safe_unary_minus_func_int16_t_s((safe_mod_func_int16_t_s_s((((((make_int4(p_3897->g_728.y, p_3897->g_728.y, p_3897->g_728.y, p_3897->g_728.y) ^ make_int4(p_3897->g_729.z, p_3897->g_729.z, p_3897->g_729.z, p_3897->g_729.z))) ^ ((safe_sub(((((((safe_sub(((make_int4(0xF17A8DDFL, (-2L), (-5L), ((safe_rshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s((+0x891A842DA814CB98LL), l_738.x)), 5)) != l_738.x)) ^ make_int4(0xF90A4A91L, 0xF90A4A91L, 0xF90A4A91L, 0xF90A4A91L))), make_int4(0L, 0L, 0L, 0L)))) | make_int4(0L, 0L, 0L, 0L))) ^ make_int4(0x767DCAE0L, 0x767DCAE0L, 0x767DCAE0L, 0x767DCAE0L))), make_int4(0xB672D4EBL, 0xB672D4EBL, 0xB672D4EBL, 0xB672D4EBL)))))).x >= p_3897->g_739[0][2]), p_11)))) , 0x1DC65680L)))) < p_11) < p_13));
                for (p_3897->g_81.f3 = 0; (p_3897->g_81.f3 >= 36); p_3897->g_81.f3 = safe_add_func_uint8_t_u_u(p_3897->g_81.f3, 3))
                { /* block id: 293 */
                    int32_t l_748 = 0xD772FDB6L;
                    uint8_t **l_754 = nullptr;
                    for (p_3897->g_75 = 3; (p_3897->g_75 >= 0); p_3897->g_75 -= 1)
                    { /* block id: 296 */
                        int32_t *l_751[3][3];
                        int32_t **l_752 = &l_751[2][0];
                        int i, j;
                        for (int i = 0; i < 3; i++)
                        {
                            for (int j = 0; j < 3; j++)
                                l_751[i][j] = &hip_const_3.f6;
                        }
                        if (l_680)
                            goto lbl_548;
                        l_706 = (safe_mod_func_uint32_t_u_u(4294967295UL, (safe_add_func_uint8_t_u_u((++(***l_529)), (l_680 = (((*l_752) = l_751[2][1]) != nullptr))))));
                        l_680 |= (((((l_754 = l_753) == &p_3897->g_243) < (make_ulong2(l_755.x, l_755.x).x != p_3897->g_82[(p_3897->g_75 + 3)][(p_3897->g_75 + 1)])) || 0xC4C1990FL) || p_3897->g_739[(p_3897->g_75 + 1)][(p_3897->g_75 + 1)]);
                    }
                }
            }
            else
            { /* block id: 306 */
                struct S0 *l_759 = &hip_const_3;
                char3 l_771 = make_char3(0L, 1L, 0L);
                int8_t *l_772 = nullptr;
                int8_t *l_773[9] = {nullptr, nullptr, &l_687, nullptr, nullptr, &l_687, nullptr, nullptr, &l_687};
                int1 l_778 = make_int1(0xF3BF75ACL);
                struct S1 **l_820 = &l_652;
                uint32_t **l_821 = &l_528;
                char4 l_862 = make_char4(1L, (-6L), 1L, (-6L));
                int i;
                for (p_3897->g_81.f7 = (-24); (p_3897->g_81.f7 != (-5)); p_3897->g_81.f7++)
                { /* block id: 309 */
                    l_758 = (-1L);
                    if (p_13)
                        break;
                }
                l_775 |= (((*l_578) = l_759) != (((l_760 , l_760) , (((make_char3(8L, (p_3897->g_313 = (safe_div_func_int8_t_s_s((p_13 & make_ulong1(((((~l_760.f1) ^ (safe_mod_func_int64_t_s_s(((make_long1(l_765.y).x && ((safe_mul_func_int32_t_s_s(((((safe_unary_minus_func_int64_t_s((safe_mul_func_uint64_t_u_u((make_char1(l_771.y).x || make_char3(0xA3L, 0x53L, 0xB9L).z), l_760.f3)))) && l_706) != (make_uint1(((p_13 , 8L) >= 0L)).x == p_3897->g_83.x)) , 0xC24AB81BL), p_3897->g_371.x)) == l_724.y)) | 0x8C31463097CA46DCLL), 8L))) , &p_3897->g_75) != &p_3897->g_75)).x), p_11))), 0x56L).x > p_3897->g_438.y) || 0x5FD9D32F3CE000A6LL) & l_683)) , l_774));
                for (p_3897->g_42.f0 = 1; (p_3897->g_42.f0 <= 4); p_3897->g_42.f0 += 1)
                { /* block id: 318 */
                    uint8_t ***l_797 = &p_3897->g_242;
                    uint32_t **l_822 = nullptr;
                    int32_t l_824 = (-5L);
                    __shared__ int1 l_827;
                    l_827 = make_int1(1L);
                    __shared__ int32_t l_828;
                    l_828 = 0x18316B7DL;
                    short2 l_846 = make_short2(1L, 0x8171L);
                    __shared__ int32_t l_860;
                    l_860 = 0L;
                    int i;
                    if (((safe_div(make_int3(l_778.x, l_778.x, l_778.x), make_int3(l_779.x, l_779.x, l_779.x)))).z)
                    { /* block id: 319 */
                        __shared__ uint8_t ****l_796;
                        l_796 = &p_3897->g_704;
                        uint64_t *l_825[3][4] = {{&p_3897->g_478[4], &p_3897->g_81.f0, &p_3897->g_478[4], &p_3897->g_81.f0}, {&p_3897->g_478[4], &p_3897->g_81.f0, &p_3897->g_478[4], &p_3897->g_81.f0}, {&p_3897->g_478[4], &p_3897->g_81.f0, &p_3897->g_478[4], &p_3897->g_81.f0}};
                        int32_t l_826 = 0xD7F1AE6EL;
                        struct S0 ***l_831 = &p_3897->g_829;
                        uint32_t *l_848 = &l_760.f1;
                        int32_t l_849 = 0xC6C3B97EL;
                        short1 l_871 = make_short1(0x3B52L);
                        int i, j;
                        l_680 = ((safe_lshift_func_int16_t_s_s((((safe_lshift_func_int64_t_s_u(((safe_mod_func_int64_t_s_s(make_long4((-3L), (safe_lshift_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s(((make_uint4(0UL, 2UL, (((((((p_3897->g_301.x = (~(safe_rshift_func_uint64_t_u_u((++(*l_686)), (((*l_796) = &p_3897->g_705[4]) == (l_797 = l_703)))))) == (((*l_831) = ((safe_div_func_uint32_t_u_u(((~make_uint4(0x10ED6A0BL, (p_3897->g_739[(p_3897->g_42.f0 + 2)][p_3897->g_42.f0] != (((make_int1(l_800.x) ^ ((make_int1(0x68E1D99FL) & ((((~((((safe_lshift(((safe_add(make_int1((safe_rshift_func_int16_t_s_u(make_short1((l_828 |= (p_3897->g_123.z |= (((safe_mod_func_uint8_t_u_u((((l_826 |= (safe_mul_func_uint16_t_u_u(((p_3897->g_739[(p_3897->g_42.f0 + 3)][p_3897->g_42.f0] || (0x18B30191D4F6B6BELL ^ (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(make_uchar1(p_3897->g_817.x).x, (p_3897->g_313 ^= (safe_add_func_uint32_t_u_u(((&l_652 == ((**l_715) , l_820)) && ((l_822 = l_821) != l_823)), p_3897->g_334.z))))), 43)) , l_824), p_3897->g_739[(p_3897->g_42.f0 + 2)][p_3897->g_42.f0])))) != p_13), 0xCAFFL))) | l_827.x) < l_827.x), 0x3EL)) | (*p_3897->g_243)) ^ l_771.x)))).x, l_779.y))), make_int1((-1L))))), make_int1(0L)))) | make_int1(1L))))) | make_int1(0L))))))).x , 0xB2B827E1L)), p_3897->g_739[(p_3897->g_42.f0 + 2)][p_3897->g_42.f0], 4294967292UL).x) , 2UL), 4294967288UL)) , p_3897->g_829)) != nullptr)) | l_824) | l_724.x) , 0xEBL) || p_11) <= 0xE9L), 4UL).x , p_11) ^ (-9L)), p_3897->g_42.f3)) < p_13), 6)), (-7L), 0xE3889B138B5B0535LL).z, l_683)) && 0xA2B8C0B9CC291261LL), 13)) & 4L) >= l_832), 10)) > p_3897->g_739[(p_3897->g_42.f0 + 3)][p_3897->g_42.f0]);
                        l_706 |= (l_833 | ((*p_10) , (make_int2(0L, l_826).x >= ((((safe_mul_func_int32_t_s_s(((safe_rshift_func_int16_t_s_s(((safe_add_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(((0xD0L | p_11) & (safe_mul_func_int16_t_s_s(((safe_add(make_short4(l_846.y, l_846.y, l_846.y, l_846.y), ((((make_short4(0L, (l_849 = (((*l_848) |= make_uint2(l_847.x, l_847.x).y) & p_3897->g_81.f6)), 5L, (p_11 == ((((safe_rshift_func_int64_t_s_u((make_uint4(0UL, 4294967293UL, make_uint3(l_852.z, l_852.z, l_852.z).z, 0xE3D8F33DL).w != ((*l_848) &= (safe_add_func_int64_t_s_s(l_855, (safe_lshift_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s((l_779.x = p_11), 0L)) , 18446744073709551615UL) , p_13), l_833)))))), p_11)) , l_824) , l_778.x) | l_846.y))) | make_short4(0x8EA8L, 0x8EA8L, 0x8EA8L, 0x8EA8L))) ^ make_short4((-1L), (-1L), (-1L), (-1L))))))).y, 0xA9EBL))), l_771.y)), 0x02A7447CL)) , (-9L)), p_11)) , p_13), 0x83F9EAF6L)) , p_3897->g_677.x) == p_11) , l_860))));
                        if (l_827.x)
                            break;
                        l_826 |= ((((-1L) != (~l_846.x)) ^ (safe_unary_minus_func_int8_t_s(make_char3(l_862.w, l_862.w, l_862.w).x))) < ((safe_rshift_func_int64_t_s_u(((safe_mul_func_int64_t_s_s(p_11, (p_11 ^ (safe_add_func_int8_t_s_s(make_char4(p_3897->g_869.x, p_3897->g_869.x, p_3897->g_869.x, p_3897->g_869.x).x, ((((((make_short1(p_3897->g_870.x) & make_short1(l_871.x))) ^ make_short1(0x4FF7L))).x , (!((p_3897->g_483.x != ((*l_686) = (~(safe_mul_func_int16_t_s_s((l_874 == l_874), (safe_mod_func_int64_t_s_s(p_13, 0xA6B2E932630959C8LL))))))) <= 0x67476C19L))) & (***p_3897->g_604))))))) != p_3897->g_622.x), 12)) , p_3897->g_677.y));
                    }
                    else
                    { /* block id: 339 */
                        if (p_13)
                            break;
                    }
                    if (l_710)
                        continue;
                }
            }
            for (p_3897->g_42.f3 = 0; (p_3897->g_42.f3 < 42); ++p_3897->g_42.f3)
            { /* block id: 347 */
                uint64_t *l_888 = nullptr;
                long3 l_893 = make_long3(0L, 0x8AD59821DA81D447LL, 0L);
                uint32_t l_903 = 0UL;
                __shared__ int32_t **l_904;
                l_904 = &p_3897->g_95;
                int i;
                l_880 = (l_760.f6 = make_int3(l_879.x, l_879.x, l_879.x).x);
                (*l_904) = (((safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(0x0902L, ((l_887 == l_888) >= (p_3897->g_83.x = (-1L))))), (safe_rshift_func_uint16_t_u_s((0x3287C3B20EA1D356LL & ((((safe_add(make_long4(l_893.z, l_893.z, l_893.z, l_893.z), make_long4((((((~((make_long4(make_long1(0xF6F157BC6D363A18LL).x, (safe_unary_minus_func_int8_t_s(l_765.x)), p_3897->g_301.x, 0x50118076CB977053LL) ^ ((safe_rshift(make_long4(l_897.y, l_897.y, l_897.y, l_897.y), make_long4(l_898.y, l_898.y, l_898.y, l_898.y)))))))) ^ make_long4((safe_mul_func_int64_t_s_s((!((0xA9E5L & (safe_rshift_func_int32_t_s_u((((p_13 &= ((nullptr == &hip_const_2) | (*p_3897->g_310))) , 0x0CDF1BBBF060C9CBLL) >= l_683), p_11))) < p_3897->g_869.x)), 0xAF91A421C1E9C4E0LL)), l_903, (-8L), p_3897->g_42.f5))).x <= p_11), 0xAAA8D2FBD337BDECLL, (-9L), 0xE32B64A56E85EC68LL)))) ^ make_long4(0x2E2B51BF443F2435LL, 0x2E2B51BF443F2435LL, 0x2E2B51BF443F2435LL, 0x2E2B51BF443F2435LL))).y), 2)))), l_903)) | 18446744073709551607UL) , &l_680);
            }
        }
        if ((((safe_sub_func_uint8_t_u_u(((****l_874) = 0xFFL), ((((p_11 <= ((make_char3(l_907.y, l_907.y, l_907.y) ^ make_char3(p_3897->g_908.z, p_3897->g_908.z, p_3897->g_908.z))).y) & ((l_800.x = l_720.z) || ((make_short4(l_911.x, l_911.x, l_911.x, l_911.x).z && ((safe_rshift(make_ushort3(p_3897->g_914.z, p_3897->g_914.z, p_3897->g_914.z), make_ushort3(16, 16, 16)))).z) != ((l_680 ^= (safe_rshift_func_uint8_t_u_s((l_917 != (safe_sub_func_uint32_t_u_u(l_720.w, (safe_div_func_uint16_t_u_u((p_11 ^ (((safe_add_func_uint32_t_u_u(((make_uint4((++(*l_528)), (p_3897->g_81.f6 , (((safe_sub_func_uint8_t_u_u(((***p_3897->g_604) || ((safe_add_func_uint8_t_u_u(0UL, p_13)) == 1L)), p_13)) != l_930) > p_11)), 0x85912F9BL, p_13) ^ make_uint4(1UL, 1UL, 1UL, 1UL))).x, p_11)) & l_665.y) != 0x4533L)), p_13))))), 3))) & (-2L))))) & p_11) && p_13))) , 0L) ^ p_3897->g_363.x))
        { /* block id: 359 */
            __shared__ int3 l_935;
            l_935 = make_int3(0xE0DE4C5CL, 8L, 0xE0DE4C5CL);
            struct S0 ****l_939 = &l_938;
            // attempting a hip shared for loop
            __shared__ struct S0 ****l_940[10];
            for (int i = 0; i < 10; i++)
                l_940[i] = nullptr;
            uint64_t *l_952[1][9] = {{&p_3897->g_544[1], &p_3897->g_478[1], &p_3897->g_544[1], &p_3897->g_478[1], &p_3897->g_544[1], &p_3897->g_478[1], &p_3897->g_544[1], &p_3897->g_478[1], &p_3897->g_544[1]}};
            int32_t l_953 = 8L;
            __shared__ int32_t *l_956;
            l_956 = &hip_const_3.f6;
            __shared__ int32_t *l_957;
            l_957 = nullptr;
            short2 l_960 = make_short2(0L, 0xA6CCL);
            uint8_t *l_1027[7][6] = {{&l_832, &l_832, nullptr, &l_832, &p_3897->g_164[5][5], &l_832}, {&l_832, &l_832, nullptr, &l_832, &p_3897->g_164[5][5], &l_832}, {&l_832, &l_832, nullptr, &l_832, &p_3897->g_164[5][5], &l_832}, {&l_832, &l_832, nullptr, &l_832, &p_3897->g_164[5][5], &l_832}, {&l_832, &l_832, nullptr, &l_832, &p_3897->g_164[5][5], &l_832}, {&l_832, &l_832, nullptr, &l_832, &p_3897->g_164[5][5], &l_832}, {&l_832, &l_832, nullptr, &l_832, &p_3897->g_164[5][5], &l_832}};
            int i, j;
            for (int i = 0; i < 10; i++)
                l_940[i] = nullptr;
            if ((((((safe_add_func_int32_t_s_s((p_3897->g_371.x | (safe_sub_func_uint32_t_u_u(l_935.y, (safe_div_func_uint32_t_u_u(p_3897->g_739[0][2], make_uint4(0x42B8D82DL, (((*l_939) = l_938) == (p_3897->g_942 = (p_3897->g_941[1] = &p_3897->g_829))), 0x013DB163L, ((~(l_953 = ((*l_887) = (safe_div_func_int16_t_s_s((safe_add_func_int64_t_s_s(hip_const_3.f1, make_long1(0L).x)), (safe_div_func_uint32_t_u_u((((p_3897->g_334.z && (hip_const_8 && ((safe_mod_func_int16_t_s_s(make_short3(l_951.y, l_951.y, l_951.y).z, hip_const_3.f1)) < l_720.z))) < p_3897->g_402.y) <= (*p_3897->g_243)), 0xF1A18595L))))))) ^ l_935.x)).y))))), p_13)) , (*p_10)) , 4UL) | 1L) , p_11))
            { /* block id: 365 */
                int32_t **l_955[1];
                uint8_t ***l_958 = &p_3897->g_242;
                int i;
                for (int i = 0; i < 1; i++)
                    l_955[i] = &l_511[1][0][8];
                l_954 = &l_680;
                l_957 = (l_956 = &p_3897->g_502);
                (*l_874) = (l_958 = &p_3897->g_242);
            }
            else
            { /* block id: 371 */
                struct S0 l_959[10][4][3] = {{{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}, {{{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}, {{0x76E63E0EL,0xC66ED35FL,-1L,0xFA1677CBL,224,0xE3F3A292L,0x5F1E3879L}, {0xEEBF0510L,0xB04BFF99L,0x2803B25FA9F508ECLL,18446744073709551615UL,2993,0x0F041FF0L,0L}, {0L,0UL,8L,18446744073709551613UL,1323,-1L,0L}}}};
                int32_t l_969 = 0x227961EDL;
                int8_t *l_970 = &p_3897->g_313;
                uint16_t *l_976 = &hip_const_7;
                uint16_t **l_977 = &l_976;
                __shared__ int64_t *l_978;
                l_978 = nullptr;
                int64_t *l_979 = &hip_const_5;
                int64_t *l_980 = &l_758;
                int32_t l_1030 = 1L;
                uint3 l_1038 = make_uint3(0x881973D8L, 0x822B3944L, 0x881973D8L);
                uint32_t l_1051 = 18446744073709551611UL;
                int i, j, k;
                l_935.x ^= ((hip_const_4 < ((l_959[8][2][0] , ((~make_short1(l_960.x))).x) , ((*p_3897->g_310) = l_959[8][2][0].f4))) >= ((safe_mod(make_int3(0x13131456L, 0x81D87A12L, make_int2(0x2BAF4E5AL, ((+(--(*l_528))) | (safe_add_func_uint32_t_u_u((p_13 >= (((****l_874) |= (safe_mul_func_uint8_t_u_u(p_11, make_char3(0x95L, make_char3(0xAEL, 7L, (+0L)).z, l_959[8][2][0].f4).z))) | ((*l_970) = (l_969 &= 0x05L)))), (((*l_980) = ((safe_sub_func_int8_t_s_s(make_char4(p_3897->g_973.x, p_3897->g_973.x, p_3897->g_973.x, p_3897->g_973.x).z, ((safe_mul_func_uint16_t_u_u((((*l_977) = l_976) != nullptr), 65530UL)) <= 0x02L))) , 0L)) <= p_11))))).y), make_int3(3L, 3L, 3L)))).y);
                for (p_3897->g_81.f4 = 0; (p_3897->g_81.f4 <= 0); p_3897->g_81.f4 += 1)
                { /* block id: 382 */
                    uint8_t ****l_994 = &l_529;
                    int32_t l_995 = 7L;
                    int32_t l_998 = (-1L);
                    uint32_t *l_1033 = nullptr;
                    if (p_11)
                        break;
                    for (p_3897->g_81.f3 = 0; (p_3897->g_81.f3 <= 0); p_3897->g_81.f3 += 1)
                    { /* block id: 386 */
                        uint32_t l_984 = 0x5AC5B523L;
                        int16_t *l_996 = nullptr;
                        int16_t *l_997[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        uint32_t *l_1026 = &l_959[8][2][0].f1;
                        int32_t l_1029 = 0xA5D4EF44L;
                        int i;
                        l_998 |= (((p_3897->g_711.x = hip_const_6) & (hip_const_3.f3 && (p_3897->g_301.z | (safe_add_func_uint32_t_u_u(make_uint2(p_3897->g_983.x, p_3897->g_983.x).x, (l_984 &= hip_const_9)))))) && (safe_rshift_func_uint16_t_u_s(make_ushort4(0xAA10L, 0x51F5L, 0x801CL, (safe_rshift_func_uint32_t_u_u(p_3897->g_973.x, ((((((((make_short1((p_3897->g_567.x = (hip_const_7 , ((safe_sub(((safe_sub(make_short4(p_3897->g_993.x, p_3897->g_993.x, p_3897->g_993.x, p_3897->g_993.x), make_short4((nullptr != l_994), 0x3B08L, (p_3897->g_870.x = make_short4(1L, l_995, 0L, p_3897->g_870.x).z), p_11)))), make_short4(0xC97EL, 0xC97EL, 0xC97EL, 0xC97EL)))).w))) ^ make_short1((-1L)))) | make_short1(0x8B3FL))) | make_short1((-1L)))).x > l_984) , 4294967286UL)))).z, 12)));
                        l_1030 &= (((l_1029 = (p_3897->g_363.y &= (((safe_mul_func_int16_t_s_s(p_11, ((safe_add_func_int8_t_s_s(((+((safe_lshift_func_uint16_t_u_s((p_3897->g_983.x && (safe_rshift_func_uint16_t_u_s(0x7772L, (safe_mul_func_uint64_t_u_u(0UL, (safe_lshift_func_uint64_t_u_s((0x8148L || l_995), ((((safe_div_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((make_long2((l_959[8][2][0].f5 = ((make_long3(0L, make_long3((make_char4(l_1017.x, l_1017.x, l_1017.x, l_1017.x).y < ((safe_div_func_int32_t_s_s(((make_long1(1L).x == 0x5176754A35C3B68BLL) != (safe_mod_func_uint32_t_u_u((safe_mul_func_int32_t_s_s(make_int4(0xFB76BC87L, 5L, (-9L), (safe_mul_func_int64_t_s_s((l_1026 != &l_710), p_13))).z, p_11)), l_959[8][2][0].f2))), l_959[8][2][0].f0)) , 0L)), l_959[8][2][0].f1, p_3897->g_87.x).z, p_11) | make_long3(0x77B71C036CB8312DLL, 0x77B71C036CB8312DLL, 0x77B71C036CB8312DLL))).x), p_11).y || p_13), l_995)), p_3897->g_587.z)), l_998)) , l_1027[4][2]) != l_1028) && 1UL)))))))), p_11)) & hip_const_2)) != p_13), p_11)) > l_969))) || 0UL) ^ (-1L)))) && l_959[8][2][0].f6) ^ 0x0F7118D4L);
                        if (p_13)
                            continue;
                        l_1029 |= l_995;
                    }
                    for (p_3897->g_42.f7 = 0; (p_3897->g_42.f7 >= 0); p_3897->g_42.f7 -= 1)
                    { /* block id: 401 */
                        uint32_t **l_1034 = &l_543[5];
                        __shared__ int32_t l_1036;
                        l_1036 = 1L;
                        if (l_998)
                            goto lbl_548;
                        l_1035 &= (safe_mul_func_uint64_t_u_u(p_13, (l_1033 == ((*l_1034) = &hip_const_4))));
                        if (l_1036)
                            continue;
                    }
                }
                l_1051 &= (l_935.y &= (((make_uint1(l_1037.x).x & (l_800.x = 0x7576B76BL)) != 0x73DACA63CBA8F9B3LL) > (((9L == (-1L)) == ((make_uint4(l_1038.z, l_1038.z, l_1038.z, l_1038.z) ^ make_uint4(0x371FF13DL, 0UL, p_11, 0x5FEA58C5L))).x) ^ (safe_sub_func_int64_t_s_s(p_3897->g_363.y, ((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((p_11 , (*p_3897->g_310)), (safe_rshift_func_int64_t_s_s((safe_mul_func_int64_t_s_s((p_11 != 65534UL), p_3897->g_483.x)), 48)))), l_959[8][2][0].f5)), (*p_3897->g_243))) != (-9L)))))));
                l_800.x = (*l_956);
            }
        }
        else
        { /* block id: 413 */
            int32_t l_1052 = (-1L);
            int32_t l_1053 = 0x2603974EL;
            int32_t l_1054 = 9L;
            int32_t l_1055 = (-4L);
            int32_t l_1056 = (-2L);
            int32_t l_1057 = 1L;
            int32_t l_1058 = (-3L);
            uint64_t *l_1087 = nullptr;
            int8_t *l_1088 = &p_3897->g_313;
            struct S0 ****l_1090 = &p_3897->g_941[0];
            int64_t *l_1091[1];
            struct S1 l_1093[4][9] = {{{0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {3UL,0UL,54,0x4B9E6B5EL,0x8AAD5C57L,-5L,1L,7L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}}, {{0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {3UL,0UL,54,0x4B9E6B5EL,0x8AAD5C57L,-5L,1L,7L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}}, {{0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {3UL,0UL,54,0x4B9E6B5EL,0x8AAD5C57L,-5L,1L,7L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}}, {{0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {3UL,0UL,54,0x4B9E6B5EL,0x8AAD5C57L,-5L,1L,7L}, {0xA9616CB387CE7689LL,0xCBCB3548L,33,4294967287UL,0x90F2AB23L,0xD0CDAA25BD0E7CAELL,-1L,1L}, {0xC390157DBA4DAAD0LL,6UL,13,0xD2B287CFL,0xDAF4E99BL,1L,0x245053D8L,0L}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}, {0UL,0x0371D7A5L,3,4294967290UL,0x2D2E676CL,3L,-10L,0xF938DABDL}}};
            __shared__ uint32_t l_1094;
            l_1094 = 0xC6B375E7L;
            int i, j;
            for (int i = 0; i < 1; i++)
                l_1091[i] = nullptr;
            ++l_1059;
            for (l_917 = 0; (l_917 <= 6); l_917 += 1)
            { /* block id: 417 */
                return p_12;
            }
            l_1058 = ((safe_lshift(make_int2(p_3897->g_1064.y, p_3897->g_1064.y), make_int2(((make_short4(((safe_add_func_uint8_t_u_u((((safe_sub_func_int16_t_s_s(((make_char1(1L).x && p_11) != (func_26((((make_uint4(make_uint1(p_3897->g_1069.x).x, (make_short1((safe_add_func_int64_t_s_s((make_ulong1(p_3897->g_1072.z).x , (l_1057 = ((((safe_mod(((safe_rshift(make_char2(1L, ((&p_3897->g_941[1] != (((safe_lshift_func_int64_t_s_s(p_13, ((((safe_rshift_func_uint32_t_u_s((safe_rshift_func_uint32_t_u_s((((&p_3897->g_704 == ((!(safe_mod_func_int8_t_s_s(((*l_1088) |= (((safe_mul_func_uint64_t_u_u(((p_13 == l_1053) && (((!0x1DL) , (((0x41F980EA2E33064FLL ^ p_13) , l_1087) != &l_1059)) > l_1058)), hip_const_3.f2)) , p_13) || p_13)), p_11))) , nullptr)) >= l_1055) || hip_const_9), 9)), p_13)) | hip_const_3.f2) != 0xF468E498L) & 9L))) & p_3897->g_1089) , l_1090)) & (*p_3897->g_310))), make_char2(8, 8)))), make_char2(0x6CL, 0x6CL)))).y ^ l_1054) , l_1053))), 0x6576FB2FBB53B632LL))).x < 0x87E8L), 0x28329338L, l_1092) & make_uint4(0x457F228EL, 0x457F228EL, 0x457F228EL, 0x457F228EL))).x , p_11), l_1093[3][8], p_3897) , p_3897->g_723.z)), p_13)) || 253UL) , p_13), (-9L))) > 2UL), p_3897->g_993.y, 0xF264L, 0x1079L).w || l_1094) , p_11), (-1L))))).y;
        }
        if ((safe_add_func_int8_t_s_s(((make_uint4(l_1097.y, l_1097.y, l_1097.y, l_1097.y).w < ((((*l_578) != (**l_938)) == ((*l_1127) = ((*p_3897->g_243) = ((*l_1126) &= (p_3897->g_81.f6 , (safe_mod_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((safe_rshift_func_int64_t_s_s(((make_long2(l_1104.y, l_1104.y) ^ make_long2(0x7D455088972AF04ELL, p_3897->g_914.z))).y, (make_uchar3((safe_mod_func_uint32_t_u_u((safe_rshift_func_uint64_t_u_u((safe_rshift_func_int64_t_s_s(((p_11 & (safe_lshift_func_uint32_t_u_s((((((safe_add_func_int16_t_s_s((&l_511[1][0][8] == nullptr), ((safe_div(make_short1(l_1117.x), ((make_short1(p_3897->g_1118.w) ^ ((safe_mod(make_short1(l_1121.y), make_short1(p_3897->g_1122.x))))))))).x)) , (safe_mul_func_uint64_t_u_u((l_760.f6 = ((*l_887) = (p_3897->g_81.f6 <= ((l_1125 , (*p_3897->g_243)) ^ 0x09L)))), 18446744073709551606UL))) , nullptr) == (**l_529)) && (-5L)), p_11))) != 0x60D676B2L), p_13)), 46)), p_11)), 0x9FL, p_11).x , p_11))) >= 0L), p_11)), (*p_3897->g_243)))))))) ^ (-1L))) == 3UL), 0UL)))
        { /* block id: 429 */
            struct S1 l_1133 = {18446744073709551615UL,4294967294UL,62,1UL,0xB4A55E33L,-5L,0xD502D607L,0x09B4D82AL};
            __shared__ struct S0 l_1134;
            l_1134 = {0x86808350L,18446744073709551615UL,0xE960F7488A614486LL,0UL,2405,0xEED54258L,-1L};
            uint16_t *l_1155 = nullptr;
            for (l_1125.f3 = 0; (l_1125.f3 <= 0); l_1125.f3 += 1)
            { /* block id: 432 */
                int8_t l_1142 = 0x82L;
                int32_t l_1153 = 0x02471741L;
                struct S1 l_1154 = {0x5051BA3252E00269LL,0xA50B808BL,19,4294967295UL,0x64C2E799L,0xC55ACD1E816CA721LL,0xB7694D1EL,-6L};
                l_1134 = func_26(((p_3897->g_363.y = (safe_sub_func_int64_t_s_s(((((safe_mod(make_long1(0xAB45885CFF8615E7LL), make_long1(p_3897->g_1132.w)))) ^ make_long1(p_11))).x, 0xA9E2E4028F95EC3DLL))) || p_11), l_1133, p_3897);
                for (l_1125.f1 = 0; (l_1125.f1 <= 0); l_1125.f1 += 1)
                { /* block id: 437 */
                    __shared__ uint16_t **l_1156;
                    l_1156 = &l_1155;
                    int64_t *l_1168[1][2];
                    int32_t l_1173 = (-5L);
                    int i, j;
                    for (int i = 0; i < 1; i++)
                    {
                        for (int j = 0; j < 2; j++)
                            l_1168[i][j] = &p_3897->g_533;
                    }
                    if (p_13)
                    { /* block id: 438 */
                        if (p_13)
                            break;
                    }
                    else
                    { /* block id: 440 */
                        uchar4 l_1141 = make_uchar4(255UL, 251UL, 255UL, 251UL);
                        int i;
                        l_1153 = (safe_mul_func_int32_t_s_s(make_int2(0x841AF515L, ((+(((safe_mod_func_int64_t_s_s((p_3897->g_567.y >= ((((0L && (0UL < (safe_sub_func_uint8_t_u_u(make_uchar4(l_1141.x, l_1141.x, l_1141.x, l_1141.x).y, 1L)))) | l_1142) == (safe_div_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((safe_add_func_uint16_t_u_u(make_ushort1(p_3897->g_1149.x).x, (p_13 >= p_13))) || make_short3(p_3897->g_1150.x, p_3897->g_1150.x, p_3897->g_1150.x).z), ((safe_lshift_func_uint16_t_u_u(p_3897->g_711.z, 0)) <= 0x2EBC2390445C28F5LL))), p_13))) & p_11)), 18446744073709551615UL)) != p_3897->g_1118.z) , 0L)) < p_3897->g_817.x)).x, p_3897->g_622.y));
                        if (p_3897->g_587.z)
                            continue;
                        (**l_938) = (((*p_10) = l_1154) , (*l_578));
                    }
                    l_760.f6 = (((make_ulong1(18446744073709551615UL).x >= (((*l_1156) = l_1155) == (p_11 , l_545))) && ((*p_3897->g_243) = (safe_mul_func_int8_t_s_s((((safe_mul_func_uint64_t_u_u(((***p_3897->g_604) = (((safe_div_func_int64_t_s_s(((((safe_div_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((p_11 ^= make_long2(p_3897->g_1167.y, p_3897->g_1167.y).y) , 0L), 0xA48CD13EL)), ((safe_mod_func_uint32_t_u_u(((safe_div_func_uint16_t_u_u(make_ushort1((((l_1173 = l_1154.f5) > 0x3D8339473BA04F6FLL) , (p_3897->g_438.x = make_ushort4(p_3897->g_1174.x, p_3897->g_1174.x, p_3897->g_1174.x, p_3897->g_1174.x).y))).x, p_13)) & 9UL), 4294967290UL)) , p_13))) == l_1134.f3) & 255UL) || 0L), l_1133.f0)) & p_3897->g_983.x) && 65535UL)), 5UL)) , p_3897->g_502) , p_13), p_13)))) < p_13);
                    if (l_1154.f1)
                        goto lbl_548;
                }
            }
            for (l_680 = 0; (l_680 < 28); l_680++)
            { /* block id: 458 */
                __shared__ uint32_t ***l_1185;
                l_1185 = nullptr;
                uint32_t **l_1187 = nullptr;
                uint32_t ***l_1186 = &l_1187;
                int1 l_1196 = make_int1(0L);
                int8_t l_1210 = 0L;
                uint64_t l_1221 = 8UL;
                int i;
                if ((safe_add_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(0x5F579D505AEF4203LL, (!(safe_div_func_uint8_t_u_u(p_11, (((safe_mod_func_int64_t_s_s((((*l_1186) = nullptr) != (l_1193 = ((safe_mul_func_uint32_t_u_u((((*p_3897->g_604) == ((*p_10) , (*p_3897->g_604))) < (((p_3897->g_908.z |= ((0x4124C89EL | (((*p_3897->g_242) == (p_3897->g_1064.x , p_3897->g_1190)) != 0xB6L)) , p_3897->g_81.f1)) , p_11) != p_3897->g_83.x)), 6L)) , p_3897->g_1191))), p_3897->g_81.f7)) > p_3897->g_711.z) || p_13)))))), (*p_3897->g_243))))
                { /* block id: 462 */
                    int32_t **l_1194 = nullptr;
                    int32_t **l_1195 = &l_954;
                    uint64_t l_1199 = 0UL;
                    (*l_1195) = &l_680;
                    if (p_11)
                    { /* block id: 464 */
                        uint64_t l_1197 = 0x135CCAF988C4ADEALL;
                        int1 l_1198 = make_int1(2L);
                        int i;
                        l_1197 |= make_int2(l_1196.x, l_1196.x).y;
                        --l_1199;
                    }
                    else
                    { /* block id: 467 */
                        int32_t *l_1202 = nullptr;
                        if (p_11)
                            break;
                        (*l_1195) = &l_680;
                        (*l_1195) = l_1202;
                    }
                    p_3897->g_723.y = make_int2(l_1203.x, l_1203.x).x;
                    for (p_3897->g_81.f7 = (-29); (p_3897->g_81.f7 < (-18)); p_3897->g_81.f7++)
                    { /* block id: 475 */
                        (*l_1195) = l_1206;
                        (*l_954) &= (safe_sub_func_int32_t_s_s(p_3897->g_567.y, 0xE24413C3L));
                    }
                }
                else
                { /* block id: 479 */
                    __shared__ int32_t **l_1209;
                    l_1209 = &l_1206;
                    int32_t l_1211 = 0x58FF796AL;
                    int8_t l_1217[7] = {0xE0L, 0x8AL, 0xE0L, 0x8AL, 0xE0L, 0x8AL, 0xE0L};
                    int i;
                    (*l_1209) = &l_917;
                    ++l_1212;
                    if ((nullptr != &p_11))
                    { /* block id: 482 */
                        if (l_758)
                            break;
                        if ((**l_1209))
                            continue;
                    }
                    else
                    { /* block id: 485 */
                        int8_t l_1215 = 0x8CL;
                        int32_t l_1218 = 0x824D5A26L;
                        int32_t l_1219 = (-7L);
                        int32_t l_1220 = 1L;
                        l_1221++;
                        l_1206 = &l_917;
                    }
                }
            }
            if (((safe_rshift_func_int32_t_s_u(((*l_1206) = (safe_sub_func_uint16_t_u_u((((*l_874) = (*l_874)) != ((make_char2(((&l_1092 == &l_1092) <= ((*l_528) = 0x9D06FB86L)), (-7L)).y , (safe_lshift_func_uint8_t_u_u(l_1133.f5, (safe_rshift_func_uint64_t_u_u(((***p_3897->g_604) = (safe_sub_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u((p_3897->g_983.x ^ (((make_ushort4(p_3897->g_1236.y, p_3897->g_1236.y, p_3897->g_1236.y, p_3897->g_1236.y).x ^ make_short2(0xD839L, 0x10E2L).y) != l_1134.f0) < 0xD17FF0FAL)), 0xFCL)) & l_1134.f3), 0x7828L))), 46))))) , &p_3897->g_705[0])), p_3897->g_1149.y))), p_11)) , 2L))
            { /* block id: 495 */
                for (p_3897->g_42.f6 = 20; (p_3897->g_42.f6 == (-20)); p_3897->g_42.f6 = safe_sub_func_int64_t_s_s(p_3897->g_42.f6, 3))
                { /* block id: 498 */
                    return &p_3897->g_81;
                }
            }
            else
            { /* block id: 501 */
                uint64_t l_1243 = 1UL;
                __shared__ struct S1 l_1250;
                l_1250 = {0x1EBDA149622CE4A2LL,4294967295UL,21,1UL,0xA6E5AC7AL,0x6AD25F931612C080LL,9L,-3L};
                __shared__ int32_t l_1274;
                l_1274 = 0L;
                ulong2 l_1293 = make_ulong2(0UL, 0UL);
                __shared__ int32_t l_1304;
                l_1304 = 0L;
                int32_t l_1308 = 0x4904BCA3L;
                int i;
                p_3897->g_1241 = (safe_mod_func_int8_t_s_s(p_3897->g_483.x, p_3897->g_1064.x));
                for (l_1133.f3 = 0; (l_1133.f3 <= 1); l_1133.f3 += 1)
                { /* block id: 505 */
                    int16_t *l_1265[7];
                    uint8_t ***l_1270 = &p_3897->g_705[0];
                    int32_t l_1271 = 0x452C6149L;
                    int64_t *l_1272 = nullptr;
                    int64_t *l_1273 = &l_1250.f5;
                    int32_t l_1306 = 0x76F18C76L;
                    int i;
                    for (int i = 0; i < 7; i++)
                        l_1265[i] = &hip_const_1;
                    for (l_1125.f2 = 1; (l_1125.f2 >= 0); l_1125.f2 -= 1)
                    { /* block id: 508 */
                        int32_t l_1242 = 1L;
                        ++l_1243;
                    }
                    (*l_1206) = l_1134.f4;
                    if (((((((make_int2((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((l_1250 , (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint32_t_u_u((make_int3(l_1255.x, l_1255.x, l_1255.x).z , (safe_mod_func_int64_t_s_s(make_long4(l_1258.z, l_1258.z, l_1258.z, l_1258.z).z, (l_1274 &= ((*l_1273) |= (safe_mul_func_int32_t_s_s(((+((((((safe_mul_func_int8_t_s_s(p_3897->g_1132.y, make_char1(0x65L).x)) && ((safe_rshift(make_short2((l_1250.f6 = (-9L)), 0x825BL), make_short2((-1L), ((l_1250.f7 , ((safe_mul_func_uint32_t_u_u(0x4D62D7F5L, (p_3897->g_81.f5 == ((*l_874) != l_1270)))) != ((make_ushort3((p_13 != 1L), 0x2565L, p_3897->g_42.f1) ^ make_ushort3(0UL, 0UL, 0UL))).z)) <= 0xDBL))))).x) > l_1243) & p_3897->g_335.x) < 0x7F5AL) != l_1271)) > l_1271), p_13))))))), p_13)), 2))), l_1250.f2)) , p_11), p_13)), 0x50C51D2AL) ^ make_int2(0x4EEFEE7FL, 0x4EEFEE7FL))) | make_int2(0x341A1E3CL, 0x341A1E3CL))) ^ make_int2(0xAC68E4D6L, 0xAC68E4D6L))).y)
                    { /* block id: 515 */
                        (*l_532) = l_1133;
                        return p_10;
                    }
                    else
                    { /* block id: 518 */
                        uint16_t l_1275 = 1UL;
                        uint2 l_1284 = make_uint2(0x46B91B29L, 4294967286UL);
                        struct S0 ***l_1285[6];
                        uint32_t **l_1298 = &l_539;
                        uint32_t ***l_1297 = &l_1298;
                        int i;
                        for (int i = 0; i < 6; i++)
                            l_1285[i] = &l_578;
                        l_1275++;
                        (*l_1206) = ((safe_mod_func_int32_t_s_s(((safe_sub_func_int32_t_s_s((0L != p_13), (make_uint3(l_1284.x, l_1284.x, l_1284.x).y != (&l_1271 == nullptr)))) != (nullptr != l_1285[3])), 0xFE30F6F2L)) ^ (-1L));
                        (*l_1206) ^= ((safe_mod_func_uint16_t_u_u(((safe_unary_minus_func_uint32_t_u(1UL)) != ((((make_ushort1(p_3897->g_1291.x) ^ make_ushort1(p_3897->g_1292.y))).x < l_1284.y) >= (make_ulong1(l_1293.y).x | (func_26(p_11, l_760, p_3897) , (l_1134 , ((make_uchar2(l_1294.y, l_1294.y).x , p_3897->g_1295) != ((*l_1297) = &l_543[3]))))))), p_11)) && p_11);
                    }
                    for (p_11 = 0; (p_11 <= 1); p_11 += 1)
                    { /* block id: 526 */
                        struct S0 *l_1299 = &hip_const_3;
                        int16_t l_1301 = (-2L);
                        int32_t l_1302 = 0L;
                        int32_t l_1307 = 1L;
                        (**l_938) = l_1299;
                        ++l_1309;
                    }
                }
            }
        }
        else
        { /* block id: 532 */
            uint32_t l_1316 = 0xA98F378CL;
            int32_t l_1317[7][8] = {{0xE2087E4FL, 0xDD09AEBCL, 0x319A308BL, 0xDD09AEBCL, 0xE2087E4FL, 0xE93E2AD3L, 0x20ACC23EL, 0xDD09AEBCL}, {0xE2087E4FL, 0xDD09AEBCL, 0x319A308BL, 0xDD09AEBCL, 0xE2087E4FL, 0xE93E2AD3L, 0x20ACC23EL, 0xDD09AEBCL}, {0xE2087E4FL, 0xDD09AEBCL, 0x319A308BL, 0xDD09AEBCL, 0xE2087E4FL, 0xE93E2AD3L, 0x20ACC23EL, 0xDD09AEBCL}, {0xE2087E4FL, 0xDD09AEBCL, 0x319A308BL, 0xDD09AEBCL, 0xE2087E4FL, 0xE93E2AD3L, 0x20ACC23EL, 0xDD09AEBCL}, {0xE2087E4FL, 0xDD09AEBCL, 0x319A308BL, 0xDD09AEBCL, 0xE2087E4FL, 0xE93E2AD3L, 0x20ACC23EL, 0xDD09AEBCL}, {0xE2087E4FL, 0xDD09AEBCL, 0x319A308BL, 0xDD09AEBCL, 0xE2087E4FL, 0xE93E2AD3L, 0x20ACC23EL, 0xDD09AEBCL}, {0xE2087E4FL, 0xDD09AEBCL, 0x319A308BL, 0xDD09AEBCL, 0xE2087E4FL, 0xE93E2AD3L, 0x20ACC23EL, 0xDD09AEBCL}};
            uint32_t l_1321 = 5UL;
            ushort3 l_1330 = make_ushort3(0x603FL, 65534UL, 0x603FL);
            __shared__ uchar1 l_1338;
            l_1338 = make_uchar1(247UL);
            ulong2 l_1362 = make_ulong2(0xA708AD03A6DDB77FLL, 1UL);
            uint32_t l_1383 = 18446744073709551611UL;
            int64_t *l_1386 = &l_1216;
            int64_t **l_1385[4];
            uchar4 l_1416 = make_uchar4(1UL, 255UL, 1UL, 255UL);
            uint16_t l_1432[7][3][3] = {{{0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}}, {{0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}}, {{0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}}, {{0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}}, {{0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}}, {{0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}}, {{0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}, {0x2228L, 65534UL, 65535UL}}};
            uint8_t l_1433 = 0x25L;
            ulong4 l_1450 = make_ulong4(0xAB4D3E934D442965LL, 0x52D48E65E56ACED1LL, 0xAB4D3E934D442965LL, 0x52D48E65E56ACED1LL);
            int i, j, k;
            for (int i = 0; i < 4; i++)
                l_1385[i] = &l_1386;
            for (p_3897->g_81.f7 = (-29); (p_3897->g_81.f7 == (-30)); p_3897->g_81.f7 = safe_sub_func_int64_t_s_s(p_3897->g_81.f7, 2))
            { /* block id: 535 */
                uint32_t l_1318 = 0xFB333FDAL;
                l_1316 &= (safe_mod_func_int8_t_s_s((-1L), 0x24L));
                --l_1318;
            }
            l_1321--;
            if (((safe_add_func_uint16_t_u_u(l_1317[0][1], p_13)) != ((((((*p_3897->g_243) <= ((((((make_char1(l_1326.x) ^ make_char1(((safe_add_func_uint64_t_u_u(((((make_ulong2(l_1329.x, l_1329.x).x && p_3897->g_1150.y) || 4294967294UL) & (((((((((~make_ushort1(l_1330.x))).x && (safe_lshift_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((((((safe_mod(make_uchar3(l_1337.x, l_1337.x, l_1337.x), ((((make_uchar3(l_1338.x, l_1338.x, l_1338.x) & make_uchar3(7UL, 0xDEL, (make_int3(p_3897->g_1339.x, p_3897->g_1339.x, p_3897->g_1339.x).x , (!((l_1358 = (safe_rshift_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((((~(safe_add_func_int64_t_s_s((make_short2(p_3897->g_1346.y, p_3897->g_1346.y).y > (safe_sub_func_int32_t_s_s(((safe_sub_func_uint8_t_u_u(p_13, (((0x3261EE45L && (((~(((*l_1206) | ((((safe_rshift_func_int8_t_s_u((safe_mul_func_uint64_t_u_u((safe_lshift_func_uint64_t_u_u((((*l_1127) = (l_1330.x != 3UL)) >= p_3897->g_335.x), p_11)), (*p_3897->g_310))), 6)) > 0x91L) , 0x22L) , 1L)) , 0UL)) || (*l_1206)) >= p_13)) < l_1317[4][6]) != p_3897->g_202.x))) && p_13), l_1316))), 0x423BE75865BD0102LL))) <= p_3897->g_123.x) | p_11), l_1357)) || l_710), hip_const_8))) || (*p_3897->g_243))))))) ^ make_uchar3(0xF6L, 0xF6L, 0xF6L)))))) ^ make_uchar3(0x11L, 0x11L, 0x11L))).y & 0x90L), l_1330.x)), 10))) , l_1317[5][5]) > p_11) , nullptr) != &p_11) || p_3897->g_81.f4) <= 1L)) <= l_1316), p_13)) , p_3897->g_82[1][0])))) ^ make_char1(0x7DL))).x || l_1338.x) , p_3897->g_42.f5)) != p_11) < p_3897->g_81.f0) , (*p_3897->g_310)) > p_13)))
            { /* block id: 542 */
                int32_t **l_1359 = &l_954;
                struct S0 l_1375 = {-1L,0UL,0x9D75D0D1539BCC4DLL,0UL,1237,0x5C5E9143L,4L};
                __shared__ uint16_t *l_1381;
                l_1381 = &l_1358;
                __shared__ int64_t *l_1382;
                l_1382 = &p_3897->g_533;
                // attempting a hip shared for loop
                __shared__ int32_t l_1384[2][1];
                for (int i = 0; i < 2; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_1384[i][j] = 0x1E58E029L;
                }
                int64_t ***l_1387[7] = {nullptr, nullptr, &l_1385[0], nullptr, nullptr, &l_1385[0], nullptr};
                int i, j;
                for (int i = 0; i < 2; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_1384[i][j] = 0x1E58E029L;
                }
                (*l_1359) = &p_3897->g_502;
                l_1384[0][0] &= ((*p_10) , (((safe_mod_func_uint32_t_u_u((make_ulong2(l_1362.x, l_1362.x).x , (p_3897->g_983.x &= ((safe_lshift_func_int16_t_s_s(((0x0A93A39EL < (safe_add_func_int32_t_s_s(1L, ((safe_lshift_func_int8_t_s_u(0xFBL, 5)) , ((safe_div_func_uint8_t_u_u((((p_3897->g_869.x = (((((*l_1382) = make_long3(1L, (0xA1C6L <= ((*l_1381) = (((-3L) | (make_long2((safe_add_func_int8_t_s_s((!(safe_mul_func_int16_t_s_s((l_1375 , (safe_add_func_int16_t_s_s(((*p_3897->g_1191) == ((((safe_rshift_func_uint32_t_u_u((func_26((p_3897->g_908.y >= p_13), (*p_10), p_3897) , 0xBE85F7E4L), 23)) ^ (**p_3897->g_242)) && p_11) , l_1380)), 0x562FL))), 0xDEB9L))), l_1330.y)), p_3897->g_728.x).y | l_1338.x)) > l_1317[4][7]))), 0x2572720EB6301BC9LL).y) < p_11) || 0L) && (*l_954))) , nullptr) == l_545), (-1L))) && p_13))))) != l_1383), 3)) != (*l_954)))), (*l_1206))) >= p_13) != (-5L)));
                p_3897->g_1388 = l_1385[2];
                (**l_1359) = p_13;
            }
            else
            { /* block id: 551 */
                struct S0 l_1402[1] = {{0x69580738L,0x38247819L,0xA444AD28BB2F42A6LL,0x4330E410L,4849,0L,0x9DD3540EL}};
                int1 l_1427 = make_int1(0x4BE97275L);
                int i;
                for (l_760.f4 = 0; (l_760.f4 >= 0); l_760.f4 -= 1)
                { /* block id: 554 */
                    char2 l_1393 = make_char2(0x01L, 0xBDL);
                    int8_t *l_1394 = &l_1300;
                    int16_t *l_1401 = &l_625;
                    __shared__ int2 l_1405;
                    l_1405 = make_int2(0xBC5CE9D7L, 0L);
                    struct S0 ****l_1434 = &p_3897->g_942;
                    struct S0 ****l_1435 = &p_3897->g_941[0];
                    uint16_t *l_1438 = nullptr;
                    uint16_t *l_1439 = &hip_const_7;
                    uint16_t *l_1440 = nullptr;
                    uint16_t *l_1441 = nullptr;
                    int i;
                    p_3897->g_729.y = (safe_lshift_func_int16_t_s_s((((*l_1394) = ((safe_div(((~make_char1(0xCBL))), make_char1(l_1393.y)))).x) , (safe_div_func_uint32_t_u_u(p_13, (safe_mul_func_int32_t_s_s((make_short4(1L, ((*l_1401) = (!(safe_rshift_func_int16_t_s_u(l_1330.y, 5)))), (-2L), 0L).x && (l_1402[0] , (safe_mul_func_int32_t_s_s(make_int2(l_1405.y, l_1405.y).y, (safe_lshift_func_int32_t_s_u((l_1432[2][2][0] = ((safe_add_func_uint8_t_u_u((+((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int64_t_s_s((((safe_sub_func_uint64_t_u_u((((make_uchar1(l_1416.y) ^ make_uchar1(p_3897->g_1417.x))).x >= (((safe_sub_func_int32_t_s_s((~p_11), (*l_1206))) , (((*l_1394) = ((((safe_sub_func_int64_t_s_s((p_3897->g_334.x == make_int1((safe_rshift_func_uint64_t_u_s(make_ulong3(p_3897->g_1424.w, p_3897->g_1424.w, p_3897->g_1424.w).z, 46))).x), (safe_add_func_uint32_t_u_u((make_int1(l_1427.x).x ^ ((safe_mod_func_uint16_t_u_u((make_uchar3(l_1430.y, l_1430.y, l_1430.y).z < (l_1316 != ((p_13 , ((*p_12) , p_13)) || 0L))), p_3897->g_334.x)) , p_13)), (-1L))))) , p_11) , nullptr) == &l_528)) >= l_1431)) < (**p_3897->g_242))), 5L)) && p_13) , 0x3254315664773163LL), 28)), p_3897->g_301.x)) != p_3897->g_533)), (*l_1206))) , p_11)), l_1433)))))), 0x934D295BL))))), p_11));
                    (*l_1206) = (((((*l_1435) = ((*l_1434) = &p_3897->g_829)) != ((0xB6D0BB24F23A1579LL >= ((safe_sub_func_uint16_t_u_u((l_1405.y |= 0xB4B3L), ((**l_529) == nullptr))) >= p_11)) , nullptr)) | (((make_ulong2((((***p_3897->g_604)++) , (((safe_div_func_uint32_t_u_u(0xD1B5EED6L, ((safe_mod_func_int32_t_s_s((safe_lshift_func_uint32_t_u_s((make_ulong1(l_1450.y).x > (+(safe_add_func_int32_t_s_s(p_13, 1UL)))), 19)), p_3897->g_335.x)) , l_1393.x))) && l_1402[0].f2) | l_1450.x)), (*p_3897->g_310)) ^ make_ulong2(18446744073709551615UL, 18446744073709551615UL))).x != l_1393.y)) || l_1402[0].f0);
                    for (l_1357 = 0; (l_1357 <= 0); l_1357 += 1)
                    { /* block id: 567 */
                        int i, j;
                        return p_3897->g_80[l_760.f4][l_1357];
                    }
                }
            }
        }
        p_3897->g_217.z |= (safe_mod_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s((((((((safe_rshift(make_long1(4L), make_long1(64)))).x | ((*l_1461) = ((l_1206 = &l_680) != &p_3897->g_502))) , (((nullptr != &l_1193) >= (!(safe_add_func_uint64_t_u_u((((safe_add(make_uint1((safe_add_func_int16_t_s_s((make_uint4(0xBE2DE624L, make_uint2(l_1468.x, l_1468.x).y, 6UL, 0x31243823L).z > (p_10 != &p_3897->g_42)), (make_long1(l_1469.z).x | (safe_add_func_int16_t_s_s((p_11 ^ (nullptr == l_1472)), 0x2F68L)))))), make_uint1(0UL)))).x , p_11), p_13)))) == p_11)) , 18446744073709551613UL) , (*l_1206)) != p_3897->g_567.y), (*p_3897->g_243))) < p_11), p_13));
    }
    return l_532;
}


/* ------------------------------------------ */
/* 
 * reads : p_3897->g_82
 * writes:
 */
__device__ struct S1 * func_14(uint16_t  p_15, uint16_t  p_16, struct S1  p_17, struct S0  p_18, struct S2 * p_3897)
{ /* block id: 187 */
    uint32_t l_503 = 0UL;
    __shared__ struct S1 *l_510;
    l_510 = &p_3897->g_81;
    if (p_3897->g_82[2][4])
    { /* block id: 188 */
        int32_t *l_492 = nullptr;
        int32_t *l_493 = &hip_const_3.f0;
        __shared__ int32_t *l_494;
        l_494 = &p_3897->g_81.f6;
        int32_t *l_495 = &hip_const_3.f6;
        int32_t *l_496 = &p_3897->g_42.f6;
        __shared__ int32_t *l_497;
        l_497 = &p_3897->g_81.f6;
        __shared__ int32_t *l_498;
        l_498 = nullptr;
        int32_t *l_499 = &p_3897->g_81.f6;
        int32_t *l_500 = &p_3897->g_42.f6;
        int32_t *l_501[6] = {nullptr, nullptr, &hip_const_3.f5, nullptr, nullptr, &hip_const_3.f5};
        int i;
        l_503--;
        return &p_3897->g_81;
    }
    else
    { /* block id: 191 */
        int32_t *l_506 = nullptr;
        int32_t **l_507 = &l_506;
        uint64_t **l_509[4][9] = {{nullptr, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, nullptr, &p_3897->g_310}, {nullptr, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, nullptr, &p_3897->g_310}, {nullptr, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, nullptr, &p_3897->g_310}, {nullptr, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310, nullptr, &p_3897->g_310}};
        uint64_t ***l_508 = &l_509[1][0];
        int i, j;
        (*l_507) = l_506;
        (*l_508) = &p_3897->g_310;
    }
    return l_510;
}


/* ------------------------------------------ */
/* 
 * reads : p_3897->g_95
 * writes: p_3897->g_95
 */
__device__ int32_t  func_21(struct S0  p_22, struct S1 * p_23, int64_t  p_24, struct S0  p_25, struct S2 * p_3897)
{ /* block id: 183 */
    int32_t **l_486 = nullptr;
    int32_t **l_487 = &p_3897->g_95;
    int32_t l_488 = 0xA1B1A682L;
    (*l_487) = p_3897->g_95;
    return l_488;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_3.f2 hip_const_1 p_3897->g_42.f4 p_3897->g_42.f0 p_3897->g_80 p_3897->g_82 p_3897->g_42.f6 p_3897->g_81.f6 p_3897->g_81.f4 p_3897->g_81.f7 p_3897->g_310 p_3897->g_243 p_3897->g_164 p_3897->g_242 p_3897->g_81.f5 p_3897->g_42.f5 p_3897->g_363 p_3897->g_402 p_3897->g_478 p_3897->g_438 p_3897->g_481 hip_const_3.f5 p_3897->g_483 hip_const_3
 * writes: p_3897->g_42.f6 p_3897->g_81.f7 p_3897->g_42.f5 p_3897->g_42.f3 p_3897->g_42.f0 p_3897->g_478 p_3897->g_481 p_3897->g_483
 */
__device__ struct S0  func_26(uint64_t  p_27, struct S1  p_28, struct S2 * p_3897)
{ /* block id: 2 */
    uint16_t l_32 = 0xC038L;
    uint64_t l_38 = 0xCA9286DF497A847ELL;
    // attempting a hip shared for loop
    __shared__ struct S1 *l_41[10];
    for (int i = 0; i < 10; i++)
        l_41[i] = &p_3897->g_42;
    // attempting a hip shared for loop
    __shared__ int32_t *l_482[7];
    for (int i = 0; i < 7; i++)
        l_482[i] = &hip_const_3.f0;
    int i;
    for (int i = 0; i < 7; i++)
        l_482[i] = &hip_const_3.f0;
    p_28.f6 ^= (safe_mod_func_int16_t_s_s(make_short2((l_32 >= (func_33(l_38, func_39(l_41[8], p_3897), p_3897->g_402.y, (nullptr != (*p_3897->g_242)), p_3897) <= ((nullptr == &p_27) & 18446744073709551612UL))), l_32).y, p_3897->g_438.y));
    --p_3897->g_483.x;
    return hip_const_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_3897->g_478 p_3897->g_438 p_3897->g_481 hip_const_3.f5
 * writes: p_3897->g_478 p_3897->g_481
 */
__device__ int8_t  func_33(int64_t  p_34, struct S1 * p_35, uint16_t  p_36, int8_t  p_37, struct S2 * p_3897)
{ /* block id: 176 */
    int32_t *l_470 = &hip_const_3.f5;
    int32_t *l_471 = nullptr;
    int32_t l_472 = 0L;
    int32_t l_473 = (-5L);
    int32_t l_474[6][2];
    int32_t *l_475 = &hip_const_3.f6;
    int32_t *l_476[9];
    int64_t l_477 = 0xD758F9709AC911DALL;
    int i, j;
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 2; j++)
            l_474[i][j] = 0x3CD5B8B6L;
    }
    for (int i = 0; i < 9; i++)
        l_476[i] = &l_474[4][1];
    p_3897->g_478[1]--;
    p_3897->g_481 &= p_3897->g_438.x;
    return (*l_470);
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_3.f2 hip_const_1 p_3897->g_42.f4 p_3897->g_42.f0 p_3897->g_80 p_3897->g_82 p_3897->g_42.f6 p_3897->g_81.f6 p_3897->g_81.f4 p_3897->g_81.f7 p_3897->g_310 p_3897->g_243 p_3897->g_164 p_3897->g_242 p_3897->g_81.f5 p_3897->g_42.f5 p_3897->g_363
 * writes: p_3897->g_42.f6 p_3897->g_81.f7 p_3897->g_42.f5 p_3897->g_42.f3 p_3897->g_42.f0
 */
__device__ struct S1 * func_39(struct S1 * p_40, struct S2 * p_3897)
{ /* block id: 3 */
    uint32_t l_64 = 0xF9DBC330L;
    int32_t l_65[3];
    __shared__ uint8_t l_66;
    l_66 = 0UL;
    struct S1 *l_71 = &p_3897->g_42;
    int32_t *l_79[3];
    uint16_t l_439 = 65533UL;
    int32_t l_444 = 1L;
    uint32_t l_445 = 18446744073709551607UL;
    uint64_t **l_448 = &p_3897->g_310;
    __shared__ uchar1 l_467;
    l_467 = make_uchar1(0x64L);
    int i;
    for (int i = 0; i < 3; i++)
        l_65[i] = 0xD6CD47B9L;
    for (int i = 0; i < 3; i++)
        l_79[i] = &l_65[1];
    if (((0x0F61094BL || (((func_43((p_3897->g_42.f6 = (safe_lshift_func_uint8_t_u_u(hip_const_3.f2, (((make_ulong3(((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((make_char3(1L, 1L, 0x33L).y >= (func_55(p_40, (safe_mod_func_uint64_t_u_u(make_ulong3(0x6ECCD2826019FDEELL, (safe_sub_func_uint32_t_u_u((+((l_65[1] = l_64) <= l_66)), (safe_lshift_func_uint32_t_u_s(l_64, ((safe_sub_func_uint8_t_u_u(0x01L, make_uchar1(0x2FL).x)) ^ (l_64 >= 8L)))))), 0xC47558758A71D4F0LL).x, l_64)), l_71, l_64, p_3897) | l_66)), 3)), l_64)) , l_66), 0x6F2D310D2121A4FELL, 0xEB29FA79916B1FF0LL).y , l_66) | p_3897->g_42.f4) != p_3897->g_42.f0)))), hip_const_1, p_3897->g_80[0][1], &p_3897->g_81, p_3897->g_82[3][6], p_3897) == 0UL) || p_3897->g_81.f4) , l_439)) & 1L))
    { /* block id: 157 */
        uint16_t l_440 = 65532UL;
        int32_t l_443[4][4][6] = {{{(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}}, {{(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}}, {{(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}}, {{(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}, {(-7L), 3L, 0x445593A5L, 3L, (-7L), 0x79088AC7L}}};
        struct S1 *l_451 = &p_3897->g_81;
        int i, j, k;
        --l_440;
        ++l_445;
        if ((l_443[3][1][5] && (l_448 != nullptr)))
        { /* block id: 160 */
            struct S0 *l_450 = &hip_const_3;
            struct S0 **l_449 = &l_450;
            (*l_449) = &hip_const_3;
            return l_71;
        }
        else
        { /* block id: 163 */
            for (p_3897->g_81.f7 = 0; p_3897->g_81.f7 < 3; p_3897->g_81.f7 += 1)
            {
                l_65[p_3897->g_81.f7] = (-1L);
            }
            for (p_3897->g_42.f5 = 0; p_3897->g_42.f5 < 4; p_3897->g_42.f5 += 1)
            {
                for (p_3897->g_42.f6 = 0; p_3897->g_42.f6 < 4; p_3897->g_42.f6 += 1)
                {
                    for (p_3897->g_42.f3 = 0; p_3897->g_42.f3 < 6; p_3897->g_42.f3 += 1)
                    {
                        l_443[p_3897->g_42.f5][p_3897->g_42.f6][p_3897->g_42.f3] = 3L;
                    }
                }
            }
        }
        return l_451;
    }
    else
    { /* block id: 168 */
        uint64_t l_454 = 8UL;
        __shared__ ulong4 l_455;
        l_455 = make_ulong4(0x412846055A475841LL, 0x1A6D2DDFCDC70681LL, 0x412846055A475841LL, 0x1A6D2DDFCDC70681LL);
        int32_t l_464 = (-4L);
        int32_t l_468 = 1L;
        int32_t l_469 = 7L;
        int i;
        l_469 |= (safe_mod_func_uint64_t_u_u(l_454, ((make_ulong4(l_455.y, l_455.y, l_455.y, l_455.y) ^ make_ulong4((safe_rshift_func_uint8_t_u_s(l_455.x, 3)), (safe_add_func_int16_t_s_s(make_short4(((safe_add_func_uint32_t_u_u(((((((make_ulong3(0xFCC9BEE12144BAA0LL, ((*p_3897->g_310) = (safe_rshift_func_uint32_t_u_u(p_3897->g_81.f7, 9))), 0xF9DB931B656E1FADLL) & make_ulong3((l_464 = l_454), make_ulong2(0UL, (nullptr != &l_64)).y, 0x7D459C7A112F8827LL))).y || (*p_3897->g_310)) & (l_468 = (safe_div_func_uint8_t_u_u(((*p_3897->g_243) || ((((make_uchar4(0x66L, make_uchar2(l_467.x, l_467.x).x, ((*p_3897->g_243) <= (**p_3897->g_242)), 0xA6L) | make_uchar4(0x0DL, 0x0DL, 0x0DL, 0x0DL))) ^ make_uchar4(3UL, 3UL, 3UL, 3UL))).z), 1UL)))) == p_3897->g_81.f5) == p_3897->g_42.f5), l_455.x)) || l_468), (-1L), 0xFA31L, 0xC58DL).w, p_3897->g_363.y)), 0x47771766FFF16868LL, 0xF7B112D75D8DEB3DLL))).z));
        l_468 = 0L;
        return l_71;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_3897->g_42.f6 p_3897->g_81.f6
 * writes: p_3897->g_42.f6
 */
__device__ uint32_t  func_43(int32_t  p_44, int8_t  p_45, struct S1 * p_46, struct S1 * p_47, int64_t  p_48, struct S2 * p_3897)
{ /* block id: 10 */
    int32_t *l_84 = &hip_const_3.f6;
    __shared__ int32_t *l_85;
    l_85 = &p_3897->g_42.f6;
    int3 l_86 = make_int3(0L, 0x89590F8BL, 0L);
    // attempting a hip shared for loop
    __shared__ int64_t l_102[10][3][8];
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            for (int k = 0; k < 8; k++)
                l_102[i][j][k] = (-8L);
        }
    }
    uint64_t l_159 = 18446744073709551607UL;
    uint8_t *l_219 = &p_3897->g_164[4][0];
    struct S1 *l_241[5];
    uint64_t l_316 = 1UL;
    uint64_t l_389 = 1UL;
    struct S1 *l_414 = &p_3897->g_81;
    int32_t l_432 = (-1L);
    int i, j, k;
    for (int i = 0; i < 5; i++)
        l_241[i] = &p_3897->g_42;
    (*l_85) ^= make_int1(p_3897->g_83.x).x;
    (*l_85) &= ((make_int2(l_86.z, l_86.z) ^ make_int2(p_3897->g_87.x, p_3897->g_87.x))).x;
    return p_3897->g_81.f6;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_1
 * writes:
 */
__device__ int8_t  func_55(struct S1 * p_56, int16_t  p_57, struct S1 * p_58, uint8_t  p_59, struct S2 * p_3897)
{ /* block id: 5 */
    int2 l_72 = make_int2(4L, 0xA55AEF27L);
    int32_t *l_73[9][1] = {{&p_3897->g_42.f6}, {&p_3897->g_42.f6}, {&p_3897->g_42.f6}, {&p_3897->g_42.f6}, {&p_3897->g_42.f6}, {&p_3897->g_42.f6}, {&p_3897->g_42.f6}, {&p_3897->g_42.f6}, {&p_3897->g_42.f6}};
    int64_t l_74[10] = {0xC0B8F99D2484370ALL, 0xC0B8F99D2484370ALL, 0xE7910ABA4BFF0AA6LL, 0xC0B8F99D2484370ALL, 0xC0B8F99D2484370ALL, 0xE7910ABA4BFF0AA6LL, 0xC0B8F99D2484370ALL, 0xC0B8F99D2484370ALL, 0xE7910ABA4BFF0AA6LL, 0xC0B8F99D2484370ALL};
    uint8_t l_76 = 0xF2L;
    int i, j;
    l_74[1] = make_int3(l_72.y, l_72.y, l_72.y).x;
    l_76--;
    return hip_const_1;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S2 c_3898;
    struct S2* p_3897 = &c_3898;
    struct S2 c_3899 = {
        .g_42 = {8UL,0xE27DFDEEL,26,0x792179B1L,-6L,0xAF34C2E3979D795BLL,0xD5918CD8L,0x12ACF192L},
        .g_75 = 0x65BEC774L,
        .g_81 = {18446744073709551615UL,4294967289UL,9,1UL,-8L,0xC67F3A6B8F9AD1E1LL,0xA8031382L,0x9615D095L},
        .g_80 = {{&p_3897->g_81, &p_3897->g_81}},
        .g_82 = {{0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}, {0L, 0x48559906L, 0x590E4044L, 0x79AF8E2BL, 0x46866101L, (-7L), (-8L)}},
        .g_83 = make_int1((-2L)),
        .g_87 = make_int2(0x2B34E314L, 0xE9247554L),
        .g_95 = nullptr,
        .g_123 = make_short4(0x3D72L, 0x24B1L, 0x3D72L, 0x24B1L),
        .g_164 = {{0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}, {0xC7L, 0xE9L, 0x91L, 0xD0L, 255UL, 0xDFL}},
        .g_202 = make_long1(0xD4037252700F43A4LL),
        .g_217 = make_int3(1L, 0x0322A895L, 1L),
        .g_243 = &p_3897->g_164[6][3],
        .g_242 = &p_3897->g_243,
        .g_301 = make_short4((-10L), 0x9C8EL, (-10L), 0x9C8EL),
        .g_310 = &p_3897->g_42.f0,
        .g_313 = (-8L),
        .g_334 = make_long3((-1L), 0x79746DD20CB603B0LL, (-1L)),
        .g_335 = make_long1(0xA545B3E25D42C206LL),
        .g_336 = make_long2((-4L), (-3L)),
        .g_363 = make_short3(0x7AFEL, 1L, 0x7AFEL),
        .g_371 = make_uchar1(0xACL),
        .g_383 = 0x75L,
        .g_402 = make_uchar2(0xFAL, 0x23L),
        .g_438 = make_ushort2(0xCCA5L, 0xD583L),
        .g_478 = {18446744073709551607UL, 18446744073709551607UL, 0xEA2FFA687E7A1FE7LL, 18446744073709551607UL, 18446744073709551607UL, 0xEA2FFA687E7A1FE7LL, 18446744073709551607UL, 18446744073709551607UL},
        .g_481 = 0UL,
        .g_483 = make_ushort3(0xA9C0L, 3UL, 0xA9C0L),
        .g_502 = 0x94787307L,
        .g_533 = 0x3F03C80ABFB96C2FLL,
        .g_544 = {0UL, 0x0F5937D0E40A5326LL, 0UL, 0x0F5937D0E40A5326LL, 0UL, 0x0F5937D0E40A5326LL},
        .g_567 = make_short2(0xC3B0L, 0x9210L),
        .g_587 = make_short3(1L, (-10L), 1L),
        .g_605 = {&p_3897->g_310, &p_3897->g_310, &p_3897->g_310, &p_3897->g_310},
        .g_604 = &p_3897->g_605[1],
        .g_622 = make_long2(0x21798E14BCB8F5E9LL, 0x7AACB88480507E1ALL),
        .g_623 = make_long3(0x4C2DA85E009E3EE9LL, 2L, 0x4C2DA85E009E3EE9LL),
        .g_661 = make_ushort3(65527UL, 0UL, 65527UL),
        .g_677 = make_ushort2(1UL, 0xDE97L),
        .g_705 = {nullptr, nullptr, nullptr, nullptr, nullptr},
        .g_704 = &p_3897->g_705[0],
        .g_711 = make_int4((-6L), 0xA3D0598DL, (-6L), 0xA3D0598DL),
        .g_723 = make_int4(1L, (-1L), 1L, (-1L)),
        .g_728 = make_int2(0x6C8E2228L, 0x90A7F5FEL),
        .g_729 = make_int4((-1L), 0xFFC47D18L, (-1L), 0xFFC47D18L),
        .g_739 = {{0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}, {0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}, {0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}, {0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}, {0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}, {0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}, {0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}, {0x795DL, 0x1EE8L, 0xAF61L, 0x9430L, 0xAF61L}},
        .g_817 = make_uchar1(0x75L),
        .g_830 = &hip_const_3,
        .g_829 = &p_3897->g_830,
        .g_869 = make_char3(0x00L, 0xF4L, 0x00L),
        .g_870 = make_short1(0L),
        .g_908 = make_char3(0xB9L, 0xC9L, 0xB9L),
        .g_914 = make_ushort3(65535UL, 0x7E71L, 65535UL),
        .g_941 = {nullptr, nullptr},
        .g_942 = nullptr,
        .g_973 = make_char1(0L),
        .g_983 = make_uint1(0UL),
        .g_993 = make_short2(0x60A1L, 0L),
        .g_1064 = make_int2((-3L), 5L),
        .g_1069 = make_uint1(0x7756A1A0L),
        .g_1072 = make_ulong4(0x9F43E58D4B270A7ELL, 18446744073709551615UL, 0x9F43E58D4B270A7ELL, 18446744073709551615UL),
        .g_1089 = 0x9647L,
        .g_1118 = make_short4(0x35B5L, 0x9E0FL, 0x35B5L, 0x9E0FL),
        .g_1122 = make_short4(1L, 0L, 1L, 0L),
        .g_1132 = make_long4(0xBE7D3980EF8BACF3LL, 0L, 0xBE7D3980EF8BACF3LL, 0L),
        .g_1149 = make_ushort4(65535UL, 0UL, 65535UL, 0UL),
        .g_1150 = make_short2(0x390EL, 0x3A32L),
        .g_1167 = make_long3(0x4271F6C45236A977LL, (-9L), 0x4271F6C45236A977LL),
        .g_1174 = make_ushort3(0x9D2FL, 1UL, 0x9D2FL),
        .g_1190 = nullptr,
        .g_1192 = nullptr,
        .g_1191 = &p_3897->g_1192,
        .g_1236 = make_ushort4(65531UL, 0xDC8AL, 65531UL, 0xDC8AL),
        .g_1241 = 1L,
        .g_1291 = make_ushort1(65534UL),
        .g_1292 = make_ushort3(0UL, 0x71F0L, 0UL),
        .g_1296 = &hip_const_4,
        .g_1295 = &p_3897->g_1296,
        .g_1339 = make_int2(0L, (-1L)),
        .g_1346 = make_short4((-10L), 8L, (-10L), 8L),
        .g_1388 = nullptr,
        .g_1417 = make_uchar1(0xA0L),
        .g_1424 = make_ulong4(0UL, 1UL, 0UL, 1UL),
        .g_1492 = make_uchar1(0xC8L),
        .g_1502 = make_short2(0x3919L, 1L),
        .g_1506 = nullptr,
        .g_1505 = &p_3897->g_1506,
        .g_1519 = make_ushort2(8UL, 0x99D8L),
        .g_1552 = make_int1(0L),
        .g_1557 = {{{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}, {{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}, {{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}, {{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}, {{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}, {{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}, {{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}, {{&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}, {&p_3897->g_704, &p_3897->g_704, &p_3897->g_704, &p_3897->g_704, nullptr, &p_3897->g_704}}},
        .g_1581 = make_ulong1(0x72E9E17BE7A6A684LL),
        .g_1617 = make_char3(0x95L, 0xE2L, 0x95L),
        .g_1622 = 1L,
        .g_1635 = make_ulong3(1UL, 0x3691D2185D4BAEEALL, 1UL),
        .g_1663 = 0x3E24E72DL,
        .g_1684 = make_ushort2(65534UL, 0x088BL),
        .g_1685 = make_ushort1(0x58FFL),
        .g_1701 = make_ulong4(0xA93AE3270A914A2DLL, 0xBF26823B74420164LL, 0xA93AE3270A914A2DLL, 0xBF26823B74420164LL),
        .g_1740 = make_uchar1(0UL),
        .g_1754 = make_uchar4(0UL, 0x1DL, 0UL, 0x1DL),
        .g_1762 = make_uint1(4294967294UL),
        .g_1782 = make_char2(0x55L, 0x30L),
        .g_1787 = make_uint2(4294967295UL, 0x6B2F629FL),
        .g_1794 = make_short4((-1L), 0x82E2L, (-1L), 0x82E2L),
        .g_1819 = make_ushort4(0xDF88L, 0x4DFAL, 0xDF88L, 0x4DFAL),
        .g_1821 = make_char1(0xF2L),
        .g_1879 = make_ushort3(0xF27CL, 0xC562L, 0xF27CL),
        .g_1895 = 1L,
        .g_1913 = make_int4(4L, 5L, 4L, 5L),
        .g_1922 = make_int1(0L),
        .g_1924 = make_int4(0L, (-9L), 0L, (-9L)),
        .g_1925 = make_int1(0xE5841A9CL),
        .g_1928 = {{{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}, {{&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}, {&p_3897->g_95, nullptr}}},
        .g_1927 = &p_3897->g_1928[5][0][1],
        .g_1926 = &p_3897->g_1927,
        .g_1935 = 250UL,
        .g_1977 = make_ulong1(0x4EA40F44213E9DE0LL),
        .g_1998 = make_short4(0x2413L, 0x6D86L, 0x2413L, 0x6D86L),
        .g_2014 = &p_3897->g_1191,
        .g_2013 = {&p_3897->g_2014, &p_3897->g_2014, &p_3897->g_2014, &p_3897->g_2014, &p_3897->g_2014, &p_3897->g_2014, &p_3897->g_2014, &p_3897->g_2014},
        .g_2077 = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr},
        .g_2076 = &p_3897->g_2077[1],
        .g_2082 = make_int2(0x1C434035L, (-1L)),
        .g_2101 = make_uint3(0UL, 0UL, 0UL),
        .g_2131 = make_int2(0xA3B4ECFFL, (-10L)),
        .g_2151 = make_ushort2(0x8458L, 0x7BA5L),
        .g_2153 = make_ushort2(0xD5E2L, 0x7583L),
        .g_2174 = {0xDD8C9C1CL, 5UL, 0xDD8C9C1CL, 5UL, 0xDD8C9C1CL, 5UL, 0xDD8C9C1CL, 5UL},
        .g_2188 = make_ulong2(4UL, 0UL),
        .g_2189 = make_long4(0xBB8913626C4A7DDCLL, (-8L), 0xBB8913626C4A7DDCLL, (-8L)),
        .g_2198 = make_ulong1(0x93E8A594E35D1DC3LL),
        .g_2206 = make_uint4(4294967295UL, 0xDD45D0A0L, 4294967295UL, 0xDD45D0A0L),
        .g_2224 = make_char2((-2L), 0L),
        .g_2227 = make_short3((-1L), 5L, (-1L)),
        .g_2241 = make_int4(8L, 0x994D1393L, 8L, 0x994D1393L),
        .g_2245 = make_char3(1L, 4L, 1L),
        .g_2251 = make_uchar3(0x11L, 0UL, 0x11L),
        .g_2252 = make_uchar3(0xABL, 0xE2L, 0xABL),
        .g_2258 = &p_3897->g_1295,
        .g_2257 = {{&p_3897->g_2258, &p_3897->g_2258, &p_3897->g_2258, &p_3897->g_2258}},
        .g_2277 = make_char2(0x1CL, 0x02L),
        .g_2311 = make_short3(9L, 0x68E5L, 9L),
        .g_2363 = 0x50E29686L,
        .g_2371 = make_uint1(4294967293UL),
        .g_2373 = make_short4(0xAB5CL, (-1L), 0xAB5CL, (-1L)),
        .g_2380 = make_long1(0L),
        .g_2385 = make_int1(0x48122466L),
        .g_2386 = make_int4(0x0CA0EA7DL, (-1L), 0x0CA0EA7DL, (-1L)),
        .g_2417 = make_long3(0L, 1L, 0L),
        .g_2460 = make_int2(2L, 0x4E6CBEC4L),
        .g_2471 = 0xE36AL,
        .g_2486 = make_long4(6L, 0xB727FDDAD99A30F6LL, 6L, 0xB727FDDAD99A30F6LL),
        .g_2496 = 0x944D3371L,
        .g_2508 = make_ulong2(18446744073709551615UL, 0x635DFA5A2D112F19LL),
        .g_2516 = make_ulong2(0UL, 0xF5EA9E068A95AA8DLL),
        .g_2527 = 255UL,
        .g_2549 = make_short4(0xF8C4L, 0xC0BAL, 0xF8C4L, 0xC0BAL),
        .g_2550 = make_short3(0x0266L, 0x77D5L, 0x0266L),
        .g_2594 = &p_3897->g_2076,
        .g_2593 = &p_3897->g_2594,
        .g_2630 = {{0xC37D3D34L, 0xF0CBF445L}, {0xC37D3D34L, 0xF0CBF445L}, {0xC37D3D34L, 0xF0CBF445L}, {0xC37D3D34L, 0xF0CBF445L}, {0xC37D3D34L, 0xF0CBF445L}, {0xC37D3D34L, 0xF0CBF445L}, {0xC37D3D34L, 0xF0CBF445L}, {0xC37D3D34L, 0xF0CBF445L}},
        .g_2673 = make_int1((-1L)),
        .g_2674 = make_int2(8L, 0x1762863FL),
        .g_2675 = 0L,
        .g_2680 = make_short2((-8L), (-9L)),
        .g_2690 = make_uchar3(0x34L, 253UL, 0x34L),
        .g_2707 = 0xEAL,
        .g_2710 = 18446744073709551615UL,
        .g_2743 = 0x19CA8D27L,
        .g_2770 = &p_3897->g_2013[7],
        .g_2777 = &p_3897->g_82[2][6],
        .g_2776 = &p_3897->g_2777,
        .g_2801 = make_ulong3(18446744073709551614UL, 8UL, 18446744073709551614UL),
        .g_2817 = make_uint4(0x739E3B78L, 4294967295UL, 0x739E3B78L, 4294967295UL),
        .g_2846 = 0UL,
        .g_2870 = make_ulong3(0x5002010002876ECFLL, 0xA536BBF56F1B295DLL, 0x5002010002876ECFLL),
        .g_2875 = make_uchar4(255UL, 255UL, 255UL, 255UL),
        .g_2914 = make_uint1(0UL),
        .g_2944 = make_ulong4(18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL),
        .g_2990 = {(-5L), (-5L), (-5L)},
        .g_3021 = make_int4(0xC5956D24L, 8L, 0xC5956D24L, 8L),
        .g_3025 = make_int3(0xCE8B2DC3L, (-1L), 0xCE8B2DC3L),
        .g_3049 = make_ushort3(5UL, 0x4E95L, 5UL),
        .g_3068 = make_short3(0x8EB6L, 0xCDD2L, 0x8EB6L),
        .g_3114 = make_long1(0x325BD7583521A90DLL),
        .g_3135 = make_uint4(0x44EF84D4L, 0xCFE39A14L, 0x44EF84D4L, 0xCFE39A14L),
        .g_3146 = make_long3(0x5FC80D250EBD6228LL, (-1L), 0x5FC80D250EBD6228LL),
        .g_3166 = make_short3((-6L), 1L, (-6L)),
        .g_3203 = make_uint3(0x1D71B8FFL, 0x294C9C1FL, 0x1D71B8FFL),
        .g_3213 = make_int2(0xF20FDE7DL, 0L),
        .g_3221 = {{{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}, {{&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}, {&p_3897->g_80[0][1], &p_3897->g_80[0][0], nullptr, &p_3897->g_80[0][1]}}},
        .g_3220 = &p_3897->g_3221[3][2][0],
        .g_3219 = &p_3897->g_3220,
        .g_3232 = make_ushort2(0xB720L, 1UL),
        .g_3233 = make_ushort3(6UL, 9UL, 6UL),
        .g_3235 = nullptr,
        .g_3234 = &p_3897->g_3235,
        .g_3240 = make_uint1(4UL),
        .g_3251 = make_ushort2(0x1685L, 0x7D25L),
        .g_3284 = make_int3(1L, 0xBCCDE108L, 1L),
        .g_3291 = make_char2(0x8DL, 0x17L),
        .g_3316 = make_long4(0x9ABF079429E593B2LL, (-1L), 0x9ABF079429E593B2LL, (-1L)),
        .g_3323 = make_uint2(0x3BDC4B16L, 4294967295UL),
        .g_3333 = make_uint4(0x6C85D2ACL, 0UL, 0x6C85D2ACL, 0UL),
        .g_3338 = 0x8D65L,
        .g_3363 = 0xB1A7L,
        .g_3380 = make_char1(0xF6L),
        .g_3414 = make_uint1(0x5043B9DCL),
        .g_3421 = make_char1(0x0BL),
        .g_3433 = make_int3(0x3CEA7E55L, 0x281E19E4L, 0x3CEA7E55L),
        .g_3449 = make_int1(0L),
        .g_3452 = 1UL,
        .g_3483 = make_uchar4(0x2BL, 255UL, 0x2BL, 255UL),
        .g_3499 = 0xB62CL,
        .g_3504 = nullptr,
        .g_3530 = make_int2(0xA8DBCCD9L, 0x382BD884L),
        .g_3531 = make_int4(0x9505AA5BL, 0x217E51FDL, 0x9505AA5BL, 0x217E51FDL),
        .g_3556 = 0x3A22974175C3E23CLL,
        .g_3582 = 0L,
        .g_3586 = make_ushort3(65535UL, 0x06F9L, 65535UL),
        .g_3603 = make_char4(0xBDL, 0x5BL, 0xBDL, 0x5BL),
        .g_3605 = make_char1(0L),
        .g_3609 = make_long3(0xA20C1789064FA258LL, 0x304174E8299416B4LL, 0xA20C1789064FA258LL),
        .g_3612 = make_ulong1(0x4F332C697FA2FD7DLL),
        .g_3613 = make_ulong1(18446744073709551612UL),
        .g_3618 = make_ulong2(18446744073709551611UL, 0xA39DDDDFE6DE9629LL),
        .g_3663 = make_ulong4(18446744073709551609UL, 0x603899305693F353LL, 18446744073709551609UL, 0x603899305693F353LL),
        .g_3668 = make_ulong4(1UL, 0x6FAC008A783AED38LL, 1UL, 0x6FAC008A783AED38LL),
        .g_3669 = make_ushort4(0UL, 0xBC79L, 0UL, 0xBC79L),
        .g_3671 = make_ushort3(0x236AL, 0xCF4BL, 0x236AL),
        .g_3687 = {0x92L, 0x92L},
        .g_3691 = make_int4(0x9EC394CDL, 0xA07A2310L, 0x9EC394CDL, 0xA07A2310L),
        .g_3711 = make_uint3(6UL, 2UL, 6UL),
        .g_3712 = make_uint4(0x5E1FE765L, 0xDE5B90D9L, 0x5E1FE765L, 0xDE5B90D9L),
        .g_3726 = make_ulong2(0xDEBA6F05BCFAF827LL, 3UL),
        .g_3727 = make_ulong2(0xCA4F2E78720E440DLL, 0x5B19911D77B6DBF4LL),
        .g_3756 = make_ulong3(18446744073709551615UL, 0UL, 18446744073709551615UL),
        .g_3761 = make_short2((-4L), 0xE6AAL),
        .g_3771 = {{{{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}}, {{{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}}, {{{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}}, {{{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}}, {{{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}}, {{{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}, {{0x312E50F9L,0x88742B6DL,0x61E464B5DF1EF3BBLL,0x95AF2BF1L,1753,0x5951E3A4L,0x9FE7AB1DL}, {0xCCB5B1CFL,0xD9BAC5D6L,0xE793F12AF9B7A42BLL,1UL,2124,0xF4D55598L,-1L}, {0x2CCB2509L,0xE75EC11CL,8L,18446744073709551611UL,2442,1L,0xDC8697BAL}, {-1L,0xD038C0A4L,0L,0UL,5679,0L,0xA87C7A67L}, {0xA2D379F7L,0x06BC4F23L,8L,0UL,3859,-1L,0x4173A46AL}, {0x908E1C89L,1UL,0xC1D239BC3E905A30LL,1UL,3701,0xEE8C91DCL,-10L}, {0x9FBAA5E3L,18446744073709551615UL,0x9A18B914C5DABB08LL,18446744073709551615UL,4905,9L,-6L}}}},
        .g_3779 = {nullptr, nullptr, nullptr, nullptr},
        .g_3781 = make_uchar2(0UL, 0x24L),
        .g_3808 = 0x65B87061L,
        .g_3843 = make_ushort2(0UL, 1UL),
        .g_3881 = make_int4(4L, 0x0F271087L, 4L, 0x0F271087L),
        .g_3895 = {0UL,0UL,12,8UL,0x11C290EAL,0x2568A00042C2A725LL,0x49680F4BL,-6L},
        .g_3896 = make_short1((-5L)),
    };
    c_3898 = c_3899;

    // Execute core logic
    func_1(p_3897);

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
    transparent_crc(hip_const_3.f4, "hip_const_3.f4", print_hash_value);
    transparent_crc(hip_const_3.f5, "hip_const_3.f5", print_hash_value);
    transparent_crc(hip_const_3.f6, "hip_const_3.f6", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(hip_const_5, "hip_const_5", print_hash_value);
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    transparent_crc(hip_const_7, "hip_const_7", print_hash_value);
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9, "hip_const_9", print_hash_value);
    transparent_crc(p_3897->g_42.f0, "p_3897->g_42.f0", print_hash_value);
    transparent_crc(p_3897->g_42.f1, "p_3897->g_42.f1", print_hash_value);
    transparent_crc(p_3897->g_42.f2, "p_3897->g_42.f2", print_hash_value);
    transparent_crc(p_3897->g_42.f3, "p_3897->g_42.f3", print_hash_value);
    transparent_crc(p_3897->g_42.f4, "p_3897->g_42.f4", print_hash_value);
    transparent_crc(p_3897->g_42.f5, "p_3897->g_42.f5", print_hash_value);
    transparent_crc(p_3897->g_42.f6, "p_3897->g_42.f6", print_hash_value);
    transparent_crc(p_3897->g_42.f7, "p_3897->g_42.f7", print_hash_value);
    transparent_crc(p_3897->g_75, "p_3897->g_75", print_hash_value);
    transparent_crc(p_3897->g_81.f0, "p_3897->g_81.f0", print_hash_value);
    transparent_crc(p_3897->g_81.f1, "p_3897->g_81.f1", print_hash_value);
    transparent_crc(p_3897->g_81.f2, "p_3897->g_81.f2", print_hash_value);
    transparent_crc(p_3897->g_81.f3, "p_3897->g_81.f3", print_hash_value);
    transparent_crc(p_3897->g_81.f4, "p_3897->g_81.f4", print_hash_value);
    transparent_crc(p_3897->g_81.f5, "p_3897->g_81.f5", print_hash_value);
    transparent_crc(p_3897->g_81.f6, "p_3897->g_81.f6", print_hash_value);
    transparent_crc(p_3897->g_81.f7, "p_3897->g_81.f7", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 7; j++)
        {
            transparent_crc(p_3897->g_82[i][j], "p_3897->g_82[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3897->g_83.x, "p_3897->g_83.x", print_hash_value);
    transparent_crc(p_3897->g_87.x, "p_3897->g_87.x", print_hash_value);
    transparent_crc(p_3897->g_87.y, "p_3897->g_87.y", print_hash_value);
    transparent_crc(p_3897->g_123.x, "p_3897->g_123.x", print_hash_value);
    transparent_crc(p_3897->g_123.y, "p_3897->g_123.y", print_hash_value);
    transparent_crc(p_3897->g_123.z, "p_3897->g_123.z", print_hash_value);
    transparent_crc(p_3897->g_123.w, "p_3897->g_123.w", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            transparent_crc(p_3897->g_164[i][j], "p_3897->g_164[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3897->g_202.x, "p_3897->g_202.x", print_hash_value);
    transparent_crc(p_3897->g_217.x, "p_3897->g_217.x", print_hash_value);
    transparent_crc(p_3897->g_217.y, "p_3897->g_217.y", print_hash_value);
    transparent_crc(p_3897->g_217.z, "p_3897->g_217.z", print_hash_value);
    transparent_crc(p_3897->g_301.x, "p_3897->g_301.x", print_hash_value);
    transparent_crc(p_3897->g_301.y, "p_3897->g_301.y", print_hash_value);
    transparent_crc(p_3897->g_301.z, "p_3897->g_301.z", print_hash_value);
    transparent_crc(p_3897->g_301.w, "p_3897->g_301.w", print_hash_value);
    transparent_crc(p_3897->g_313, "p_3897->g_313", print_hash_value);
    transparent_crc(p_3897->g_334.x, "p_3897->g_334.x", print_hash_value);
    transparent_crc(p_3897->g_334.y, "p_3897->g_334.y", print_hash_value);
    transparent_crc(p_3897->g_334.z, "p_3897->g_334.z", print_hash_value);
    transparent_crc(p_3897->g_335.x, "p_3897->g_335.x", print_hash_value);
    transparent_crc(p_3897->g_336.x, "p_3897->g_336.x", print_hash_value);
    transparent_crc(p_3897->g_336.y, "p_3897->g_336.y", print_hash_value);
    transparent_crc(p_3897->g_363.x, "p_3897->g_363.x", print_hash_value);
    transparent_crc(p_3897->g_363.y, "p_3897->g_363.y", print_hash_value);
    transparent_crc(p_3897->g_363.z, "p_3897->g_363.z", print_hash_value);
    transparent_crc(p_3897->g_371.x, "p_3897->g_371.x", print_hash_value);
    transparent_crc(p_3897->g_383, "p_3897->g_383", print_hash_value);
    transparent_crc(p_3897->g_402.x, "p_3897->g_402.x", print_hash_value);
    transparent_crc(p_3897->g_402.y, "p_3897->g_402.y", print_hash_value);
    transparent_crc(p_3897->g_438.x, "p_3897->g_438.x", print_hash_value);
    transparent_crc(p_3897->g_438.y, "p_3897->g_438.y", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(p_3897->g_478[i], "p_3897->g_478[i]", print_hash_value);

    }
    transparent_crc(p_3897->g_481, "p_3897->g_481", print_hash_value);
    transparent_crc(p_3897->g_483.x, "p_3897->g_483.x", print_hash_value);
    transparent_crc(p_3897->g_483.y, "p_3897->g_483.y", print_hash_value);
    transparent_crc(p_3897->g_483.z, "p_3897->g_483.z", print_hash_value);
    transparent_crc(p_3897->g_502, "p_3897->g_502", print_hash_value);
    transparent_crc(p_3897->g_533, "p_3897->g_533", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        transparent_crc(p_3897->g_544[i], "p_3897->g_544[i]", print_hash_value);

    }
    transparent_crc(p_3897->g_567.x, "p_3897->g_567.x", print_hash_value);
    transparent_crc(p_3897->g_567.y, "p_3897->g_567.y", print_hash_value);
    transparent_crc(p_3897->g_587.x, "p_3897->g_587.x", print_hash_value);
    transparent_crc(p_3897->g_587.y, "p_3897->g_587.y", print_hash_value);
    transparent_crc(p_3897->g_587.z, "p_3897->g_587.z", print_hash_value);
    transparent_crc(p_3897->g_622.x, "p_3897->g_622.x", print_hash_value);
    transparent_crc(p_3897->g_622.y, "p_3897->g_622.y", print_hash_value);
    transparent_crc(p_3897->g_623.x, "p_3897->g_623.x", print_hash_value);
    transparent_crc(p_3897->g_623.y, "p_3897->g_623.y", print_hash_value);
    transparent_crc(p_3897->g_623.z, "p_3897->g_623.z", print_hash_value);
    transparent_crc(p_3897->g_661.x, "p_3897->g_661.x", print_hash_value);
    transparent_crc(p_3897->g_661.y, "p_3897->g_661.y", print_hash_value);
    transparent_crc(p_3897->g_661.z, "p_3897->g_661.z", print_hash_value);
    transparent_crc(p_3897->g_677.x, "p_3897->g_677.x", print_hash_value);
    transparent_crc(p_3897->g_677.y, "p_3897->g_677.y", print_hash_value);
    transparent_crc(p_3897->g_711.x, "p_3897->g_711.x", print_hash_value);
    transparent_crc(p_3897->g_711.y, "p_3897->g_711.y", print_hash_value);
    transparent_crc(p_3897->g_711.z, "p_3897->g_711.z", print_hash_value);
    transparent_crc(p_3897->g_711.w, "p_3897->g_711.w", print_hash_value);
    transparent_crc(p_3897->g_723.x, "p_3897->g_723.x", print_hash_value);
    transparent_crc(p_3897->g_723.y, "p_3897->g_723.y", print_hash_value);
    transparent_crc(p_3897->g_723.z, "p_3897->g_723.z", print_hash_value);
    transparent_crc(p_3897->g_723.w, "p_3897->g_723.w", print_hash_value);
    transparent_crc(p_3897->g_728.x, "p_3897->g_728.x", print_hash_value);
    transparent_crc(p_3897->g_728.y, "p_3897->g_728.y", print_hash_value);
    transparent_crc(p_3897->g_729.x, "p_3897->g_729.x", print_hash_value);
    transparent_crc(p_3897->g_729.y, "p_3897->g_729.y", print_hash_value);
    transparent_crc(p_3897->g_729.z, "p_3897->g_729.z", print_hash_value);
    transparent_crc(p_3897->g_729.w, "p_3897->g_729.w", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            transparent_crc(p_3897->g_739[i][j], "p_3897->g_739[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3897->g_817.x, "p_3897->g_817.x", print_hash_value);
    transparent_crc(p_3897->g_869.x, "p_3897->g_869.x", print_hash_value);
    transparent_crc(p_3897->g_869.y, "p_3897->g_869.y", print_hash_value);
    transparent_crc(p_3897->g_869.z, "p_3897->g_869.z", print_hash_value);
    transparent_crc(p_3897->g_870.x, "p_3897->g_870.x", print_hash_value);
    transparent_crc(p_3897->g_908.x, "p_3897->g_908.x", print_hash_value);
    transparent_crc(p_3897->g_908.y, "p_3897->g_908.y", print_hash_value);
    transparent_crc(p_3897->g_908.z, "p_3897->g_908.z", print_hash_value);
    transparent_crc(p_3897->g_914.x, "p_3897->g_914.x", print_hash_value);
    transparent_crc(p_3897->g_914.y, "p_3897->g_914.y", print_hash_value);
    transparent_crc(p_3897->g_914.z, "p_3897->g_914.z", print_hash_value);
    transparent_crc(p_3897->g_973.x, "p_3897->g_973.x", print_hash_value);
    transparent_crc(p_3897->g_983.x, "p_3897->g_983.x", print_hash_value);
    transparent_crc(p_3897->g_993.x, "p_3897->g_993.x", print_hash_value);
    transparent_crc(p_3897->g_993.y, "p_3897->g_993.y", print_hash_value);
    transparent_crc(p_3897->g_1064.x, "p_3897->g_1064.x", print_hash_value);
    transparent_crc(p_3897->g_1064.y, "p_3897->g_1064.y", print_hash_value);
    transparent_crc(p_3897->g_1069.x, "p_3897->g_1069.x", print_hash_value);
    transparent_crc(p_3897->g_1072.x, "p_3897->g_1072.x", print_hash_value);
    transparent_crc(p_3897->g_1072.y, "p_3897->g_1072.y", print_hash_value);
    transparent_crc(p_3897->g_1072.z, "p_3897->g_1072.z", print_hash_value);
    transparent_crc(p_3897->g_1072.w, "p_3897->g_1072.w", print_hash_value);
    transparent_crc(p_3897->g_1089, "p_3897->g_1089", print_hash_value);
    transparent_crc(p_3897->g_1118.x, "p_3897->g_1118.x", print_hash_value);
    transparent_crc(p_3897->g_1118.y, "p_3897->g_1118.y", print_hash_value);
    transparent_crc(p_3897->g_1118.z, "p_3897->g_1118.z", print_hash_value);
    transparent_crc(p_3897->g_1118.w, "p_3897->g_1118.w", print_hash_value);
    transparent_crc(p_3897->g_1122.x, "p_3897->g_1122.x", print_hash_value);
    transparent_crc(p_3897->g_1122.y, "p_3897->g_1122.y", print_hash_value);
    transparent_crc(p_3897->g_1122.z, "p_3897->g_1122.z", print_hash_value);
    transparent_crc(p_3897->g_1122.w, "p_3897->g_1122.w", print_hash_value);
    transparent_crc(p_3897->g_1132.x, "p_3897->g_1132.x", print_hash_value);
    transparent_crc(p_3897->g_1132.y, "p_3897->g_1132.y", print_hash_value);
    transparent_crc(p_3897->g_1132.z, "p_3897->g_1132.z", print_hash_value);
    transparent_crc(p_3897->g_1132.w, "p_3897->g_1132.w", print_hash_value);
    transparent_crc(p_3897->g_1149.x, "p_3897->g_1149.x", print_hash_value);
    transparent_crc(p_3897->g_1149.y, "p_3897->g_1149.y", print_hash_value);
    transparent_crc(p_3897->g_1149.z, "p_3897->g_1149.z", print_hash_value);
    transparent_crc(p_3897->g_1149.w, "p_3897->g_1149.w", print_hash_value);
    transparent_crc(p_3897->g_1150.x, "p_3897->g_1150.x", print_hash_value);
    transparent_crc(p_3897->g_1150.y, "p_3897->g_1150.y", print_hash_value);
    transparent_crc(p_3897->g_1167.x, "p_3897->g_1167.x", print_hash_value);
    transparent_crc(p_3897->g_1167.y, "p_3897->g_1167.y", print_hash_value);
    transparent_crc(p_3897->g_1167.z, "p_3897->g_1167.z", print_hash_value);
    transparent_crc(p_3897->g_1174.x, "p_3897->g_1174.x", print_hash_value);
    transparent_crc(p_3897->g_1174.y, "p_3897->g_1174.y", print_hash_value);
    transparent_crc(p_3897->g_1174.z, "p_3897->g_1174.z", print_hash_value);
    transparent_crc(p_3897->g_1236.x, "p_3897->g_1236.x", print_hash_value);
    transparent_crc(p_3897->g_1236.y, "p_3897->g_1236.y", print_hash_value);
    transparent_crc(p_3897->g_1236.z, "p_3897->g_1236.z", print_hash_value);
    transparent_crc(p_3897->g_1236.w, "p_3897->g_1236.w", print_hash_value);
    transparent_crc(p_3897->g_1241, "p_3897->g_1241", print_hash_value);
    transparent_crc(p_3897->g_1291.x, "p_3897->g_1291.x", print_hash_value);
    transparent_crc(p_3897->g_1292.x, "p_3897->g_1292.x", print_hash_value);
    transparent_crc(p_3897->g_1292.y, "p_3897->g_1292.y", print_hash_value);
    transparent_crc(p_3897->g_1292.z, "p_3897->g_1292.z", print_hash_value);
    transparent_crc(p_3897->g_1339.x, "p_3897->g_1339.x", print_hash_value);
    transparent_crc(p_3897->g_1339.y, "p_3897->g_1339.y", print_hash_value);
    transparent_crc(p_3897->g_1346.x, "p_3897->g_1346.x", print_hash_value);
    transparent_crc(p_3897->g_1346.y, "p_3897->g_1346.y", print_hash_value);
    transparent_crc(p_3897->g_1346.z, "p_3897->g_1346.z", print_hash_value);
    transparent_crc(p_3897->g_1346.w, "p_3897->g_1346.w", print_hash_value);
    transparent_crc(p_3897->g_1417.x, "p_3897->g_1417.x", print_hash_value);
    transparent_crc(p_3897->g_1424.x, "p_3897->g_1424.x", print_hash_value);
    transparent_crc(p_3897->g_1424.y, "p_3897->g_1424.y", print_hash_value);
    transparent_crc(p_3897->g_1424.z, "p_3897->g_1424.z", print_hash_value);
    transparent_crc(p_3897->g_1424.w, "p_3897->g_1424.w", print_hash_value);
    transparent_crc(p_3897->g_1492.x, "p_3897->g_1492.x", print_hash_value);
    transparent_crc(p_3897->g_1502.x, "p_3897->g_1502.x", print_hash_value);
    transparent_crc(p_3897->g_1502.y, "p_3897->g_1502.y", print_hash_value);
    transparent_crc(p_3897->g_1519.x, "p_3897->g_1519.x", print_hash_value);
    transparent_crc(p_3897->g_1519.y, "p_3897->g_1519.y", print_hash_value);
    transparent_crc(p_3897->g_1552.x, "p_3897->g_1552.x", print_hash_value);
    transparent_crc(p_3897->g_1581.x, "p_3897->g_1581.x", print_hash_value);
    transparent_crc(p_3897->g_1617.x, "p_3897->g_1617.x", print_hash_value);
    transparent_crc(p_3897->g_1617.y, "p_3897->g_1617.y", print_hash_value);
    transparent_crc(p_3897->g_1617.z, "p_3897->g_1617.z", print_hash_value);
    transparent_crc(p_3897->g_1622, "p_3897->g_1622", print_hash_value);
    transparent_crc(p_3897->g_1635.x, "p_3897->g_1635.x", print_hash_value);
    transparent_crc(p_3897->g_1635.y, "p_3897->g_1635.y", print_hash_value);
    transparent_crc(p_3897->g_1635.z, "p_3897->g_1635.z", print_hash_value);
    transparent_crc(p_3897->g_1663, "p_3897->g_1663", print_hash_value);
    transparent_crc(p_3897->g_1684.x, "p_3897->g_1684.x", print_hash_value);
    transparent_crc(p_3897->g_1684.y, "p_3897->g_1684.y", print_hash_value);
    transparent_crc(p_3897->g_1685.x, "p_3897->g_1685.x", print_hash_value);
    transparent_crc(p_3897->g_1701.x, "p_3897->g_1701.x", print_hash_value);
    transparent_crc(p_3897->g_1701.y, "p_3897->g_1701.y", print_hash_value);
    transparent_crc(p_3897->g_1701.z, "p_3897->g_1701.z", print_hash_value);
    transparent_crc(p_3897->g_1701.w, "p_3897->g_1701.w", print_hash_value);
    transparent_crc(p_3897->g_1740.x, "p_3897->g_1740.x", print_hash_value);
    transparent_crc(p_3897->g_1754.x, "p_3897->g_1754.x", print_hash_value);
    transparent_crc(p_3897->g_1754.y, "p_3897->g_1754.y", print_hash_value);
    transparent_crc(p_3897->g_1754.z, "p_3897->g_1754.z", print_hash_value);
    transparent_crc(p_3897->g_1754.w, "p_3897->g_1754.w", print_hash_value);
    transparent_crc(p_3897->g_1762.x, "p_3897->g_1762.x", print_hash_value);
    transparent_crc(p_3897->g_1782.x, "p_3897->g_1782.x", print_hash_value);
    transparent_crc(p_3897->g_1782.y, "p_3897->g_1782.y", print_hash_value);
    transparent_crc(p_3897->g_1787.x, "p_3897->g_1787.x", print_hash_value);
    transparent_crc(p_3897->g_1787.y, "p_3897->g_1787.y", print_hash_value);
    transparent_crc(p_3897->g_1794.x, "p_3897->g_1794.x", print_hash_value);
    transparent_crc(p_3897->g_1794.y, "p_3897->g_1794.y", print_hash_value);
    transparent_crc(p_3897->g_1794.z, "p_3897->g_1794.z", print_hash_value);
    transparent_crc(p_3897->g_1794.w, "p_3897->g_1794.w", print_hash_value);
    transparent_crc(p_3897->g_1819.x, "p_3897->g_1819.x", print_hash_value);
    transparent_crc(p_3897->g_1819.y, "p_3897->g_1819.y", print_hash_value);
    transparent_crc(p_3897->g_1819.z, "p_3897->g_1819.z", print_hash_value);
    transparent_crc(p_3897->g_1819.w, "p_3897->g_1819.w", print_hash_value);
    transparent_crc(p_3897->g_1821.x, "p_3897->g_1821.x", print_hash_value);
    transparent_crc(p_3897->g_1879.x, "p_3897->g_1879.x", print_hash_value);
    transparent_crc(p_3897->g_1879.y, "p_3897->g_1879.y", print_hash_value);
    transparent_crc(p_3897->g_1879.z, "p_3897->g_1879.z", print_hash_value);
    transparent_crc(p_3897->g_1895, "p_3897->g_1895", print_hash_value);
    transparent_crc(p_3897->g_1913.x, "p_3897->g_1913.x", print_hash_value);
    transparent_crc(p_3897->g_1913.y, "p_3897->g_1913.y", print_hash_value);
    transparent_crc(p_3897->g_1913.z, "p_3897->g_1913.z", print_hash_value);
    transparent_crc(p_3897->g_1913.w, "p_3897->g_1913.w", print_hash_value);
    transparent_crc(p_3897->g_1922.x, "p_3897->g_1922.x", print_hash_value);
    transparent_crc(p_3897->g_1924.x, "p_3897->g_1924.x", print_hash_value);
    transparent_crc(p_3897->g_1924.y, "p_3897->g_1924.y", print_hash_value);
    transparent_crc(p_3897->g_1924.z, "p_3897->g_1924.z", print_hash_value);
    transparent_crc(p_3897->g_1924.w, "p_3897->g_1924.w", print_hash_value);
    transparent_crc(p_3897->g_1925.x, "p_3897->g_1925.x", print_hash_value);
    transparent_crc(p_3897->g_1935, "p_3897->g_1935", print_hash_value);
    transparent_crc(p_3897->g_1977.x, "p_3897->g_1977.x", print_hash_value);
    transparent_crc(p_3897->g_1998.x, "p_3897->g_1998.x", print_hash_value);
    transparent_crc(p_3897->g_1998.y, "p_3897->g_1998.y", print_hash_value);
    transparent_crc(p_3897->g_1998.z, "p_3897->g_1998.z", print_hash_value);
    transparent_crc(p_3897->g_1998.w, "p_3897->g_1998.w", print_hash_value);
    transparent_crc(p_3897->g_2082.x, "p_3897->g_2082.x", print_hash_value);
    transparent_crc(p_3897->g_2082.y, "p_3897->g_2082.y", print_hash_value);
    transparent_crc(p_3897->g_2101.x, "p_3897->g_2101.x", print_hash_value);
    transparent_crc(p_3897->g_2101.y, "p_3897->g_2101.y", print_hash_value);
    transparent_crc(p_3897->g_2101.z, "p_3897->g_2101.z", print_hash_value);
    transparent_crc(p_3897->g_2131.x, "p_3897->g_2131.x", print_hash_value);
    transparent_crc(p_3897->g_2131.y, "p_3897->g_2131.y", print_hash_value);
    transparent_crc(p_3897->g_2151.x, "p_3897->g_2151.x", print_hash_value);
    transparent_crc(p_3897->g_2151.y, "p_3897->g_2151.y", print_hash_value);
    transparent_crc(p_3897->g_2153.x, "p_3897->g_2153.x", print_hash_value);
    transparent_crc(p_3897->g_2153.y, "p_3897->g_2153.y", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(p_3897->g_2174[i], "p_3897->g_2174[i]", print_hash_value);

    }
    transparent_crc(p_3897->g_2188.x, "p_3897->g_2188.x", print_hash_value);
    transparent_crc(p_3897->g_2188.y, "p_3897->g_2188.y", print_hash_value);
    transparent_crc(p_3897->g_2189.x, "p_3897->g_2189.x", print_hash_value);
    transparent_crc(p_3897->g_2189.y, "p_3897->g_2189.y", print_hash_value);
    transparent_crc(p_3897->g_2189.z, "p_3897->g_2189.z", print_hash_value);
    transparent_crc(p_3897->g_2189.w, "p_3897->g_2189.w", print_hash_value);
    transparent_crc(p_3897->g_2198.x, "p_3897->g_2198.x", print_hash_value);
    transparent_crc(p_3897->g_2206.x, "p_3897->g_2206.x", print_hash_value);
    transparent_crc(p_3897->g_2206.y, "p_3897->g_2206.y", print_hash_value);
    transparent_crc(p_3897->g_2206.z, "p_3897->g_2206.z", print_hash_value);
    transparent_crc(p_3897->g_2206.w, "p_3897->g_2206.w", print_hash_value);
    transparent_crc(p_3897->g_2224.x, "p_3897->g_2224.x", print_hash_value);
    transparent_crc(p_3897->g_2224.y, "p_3897->g_2224.y", print_hash_value);
    transparent_crc(p_3897->g_2227.x, "p_3897->g_2227.x", print_hash_value);
    transparent_crc(p_3897->g_2227.y, "p_3897->g_2227.y", print_hash_value);
    transparent_crc(p_3897->g_2227.z, "p_3897->g_2227.z", print_hash_value);
    transparent_crc(p_3897->g_2241.x, "p_3897->g_2241.x", print_hash_value);
    transparent_crc(p_3897->g_2241.y, "p_3897->g_2241.y", print_hash_value);
    transparent_crc(p_3897->g_2241.z, "p_3897->g_2241.z", print_hash_value);
    transparent_crc(p_3897->g_2241.w, "p_3897->g_2241.w", print_hash_value);
    transparent_crc(p_3897->g_2245.x, "p_3897->g_2245.x", print_hash_value);
    transparent_crc(p_3897->g_2245.y, "p_3897->g_2245.y", print_hash_value);
    transparent_crc(p_3897->g_2245.z, "p_3897->g_2245.z", print_hash_value);
    transparent_crc(p_3897->g_2251.x, "p_3897->g_2251.x", print_hash_value);
    transparent_crc(p_3897->g_2251.y, "p_3897->g_2251.y", print_hash_value);
    transparent_crc(p_3897->g_2251.z, "p_3897->g_2251.z", print_hash_value);
    transparent_crc(p_3897->g_2252.x, "p_3897->g_2252.x", print_hash_value);
    transparent_crc(p_3897->g_2252.y, "p_3897->g_2252.y", print_hash_value);
    transparent_crc(p_3897->g_2252.z, "p_3897->g_2252.z", print_hash_value);
    transparent_crc(p_3897->g_2277.x, "p_3897->g_2277.x", print_hash_value);
    transparent_crc(p_3897->g_2277.y, "p_3897->g_2277.y", print_hash_value);
    transparent_crc(p_3897->g_2311.x, "p_3897->g_2311.x", print_hash_value);
    transparent_crc(p_3897->g_2311.y, "p_3897->g_2311.y", print_hash_value);
    transparent_crc(p_3897->g_2311.z, "p_3897->g_2311.z", print_hash_value);
    transparent_crc(p_3897->g_2363, "p_3897->g_2363", print_hash_value);
    transparent_crc(p_3897->g_2371.x, "p_3897->g_2371.x", print_hash_value);
    transparent_crc(p_3897->g_2373.x, "p_3897->g_2373.x", print_hash_value);
    transparent_crc(p_3897->g_2373.y, "p_3897->g_2373.y", print_hash_value);
    transparent_crc(p_3897->g_2373.z, "p_3897->g_2373.z", print_hash_value);
    transparent_crc(p_3897->g_2373.w, "p_3897->g_2373.w", print_hash_value);
    transparent_crc(p_3897->g_2380.x, "p_3897->g_2380.x", print_hash_value);
    transparent_crc(p_3897->g_2385.x, "p_3897->g_2385.x", print_hash_value);
    transparent_crc(p_3897->g_2386.x, "p_3897->g_2386.x", print_hash_value);
    transparent_crc(p_3897->g_2386.y, "p_3897->g_2386.y", print_hash_value);
    transparent_crc(p_3897->g_2386.z, "p_3897->g_2386.z", print_hash_value);
    transparent_crc(p_3897->g_2386.w, "p_3897->g_2386.w", print_hash_value);
    transparent_crc(p_3897->g_2417.x, "p_3897->g_2417.x", print_hash_value);
    transparent_crc(p_3897->g_2417.y, "p_3897->g_2417.y", print_hash_value);
    transparent_crc(p_3897->g_2417.z, "p_3897->g_2417.z", print_hash_value);
    transparent_crc(p_3897->g_2460.x, "p_3897->g_2460.x", print_hash_value);
    transparent_crc(p_3897->g_2460.y, "p_3897->g_2460.y", print_hash_value);
    transparent_crc(p_3897->g_2471, "p_3897->g_2471", print_hash_value);
    transparent_crc(p_3897->g_2486.x, "p_3897->g_2486.x", print_hash_value);
    transparent_crc(p_3897->g_2486.y, "p_3897->g_2486.y", print_hash_value);
    transparent_crc(p_3897->g_2486.z, "p_3897->g_2486.z", print_hash_value);
    transparent_crc(p_3897->g_2486.w, "p_3897->g_2486.w", print_hash_value);
    transparent_crc(p_3897->g_2496, "p_3897->g_2496", print_hash_value);
    transparent_crc(p_3897->g_2508.x, "p_3897->g_2508.x", print_hash_value);
    transparent_crc(p_3897->g_2508.y, "p_3897->g_2508.y", print_hash_value);
    transparent_crc(p_3897->g_2516.x, "p_3897->g_2516.x", print_hash_value);
    transparent_crc(p_3897->g_2516.y, "p_3897->g_2516.y", print_hash_value);
    transparent_crc(p_3897->g_2527, "p_3897->g_2527", print_hash_value);
    transparent_crc(p_3897->g_2549.x, "p_3897->g_2549.x", print_hash_value);
    transparent_crc(p_3897->g_2549.y, "p_3897->g_2549.y", print_hash_value);
    transparent_crc(p_3897->g_2549.z, "p_3897->g_2549.z", print_hash_value);
    transparent_crc(p_3897->g_2549.w, "p_3897->g_2549.w", print_hash_value);
    transparent_crc(p_3897->g_2550.x, "p_3897->g_2550.x", print_hash_value);
    transparent_crc(p_3897->g_2550.y, "p_3897->g_2550.y", print_hash_value);
    transparent_crc(p_3897->g_2550.z, "p_3897->g_2550.z", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            transparent_crc(p_3897->g_2630[i][j], "p_3897->g_2630[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3897->g_2673.x, "p_3897->g_2673.x", print_hash_value);
    transparent_crc(p_3897->g_2674.x, "p_3897->g_2674.x", print_hash_value);
    transparent_crc(p_3897->g_2674.y, "p_3897->g_2674.y", print_hash_value);
    transparent_crc(p_3897->g_2675, "p_3897->g_2675", print_hash_value);
    transparent_crc(p_3897->g_2680.x, "p_3897->g_2680.x", print_hash_value);
    transparent_crc(p_3897->g_2680.y, "p_3897->g_2680.y", print_hash_value);
    transparent_crc(p_3897->g_2690.x, "p_3897->g_2690.x", print_hash_value);
    transparent_crc(p_3897->g_2690.y, "p_3897->g_2690.y", print_hash_value);
    transparent_crc(p_3897->g_2690.z, "p_3897->g_2690.z", print_hash_value);
    transparent_crc(p_3897->g_2707, "p_3897->g_2707", print_hash_value);
    transparent_crc(p_3897->g_2710, "p_3897->g_2710", print_hash_value);
    transparent_crc(p_3897->g_2743, "p_3897->g_2743", print_hash_value);
    transparent_crc(p_3897->g_2801.x, "p_3897->g_2801.x", print_hash_value);
    transparent_crc(p_3897->g_2801.y, "p_3897->g_2801.y", print_hash_value);
    transparent_crc(p_3897->g_2801.z, "p_3897->g_2801.z", print_hash_value);
    transparent_crc(p_3897->g_2817.x, "p_3897->g_2817.x", print_hash_value);
    transparent_crc(p_3897->g_2817.y, "p_3897->g_2817.y", print_hash_value);
    transparent_crc(p_3897->g_2817.z, "p_3897->g_2817.z", print_hash_value);
    transparent_crc(p_3897->g_2817.w, "p_3897->g_2817.w", print_hash_value);
    transparent_crc(p_3897->g_2846, "p_3897->g_2846", print_hash_value);
    transparent_crc(p_3897->g_2870.x, "p_3897->g_2870.x", print_hash_value);
    transparent_crc(p_3897->g_2870.y, "p_3897->g_2870.y", print_hash_value);
    transparent_crc(p_3897->g_2870.z, "p_3897->g_2870.z", print_hash_value);
    transparent_crc(p_3897->g_2875.x, "p_3897->g_2875.x", print_hash_value);
    transparent_crc(p_3897->g_2875.y, "p_3897->g_2875.y", print_hash_value);
    transparent_crc(p_3897->g_2875.z, "p_3897->g_2875.z", print_hash_value);
    transparent_crc(p_3897->g_2875.w, "p_3897->g_2875.w", print_hash_value);
    transparent_crc(p_3897->g_2914.x, "p_3897->g_2914.x", print_hash_value);
    transparent_crc(p_3897->g_2944.x, "p_3897->g_2944.x", print_hash_value);
    transparent_crc(p_3897->g_2944.y, "p_3897->g_2944.y", print_hash_value);
    transparent_crc(p_3897->g_2944.z, "p_3897->g_2944.z", print_hash_value);
    transparent_crc(p_3897->g_2944.w, "p_3897->g_2944.w", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_3897->g_2990[i], "p_3897->g_2990[i]", print_hash_value);

    }
    transparent_crc(p_3897->g_3021.x, "p_3897->g_3021.x", print_hash_value);
    transparent_crc(p_3897->g_3021.y, "p_3897->g_3021.y", print_hash_value);
    transparent_crc(p_3897->g_3021.z, "p_3897->g_3021.z", print_hash_value);
    transparent_crc(p_3897->g_3021.w, "p_3897->g_3021.w", print_hash_value);
    transparent_crc(p_3897->g_3025.x, "p_3897->g_3025.x", print_hash_value);
    transparent_crc(p_3897->g_3025.y, "p_3897->g_3025.y", print_hash_value);
    transparent_crc(p_3897->g_3025.z, "p_3897->g_3025.z", print_hash_value);
    transparent_crc(p_3897->g_3049.x, "p_3897->g_3049.x", print_hash_value);
    transparent_crc(p_3897->g_3049.y, "p_3897->g_3049.y", print_hash_value);
    transparent_crc(p_3897->g_3049.z, "p_3897->g_3049.z", print_hash_value);
    transparent_crc(p_3897->g_3068.x, "p_3897->g_3068.x", print_hash_value);
    transparent_crc(p_3897->g_3068.y, "p_3897->g_3068.y", print_hash_value);
    transparent_crc(p_3897->g_3068.z, "p_3897->g_3068.z", print_hash_value);
    transparent_crc(p_3897->g_3114.x, "p_3897->g_3114.x", print_hash_value);
    transparent_crc(p_3897->g_3135.x, "p_3897->g_3135.x", print_hash_value);
    transparent_crc(p_3897->g_3135.y, "p_3897->g_3135.y", print_hash_value);
    transparent_crc(p_3897->g_3135.z, "p_3897->g_3135.z", print_hash_value);
    transparent_crc(p_3897->g_3135.w, "p_3897->g_3135.w", print_hash_value);
    transparent_crc(p_3897->g_3146.x, "p_3897->g_3146.x", print_hash_value);
    transparent_crc(p_3897->g_3146.y, "p_3897->g_3146.y", print_hash_value);
    transparent_crc(p_3897->g_3146.z, "p_3897->g_3146.z", print_hash_value);
    transparent_crc(p_3897->g_3166.x, "p_3897->g_3166.x", print_hash_value);
    transparent_crc(p_3897->g_3166.y, "p_3897->g_3166.y", print_hash_value);
    transparent_crc(p_3897->g_3166.z, "p_3897->g_3166.z", print_hash_value);
    transparent_crc(p_3897->g_3203.x, "p_3897->g_3203.x", print_hash_value);
    transparent_crc(p_3897->g_3203.y, "p_3897->g_3203.y", print_hash_value);
    transparent_crc(p_3897->g_3203.z, "p_3897->g_3203.z", print_hash_value);
    transparent_crc(p_3897->g_3213.x, "p_3897->g_3213.x", print_hash_value);
    transparent_crc(p_3897->g_3213.y, "p_3897->g_3213.y", print_hash_value);
    transparent_crc(p_3897->g_3232.x, "p_3897->g_3232.x", print_hash_value);
    transparent_crc(p_3897->g_3232.y, "p_3897->g_3232.y", print_hash_value);
    transparent_crc(p_3897->g_3233.x, "p_3897->g_3233.x", print_hash_value);
    transparent_crc(p_3897->g_3233.y, "p_3897->g_3233.y", print_hash_value);
    transparent_crc(p_3897->g_3233.z, "p_3897->g_3233.z", print_hash_value);
    transparent_crc(p_3897->g_3240.x, "p_3897->g_3240.x", print_hash_value);
    transparent_crc(p_3897->g_3251.x, "p_3897->g_3251.x", print_hash_value);
    transparent_crc(p_3897->g_3251.y, "p_3897->g_3251.y", print_hash_value);
    transparent_crc(p_3897->g_3284.x, "p_3897->g_3284.x", print_hash_value);
    transparent_crc(p_3897->g_3284.y, "p_3897->g_3284.y", print_hash_value);
    transparent_crc(p_3897->g_3284.z, "p_3897->g_3284.z", print_hash_value);
    transparent_crc(p_3897->g_3291.x, "p_3897->g_3291.x", print_hash_value);
    transparent_crc(p_3897->g_3291.y, "p_3897->g_3291.y", print_hash_value);
    transparent_crc(p_3897->g_3316.x, "p_3897->g_3316.x", print_hash_value);
    transparent_crc(p_3897->g_3316.y, "p_3897->g_3316.y", print_hash_value);
    transparent_crc(p_3897->g_3316.z, "p_3897->g_3316.z", print_hash_value);
    transparent_crc(p_3897->g_3316.w, "p_3897->g_3316.w", print_hash_value);
    transparent_crc(p_3897->g_3323.x, "p_3897->g_3323.x", print_hash_value);
    transparent_crc(p_3897->g_3323.y, "p_3897->g_3323.y", print_hash_value);
    transparent_crc(p_3897->g_3333.x, "p_3897->g_3333.x", print_hash_value);
    transparent_crc(p_3897->g_3333.y, "p_3897->g_3333.y", print_hash_value);
    transparent_crc(p_3897->g_3333.z, "p_3897->g_3333.z", print_hash_value);
    transparent_crc(p_3897->g_3333.w, "p_3897->g_3333.w", print_hash_value);
    transparent_crc(p_3897->g_3338, "p_3897->g_3338", print_hash_value);
    transparent_crc(p_3897->g_3363, "p_3897->g_3363", print_hash_value);
    transparent_crc(p_3897->g_3380.x, "p_3897->g_3380.x", print_hash_value);
    transparent_crc(p_3897->g_3414.x, "p_3897->g_3414.x", print_hash_value);
    transparent_crc(p_3897->g_3421.x, "p_3897->g_3421.x", print_hash_value);
    transparent_crc(p_3897->g_3433.x, "p_3897->g_3433.x", print_hash_value);
    transparent_crc(p_3897->g_3433.y, "p_3897->g_3433.y", print_hash_value);
    transparent_crc(p_3897->g_3433.z, "p_3897->g_3433.z", print_hash_value);
    transparent_crc(p_3897->g_3449.x, "p_3897->g_3449.x", print_hash_value);
    transparent_crc(p_3897->g_3452, "p_3897->g_3452", print_hash_value);
    transparent_crc(p_3897->g_3483.x, "p_3897->g_3483.x", print_hash_value);
    transparent_crc(p_3897->g_3483.y, "p_3897->g_3483.y", print_hash_value);
    transparent_crc(p_3897->g_3483.z, "p_3897->g_3483.z", print_hash_value);
    transparent_crc(p_3897->g_3483.w, "p_3897->g_3483.w", print_hash_value);
    transparent_crc(p_3897->g_3499, "p_3897->g_3499", print_hash_value);
    transparent_crc(p_3897->g_3530.x, "p_3897->g_3530.x", print_hash_value);
    transparent_crc(p_3897->g_3530.y, "p_3897->g_3530.y", print_hash_value);
    transparent_crc(p_3897->g_3531.x, "p_3897->g_3531.x", print_hash_value);
    transparent_crc(p_3897->g_3531.y, "p_3897->g_3531.y", print_hash_value);
    transparent_crc(p_3897->g_3531.z, "p_3897->g_3531.z", print_hash_value);
    transparent_crc(p_3897->g_3531.w, "p_3897->g_3531.w", print_hash_value);
    transparent_crc(p_3897->g_3556, "p_3897->g_3556", print_hash_value);
    transparent_crc(p_3897->g_3582, "p_3897->g_3582", print_hash_value);
    transparent_crc(p_3897->g_3586.x, "p_3897->g_3586.x", print_hash_value);
    transparent_crc(p_3897->g_3586.y, "p_3897->g_3586.y", print_hash_value);
    transparent_crc(p_3897->g_3586.z, "p_3897->g_3586.z", print_hash_value);
    transparent_crc(p_3897->g_3603.x, "p_3897->g_3603.x", print_hash_value);
    transparent_crc(p_3897->g_3603.y, "p_3897->g_3603.y", print_hash_value);
    transparent_crc(p_3897->g_3603.z, "p_3897->g_3603.z", print_hash_value);
    transparent_crc(p_3897->g_3603.w, "p_3897->g_3603.w", print_hash_value);
    transparent_crc(p_3897->g_3605.x, "p_3897->g_3605.x", print_hash_value);
    transparent_crc(p_3897->g_3609.x, "p_3897->g_3609.x", print_hash_value);
    transparent_crc(p_3897->g_3609.y, "p_3897->g_3609.y", print_hash_value);
    transparent_crc(p_3897->g_3609.z, "p_3897->g_3609.z", print_hash_value);
    transparent_crc(p_3897->g_3612.x, "p_3897->g_3612.x", print_hash_value);
    transparent_crc(p_3897->g_3613.x, "p_3897->g_3613.x", print_hash_value);
    transparent_crc(p_3897->g_3618.x, "p_3897->g_3618.x", print_hash_value);
    transparent_crc(p_3897->g_3618.y, "p_3897->g_3618.y", print_hash_value);
    transparent_crc(p_3897->g_3663.x, "p_3897->g_3663.x", print_hash_value);
    transparent_crc(p_3897->g_3663.y, "p_3897->g_3663.y", print_hash_value);
    transparent_crc(p_3897->g_3663.z, "p_3897->g_3663.z", print_hash_value);
    transparent_crc(p_3897->g_3663.w, "p_3897->g_3663.w", print_hash_value);
    transparent_crc(p_3897->g_3668.x, "p_3897->g_3668.x", print_hash_value);
    transparent_crc(p_3897->g_3668.y, "p_3897->g_3668.y", print_hash_value);
    transparent_crc(p_3897->g_3668.z, "p_3897->g_3668.z", print_hash_value);
    transparent_crc(p_3897->g_3668.w, "p_3897->g_3668.w", print_hash_value);
    transparent_crc(p_3897->g_3669.x, "p_3897->g_3669.x", print_hash_value);
    transparent_crc(p_3897->g_3669.y, "p_3897->g_3669.y", print_hash_value);
    transparent_crc(p_3897->g_3669.z, "p_3897->g_3669.z", print_hash_value);
    transparent_crc(p_3897->g_3669.w, "p_3897->g_3669.w", print_hash_value);
    transparent_crc(p_3897->g_3671.x, "p_3897->g_3671.x", print_hash_value);
    transparent_crc(p_3897->g_3671.y, "p_3897->g_3671.y", print_hash_value);
    transparent_crc(p_3897->g_3671.z, "p_3897->g_3671.z", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_3897->g_3687[i], "p_3897->g_3687[i]", print_hash_value);

    }
    transparent_crc(p_3897->g_3691.x, "p_3897->g_3691.x", print_hash_value);
    transparent_crc(p_3897->g_3691.y, "p_3897->g_3691.y", print_hash_value);
    transparent_crc(p_3897->g_3691.z, "p_3897->g_3691.z", print_hash_value);
    transparent_crc(p_3897->g_3691.w, "p_3897->g_3691.w", print_hash_value);
    transparent_crc(p_3897->g_3711.x, "p_3897->g_3711.x", print_hash_value);
    transparent_crc(p_3897->g_3711.y, "p_3897->g_3711.y", print_hash_value);
    transparent_crc(p_3897->g_3711.z, "p_3897->g_3711.z", print_hash_value);
    transparent_crc(p_3897->g_3712.x, "p_3897->g_3712.x", print_hash_value);
    transparent_crc(p_3897->g_3712.y, "p_3897->g_3712.y", print_hash_value);
    transparent_crc(p_3897->g_3712.z, "p_3897->g_3712.z", print_hash_value);
    transparent_crc(p_3897->g_3712.w, "p_3897->g_3712.w", print_hash_value);
    transparent_crc(p_3897->g_3726.x, "p_3897->g_3726.x", print_hash_value);
    transparent_crc(p_3897->g_3726.y, "p_3897->g_3726.y", print_hash_value);
    transparent_crc(p_3897->g_3727.x, "p_3897->g_3727.x", print_hash_value);
    transparent_crc(p_3897->g_3727.y, "p_3897->g_3727.y", print_hash_value);
    transparent_crc(p_3897->g_3756.x, "p_3897->g_3756.x", print_hash_value);
    transparent_crc(p_3897->g_3756.y, "p_3897->g_3756.y", print_hash_value);
    transparent_crc(p_3897->g_3756.z, "p_3897->g_3756.z", print_hash_value);
    transparent_crc(p_3897->g_3761.x, "p_3897->g_3761.x", print_hash_value);
    transparent_crc(p_3897->g_3761.y, "p_3897->g_3761.y", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 7; k++)
            {
                transparent_crc(p_3897->g_3771[i][j][k].f0, "p_3897->g_3771[i][j][k].f0", print_hash_value);
                transparent_crc(p_3897->g_3771[i][j][k].f1, "p_3897->g_3771[i][j][k].f1", print_hash_value);
                transparent_crc(p_3897->g_3771[i][j][k].f2, "p_3897->g_3771[i][j][k].f2", print_hash_value);
                transparent_crc(p_3897->g_3771[i][j][k].f3, "p_3897->g_3771[i][j][k].f3", print_hash_value);
                transparent_crc(p_3897->g_3771[i][j][k].f4, "p_3897->g_3771[i][j][k].f4", print_hash_value);
                transparent_crc(p_3897->g_3771[i][j][k].f5, "p_3897->g_3771[i][j][k].f5", print_hash_value);
                transparent_crc(p_3897->g_3771[i][j][k].f6, "p_3897->g_3771[i][j][k].f6", print_hash_value);

            }
        }
    }
    transparent_crc(p_3897->g_3781.x, "p_3897->g_3781.x", print_hash_value);
    transparent_crc(p_3897->g_3781.y, "p_3897->g_3781.y", print_hash_value);
    transparent_crc(p_3897->g_3808, "p_3897->g_3808", print_hash_value);
    transparent_crc(p_3897->g_3843.x, "p_3897->g_3843.x", print_hash_value);
    transparent_crc(p_3897->g_3843.y, "p_3897->g_3843.y", print_hash_value);
    transparent_crc(p_3897->g_3881.x, "p_3897->g_3881.x", print_hash_value);
    transparent_crc(p_3897->g_3881.y, "p_3897->g_3881.y", print_hash_value);
    transparent_crc(p_3897->g_3881.z, "p_3897->g_3881.z", print_hash_value);
    transparent_crc(p_3897->g_3881.w, "p_3897->g_3881.w", print_hash_value);
    transparent_crc(p_3897->g_3895.f0, "p_3897->g_3895.f0", print_hash_value);
    transparent_crc(p_3897->g_3895.f1, "p_3897->g_3895.f1", print_hash_value);
    transparent_crc(p_3897->g_3895.f2, "p_3897->g_3895.f2", print_hash_value);
    transparent_crc(p_3897->g_3895.f3, "p_3897->g_3895.f3", print_hash_value);
    transparent_crc(p_3897->g_3895.f4, "p_3897->g_3895.f4", print_hash_value);
    transparent_crc(p_3897->g_3895.f5, "p_3897->g_3895.f5", print_hash_value);
    transparent_crc(p_3897->g_3895.f6, "p_3897->g_3895.f6", print_hash_value);
    transparent_crc(p_3897->g_3895.f7, "p_3897->g_3895.f7", print_hash_value);
    transparent_crc(p_3897->g_3896.x, "p_3897->g_3896.x", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

