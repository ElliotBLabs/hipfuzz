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
// Seed: 725925200

/* --- Struct/Union Declarations --- */
// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint8_t hip_const_1;
__constant__ int32_t hip_const_2;
__constant__ uint32_t hip_const_3;
__constant__ int32_t hip_const_4;
__constant__ int32_t hip_const_5[5][2][5];
__constant__ uint16_t hip_const_6[3];
__constant__ uint16_t hip_const_7;
__constant__ int32_t hip_const_8[2][9][8];
__constant__ uint32_t hip_const_9;
__constant__ int16_t hip_const_10[7][9];
__constant__ int32_t hip_const_11;
__constant__ int32_t hip_const_12;
__constant__ int64_t hip_const_13;
__constant__ int8_t hip_const_14[3];
__constant__ int8_t hip_const_15;
__constant__ int8_t hip_const_16;
__constant__ int64_t hip_const_17;
__constant__ int16_t hip_const_18;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint8_t host_hip_const_1 = 0xA1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        int32_t host_hip_const_2 = 0x342EB90DL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        uint32_t host_hip_const_3 = 8UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int32_t host_hip_const_4 = 0L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        int32_t host_hip_const_5[5][2][5] = {{{(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}, {(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}}, {{(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}, {(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}}, {{(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}, {(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}}, {{(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}, {(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}}, {{(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}, {(-1L), 0xF23B1A95L, 0xEC7516A2L, (-6L), 0xAED23B61L}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint16_t host_hip_const_6[3] = {0x81FFL, 0x81FFL, 0x81FFL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        uint16_t host_hip_const_7 = 0UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        int32_t host_hip_const_8[2][9][8] = {{{2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}}, {{2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}, {2L, (-9L), 0x5AB4D258L, (-4L), (-4L), 0xCE7AEBB1L, 0xCC8AF953L, 0x9A01C77DL}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        uint32_t host_hip_const_9 = 4294967292UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        int16_t host_hip_const_10[7][9] = {{0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L}, {0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L}, {0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L}, {0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L}, {0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L}, {0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L}, {0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L, 0xA97AL, 0xA97AL, 0xC4B7L}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
        int32_t host_hip_const_11 = (-1L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_11, &host_hip_const_11, sizeof(host_hip_const_11)));
        int32_t host_hip_const_12 = 0xE96F77D9L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_12, &host_hip_const_12, sizeof(host_hip_const_12)));
        int64_t host_hip_const_13 = 0x2964071C19CD890FLL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_13, &host_hip_const_13, sizeof(host_hip_const_13)));
        int8_t host_hip_const_14[3] = {(-5L), (-5L), (-5L)};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_14, &host_hip_const_14, sizeof(host_hip_const_14)));
        int8_t host_hip_const_15 = 0xD1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_15, &host_hip_const_15, sizeof(host_hip_const_15)));
        int8_t host_hip_const_16 = 0x7DL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_16, &host_hip_const_16, sizeof(host_hip_const_16)));
        int64_t host_hip_const_17 = 0x8C040C8E82B3F54CLL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_17, &host_hip_const_17, sizeof(host_hip_const_17)));
        int16_t host_hip_const_18 = 0L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_18, &host_hip_const_18, sizeof(host_hip_const_18)));
}

struct S0 {
    int8_t g_18;
    uint64_t g_58[8][3][5];
    int16_t g_91;
    uint32_t g_93;
    long1 g_106;
    long4 g_107;
    uint32_t g_119;
    int2 g_138;
    ulong3 g_155;
    uint16_t *g_160;
    uint16_t **g_159[10][10];
    uint16_t **g_163[7][5];
    long1 g_176;
    uint16_t **g_190;
    int32_t g_192;
    uint64_t g_194;
    uint16_t g_197;
    uint2 g_205;
    int8_t g_222;
    int4 g_244;
    long1 g_264;
    long1 g_272;
    int16_t g_309;
    uint2 g_360;
    char4 g_364;
    ulong1 g_367;
    short2 g_384;
    int64_t *g_390;
    int64_t **g_389;
    uchar3 g_473;
    uchar4 g_474;
    char3 g_478;
    ushort4 g_489;
    int32_t g_518;
    uint16_t g_519[2];
    uint8_t *g_553;
    uint8_t **g_552;
    ulong3 g_585;
    int8_t g_592;
    long4 g_613;
    char4 g_632;
    ushort3 g_647;
    int4 g_670;
    uchar2 g_678;
    uint16_t ***g_719;
    uint16_t ****g_718;
    uchar2 g_730;
    uint32_t g_749;
    int2 g_762;
    ulong2 g_770;
    int32_t *g_817;
    int32_t g_839;
    int4 g_861;
    int16_t g_903[10][3][1];
    char3 g_910;
    long2 g_980;
    long4 g_982;
    long3 g_1007;
    int8_t *g_1024;
    int8_t **g_1023;
    uint16_t g_1049;
    int8_t g_1066;
    int32_t g_1107;
    ulong3 g_1168;
    char3 g_1179;
    uint64_t g_1182;
    uint8_t g_1193[8][8];
    short1 g_1315;
    int8_t ****g_1335;
    uint8_t ***g_1359;
    uint8_t ****g_1358;
    ulong3 g_1388;
    int2 g_1392;
    uint32_t g_1397;
    ulong1 g_1418;
    uchar2 g_1427;
    char4 g_1453;
    int2 g_1478;
    int2 g_1479;
    int4 g_1506;
    int64_t g_1513;
    uint3 g_1543;
    uchar1 g_1571;
    char4 g_1583;
    ushort2 g_1620;
    uint32_t g_1636;
    ushort4 g_1653;
    int32_t g_1663;
    uchar2 g_1680;
    uchar3 g_1681;
    int32_t **g_1685;
    int1 g_1731;
    char2 g_1771;
    uint16_t *****g_1778;
    int16_t *g_1793;
    int1 g_1814;
    int2 g_1815;
    int2 g_1847;
    ushort2 g_1900;
    ushort3 g_1901;
    uchar2 g_1956;
    char3 g_1974;
    uint32_t *g_1981;
    uint32_t **g_1980;
    long1 g_1989;
    long2 g_1993;
    uint4 g_2003;
    uint2 g_2011;
    short1 g_2037;
    uint64_t *g_2050;
    uint4 g_2067;
    char3 g_2077;
    uint2 g_2141;
    char4 g_2151;
    ulong2 g_2188;
    int16_t g_2281;
    uint3 g_2299;
    ulong1 g_2311;
    char4 g_2353;
    short4 g_2383;
    uchar2 g_2404;
    int32_t *g_2425;
    uint3 g_2427;
    int4 g_2460;
    int2 g_2495;
    uint2 g_2512;
    uint3 g_2513;
    int2 g_2527;
    int2 g_2530;
    int1 g_2533;
    short2 g_2534;
    long3 g_2645;
    int32_t *g_2672;
    int32_t **g_2671;
    long2 g_2675;
    long1 g_2676;
    int8_t ***g_2762;
    int8_t ****g_2761;
    long2 g_2784;
    int16_t **g_2788;
    int16_t ***g_2787;
    char1 g_2814;
    char2 g_2822;
    int3 g_2853;
    short1 g_2855;
    short3 g_2862;
    ushort3 g_2868;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S0 * p_2883);
__device__ int32_t * func_2(int32_t * p_3, uint8_t  p_4, int64_t  p_5, int32_t * p_6, int32_t  p_7, struct S0 * p_2883);
__device__ int32_t * func_8(int8_t  p_9, int32_t  p_10, uint16_t  p_11, uint8_t  p_12, struct S0 * p_2883);
__device__ int32_t * func_13(int64_t  p_14, int64_t  p_15, int64_t  p_16, int32_t  p_17, struct S0 * p_2883);
__device__ uint8_t  func_22(uint16_t  p_23, struct S0 * p_2883);
__device__ uint32_t  func_32(int32_t  p_33, uint64_t  p_34, int32_t * p_35, uint32_t  p_36, int32_t  p_37, struct S0 * p_2883);
__device__ int32_t  func_42(int32_t  p_43, struct S0 * p_2883);
__device__ int16_t  func_49(int32_t  p_50, uint64_t  p_51, uint8_t  p_52, int32_t * p_53, struct S0 * p_2883);
__device__ int32_t * func_61(int32_t  p_62, int64_t  p_63, uint32_t  p_64, uint16_t * p_65, struct S0 * p_2883);
__device__ int32_t  func_69(int32_t  p_70, struct S0 * p_2883);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2883->g_18 hip_const_18 p_2883->g_749 hip_const_11 p_2883->g_1685 p_2883->g_176 p_2883->g_861 hip_const_12 p_2883->g_817 p_2883->g_518 p_2883->g_1513 p_2883->g_903 p_2883->g_1506 hip_const_2 p_2883->g_1479 p_2883->g_192 p_2883->g_1847 p_2883->g_1778 p_2883->g_718 p_2883->g_719 p_2883->g_670 p_2883->g_155 p_2883->g_1653 hip_const_8 p_2883->g_678 p_2883->g_1107 p_2883->g_1980 hip_const_4 hip_const_10 p_2883->g_93 p_2883->g_205 p_2883->g_1179 p_2883->g_1315 hip_const_6 p_2883->g_159 hip_const_15 p_2883->g_190 p_2883->g_194 hip_const_13 hip_const_14 p_2883->g_119 hip_const_3 p_2883->g_138 hip_const_5 p_2883->g_272 p_2883->g_360 p_2883->g_367 p_2883->g_389 p_2883->g_106 p_2883->g_384 p_2883->g_244 p_2883->g_264 p_2883->g_91 p_2883->g_364 p_2883->g_519 hip_const_16 p_2883->g_222 p_2883->g_552 p_2883->g_1793 p_2883->g_2050 p_2883->g_1335 p_2883->g_2067 p_2883->g_2151 p_2883->g_1981 p_2883->g_1731 p_2883->g_1024 p_2883->g_2003 p_2883->g_2281 p_2883->g_839 p_2883->g_2425 p_2883->g_1397 hip_const_9 p_2883->g_1901 p_2883->g_2495 p_2883->g_2512 p_2883->g_2513 p_2883->g_2527 p_2883->g_2530 p_2883->g_2533 p_2883->g_2534 p_2883->g_160 p_2883->g_982 p_2883->g_309 p_2883->g_2427 p_2883->g_489 p_2883->g_647 p_2883->g_1193 p_2883->g_2761 p_2883->g_58 p_2883->g_2784 p_2883->g_2787 p_2883->g_1358 p_2883->g_1359 p_2883->g_2762 p_2883->g_1023 p_2883->g_2814 p_2883->g_2822 p_2883->g_2853 p_2883->g_2855 p_2883->g_2862 p_2883->g_2868 p_2883->g_730
 * writes: p_2883->g_749 p_2883->g_244 p_2883->g_1392 p_2883->g_222 p_2883->g_1182 p_2883->g_817 p_2883->g_903 p_2883->g_861 p_2883->g_518 p_2883->g_1513 p_2883->g_1397 p_2883->g_1793 p_2883->g_670 p_2883->g_192 p_2883->g_1315 p_2883->g_762 p_2883->g_155 p_2883->g_93 p_2883->g_1778 p_2883->g_1066 p_2883->g_309 p_2883->g_1107 p_2883->g_1980 p_2883->g_1847 p_2883->g_2050 p_2883->g_1543 p_2883->g_163 p_2883->g_194 p_2883->g_197 p_2883->g_205 p_2883->g_364 p_2883->g_91 p_2883->g_384 p_2883->g_519 p_2883->g_552 p_2883->g_58 p_2883->g_1049 p_2883->g_1335 p_2883->g_119 p_2883->g_2067 p_2883->g_2003 p_2883->g_1636 p_2883->g_2311 p_2883->g_839 p_2883->g_2425 p_2883->g_2281 p_2883->g_360 p_2883->g_390 p_2883->g_1359 p_2883->g_2141
 */
__device__ uint32_t  func_1(struct S0 * p_2883)
{ /* block id: 0 */
    uint32_t l_21 = 0x28784865L;
    int32_t *l_1859 = nullptr;
    int32_t l_1860[6][6] = {{(-1L), 2L, (-1L), 0x468942CFL, 9L, (-8L)}, {(-1L), 2L, (-1L), 0x468942CFL, 9L, (-8L)}, {(-1L), 2L, (-1L), 0x468942CFL, 9L, (-8L)}, {(-1L), 2L, (-1L), 0x468942CFL, 9L, (-8L)}, {(-1L), 2L, (-1L), 0x468942CFL, 9L, (-8L)}, {(-1L), 2L, (-1L), 0x468942CFL, 9L, (-8L)}};
    __shared__ int32_t **l_2483;
    l_2483 = &p_2883->g_2425;
    char2 l_2775 = make_char2(6L, (-1L));
    uint32_t *l_2850 = nullptr;
    // attempting a hip shared for loop
    __shared__ uint32_t *l_2851[3];
    for (int i = 0; i < 3; i++)
        l_2851[i] = nullptr;
    int32_t l_2852 = 0xFA59307BL;
    uint32_t l_2854 = 0UL;
    __shared__ short2 l_2856;
    l_2856 = make_short2(0xD1F9L, 0xDAAEL);
    short1 l_2857 = make_short1(0x046BL);
    __shared__ short3 l_2863;
    l_2863 = make_short3(0x362EL, (-1L), 0x362EL);
    uint8_t **l_2871 = &p_2883->g_553;
    uint8_t ***l_2872[4];
    uint8_t **l_2873 = &p_2883->g_553;
    uint32_t l_2874 = 0UL;
    int64_t l_2875 = (-3L);
    int32_t *l_2876 = &hip_const_12;
    int32_t *l_2877 = &hip_const_11;
    int32_t *l_2878 = nullptr;
    int32_t l_2879 = 0x87727009L;
    int16_t l_2880 = (-1L);
    int32_t l_2881 = 1L;
    int64_t l_2882[10] = {(-9L), 0xAC73DA63E426A69DLL, (-9L), 0xAC73DA63E426A69DLL, (-9L), 0xAC73DA63E426A69DLL, (-9L), 0xAC73DA63E426A69DLL, (-9L), 0xAC73DA63E426A69DLL};
    int i, j;
    for (int i = 0; i < 3; i++)
        l_2851[i] = nullptr;
    for (int i = 0; i < 4; i++)
        l_2872[i] = &l_2871;
    (*l_2483) = func_2(func_8((((*l_2483) = func_13(p_2883->g_18, (safe_lshift_func_uint32_t_u_u((((hip_const_18 && (l_21 && func_22(l_21, p_2883))) , (*p_2883->g_1685)) != (l_21 , (l_1859 = nullptr))), p_2883->g_1506.z)), l_1860[1][4], l_1860[1][4], p_2883)) == &hip_const_12), p_2883->g_1901.y, l_21, l_1860[1][4], p_2883), l_1860[0][5], l_1860[1][4], &hip_const_11, l_2775.y, p_2883);
    l_2881 &= (safe_div_func_int8_t_s_s(((!0x80L) < ((safe_lshift_func_int32_t_s_u((safe_add_func_uint32_t_u_u((p_2883->g_2141.x = (+(1UL && (safe_mod_func_int64_t_s_s((((l_2852 = (safe_rshift_func_int32_t_s_u(1L, (**l_2483)))) <= ((make_int2(p_2883->g_2853.z, p_2883->g_2853.z) ^ make_int2(0x3E5C761AL, ((l_2854 |= (**l_2483)) == ((make_short1(p_2883->g_2855.x) ^ ((make_short1(l_2856.x) ^ make_short1(l_2857.x))))).x)))).x) > (((0xE8L || (safe_mod_func_int32_t_s_s((+(((((safe_mul(make_short4(p_2883->g_2862.z, p_2883->g_2862.z, p_2883->g_2862.z, p_2883->g_2862.z), make_short4(l_2863.z, l_2863.z, l_2863.z, l_2863.z)))).y || (safe_sub_func_uint32_t_u_u((**l_2483), (l_2879 ^= (safe_mul_func_int64_t_s_s(((make_ushort3(p_2883->g_2868.z, p_2883->g_2868.z, p_2883->g_2868.z).x >= (((((**p_2883->g_1358) == (l_2873 = l_2871)) ^ 0L) == 0xAF8C23159F6313EBLL) < 65535UL)) ^ l_2874), l_2875)))))) , (****p_2883->g_2761)) <= 0x0BL)), 1L))) < (**l_2483)) , (**l_2483))), p_2883->g_2784.y))))), (*l_2876))), p_2883->g_730.x)) & l_2880)), 0x0EL));
    return l_2882[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2883->g_58 p_2883->g_2784 p_2883->g_2787 p_2883->g_1358 p_2883->g_1359 p_2883->g_2761 p_2883->g_2762 p_2883->g_1023 p_2883->g_1024 hip_const_14 p_2883->g_364 p_2883->g_1653 p_2883->g_309 p_2883->g_1685 p_2883->g_1981 p_2883->g_749 hip_const_6 p_2883->g_93 hip_const_8 p_2883->g_159 hip_const_15 p_2883->g_190 p_2883->g_194 hip_const_13 hip_const_2 p_2883->g_119 hip_const_10 hip_const_3 hip_const_12 p_2883->g_138 p_2883->g_192 hip_const_5 p_2883->g_272 p_2883->g_205 p_2883->g_360 p_2883->g_367 p_2883->g_389 hip_const_18 p_2883->g_106 hip_const_11 p_2883->g_384 p_2883->g_244 p_2883->g_264 p_2883->g_91 p_2883->g_519 hip_const_16 p_2883->g_222 p_2883->g_552 p_2883->g_1778 p_2883->g_718 p_2883->g_1980 p_2883->g_2427 p_2883->g_489 p_2883->g_647 p_2883->g_1193 p_2883->g_18 p_2883->g_2814 p_2883->g_2822
 * writes: p_2883->g_58 p_2883->g_1513 p_2883->g_1359 p_2883->g_309 p_2883->g_119 p_2883->g_1397 p_2883->g_839 p_2883->g_817 p_2883->g_93 p_2883->g_163 p_2883->g_194 p_2883->g_197 p_2883->g_205 p_2883->g_244 p_2883->g_364 p_2883->g_91 p_2883->g_384 p_2883->g_222 p_2883->g_519 p_2883->g_552 p_2883->g_1182 p_2883->g_360 p_2883->g_390 p_2883->g_2281
 */
__device__ int32_t * func_2(int32_t * p_3, uint8_t  p_4, int64_t  p_5, int32_t * p_6, int32_t  p_7, struct S0 * p_2883)
{ /* block id: 1012 */
    __shared__ uint64_t l_2776;
    l_2776 = 0xEAC01610E5D13D96LL;
    uint64_t *l_2777 = nullptr;
    uint64_t *l_2778 = &p_2883->g_58[3][2][0];
    int64_t *l_2785 = &p_2883->g_1513;
    __shared__ int1 l_2786;
    l_2786 = make_int1(0xCDFA0883L);
    int16_t ***l_2789 = &p_2883->g_2788;
    uint8_t ***l_2790 = &p_2883->g_552;
    uint16_t ****l_2803 = &p_2883->g_719;
    uint32_t *l_2804 = &hip_const_9;
    uint32_t *l_2805 = &hip_const_9;
    uint32_t *l_2806 = nullptr;
    __shared__ uint32_t *l_2807;
    l_2807 = nullptr;
    __shared__ uint32_t *l_2808;
    l_2808 = &hip_const_9;
    uint32_t *l_2809[10] = {nullptr, &hip_const_3, nullptr, nullptr, &hip_const_3, nullptr, &hip_const_3, nullptr, nullptr, &hip_const_3};
    int32_t l_2810 = 0x153136FDL;
    int32_t *l_2811 = nullptr;
    int1 l_2819 = make_int1(0x95F6D465L);
    uint16_t *l_2825 = &hip_const_6[2];
    uint16_t *l_2826 = &p_2883->g_519[0];
    int8_t *l_2829 = &hip_const_16;
    short2 l_2834 = make_short2(0x7DCDL, 0x3840L);
    uint32_t l_2839[3][4] = {{0x1F301FCDL, 3UL, 1UL, 1UL}, {0x1F301FCDL, 3UL, 1UL, 1UL}, {0x1F301FCDL, 3UL, 1UL, 1UL}};
    int i, j;
    l_2811 = (((*l_2778) &= l_2776) , func_8((((+(safe_mod_func_int32_t_s_s((p_7 = (safe_rshift_func_uint64_t_u_u(18446744073709551610UL, ((((+(safe_unary_minus_func_uint64_t_u((((*l_2785) = make_long4(p_2883->g_2784.y, p_2883->g_2784.y, p_2883->g_2784.y, p_2883->g_2784.y).w) , ((*l_2778) = (make_uchar1(1UL).x < ((make_int2(l_2786.x, l_2786.x).x , p_2883->g_2787) == l_2789))))))) , (l_2790 == ((*p_2883->g_1358) = (*p_2883->g_1358)))) != ((~(l_2810 = (safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(p_7, ((((safe_mod_func_uint64_t_u_u(p_4, ((safe_rshift_func_uint64_t_u_s((l_2803 != nullptr), l_2786.x)) & l_2786.x))) && (-1L)) != 0x23L) == p_7))) & p_7), (****p_2883->g_2761))), 1UL)), l_2776)))) && (-1L))) || 253UL)))), l_2786.x))) , l_2776) , l_2786.x), l_2786.x, l_2776, l_2786.x, p_2883));
    l_2819.x = (safe_sub_func_int32_t_s_s(0x96B303E4L, (make_char1(p_2883->g_2814.x).x , (safe_rshift_func_int64_t_s_u(l_2776, ((p_2883->g_364.w = ((safe_sub_func_int32_t_s_s((*p_6), make_int4(l_2819.x, l_2819.x, l_2819.x, l_2819.x).w)) || ((p_7 , 0x36C92C1CL) && (safe_add_func_uint64_t_u_u((1L ^ ((((make_char3(4L, 0L, 0x64L) ^ make_char3(p_2883->g_2822.y, p_2883->g_2822.y, p_2883->g_2822.y))).x & 0xA0L) , (safe_div_func_uint16_t_u_u(((*l_2826) = l_2819.x), (safe_rshift_func_uint64_t_u_s(0x1AE3D78D20A8D6BCLL, p_4)))))), p_7))))) < 0x80L))))));
    l_2819.x = (((safe_mod_func_uint32_t_u_u(make_uint2(p_4, (safe_mul_func_uint64_t_u_u(((*l_2778) ^= p_2883->g_2814.x), make_long3(((p_5 ^ (l_2786.x >= p_7)) < (p_2883->g_91 |= (p_5 >= (make_short2(l_2834.y, l_2834.y).x , ((safe_rshift_func_int8_t_s_u(((safe_mul_func_uint64_t_u_u(0x53F53A3F2B3FD339LL, (nullptr != l_2790))) & p_4), p_4)) <= l_2839[1][2]))))), p_4, 0L).z))).x, (*p_6))) && p_5) , (*p_6));
    return &hip_const_8[0][6][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2883->g_2495 p_2883->g_1513 p_2883->g_2512 p_2883->g_2513 p_2883->g_2527 p_2883->g_2530 p_2883->g_2533 p_2883->g_2534 p_2883->g_190 p_2883->g_160 p_2883->g_1024 hip_const_14 p_2883->g_982 p_2883->g_364 p_2883->g_1653 p_2883->g_309 p_2883->g_119 p_2883->g_1685 p_2883->g_1981 p_2883->g_749 hip_const_6 p_2883->g_93 hip_const_8 p_2883->g_159 hip_const_15 p_2883->g_194 hip_const_13 hip_const_2 hip_const_10 hip_const_3 hip_const_12 p_2883->g_138 p_2883->g_192 hip_const_5 p_2883->g_272 p_2883->g_205 p_2883->g_360 p_2883->g_367 p_2883->g_389 hip_const_18 p_2883->g_106 hip_const_11 p_2883->g_384 p_2883->g_244 p_2883->g_264 p_2883->g_91 p_2883->g_519 hip_const_16 p_2883->g_222 p_2883->g_552 p_2883->g_1778 p_2883->g_718 p_2883->g_1980 p_2883->g_2427 p_2883->g_489 p_2883->g_647 p_2883->g_1193 p_2883->g_2761 p_2883->g_18
 * writes: p_2883->g_1513 p_2883->g_2281 p_2883->g_309 p_2883->g_119 p_2883->g_1397 p_2883->g_839 p_2883->g_817 p_2883->g_93 p_2883->g_163 p_2883->g_194 p_2883->g_197 p_2883->g_205 p_2883->g_244 p_2883->g_364 p_2883->g_91 p_2883->g_384 p_2883->g_222 p_2883->g_519 p_2883->g_552 p_2883->g_1182 p_2883->g_58 p_2883->g_360 p_2883->g_390
 */
__device__ int32_t * func_8(int8_t  p_9, int32_t  p_10, uint16_t  p_11, uint8_t  p_12, struct S0 * p_2883)
{ /* block id: 891 */
    int32_t *l_2484[4][10] = {{&hip_const_8[1][0][7], nullptr, &p_2883->g_1107, nullptr, nullptr, nullptr, &p_2883->g_1107, nullptr, &hip_const_8[1][0][7], nullptr}, {&hip_const_8[1][0][7], nullptr, &p_2883->g_1107, nullptr, nullptr, nullptr, &p_2883->g_1107, nullptr, &hip_const_8[1][0][7], nullptr}, {&hip_const_8[1][0][7], nullptr, &p_2883->g_1107, nullptr, nullptr, nullptr, &p_2883->g_1107, nullptr, &hip_const_8[1][0][7], nullptr}, {&hip_const_8[1][0][7], nullptr, &p_2883->g_1107, nullptr, nullptr, nullptr, &p_2883->g_1107, nullptr, &hip_const_8[1][0][7], nullptr}};
    uint8_t l_2485 = 0x32L;
    int8_t l_2488 = 8L;
    uint32_t l_2489 = 18446744073709551614UL;
    int2 l_2494 = make_int2(0xD6165823L, (-8L));
    int16_t l_2497 = 0x8CD8L;
    __shared__ ulong4 l_2522;
    l_2522 = make_ulong4(0x7C8535615F762804LL, 0xF20E9CB7FB8CC385LL, 0x7C8535615F762804LL, 0xF20E9CB7FB8CC385LL);
    // attempting a hip shared for loop
    __shared__ int8_t l_2553[9];
    for (int i = 0; i < 9; i++)
        l_2553[i] = 1L;
    int8_t ***l_2555 = &p_2883->g_1023;
    __shared__ int8_t ****l_2554;
    l_2554 = &l_2555;
    __shared__ uint64_t l_2568;
    l_2568 = 18446744073709551615UL;
    uint32_t l_2574[4];
    short3 l_2593 = make_short3(0x6A06L, 1L, 0x6A06L);
    __shared__ uint16_t l_2607;
    l_2607 = 8UL;
    uint16_t ****l_2623 = &p_2883->g_719;
    int32_t **l_2631 = &l_2484[2][0];
    int32_t *l_2670 = nullptr;
    int32_t **l_2669 = &l_2670;
    int32_t l_2677 = 0x3E97BBABL;
    __shared__ int64_t ****l_2685;
    l_2685 = nullptr;
    int i, j;
    for (int i = 0; i < 4; i++)
        l_2574[i] = 1UL;
    l_2485++;
    l_2489--;
    if ((~((safe_div(make_int3(l_2494.x, l_2494.x, l_2494.x), make_int3(p_2883->g_2495.x, p_2883->g_2495.x, p_2883->g_2495.x)))).y))
    { /* block id: 894 */
        int16_t l_2496[5] = {0x4633L, 0x528DL, 0x4633L, 0x528DL, 0x4633L};
        int32_t l_2498 = 0L;
        int32_t l_2499 = 0x79417819L;
        int32_t l_2500 = 1L;
        int32_t l_2501 = 0x2B2F6816L;
        int32_t l_2502 = 7L;
        int32_t l_2503[1][5][7] = {{{(-1L), 0x21C64C17L, 1L, 0x21C64C17L, (-1L), 0xADB3EBCFL, (-1L)}, {(-1L), 0x21C64C17L, 1L, 0x21C64C17L, (-1L), 0xADB3EBCFL, (-1L)}, {(-1L), 0x21C64C17L, 1L, 0x21C64C17L, (-1L), 0xADB3EBCFL, (-1L)}, {(-1L), 0x21C64C17L, 1L, 0x21C64C17L, (-1L), 0xADB3EBCFL, (-1L)}, {(-1L), 0x21C64C17L, 1L, 0x21C64C17L, (-1L), 0xADB3EBCFL, (-1L)}}};
        uint32_t l_2504[1];
        int i, j, k;
        for (int i = 0; i < 1; i++)
            l_2504[i] = 0x39D25F00L;
        ++l_2504[0];
    }
    else
    { /* block id: 896 */
        __shared__ uint32_t l_2509;
        l_2509 = 0UL;
        int16_t *l_2510 = &p_2883->g_2281;
        int32_t *l_2551[9][8] = {{&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}, {&p_2883->g_1663, nullptr, &p_2883->g_1663, &p_2883->g_839, nullptr, &p_2883->g_839, nullptr, &p_2883->g_1663}};
        int32_t **l_2552 = &l_2551[6][4];
        int32_t l_2556[6][3][7] = {{{0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}}, {{0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}}, {{0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}}, {{0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}}, {{0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}}, {{0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}, {0L, 0x3411CAE5L, 1L, 0x2F157B9BL, 0x3A412393L, 0x8FAA3147L, (-4L)}}};
        int16_t *l_2557 = &p_2883->g_309;
        int64_t *l_2692 = &p_2883->g_1513;
        short3 l_2718 = make_short3(2L, 0L, 2L);
        int64_t ***l_2726[6] = {&p_2883->g_389, &p_2883->g_389, &p_2883->g_389, &p_2883->g_389, &p_2883->g_389, &p_2883->g_389};
        short1 l_2739 = make_short1(0x526BL);
        __shared__ int32_t l_2773;
        l_2773 = (-1L);
        uint16_t *l_2774 = &p_2883->g_519[1];
        int i, j, k;
        for (p_2883->g_1513 = (-27); (p_2883->g_1513 < 9); p_2883->g_1513 = safe_add_func_int16_t_s_s(p_2883->g_1513, 2))
        { /* block id: 899 */
            int16_t **l_2511 = &l_2510;
            if (l_2509)
                break;
            p_10 = (((*l_2511) = l_2510) != nullptr);
            if (p_12)
                break;
            if (l_2509)
                continue;
        }
        p_10 = ((((make_uint4(p_2883->g_2512.y, p_2883->g_2512.y, p_2883->g_2512.y, p_2883->g_2512.y) | make_uint4(p_2883->g_2513.x, p_2883->g_2513.x, p_2883->g_2513.x, p_2883->g_2513.x))).y >= (((*l_2557) |= ((safe_mul_func_int32_t_s_s((l_2556[5][2][2] = (safe_lshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(p_10, (((make_ulong3(l_2522.z, l_2522.z, l_2522.z).z ^ ((((safe_lshift_func_int32_t_s_u(((safe_mod(make_int1(p_2883->g_2527.x), ((safe_sub(make_int1(p_2883->g_2530.y), ((safe_add(make_int1(p_2883->g_2533.x), ((make_int1((((*l_2510) = make_short1(p_2883->g_2534.x).x) != ((*p_2883->g_190) != ((safe_mul_func_uint32_t_u_u((p_10 ^ (safe_add_func_int16_t_s_s((((safe_div(make_uchar3((safe_rshift_func_int16_t_s_s(((((safe_sub_func_int8_t_s_s(p_10, ((safe_add_func_uint8_t_u_u(p_12, (safe_mul_func_uint64_t_u_u(l_2509, ((safe_mul_func_int32_t_s_s((((((*l_2552) = l_2551[6][4]) != nullptr) ^ (*p_2883->g_1024)) && p_12), p_12)) , l_2509))))) || p_2883->g_982.w))) , (*p_2883->g_1024)) <= l_2509) , p_10), 4)), 8UL, 0x95L), make_uchar3(251UL, 251UL, 251UL)))).y || 5L), 0L))), l_2553[5])) , nullptr)))) ^ make_int1(0x236DCE20L)))))))))))).x, p_9)) | l_2509) < 0x81L) < p_2883->g_364.x)) , l_2554) == nullptr))), (*p_2883->g_1024)))), p_2883->g_1653.y)) , l_2556[3][1][4])) ^ 7L)) , 0x85A56DFDL);
        for (p_2883->g_119 = 0; (p_2883->g_119 != 19); ++p_2883->g_119)
        { /* block id: 913 */
            int32_t l_2560[3];
            int16_t l_2565 = 0xCC0DL;
            char3 l_2638 = make_char3((-6L), 1L, (-6L));
            int1 l_2658 = make_int1(0x3CE7AF26L);
            int4 l_2674 = make_int4(0x3BF34161L, 0x3BB39CF8L, 0x3BF34161L, 0x3BB39CF8L);
            int64_t ***l_2689[8] = {nullptr, nullptr, &p_2883->g_389, nullptr, nullptr, &p_2883->g_389, nullptr, nullptr};
            int64_t ****l_2688[9][3];
            int4 l_2707 = make_int4(1L, (-1L), 1L, (-1L));
            int32_t l_2737[1];
            int i, j;
            for (int i = 0; i < 3; i++)
                l_2560[i] = (-2L);
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 3; j++)
                    l_2688[i][j] = &l_2689[3];
            }
            for (int i = 0; i < 1; i++)
                l_2737[i] = 1L;
            if (l_2560[2])
            { /* block id: 914 */
                return &hip_const_12;
            }
            else
            { /* block id: 916 */
                int4 l_2562 = make_int4(0L, 1L, 0L, 1L);
                int32_t l_2564 = 8L;
                int32_t l_2567 = 0x8142A7B5L;
                int32_t l_2573 = 0x86287347L;
                int64_t ***l_2582 = &p_2883->g_389;
                __shared__ int64_t ****l_2581;
                l_2581 = &l_2582;
                int32_t *l_2608 = &l_2567;
                int32_t *l_2610 = nullptr;
                uint8_t l_2622 = 0xA5L;
                int8_t l_2624 = 1L;
                long1 l_2646 = make_long1(0xA42ADD86085F9884LL);
                uint64_t l_2678 = 0xCE37B468717CB7AELL;
                int i;
                for (p_2883->g_1397 = 0; (p_2883->g_1397 <= 4); p_2883->g_1397 += 1)
                { /* block id: 919 */
                    int32_t l_2563 = 1L;
                    int32_t l_2571 = (-1L);
                    int32_t l_2572 = 0xA462D644L;
                    for (p_2883->g_839 = 0; (p_2883->g_839 <= 2); p_2883->g_839 += 1)
                    { /* block id: 922 */
                        int32_t l_2561 = 0x56EDCA2FL;
                        int32_t l_2566 = 0x0E4B8A98L;
                        int i, j, k;
                        --l_2568;
                        l_2574[3]++;
                        (*p_2883->g_1685) = ((safe_unary_minus_func_uint32_t_u(0xDF7F1028L)) , l_2484[2][8]);
                        (*p_2883->g_1685) = &l_2556[4][2][3];
                    }
                    for (l_2563 = 0; (l_2563 <= 4); l_2563 += 1)
                    { /* block id: 930 */
                        uint64_t l_2578 = 18446744073709551615UL;
                        uint32_t *l_2604 = &hip_const_9;
                        uint32_t *l_2605 = nullptr;
                        __shared__ int3 l_2606;
                        l_2606 = make_int3((-3L), 0x7989F800L, (-3L));
                        int i;
                        l_2608 = func_61(l_2578, (make_char3((-4L), 1L, ((((safe_lshift_func_uint64_t_u_u(((l_2581 != nullptr) & (!(p_9 , (l_2563 | ((safe_lshift_func_uint16_t_u_s((safe_add_func_int8_t_s_s(((+(safe_rshift_func_uint64_t_u_u((l_2564 = (((((safe_add(make_uint4(((((**p_2883->g_1023) != (make_short1(l_2593.z).x < (p_12 ^ (safe_add_func_int64_t_s_s((make_int3((safe_add_func_int16_t_s_s((safe_mod_func_int8_t_s_s(make_char2((safe_lshift_func_int32_t_s_s(((safe_add_func_int32_t_s_s(((l_2606.z = (l_2567 ^= ((l_2556[2][2][6] >= 0xCFL) && p_2883->g_2530.x))) <= 0xFCDDCEB0L), 1L)) & 246UL), l_2571)), p_11).y, 0x4BL)), 0xD71EL)), 0L, l_2556[4][2][5]).x <= 0x9AF25279L), p_11))))) <= p_2883->g_360.y) == l_2562.x), hip_const_16, l_2565, 0x9509D908L), make_uint4(0x988A0919L, 0x988A0919L, 0x988A0919L, 0x988A0919L)))) & make_uint4(4294967288UL, 4294967288UL, 4294967288UL, 4294967288UL))).w || p_11)), p_2883->g_1663))) && l_2606.z), 1UL)), 1)) , p_11))))), p_2883->g_264.x)) | p_2883->g_1388.z) >= l_2563) , p_10)).x <= l_2607), (*p_2883->g_1981), &l_2607, p_2883);
                    }
                }
                for (p_2883->g_1182 = 0; (p_2883->g_1182 <= 0); p_2883->g_1182 += 1)
                { /* block id: 939 */
                    int32_t *l_2609 = &l_2556[3][2][0];
                    ushort1 l_2619 = make_ushort1(0UL);
                    uint16_t *l_2620 = nullptr;
                    uint16_t *l_2621[6][2] = {{nullptr, &p_2883->g_1049}, {nullptr, &p_2883->g_1049}, {nullptr, &p_2883->g_1049}, {nullptr, &p_2883->g_1049}, {nullptr, &p_2883->g_1049}, {nullptr, &p_2883->g_1049}};
                    int32_t l_2653 = (-1L);
                    __shared__ int32_t l_2666;
                    l_2666 = 0x92C8B4D1L;
                    __shared__ int1 l_2673;
                    l_2673 = make_int1((-10L));
                    int64_t *l_2690 = nullptr;
                    int i, j;
                    l_2610 = l_2609;
                    if ((~(safe_mul_func_uint8_t_u_u(p_11, (safe_lshift_func_int32_t_s_s(((*l_2610) ^= ((p_12 == (0x0431L && 0x2AF5L)) < (((((safe_rshift_func_int64_t_s_u((safe_mod_func_uint32_t_u_u((0x1439BC6BFEFD4659LL > 0x22395C97BDE3BA42LL), ((((((l_2622 = make_ushort4(l_2619.x, l_2619.x, l_2619.x, l_2619.x).y) , (*p_2883->g_1778)) == l_2623) & (((p_11 > 0xF150L) < 1UL) | l_2624)) | 1UL) || l_2560[2]))), 15)) , nullptr) != nullptr) && 0x71D6L) || 18446744073709551615UL))), p_10))))))
                    { /* block id: 943 */
                        uint8_t *l_2639 = &p_2883->g_1193[4][0];
                        uint32_t *l_2640[7][3][3] = {{{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}}};
                        int64_t *l_2651 = &p_2883->g_1513;
                        int32_t *l_2652 = nullptr;
                        uint64_t *l_2654 = nullptr;
                        uint64_t *l_2655 = &p_2883->g_58[3][2][0];
                        int i, j, k;
                        (*p_2883->g_1685) = func_61((safe_add_func_int64_t_s_s(1L, make_ulong3(0xABB6E27F124AD882LL, ((p_2883->g_2513.y = (p_2883->g_205.y = ((make_short4(1L, (safe_mul_func_uint32_t_u_u(p_2883->g_1418.x, 0xFA7E1A0EL)), (-1L), 0xD2C7L).y < (safe_lshift_func_int16_t_s_s((((*l_2557) = ((l_2631 = &l_2484[3][1]) == ((safe_lshift_func_int16_t_s_u(((*l_2510) |= ((safe_mul_func_int32_t_s_s((*l_2609), (safe_rshift_func_int64_t_s_s(p_11, p_12)))) <= (((l_2560[1] = ((&p_2883->g_91 == ((make_char2(l_2638.y, l_2638.y).y < ((*l_2639) = (p_10 || l_2556[1][1][6]))) , &l_2565)) & l_2556[0][0][2])) & p_2883->g_474.x) == 0xA7D81404A31F3E7CLL))), p_12)) , nullptr))) != 5L), l_2556[0][0][2]))) == 1UL))) , p_2883->g_770.y), l_2556[5][2][2]).y)), p_10, (**p_2883->g_1980), l_2621[2][0], p_2883);
                        l_2666 &= (safe_mod_func_uint16_t_u_u(((((safe_mod(make_long1(p_2883->g_2645.x), make_long1(l_2646.x)))).x <= (safe_lshift_func_uint32_t_u_u(((safe_mul_func_int64_t_s_s(((*l_2651) = ((*l_2609) = l_2556[5][2][2])), ((&p_2883->g_192 == ((*l_2552) = l_2652)) || ((p_12 , 0xDC3309181C3ECEDELL) < ((*l_2655) = l_2653))))) && ((p_2883->g_360.y = (safe_lshift_func_int32_t_s_u(((make_int1(l_2658.x) ^ ((make_int1((((*l_2639) = (((safe_mod_func_uint8_t_u_u(p_10, (~((safe_mod_func_uint64_t_u_u((safe_add_func_int16_t_s_s((make_ushort1(0x7002L).x , 4L), (safe_unary_minus_func_uint64_t_u(((p_12 , p_11) < 6UL))))), p_11)) && 65535UL)))) > 1UL) || 0x514D4493L)) != (*l_2609))) ^ make_int1(1L))))).x, p_10))) > 0L)), p_9))) , 0UL), (-3L)));
                        l_2677 = ((safe_add_func_uint32_t_u_u((p_2883->g_360.x = (make_uchar2(0x35L, (l_2669 == (p_2883->g_2671 = &l_2551[0][4]))).y != (p_9 != p_12))), ((make_int3(l_2673.x, l_2673.x, l_2673.x) ^ make_int3(l_2674.y, l_2674.y, l_2674.y))).z)) >= ((make_long3(p_2883->g_2675.x, p_2883->g_2675.x, p_2883->g_2675.x) & make_long3(p_2883->g_2676.x, p_2883->g_2676.x, p_2883->g_2676.x))).z);
                    }
                    else
                    { /* block id: 962 */
                        int64_t *l_2691 = &p_2883->g_1513;
                        char1 l_2693 = make_char1(0L);
                        int16_t **l_2696 = &p_2883->g_1793;
                        int16_t ***l_2695 = &l_2696;
                        int16_t ****l_2694 = &l_2695;
                        int64_t ***l_2712 = &p_2883->g_389;
                        int32_t l_2713[3][10][5] = {{{(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}}, {{(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}}, {{(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}, {(-1L), 0xD920AFF7L, 0xBF0C1DBCL, 5L, 7L}}};
                        int32_t l_2714 = 0x74DD1B42L;
                        __shared__ uint16_t *l_2715;
                        l_2715 = &hip_const_6[1];
                        int i, j, k;
                        (*p_2883->g_1685) = nullptr;
                        l_2678--;
                        (*l_2694) = (((safe_add_func_int64_t_s_s((safe_mul_func_uint32_t_u_u(p_11, (l_2685 != ((p_2883->g_2427.y >= ((safe_rshift_func_int8_t_s_s((*p_2883->g_1024), 1)) , p_11)) , ((0xAFL & 1L) , l_2688[6][2]))))), (((l_2691 = ((***l_2581) = l_2690)) == l_2692) || l_2693.x))) <= (*l_2609)) , nullptr);
                        (*p_2883->g_1685) = func_61((make_short4((~(safe_lshift_func_int32_t_s_u(((*l_2610) = (safe_sub_func_uint64_t_u_u((((((l_2560[2] = (nullptr == l_2621[2][1])) && (((*p_2883->g_389) != (*p_2883->g_389)) , (safe_mod_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(p_11, ((((l_2714 = (l_2713[1][7][4] |= (safe_mul_func_int32_t_s_s(((make_int1(l_2707.x) & make_int1((safe_add_func_uint8_t_u_u((18446744073709551614UL > ((safe_lshift_func_uint16_t_u_s((&p_2883->g_389 != l_2712), 1)) || ((((((**p_2883->g_1359) == nullptr) && p_12) | 0xC13D7EBEA15895A1LL) < p_12) && l_2509))), 0L))))).x, 6L)))) <= (*l_2610)) ^ (*l_2609)) >= p_11))), (-2L))))) > p_9) , l_2556[4][1][0]) | p_9), 0UL))), p_12))), 0xDD86L, 0x6E17L, (-7L)).y == p_11), p_2883->g_489.w, (*p_2883->g_1981), l_2715, p_2883);
                    }
                    if (l_2509)
                        break;
                    for (l_2488 = 0; (l_2488 <= 0); l_2488 += 1)
                    { /* block id: 977 */
                        (*p_2883->g_1685) = nullptr;
                    }
                }
            }
            if ((safe_div_func_int16_t_s_s(p_11, 0xF459L)))
            { /* block id: 982 */
                int64_t ***l_2727 = &p_2883->g_389;
                short3 l_2730 = make_short3(0x87C5L, 0xFC0BL, 0x87C5L);
                int i;
                p_10 ^= (l_2718.x = ((make_int1(6L) ^ make_int1(0x76C7BB1FL))).x);
                for (p_10 = 0; (p_10 < (-6)); p_10 = safe_sub_func_int32_t_s_s(p_10, 6))
                { /* block id: 987 */
                    int1 l_2725 = make_int1(0L);
                    int64_t ***l_2728 = &p_2883->g_389;
                    uint64_t *l_2729 = nullptr;
                    uint16_t *l_2738 = &p_2883->g_519[1];
                    __shared__ uint32_t l_2754;
                    l_2754 = 9UL;
                    int i;
                    l_2658.x |= (((safe_mul_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u((!(p_2883->g_1182 = (l_2725.x >= ((l_2727 = l_2726[1]) != l_2728)))), l_2718.x)) != (make_short2(l_2730.x, l_2730.x).x , (safe_mul_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((*l_2738) |= l_2737[0]), 65535UL)), (make_short1(l_2739.x).x , ((p_9 & p_12) ^ (safe_div_func_uint64_t_u_u((safe_mod_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(((safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(p_12, 6)), p_11)) > p_12), p_10)), 1L)), p_9)), p_10)))))) == l_2739.x) , 0xBCCE2226L) < 0UL), l_2754)))), p_2883->g_647.x)) | l_2730.x) > (*p_2883->g_1024));
                }
            }
            else
            { /* block id: 993 */
                int32_t *l_2758[9][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                __shared__ int8_t *l_2771;
                l_2771 = &hip_const_16;
                int8_t *l_2772[1][10] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                int i, j;
                for (p_2883->g_1513 = 16; (p_2883->g_1513 <= 29); ++p_2883->g_1513)
                { /* block id: 996 */
                    __shared__ ulong4 l_2757;
                    l_2757 = make_ulong4(0x1A738EA09BF8AFE4LL, 0xFA669B51CA288772LL, 0x1A738EA09BF8AFE4LL, 0xFA669B51CA288772LL);
                    int i;
                    if ((make_ulong1(l_2757.x).x , (((*l_2510) = 0x89F2L) == (-1L))))
                    { /* block id: 998 */
                        return l_2758[3][0];
                    }
                    else
                    { /* block id: 1000 */
                        if (p_10)
                            break;
                    }
                }
                (*p_2883->g_1685) = func_61((p_2883->g_1193[4][0] && 0x1989L), (safe_lshift_func_int8_t_s_u(((&l_2555 == p_2883->g_2761) < (((safe_lshift_func_uint32_t_u_s((l_2707.x && ((p_9 != (((l_2773 = ((l_2556[5][2][2] = (safe_mul_func_uint32_t_u_u(((&hip_const_18 == &l_2497) >= ((safe_div_func_int8_t_s_s((l_2707.x = (((safe_div_func_int16_t_s_s((((p_11 == p_11) && (-1L)) > hip_const_10[6][7]), p_11)) , 0x91207B6508AB7A2FLL) ^ p_11)), p_12)) != 6UL)), l_2560[2]))) && p_11)) > 4294967292UL) & p_2883->g_18)) && p_12)), 20)) < p_12) & 0xC855L)), l_2509)), l_2718.y, l_2774, p_2883);
            }
        }
    }
    return &hip_const_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_2883->g_155 p_2883->g_1653 hip_const_8 hip_const_12 p_2883->g_1513 hip_const_2 p_2883->g_678 p_2883->g_1685 p_2883->g_1107 p_2883->g_1980 hip_const_4 hip_const_10 p_2883->g_1847 p_2883->g_93 p_2883->g_205 p_2883->g_1179 p_2883->g_1315 p_2883->g_817 hip_const_6 p_2883->g_159 hip_const_15 p_2883->g_190 p_2883->g_194 hip_const_13 hip_const_14 p_2883->g_119 hip_const_3 p_2883->g_138 p_2883->g_192 hip_const_5 p_2883->g_272 p_2883->g_360 p_2883->g_367 p_2883->g_389 hip_const_11 hip_const_18 p_2883->g_106 p_2883->g_384 p_2883->g_244 p_2883->g_264 p_2883->g_91 p_2883->g_364 p_2883->g_519 hip_const_16 p_2883->g_222 p_2883->g_552 p_2883->g_1793 p_2883->g_2050 p_2883->g_1335 p_2883->g_2067 p_2883->g_2151 p_2883->g_1981 p_2883->g_749 p_2883->g_1731 p_2883->g_1024 p_2883->g_2003 p_2883->g_2281 p_2883->g_839 p_2883->g_2425 p_2883->g_1397 hip_const_9 p_2883->g_1778 p_2883->g_718 p_2883->g_719
 * writes: p_2883->g_155 p_2883->g_93 p_2883->g_1513 p_2883->g_1778 p_2883->g_1066 p_2883->g_309 p_2883->g_817 p_2883->g_1107 p_2883->g_1980 p_2883->g_1847 p_2883->g_2050 p_2883->g_1543 p_2883->g_1793 p_2883->g_163 p_2883->g_194 p_2883->g_197 p_2883->g_205 p_2883->g_244 p_2883->g_364 p_2883->g_91 p_2883->g_384 p_2883->g_222 p_2883->g_519 p_2883->g_552 p_2883->g_58 p_2883->g_1049 p_2883->g_1335 p_2883->g_119 p_2883->g_2067 p_2883->g_2003 p_2883->g_749 p_2883->g_1636 p_2883->g_1397 p_2883->g_2311 p_2883->g_839
 */
__device__ int32_t * func_13(int64_t  p_14, int64_t  p_15, int64_t  p_16, int32_t  p_17, struct S0 * p_2883)
{ /* block id: 636 */
    uint8_t *l_1861 = &p_2883->g_1193[4][0];
    int4 l_1862 = make_int4((-5L), 0xC81F578CL, (-5L), 0xC81F578CL);
    __shared__ int32_t *l_1869;
    l_1869 = &hip_const_12;
    int32_t *l_1870 = nullptr;
    __shared__ int32_t *l_1871;
    l_1871 = &hip_const_2;
    int32_t *l_1872 = nullptr;
    int32_t *l_1873 = nullptr;
    int32_t *l_1874 = &hip_const_12;
    int32_t l_1875 = 0xAF6D0F66L;
    uint32_t l_1880 = 18446744073709551611UL;
    int32_t l_1888 = 0x93CAA3D9L;
    uint4 l_1920 = make_uint4(0x143D4A13L, 4294967293UL, 0x143D4A13L, 4294967293UL);
    uint16_t **l_1941[4][4][1] = {{{&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}}, {{&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}}, {{&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}}, {{&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}, {&p_2883->g_160}}};
    uint32_t *l_1951 = &p_2883->g_749;
    uint32_t **l_1950 = &l_1951;
    int1 l_1995 = make_int1(0xEA5CD88FL);
    uint1 l_2142 = make_uint1(4294967286UL);
    int32_t *l_2170 = &hip_const_12;
    __shared__ uint16_t ****l_2171;
    l_2171 = &p_2883->g_719;
    ulong3 l_2187 = make_ulong3(0x721435A0674A3F38LL, 0UL, 0x721435A0674A3F38LL);
    __shared__ char3 l_2213;
    l_2213 = make_char3(0x09L, 0L, 0x09L);
    uint16_t l_2242 = 65535UL;
    int64_t ***l_2287[4][9][1] = {{{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}}};
    ulong4 l_2359 = make_ulong4(18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
    __shared__ long2 l_2366;
    l_2366 = make_long2(0x78C8CFC6677F1E95LL, 0x626A351C4A3604C4LL);
    int32_t l_2370 = (-1L);
    int32_t l_2371 = (-8L);
    int32_t l_2379 = 0x1917BBBFL;
    ushort2 l_2393 = make_ushort2(0xD871L, 0xB354L);
    uint32_t l_2479 = 0UL;
    int32_t *l_2482 = &p_2883->g_1107;
    int i, j, k;
    if ((((((make_ushort4(((((l_1861 == (l_1862.z , l_1861)) != ((p_2883->g_155.x++) <= (safe_div_func_int64_t_s_s((((p_2883->g_93 = p_2883->g_1653.z) | (hip_const_8[0][5][3] , (safe_mul_func_int32_t_s_s((l_1875 |= (make_ushort1(65535UL).x | l_1862.w)), ((p_16 <= (*l_1869)) | (safe_add_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((0L > p_14), p_15)), p_14))))))) ^ 0x41DC6A8FL), p_14)))) , nullptr) != nullptr), l_1880, 65535UL, (*l_1869)) ^ make_ushort4(0xA82BL, 0xA82BL, 0xA82BL, 0xA82BL))).z || p_17) , 1L) < 0xD5L))
    { /* block id: 640 */
        int32_t l_1881 = 0L;
        uint16_t *****l_1882 = &p_2883->g_718;
        uint8_t l_1892 = 0xD4L;
        int8_t *l_1895[5];
        int8_t l_1952 = 0x38L;
        uint8_t l_1953 = 252UL;
        int32_t *l_1979 = nullptr;
        long1 l_1994 = make_long1(0L);
        int1 l_2020 = make_int1(1L);
        int32_t l_2059 = 0x022298E1L;
        int16_t *l_2060 = &hip_const_18;
        long2 l_2065 = make_long2(4L, (-6L));
        ulong2 l_2070 = make_ulong2(4UL, 5UL);
        __shared__ uint4 l_2145;
        l_2145 = make_uint4(0xAC468D78L, 4294967295UL, 0xAC468D78L, 4294967295UL);
        int i;
        for (int i = 0; i < 5; i++)
            l_1895[i] = &p_2883->g_592;
        for (p_2883->g_1513 = 0; (p_2883->g_1513 <= 4); p_2883->g_1513 += 1)
        { /* block id: 643 */
            uint16_t l_1887 = 0x0C38L;
            uint32_t *l_1890 = &p_2883->g_119;
            uint32_t **l_1889 = &l_1890;
            int8_t *l_1891 = &p_2883->g_1066;
            int32_t l_1898 = 0xBFFF60BDL;
            __shared__ int3 l_1899;
            l_1899 = make_int3(0x147C7302L, 0L, 0x147C7302L);
            uint8_t l_1908 = 250UL;
            uint8_t **l_1914 = &l_1861;
            int4 l_1919 = make_int4(3L, (-4L), 3L, (-4L));
            uint16_t l_2027 = 0UL;
            uint16_t l_2054 = 0x0E0AL;
            int32_t l_2086 = 0x0FEED502L;
            uchar2 l_2133 = make_uchar2(0UL, 255UL);
            int64_t *l_2135 = nullptr;
            uint64_t l_2167 = 6UL;
            int i;
            if ((((*l_1891) = ((l_1881 >= 0xAA84L) <= ((p_2883->g_1778 = l_1882) == (((safe_div_func_uint8_t_u_u(p_15, (make_short2(((safe_rshift_func_int16_t_s_u((p_2883->g_91 = 0L), (make_long4((l_1887 > l_1888), 0x059A9A1B1C64B95BLL, 0x2EC6AF245B9A88A7LL, (&p_2883->g_119 == ((*l_1889) = &l_1880))).x > l_1881))) < p_2883->g_192), 0x5EC4L).y ^ (-7L)))) , (*l_1871)) , nullptr)))) , l_1892))
            { /* block id: 648 */
                int8_t ***l_1894 = nullptr;
                int1 l_1907 = make_int1(1L);
                uint32_t **l_1946 = nullptr;
                __shared__ int32_t l_1977;
                l_1977 = 0x2630673EL;
                __shared__ long4 l_1992;
                l_1992 = make_long4(9L, 0xF22DDF81C58C9C96LL, 9L, 0xF22DDF81C58C9C96LL);
                uint32_t l_1996 = 4294967291UL;
                uint16_t ****l_2000 = &p_2883->g_719;
                uint16_t *****l_1999 = &l_2000;
                int4 l_2010 = make_int4((-1L), (-7L), (-1L), (-7L));
                __shared__ uint32_t *l_2028;
                l_2028 = &p_2883->g_93;
                int i;
                for (p_2883->g_309 = 0; (p_2883->g_309 <= 0); p_2883->g_309 += 1)
                { /* block id: 651 */
                    int32_t *l_1893 = nullptr;
                    if (p_16)
                        break;
                    return l_1893;
                }
                for (p_16 = 1; (p_16 <= 4); p_16 += 1)
                { /* block id: 657 */
                    __shared__ uint8_t l_1913;
                    l_1913 = 0xC4L;
                    __shared__ int32_t l_1915;
                    l_1915 = 0x59824401L;
                    int32_t l_1916 = 0xA49EDE7DL;
                    uint4 l_1921 = make_uint4(0UL, 0xEF6DBDFCL, 0UL, 0xEF6DBDFCL);
                    int i;
                    if (p_15)
                        break;
                    if (((nullptr == l_1894) >= (((l_1899.y |= ((nullptr == l_1895[3]) == ((safe_rshift_func_int8_t_s_s((l_1898 = make_char3(0x89L, p_15, (**p_2883->g_1023)).y), 1)) != 0x41ADBD92F03C5DB0LL))) && (make_ushort3(p_2883->g_1900.y, p_2883->g_1900.y, p_2883->g_1900.y).z , (make_ushort1(p_2883->g_1901.y).x , p_16))) && p_2883->g_678.x)))
                    { /* block id: 661 */
                        __shared__ int32_t *l_1904;
                        l_1904 = &l_1875;
                        (*l_1904) &= (safe_rshift_func_uint16_t_u_s(0x1739L, 13));
                    }
                    else
                    { /* block id: 663 */
                        __shared__ int64_t *l_1909;
                        l_1909 = nullptr;
                        int64_t *l_1910 = &hip_const_17;
                        int64_t *l_1911 = &hip_const_17;
                        int64_t *l_1912[3][2] = {{&hip_const_13, &hip_const_13}, {&hip_const_13, &hip_const_13}, {&hip_const_13, &hip_const_13}};
                        __shared__ int16_t *l_1932;
                        l_1932 = &p_2883->g_903[9][1][0];
                        int32_t l_1949 = (-1L);
                        int i, j;
                        l_1916 ^= (l_1915 &= (safe_add_func_int32_t_s_s((p_17 |= make_int4(l_1907.x, l_1907.x, l_1907.x, l_1907.x).y), ((l_1913 = l_1908) && (0x6F79L <= (nullptr == l_1914))))));
                        l_1916 |= ((safe_mul(make_int1(l_1919.x), ((make_int1(0x0E6AA24EL) ^ make_int1((((((make_uint3(l_1920.z, l_1920.z, l_1920.z) | make_uint3(l_1921.z, l_1921.z, l_1921.z))).y ^ ((((l_1899.y , (safe_div_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u(((safe_mul_func_int64_t_s_s((*l_1874), (safe_mul_func_int16_t_s_s(((*l_1932) |= p_14), (safe_rshift_func_int16_t_s_u(((safe_lshift_func_uint16_t_u_s(0x9F42L, 8)) & (safe_div_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((p_2883->g_163[p_2883->g_1513][p_2883->g_1513] == l_1941[1][3][0]), ((p_17 &= (safe_rshift_func_uint8_t_u_s((p_14 && (safe_sub_func_int8_t_s_s(((l_1946 == ((safe_sub_func_int64_t_s_s(3L, l_1949)) , l_1950)) | 1UL), l_1952))), l_1921.w))) , 2UL))), 0x383DL))), p_15)))))) || p_16), l_1908)) , p_17), l_1949)), 5UL))) & 0x8342L) , l_1953) > l_1919.y)) > p_16) <= l_1913))))))).x;
                    }
                    if (l_1952)
                        break;
                    (*p_2883->g_1685) = &p_17;
                }
                if (p_16)
                { /* block id: 675 */
                    int4 l_1965 = make_int4(0x1B860076L, 0xE6D99275L, 0x1B860076L, 0xE6D99275L);
                    int16_t *l_1966 = &hip_const_18;
                    int16_t *l_1967[2];
                    long4 l_1968 = make_long4(0x4CD027BAED967AACLL, 7L, 0x4CD027BAED967AACLL, 7L);
                    uint32_t *l_1969 = nullptr;
                    uint32_t *l_1970 = nullptr;
                    __shared__ uint32_t *l_1971;
                    l_1971 = nullptr;
                    uint32_t *l_1972 = nullptr;
                    uint32_t *l_1973 = &p_2883->g_1397;
                    __shared__ int32_t *l_1978;
                    l_1978 = &p_2883->g_1107;
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_1967[i] = &hip_const_18;
                    (*l_1978) |= (((safe_rshift(make_uchar1(p_2883->g_1956.x), make_uchar1(0x51L)))).x || (l_1907.x , ((((make_char3(0L, (p_16 , (safe_lshift_func_uint32_t_u_u((safe_add_func_uint64_t_u_u((safe_mul_func_uint32_t_u_u(make_uint2(1UL, 0x19EFCC72L).y, (+((safe_mul_func_int32_t_s_s(0L, make_int2(l_1965.z, l_1965.z).x)) >= (l_1907.x |= (-1L)))))), make_long1(l_1968.w).x)), ((*l_1973) = l_1881)))), make_char3(p_2883->g_1974.x, p_2883->g_1974.x, p_2883->g_1974.x).x).y < (make_ushort1(p_17).x ^ p_17)) > (safe_sub_func_uint8_t_u_u(p_16, l_1977))) ^ 0xB64AL) ^ l_1892)));
                    for (p_2883->g_1066 = 3; (p_2883->g_1066 >= 0); p_2883->g_1066 -= 1)
                    { /* block id: 681 */
                        (*l_1978) ^= p_15;
                        if (p_15)
                            continue;
                    }
                }
                else
                { /* block id: 685 */
                    if (l_1953)
                    { /* block id: 686 */
                        return l_1979;
                    }
                    else
                    { /* block id: 688 */
                        uint32_t ***l_1982 = &p_2883->g_1980;
                        p_17 = (((*l_1982) = p_2883->g_1980) == &l_1951);
                        if (hip_const_4)
                            continue;
                    }
                    l_1898 = hip_const_10[0][7];
                }
                l_1898 = (safe_mul_func_int64_t_s_s((safe_sub_func_int32_t_s_s((((safe_mod(((make_long3(p_2883->g_1989.x, p_2883->g_1989.x, p_2883->g_1989.x) ^ ((safe_div(make_long3(l_1992.y, l_1992.y, l_1992.y), make_long3(p_2883->g_1993.x, p_2883->g_1993.x, p_2883->g_1993.x)))))), make_long3(l_1994.x, l_1994.x, l_1994.x)))).z , make_int3(l_1995.x, l_1995.x, l_1995.x).x), ((l_1996 , (make_int1((-1L)).x , ((+l_1992.w) != (safe_rshift_func_int64_t_s_u(((((make_int4(0x4FD301F6L, (-3L), (-1L), (p_17 , ((*l_1882) != ((*l_1999) = (*p_2883->g_1778))))).x & ((safe_mul_func_int32_t_s_s(p_14, make_uint3(p_2883->g_2003.x, p_2883->g_2003.x, p_2883->g_2003.x).y)) & (safe_add_func_uint16_t_u_u(((safe_div_func_uint64_t_u_u(((safe_sub_func_int32_t_s_s(((-1L) | (p_2883->g_1847.x &= (l_1907.x = make_int3(l_2010.x, l_2010.x, l_2010.x).y))), make_uint4(p_2883->g_2011.x, p_2883->g_2011.x, p_2883->g_2011.x, p_2883->g_2011.x).x)) | ((*l_2028) ^= (safe_mul_func_int16_t_s_s(((((safe_div(make_char3((-7L), (safe_add_func_int32_t_s_s(make_int3(l_2020.x, l_2020.x, l_2020.x).y, ((l_1899.y | make_long2(make_long3((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((((((safe_mul_func_uint8_t_u_u(p_17, l_2010.z)) | p_14) < p_15) & l_1908) , 0UL), 1)), 11)), 0x9B71F4E5A6583FDFLL, l_1977).z, 0xA57AA2608706703CLL).x) > l_2027))), (-4L)), make_char3(1L, 1L, 1L)))).z | 0L) == 0xF3L), p_14)))), p_14)) == l_1908), 0x6035L)))) , p_14) , p_16) , p_16), l_1887))))) > l_1899.y))), 0UL));
            }
            else
            { /* block id: 700 */
                int8_t l_2034 = 0x69L;
                uint32_t *l_2040 = &hip_const_9;
                uint32_t *l_2041 = nullptr;
                uint32_t *l_2042 = nullptr;
                uint32_t *l_2043 = nullptr;
                (*p_2883->g_1685) = &l_1888;
                p_17 = (safe_rshift_func_uint64_t_u_u((safe_unary_minus_func_uint32_t_u((safe_div_func_uint8_t_u_u(247UL, (((((p_2883->g_205.x < (l_2034 && ((l_1881 |= (l_2034 <= (safe_sub_func_int16_t_s_s((make_short4(p_2883->g_2037.x, p_2883->g_2037.x, p_2883->g_2037.x, p_2883->g_2037.x).z || (+(p_17 | ((l_2034 & (((nullptr != &l_1861) >= make_uint3((((make_ushort2(((safe_rshift_func_uint64_t_u_s(p_17, l_2034)) , p_17), p_14) | make_ushort2(7UL, 7UL))).y || l_1919.z), 4294967290UL, 0xC663587EL).x) < l_2034)) <= p_16)))), 0xADF5L)))) , p_2883->g_1179.z))) > p_16) && 1UL) < p_17) | p_15))))), p_2883->g_1315.x));
                (*p_2883->g_1685) = (*p_2883->g_1685);
            }
            for (p_14 = 4; (p_14 >= 1); p_14 -= 1)
            { /* block id: 708 */
                uint32_t *l_2053 = nullptr;
                uint32_t *l_2055 = nullptr;
                uint32_t *l_2056 = &hip_const_3;
                uint32_t *l_2057[9][8] = {{nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}, {nullptr, nullptr, &hip_const_9, nullptr, &hip_const_9, &p_2883->g_93, &hip_const_9, nullptr}};
                __shared__ int32_t l_2058;
                l_2058 = 0xC7E8E6B6L;
                long1 l_2066 = make_long1(1L);
                uint32_t l_2078 = 0x8CC61388L;
                uchar4 l_2079 = make_uchar4(0x0EL, 250UL, 0x0EL, 250UL);
                uint16_t *l_2087 = &p_2883->g_1049;
                uchar4 l_2115 = make_uchar4(255UL, 0x7EL, 255UL, 0x7EL);
                int1 l_2127 = make_int1(0x22D61618L);
                int16_t l_2154[1][8][7] = {{{0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}, {0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}, {0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}, {0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}, {0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}, {0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}, {0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}, {0x4DD2L, (-3L), 0L, (-3L), 0x4DD2L, 0xD38AL, 0x4DD2L}}};
                int i, j, k;
                p_17 &= (safe_mul_func_uint64_t_u_u(((((safe_add_func_int64_t_s_s((safe_mod_func_int32_t_s_s(((p_2883->g_2050 = &p_2883->g_58[3][2][1]) != nullptr), (safe_rshift_func_uint32_t_u_s((p_2883->g_1543.z = (l_2054 = (nullptr != &p_2883->g_1024))), ((0UL ^ (&p_2883->g_1359 == nullptr)) <= ((l_1899.z = p_16) & (((0x45B8B102L || p_2883->g_1315.x) & l_1898) <= p_15))))))), l_2058)) ^ l_1919.y) | 0x10FA4C86L) != 0x2528L), l_2059));
                if ((1L < p_16))
                { /* block id: 714 */
                    int16_t **l_2061 = &l_2060;
                    int16_t **l_2062 = &p_2883->g_1793;
                    int32_t **l_2088 = &l_1873;
                    int64_t *l_2097 = nullptr;
                    int64_t *l_2098 = nullptr;
                    int64_t *l_2099 = &hip_const_13;
                    int64_t *l_2100 = &hip_const_13;
                    int64_t *l_2101 = nullptr;
                    int64_t *l_2102 = nullptr;
                    int64_t *l_2103 = &hip_const_17;
                    int64_t *l_2104[9][5] = {{nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}, {nullptr, &hip_const_13, nullptr, nullptr, &p_2883->g_1513}};
                    int3 l_2130 = make_int3(0x324E5552L, 0x5E1461F6L, 0x324E5552L);
                    int i, j;
                    (*l_2088) = ((*p_2883->g_1685) = func_61((((*l_2062) = ((*l_2061) = l_2060)) == nullptr), ((((safe_add(make_long2(l_2065.x, l_2065.x), make_long2(l_2066.x, l_2066.x)))).y , ((make_uint2(p_2883->g_2067.y, p_2883->g_2067.y) & make_uint2((((safe_div(make_ulong4(l_2070.x, l_2070.x, l_2070.x, l_2070.x), ((safe_add(make_ulong4((*p_2883->g_2050), ((safe_mul_func_uint8_t_u_u(l_1919.x, (l_2078 ^= (safe_mul_func_uint8_t_u_u((0xC437238DL > l_2066.x), make_char4(p_2883->g_2077.y, p_2883->g_2077.y, p_2883->g_2077.y, p_2883->g_2077.y).y))))) > l_2066.x), (((make_uchar2(l_2079.x, l_2079.x) ^ ((make_uchar2(0x64L, 255UL) | make_uchar2(0xC2L, (safe_mod_func_uint16_t_u_u((((safe_rshift_func_uint64_t_u_s(((p_16 , ((safe_rshift_func_int8_t_s_s(p_16, 1)) || 0xE47DEF40L)) && p_16), 13)) < (*p_2883->g_2050)) >= 0xF02AD15776B272A1LL), p_14))))))).y & (-2L)), (*p_2883->g_2050)), make_ulong4(0xA3332A5AE14A2BDFLL, 0xA3332A5AE14A2BDFLL, 0xA3332A5AE14A2BDFLL, 0xA3332A5AE14A2BDFLL))))))).w >= 0xC18678765DDC2686LL), 0xF06635C2L))).y) == 0x8013064CL), l_2086, l_2087, p_2883));
                    if (p_16)
                        continue;
                    if (p_15)
                        break;
                    if ((((((safe_rshift_func_int64_t_s_u((p_15 = (safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u(make_ulong4(((*p_2883->g_2050) |= (safe_sub_func_int64_t_s_s((l_2058 ^= (((p_16 ^= p_14) , nullptr) != ((l_1898 = 0xA977DB183CEE7814LL) , &p_2883->g_194))), l_1919.x))), 0xA5DF858C9672B4DCLL, 18446744073709551613UL, 0UL).y, make_long2(0xABAE861B12810C4ALL, (safe_mod_func_uint8_t_u_u(make_uchar2((safe_lshift_func_int16_t_s_s(p_15, p_14)), (nullptr == &l_1979)).x, (-3L)))).x)), p_14))), 34)) & 0xA59DDDC5L) ^ l_2027) == (*p_2883->g_1793)) <= p_14))
                    { /* block id: 727 */
                        ulong3 l_2120 = make_ulong3(0xF0E12FE7324F2782LL, 0x1A9396CDAD95808BLL, 0xF0E12FE7324F2782LL);
                        int3 l_2134 = make_int3(1L, (-5L), 1L);
                        int i;
                        p_2883->g_1847.x ^= (p_17 = (safe_add_func_uint32_t_u_u((safe_mul_func_int32_t_s_s((((safe_sub_func_uint8_t_u_u(make_uchar4(l_2115.x, l_2115.x, l_2115.x, l_2115.x).x, ((safe_mul_func_uint16_t_u_u((0x10D91E9BC497D2CFLL && ((*p_2883->g_2050) = (!((safe_mul(((((make_ulong3(l_2120.y, l_2120.y, l_2120.y) & ((((((make_ulong3(((((safe_div_func_int8_t_s_s((l_2079.w & (((nullptr == (*p_2883->g_389)) == 7UL) && (~(safe_rshift_func_uint32_t_u_u(((safe_mod_func_uint8_t_u_u((((*l_1891) ^= (l_2027 > (p_2883->g_1993.y &= ((0x0BE7D7A5L > ((make_int4(l_2127.x, l_2127.x, l_2127.x, l_2127.x) ^ ((safe_sub(make_int4(l_2130.x, l_2130.x, l_2130.x, l_2130.x), make_int4(0xB606CB08L, 0x80640D2DL, 6L, 0x5FA994BEL)))))).x) ^ ((((l_2134.x = make_uchar1(l_2133.x).x) < (p_14 >= ((l_2135 == (*p_2883->g_389)) || 0xFFD8D47BL))) < 1L) <= p_14))))) && 4UL), 2L)) || (*p_2883->g_2050)), l_2115.y))))), p_15)) != p_15) , &p_2883->g_718) == &p_2883->g_718), 0x56593916C6A2E218LL, 0xC08D247692239EE6LL) ^ make_ulong3(1UL, 1UL, 1UL))) ^ make_ulong3(0x5AC6BCAB004A20C8LL, 0x5AC6BCAB004A20C8LL, 0x5AC6BCAB004A20C8LL))) ^ make_ulong3(3UL, 3UL, 3UL))))) | make_ulong3(0xA7469F826C77B0BALL, 0xA7469F826C77B0BALL, 0xA7469F826C77B0BALL))), make_ulong3(18446744073709551606UL, 18446744073709551606UL, 18446744073709551606UL)))).z))), p_16)) || (-8L)))) | p_16) || 1UL), 0UL)), p_17)));
                    }
                    else
                    { /* block id: 734 */
                        if (p_15)
                            break;
                        p_17 = (!(l_1919.x , p_15));
                        l_2058 &= p_16;
                    }
                }
                else
                { /* block id: 739 */
                    __shared__ int8_t l_2136;
                    l_2136 = (-5L);
                    uint2 l_2146 = make_uint2(4294967295UL, 0x50AA39C7L);
                    __shared__ int32_t l_2155;
                    l_2155 = (-2L);
                    int i;
                    if (l_2136)
                        break;
                    l_2155 |= (make_ushort4(1UL, (l_1898 = ((((safe_lshift(((safe_mul(((make_uint4(p_2883->g_2141.y, p_2883->g_2141.y, p_2883->g_2141.y, p_2883->g_2141.y) ^ make_uint4(l_2142.x, l_2142.x, l_2142.x, l_2142.x))), ((safe_add(make_uint4(l_2145.z, l_2145.z, l_2145.z, l_2145.z), ((((make_uint4(p_15, 0xE6397B18L, make_uint4(l_2146.y, l_2146.y, l_2146.y, l_2146.y).z, (safe_div_func_int8_t_s_s(((safe_lshift_func_uint32_t_u_s((((0x4987A5CDL || ((make_char4(p_2883->g_2151.w, p_2883->g_2151.w, p_2883->g_2151.w, p_2883->g_2151.w).z , nullptr) != (*p_2883->g_1980))) , p_16) == (safe_div_func_uint16_t_u_u(p_16, ((p_14 >= (make_uchar1(p_15).x & 248UL)) , 5L)))), p_2883->g_861.w)) , l_2154[0][6][6]), 255UL))) | make_uint4(0x78A79BD2L, 0x78A79BD2L, 0x78A79BD2L, 0x78A79BD2L))) ^ make_uint4(0xF32CDC85L, 0xF32CDC85L, 0xF32CDC85L, 0xF32CDC85L))))))))), make_uint4(0x56D31335L, 0x56D31335L, 0x56D31335L, 0x56D31335L)))).z , p_2883->g_1007.x) , 0UL)), 65528UL, 1UL).z < p_14);
                    if (l_2079.w)
                        break;
                    if ((l_2027 < (nullptr != p_2883->g_1335)))
                    { /* block id: 744 */
                        int16_t **l_2158[3][4] = {{&p_2883->g_1793, &l_2060, nullptr, nullptr}, {&p_2883->g_1793, &l_2060, nullptr, nullptr}, {&p_2883->g_1793, &l_2060, nullptr, nullptr}};
                        int32_t *l_2159 = nullptr;
                        int i, j;
                        p_17 |= ((l_2158[2][3] = &p_2883->g_1793) == &p_2883->g_1793);
                        return l_2159;
                    }
                    else
                    { /* block id: 748 */
                        int32_t *l_2160 = &l_1888;
                        int32_t *l_2161 = &hip_const_12;
                        int32_t *l_2162 = &l_2086;
                        int32_t *l_2163 = nullptr;
                        int32_t *l_2164 = &l_2086;
                        int32_t *l_2165 = nullptr;
                        int32_t *l_2166[7];
                        int i;
                        for (int i = 0; i < 7; i++)
                            l_2166[i] = &hip_const_12;
                        l_2167++;
                    }
                }
                (*p_2883->g_1685) = &l_1888;
            }
            return l_2170;
        }
    }
    else
    { /* block id: 756 */
        __shared__ int32_t *l_2172;
        l_2172 = &hip_const_8[0][8][3];
        int32_t *l_2173 = nullptr;
        int32_t *l_2174 = &p_2883->g_1107;
        int8_t ***l_2180 = nullptr;
        __shared__ int8_t ****l_2179;
        l_2179 = &l_2180;
        uchar1 l_2216 = make_uchar1(6UL);
        uchar3 l_2243 = make_uchar3(0x2BL, 0x9DL, 0x2BL);
        int32_t *l_2258 = &l_1888;
        int i;
        (*l_2174) &= (((0xDDL > p_15) , l_2171) == l_2171);
        for (l_1888 = 6; (l_1888 > (-15)); --l_1888)
        { /* block id: 760 */
            int8_t l_2203 = 0x67L;
            int32_t l_2205 = 0x27E4D43CL;
            uint16_t *l_2217 = nullptr;
            int16_t l_2241 = 0x6013L;
            for (p_2883->g_1049 = 0; (p_2883->g_1049 < 1); p_2883->g_1049 = safe_add_func_uint16_t_u_u(p_2883->g_1049, 4))
            { /* block id: 763 */
                int8_t *****l_2181 = &p_2883->g_1335;
                int32_t *l_2184 = &hip_const_8[0][5][3];
                l_2173 = (*p_2883->g_1685);
                (*l_2181) = l_2179;
                for (p_2883->g_1066 = (-8); (p_2883->g_1066 >= (-28)); p_2883->g_1066 = safe_sub_func_uint16_t_u_u(p_2883->g_1066, 1))
                { /* block id: 768 */
                    l_2184 = ((*p_2883->g_1685) = nullptr);
                }
                if (p_16)
                    continue;
            }
            for (p_2883->g_119 = 0; (p_2883->g_119 != 37); p_2883->g_119++)
            { /* block id: 776 */
                uint8_t l_2195 = 0x1DL;
                int32_t l_2202 = (-5L);
                uint32_t *l_2204 = nullptr;
                uint32_t *l_2206 = nullptr;
                uint32_t *l_2207 = nullptr;
                uint32_t *l_2208 = &hip_const_9;
                uint32_t *l_2209 = &hip_const_3;
                uint32_t *l_2210[7][5][7] = {{{&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}}, {{&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}}, {{&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}}, {{&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}}, {{&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}}, {{&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}}, {{&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}, {&hip_const_9, nullptr, &p_2883->g_1397, &p_2883->g_1397, nullptr, &hip_const_9, nullptr}}};
                uint64_t *l_2230[1];
                int16_t *l_2235 = &hip_const_18;
                int16_t *l_2236[5][6] = {{&p_2883->g_91, nullptr, &p_2883->g_91, nullptr, &hip_const_10[0][7], nullptr}, {&p_2883->g_91, nullptr, &p_2883->g_91, nullptr, &hip_const_10[0][7], nullptr}, {&p_2883->g_91, nullptr, &p_2883->g_91, nullptr, &hip_const_10[0][7], nullptr}, {&p_2883->g_91, nullptr, &p_2883->g_91, nullptr, &hip_const_10[0][7], nullptr}, {&p_2883->g_91, nullptr, &p_2883->g_91, nullptr, &hip_const_10[0][7], nullptr}};
                int i, j, k;
                for (int i = 0; i < 1; i++)
                    l_2230[i] = nullptr;
                (*l_2174) = make_int2(3L, 6L).x;
                if ((*l_2172))
                    continue;
                (*p_2883->g_1685) = func_61((*l_2174), ((((make_ulong1(l_2187.x) & make_ulong1(p_2883->g_2188.x))).x , (safe_mul_func_int64_t_s_s((safe_rshift_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((l_2195--), ((safe_lshift_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(l_2202, (p_2883->g_2003.z = (l_2203 & ((p_2883->g_2067.w++) && (0L != make_char2(l_2213.x, l_2213.x).x)))))), p_2883->g_2151.y)) >= l_2205))), 9)), (safe_mul_func_uint8_t_u_u(((make_uchar1(0x63L) ^ ((make_uchar1(0x60L) & make_uchar1(make_uchar1(l_2216.x).x))))).x, 1UL))))) || 1L), (**p_2883->g_1980), l_2217, p_2883);
                l_2243.y ^= ((safe_mul_func_int32_t_s_s((p_2883->g_1731.x , (safe_rshift_func_uint8_t_u_u((safe_lshift_func_int32_t_s_u((((safe_rshift_func_uint16_t_u_s(((~((safe_add(make_short4(0x5269L, (l_2205 = (!((l_2202 = p_15) ^ (safe_add_func_uint64_t_u_u((p_2883->g_585.y = (p_2883->g_1168.y--)), (p_15 , ((*l_2174) = ((+(safe_rshift_func_int64_t_s_u(p_17, 23))) || p_15)))))))), 0xD1AFL, 0xF833L), make_short4((p_16 , ((safe_mul(((safe_rshift(make_short4((-1L), 0x467BL, (-1L), 0L), make_short4(0xB278L, 5L, 0xEF9BL, (((*l_1861) = (p_16 , p_14)) , 5L))))), make_short4(0xF24FL, 0xF24FL, 0xF24FL, 0xF24FL)))).z), (-6L), p_17, (*l_2172))))).x) != 0x8BD4L), l_2241)) == 0L) & p_16), 27)), p_15))), l_2242)) != p_16);
            }
        }
        (*l_2258) &= (safe_rshift_func_uint64_t_u_u(p_15, ((safe_sub_func_uint8_t_u_u(0UL, (((safe_lshift_func_int8_t_s_s(((((safe_rshift_func_int16_t_s_u(p_14, 2)) == ((p_16 | (((*l_2174) = 0x23D7L) | ((safe_lshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_u(0L, 7)), 4)) != p_14))) != (safe_rshift_func_int8_t_s_u((*p_2883->g_1024), 2)))) > (*l_1871)) < p_17), 3)) || p_17) , p_14))) == p_16)));
    }
    (*p_2883->g_1685) = (*p_2883->g_1685);
    for (p_2883->g_749 = 28; (p_2883->g_749 < 49); ++p_2883->g_749)
    { /* block id: 798 */
        int32_t *l_2261 = &l_1875;
        int32_t *l_2262 = nullptr;
        return l_2262;
    }
    for (p_15 = 0; (p_15 > (-30)); --p_15)
    { /* block id: 803 */
        uint16_t **l_2280[5][2] = {{&p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160}};
        int32_t *l_2284 = nullptr;
        int8_t ****l_2308 = nullptr;
        uint32_t *l_2314 = &p_2883->g_119;
        int32_t l_2318 = 0x5960AB7BL;
        int32_t l_2319 = 0x25997C0AL;
        int32_t l_2320 = (-1L);
        int32_t l_2321 = 0L;
        int32_t l_2323 = 1L;
        int32_t l_2324 = (-1L);
        // attempting a hip shared for loop
        __shared__ uint64_t l_2325[8];
        for (int i = 0; i < 8; i++)
            l_2325[i] = 0xE0FA0BEB37EEA5A3LL;
        ushort3 l_2344 = make_ushort3(65534UL, 1UL, 65534UL);
        uint3 l_2388 = make_uint3(0UL, 8UL, 0UL);
        __shared__ int32_t *l_2395;
        l_2395 = nullptr;
        uint64_t l_2413 = 0xE72EDBF376EEE8C3LL;
        uint8_t l_2422 = 5UL;
        uint2 l_2426 = make_uint2(2UL, 0xA783A9B7L);
        int64_t ***l_2430 = &p_2883->g_389;
        int64_t l_2462[4];
        int32_t *l_2474 = &hip_const_8[0][5][3];
        __shared__ int32_t *l_2475;
        l_2475 = &l_2324;
        int32_t *l_2476 = nullptr;
        // attempting a hip shared for loop
        __shared__ int32_t *l_2477[3];
        for (int i = 0; i < 3; i++)
            l_2477[i] = nullptr;
        __shared__ int64_t l_2478;
        l_2478 = (-1L);
        int i, j;
        for (int i = 0; i < 4; i++)
            l_2462[i] = 0L;
        for (int i = 0; i < 3; i++)
            l_2477[i] = nullptr;
        for (p_2883->g_1636 = (-27); (p_2883->g_1636 <= 57); p_2883->g_1636++)
        { /* block id: 806 */
            __shared__ uint64_t *l_2273;
            l_2273 = &p_2883->g_194;
            int32_t l_2282[6] = {1L, 1L, (-1L), 1L, 1L, (-1L)};
            uint16_t *l_2283 = nullptr;
            __shared__ int64_t ****l_2288;
            l_2288 = &l_2287[0][6][0];
            __shared__ int64_t ****l_2289;
            l_2289 = nullptr;
            int64_t ***l_2291 = &p_2883->g_389;
            int64_t ****l_2290 = &l_2291;
            __shared__ uint32_t *l_2294;
            l_2294 = &p_2883->g_1397;
            uint32_t ***l_2300 = &p_2883->g_1980;
            uint16_t *****l_2301 = &p_2883->g_718;
            int16_t l_2313 = 0x2065L;
            char4 l_2322 = make_char4(8L, 0L, 8L, 0L);
            uint16_t *l_2372[7];
            int32_t l_2421 = 0x06F4654CL;
            int32_t *l_2443 = &p_2883->g_1107;
            // attempting a hip shared for loop
            __shared__ int8_t *****l_2468[7];
            for (int i = 0; i < 7; i++)
                l_2468[i] = &l_2308;
            uint8_t **l_2473 = nullptr;
            int i;
            for (int i = 0; i < 7; i++)
                l_2372[i] = &p_2883->g_519[1];
            for (int i = 0; i < 7; i++)
                l_2468[i] = &l_2308;
            l_2284 = func_61((p_14 , ((8UL ^ (((~((safe_lshift(make_ushort1(1UL), make_ushort1(16)))))).x >= ((((safe_add_func_uint64_t_u_u(((safe_div_func_uint32_t_u_u((l_2273 != nullptr), p_2883->g_2003.z)) >= ((safe_lshift_func_uint64_t_u_s((safe_sub_func_int64_t_s_s((safe_div_func_int16_t_s_s(p_14, make_ushort4(65535UL, 65535UL, (((*l_1869) , nullptr) == l_2280[0][1]), 1UL).y)), p_2883->g_1653.z)), 4)) >= p_2883->g_2281)), p_14)) >= p_2883->g_1847.y) && p_17) != 0xBAB8L))) , (*l_2170))), l_2282[1], (*p_2883->g_1981), l_2283, p_2883);
            if ((safe_add_func_uint64_t_u_u(((((((*l_2294) = (((((*l_2288) = l_2287[2][5][0]) != ((*l_2290) = &p_2883->g_389)) > (~(l_2282[1] ^= 0x7AA9L))) <= (safe_rshift_func_uint32_t_u_u(make_uint4(1UL, 4UL, 1UL, 1UL).w, 15)))) >= ((safe_rshift_func_uint16_t_u_s(make_ushort1(0x85D9L).x, 8)) || (&p_2883->g_718 == ((safe_lshift_func_uint64_t_u_s(p_16, (~(make_uint2(p_2883->g_2299.z, p_2883->g_2299.z).y , (((*l_2300) = &p_2883->g_1981) != nullptr))))) , l_2301)))) , 0x3A5D0591L) || l_2282[1]) > 0x92B2L), (*l_1869))))
            { /* block id: 813 */
                int32_t **l_2315 = nullptr;
                __shared__ int32_t **l_2316;
                l_2316 = &l_1873;
                int32_t *l_2317[10];
                int i;
                for (int i = 0; i < 10; i++)
                    l_2317[i] = nullptr;
                p_17 = (!((((*l_2273) = (p_2883->g_2311.x = ((safe_mod_func_uint16_t_u_u((safe_add_func_int64_t_s_s((safe_add_func_int32_t_s_s((l_1875 = (((p_16 , l_2308) == nullptr) ^ ((safe_rshift_func_uint64_t_u_s(make_ulong3(make_ulong4(p_2883->g_2311.x, p_2883->g_2311.x, p_2883->g_2311.x, p_2883->g_2311.x).y, 18446744073709551615UL, ((safe_unary_minus_func_int8_t_s((((*p_2883->g_1685) = (*p_2883->g_1685)) == ((*l_2316) = func_61(p_2883->g_1814.x, l_2313, (p_14 > (nullptr != l_2314)), l_2283, p_2883))))) , p_14)).y, l_2313)) , 248UL))), p_14)), l_2282[1])), p_14)) != p_16))) , p_17) == p_14));
                if (l_2282[3])
                    break;
                l_2325[7]++;
            }
            else
            { /* block id: 822 */
                ulong1 l_2358 = make_ulong1(0x9DE1BDE2793448D4LL);
                uint16_t l_2369 = 0xCBF7L;
                __shared__ int32_t l_2380;
                l_2380 = (-10L);
                int i;
                for (p_17 = 16; (p_17 <= (-27)); p_17 = safe_sub_func_int64_t_s_s(p_17, 7))
                { /* block id: 825 */
                    uint32_t l_2337 = 0x252F897CL;
                    for (l_1888 = 0; (l_1888 <= (-28)); --l_1888)
                    { /* block id: 828 */
                        int32_t *l_2332 = &hip_const_12;
                        int32_t *l_2333 = &hip_const_2;
                        int32_t *l_2334 = nullptr;
                        __shared__ int32_t *l_2335;
                        l_2335 = &hip_const_11;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_2336[2];
                        for (int i = 0; i < 2; i++)
                            l_2336[i] = nullptr;
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_2336[i] = nullptr;
                        ++l_2337;
                    }
                }
                (*p_2883->g_1685) = func_61((~(make_ushort2((safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(((nullptr == &p_2883->g_817) ^ p_17), 6)), ((make_ushort4(l_2344.x, l_2344.x, l_2344.x, l_2344.x) ^ ((((((((make_ushort4((((safe_rshift_func_uint64_t_u_u((safe_rshift_func_uint64_t_u_u(make_ulong2(3UL, (safe_mod_func_int8_t_s_s((nullptr != &p_2883->g_1980), (make_ushort4(1UL, 0x09A0L, 65535UL, (safe_rshift_func_int8_t_s_u(((make_char2(p_2883->g_2353.z, p_2883->g_2353.z) ^ make_char2((-6L), 8L))).y, (((safe_rshift_func_int64_t_s_u((safe_add_func_uint32_t_u_u(((l_2282[1] = (((make_ulong1(l_2358.x) ^ make_ulong1(l_2359.w))).x & ((safe_lshift_func_int32_t_s_s((safe_mod_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((0xB7L || (((l_2358.x ^ make_long1(l_2366.x).x) , ((*p_2883->g_1981) = (safe_div_func_uint16_t_u_u(p_16, p_15)))) , p_17)), p_17)), l_2369)), 14)) , l_2370))) , 1UL), 0x26916B38L)), p_2883->g_1974.z)) ^ p_17) , p_16)))).y , 0x3AL)))).y, 45)), 4)) == l_2322.x) > 0x0B9F633A440DFB41LL), 9UL, p_15, 0xAA4AL) ^ make_ushort4(0UL, 0UL, 0UL, 0UL))) ^ make_ushort4(0xE649L, 0xE649L, 0xE649L, 0xE649L))) ^ make_ushort4(8UL, 8UL, 8UL, 8UL))) ^ make_ushort4(65534UL, 65534UL, 65534UL, 65534UL))))).z)), p_16).y < p_17)), p_17, l_2371, l_2372[2], p_2883);
                for (p_2883->g_1397 = 0; (p_2883->g_1397 != 49); p_2883->g_1397 = safe_add_func_int64_t_s_s(p_2883->g_1397, 7))
                { /* block id: 837 */
                    int8_t *l_2377 = &hip_const_15;
                    int8_t *l_2378[5][8][3] = {{{&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}}, {{&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}}, {{&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}}, {{&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}}, {{&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}, {&hip_const_14[0], &hip_const_16, &p_2883->g_222}}};
                    int16_t *l_2384 = &hip_const_10[0][7];
                    int16_t *l_2385 = &p_2883->g_309;
                    int8_t l_2391 = 0L;
                    __shared__ int32_t l_2392;
                    l_2392 = 0x35B268EDL;
                    int i, j, k;
                    l_2392 |= ((safe_div(((make_int3(((l_2380 = (l_2379 = l_2358.x)) | ((p_16 , ((make_uint1((p_15 != ((safe_sub_func_int16_t_s_s(((make_short1(p_2883->g_2383.z) & make_short1(((*l_2385) &= (p_2883->g_384.x = 0x13DDL))))).x, 8UL)) == p_2883->g_903[9][0][0]))) ^ ((safe_lshift(make_uint1(l_2388.x), make_uint1(p_2883->g_910.x)))))).x) >= p_14)), ((safe_sub_func_uint64_t_u_u(p_17, l_2391)) & 0xEFDA3FE59ED488A8LL), 0xE3D80F0BL) ^ make_int3((-7L), (-7L), (-7L)))), make_int3(3L, 3L, 3L)))).x;
                }
            }
            if ((~(make_ushort3(l_2393.x, l_2393.x, l_2393.x).y ^ p_14)))
            { /* block id: 845 */
                int32_t *l_2394 = &l_2318;
                return l_2395;
            }
            else
            { /* block id: 847 */
                uint32_t l_2417 = 4294967288UL;
                int32_t l_2424 = 0L;
                int64_t ***l_2429 = nullptr;
                uint32_t l_2438 = 7UL;
                short4 l_2465 = make_short4(1L, (-1L), 1L, (-1L));
                int i;
                for (p_2883->g_839 = 0; (p_2883->g_839 == 13); ++p_2883->g_839)
                { /* block id: 850 */
                    uint16_t l_2407 = 0x3B25L;
                    long4 l_2412 = make_long4(0x452FD48514600DA3LL, 0xD10A1CEE6F23975CLL, 0x452FD48514600DA3LL, 0xD10A1CEE6F23975CLL);
                    int32_t l_2418[2][8] = {{(-1L), 0xCAEAEEC1L, 0xC7BFC10FL, 0xC7BFC10FL, 0xCAEAEEC1L, (-1L), 0xCAEAEEC1L, 0xC7BFC10FL}, {(-1L), 0xCAEAEEC1L, 0xC7BFC10FL, 0xC7BFC10FL, 0xCAEAEEC1L, (-1L), 0xCAEAEEC1L, 0xC7BFC10FL}};
                    __shared__ uint8_t l_2452;
                    l_2452 = 0x8BL;
                    int i, j;
                    for (p_2883->g_1513 = 0; (p_2883->g_1513 <= (-11)); --p_2883->g_1513)
                    { /* block id: 853 */
                        int16_t *l_2419 = &hip_const_10[1][3];
                        int16_t *l_2420 = &p_2883->g_2281;
                        int3 l_2423 = make_int3((-1L), 1L, (-1L));
                        uint4 l_2428 = make_uint4(18446744073709551615UL, 0xDF12B23CL, 18446744073709551615UL, 0xDF12B23CL);
                        __shared__ uint32_t *l_2435;
                        l_2435 = nullptr;
                        __shared__ uint32_t *l_2436;
                        l_2436 = &hip_const_3;
                        uint32_t *l_2437[6];
                        __shared__ ushort2 l_2440;
                        l_2440 = make_ushort2(0xBE29L, 0x3796L);
                        __shared__ uint64_t l_2441;
                        l_2441 = 0UL;
                        uint16_t *l_2442 = &hip_const_7;
                        int i;
                        for (int i = 0; i < 6; i++)
                            l_2437[i] = nullptr;
                        l_2424 |= (((((make_long4(0xD1034349396FF2EBLL, (l_2282[4] = (p_17 , (safe_div_func_int8_t_s_s((l_2421 |= (safe_mul_func_int8_t_s_s((**p_2883->g_1023), ((*l_1861) ^= ((~p_17) , (make_uchar2(p_2883->g_2404.y, p_2883->g_2404.y).x == (safe_div_func_int16_t_s_s(make_short1((-4L)).x, ((*l_2420) = (l_2418[0][1] = ((+(l_2407 | (safe_div_func_int64_t_s_s((l_2413 = (((safe_lshift_func_uint16_t_u_u(5UL, l_2282[1])) , (-1L)) > (+make_long3(l_2412.y, l_2412.y, l_2412.y).z))), (safe_sub_func_int64_t_s_s(((safe_unary_minus_func_uint64_t_u((1L | 0xF10FA94C9DFD2821LL))) != p_14), l_2417)))))) , l_2417))))))))))), l_2422)))), p_15, (-9L)) ^ make_long4(0x8E8E2605E9EEDD45LL, 0x8E8E2605E9EEDD45LL, 0x8E8E2605E9EEDD45LL, 0x8E8E2605E9EEDD45LL))).z | l_2423.z) > l_2417) == 4294967295UL);
                        (*p_2883->g_1685) = p_2883->g_2425;
                        (*p_2883->g_1685) = func_61(p_17, p_16, (l_2282[1] != (make_uint2(l_2426.y, l_2426.y).x >= ((make_uint4(p_2883->g_2427.y, p_2883->g_2427.y, p_2883->g_2427.y, p_2883->g_2427.y).x , (((((make_uint2(l_2428.y, l_2428.y).y , l_2429) != ((*l_2290) = l_2430)) , &l_2420) == nullptr) , (safe_div_func_uint32_t_u_u(((((l_2438 = (--(*l_2294))) && (!(safe_unary_minus_func_int16_t_s((make_ushort4(l_2440.x, l_2440.x, l_2440.x, l_2440.x).y == (0UL > 4294967294UL)))))) > 0L) , hip_const_9), l_2441)))) , p_14))), l_2442, p_2883);
                        return l_2443;
                    }
                    if (l_2418[0][1])
                        break;
                    for (l_2371 = (-25); (l_2371 > 15); l_2371 = safe_add_func_uint8_t_u_u(l_2371, 3))
                    { /* block id: 871 */
                        int32_t l_2459 = (-1L);
                        // attempting a hip shared for loop
                        __shared__ uint16_t ***l_2461[2];
                        for (int i = 0; i < 2; i++)
                            l_2461[i] = nullptr;
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_2461[i] = nullptr;
                        l_2418[1][0] = ((safe_mul_func_uint8_t_u_u((((make_uint3(((safe_lshift_func_int32_t_s_s((safe_add_func_uint8_t_u_u((p_16 && p_14), (p_2883->g_474.x = make_uchar2(l_2452, ((*l_1861) = p_15)).x))), 22)) , (safe_mul_func_uint32_t_u_u((p_14 || (p_15 <= 65531UL)), (p_14 ^ ((((make_uchar3(0xD2L, ((safe_mod_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u(l_2459, p_15)), p_17)) >= l_2412.z), (*l_2443)) | make_uchar3(0x9FL, 0x9FL, 0x9FL))).x , 0x3CC4L) && 0x2BE2L))))), p_15, 1UL) ^ make_uint3(0x26CC590DL, 0x26CC590DL, 0x26CC590DL))).y > 0x5F66C8AFL), (*p_2883->g_1024))) >= p_14);
                        l_2418[0][1] |= (p_17 = make_int1(p_2883->g_2460.y).x);
                        (*p_2883->g_1685) = &p_17;
                        (*l_2443) |= (((**p_2883->g_1778) == l_2461[0]) , ((((l_2412.y && (make_int2(0x737B289CL, (-5L)).x & l_2462[3])) == ((safe_mod(make_short4(l_2465.x, l_2465.x, l_2465.x, l_2465.x), make_short4(1L, (safe_add_func_int16_t_s_s((p_14 , ((l_2468[2] = nullptr) != &p_2883->g_1335)), (((((safe_lshift_func_uint32_t_u_u(l_2418[0][1], ((*l_2294) = (safe_sub_func_uint64_t_u_u((*l_1874), 0xE441F6080AF7ECBELL))))) <= 0x41L) >= p_17) > 0x9A48L) != 1UL))), 0L, (-2L))))).w) > p_16) && (-6L)));
                    }
                    (*l_2443) = (nullptr != l_2473);
                }
            }
        }
        (*l_2475) |= ((*l_1869) > 0x97L);
        l_2479++;
    }
    return l_2482;
}


/* ------------------------------------------ */
/* 
 * reads : p_2883->g_749 hip_const_11 p_2883->g_1685 p_2883->g_176 p_2883->g_861 hip_const_12 p_2883->g_817 p_2883->g_518 p_2883->g_1513 p_2883->g_903 p_2883->g_1506 hip_const_2 p_2883->g_1479 p_2883->g_192 p_2883->g_1847 p_2883->g_1778 p_2883->g_718 p_2883->g_719 p_2883->g_670
 * writes: p_2883->g_749 p_2883->g_244 p_2883->g_1392 p_2883->g_222 p_2883->g_1182 p_2883->g_817 p_2883->g_903 p_2883->g_861 p_2883->g_518 p_2883->g_1513 p_2883->g_1397 p_2883->g_1793 p_2883->g_670 p_2883->g_192 p_2883->g_1315 p_2883->g_762
 */
__device__ uint8_t  func_22(uint16_t  p_23, struct S0 * p_2883)
{ /* block id: 1 */
    __shared__ int32_t *l_24;
    l_24 = &hip_const_2;
    int32_t *l_25 = &hip_const_2;
    int32_t *l_26[5][2] = {{&hip_const_11, &hip_const_11}, {&hip_const_11, &hip_const_11}, {&hip_const_11, &hip_const_11}, {&hip_const_11, &hip_const_11}, {&hip_const_11, &hip_const_11}};
    uint16_t l_27 = 65532UL;
    int32_t *l_38 = &hip_const_12;
    ulong4 l_1841 = make_ulong4(0xF8C374C3AD0B1B64LL, 0UL, 0xF8C374C3AD0B1B64LL, 0UL);
    __shared__ char1 l_1848;
    l_1848 = make_char1((-1L));
    uint64_t *l_1856 = nullptr;
    uint16_t ***l_1857 = &p_2883->g_190;
    int16_t *l_1858[3];
    int i, j;
    for (int i = 0; i < 3; i++)
        l_1858[i] = nullptr;
    --l_27;
    for (l_27 = 13; (l_27 < 14); l_27 = safe_add_func_int8_t_s_s(l_27, 3))
    { /* block id: 5 */
        uint32_t l_39 = 0xE909801CL;
        int3 l_1844 = make_int3(0L, 0xB567DE4EL, 0L);
        int i;
        (*p_2883->g_1685) = ((func_32(p_23, p_23, l_38, l_39, l_39, p_2883) , (l_39 > (((~make_ulong1(l_1841.x))).x == ((safe_lshift_func_uint64_t_u_s((nullptr != &l_38), 1)) , p_2883->g_1479.x)))) , &hip_const_8[0][5][3]);
        p_2883->g_670.w = (!make_int1(l_1844.y).x);
        for (p_2883->g_192 = 0; (p_2883->g_192 == 1); p_2883->g_192 = safe_add_func_int16_t_s_s(p_2883->g_192, 7))
        { /* block id: 628 */
            l_1844.z |= make_int4((-10L), ((make_int2(0xEEBEF2C8L, 0x2F9BB5B3L) ^ make_int2(p_2883->g_1847.x, p_2883->g_1847.x))).x, 0L, ((*l_24) ^ l_39)).w;
        }
    }
    p_2883->g_762.x = (((make_char4(l_1848.x, l_1848.x, l_1848.x, l_1848.x) ^ ((safe_lshift(make_char4((((-1L) < ((safe_sub_func_int16_t_s_s(2L, make_short3((-1L), 7L, (-6L)).z)) > p_23)) , (((make_ushort2(65530UL, 8UL).x || (p_2883->g_1315.x = (((!(safe_unary_minus_func_uint8_t_u(((make_long3((safe_rshift_func_uint32_t_u_u(1UL, 3)), (-1L), 0x102CFF994D82BDFALL).y & (l_1856 != l_1856)) & (l_1857 != (**p_2883->g_1778)))))) == (*l_25)) & p_2883->g_670.z))) <= 0x40L) == (-1L))), 0x09L, 0x91L, p_23), make_char4((-9L), (-9L), (-9L), (-9L))))))).x >= 0x3DL);
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_2883->g_749 hip_const_11 p_2883->g_1685 p_2883->g_176 p_2883->g_861 hip_const_12 p_2883->g_1771 p_2883->g_192 p_2883->g_817 p_2883->g_518 p_2883->g_1513 p_2883->g_1397 p_2883->g_903 p_2883->g_1814 p_2883->g_1815 p_2883->g_1506 p_2883->g_1182 p_2883->g_244 hip_const_2 p_2883->g_1731 p_2883->g_93
 * writes: p_2883->g_749 p_2883->g_244 p_2883->g_1392 p_2883->g_222 p_2883->g_1182 p_2883->g_817 p_2883->g_903 p_2883->g_861 p_2883->g_678 p_2883->g_1778 p_2883->g_1513 p_2883->g_518 p_2883->g_1397 p_2883->g_1793 p_2883->g_1731
 */
__device__ uint32_t  func_32(int32_t  p_33, uint64_t  p_34, int32_t * p_35, uint32_t  p_36, int32_t  p_37, struct S0 * p_2883)
{ /* block id: 6 */
    __shared__ uint16_t l_1228;
    l_1228 = 1UL;
    int8_t *l_1229 = &hip_const_15;
    int32_t l_1231[9];
    // attempting a hip shared for loop
    __shared__ uint8_t l_1236[3][6][4];
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 4; k++)
                l_1236[i][j][k] = 0xB3L;
        }
    }
    // attempting a hip shared for loop
    __shared__ int32_t l_1238[1];
    for (int i = 0; i < 1; i++)
        l_1238[i] = 0x9FE810BFL;
    int32_t l_1240 = 0x5C7289B2L;
    uint64_t l_1261 = 0UL;
    uint32_t l_1298[2];
    uint8_t ***l_1357 = nullptr;
    // attempting a hip shared for loop
    __shared__ uint8_t ****l_1356[7][4];
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 4; j++)
            l_1356[i][j] = &l_1357;
    }
    uint32_t l_1366 = 0xAECA64E9L;
    __shared__ uint16_t *****l_1369;
    l_1369 = &p_2883->g_718;
    __shared__ uchar4 l_1417;
    l_1417 = make_uchar4(0UL, 0xF1L, 0UL, 0xF1L);
    char2 l_1440 = make_char2(1L, 0x0BL);
    int3 l_1460 = make_int3(0x64ED1F0CL, 0xE7185460L, 0x64ED1F0CL);
    __shared__ int1 l_1504;
    l_1504 = make_int1(0L);
    uint1 l_1538 = make_uint1(0xAD9E83B9L);
    char4 l_1550 = make_char4((-4L), 0xD8L, (-4L), 0xD8L);
    char4 l_1551 = make_char4((-9L), 0x68L, (-9L), 0x68L);
    uint3 l_1557 = make_uint3(0x5F7B9C71L, 6UL, 0x5F7B9C71L);
    int8_t l_1588 = 0x9DL;
    ulong3 l_1602 = make_ulong3(1UL, 0x4C13B4681D0B90CELL, 1UL);
    ushort3 l_1667 = make_ushort3(0xC2FAL, 0x4567L, 0xC2FAL);
    __shared__ int8_t l_1702;
    l_1702 = (-1L);
    uchar4 l_1710 = make_uchar4(0x5EL, 0xD6L, 0x5EL, 0xD6L);
    __shared__ ushort1 l_1713;
    l_1713 = make_ushort1(0x9D6FL);
    ushort4 l_1716 = make_ushort4(65526UL, 1UL, 65526UL, 1UL);
    long1 l_1721 = make_long1(0x4279B6847220481FLL);
    long2 l_1727 = make_long2((-1L), 1L);
    __shared__ ushort4 l_1736;
    l_1736 = make_ushort4(0x803EL, 65530UL, 0x803EL, 65530UL);
    long3 l_1739 = make_long3(0x07D483C628C11DDCLL, (-1L), 0x07D483C628C11DDCLL);
    uint64_t l_1755 = 0x7CE3A70EF36211E0LL;
    ushort3 l_1760 = make_ushort3(0x09DBL, 0x9586L, 0x09DBL);
    int64_t *l_1779 = &p_2883->g_1513;
    uint32_t l_1789 = 1UL;
    uint64_t l_1792 = 0xC1EB373BF45F9374LL;
    int64_t *l_1799 = &hip_const_17;
    int32_t l_1807 = 0x180F5371L;
    uint3 l_1834 = make_uint3(4294967295UL, 0x8A652F7CL, 4294967295UL);
    int i, j, k;
    for (int i = 0; i < 9; i++)
        l_1231[i] = 0xFC6279C3L;
    for (int i = 0; i < 1; i++)
        l_1238[i] = 0x9FE810BFL;
    for (int i = 0; i < 2; i++)
        l_1298[i] = 4294967294UL;
lbl_1757:
    for (p_37 = 15; (p_37 == (-24)); p_37 = safe_sub_func_int16_t_s_s(p_37, 1))
    { /* block id: 9 */
        char2 l_46 = make_char2((-1L), (-3L));
        int32_t *l_1208 = &hip_const_12;
        int32_t *l_1209 = &p_2883->g_1107;
        __shared__ char3 l_1226;
        l_1226 = make_char3((-1L), 0x99L, (-1L));
        // attempting a hip shared for loop
        __shared__ uint32_t *l_1227[10];
        for (int i = 0; i < 10; i++)
            l_1227[i] = &hip_const_9;
        int8_t *l_1230 = &p_2883->g_1066;
        uint16_t *l_1237 = nullptr;
        int32_t *l_1239 = nullptr;
        uint32_t l_1277 = 18446744073709551610UL;
        int32_t l_1280 = 6L;
        int3 l_1287 = make_int3(6L, 0xEB1E13C6L, 6L);
        uint64_t l_1295 = 0xACECB6AC87AD92FALL;
        __shared__ char1 l_1305;
        l_1305 = make_char1(0L);
        uchar4 l_1324 = make_uchar4(0UL, 1UL, 0UL, 1UL);
        int i;
    }
    for (l_1366 = (-15); (l_1366 == 51); l_1366++)
    { /* block id: 458 */
        int32_t l_1412 = 1L;
        int1 l_1413 = make_int1((-7L));
        int3 l_1416 = make_int3((-5L), 0xEFC6EC84L, (-5L));
        uint16_t ***l_1434 = &p_2883->g_163[5][3];
        int8_t l_1447 = 0xB0L;
        __shared__ int64_t ***l_1458;
        l_1458 = &p_2883->g_389;
        uint4 l_1542 = make_uint4(1UL, 0UL, 1UL, 0UL);
        char1 l_1580 = make_char1(0x09L);
        ulong4 l_1603 = make_ulong4(0xE512F80E30A077F9LL, 0UL, 0xE512F80E30A077F9LL, 0UL);
        long3 l_1641 = make_long3(0x48A3FB1BE924A062LL, 5L, 0x48A3FB1BE924A062LL);
        ushort4 l_1719 = make_ushort4(0x9A53L, 0xE59AL, 0x9A53L, 0xE59AL);
        __shared__ long1 l_1741;
        l_1741 = make_long1((-6L));
        __shared__ uint8_t l_1753;
        l_1753 = 1UL;
        // attempting a hip shared for loop
        __shared__ int32_t *l_1756[4];
        for (int i = 0; i < 4; i++)
            l_1756[i] = &hip_const_8[0][2][1];
        int i;
        for (p_2883->g_749 = 0; (p_2883->g_749 <= 2); p_2883->g_749 += 1)
        { /* block id: 461 */
            int32_t *l_1408 = nullptr;
            int32_t *l_1409[5];
            int8_t ***l_1420 = &p_2883->g_1023;
            int8_t ****l_1419 = &l_1420;
            uint64_t l_1435[1][5][6] = {{{0UL, 18446744073709551609UL, 0xA210E7A5DEDC11A1LL, 1UL, 18446744073709551609UL, 0x0D07E64F86C64485LL}, {0UL, 18446744073709551609UL, 0xA210E7A5DEDC11A1LL, 1UL, 18446744073709551609UL, 0x0D07E64F86C64485LL}, {0UL, 18446744073709551609UL, 0xA210E7A5DEDC11A1LL, 1UL, 18446744073709551609UL, 0x0D07E64F86C64485LL}, {0UL, 18446744073709551609UL, 0xA210E7A5DEDC11A1LL, 1UL, 18446744073709551609UL, 0x0D07E64F86C64485LL}, {0UL, 18446744073709551609UL, 0xA210E7A5DEDC11A1LL, 1UL, 18446744073709551609UL, 0x0D07E64F86C64485LL}}};
            uint16_t ****l_1457 = &l_1434;
            int32_t l_1459[10][2][10] = {{{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}, {{0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}, {0x07E0399CL, 0xCA72FCD7L, 0x7599BE79L, 0xB3A0A320L, 0xBEAF9A66L, 0xCEB7F9F2L, (-1L), 0xE5D06B56L, 0L, 0L}}};
            uint32_t l_1466 = 0x06500D3FL;
            __shared__ int32_t l_1502;
            l_1502 = 0x5D7F80F9L;
            __shared__ uchar3 l_1510;
            l_1510 = make_uchar3(0xA1L, 0xEFL, 0xA1L);
            uint64_t *l_1564 = &p_2883->g_58[4][1][3];
            int32_t **l_1568[6] = {&l_1409[1], &l_1409[1], &l_1409[1], &l_1409[1], &l_1409[1], &l_1409[1]};
            int32_t ***l_1567 = &l_1568[0];
            uchar3 l_1584 = make_uchar3(255UL, 0x24L, 255UL);
            uchar1 l_1589 = make_uchar1(0xDCL);
            int4 l_1616 = make_int4(0L, 0x63DF079BL, 0L, 0x63DF079BL);
            int3 l_1617 = make_int3(0x762FAC6EL, 0L, 0x762FAC6EL);
            int8_t l_1626 = 1L;
            uchar3 l_1682 = make_uchar3(0x9BL, 0x16L, 0x9BL);
            int i, j, k;
            for (int i = 0; i < 5; i++)
                l_1409[i] = &l_1231[8];
            if ((safe_rshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s(((safe_div_func_uint32_t_u_u(((nullptr == l_1356[p_2883->g_749][(p_2883->g_749 + 1)]) >= (p_2883->g_244.z = make_int3(0x792908F1L, 0xACAA46B6L, make_int1((*p_35)).x).z)), (safe_add_func_int16_t_s_s(0x9324L, p_37)))) , l_1412), ((make_int4(l_1413.x, l_1413.x, l_1413.x, l_1413.x) ^ make_int4(0xC501C65DL, (0xDF042D0CL <= (p_34 , ((((safe_div(make_int2(l_1416.z, l_1416.z), make_int2(0x3D79FFEBL, (-1L))))) | make_int2(1L, (-1L)))).x)), 8L, 0x1F1A5A71L))).y)), make_uchar2(l_1417.x, l_1417.x).y)))
            { /* block id: 463 */
                uint32_t l_1421 = 7UL;
                p_2883->g_1392.x = (l_1421 &= make_int3(0xBAFADDCEL, 0xFC8EF192L, (((make_ulong2(p_2883->g_1418.x, p_2883->g_1418.x).y , l_1419) != p_2883->g_1335) >= p_37)).z);
                if (p_2883->g_749)
                    goto lbl_1780;
            }
            else
            { /* block id: 466 */
                for (p_2883->g_222 = 0; (p_2883->g_222 <= 2); p_2883->g_222 += 1)
                { /* block id: 469 */
                    int32_t **l_1422 = &l_1409[1];
                    (*l_1422) = &p_2883->g_1107;
                }
            }
        }
        for (p_2883->g_1182 = 4; (p_2883->g_1182 != 58); ++p_2883->g_1182)
        { /* block id: 560 */
            int32_t *l_1697 = nullptr;
            int32_t *l_1698 = &l_1231[0];
            __shared__ int32_t l_1699;
            l_1699 = 0xB07436F7L;
            __shared__ int32_t *l_1700;
            l_1700 = &l_1240;
            int32_t *l_1701[1];
            uint64_t l_1703 = 0UL;
            long1 l_1724 = make_long1(1L);
            int i;
            for (int i = 0; i < 1; i++)
                l_1701[i] = &l_1240;
            ++l_1703;
            for (l_1447 = 0; (l_1447 == 8); ++l_1447)
            { /* block id: 564 */
                int16_t *l_1720 = &p_2883->g_903[9][0][0];
                long3 l_1728 = make_long3(0xC2E49D14A61F2220LL, 0x2856BE2BC7AC1D9FLL, 0xC2E49D14A61F2220LL);
                long1 l_1740 = make_long1(0x6CBD66F698D551B0LL);
                int16_t *l_1742 = &hip_const_10[5][2];
                int16_t *l_1743 = &hip_const_10[3][5];
                int16_t *l_1744[8] = {&p_2883->g_91, &hip_const_10[0][1], &p_2883->g_91, &hip_const_10[0][1], &p_2883->g_91, &hip_const_10[0][1], &p_2883->g_91, &hip_const_10[0][1]};
                int8_t l_1754 = 1L;
                int i;
                if (hip_const_11)
                    break;
                (*p_2883->g_1685) = nullptr;
                l_1416.y |= make_int2(2L, ((safe_lshift_func_uint8_t_u_u(make_uchar1(l_1710.w).x, (safe_rshift_func_int64_t_s_u(make_long1(0xF3A2F4B60902D318LL).x, (((make_ushort2(l_1713.x, l_1713.x) ^ ((make_ushort2(4UL, 1UL) ^ ((safe_mul(make_ushort2(l_1716.x, l_1716.x), make_ushort2((safe_div_func_uint16_t_u_u((l_1434 != ((**l_1369) = nullptr)), make_ushort1(l_1719.y).x)), 65535UL)))))))).y != l_1667.x))))) | p_33)).y;
                p_2883->g_861.z |= (((*l_1720) = 4L) <= ((p_36 , (~make_long1((-1L)).x)) , ((0x4E1F42377E074534LL < ((0x3939E207D71DFC12LL > ((make_long4(l_1721.x, l_1721.x, l_1721.x, l_1721.x) & ((safe_add(make_long4(l_1724.x, l_1724.x, l_1724.x, l_1724.x), make_long4(6L, (-7L), ((safe_mod_func_int64_t_s_s(((make_long1(l_1727.x) ^ ((make_long1(l_1728.y) & make_long1((((((safe_mod_func_int32_t_s_s(((~((make_int1(p_2883->g_1731.x) ^ ((((safe_mod(((make_int1(((make_int3(0x6FCBF5C6L, ((safe_rshift_func_uint16_t_u_s(make_ushort3(l_1736.w, l_1736.w, l_1736.w).z, (l_1240 ^= ((safe_mul_func_int16_t_s_s((make_short1((p_2883->g_384.y = ((make_uint1(0UL).x && ((*p_35) & 0x5836F232L)) && ((((make_long2(l_1739.x, l_1739.x) ^ make_long2(l_1740.x, l_1740.x))) | make_long2(l_1741.x, l_1741.x))).x))).x || p_33), (safe_lshift_func_uint64_t_u_s((safe_lshift_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(p_34, l_1753)), 12)) || 0x4ADB79A9L), 12)), 53)))) == l_1754)))) <= 0UL), 0x4BB86600L) & make_int3(0L, 0L, 0L))).y) ^ make_int1((-1L)))), make_int1((-1L))))) & make_int1(0x2E026A5AL))))))).x, l_1740.x)) < l_1366) , &p_2883->g_390) != nullptr) < l_1298[0])))))).x, l_1755)) >= (*l_1698)), (-1L))))))).w) ^ l_1412)) | p_2883->g_176.x)));
            }
        }
        p_33 ^= (*p_35);
    }
    if (hip_const_11)
        goto lbl_1757;
    if ((p_37 , ((safe_div_func_uint16_t_u_u(make_ushort4(make_ushort4(l_1760.x, l_1760.x, l_1760.x, l_1760.x).w, 2UL, (safe_rshift_func_int64_t_s_s(((*l_1779) = (safe_div_func_int32_t_s_s(make_int3((l_1721.x | make_uchar2((l_1460.z = (safe_div_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((safe_mul_func_uint32_t_u_u(((((make_char3(p_2883->g_1771.y, p_2883->g_1771.y, p_2883->g_1771.y) ^ make_char3((-1L), 0xEAL, 0xADL))).y & (!(l_1238[0] = ((nullptr == &p_2883->g_817) >= p_36)))) >= ((p_2883->g_1778 = ((l_1231[6] = (make_short1(((((safe_rshift_func_uint64_t_u_u((safe_add_func_uint8_t_u_u((p_2883->g_678.x = ((p_34 , (p_34 , ((safe_add_func_int8_t_s_s((&p_2883->g_718 == l_1369), p_34)) || (-2L)))) | l_1228)), 0xFDL)), 11)) , 0xE8075AE2L) | p_36) & (*p_35))).x , l_1538.x)) , l_1369)) == l_1369)), l_1736.y)), l_1298[0])), l_1298[0]))), 253UL).y), p_2883->g_192, (*p_35)).x, l_1538.x))), p_37)), p_33).w, 0xDD43L)) && l_1538.x)))
    { /* block id: 584 */
lbl_1780:
        (*p_2883->g_1685) = (*p_2883->g_1685);
        for (p_2883->g_518 = 0; (p_2883->g_518 <= 0); p_2883->g_518 += 1)
        { /* block id: 589 */
            int32_t *l_1781 = nullptr;
            int32_t *l_1782 = nullptr;
            int32_t *l_1783 = &l_1240;
            int32_t *l_1784 = &l_1240;
            int32_t *l_1785 = &l_1231[(p_2883->g_518 + 2)];
            __shared__ int32_t *l_1786;
            l_1786 = nullptr;
            __shared__ int32_t *l_1787;
            l_1787 = &hip_const_11;
            int32_t *l_1788[1];
            char2 l_1798 = make_char2(9L, 6L);
            __shared__ int32_t l_1818;
            l_1818 = 2L;
            int i;
            for (int i = 0; i < 1; i++)
                l_1788[i] = &hip_const_11;
            p_35 = ((*p_2883->g_1685) = &p_33);
            --l_1789;
            if (l_1792)
                break;
            (*p_2883->g_817) = (**p_2883->g_1685);
            for (p_2883->g_1513 = 0; (p_2883->g_1513 <= 0); p_2883->g_1513 += 1)
            { /* block id: 597 */
                uint4 l_1802 = make_uint4(4294967295UL, 4294967291UL, 4294967295UL, 4294967291UL);
                int1 l_1813 = make_int1(1L);
                // attempting a hip shared for loop
                __shared__ int32_t l_1820[5];
                for (int i = 0; i < 5; i++)
                    l_1820[i] = 0xB4E060F8L;
                int i;
                for (int i = 0; i < 5; i++)
                    l_1820[i] = 0xB4E060F8L;
                if ((*p_35))
                    break;
                for (p_2883->g_1397 = 0; (p_2883->g_1397 <= 0); p_2883->g_1397 += 1)
                { /* block id: 601 */
                    int32_t l_1808[8] = {0x75247A60L, 0xBA7E6B1CL, 0x75247A60L, 0xBA7E6B1CL, 0x75247A60L, 0xBA7E6B1CL, 0x75247A60L, 0xBA7E6B1CL};
                    __shared__ int1 l_1816;
                    l_1816 = make_int1(0x8ACAD831L);
                    uint32_t *l_1817 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ uint64_t *l_1819[8][5];
                    for (int i = 0; i < 8; i++)
                    {
                        for (int j = 0; j < 5; j++)
                            l_1819[i][j] = nullptr;
                    }
                    int i, j, k;
                    for (l_1588 = 0; (l_1588 >= 0); l_1588 -= 1)
                    { /* block id: 604 */
                        int i, j, k;
                        l_1238[p_2883->g_518] = ((p_2883->g_1793 = &p_2883->g_91) == nullptr);
                        return p_2883->g_903[p_2883->g_1513][l_1588][p_2883->g_1513];
                    }
                    (*p_35) = (((l_1820[3] = (safe_add_func_int64_t_s_s((safe_add_func_int64_t_s_s(((make_char1(l_1798.x).x , l_1799) == nullptr), p_2883->g_903[p_2883->g_518][(p_2883->g_518 + 1)][p_2883->g_518])), (safe_add_func_uint32_t_u_u((l_1802.y , (l_1818 = (safe_add_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(p_37, l_1802.y)) <= (((l_1808[6] = l_1807) | (((safe_rshift(((safe_mod(((((make_int4(l_1813.x, l_1813.x, l_1813.x, l_1813.x) | ((make_int4(p_2883->g_1814.x, p_2883->g_1814.x, p_2883->g_1814.x, p_2883->g_1814.x) ^ ((make_int4(p_2883->g_1815.x, p_2883->g_1815.x, p_2883->g_1815.x, p_2883->g_1815.x) ^ ((((make_int4(0x64976FD0L, l_1802.x, 1L, 0xBC6A2646L) | make_int4(6L, 6L, 6L, 6L))) ^ make_int4((-1L), (-1L), (-1L), (-1L)))))))))) & make_int4((-1L), (-1L), (-1L), (-1L)))), make_int4(0x23A305EAL, 0x23A305EAL, 0x23A305EAL, 0x23A305EAL)))), make_int4(32, 32, 32, 32)))).x , 0x30D2L)) & 0x3BE4L)), l_1816.x)))), p_36))))) >= p_2883->g_1506.x) && p_36);
                }
            }
        }
    }
    else
    { /* block id: 616 */
        __shared__ int32_t *l_1821;
        l_1821 = &hip_const_2;
        uint64_t *l_1828 = nullptr;
        uint64_t *l_1829 = nullptr;
        uint64_t *l_1830 = &p_2883->g_1182;
        short1 l_1833 = make_short1((-6L));
        __shared__ uint8_t ****l_1837;
        l_1837 = &p_2883->g_1359;
        int32_t *l_1838 = nullptr;
        int32_t *l_1839 = &hip_const_11;
        int32_t *l_1840 = &l_1807;
        int i;
        (*p_2883->g_1685) = l_1821;
        (*l_1840) = (!(0xFEFFDD80911C6EA0LL || (safe_div_func_int8_t_s_s(p_34, ((&p_2883->g_749 == nullptr) , (0x7722L && ((l_1460.z &= (make_short4(0L, 0x805DL, (safe_lshift_func_uint8_t_u_u((((~(~((((p_2883->g_1731.x &= (((+((safe_rshift_func_int64_t_s_u((((*l_1830) ^= 0xC2CC4503E72A4BE0LL) & (safe_mul_func_int16_t_s_s(((make_short3(l_1833.x, l_1833.x, l_1833.x) ^ make_short3(1L, 0xC0B5L, make_short1(0L).x))).x, p_36))), 55)) & ((make_uint4(l_1834.z, l_1834.z, l_1834.z, l_1834.z).z && make_uint4(4294967290UL, (safe_mul_func_uint64_t_u_u((((l_1837 != nullptr) > 18446744073709551609UL) <= (-1L)), p_33)), 0x80EA4896L, p_2883->g_244.w).x) & p_34))) || 3UL) <= (*l_1821))) & (*p_35)) , p_37) > p_2883->g_93))) ^ p_36) ^ p_37), p_36)), 0x34F4L).x , (*l_1821))) == p_34)))))));
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_5 hip_const_6 p_2883->g_58 hip_const_16 hip_const_10 p_2883->g_93 p_2883->g_91 p_2883->g_106 p_2883->g_107 hip_const_13 hip_const_11 p_2883->g_119 hip_const_8 p_2883->g_138 hip_const_15 hip_const_2 p_2883->g_155 p_2883->g_159 p_2883->g_176 p_2883->g_190 p_2883->g_194 hip_const_14 hip_const_3 p_2883->g_205 p_2883->g_222 hip_const_18 p_2883->g_244 hip_const_7 hip_const_1 p_2883->g_264 p_2883->g_272 hip_const_12 p_2883->g_192 p_2883->g_309 p_2883->g_360 p_2883->g_367 p_2883->g_389 p_2883->g_384 p_2883->g_364 p_2883->g_519 p_2883->g_552 hip_const_4 p_2883->g_585 p_2883->g_592 p_2883->g_613 p_2883->g_474 p_2883->g_632 p_2883->g_718 p_2883->g_473 p_2883->g_18 p_2883->g_719 p_2883->g_160 p_2883->g_647 p_2883->g_730 p_2883->g_817 p_2883->g_670 p_2883->g_903 p_2883->g_197
 * writes: p_2883->g_58 p_2883->g_93 p_2883->g_163 p_2883->g_194 p_2883->g_197 p_2883->g_309 p_2883->g_205 p_2883->g_244 p_2883->g_364 p_2883->g_91 p_2883->g_384 p_2883->g_222 p_2883->g_519 p_2883->g_552 p_2883->g_159 p_2883->g_592 p_2883->g_192 p_2883->g_389 p_2883->g_478 p_2883->g_718 p_2883->g_160 p_2883->g_817 p_2883->g_670 p_2883->g_861
 */
__device__ int32_t  func_42(int32_t  p_43, struct S0 * p_2883)
{ /* block id: 10 */
    uint16_t *l_56 = &hip_const_7;
    uint16_t *l_57[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int32_t l_59 = 0xA0D67432L;
    __shared__ int64_t l_60;
    l_60 = 1L;
    int32_t l_66 = 6L;
    int8_t *l_71 = &hip_const_15;
    int8_t *l_72 = nullptr;
    int32_t l_73[8][6][5] = {{{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}, {{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}, {{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}, {{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}, {{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}, {{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}, {{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}, {{3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}, {3L, 0x4272ABD0L, (-5L), 0xBC662C87L, 0x71B997E3L}}};
    int32_t *l_562 = &hip_const_11;
    int32_t **l_561 = &l_562;
    int32_t *l_1196 = &hip_const_12;
    // attempting a hip shared for loop
    __shared__ int32_t *l_1197[5][8][6];
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            for (int k = 0; k < 6; k++)
                l_1197[i][j][k] = &p_2883->g_1107;
        }
    }
    __shared__ int32_t l_1198;
    l_1198 = 0x544743FFL;
    __shared__ uint32_t l_1199;
    l_1199 = 4294967286UL;
    // attempting a hip shared for loop
    __shared__ int32_t l_1202[1][5];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 5; j++)
            l_1202[i][j] = 7L;
    }
    int64_t *l_1203 = nullptr;
    int64_t *l_1204 = nullptr;
    int64_t *l_1205 = nullptr;
    int64_t *l_1206[5];
    uint16_t l_1207[10] = {0x8818L, 0x2693L, 1UL, 1UL, 0x2693L, 0x8818L, 0x2693L, 1UL, 1UL, 0x2693L};
    int i, j, k;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 5; j++)
            l_1202[i][j] = 7L;
    }
    for (int i = 0; i < 5; i++)
        l_1206[i] = &hip_const_17;
    l_73[5][2][2] = (safe_lshift_func_int16_t_s_s(func_49(p_43, (safe_mod_func_uint16_t_u_u((l_59 = (p_2883->g_58[3][2][1] &= (hip_const_5[3][1][4] == hip_const_6[2]))), p_43)), l_60, ((*l_561) = func_61(l_60, ((l_66 &= (hip_const_5[3][1][0] , 1UL)) , ((safe_rshift_func_int32_t_s_u(func_69(((l_73[7][1][3] ^= ((l_66 = 1L) > (-1L))) & 0L), p_2883), p_43)) >= hip_const_10[0][7])), p_43, l_57[2], p_2883)), p_2883), 13));
    --l_1199;
    p_2883->g_861.w = make_int3(((l_1207[1] ^= (hip_const_5[2][0][3] > l_1202[0][3])) || 0xEF847E6433F3C52CLL), 0xADE580CBL, (-8L)).y;
    return p_2883->g_197;
}


/* ------------------------------------------ */
/* 
 * reads : p_2883->g_176 p_2883->g_138 p_2883->g_592 p_2883->g_309 hip_const_4 p_2883->g_58 p_2883->g_585 p_2883->g_367 p_2883->g_244 p_2883->g_192 p_2883->g_222 p_2883->g_613 p_2883->g_474 p_2883->g_93 p_2883->g_632 p_2883->g_205 p_2883->g_194 hip_const_2 p_2883->g_106 p_2883->g_718 p_2883->g_473 hip_const_10 p_2883->g_18 p_2883->g_719 p_2883->g_190 p_2883->g_160 p_2883->g_647 p_2883->g_730 p_2883->g_155 p_2883->g_817 p_2883->g_670 p_2883->g_903 p_2883->g_91
 * writes: p_2883->g_592 p_2883->g_192 p_2883->g_222 p_2883->g_159 p_2883->g_58 p_2883->g_389 p_2883->g_194 p_2883->g_91 p_2883->g_197 p_2883->g_478 p_2883->g_718 p_2883->g_160 p_2883->g_817 p_2883->g_670
 */
__device__ int16_t  func_49(int32_t  p_50, uint64_t  p_51, uint8_t  p_52, int32_t * p_53, struct S0 * p_2883)
{ /* block id: 180 */
    __shared__ uint64_t l_589;
    l_589 = 1UL;
    int32_t l_607[7];
    int64_t **l_608 = &p_2883->g_390;
    uint2 l_609 = make_uint2(0x9313742EL, 18446744073709551615UL);
    int8_t *l_611 = &hip_const_14[2];
    int8_t **l_610 = &l_611;
    int2 l_614 = make_int2(0L, (-1L));
    uint16_t **l_616 = nullptr;
    uint64_t l_628 = 1UL;
    ulong1 l_656 = make_ulong1(1UL);
    // attempting a hip shared for loop
    __shared__ int32_t l_705[1];
    for (int i = 0; i < 1; i++)
        l_705[i] = 0x05C61FC7L;
    __shared__ long3 l_739;
    l_739 = make_long3(5L, (-1L), 5L);
    int1 l_773 = make_int1(0x55AFE5D7L);
    long3 l_812 = make_long3(3L, 0L, 3L);
    int64_t l_832 = 0xDE845808D55CBAB4LL;
    int64_t l_854 = 0xCC849299BF13D750LL;
    __shared__ uint8_t **l_893;
    l_893 = &p_2883->g_553;
    uint8_t ***l_1009 = &p_2883->g_552;
    uint8_t ****l_1008 = &l_1009;
    __shared__ int64_t l_1047;
    l_1047 = 5L;
    int32_t l_1067 = 0xBE3EBDC6L;
    uint32_t l_1069 = 0UL;
    int32_t l_1081[3][6][2];
    __shared__ int16_t l_1094;
    l_1094 = (-1L);
    int32_t *l_1099 = &l_607[4];
    uint16_t l_1117[3];
    int64_t l_1156 = (-4L);
    uint32_t l_1157 = 0x2081C228L;
    uchar4 l_1171 = make_uchar4(0xDBL, 252UL, 0xDBL, 252UL);
    __shared__ uint3 l_1174;
    l_1174 = make_uint3(4294967295UL, 1UL, 4294967295UL);
    uchar1 l_1177 = make_uchar1(255UL);
    int32_t *l_1186 = &hip_const_12;
    int32_t *l_1187 = nullptr;
    int32_t *l_1188 = &l_1081[1][0][1];
    int32_t *l_1189 = nullptr;
    int32_t *l_1190 = nullptr;
    int32_t *l_1191[3];
    __shared__ int64_t l_1192;
    l_1192 = 5L;
    int i, j, k;
    for (int i = 0; i < 7; i++)
        l_607[i] = 0xA9F89BAAL;
    for (int i = 0; i < 1; i++)
        l_705[i] = 0x05C61FC7L;
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 2; k++)
                l_1081[i][j][k] = 0xF17A2050L;
        }
    }
    for (int i = 0; i < 3; i++)
        l_1117[i] = 65535UL;
    for (int i = 0; i < 3; i++)
        l_1191[i] = &hip_const_8[0][5][3];
lbl_593:
    for (p_52 = 0; (p_52 > 47); p_52 = safe_add_func_uint32_t_u_u(p_52, 1))
    { /* block id: 183 */
        uint32_t l_567[9] = {9UL, 4UL, 9UL, 4UL, 9UL, 4UL, 9UL, 4UL, 9UL};
        uchar2 l_568 = make_uchar2(0UL, 255UL);
        uint16_t **l_577 = &p_2883->g_160;
        uint16_t ***l_578[5][1][6] = {{{&p_2883->g_163[4][3], &p_2883->g_163[5][3], &p_2883->g_163[5][3], &l_577, nullptr, &p_2883->g_190}}, {{&p_2883->g_163[4][3], &p_2883->g_163[5][3], &p_2883->g_163[5][3], &l_577, nullptr, &p_2883->g_190}}, {{&p_2883->g_163[4][3], &p_2883->g_163[5][3], &p_2883->g_163[5][3], &l_577, nullptr, &p_2883->g_190}}, {{&p_2883->g_163[4][3], &p_2883->g_163[5][3], &p_2883->g_163[5][3], &l_577, nullptr, &p_2883->g_190}}, {{&p_2883->g_163[4][3], &p_2883->g_163[5][3], &p_2883->g_163[5][3], &l_577, nullptr, &p_2883->g_190}}};
        __shared__ uint64_t *l_579;
        l_579 = nullptr;
        uint64_t *l_580 = nullptr;
        uint64_t *l_581 = nullptr;
        uint64_t *l_582 = &p_2883->g_58[4][0][4];
        int16_t *l_588[6] = {&hip_const_18, &hip_const_18, &hip_const_10[0][7], &hip_const_18, &hip_const_18, &hip_const_10[0][7]};
        int32_t *l_590 = &hip_const_8[1][8][4];
        int32_t *l_591 = &hip_const_8[0][5][3];
        int i, j, k;
        p_2883->g_592 &= (((p_2883->g_176.x , (((safe_mod(make_uchar1(l_567[1]), ((((make_uchar1(l_568.y) ^ make_uchar1(5UL))) ^ ((safe_div(((safe_rshift(make_uchar1(0x16L), make_uchar1(0xAEL)))), ((safe_mod(make_uchar1((safe_add_func_uint16_t_u_u((((((p_2883->g_159[6][3] = l_577) == nullptr) < ((*l_582) &= hip_const_4)) >= ((l_589 = ((safe_add_func_uint64_t_u_u(0x99D83587F8426225LL, make_long4(1L, (-1L), (0x245C5F8FL > ((make_ulong4(p_2883->g_585.z, p_2883->g_585.z, p_2883->g_585.z, p_2883->g_585.z).z == (safe_div_func_uint16_t_u_u(65527UL, 0xD9D4L))) , p_2883->g_367.x)), 0x9565CA3CD3F2B688LL).w)) > p_2883->g_244.x)) < p_2883->g_367.x)) , l_589), 0x8F94L))), make_uchar1(0xF3L)))))))))))).x < 0UL)) , 255UL) == p_2883->g_138.y);
        if (p_52)
            goto lbl_593;
        if (p_2883->g_309)
            continue;
    }
    for (p_2883->g_192 = (-7); (p_2883->g_192 >= 1); ++p_2883->g_192)
    { /* block id: 193 */
        for (p_2883->g_222 = (-29); (p_2883->g_222 >= 26); p_2883->g_222++)
        { /* block id: 196 */
            int32_t *l_598 = &hip_const_2;
            __shared__ int32_t *l_599;
            l_599 = &hip_const_8[0][1][7];
            __shared__ int32_t *l_600;
            l_600 = &hip_const_8[1][8][5];
            int32_t *l_601 = nullptr;
            int32_t *l_602 = &hip_const_12;
            int32_t *l_603 = &hip_const_8[0][5][3];
            int32_t *l_604 = &hip_const_2;
            int32_t *l_605 = &hip_const_2;
            int32_t *l_606[10][5][4] = {{{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}, {{&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}, {&hip_const_11, &hip_const_12, nullptr, &hip_const_12}}};
            int i, j, k;
            l_607[4] &= (p_50 = 0x01F8F76DL);
        }
    }
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_6 p_2883->g_93 hip_const_8 p_2883->g_159 hip_const_15 p_2883->g_190 p_2883->g_194 hip_const_13 hip_const_2 hip_const_14 p_2883->g_119 hip_const_10 hip_const_3 hip_const_12 p_2883->g_138 p_2883->g_192 hip_const_5 p_2883->g_272 p_2883->g_205 p_2883->g_360 p_2883->g_367 p_2883->g_389 hip_const_11 hip_const_18 p_2883->g_106 p_2883->g_384 p_2883->g_244 p_2883->g_264 p_2883->g_91 p_2883->g_364 p_2883->g_519 hip_const_16 p_2883->g_222 p_2883->g_552 p_2883->g_107 p_2883->g_155 p_2883->g_176 hip_const_7 hip_const_1 p_2883->g_309
 * writes: p_2883->g_93 p_2883->g_163 p_2883->g_194 p_2883->g_197 p_2883->g_309 p_2883->g_205 p_2883->g_244 p_2883->g_364 p_2883->g_91 p_2883->g_384 p_2883->g_222 p_2883->g_519 p_2883->g_552
 */
__device__ int32_t * func_61(int32_t  p_62, int64_t  p_63, uint32_t  p_64, uint16_t * p_65, struct S0 * p_2883)
{ /* block id: 19 */
    uint8_t *l_85 = nullptr;
    int32_t l_86 = 5L;
    uint8_t *l_87 = &hip_const_1;
    uint8_t *l_88 = &hip_const_1;
    uint8_t *l_89 = &hip_const_1;
    uint8_t *l_90[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int32_t l_92 = 0xC2C21BE7L;
    int8_t l_118[1][2];
    __shared__ int8_t *l_120;
    l_120 = &l_118[0][0];
    __shared__ uint16_t *l_121;
    l_121 = &hip_const_6[2];
    int32_t *l_122 = &hip_const_8[0][5][3];
    __shared__ int32_t *l_123;
    l_123 = &hip_const_2;
    int32_t *l_124 = &hip_const_8[0][6][6];
    uint16_t *l_130 = &hip_const_6[2];
    uint16_t **l_129 = &l_130;
    uint16_t *l_132 = &hip_const_6[0];
    __shared__ uint16_t **l_131;
    l_131 = &l_132;
    uint16_t *l_133 = &hip_const_7;
    __shared__ uint16_t **l_134;
    l_134 = &l_133;
    int32_t *l_135 = nullptr;
    char4 l_145 = make_char4(8L, 0xFFL, 8L, 0xFFL);
    ushort4 l_154 = make_ushort4(7UL, 0x6FF5L, 7UL, 0x6FF5L);
    uint64_t l_158 = 0x4BFDF1D08C604228LL;
    uint16_t **l_162 = &l_133;
    uint32_t l_201 = 1UL;
    ulong4 l_216 = make_ulong4(18446744073709551615UL, 1UL, 18446744073709551615UL, 1UL);
    __shared__ uint64_t l_249;
    l_249 = 7UL;
    __shared__ int8_t l_260;
    l_260 = (-9L);
    long3 l_273 = make_long3(0xCF623B8A31F7803BLL, 1L, 0xCF623B8A31F7803BLL);
    int64_t *l_289[3];
    // attempting a hip shared for loop
    __shared__ int32_t l_323[6];
    for (int i = 0; i < 6; i++)
        l_323[i] = (-1L);
    int32_t **l_369 = &l_124;
    uint32_t l_412 = 6UL;
    uint32_t l_415[1];
    int8_t l_514 = 0xDBL;
    int32_t *l_555[4];
    int32_t l_556 = 0L;
    // attempting a hip shared for loop
    __shared__ int32_t l_557[9][6];
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 6; j++)
            l_557[i][j] = 0xCE8DF31FL;
    }
    __shared__ uint32_t l_558;
    l_558 = 0xB23FFAA6L;
    int i, j;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
            l_118[i][j] = (-5L);
    }
    for (int i = 0; i < 3; i++)
        l_289[i] = &hip_const_17;
    for (int i = 0; i < 1; i++)
        l_415[i] = 0xDB0D4896L;
    for (int i = 0; i < 4; i++)
        l_555[i] = &hip_const_8[0][5][3];
lbl_280:
    l_86 = ((((safe_sub_func_uint64_t_u_u((((safe_mul_func_int8_t_s_s(p_64, (hip_const_6[2] == ((*l_120) = (safe_unary_minus_func_uint32_t_u((safe_lshift_func_int8_t_s_u((((((--p_2883->g_93) & l_92) < (l_89 == &hip_const_1)) || make_uchar2(253UL, (safe_div_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(((p_2883->g_91 | (safe_div_func_int16_t_s_s(((+((safe_rshift_func_int16_t_s_u(make_short4((((p_64 , ((safe_add(make_long1(p_2883->g_106.x), make_long1(p_2883->g_107.z)))).x) | ((safe_mod_func_int64_t_s_s((safe_div_func_uint8_t_u_u((l_92 = l_92), (safe_add_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_s((safe_div_func_int64_t_s_s((&l_86 != &hip_const_12), p_64)), l_118[0][0])) , 6L), l_118[0][0])))), p_62)) | 0xCA46356BL)) | l_118[0][0]), l_92, 0xDBD1L, 6L).y, hip_const_13)) , p_62)) ^ p_64), hip_const_11))) , l_92), p_2883->g_119)), l_118[0][0]))).x) ^ p_63), 7)))))))) ^ 0xB4L) <= (-1L)), 0x6F67040F2447E691LL)) && 0xD01DBD87L) , l_121) == nullptr);
lbl_203:
    l_92 = (safe_mul_func_int64_t_s_s(((*l_122) , (safe_add_func_int8_t_s_s((p_65 == ((*l_129) = l_121)), (((*l_131) = &hip_const_6[1]) != ((*l_134) = l_133))))), p_64));
    if ((safe_div_func_int32_t_s_s(make_int3(p_63, (-6L), ((make_int1(p_2883->g_138.x).x , (0x2A81L ^ make_ushort1(0xA82FL).x)) <= (safe_div_func_uint64_t_u_u(((safe_sub_func_int32_t_s_s((p_2883->g_91 ^ (((hip_const_15 > make_char2(l_145.z, l_145.z).y) , &l_92) != ((safe_mul_func_uint8_t_u_u((((safe_sub(make_uchar3(255UL, 0xADL, 0x8AL), ((safe_mul(make_uchar3(0UL, ((((safe_sub_func_int64_t_s_s((*l_123), p_2883->g_93)) < make_ushort2(l_154.z, l_154.z).y) , (0L || ((((make_ulong1(p_2883->g_155.y).x | (safe_lshift_func_int16_t_s_u(9L, 15))) != 1L) | p_62) , p_64))) != p_62), 0xFEL), make_uchar3(0x38L, 0x38L, 0x38L))))))).x | p_63), p_2883->g_106.x)) , &l_86))), 0xE68C3BF2L)) , p_2883->g_155.z), l_158)))).y, (-1L))))
    { /* block id: 28 */
        uint16_t ***l_161[5];
        int32_t *l_164 = &hip_const_12;
        __shared__ int32_t *l_165;
        l_165 = &hip_const_2;
        int i;
        for (int i = 0; i < 5; i++)
            l_161[i] = nullptr;
        l_92 = ((l_162 = p_2883->g_159[6][3]) != (p_2883->g_163[5][3] = &p_65));
    }
    else
    { /* block id: 32 */
        ulong2 l_168 = make_ulong2(0x762AE1A41AF9FBB4LL, 0xB1093934F9474E04LL);
        int64_t *l_171 = nullptr;
        int64_t *l_172 = &hip_const_17;
        __shared__ int64_t *l_173;
        l_173 = &hip_const_13;
        int64_t *l_174[7] = {&hip_const_17, &hip_const_17, &hip_const_17, &hip_const_17, &hip_const_17, &hip_const_17, &hip_const_17};
        int32_t l_175 = 0x0FA9FD3CL;
        ulong2 l_237 = make_ulong2(1UL, 1UL);
        __shared__ uint4 l_245;
        l_245 = make_uint4(0x3595D045L, 5UL, 0x3595D045L, 5UL);
        __shared__ uint8_t *l_279;
        l_279 = &hip_const_1;
        int32_t *l_284[4] = {&hip_const_12, nullptr, &hip_const_12, nullptr};
        __shared__ ushort4 l_341;
        l_341 = make_ushort4(0xB201L, 1UL, 0xB201L, 1UL);
        uint32_t l_371[9];
        uint16_t l_400 = 0x1781L;
        uchar3 l_403 = make_uchar3(247UL, 0xD1L, 247UL);
        uint32_t l_410 = 18446744073709551609UL;
        uint64_t l_428[9] = {18446744073709551615UL, 0x844435A646DAC0E3LL, 18446744073709551615UL, 0x844435A646DAC0E3LL, 18446744073709551615UL, 0x844435A646DAC0E3LL, 18446744073709551615UL, 0x844435A646DAC0E3LL, 18446744073709551615UL};
        __shared__ int64_t l_447;
        l_447 = (-1L);
        __shared__ int8_t l_452;
        l_452 = 0x97L;
        char1 l_470 = make_char1(1L);
        int8_t *l_546 = &hip_const_14[2];
        uint8_t ***l_554 = &p_2883->g_552;
        int i;
        for (int i = 0; i < 9; i++)
            l_371[i] = 0x47D4C15BL;
        if ((safe_lshift_func_uint64_t_u_s(make_ulong1(l_168.x).x, (safe_div_func_int64_t_s_s((l_175 = (p_63 = p_62)), make_long1(p_2883->g_176.x).x)))))
        { /* block id: 35 */
            int32_t *l_183 = &l_92;
            __shared__ ushort3 l_198;
            l_198 = make_ushort3(65530UL, 65533UL, 65530UL);
            int64_t *l_281 = &hip_const_13;
            uint64_t *l_300 = &p_2883->g_194;
            uint32_t *l_310[2][8][5] = {{{&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}}, {{&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}, {&p_2883->g_93, nullptr, nullptr, &p_2883->g_93, &hip_const_9}}};
            int32_t **l_311[10] = {&l_183, nullptr, &l_183, nullptr, &l_183, nullptr, &l_183, nullptr, &l_183, nullptr};
            int i, j, k;
            for (p_62 = 0; (p_62 <= 4); p_62 += 1)
            { /* block id: 38 */
                uint16_t l_223 = 1UL;
                int64_t *l_230 = &hip_const_17;
                int64_t *l_232[6] = {&hip_const_13, nullptr, &hip_const_13, nullptr, &hip_const_13, nullptr};
                long1 l_263 = make_long1(0x0048D73544DA8E2CLL);
                __shared__ int32_t l_276;
                l_276 = (-9L);
                int i;
                if (hip_const_15)
                    break;
                for (l_86 = 1; (l_86 <= 4); l_86 += 1)
                { /* block id: 42 */
                    uint32_t l_191 = 1UL;
                    int32_t l_193 = 0x163CD058L;
                    uint8_t *l_204 = &hip_const_1;
                    long2 l_271 = make_long2(0xD722876F92318213LL, 0xF3DB490537F6ACF3LL);
                    int i;
                    if (((safe_sub_func_uint8_t_u_u((safe_add_func_int16_t_s_s(((safe_lshift_func_int32_t_s_u((l_183 != ((make_int1(0L).x || ((safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s((p_64 | (safe_rshift_func_uint16_t_u_s((((p_2883->g_197 = ((l_191 = ((nullptr != p_2883->g_190) || ((make_int1(0L) ^ make_int1(0x3F262008L))).x)) , (p_2883->g_194--))) ^ hip_const_13) || make_ushort3(l_198.z, l_198.z, l_198.z).y), (safe_rshift_func_uint16_t_u_s(l_201, 1))))), (*l_123))), (+(((0x37462964L < p_63) | l_193) < (*l_183))))) == p_64)) , &hip_const_12)), p_64)) >= hip_const_14[2]), 0xD5D3L)), p_2883->g_119)) & 18446744073709551615UL))
                    { /* block id: 46 */
                        uint32_t l_202 = 0xE669F7C8L;
                        if (l_175)
                            break;
                        l_202 &= hip_const_10[6][8];
                        if (hip_const_13)
                            goto lbl_203;
                        if (hip_const_6[2])
                            continue;
                    }
                    else
                    { /* block id: 51 */
                        if (hip_const_3)
                            break;
                        return &hip_const_12;
                    }
                    for (p_64 = 0; (p_64 <= 4); p_64 += 1)
                    { /* block id: 57 */
                        __shared__ uint16_t *l_217;
                        l_217 = nullptr;
                        uint16_t *l_218 = &hip_const_7;
                        uint16_t *l_219 = &p_2883->g_197;
                        int64_t **l_231[6];
                        int32_t l_248 = 0L;
                        int i;
                        for (int i = 0; i < 6; i++)
                            l_231[i] = &l_174[3];
                        (*l_183) |= (l_223 |= (p_64 || ((l_204 != l_204) == ((make_uint3(p_2883->g_205.x, p_2883->g_205.x, p_2883->g_205.x) ^ make_uint3((p_65 != p_65), ((((0xE0C10409L ^ (safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint64_t_u_u((((safe_sub_func_int16_t_s_s(((safe_div_func_uint64_t_u_u((safe_lshift_func_uint64_t_u_u(0x1D9BD75CEE96C84CLL, make_ulong2(l_216.w, l_216.w).y)), hip_const_10[2][8])) ^ ((*l_219) = make_ushort1(65535UL).x)), (safe_lshift_func_int8_t_s_s(p_2883->g_222, 6)))) && (-6L)) > 254UL), 38)) & p_2883->g_107.y), hip_const_18))) > 0x4DD8L) ^ p_63) > 4294967295UL), 0UL))).y)));
                        l_175 = (((safe_sub_func_int8_t_s_s((((make_ushort2(make_ushort3(0x35F4L, 7UL, (safe_add_func_int32_t_s_s(0x74B31048L, (~(safe_add_func_uint16_t_u_u((((l_230 = l_230) == l_232[2]) | (safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s((-3L), (make_ulong4(l_237.y, l_237.y, l_237.y, l_237.y).x | 18446744073709551606UL))), 0x4BA0CDF28E5AF4E9LL))), (nullptr == l_232[2]))))))).z, 0xBF90L) | make_ushort2(((safe_rshift_func_int32_t_s_u((safe_add_func_uint64_t_u_u((((((*l_183) = make_int3(0L, (((((l_248 = ((!(safe_mod_func_int32_t_s_s(make_int3(p_2883->g_244.w, p_2883->g_244.w, p_2883->g_244.w).z, ((make_uint3(l_245.w, l_245.w, l_245.w) ^ ((make_uint3((safe_mod_func_uint32_t_u_u((*l_123), p_64)), 0UL, 0x6D23637AL) | make_uint3(4294967292UL, 4294967292UL, 4294967292UL))))).x))) >= 0xC692L)) <= 4UL) & 0x4A16A100968CA8C2LL) > 18446744073709551613UL) & hip_const_7), 0x26348B1DL).z) , l_174[4]) != &p_63) || l_223), 0x0F9319D2E82F85C9LL)), hip_const_1)) , l_249), 65535UL))).x , hip_const_3), p_64)) < l_223) == 1L);
                    }
                    for (l_249 = 0; (l_249 <= 0); l_249 += 1)
                    { /* block id: 68 */
                        int i, j;
                        l_276 = ((safe_sub_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s(((((l_118[l_249][(l_249 + 1)] , (safe_add_func_uint16_t_u_u(0xB4E3L, ((safe_sub(((safe_div(make_short2((-1L), (~((-2L) && (l_260 = 0x2531L)))), make_short2(1L, (((((safe_sub(make_long2(l_263.x, l_263.x), ((make_long2(p_2883->g_264.x, p_2883->g_264.x) ^ ((((safe_mul(((safe_add(((safe_div(make_long2(p_2883->g_244.w, 0x140DDB9D46EC3D0FLL), make_long2(l_271.y, l_271.y)))), make_long2(p_2883->g_272.x, p_2883->g_272.x)))), ((make_long2(l_273.y, l_273.y) & make_long2((-8L), (-1L))))))) & make_long2((make_int3((safe_mod_func_uint8_t_u_u(0x48L, hip_const_5[1][1][0])), 0xAA1E9C32L, ((((hip_const_14[2] | (p_2883->g_159[(l_249 + 5)][p_62] == &p_65)) , (-1L)) , nullptr) != &p_2883->g_160)).x | p_2883->g_176.x), (-10L))))))))).x | l_191) > l_193) < l_245.y))))), make_short2((-1L), (-1L))))).x))) | 18446744073709551615UL) | (*l_123)) , hip_const_12), p_63)) , p_2883->g_138.x), 1UL)) >= 0xBA16L);
                    }
                    if ((safe_lshift_func_uint8_t_u_u((l_88 != l_279), 6)))
                    { /* block id: 72 */
                        (*l_183) = p_64;
                        if (p_2883->g_194)
                            goto lbl_203;
                    }
                    else
                    { /* block id: 75 */
                        if (p_64)
                            goto lbl_280;
                        (*l_183) = ((*l_183) <= (p_2883->g_192 | (l_281 == ((+0xC05448FBL) , &p_63))));
                        (*l_183) = hip_const_5[3][1][0];
                        if (p_2883->g_93)
                            continue;
                    }
                    for (l_193 = 4; (l_193 >= 0); l_193 -= 1)
                    { /* block id: 83 */
                        int32_t **l_282 = nullptr;
                        int32_t **l_283 = &l_124;
                        (*l_283) = &hip_const_8[0][5][3];
                        return l_284[1];
                    }
                }
            }
            l_124 = ((safe_div_func_int8_t_s_s((((*l_183) = (safe_add_func_uint16_t_u_u(((&hip_const_17 != l_289[2]) < (safe_lshift_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((safe_rshift_func_uint32_t_u_u(((((((safe_add_func_uint64_t_u_u(((*l_300)++), 6L)) | ((make_uint1((safe_rshift_func_int16_t_s_u(((make_short4(0xD354L, 0x8D32L, (((p_2883->g_119 >= (safe_div_func_uint64_t_u_u(((*l_183) || 1L), ((safe_rshift_func_uint8_t_u_u(0xF0L, (p_2883->g_309 = (nullptr != &p_2883->g_163[5][3])))) && p_2883->g_176.x)))) && p_63) || p_64), 0x6BC3L) ^ make_short4((-5L), (-5L), (-5L), (-5L)))).w, p_62))) ^ make_uint1(0x57342A22L))).x) , &hip_const_1) != nullptr) >= 0x2A537746L) == 0xEAAA6224L), 2)) <= (*l_183)), (*l_122))), 0L)) < p_64), 12))), 1UL))) < p_2883->g_272.x), 1UL)) , &l_175);
        }
        else
        { /* block id: 93 */
            int16_t l_317 = 0x0212L;
            int32_t l_319 = 0xADB23081L;
            int32_t l_320 = 0x7E1C1F87L;
            __shared__ int32_t l_322;
            l_322 = 0x524AB5D2L;
            int32_t l_325 = 0xB87651DEL;
            __shared__ int32_t l_326;
            l_326 = 1L;
            int32_t l_328 = 0x9782B840L;
            __shared__ int32_t l_329;
            l_329 = (-1L);
            ulong4 l_368 = make_ulong4(18446744073709551615UL, 0x0CF8EDB4FB30E97ALL, 18446744073709551615UL, 0x0CF8EDB4FB30E97ALL);
            uint32_t l_370 = 0x28EE4184L;
            __shared__ long4 l_377;
            l_377 = make_long4(6L, 1L, 6L, 1L);
            int32_t l_417 = 1L;
            int3 l_437 = make_int3((-1L), 0x85EC50F4L, (-1L));
            uint16_t ***l_440 = &l_129;
            int4 l_458 = make_int4((-1L), 0x00D7091EL, (-1L), 0x00D7091EL);
            uchar3 l_475 = make_uchar3(0x72L, 255UL, 0x72L);
            uint32_t l_496 = 0x82E7B214L;
            __shared__ int8_t l_502;
            l_502 = 1L;
            char3 l_532 = make_char3(0xD9L, 1L, 0xD9L);
            uchar4 l_535 = make_uchar4(0x7CL, 1UL, 0x7CL, 1UL);
            int8_t l_549 = 0x26L;
            int i;
            for (p_2883->g_309 = 18; (p_2883->g_309 < (-26)); p_2883->g_309 = safe_sub_func_uint64_t_u_u(p_2883->g_309, 7))
            { /* block id: 96 */
                uint16_t l_314 = 0UL;
                int32_t l_315[3][8][4] = {{{0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}}, {{0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}}, {{0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}, {0L, 0L, 1L, (-8L)}}};
                int32_t l_318[9][4] = {{(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}, {(-1L), 0xE7C0EF8DL, (-1L), (-1L)}};
                // attempting a hip shared for loop
                __shared__ int32_t **l_374[9];
                for (int i = 0; i < 9; i++)
                    l_374[i] = &l_122;
                uint3 l_397 = make_uint3(0UL, 0x6B571F5CL, 0UL);
                int16_t l_399[5] = {0L, 0x4FDBL, 0L, 0x4FDBL, 0L};
                // attempting a hip shared for loop
                __shared__ int64_t l_413[6][9][2];
                for (int i = 0; i < 6; i++)
                {
                    for (int j = 0; j < 9; j++)
                    {
                        for (int k = 0; k < 2; k++)
                            l_413[i][j][k] = 0L;
                    }
                }
                int64_t l_426[1][5] = {{0x352BCF8AA51B17D3LL, (-1L), 0x352BCF8AA51B17D3LL, (-1L), 0x352BCF8AA51B17D3LL}};
                uint64_t l_427 = 6UL;
                int8_t *l_438 = &hip_const_16;
                uint32_t *l_439 = &l_415[0];
                int3 l_461 = make_int3(0xA3F2DC60L, 0x59F34E2BL, 0xA3F2DC60L);
                int2 l_501 = make_int2(0x5A6D9417L, (-1L));
                uint64_t l_511[4] = {18446744073709551607UL, 18446744073709551611UL, 18446744073709551607UL, 18446744073709551611UL};
                int i, j, k;
                if ((l_314 < p_2883->g_93))
                { /* block id: 97 */
                    int8_t l_321 = 1L;
                    int32_t l_331[2][8][10] = {{{7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}}, {{7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}, {7L, 0xCE8FD7E0L, 0x8952115EL, 1L, 7L, (-1L), (-1L), (-1L), 7L, 1L}}};
                    int i, j, k;
                    if ((nullptr == &hip_const_14[1]))
                    { /* block id: 98 */
                        short2 l_316 = make_short2(0xEF73L, 0x0499L);
                        int32_t l_324 = 4L;
                        int32_t l_327 = 0x290CF3E1L;
                        int32_t l_330 = 0xBEE8ED09L;
                        uint32_t l_332 = 8UL;
                        uint16_t *l_342 = &hip_const_7;
                        uint16_t *l_343 = &p_2883->g_197;
                        uint32_t *l_356 = nullptr;
                        uint32_t *l_357 = &p_2883->g_93;
                        uint32_t *l_361 = nullptr;
                        uint8_t l_398 = 255UL;
                        int i;
                        l_332--;
                        l_315[1][5][1] = ((safe_mod_func_uint32_t_u_u((safe_lshift_func_int32_t_s_s(0xE68CFEE6L, (safe_sub_func_int64_t_s_s((l_371[8] = (((*l_343) = make_ushort2(l_341.x, l_341.x).x) && (((safe_sub_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u(p_2883->g_138.y, 4294967295UL)) > (safe_div_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((0x54368FA089E560A1LL == ((((0x6988L ^ (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint32_t_u_u(((make_uint3((++(*l_357)), 0xA479C785L, 0xB03B54FAL) ^ make_uint3(p_2883->g_360.x, p_2883->g_360.x, p_2883->g_360.x))).y, (p_2883->g_205.x--))), (make_char3(p_2883->g_364.z, p_2883->g_364.z, p_2883->g_364.z).y , (0x788BL & (&l_284[1] == ((+(safe_mod_func_uint64_t_u_u(((make_ulong1(p_2883->g_367.x) ^ make_ulong1(l_368.w))).x, (p_63 ^ 4UL)))) , l_369))))))) & l_314) ^ l_314) && l_314)), hip_const_6[1])), 2UL))) & 0x021AL), 0L)) >= l_370) >= 1L))), hip_const_6[1])))), 0xCD286626L)) != p_2883->g_360.x);
                        p_2883->g_244.w = l_368.x;
                        l_400 ^= ((safe_div_func_uint64_t_u_u(((l_374[1] != (((((((safe_rshift_func_int16_t_s_u(0x1B66L, 1)) != make_long3(l_377.z, l_377.z, l_377.z).z) ^ (((safe_sub_func_int32_t_s_s(((p_2883->g_367.x >= (((safe_rshift(make_short2((-2L), (safe_lshift_func_int32_t_s_s(l_331[1][4][7], 22))), ((make_short2(0x0365L, 6L) ^ make_short2(p_2883->g_384.y, p_2883->g_384.y)))))).x , (((safe_div_func_int16_t_s_s(p_63, (safe_add_func_int8_t_s_s((nullptr != p_2883->g_389), (safe_sub_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(make_uint2(0x8CBE4D16L, make_uint4(4294967291UL, (safe_mod_func_uint32_t_u_u(make_uint3(l_397.x, l_397.x, l_397.x).x, p_63)), l_317, 0x9A361035L).x).x, l_321)), (**l_369))))))) != 0xA61A78C10EF60109LL) && p_64))) < p_64), l_316.y)) ^ l_398) < l_399[4])) == p_64) , l_331[1][4][4]) > 0x2831L) , l_374[8])) && 253UL), 6UL)) <= 0xD6L);
                    }
                    else
                    { /* block id: 107 */
                        uint16_t *l_411[8][5] = {{&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}, {&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}, {&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}, {&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}, {&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}, {&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}, {&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}, {&l_400, &l_400, &hip_const_6[2], &l_400, nullptr}};
                        // attempting a hip shared for loop
                        __shared__ int16_t *l_414[4][2];
                        for (int i = 0; i < 4; i++)
                        {
                            for (int j = 0; j < 2; j++)
                                l_414[i][j] = &hip_const_10[0][7];
                        }
                        int32_t l_416 = 0x78B136FEL;
                        int i, j;
                        for (int i = 0; i < 4; i++)
                        {
                            for (int j = 0; j < 2; j++)
                                l_414[i][j] = &hip_const_10[0][7];
                        }
                        if (l_249)
                            goto lbl_280;
                        l_92 ^= (((nullptr == &p_2883->g_159[6][3]) , ((((safe_rshift(make_uchar4(l_403.z, l_403.z, l_403.z, l_403.z), make_uchar4(8, 8, 8, 8)))).z < ((*l_120) |= (l_331[1][6][1] <= p_63))) != 3UL)) < ((safe_add_func_int16_t_s_s(((p_2883->g_91 = (make_int1(0L).x >= (((p_2883->g_364.w = (safe_sub_func_uint32_t_u_u(4294967295UL, (p_62 ^ ((l_412 = (safe_div_func_int64_t_s_s((l_410 = (p_62 < (make_ushort3(0x86D6L, l_326, l_325).y >= hip_const_18))), p_2883->g_106.x))) == l_413[5][4][0]))))) != 0L) >= p_2883->g_205.x))) ^ l_415[0]), l_416)) >= hip_const_11));
                        p_2883->g_244.z ^= ((l_331[1][6][7] && (((l_417 < (l_329 |= (l_328 && (l_416 ^= (safe_add_func_int32_t_s_s((safe_add_func_int16_t_s_s(p_2883->g_194, 0x26C9L)), (((((((((safe_add_func_int64_t_s_s((safe_mul_func_int64_t_s_s((p_64 | ((*l_124) == 0x061209BC661F5DA5LL)), l_426[0][2])), p_64)) , nullptr) == &p_2883->g_160) ^ 0x6BAD3585880D4CDALL) >= hip_const_14[1]) & 65528UL) ^ p_64) <= l_427) , l_428[4]))))))) , p_2883->g_384.x) | (*l_122))) | p_63);
                    }
                }
                else
                { /* block id: 119 */
                    if (p_2883->g_192)
                        goto lbl_203;
                    (*l_369) = &hip_const_2;
                }
                if ((safe_sub_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(((((((+((l_92 = (safe_lshift_func_uint32_t_u_u((*l_124), 28))) < ((*l_439) = (safe_mod_func_int32_t_s_s(make_int4(l_437.z, l_437.z, l_437.z, l_437.z).x, ((nullptr == l_438) , p_2883->g_264.x)))))) || (l_440 != l_440)) > (**l_369)) , (&l_121 == (((safe_sub_func_int32_t_s_s((((safe_sub_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(((make_long2(0x45A6750B0FD68956LL, p_62) & make_long2(0x288064B3E79E4504LL, 0x288064B3E79E4504LL))).x, l_377.w)), 65532UL)) || l_447) , p_62), p_64)) != (-7L)) , nullptr))) | p_2883->g_91) != p_64), hip_const_10[0][7])), l_377.x)))
                { /* block id: 125 */
                    for (l_201 = (-21); (l_201 > 32); l_201 = safe_add_func_uint64_t_u_u(l_201, 8))
                    { /* block id: 128 */
                        (*l_369) = &hip_const_11;
                    }
                    for (l_325 = 0; (l_325 == (-15)); l_325--)
                    { /* block id: 133 */
                        if (l_452)
                            break;
                        return &hip_const_12;
                    }
                }
                else
                { /* block id: 137 */
                    __shared__ int4 l_455;
                    l_455 = make_int4(1L, 0xEBD29D54L, 1L, 0xEBD29D54L);
                    char2 l_479 = make_char2(0xB9L, 0x06L);
                    uint16_t ****l_480 = &l_440;
                    int16_t *l_481 = &hip_const_10[4][7];
                    int16_t *l_482[2][6] = {{&l_317, &l_317, nullptr, &l_317, &l_317, nullptr}, {&l_317, &l_317, nullptr, &l_317, &l_317, nullptr}};
                    uint16_t *l_492[10][10] = {{&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}, {&l_400, &hip_const_6[2], &l_314, nullptr, nullptr, &l_400, &l_400, nullptr, nullptr, &l_314}};
                    int32_t l_493 = 0x6C60A29EL;
                    // attempting a hip shared for loop
                    __shared__ int64_t l_494[6][8][5];
                    for (int i = 0; i < 6; i++)
                    {
                        for (int j = 0; j < 8; j++)
                        {
                            for (int k = 0; k < 5; k++)
                                l_494[i][j][k] = 0x70EFC12740678AE1LL;
                        }
                    }
                    int32_t l_495[2];
                    short2 l_510 = make_short2((-5L), 1L);
                    // attempting a hip shared for loop
                    __shared__ uint32_t l_515[7];
                    for (int i = 0; i < 7; i++)
                        l_515[i] = 1UL;
                    __shared__ char4 l_542;
                    l_542 = make_char4(0x3CL, 0x1EL, 0x3CL, 0x1EL);
                    int16_t l_547 = 0x2C74L;
                    int i, j, k;
                    for (int i = 0; i < 2; i++)
                        l_495[i] = 0x41F77DABL;
                    l_323[4] ^= (hip_const_10[6][3] || ((safe_add_func_uint8_t_u_u((make_int3(l_455.z, l_455.z, l_455.z).x <= ((safe_mod(make_int1(l_458.x), ((safe_lshift(make_int1(l_461.x), make_int1(32))))))).x), ((((safe_rshift(((make_uchar3(255UL, 0x6BL, 0x00L) ^ make_uchar3(((+(safe_mul_func_uint64_t_u_u(hip_const_6[0], p_2883->g_244.z))) >= (-1L)), 6UL, ((p_2883->g_384.x = (l_322 = (safe_rshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s(make_char4(l_470.x, l_470.x, l_470.x, l_470.x).w, ((((make_uchar3(0x77L, p_63, (*l_123)) ^ ((safe_lshift(make_uchar3(p_2883->g_473.y, p_2883->g_473.y, p_2883->g_473.y), ((~make_uchar3(p_2883->g_474.z, p_2883->g_474.z, p_2883->g_474.z)))))))) ^ make_uchar3(l_475.y, l_475.y, l_475.y))).x)), make_ushort3((safe_rshift_func_uint8_t_u_s(p_2883->g_222, ((make_char4(p_2883->g_478.y, p_2883->g_478.y, p_2883->g_478.y, p_2883->g_478.y) ^ make_char4(l_479.x, l_479.x, l_479.x, l_479.x))).x)), (((((*l_480) = &p_2883->g_163[1][2]) != nullptr) , hip_const_17) <= 0x1CC63F30L), 6UL).x)))) , hip_const_14[2])))), make_uchar3(252UL, 252UL, 252UL)))) ^ make_uchar3(0UL, 0UL, 0UL))).z)) , l_479.x));
                    if ((l_417 = (((&p_2883->g_390 != nullptr) , p_62) , ((safe_lshift_func_uint32_t_u_s((((+(safe_sub_func_int64_t_s_s(l_455.z, (safe_add_func_uint16_t_u_u(make_ushort3(p_2883->g_489.w, p_2883->g_489.w, p_2883->g_489.w).x, (((((l_493 = (l_496++)) >= (p_2883->g_384.y &= (0UL >= (&p_2883->g_390 == nullptr)))) == ((p_63 , &l_133) != nullptr)) && p_2883->g_364.w) , 0x1951L)))))) , p_64) | (*l_122)), 12)) <= p_64))))
                    { /* block id: 146 */
                        int8_t l_503 = 0x85L;
                        l_502 = make_int3(l_501.y, l_501.y, l_501.y).y;
                        l_503 ^= (*l_122);
                    }
                    else
                    { /* block id: 149 */
                        l_455.z = 0L;
                    }
                    for (p_2883->g_222 = (-20); (p_2883->g_222 != (-6)); p_2883->g_222 = safe_add_func_int8_t_s_s(p_2883->g_222, 7))
                    { /* block id: 154 */
                        // attempting a hip shared for loop
                        __shared__ int8_t l_506[8];
                        for (int i = 0; i < 8; i++)
                            l_506[i] = 0xD7L;
                        int32_t l_507 = 0xC05A2A09L;
                        int32_t l_508 = 0L;
                        int1 l_509 = make_int1((-1L));
                        int i;
                        l_511[2]++;
                        if (hip_const_5[4][1][0])
                            continue;
                        l_515[0]++;
                        ++p_2883->g_519[1];
                    }
                    for (p_2883->g_197 = 0; (p_2883->g_197 < 23); p_2883->g_197++)
                    { /* block id: 162 */
                        int8_t **l_545[3][10] = {{nullptr, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438}, {nullptr, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438}, {nullptr, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438, &l_438}};
                        uint64_t *l_548[1];
                        int4 l_550 = make_int4((-1L), 0x9ED6D21AL, (-1L), 0x9ED6D21AL);
                        __shared__ int32_t l_551;
                        l_551 = (-10L);
                        int i, j;
                        for (int i = 0; i < 1; i++)
                            l_548[i] = &l_427;
                        if (l_326)
                            goto lbl_280;
                        p_2883->g_244.x = (safe_sub_func_int8_t_s_s(((((((safe_sub_func_int16_t_s_s(((((make_short2((safe_lshift_func_uint64_t_u_s(((safe_rshift_func_int8_t_s_u(make_char2(l_532.x, l_532.x).y, (l_550.w = (safe_add_func_int64_t_s_s(p_62, (((-3L) && (((p_2883->g_155.x ^= (p_2883->g_367.x = (make_uchar4(l_535.z, l_535.z, l_535.z, l_535.z).x >= (safe_mod_func_uint16_t_u_u((l_495[1] != ((make_ulong3(0xC11100CBA1E98EECLL, 18446744073709551608UL, 0UL).y > (safe_sub_func_int8_t_s_s((safe_sub_func_int32_t_s_s((((make_char3(l_542.z, l_542.z, l_542.z).y & (safe_sub_func_uint16_t_u_u(((l_493 = (hip_const_7 > ((l_546 = &l_118[0][1]) == nullptr))) | l_547), l_475.x))) , hip_const_14[0]) , p_62), p_64)), 246UL))) > hip_const_2)), p_63))))) | l_549) <= p_62)) || hip_const_5[3][1][0])))))) & l_551), 17)), (*l_122)).y < hip_const_16) >= hip_const_18) != 0xDA4DE453B948B536LL) >= (*l_123)), p_2883->g_264.x)) <= p_62) == p_2883->g_222) < p_62) >= p_64) >= p_2883->g_364.w), l_325));
                        if (l_249)
                            goto lbl_203;
                    }
                }
            }
        }
        (*l_554) = p_2883->g_552;
    }
    l_558--;
    return &hip_const_2;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_16
 * writes:
 */
__device__ int32_t  func_69(int32_t  p_70, struct S0 * p_2883)
{ /* block id: 16 */
    int32_t *l_74 = &hip_const_8[0][5][3];
    int32_t *l_75[6] = {&hip_const_8[0][5][3], &hip_const_8[0][5][3], &hip_const_11, &hip_const_8[0][5][3], &hip_const_8[0][5][3], &hip_const_11};
    int i;
    p_70 = hip_const_16;
    return p_70;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S0 c_2884;
    struct S0* p_2883 = &c_2884;
    struct S0 c_2885 = {
        .g_18 = 0x0AL,
        .g_58 = {{{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}, {{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}, {{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}, {{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}, {{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}, {{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}, {{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}, {{0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}, {0xA1B0F83D54B5BC17LL, 8UL, 0x7FE427CCDDECA68ELL, 0x8FFC2FE0EC928903LL, 8UL}}},
        .g_91 = 5L,
        .g_93 = 0xFAC948D7L,
        .g_106 = make_long1(0x6063A1CE40C6877BLL),
        .g_107 = make_long4(0x5583E1B125E79E52LL, 3L, 0x5583E1B125E79E52LL, 3L),
        .g_119 = 6UL,
        .g_138 = make_int2(9L, 4L),
        .g_155 = make_ulong3(0x4805B927C989E8BELL, 0xB9B0FDDEAC1AD123LL, 0x4805B927C989E8BELL),
        .g_160 = nullptr,
        .g_159 = {{&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, nullptr, nullptr}},
        .g_163 = {{&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160}, {&p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160, &p_2883->g_160}},
        .g_176 = make_long1(3L),
        .g_190 = &p_2883->g_160,
        .g_192 = 0xFDF36518L,
        .g_194 = 0xC8FD093CF0600BE3LL,
        .g_197 = 1UL,
        .g_205 = make_uint2(0x7D714BD8L, 0UL),
        .g_222 = 0x88L,
        .g_244 = make_int4(0x9098E09DL, 0x09794D5BL, 0x9098E09DL, 0x09794D5BL),
        .g_264 = make_long1(0x90D4C23DD20149C6LL),
        .g_272 = make_long1((-7L)),
        .g_309 = (-6L),
        .g_360 = make_uint2(1UL, 0UL),
        .g_364 = make_char4(0L, 0x03L, 0L, 0x03L),
        .g_367 = make_ulong1(0x192F1295B1A44783LL),
        .g_384 = make_short2(0xB90DL, 0x73C8L),
        .g_390 = nullptr,
        .g_389 = &p_2883->g_390,
        .g_473 = make_uchar3(0xEBL, 0UL, 0xEBL),
        .g_474 = make_uchar4(0x1BL, 246UL, 0x1BL, 246UL),
        .g_478 = make_char3(0x15L, 4L, 0x15L),
        .g_489 = make_ushort4(65532UL, 0UL, 65532UL, 0UL),
        .g_518 = 0x39FDACCAL,
        .g_519 = {0xFDEAL, 0xFDEAL},
        .g_553 = nullptr,
        .g_552 = &p_2883->g_553,
        .g_585 = make_ulong3(0xBCC2AE236E9C2E0ELL, 1UL, 0xBCC2AE236E9C2E0ELL),
        .g_592 = 1L,
        .g_613 = make_long4(0x855813FBCC45018CLL, 0x3A490CC646EB947ELL, 0x855813FBCC45018CLL, 0x3A490CC646EB947ELL),
        .g_632 = make_char4(0x16L, 0x76L, 0x16L, 0x76L),
        .g_647 = make_ushort3(0xC1CBL, 3UL, 0xC1CBL),
        .g_670 = make_int4(2L, (-6L), 2L, (-6L)),
        .g_678 = make_uchar2(255UL, 4UL),
        .g_719 = &p_2883->g_190,
        .g_718 = &p_2883->g_719,
        .g_730 = make_uchar2(2UL, 1UL),
        .g_749 = 0UL,
        .g_762 = make_int2((-5L), 4L),
        .g_770 = make_ulong2(0xAC6CAA75A06DF4DALL, 0xBC3EF24B386A6135LL),
        .g_817 = nullptr,
        .g_839 = 5L,
        .g_861 = make_int4(0xC2219035L, 0L, 0xC2219035L, 0L),
        .g_903 = {{{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}, {{0x0245L}, {0x0245L}, {0x0245L}}},
        .g_910 = make_char3(0x96L, 0xF3L, 0x96L),
        .g_980 = make_long2(0x857523F01AF86B92LL, (-1L)),
        .g_982 = make_long4(0xA051501D439F9D52LL, 0xC36C67390B5399B7LL, 0xA051501D439F9D52LL, 0xC36C67390B5399B7LL),
        .g_1007 = make_long3((-1L), 0x9905DABF09E276E2LL, (-1L)),
        .g_1024 = &hip_const_14[1],
        .g_1023 = &p_2883->g_1024,
        .g_1049 = 0xFC13L,
        .g_1066 = 0xB3L,
        .g_1107 = 0x9F897886L,
        .g_1168 = make_ulong3(18446744073709551606UL, 0xFC0991B7BA5D5D82LL, 18446744073709551606UL),
        .g_1179 = make_char3((-10L), 1L, (-10L)),
        .g_1182 = 0xF7F7F3309A93E74ELL,
        .g_1193 = {{1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}, {1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}, {1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}, {1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}, {1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}, {1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}, {1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}, {1UL, 0UL, 255UL, 1UL, 1UL, 255UL, 0UL, 1UL}},
        .g_1315 = make_short1(0x3B08L),
        .g_1335 = nullptr,
        .g_1359 = &p_2883->g_552,
        .g_1358 = &p_2883->g_1359,
        .g_1388 = make_ulong3(18446744073709551609UL, 0xDEBFE37195BC9785LL, 18446744073709551609UL),
        .g_1392 = make_int2(0xADFEC7D8L, 0xEFF232C1L),
        .g_1397 = 0UL,
        .g_1418 = make_ulong1(0UL),
        .g_1427 = make_uchar2(0x4EL, 0x76L),
        .g_1453 = make_char4(1L, (-9L), 1L, (-9L)),
        .g_1478 = make_int2(1L, 0x1E13ECDDL),
        .g_1479 = make_int2(0xA0E07462L, (-8L)),
        .g_1506 = make_int4(0L, 0xD7391297L, 0L, 0xD7391297L),
        .g_1513 = 0L,
        .g_1543 = make_uint3(0x060AE851L, 0x68D598C3L, 0x060AE851L),
        .g_1571 = make_uchar1(0UL),
        .g_1583 = make_char4(0x65L, 0xA4L, 0x65L, 0xA4L),
        .g_1620 = make_ushort2(0x4ABFL, 0x8F89L),
        .g_1636 = 18446744073709551615UL,
        .g_1653 = make_ushort4(1UL, 65535UL, 1UL, 65535UL),
        .g_1663 = 0L,
        .g_1680 = make_uchar2(0xD9L, 0x56L),
        .g_1681 = make_uchar3(255UL, 6UL, 255UL),
        .g_1685 = &p_2883->g_817,
        .g_1731 = make_int1((-8L)),
        .g_1771 = make_char2(0x7AL, 7L),
        .g_1778 = &p_2883->g_718,
        .g_1793 = nullptr,
        .g_1814 = make_int1(0x48B1E9C0L),
        .g_1815 = make_int2(0x70DDAEA9L, 0x8D7DF682L),
        .g_1847 = make_int2(0x888C701FL, (-1L)),
        .g_1900 = make_ushort2(0x85C3L, 65531UL),
        .g_1901 = make_ushort3(0x307EL, 1UL, 0x307EL),
        .g_1956 = make_uchar2(0xE5L, 0UL),
        .g_1974 = make_char3(5L, (-1L), 5L),
        .g_1981 = &p_2883->g_749,
        .g_1980 = &p_2883->g_1981,
        .g_1989 = make_long1(0x3E1243B3BE7B8BBDLL),
        .g_1993 = make_long2(0x147550418440AC71LL, 1L),
        .g_2003 = make_uint4(1UL, 9UL, 1UL, 9UL),
        .g_2011 = make_uint2(4294967295UL, 0x8BF30E8CL),
        .g_2037 = make_short1(0x1A57L),
        .g_2050 = nullptr,
        .g_2067 = make_uint4(0xFE33FEA8L, 0x7BADF992L, 0xFE33FEA8L, 0x7BADF992L),
        .g_2077 = make_char3(0xCDL, 0L, 0xCDL),
        .g_2141 = make_uint2(0x51ACAC1FL, 4294967286UL),
        .g_2151 = make_char4(1L, 0L, 1L, 0L),
        .g_2188 = make_ulong2(18446744073709551615UL, 0xC5AC05FD57864F35LL),
        .g_2281 = 1L,
        .g_2299 = make_uint3(0UL, 0x286DF23CL, 0UL),
        .g_2311 = make_ulong1(0UL),
        .g_2353 = make_char4((-1L), 0L, (-1L), 0L),
        .g_2383 = make_short4(0xF1C3L, (-9L), 0xF1C3L, (-9L)),
        .g_2404 = make_uchar2(0x68L, 0x5BL),
        .g_2425 = nullptr,
        .g_2427 = make_uint3(0x404A54EFL, 0xBD19921EL, 0x404A54EFL),
        .g_2460 = make_int4(0x99019C6CL, (-1L), 0x99019C6CL, (-1L)),
        .g_2495 = make_int2(0x32189954L, (-6L)),
        .g_2512 = make_uint2(0x2A06D845L, 4294967291UL),
        .g_2513 = make_uint3(2UL, 0xF6644C75L, 2UL),
        .g_2527 = make_int2(0L, 0x8E61F4B2L),
        .g_2530 = make_int2(0L, (-1L)),
        .g_2533 = make_int1(0L),
        .g_2534 = make_short2(0xC48DL, (-5L)),
        .g_2645 = make_long3(0x7E5C9E639DA02E2CLL, 0x4B211C4A32865DB5LL, 0x7E5C9E639DA02E2CLL),
        .g_2672 = &p_2883->g_839,
        .g_2671 = &p_2883->g_2672,
        .g_2675 = make_long2((-9L), 5L),
        .g_2676 = make_long1(0x7B18F23064AEE2F6LL),
        .g_2762 = &p_2883->g_1023,
        .g_2761 = &p_2883->g_2762,
        .g_2784 = make_long2((-9L), 0xB01DEFA0311505E2LL),
        .g_2788 = &p_2883->g_1793,
        .g_2787 = &p_2883->g_2788,
        .g_2814 = make_char1(0x48L),
        .g_2822 = make_char2(1L, 0x41L),
        .g_2853 = make_int3(0xFE23F937L, 0xD2A09355L, 0xFE23F937L),
        .g_2855 = make_short1(5L),
        .g_2862 = make_short3(5L, 0L, 5L),
        .g_2868 = make_ushort3(1UL, 0xD542L, 1UL),
    };
    c_2884 = c_2885;

    // Execute core logic
    func_1(p_2883);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                transparent_crc(hip_const_5[i][j][k], "hip_const_5[i][j][k]", print_hash_value);

            }
        }
    }
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(hip_const_6[i], "hip_const_6[i]", print_hash_value);

    }
    transparent_crc(hip_const_7, "hip_const_7", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            for (int k = 0; k < 8; k++)
            {
                transparent_crc(hip_const_8[i][j][k], "hip_const_8[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_9, "hip_const_9", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            transparent_crc(hip_const_10[i][j], "hip_const_10[i][j]", print_hash_value);

        }
    }
    transparent_crc(hip_const_11, "hip_const_11", print_hash_value);
    transparent_crc(hip_const_12, "hip_const_12", print_hash_value);
    transparent_crc(hip_const_13, "hip_const_13", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(hip_const_14[i], "hip_const_14[i]", print_hash_value);

    }
    transparent_crc(hip_const_15, "hip_const_15", print_hash_value);
    transparent_crc(hip_const_16, "hip_const_16", print_hash_value);
    transparent_crc(hip_const_17, "hip_const_17", print_hash_value);
    transparent_crc(hip_const_18, "hip_const_18", print_hash_value);
    transparent_crc(p_2883->g_18, "p_2883->g_18", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                transparent_crc(p_2883->g_58[i][j][k], "p_2883->g_58[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2883->g_91, "p_2883->g_91", print_hash_value);
    transparent_crc(p_2883->g_93, "p_2883->g_93", print_hash_value);
    transparent_crc(p_2883->g_106.x, "p_2883->g_106.x", print_hash_value);
    transparent_crc(p_2883->g_107.x, "p_2883->g_107.x", print_hash_value);
    transparent_crc(p_2883->g_107.y, "p_2883->g_107.y", print_hash_value);
    transparent_crc(p_2883->g_107.z, "p_2883->g_107.z", print_hash_value);
    transparent_crc(p_2883->g_107.w, "p_2883->g_107.w", print_hash_value);
    transparent_crc(p_2883->g_119, "p_2883->g_119", print_hash_value);
    transparent_crc(p_2883->g_138.x, "p_2883->g_138.x", print_hash_value);
    transparent_crc(p_2883->g_138.y, "p_2883->g_138.y", print_hash_value);
    transparent_crc(p_2883->g_155.x, "p_2883->g_155.x", print_hash_value);
    transparent_crc(p_2883->g_155.y, "p_2883->g_155.y", print_hash_value);
    transparent_crc(p_2883->g_155.z, "p_2883->g_155.z", print_hash_value);
    transparent_crc(p_2883->g_176.x, "p_2883->g_176.x", print_hash_value);
    transparent_crc(p_2883->g_192, "p_2883->g_192", print_hash_value);
    transparent_crc(p_2883->g_194, "p_2883->g_194", print_hash_value);
    transparent_crc(p_2883->g_197, "p_2883->g_197", print_hash_value);
    transparent_crc(p_2883->g_205.x, "p_2883->g_205.x", print_hash_value);
    transparent_crc(p_2883->g_205.y, "p_2883->g_205.y", print_hash_value);
    transparent_crc(p_2883->g_222, "p_2883->g_222", print_hash_value);
    transparent_crc(p_2883->g_244.x, "p_2883->g_244.x", print_hash_value);
    transparent_crc(p_2883->g_244.y, "p_2883->g_244.y", print_hash_value);
    transparent_crc(p_2883->g_244.z, "p_2883->g_244.z", print_hash_value);
    transparent_crc(p_2883->g_244.w, "p_2883->g_244.w", print_hash_value);
    transparent_crc(p_2883->g_264.x, "p_2883->g_264.x", print_hash_value);
    transparent_crc(p_2883->g_272.x, "p_2883->g_272.x", print_hash_value);
    transparent_crc(p_2883->g_309, "p_2883->g_309", print_hash_value);
    transparent_crc(p_2883->g_360.x, "p_2883->g_360.x", print_hash_value);
    transparent_crc(p_2883->g_360.y, "p_2883->g_360.y", print_hash_value);
    transparent_crc(p_2883->g_364.x, "p_2883->g_364.x", print_hash_value);
    transparent_crc(p_2883->g_364.y, "p_2883->g_364.y", print_hash_value);
    transparent_crc(p_2883->g_364.z, "p_2883->g_364.z", print_hash_value);
    transparent_crc(p_2883->g_364.w, "p_2883->g_364.w", print_hash_value);
    transparent_crc(p_2883->g_367.x, "p_2883->g_367.x", print_hash_value);
    transparent_crc(p_2883->g_384.x, "p_2883->g_384.x", print_hash_value);
    transparent_crc(p_2883->g_384.y, "p_2883->g_384.y", print_hash_value);
    transparent_crc(p_2883->g_473.x, "p_2883->g_473.x", print_hash_value);
    transparent_crc(p_2883->g_473.y, "p_2883->g_473.y", print_hash_value);
    transparent_crc(p_2883->g_473.z, "p_2883->g_473.z", print_hash_value);
    transparent_crc(p_2883->g_474.x, "p_2883->g_474.x", print_hash_value);
    transparent_crc(p_2883->g_474.y, "p_2883->g_474.y", print_hash_value);
    transparent_crc(p_2883->g_474.z, "p_2883->g_474.z", print_hash_value);
    transparent_crc(p_2883->g_474.w, "p_2883->g_474.w", print_hash_value);
    transparent_crc(p_2883->g_478.x, "p_2883->g_478.x", print_hash_value);
    transparent_crc(p_2883->g_478.y, "p_2883->g_478.y", print_hash_value);
    transparent_crc(p_2883->g_478.z, "p_2883->g_478.z", print_hash_value);
    transparent_crc(p_2883->g_489.x, "p_2883->g_489.x", print_hash_value);
    transparent_crc(p_2883->g_489.y, "p_2883->g_489.y", print_hash_value);
    transparent_crc(p_2883->g_489.z, "p_2883->g_489.z", print_hash_value);
    transparent_crc(p_2883->g_489.w, "p_2883->g_489.w", print_hash_value);
    transparent_crc(p_2883->g_518, "p_2883->g_518", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_2883->g_519[i], "p_2883->g_519[i]", print_hash_value);

    }
    transparent_crc(p_2883->g_585.x, "p_2883->g_585.x", print_hash_value);
    transparent_crc(p_2883->g_585.y, "p_2883->g_585.y", print_hash_value);
    transparent_crc(p_2883->g_585.z, "p_2883->g_585.z", print_hash_value);
    transparent_crc(p_2883->g_592, "p_2883->g_592", print_hash_value);
    transparent_crc(p_2883->g_613.x, "p_2883->g_613.x", print_hash_value);
    transparent_crc(p_2883->g_613.y, "p_2883->g_613.y", print_hash_value);
    transparent_crc(p_2883->g_613.z, "p_2883->g_613.z", print_hash_value);
    transparent_crc(p_2883->g_613.w, "p_2883->g_613.w", print_hash_value);
    transparent_crc(p_2883->g_632.x, "p_2883->g_632.x", print_hash_value);
    transparent_crc(p_2883->g_632.y, "p_2883->g_632.y", print_hash_value);
    transparent_crc(p_2883->g_632.z, "p_2883->g_632.z", print_hash_value);
    transparent_crc(p_2883->g_632.w, "p_2883->g_632.w", print_hash_value);
    transparent_crc(p_2883->g_647.x, "p_2883->g_647.x", print_hash_value);
    transparent_crc(p_2883->g_647.y, "p_2883->g_647.y", print_hash_value);
    transparent_crc(p_2883->g_647.z, "p_2883->g_647.z", print_hash_value);
    transparent_crc(p_2883->g_670.x, "p_2883->g_670.x", print_hash_value);
    transparent_crc(p_2883->g_670.y, "p_2883->g_670.y", print_hash_value);
    transparent_crc(p_2883->g_670.z, "p_2883->g_670.z", print_hash_value);
    transparent_crc(p_2883->g_670.w, "p_2883->g_670.w", print_hash_value);
    transparent_crc(p_2883->g_678.x, "p_2883->g_678.x", print_hash_value);
    transparent_crc(p_2883->g_678.y, "p_2883->g_678.y", print_hash_value);
    transparent_crc(p_2883->g_730.x, "p_2883->g_730.x", print_hash_value);
    transparent_crc(p_2883->g_730.y, "p_2883->g_730.y", print_hash_value);
    transparent_crc(p_2883->g_749, "p_2883->g_749", print_hash_value);
    transparent_crc(p_2883->g_762.x, "p_2883->g_762.x", print_hash_value);
    transparent_crc(p_2883->g_762.y, "p_2883->g_762.y", print_hash_value);
    transparent_crc(p_2883->g_770.x, "p_2883->g_770.x", print_hash_value);
    transparent_crc(p_2883->g_770.y, "p_2883->g_770.y", print_hash_value);
    transparent_crc(p_2883->g_839, "p_2883->g_839", print_hash_value);
    transparent_crc(p_2883->g_861.x, "p_2883->g_861.x", print_hash_value);
    transparent_crc(p_2883->g_861.y, "p_2883->g_861.y", print_hash_value);
    transparent_crc(p_2883->g_861.z, "p_2883->g_861.z", print_hash_value);
    transparent_crc(p_2883->g_861.w, "p_2883->g_861.w", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            for (int k = 0; k < 1; k++)
            {
                transparent_crc(p_2883->g_903[i][j][k], "p_2883->g_903[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2883->g_910.x, "p_2883->g_910.x", print_hash_value);
    transparent_crc(p_2883->g_910.y, "p_2883->g_910.y", print_hash_value);
    transparent_crc(p_2883->g_910.z, "p_2883->g_910.z", print_hash_value);
    transparent_crc(p_2883->g_980.x, "p_2883->g_980.x", print_hash_value);
    transparent_crc(p_2883->g_980.y, "p_2883->g_980.y", print_hash_value);
    transparent_crc(p_2883->g_982.x, "p_2883->g_982.x", print_hash_value);
    transparent_crc(p_2883->g_982.y, "p_2883->g_982.y", print_hash_value);
    transparent_crc(p_2883->g_982.z, "p_2883->g_982.z", print_hash_value);
    transparent_crc(p_2883->g_982.w, "p_2883->g_982.w", print_hash_value);
    transparent_crc(p_2883->g_1007.x, "p_2883->g_1007.x", print_hash_value);
    transparent_crc(p_2883->g_1007.y, "p_2883->g_1007.y", print_hash_value);
    transparent_crc(p_2883->g_1007.z, "p_2883->g_1007.z", print_hash_value);
    transparent_crc(p_2883->g_1049, "p_2883->g_1049", print_hash_value);
    transparent_crc(p_2883->g_1066, "p_2883->g_1066", print_hash_value);
    transparent_crc(p_2883->g_1107, "p_2883->g_1107", print_hash_value);
    transparent_crc(p_2883->g_1168.x, "p_2883->g_1168.x", print_hash_value);
    transparent_crc(p_2883->g_1168.y, "p_2883->g_1168.y", print_hash_value);
    transparent_crc(p_2883->g_1168.z, "p_2883->g_1168.z", print_hash_value);
    transparent_crc(p_2883->g_1179.x, "p_2883->g_1179.x", print_hash_value);
    transparent_crc(p_2883->g_1179.y, "p_2883->g_1179.y", print_hash_value);
    transparent_crc(p_2883->g_1179.z, "p_2883->g_1179.z", print_hash_value);
    transparent_crc(p_2883->g_1182, "p_2883->g_1182", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            transparent_crc(p_2883->g_1193[i][j], "p_2883->g_1193[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2883->g_1315.x, "p_2883->g_1315.x", print_hash_value);
    transparent_crc(p_2883->g_1388.x, "p_2883->g_1388.x", print_hash_value);
    transparent_crc(p_2883->g_1388.y, "p_2883->g_1388.y", print_hash_value);
    transparent_crc(p_2883->g_1388.z, "p_2883->g_1388.z", print_hash_value);
    transparent_crc(p_2883->g_1392.x, "p_2883->g_1392.x", print_hash_value);
    transparent_crc(p_2883->g_1392.y, "p_2883->g_1392.y", print_hash_value);
    transparent_crc(p_2883->g_1397, "p_2883->g_1397", print_hash_value);
    transparent_crc(p_2883->g_1418.x, "p_2883->g_1418.x", print_hash_value);
    transparent_crc(p_2883->g_1427.x, "p_2883->g_1427.x", print_hash_value);
    transparent_crc(p_2883->g_1427.y, "p_2883->g_1427.y", print_hash_value);
    transparent_crc(p_2883->g_1453.x, "p_2883->g_1453.x", print_hash_value);
    transparent_crc(p_2883->g_1453.y, "p_2883->g_1453.y", print_hash_value);
    transparent_crc(p_2883->g_1453.z, "p_2883->g_1453.z", print_hash_value);
    transparent_crc(p_2883->g_1453.w, "p_2883->g_1453.w", print_hash_value);
    transparent_crc(p_2883->g_1478.x, "p_2883->g_1478.x", print_hash_value);
    transparent_crc(p_2883->g_1478.y, "p_2883->g_1478.y", print_hash_value);
    transparent_crc(p_2883->g_1479.x, "p_2883->g_1479.x", print_hash_value);
    transparent_crc(p_2883->g_1479.y, "p_2883->g_1479.y", print_hash_value);
    transparent_crc(p_2883->g_1506.x, "p_2883->g_1506.x", print_hash_value);
    transparent_crc(p_2883->g_1506.y, "p_2883->g_1506.y", print_hash_value);
    transparent_crc(p_2883->g_1506.z, "p_2883->g_1506.z", print_hash_value);
    transparent_crc(p_2883->g_1506.w, "p_2883->g_1506.w", print_hash_value);
    transparent_crc(p_2883->g_1513, "p_2883->g_1513", print_hash_value);
    transparent_crc(p_2883->g_1543.x, "p_2883->g_1543.x", print_hash_value);
    transparent_crc(p_2883->g_1543.y, "p_2883->g_1543.y", print_hash_value);
    transparent_crc(p_2883->g_1543.z, "p_2883->g_1543.z", print_hash_value);
    transparent_crc(p_2883->g_1571.x, "p_2883->g_1571.x", print_hash_value);
    transparent_crc(p_2883->g_1583.x, "p_2883->g_1583.x", print_hash_value);
    transparent_crc(p_2883->g_1583.y, "p_2883->g_1583.y", print_hash_value);
    transparent_crc(p_2883->g_1583.z, "p_2883->g_1583.z", print_hash_value);
    transparent_crc(p_2883->g_1583.w, "p_2883->g_1583.w", print_hash_value);
    transparent_crc(p_2883->g_1620.x, "p_2883->g_1620.x", print_hash_value);
    transparent_crc(p_2883->g_1620.y, "p_2883->g_1620.y", print_hash_value);
    transparent_crc(p_2883->g_1636, "p_2883->g_1636", print_hash_value);
    transparent_crc(p_2883->g_1653.x, "p_2883->g_1653.x", print_hash_value);
    transparent_crc(p_2883->g_1653.y, "p_2883->g_1653.y", print_hash_value);
    transparent_crc(p_2883->g_1653.z, "p_2883->g_1653.z", print_hash_value);
    transparent_crc(p_2883->g_1653.w, "p_2883->g_1653.w", print_hash_value);
    transparent_crc(p_2883->g_1663, "p_2883->g_1663", print_hash_value);
    transparent_crc(p_2883->g_1680.x, "p_2883->g_1680.x", print_hash_value);
    transparent_crc(p_2883->g_1680.y, "p_2883->g_1680.y", print_hash_value);
    transparent_crc(p_2883->g_1681.x, "p_2883->g_1681.x", print_hash_value);
    transparent_crc(p_2883->g_1681.y, "p_2883->g_1681.y", print_hash_value);
    transparent_crc(p_2883->g_1681.z, "p_2883->g_1681.z", print_hash_value);
    transparent_crc(p_2883->g_1731.x, "p_2883->g_1731.x", print_hash_value);
    transparent_crc(p_2883->g_1771.x, "p_2883->g_1771.x", print_hash_value);
    transparent_crc(p_2883->g_1771.y, "p_2883->g_1771.y", print_hash_value);
    transparent_crc(p_2883->g_1814.x, "p_2883->g_1814.x", print_hash_value);
    transparent_crc(p_2883->g_1815.x, "p_2883->g_1815.x", print_hash_value);
    transparent_crc(p_2883->g_1815.y, "p_2883->g_1815.y", print_hash_value);
    transparent_crc(p_2883->g_1847.x, "p_2883->g_1847.x", print_hash_value);
    transparent_crc(p_2883->g_1847.y, "p_2883->g_1847.y", print_hash_value);
    transparent_crc(p_2883->g_1900.x, "p_2883->g_1900.x", print_hash_value);
    transparent_crc(p_2883->g_1900.y, "p_2883->g_1900.y", print_hash_value);
    transparent_crc(p_2883->g_1901.x, "p_2883->g_1901.x", print_hash_value);
    transparent_crc(p_2883->g_1901.y, "p_2883->g_1901.y", print_hash_value);
    transparent_crc(p_2883->g_1901.z, "p_2883->g_1901.z", print_hash_value);
    transparent_crc(p_2883->g_1956.x, "p_2883->g_1956.x", print_hash_value);
    transparent_crc(p_2883->g_1956.y, "p_2883->g_1956.y", print_hash_value);
    transparent_crc(p_2883->g_1974.x, "p_2883->g_1974.x", print_hash_value);
    transparent_crc(p_2883->g_1974.y, "p_2883->g_1974.y", print_hash_value);
    transparent_crc(p_2883->g_1974.z, "p_2883->g_1974.z", print_hash_value);
    transparent_crc(p_2883->g_1989.x, "p_2883->g_1989.x", print_hash_value);
    transparent_crc(p_2883->g_1993.x, "p_2883->g_1993.x", print_hash_value);
    transparent_crc(p_2883->g_1993.y, "p_2883->g_1993.y", print_hash_value);
    transparent_crc(p_2883->g_2003.x, "p_2883->g_2003.x", print_hash_value);
    transparent_crc(p_2883->g_2003.y, "p_2883->g_2003.y", print_hash_value);
    transparent_crc(p_2883->g_2003.z, "p_2883->g_2003.z", print_hash_value);
    transparent_crc(p_2883->g_2003.w, "p_2883->g_2003.w", print_hash_value);
    transparent_crc(p_2883->g_2011.x, "p_2883->g_2011.x", print_hash_value);
    transparent_crc(p_2883->g_2011.y, "p_2883->g_2011.y", print_hash_value);
    transparent_crc(p_2883->g_2037.x, "p_2883->g_2037.x", print_hash_value);
    transparent_crc(p_2883->g_2067.x, "p_2883->g_2067.x", print_hash_value);
    transparent_crc(p_2883->g_2067.y, "p_2883->g_2067.y", print_hash_value);
    transparent_crc(p_2883->g_2067.z, "p_2883->g_2067.z", print_hash_value);
    transparent_crc(p_2883->g_2067.w, "p_2883->g_2067.w", print_hash_value);
    transparent_crc(p_2883->g_2077.x, "p_2883->g_2077.x", print_hash_value);
    transparent_crc(p_2883->g_2077.y, "p_2883->g_2077.y", print_hash_value);
    transparent_crc(p_2883->g_2077.z, "p_2883->g_2077.z", print_hash_value);
    transparent_crc(p_2883->g_2141.x, "p_2883->g_2141.x", print_hash_value);
    transparent_crc(p_2883->g_2141.y, "p_2883->g_2141.y", print_hash_value);
    transparent_crc(p_2883->g_2151.x, "p_2883->g_2151.x", print_hash_value);
    transparent_crc(p_2883->g_2151.y, "p_2883->g_2151.y", print_hash_value);
    transparent_crc(p_2883->g_2151.z, "p_2883->g_2151.z", print_hash_value);
    transparent_crc(p_2883->g_2151.w, "p_2883->g_2151.w", print_hash_value);
    transparent_crc(p_2883->g_2188.x, "p_2883->g_2188.x", print_hash_value);
    transparent_crc(p_2883->g_2188.y, "p_2883->g_2188.y", print_hash_value);
    transparent_crc(p_2883->g_2281, "p_2883->g_2281", print_hash_value);
    transparent_crc(p_2883->g_2299.x, "p_2883->g_2299.x", print_hash_value);
    transparent_crc(p_2883->g_2299.y, "p_2883->g_2299.y", print_hash_value);
    transparent_crc(p_2883->g_2299.z, "p_2883->g_2299.z", print_hash_value);
    transparent_crc(p_2883->g_2311.x, "p_2883->g_2311.x", print_hash_value);
    transparent_crc(p_2883->g_2353.x, "p_2883->g_2353.x", print_hash_value);
    transparent_crc(p_2883->g_2353.y, "p_2883->g_2353.y", print_hash_value);
    transparent_crc(p_2883->g_2353.z, "p_2883->g_2353.z", print_hash_value);
    transparent_crc(p_2883->g_2353.w, "p_2883->g_2353.w", print_hash_value);
    transparent_crc(p_2883->g_2383.x, "p_2883->g_2383.x", print_hash_value);
    transparent_crc(p_2883->g_2383.y, "p_2883->g_2383.y", print_hash_value);
    transparent_crc(p_2883->g_2383.z, "p_2883->g_2383.z", print_hash_value);
    transparent_crc(p_2883->g_2383.w, "p_2883->g_2383.w", print_hash_value);
    transparent_crc(p_2883->g_2404.x, "p_2883->g_2404.x", print_hash_value);
    transparent_crc(p_2883->g_2404.y, "p_2883->g_2404.y", print_hash_value);
    transparent_crc(p_2883->g_2427.x, "p_2883->g_2427.x", print_hash_value);
    transparent_crc(p_2883->g_2427.y, "p_2883->g_2427.y", print_hash_value);
    transparent_crc(p_2883->g_2427.z, "p_2883->g_2427.z", print_hash_value);
    transparent_crc(p_2883->g_2460.x, "p_2883->g_2460.x", print_hash_value);
    transparent_crc(p_2883->g_2460.y, "p_2883->g_2460.y", print_hash_value);
    transparent_crc(p_2883->g_2460.z, "p_2883->g_2460.z", print_hash_value);
    transparent_crc(p_2883->g_2460.w, "p_2883->g_2460.w", print_hash_value);
    transparent_crc(p_2883->g_2495.x, "p_2883->g_2495.x", print_hash_value);
    transparent_crc(p_2883->g_2495.y, "p_2883->g_2495.y", print_hash_value);
    transparent_crc(p_2883->g_2512.x, "p_2883->g_2512.x", print_hash_value);
    transparent_crc(p_2883->g_2512.y, "p_2883->g_2512.y", print_hash_value);
    transparent_crc(p_2883->g_2513.x, "p_2883->g_2513.x", print_hash_value);
    transparent_crc(p_2883->g_2513.y, "p_2883->g_2513.y", print_hash_value);
    transparent_crc(p_2883->g_2513.z, "p_2883->g_2513.z", print_hash_value);
    transparent_crc(p_2883->g_2527.x, "p_2883->g_2527.x", print_hash_value);
    transparent_crc(p_2883->g_2527.y, "p_2883->g_2527.y", print_hash_value);
    transparent_crc(p_2883->g_2530.x, "p_2883->g_2530.x", print_hash_value);
    transparent_crc(p_2883->g_2530.y, "p_2883->g_2530.y", print_hash_value);
    transparent_crc(p_2883->g_2533.x, "p_2883->g_2533.x", print_hash_value);
    transparent_crc(p_2883->g_2534.x, "p_2883->g_2534.x", print_hash_value);
    transparent_crc(p_2883->g_2534.y, "p_2883->g_2534.y", print_hash_value);
    transparent_crc(p_2883->g_2645.x, "p_2883->g_2645.x", print_hash_value);
    transparent_crc(p_2883->g_2645.y, "p_2883->g_2645.y", print_hash_value);
    transparent_crc(p_2883->g_2645.z, "p_2883->g_2645.z", print_hash_value);
    transparent_crc(p_2883->g_2675.x, "p_2883->g_2675.x", print_hash_value);
    transparent_crc(p_2883->g_2675.y, "p_2883->g_2675.y", print_hash_value);
    transparent_crc(p_2883->g_2676.x, "p_2883->g_2676.x", print_hash_value);
    transparent_crc(p_2883->g_2784.x, "p_2883->g_2784.x", print_hash_value);
    transparent_crc(p_2883->g_2784.y, "p_2883->g_2784.y", print_hash_value);
    transparent_crc(p_2883->g_2814.x, "p_2883->g_2814.x", print_hash_value);
    transparent_crc(p_2883->g_2822.x, "p_2883->g_2822.x", print_hash_value);
    transparent_crc(p_2883->g_2822.y, "p_2883->g_2822.y", print_hash_value);
    transparent_crc(p_2883->g_2853.x, "p_2883->g_2853.x", print_hash_value);
    transparent_crc(p_2883->g_2853.y, "p_2883->g_2853.y", print_hash_value);
    transparent_crc(p_2883->g_2853.z, "p_2883->g_2853.z", print_hash_value);
    transparent_crc(p_2883->g_2855.x, "p_2883->g_2855.x", print_hash_value);
    transparent_crc(p_2883->g_2862.x, "p_2883->g_2862.x", print_hash_value);
    transparent_crc(p_2883->g_2862.y, "p_2883->g_2862.y", print_hash_value);
    transparent_crc(p_2883->g_2862.z, "p_2883->g_2862.z", print_hash_value);
    transparent_crc(p_2883->g_2868.x, "p_2883->g_2868.x", print_hash_value);
    transparent_crc(p_2883->g_2868.y, "p_2883->g_2868.y", print_hash_value);
    transparent_crc(p_2883->g_2868.z, "p_2883->g_2868.z", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

