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
// Seed: 2874627480

/* --- Struct/Union Declarations --- */
// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint16_t hip_const_1;
__constant__ uint64_t hip_const_2[3][10];
__constant__ uint16_t hip_const_3;
__constant__ int32_t hip_const_4;
__constant__ uint32_t hip_const_5;
__constant__ int32_t hip_const_6;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint16_t host_hip_const_1 = 0xE5A6L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint64_t host_hip_const_2[3][10] = {{18446744073709551614UL, 0UL, 0UL, 0UL, 0UL, 18446744073709551614UL, 0UL, 0UL, 0UL, 0UL}, {18446744073709551614UL, 0UL, 0UL, 0UL, 0UL, 18446744073709551614UL, 0UL, 0UL, 0UL, 0UL}, {18446744073709551614UL, 0UL, 0UL, 0UL, 0UL, 18446744073709551614UL, 0UL, 0UL, 0UL, 0UL}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        uint16_t host_hip_const_3 = 65532UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int32_t host_hip_const_4 = 0xA3367F5EL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        uint32_t host_hip_const_5 = 0x924C0001L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        int32_t host_hip_const_6 = 0x1C3C39BAL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
}

struct S0 {
    int32_t g_14;
    uint32_t g_38;
    int16_t g_47;
    char1 g_66;
    char4 g_71;
    char1 g_72;
    char1 g_73;
    int32_t g_75;
    int32_t *g_74;
    uint64_t g_81;
    uint32_t g_90;
    uint32_t g_92;
    uint32_t g_162;
    int32_t g_168;
    uint64_t g_169[5][3][1];
    int2 g_185;
    int32_t g_194;
    int32_t g_211;
    uint8_t g_213;
    long2 g_300;
    long1 g_304;
    int4 g_322;
    ushort4 g_333;
    uchar3 g_342;
    uint16_t *g_352[5];
    uint32_t g_389[8][7][3];
    int64_t *g_390;
    int64_t *g_392;
    uint16_t ***g_398;
    ulong2 g_428;
    short1 g_442;
    uint16_t g_457;
    uint3 g_555;
    long2 g_600;
    uint8_t *g_618;
    uint8_t **g_617;
    uint2 g_631;
    uint64_t *g_644[2][6];
    uint64_t **g_643;
    short2 g_658;
    uint16_t g_682;
    short2 g_692;
    long1 g_704;
    ushort4 g_715;
    long4 g_722;
    uint8_t g_803;
    int1 g_850;
    int4 g_876;
    int2 g_877;
    short1 g_882;
    int32_t *g_886;
    int1 g_940;
    ulong4 g_992;
    int32_t **g_1017;
    int32_t ***g_1016[1][7];
    int4 g_1020;
    uint32_t *g_1044;
    uint32_t **g_1043;
    uint32_t ***g_1042;
    ulong4 g_1083;
    long3 g_1108;
    int64_t g_1140;
    uint64_t g_1193[9];
    int8_t *g_1196[9][5];
    char4 g_1248;
    ulong4 g_1265;
    ulong3 g_1266;
    ulong1 g_1267;
    uint4 g_1285;
    int16_t *g_1295[6][8][2];
    uint16_t ****g_1305;
    uint16_t *****g_1304;
    int8_t **g_1341;
    int8_t ***g_1340[10][3];
    int1 g_1401;
    int3 g_1402;
    long3 g_1419;
    char3 g_1469;
    char4 g_1474;
    int64_t **g_1495;
    int64_t ***g_1494;
    ushort3 g_1535;
    uint8_t g_1543;
    char1 g_1590;
    char3 g_1596;
    char3 g_1597;
    char2 g_1598;
    char3 g_1599;
    ulong3 g_1627;
    ulong2 g_1637;
    ulong1 g_1638;
    ushort3 g_1643;
    short2 g_1679;
    int64_t g_1698[9];
    int64_t **g_1708;
    int4 g_1724;
    int3 g_1725;
    int4 g_1726;
    uint16_t **g_1741;
    char2 g_1761;
    uint2 g_1769;
    long1 g_1798;
    ulong1 g_1799;
    short3 g_1800;
    char2 g_1802;
    char4 g_1807;
    char1 g_1811;
    char1 g_1813;
    int1 g_1848;
    uchar3 g_1883;
    char4 g_1919;
    uint64_t ***g_1935;
    uint64_t ****g_1934;
    uint64_t ****g_1936;
    char3 g_1956;
    long2 g_2001;
    int32_t *g_2009;
    int16_t **g_2015;
    int16_t ***g_2014;
    uchar1 g_2030;
    uint4 g_2045;
    uint32_t g_2064;
    int64_t g_2075;
    int32_t g_2083;
    uint8_t ***g_2095;
    uint8_t ****g_2094;
    uint8_t ****g_2096;
    int2 g_2106;
    long3 g_2199;
    uint16_t ***g_2306;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint8_t  func_1(struct S0 * p_2312);
__device__ int32_t  func_2(int16_t  p_3, struct S0 * p_2312);
__device__ int64_t  func_15(uint64_t  p_16, int32_t * p_17, int32_t * p_18, int8_t  p_19, struct S0 * p_2312);
__device__ uint8_t  func_20(int8_t  p_21, int32_t * p_22, int32_t * p_23, int32_t * p_24, struct S0 * p_2312);
__device__ int32_t * func_25(int32_t * p_26, int64_t  p_27, struct S0 * p_2312);
__device__ int32_t * func_28(uint16_t  p_29, int32_t * p_30, struct S0 * p_2312);
__device__ int32_t * func_39(uint32_t  p_40, struct S0 * p_2312);
__device__ int32_t * func_49(uint16_t * p_50, int64_t  p_51, int16_t * p_52, int32_t * p_53, struct S0 * p_2312);
__device__ int8_t  func_62(int32_t * p_63, struct S0 * p_2312);
__device__ int32_t * func_82(int32_t * p_83, uint32_t  p_84, int16_t * p_85, int32_t * p_86, uint32_t  p_87, struct S0 * p_2312);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_2 hip_const_1 hip_const_3 hip_const_6 p_2312->g_66 hip_const_4 p_2312->g_71 p_2312->g_72 p_2312->g_73 p_2312->g_74 p_2312->g_47 p_2312->g_92 p_2312->g_75 hip_const_5 p_2312->g_90 p_2312->g_81 p_2312->g_162 p_2312->g_169 p_2312->g_185 p_2312->g_194 p_2312->g_213 p_2312->g_168 p_2312->g_457 p_2312->g_211 p_2312->g_333 p_2312->g_555 p_2312->g_322 p_2312->g_300 p_2312->g_600 p_2312->g_442 p_2312->g_617 p_2312->g_643 p_2312->g_304 p_2312->g_342 p_2312->g_704 p_2312->g_715 p_2312->g_722 p_2312->g_618 p_2312->g_38 p_2312->g_803 p_2312->g_389 p_2312->g_877 p_2312->g_1535 p_2312->g_1017 p_2312->g_1543 p_2312->g_1140 p_2312->g_1590 p_2312->g_1596 p_2312->g_1597 p_2312->g_1598 p_2312->g_1599 p_2312->g_1627 p_2312->g_1637 p_2312->g_1638 p_2312->g_1643 p_2312->g_2009 p_2312->g_2030 p_2312->g_2045 p_2312->g_2064 p_2312->g_14 p_2312->g_1698 p_2312->g_2083 p_2312->g_682 p_2312->g_1304 p_2312->g_1305 p_2312->g_2306
 * writes: p_2312->g_14 p_2312->g_38 p_2312->g_47 p_2312->g_81 p_2312->g_90 p_2312->g_92 p_2312->g_74 p_2312->g_72 p_2312->g_75 p_2312->g_162 p_2312->g_169 p_2312->g_194 p_2312->g_213 p_2312->g_168 p_2312->g_457 p_2312->g_211 p_2312->g_300 p_2312->g_66 p_2312->g_322 p_2312->g_617 p_2312->g_643 p_2312->g_185 p_2312->g_73 p_2312->g_682 p_2312->g_886 p_2312->g_850 p_2312->g_1543 p_2312->g_1140 p_2312->g_2094 p_2312->g_2096 p_2312->g_1883 p_2312->g_2083 p_2312->g_398
 */
__device__ uint8_t  func_1(struct S0 * p_2312)
{ /* block id: 0 */
    int8_t l_12 = 0xDCL;
    int32_t *l_13 = &p_2312->g_14;
    __shared__ uint16_t *l_31;
    l_31 = &hip_const_3;
    uint16_t *l_32 = &hip_const_3;
    uint16_t *l_33 = &hip_const_3;
    uint16_t *l_34 = &hip_const_3;
    uint16_t *l_35 = &hip_const_3;
    uint16_t *l_36 = &hip_const_3;
    uint16_t *l_37 = &hip_const_3;
    int16_t *l_45 = nullptr;
    int16_t *l_46 = &p_2312->g_47;
    uint16_t l_48 = 0x4126L;
    int32_t **l_701 = &p_2312->g_74;
    uint16_t l_910 = 1UL;
    __shared__ int16_t l_1549;
    l_1549 = 1L;
    __shared__ int32_t *l_1550;
    l_1550 = nullptr;
    uint32_t l_2025 = 7UL;
    int32_t l_2286 = 0x9C889B38L;
    int32_t l_2287 = 0xD5566711L;
    int64_t l_2288 = 0x782629465141F21FLL;
    int32_t l_2289[4];
    // attempting a hip shared for loop
    __shared__ uint8_t l_2290[6];
    for (int i = 0; i < 6; i++)
        l_2290[i] = 0x73L;
    __shared__ uint16_t l_2293;
    l_2293 = 4UL;
    uint3 l_2300 = make_uint3(1UL, 7UL, 1UL);
    uint8_t l_2301 = 0xDAL;
    // attempting a hip shared for loop
    __shared__ uint8_t l_2302[7][8];
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 8; j++)
            l_2302[i][j] = 6UL;
    }
    uint16_t ***l_2305[7][10] = {{nullptr, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, nullptr, &p_2312->g_1741}, {nullptr, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, nullptr, &p_2312->g_1741}, {nullptr, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, nullptr, &p_2312->g_1741}, {nullptr, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, nullptr, &p_2312->g_1741}, {nullptr, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, nullptr, &p_2312->g_1741}, {nullptr, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, nullptr, &p_2312->g_1741}, {nullptr, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, &p_2312->g_1741, nullptr, &p_2312->g_1741}};
    ushort2 l_2307 = make_ushort2(0xAF39L, 0x724CL);
    __shared__ uint32_t l_2308;
    l_2308 = 0x7DC308F1L;
    uint64_t l_2309[7][4] = {{0UL, 0x696919256BBA6DE8LL, 18446744073709551608UL, 0xDAB87119541795B0LL}, {0UL, 0x696919256BBA6DE8LL, 18446744073709551608UL, 0xDAB87119541795B0LL}, {0UL, 0x696919256BBA6DE8LL, 18446744073709551608UL, 0xDAB87119541795B0LL}, {0UL, 0x696919256BBA6DE8LL, 18446744073709551608UL, 0xDAB87119541795B0LL}, {0UL, 0x696919256BBA6DE8LL, 18446744073709551608UL, 0xDAB87119541795B0LL}, {0UL, 0x696919256BBA6DE8LL, 18446744073709551608UL, 0xDAB87119541795B0LL}, {0UL, 0x696919256BBA6DE8LL, 18446744073709551608UL, 0xDAB87119541795B0LL}};
    uint32_t l_2310 = 0x92C42FA2L;
    int32_t l_2311 = 0L;
    int i, j;
    for (int i = 0; i < 4; i++)
        l_2289[i] = 1L;
    if (func_2(((safe_lshift_func_uint64_t_u_s((hip_const_2[0][1] != ((safe_rshift_func_uint8_t_u_u(1UL, 3)) || (safe_add_func_int64_t_s_s((safe_rshift_func_int32_t_s_s(hip_const_1, ((*l_13) = l_12))), func_15((func_20(l_12, func_25(func_28((p_2312->g_38 = 7UL), ((*l_701) = func_39((safe_mul_func_uint32_t_u_u(hip_const_3, (safe_mul_func_int16_t_s_s((((hip_const_2[0][1] && ((((*l_46) = (((0x2C298C245E320525LL | hip_const_3) , nullptr) == l_34)) >= hip_const_2[0][0]) , hip_const_3)) ^ 0x932DA3BB1D4416DALL) & hip_const_6), l_48)))), p_2312)), p_2312), l_910, p_2312), l_13, l_13, p_2312) <= l_1549), l_1550, l_1550, l_910, p_2312))))), l_2025)) >= 5L), p_2312))
    { /* block id: 882 */
        int8_t l_2277 = (-2L);
        (*l_13) = (*p_2312->g_2009);
        (*l_13) &= l_2277;
    }
    else
    { /* block id: 885 */
        int32_t l_2278 = (-1L);
        int32_t *l_2279 = nullptr;
        int32_t *l_2280 = nullptr;
        int32_t *l_2281 = nullptr;
        int32_t *l_2282[10][2] = {{&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}, {&p_2312->g_211, nullptr}};
        uint8_t l_2283 = 0x80L;
        int i, j;
        --l_2283;
        l_2290[2]++;
        ++l_2293;
    }
    (*p_2312->g_2009) |= (&p_2312->g_2015 == (make_long4((-1L), 1L, 0x398A9D9FEA173F1ALL, ((((((((((((safe_sub_func_uint32_t_u_u(((make_uint2(l_2300.z, l_2300.z) ^ make_uint2(l_2301, 0UL))).y, l_2302[1][4])) <= (((((((+4L) ^ (*l_13)) || make_short3(0xA079L, 0xE01AL, (safe_mod_func_int16_t_s_s(((l_2305[0][8] = ((**p_2312->g_1304) = l_2305[0][8])) != ((*l_13) , p_2312->g_2306)), l_2307.x))).z) < 1UL) , l_2308) & (*l_13)) || 0xCBL)) || l_2309[0][2]) , l_2310) < (*l_13)) , 0UL) , &p_2312->g_1340[0][0]) != &p_2312->g_1340[0][1]) != l_2311) != (*p_2312->g_618)) < (*l_13)) < 0L)).z , &p_2312->g_2015));
    return (**p_2312->g_617);
}


/* ------------------------------------------ */
/* 
 * reads : p_2312->g_2030 p_2312->g_2009 p_2312->g_2045 p_2312->g_2064 p_2312->g_14 p_2312->g_618 p_2312->g_1017 p_2312->g_168 p_2312->g_457 p_2312->g_74 p_2312->g_715 p_2312->g_213 p_2312->g_617 p_2312->g_1698 p_2312->g_2083 p_2312->g_682
 * writes: p_2312->g_168 p_2312->g_213 p_2312->g_74 p_2312->g_2094 p_2312->g_2096 p_2312->g_457 p_2312->g_75 p_2312->g_1883 p_2312->g_2083 p_2312->g_682
 */
__device__ int32_t  func_2(int16_t  p_3, struct S0 * p_2312)
{ /* block id: 765 */
    int1 l_2031 = make_int1(1L);
    int32_t l_2060 = 0L;
    uint32_t l_2061 = 0x0927EC23L;
    __shared__ int32_t l_2065;
    l_2065 = 0xF7C02BE8L;
    uint16_t *l_2072 = &p_2312->g_682;
    int64_t l_2076 = 0x64B1D3F4D97E93E1LL;
    int32_t l_2078 = 0x74573FBBL;
    uint32_t l_2085 = 0xEEB2618BL;
    uint8_t ***l_2091[10] = {&p_2312->g_617, &p_2312->g_617, &p_2312->g_617, &p_2312->g_617, &p_2312->g_617, &p_2312->g_617, &p_2312->g_617, &p_2312->g_617, &p_2312->g_617, &p_2312->g_617};
    uint8_t ****l_2090 = &l_2091[1];
    uint64_t l_2114[5][9] = {{0xAB472D28923FCA1ALL, 0x4F76C4E535D44E28LL, 0x051129B455055ABELL, 18446744073709551611UL, 1UL, 0x1D1FC7F736D51D93LL, 0x4A1919C000E094F5LL, 0x7878D7DA3362F09ALL, 0x95681E31CB51CF79LL}, {0xAB472D28923FCA1ALL, 0x4F76C4E535D44E28LL, 0x051129B455055ABELL, 18446744073709551611UL, 1UL, 0x1D1FC7F736D51D93LL, 0x4A1919C000E094F5LL, 0x7878D7DA3362F09ALL, 0x95681E31CB51CF79LL}, {0xAB472D28923FCA1ALL, 0x4F76C4E535D44E28LL, 0x051129B455055ABELL, 18446744073709551611UL, 1UL, 0x1D1FC7F736D51D93LL, 0x4A1919C000E094F5LL, 0x7878D7DA3362F09ALL, 0x95681E31CB51CF79LL}, {0xAB472D28923FCA1ALL, 0x4F76C4E535D44E28LL, 0x051129B455055ABELL, 18446744073709551611UL, 1UL, 0x1D1FC7F736D51D93LL, 0x4A1919C000E094F5LL, 0x7878D7DA3362F09ALL, 0x95681E31CB51CF79LL}, {0xAB472D28923FCA1ALL, 0x4F76C4E535D44E28LL, 0x051129B455055ABELL, 18446744073709551611UL, 1UL, 0x1D1FC7F736D51D93LL, 0x4A1919C000E094F5LL, 0x7878D7DA3362F09ALL, 0x95681E31CB51CF79LL}};
    uint64_t *****l_2203 = &p_2312->g_1934;
    int8_t **l_2207 = &p_2312->g_1196[0][3];
    ulong3 l_2212 = make_ulong3(4UL, 0xBC81B89C0AE154F5LL, 4UL);
    int32_t *l_2218 = nullptr;
    uint64_t l_2231 = 18446744073709551608UL;
    uchar3 l_2273 = make_uchar3(0x5DL, 1UL, 0x5DL);
    int i, j;
    (*p_2312->g_2009) = ((+0xD642FCA3L) , (safe_sub_func_uint8_t_u_u(((safe_mul(make_uchar1(0xC8L), make_uchar1(0x00L)))).x, make_uchar2(p_2312->g_2030.x, p_2312->g_2030.x).x)));
    l_2031.x = make_int4(l_2031.x, l_2031.x, l_2031.x, l_2031.x).w;
    if (l_2031.x)
    { /* block id: 768 */
        __shared__ int64_t l_2032;
        l_2032 = (-7L);
        int32_t *l_2033 = &p_2312->g_168;
        int32_t *l_2034 = &p_2312->g_14;
        // attempting a hip shared for loop
        __shared__ int32_t *l_2035[3][1][7];
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 1; j++)
            {
                for (int k = 0; k < 7; k++)
                    l_2035[i][j][k] = &p_2312->g_75;
            }
        }
        uint8_t l_2036 = 0x2DL;
        uint2 l_2046 = make_uint2(4294967288UL, 0UL);
        int16_t *l_2057 = nullptr;
        int16_t *l_2058 = nullptr;
        int16_t *l_2059[5];
        int i, j, k;
        for (int i = 0; i < 5; i++)
            l_2059[i] = &p_2312->g_47;
        --l_2036;
        if (((((p_3 != ((p_3 <= (((safe_mod(((safe_rshift(((safe_rshift(((((make_uint3(p_2312->g_2045.y, p_2312->g_2045.y, p_2312->g_2045.y) ^ ((make_uint3(l_2046.y, l_2046.y, l_2046.y) ^ ((safe_div(((safe_rshift(make_uint3(3UL, 0xA64C75A7L, 1UL), make_uint3(32, 32, 32)))), ((((((((~make_uint3(0xFEF924D5L, ((safe_lshift_func_uint16_t_u_u(l_2031.x, (safe_add_func_int16_t_s_s((((safe_rshift_func_uint32_t_u_u(1UL, ((l_2061 &= (l_2060 &= l_2031.x)) || (safe_div_func_int32_t_s_s(p_3, ((*p_2312->g_2009) = ((0x049EL <= p_2312->g_2064) && l_2065))))))) , p_3) > p_3), 0xF876L)))) || p_3), 0x2CB0DAA4L))) ^ make_uint3(0UL, 0UL, 0UL))) ^ make_uint3(0xEDDFBEF7L, 0xEDDFBEF7L, 0xEDDFBEF7L))) ^ make_uint3(4294967292UL, 4294967292UL, 4294967292UL)))))))))) & make_uint3(0x83802A89L, 0x83802A89L, 0x83802A89L))), make_uint3(32, 32, 32)))), make_uint3(32, 32, 32)))), make_uint3(0xB5D1EFB1L, 0xB5D1EFB1L, 0xB5D1EFB1L)))).z > p_3)) , p_3)) || p_3) ^ 0x51L) < 0xFCFB1A5F3C5497D5LL))
        { /* block id: 773 */
            return p_3;
        }
        else
        { /* block id: 775 */
            uint32_t l_2070 = 1UL;
            int32_t l_2071[5][7][7] = {{{1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}}, {{1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}}, {{1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}}, {{1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}}, {{1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}, {1L, 1L, 0x96B7FB04L, 0x10767AB1L, 7L, 0x9BFA86D8L, 0x8B767EB7L}}};
            int32_t l_2073 = (-1L);
            int i, j, k;
            l_2073 = ((safe_mul(make_int3((1L ^ ((safe_mod_func_int8_t_s_s((p_3 ^ p_3), ((l_2071[4][3][1] = l_2070) || l_2071[0][3][6]))) == ((*p_2312->g_618) = ((((-3L) || (nullptr != l_2072)) >= ((+l_2061) | (*l_2034))) & p_3)))), 0L, 0x55128AA2L), make_int3(0L, 0L, 0L)))).z;
            (*p_2312->g_1017) = &l_2071[1][4][6];
        }
    }
    else
    { /* block id: 781 */
        int32_t *l_2074[2];
        int64_t l_2077 = 0L;
        uint64_t l_2079 = 0UL;
        int64_t l_2082 = 0x25E9E4BCE580E0F3LL;
        __shared__ int16_t l_2084;
        l_2084 = 1L;
        uint8_t ***l_2089 = &p_2312->g_617;
        uint8_t ****l_2088 = &l_2089;
        __shared__ uint8_t *****l_2092;
        l_2092 = nullptr;
        uint8_t *****l_2093[3];
        int8_t *l_2097 = nullptr;
        // attempting a hip shared for loop
        __shared__ int8_t *l_2098[3][1];
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 1; j++)
                l_2098[i][j] = nullptr;
        }
        uint16_t **l_2116 = &p_2312->g_352[1];
        int3 l_2129 = make_int3(0L, 0xD8E4E1B7L, 0L);
        uint8_t l_2130 = 0x16L;
        int32_t l_2146 = 0x20C8CA76L;
        __shared__ char3 l_2159;
        l_2159 = make_char3(0x59L, 0x00L, 0x59L);
        uint32_t l_2172 = 1UL;
        int i, j;
        for (int i = 0; i < 2; i++)
            l_2074[i] = &p_2312->g_168;
        for (int i = 0; i < 3; i++)
            l_2093[i] = &l_2090;
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 1; j++)
                l_2098[i][j] = nullptr;
        }
        ++l_2079;
        (*p_2312->g_2009) ^= p_3;
        --l_2085;
        if (((l_2078 = (l_2088 != (p_2312->g_2096 = (p_2312->g_2094 = l_2090)))) == l_2076))
        { /* block id: 788 */
            uint64_t l_2101 = 0xF74993787F938E94LL;
            ulong3 l_2111 = make_ulong3(0x8EB4A752ED97A231LL, 0x329D218CCECCE271LL, 0x8EB4A752ED97A231LL);
            uint16_t **l_2115 = &p_2312->g_352[0];
            uint32_t l_2120 = 0UL;
            int32_t l_2122 = 1L;
            __shared__ int32_t l_2145;
            l_2145 = 1L;
            int8_t *l_2162[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
            int32_t **l_2167 = &p_2312->g_886;
            __shared__ int32_t l_2208;
            l_2208 = 0L;
            uint64_t l_2209 = 1UL;
            ushort3 l_2217 = make_ushort3(0UL, 0x3ABEL, 0UL);
            uint8_t **l_2221 = &p_2312->g_618;
            uint8_t **l_2222 = nullptr;
            uint8_t ***l_2225 = &p_2312->g_617;
            int64_t *l_2230 = &l_2082;
            int i;
            for (p_2312->g_457 = 0; (p_2312->g_457 != 20); p_2312->g_457 = safe_add_func_uint64_t_u_u(p_2312->g_457, 2))
            { /* block id: 791 */
                __shared__ uint16_t l_2102;
                l_2102 = 1UL;
                int32_t l_2123 = 0x3543ED80L;
                int32_t l_2141 = 0x26D177BDL;
                int32_t l_2144[3][6] = {{3L, (-2L), 0L, (-2L), 3L, (-2L)}, {3L, (-2L), 0L, (-2L), 3L, (-2L)}, {3L, (-2L), 0L, (-2L), 3L, (-2L)}};
                __shared__ int8_t **l_2202;
                l_2202 = &p_2312->g_1196[0][3];
                __shared__ int64_t l_2206;
                l_2206 = 0L;
                int i, j;
                if (l_2101)
                { /* block id: 792 */
                    int1 l_2117 = make_int1(0x7B5BDD8CL);
                    int64_t *l_2121 = nullptr;
                    int i;
                    if (((((l_2102 , (p_3 , ((l_2122 &= (((safe_unary_minus_func_uint16_t_u(l_2102)) < make_long4(1L, 0x50736E9603CDF17CLL, (-1L), 0x11508E36A5A33324LL).y) , (safe_add_func_uint64_t_u_u((make_int4(p_2312->g_2106.y, p_2312->g_2106.y, p_2312->g_2106.y, p_2312->g_2106.y).w > ((safe_mul_func_int8_t_s_s((~(safe_mod_func_uint64_t_u_u(make_ulong4((p_3 , make_ulong2(l_2111.y, l_2111.y).x), (l_2114[4][6] || (l_2117.x = (l_2115 != (make_uchar1(7UL).x , l_2116)))), (((safe_sub_func_int8_t_s_s((-1L), 0x0FL)) == l_2120) , p_3), p_3).x, 0x81C6324CF9DDB4A6LL))), 0x3BL)) && 18446744073709551615UL)), l_2102)))) == p_3))) ^ p_3) ^ p_3) == 6UL))
                    { /* block id: 795 */
                        (*p_2312->g_1017) = (*p_2312->g_1017);
                    }
                    else
                    { /* block id: 797 */
                        uint32_t l_2124 = 18446744073709551612UL;
                        l_2124++;
                    }
                    for (p_2312->g_75 = 26; (p_2312->g_75 <= (-15)); p_2312->g_75--)
                    { /* block id: 802 */
                        int32_t l_2133 = 0x77D63C4DL;
                        int32_t l_2134 = 0xE281CCAFL;
                        int32_t l_2135 = 0xA840EFFDL;
                        __shared__ int32_t l_2136;
                        l_2136 = 0xF96EFB33L;
                        int32_t l_2137 = (-3L);
                        int32_t l_2138 = 2L;
                        int32_t l_2139 = 0x6AB972FCL;
                        int32_t l_2140 = 1L;
                        int32_t l_2142 = 0xE6614602L;
                        int32_t l_2143 = 0xC93C173CL;
                        uint32_t l_2147 = 0xC34AE466L;
                        --l_2130;
                        if ((*p_2312->g_2009))
                            continue;
                        l_2147--;
                    }
                    for (l_2076 = (-12); (l_2076 != (-19)); --l_2076)
                    { /* block id: 809 */
                        uint32_t l_2152 = 7UL;
                        --l_2152;
                        return p_3;
                    }
                }
                else
                { /* block id: 813 */
                    int8_t *l_2163[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                    uint32_t *l_2166 = &l_2085;
                    int64_t *l_2168 = nullptr;
                    int64_t *l_2169 = nullptr;
                    int64_t *l_2170 = nullptr;
                    int64_t *l_2171 = &p_2312->g_1698[5];
                    int32_t l_2174 = (-2L);
                    uint64_t *l_2204 = nullptr;
                    uint64_t *l_2205[2][2];
                    int i, j;
                    for (int i = 0; i < 2; i++)
                    {
                        for (int j = 0; j < 2; j++)
                            l_2205[i][j] = &p_2312->g_169[0][0][0];
                    }
                    if (((*p_2312->g_2009) = ((safe_rshift_func_uint32_t_u_s((safe_mul_func_int64_t_s_s((make_char2(l_2159.x, l_2159.x).y >= 0xA6L), (((~(l_2162[6] != l_2163[1])) | (nullptr != (*p_2312->g_1017))) == (((make_uchar3(((safe_add_func_uint32_t_u_u(((*l_2166) = 0x10C61BD6L), (((&p_2312->g_886 == l_2167) ^ ((*l_2171) = ((nullptr != &hip_const_6) || 2L))) , l_2144[2][2]))) <= p_3), 246UL, 6UL) ^ make_uchar3(255UL, 255UL, 255UL))).x != 0xA1L)))), p_3)) , l_2172)))
                    { /* block id: 817 */
                        uint8_t l_2173 = 0UL;
                        if (p_3)
                            break;
                        if (l_2173)
                            continue;
                    }
                    else
                    { /* block id: 820 */
                        (*p_2312->g_1017) = func_25(&l_2145, p_3, p_2312);
                        if (p_3)
                            break;
                        (*p_2312->g_1017) = func_25(&l_2141, l_2174, p_2312);
                        if (l_2174)
                            break;
                    }
                    l_2174 = (p_2312->g_715.x , (safe_div_func_uint16_t_u_u((safe_mul_func_uint64_t_u_u((((safe_sub_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u((safe_add_func_int8_t_s_s((safe_rshift_func_uint64_t_u_u(((l_2207 = (l_2202 = ((safe_mul_func_int16_t_s_s((safe_lshift_func_uint64_t_u_u((l_2206 |= ((safe_div(make_ulong3(18446744073709551607UL, 1UL, ((safe_rshift_func_int8_t_s_s((((safe_lshift_func_int32_t_s_u(0x9ADA576AL, (((*p_2312->g_2094) = nullptr) != nullptr))) , make_long3(p_2312->g_2199.y, p_2312->g_2199.y, p_2312->g_2199.y).z) || (safe_sub_func_uint16_t_u_u((((&l_2162[6] != l_2202) <= ((((make_ushort2(1UL, p_3).x , (l_2203 = nullptr)) != &p_2312->g_1934) , &l_2074[1]) == nullptr)) != p_3), 0xD709L))), 0)) < p_3)), make_ulong3(8UL, 8UL, 8UL)))).x), p_3)), p_3)) , nullptr))) != nullptr), 33)), (*p_2312->g_618))), l_2141)), p_3)), 0UL)) >= p_3) ^ 0x5EL), 18446744073709551611UL)), l_2174)));
                    ++l_2209;
                }
                l_2208 &= (((***l_2089) = (make_ulong4(l_2212.z, l_2212.z, l_2212.z, l_2212.z).z == (safe_lshift_func_int8_t_s_u((~l_2111.x), 1)))) >= (p_2312->g_1883.x = ((p_3 > ((safe_sub(make_ulong1(18446744073709551615UL), make_ulong1(0x74EDCC5794E923F1LL)))).x) != make_ushort2(((make_ushort1(8UL) ^ make_ushort1(l_2217.x))).x, (l_2122 = 65535UL)).x)));
                for (l_2123 = 5; (l_2123 >= 1); l_2123 -= 1)
                { /* block id: 840 */
                    int i;
                    (*p_2312->g_1017) = (make_long1(p_2312->g_1698[(l_2123 + 2)]).x , l_2074[1]);
                }
            }
            (*p_2312->g_1017) = l_2218;
            (*p_2312->g_2009) &= (((safe_sub_func_int16_t_s_s((l_2221 != (l_2145 , l_2222)), (safe_rshift_func_int64_t_s_s((((((*l_2090) = (*l_2088)) != (l_2225 = &l_2222)) == p_3) && l_2208), 12)))) >= ((*l_2230) = (safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(l_2209, (0x2F56F233L ^ (-1L)))), 0x128CL)))) > 0x7729L);
            l_2031.x = (&l_2060 == (*p_2312->g_1017));
        }
        else
        { /* block id: 850 */
            __shared__ int32_t **l_2246;
            l_2246 = nullptr;
            int32_t **l_2247[1];
            int i;
            for (int i = 0; i < 1; i++)
                l_2247[i] = &l_2074[1];
            ++l_2231;
            for (p_2312->g_2083 = (-10); (p_2312->g_2083 <= 0); p_2312->g_2083 = safe_add_func_int32_t_s_s(p_2312->g_2083, 1))
            { /* block id: 854 */
                uint64_t l_2240 = 0UL;
                if (l_2114[4][6])
                { /* block id: 855 */
                    int64_t l_2236 = (-6L);
                    if (l_2236)
                        break;
                    for (l_2085 = 0; (l_2085 <= 0); l_2085 += 1)
                    { /* block id: 859 */
                        uchar4 l_2237 = make_uchar4(1UL, 0x42L, 1UL, 0x42L);
                        int i;
                        --l_2237.y;
                        ++l_2240;
                    }
                }
                else
                { /* block id: 863 */
                    for (p_2312->g_682 = 0; (p_2312->g_682 == 38); p_2312->g_682 = safe_add_func_int8_t_s_s(p_2312->g_682, 1))
                    { /* block id: 866 */
                        uint8_t l_2245 = 0xDDL;
                        if (l_2245)
                            break;
                    }
                }
            }
            l_2074[0] = ((*p_2312->g_1017) = l_2074[1]);
        }
    }
    for (l_2085 = 0; (l_2085 < 49); ++l_2085)
    { /* block id: 877 */
        ushort2 l_2252 = make_ushort2(9UL, 0UL);
        int1 l_2259 = make_int1(0L);
        __shared__ int16_t ***l_2272;
        l_2272 = &p_2312->g_2015;
        uchar1 l_2274 = make_uchar1(8UL);
        int32_t l_2275 = 0L;
        __shared__ int32_t l_2276;
        l_2276 = 0L;
        int i;
        l_2276 &= ((safe_mod_func_uint16_t_u_u(make_ushort3(l_2252.x, l_2252.x, l_2252.x).x, 0x1609L)) != (safe_mod_func_uint32_t_u_u((((safe_lshift_func_uint32_t_u_s(((safe_sub_func_uint8_t_u_u((~252UL), ((l_2252.x || make_int3(0x80BA704DL, ((make_int4(l_2259.x, l_2259.x, l_2259.x, l_2259.x) | ((safe_add(((make_int4(((safe_sub_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((nullptr != l_2272) && make_ushort3(make_ushort3((((&p_2312->g_1935 == nullptr) >= 0UL) && (((make_uchar3(l_2273.z, l_2273.z, l_2273.z) ^ make_uchar3(l_2274.x, l_2274.x, l_2274.x))).z != (l_2275 = 0xCAL))), 0xA884L, 65535UL).y, 0UL, 0xA779L).z), l_2212.y)), 0xA2L)), 1L)), 4294967287UL)) & 0UL), 0x4700DF5BL, 0xC47FDCE6L, (*p_2312->g_2009)) & make_int4(0x12948ABCL, 0x12948ABCL, 0x12948ABCL, 0x12948ABCL))), make_int4(0x8650A805L, 0x8650A805L, 0x8650A805L, 0x8650A805L)))))).w, p_3).x) | (*p_2312->g_2009)))) >= p_3), p_3)) >= l_2078) != p_3), l_2252.x)));
    }
    return (*p_2312->g_2009);
}


/* ------------------------------------------ */
/* 
 * reads : p_2312->g_1140 p_2312->g_617 p_2312->g_618 p_2312->g_1590 p_2312->g_1596 p_2312->g_1597 p_2312->g_1598 p_2312->g_1599 p_2312->g_162 p_2312->g_213 p_2312->g_1627 p_2312->g_1637 p_2312->g_1638 p_2312->g_1643 p_2312->g_2009 p_2312->g_168
 * writes: p_2312->g_1140 p_2312->g_213 p_2312->g_168 p_2312->g_162 p_2312->g_47 p_2312->g_1543
 */
__device__ int64_t  func_15(uint64_t  p_16, int32_t * p_17, int32_t * p_18, int8_t  p_19, struct S0 * p_2312)
{ /* block id: 601 */
    uint32_t l_1555 = 0x34E85DF0L;
    uint32_t l_1558 = 0UL;
    __shared__ int32_t l_1574;
    l_1574 = 0xB2DE568AL;
    int32_t l_1575 = 0x157ABF2CL;
    uint64_t *l_1586 = nullptr;
    uint64_t *l_1587[4] = {&p_2312->g_169[0][0][0], &p_2312->g_1193[8], &p_2312->g_169[0][0][0], &p_2312->g_1193[8]};
    __shared__ char1 l_1591;
    l_1591 = make_char1((-2L));
    // attempting a hip shared for loop
    __shared__ uint16_t *****l_1602[7][9][4];
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            for (int k = 0; k < 4; k++)
                l_1602[i][j][k] = nullptr;
        }
    }
    uint4 l_1611 = make_uint4(0xCB8777D5L, 0x151F088AL, 0xCB8777D5L, 0x151F088AL);
    ulong4 l_1628 = make_ulong4(0x752E3E327D60EE51LL, 1UL, 0x752E3E327D60EE51LL, 1UL);
    ushort1 l_1644 = make_ushort1(0x7780L);
    ushort1 l_1647 = make_ushort1(0xC3E2L);
    int16_t *l_1650 = nullptr;
    int16_t *l_1651 = &p_2312->g_47;
    uint64_t l_1652 = 5UL;
    int4 l_1653 = make_int4(0x15807913L, 0xC8368B41L, 0x15807913L, 0xC8368B41L);
    int8_t ****l_1654 = &p_2312->g_1340[0][0];
    ulong4 l_1682 = make_ulong4(0x8BEB52D3FDF14486LL, 0UL, 0x8BEB52D3FDF14486LL, 0UL);
    int16_t l_1687 = 0xBE08L;
    int64_t l_1787 = (-1L);
    char2 l_1814 = make_char2(0xC4L, 0xEDL);
    uint8_t l_1836 = 0UL;
    __shared__ uint64_t l_1849;
    l_1849 = 0x3483200138D7EFBALL;
    __shared__ int32_t ***l_1897;
    l_1897 = &p_2312->g_1017;
    uint16_t l_1898 = 0xE59DL;
    uint64_t ****l_1939[9] = {nullptr, &p_2312->g_1935, nullptr, &p_2312->g_1935, nullptr, &p_2312->g_1935, nullptr, &p_2312->g_1935, nullptr};
    uint64_t l_1940[6][7][6] = {{{0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}}, {{0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}}, {{0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}}, {{0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}}, {{0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}}, {{0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}, {0xF13F4DB05CABCBA9LL, 0x24A8259F37106151LL, 0x57CCE38ADB6E0624LL, 1UL, 0x7B7FBD4062DC60C7LL, 0x554A1D4D89940A85LL}}};
    int32_t l_1947 = 0L;
    int64_t l_1960 = 4L;
    int16_t l_1994 = 0x667AL;
    int32_t l_1996 = 0xD9A1DD2AL;
    int64_t ***l_2007 = &p_2312->g_1495;
    int i, j, k;
lbl_1655:
    for (p_2312->g_1140 = 0; (p_2312->g_1140 >= (-22)); p_2312->g_1140 = safe_sub_func_uint16_t_u_u(p_2312->g_1140, 2))
    { /* block id: 604 */
        __shared__ uint8_t l_1561;
        l_1561 = 7UL;
        // attempting a hip shared for loop
        __shared__ int32_t l_1570[5][6][7];
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 6; j++)
            {
                for (int k = 0; k < 7; k++)
                    l_1570[i][j][k] = (-7L);
            }
        }
        int32_t l_1571 = 0L;
        int8_t *l_1572 = nullptr;
        int8_t *l_1573 = nullptr;
        int32_t *l_1576 = nullptr;
        __shared__ int32_t *l_1577;
        l_1577 = &p_2312->g_168;
        int i, j, k;
        (*l_1577) = (safe_div_func_uint16_t_u_u(((((((make_uint2(4294967291UL, make_uint1((((l_1574 = make_char3(6L, ((make_int2(0L, 0L).y && l_1555) < (p_19 && ((l_1558 , (safe_sub_func_uint64_t_u_u(((l_1555 & (l_1561--)) <= (make_ushort4((l_1571 = (((**p_2312->g_617) = (safe_add_func_uint32_t_u_u(l_1555, (0x9BFBC68BB9434FECLL <= (((l_1558 ^ ((safe_mul_func_int16_t_s_s(0xCB22L, p_16)) , 0xA2L)) == p_19) == p_16))))) != l_1570[3][3][6])), 0x0F50L, 0x669CL, p_16).w , p_19)), l_1555))) >= l_1570[3][3][6]))), l_1558).y) , 0x2EL) , p_19)).x).x != 0xCC1A2BCAL) != l_1555) == p_19) ^ l_1558) || l_1575) == l_1558), p_16));
    }
    if (((((safe_mul(make_int4(((safe_div(((~((make_int3(((l_1558 & 1L) <= ((safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((++p_16), (((((((make_char1(make_char1(((make_char4(p_2312->g_1590.x, p_2312->g_1590.x, p_2312->g_1590.x, p_2312->g_1590.x) ^ ((((((((((make_char4(l_1591.x, l_1591.x, l_1591.x, l_1591.x) & ((safe_unary_minus(make_char4((safe_add_func_int16_t_s_s((safe_mod_func_int16_t_s_s((0xA60751DEB88A140CLL && 0x2CB12A0F3E277AECLL), (l_1575 = p_19))), p_19)), 9L, (~0xB9L), 0x1BL)))))) ^ make_char4(p_2312->g_1596.z, p_2312->g_1596.z, p_2312->g_1596.z, p_2312->g_1596.z))) ^ ((make_char4(p_2312->g_1597.z, p_2312->g_1597.z, p_2312->g_1597.z, p_2312->g_1597.z) ^ make_char4(p_2312->g_1598.y, p_2312->g_1598.y, p_2312->g_1598.y, p_2312->g_1598.y))))) | make_char4(p_2312->g_1599.y, p_2312->g_1599.y, p_2312->g_1599.y, p_2312->g_1599.y))) | make_char4(2L, 0x4AL, (safe_sub_func_uint64_t_u_u((l_1602[4][2][3] != l_1602[4][2][3]), l_1591.x)), 0x04L))))).w).x) ^ make_char1(0x4FL))) & make_char1(0x12L))).x > l_1558) || 4294967295UL) && l_1591.x))), l_1591.x)) >= 0x13D401ADL)), 0L, 0x90259508L) & make_int3(1L, 1L, 1L))))), make_int3(0x1DE3E3AAL, 0x1DE3E3AAL, 0x1DE3E3AAL)))).z, 8L, 5L, l_1591.x), make_int4(0xD1C26955L, 0xD1C26955L, 0xD1C26955L, 0xD1C26955L)))) ^ make_int4(3L, 3L, 3L, 3L))).x)
    { /* block id: 613 */
        return l_1558;
    }
    else
    { /* block id: 615 */
        for (p_2312->g_162 = 28; (p_2312->g_162 == 14); p_2312->g_162 = safe_sub_func_int16_t_s_s(p_2312->g_162, 7))
        { /* block id: 618 */
            return p_19;
        }
    }
    if ((((l_1653.z |= ((safe_sub_func_uint8_t_u_u((++(**p_2312->g_617)), make_uchar1(250UL).x)) , (l_1574 = (safe_sub_func_uint64_t_u_u((((p_2312->g_1543 = ((*p_2312->g_618) = ((0x8930L < p_19) & ((((make_uint4(l_1611.x, l_1611.x, l_1611.x, l_1611.x).x <= 0xA787F433L) > ((safe_unary_minus_func_int8_t_s(l_1611.y)) < ((*l_1651) = ((((safe_lshift_func_int64_t_s_s((l_1555 > (l_1591.x > ((safe_mul_func_uint8_t_u_u(((l_1574 | (safe_mul_func_int32_t_s_s((l_1575 = (safe_div_func_uint64_t_u_u(((safe_rshift(((safe_mod(make_ulong4(p_2312->g_1627.x, p_2312->g_1627.x, p_2312->g_1627.x, p_2312->g_1627.x), ((make_ulong4(l_1628.y, l_1628.y, l_1628.y, l_1628.y) & ((safe_mod(make_ulong4(0x4113821DE8EA6762LL, (!(safe_lshift_func_int16_t_s_s(0x43C7L, 1))), ((safe_mul(make_ulong2(((safe_div(make_ulong4(p_2312->g_1637.y, p_2312->g_1637.y, p_2312->g_1637.y, p_2312->g_1637.y), make_ulong4(p_2312->g_1638.x, p_2312->g_1638.x, p_2312->g_1638.x, p_2312->g_1638.x)))).y, ((safe_lshift_func_int64_t_s_s((safe_mod_func_uint16_t_u_u((((make_ushort1((make_ushort3(p_2312->g_1643.y, p_2312->g_1643.y, p_2312->g_1643.y).x , make_ushort1(l_1644.x).x)).x == ((safe_mod(make_ushort1(l_1647.x), make_ushort1(((safe_add_func_int8_t_s_s((((5L < p_19) && 65531UL) == (-1L)), (*p_2312->g_618))) && 0xD135L))))).x) , l_1591.x) >= l_1644.x), l_1644.x)), 40)) || (-1L))), make_ulong2(0x41304DFDF3323CAELL, 0x41304DFDF3323CAELL)))).x, l_1611.w), make_ulong4(0xF342E269B721F419LL, 0xF342E269B721F419LL, 0xF342E269B721F419LL, 0xF342E269B721F419LL))))))))), make_ulong4(1UL, 1UL, 1UL, 1UL)))).x, (-10L)))), (-4L)))) && l_1574), l_1647.x)) > p_16))), 16)) > (-8L)) , (**p_2312->g_617)) >= p_16)))) && 1L) & 65535UL)))) , l_1652) && (-1L)), p_19))))) , l_1654) == nullptr))
    { /* block id: 629 */
        uchar4 l_1672 = make_uchar4(0xE5L, 0x8FL, 0xE5L, 0x8FL);
        uint64_t **l_1690 = &p_2312->g_644[0][0];
        __shared__ uint64_t **l_1692;
        l_1692 = nullptr;
        uint32_t **l_1748 = nullptr;
        uint16_t **l_1750 = &p_2312->g_352[4];
        int1 l_1755 = make_int1(0x44A67202L);
        __shared__ long1 l_1760;
        l_1760 = make_long1(0x28204B63A9F2A1DALL);
        int8_t **l_1775[5][1] = {{&p_2312->g_1196[0][3]}, {&p_2312->g_1196[0][3]}, {&p_2312->g_1196[0][3]}, {&p_2312->g_1196[0][3]}, {&p_2312->g_1196[0][3]}};
        __shared__ int16_t l_1785;
        l_1785 = 0xE5E8L;
        uint16_t l_1788 = 0UL;
        char4 l_1801 = make_char4(0L, 0x59L, 0L, 0x59L);
        char1 l_1808 = make_char1((-1L));
        int64_t l_1834 = 0x4C728B2D0DF88ECDLL;
        uint32_t l_1835[3][7] = {{0x2C1338E8L, 0xE0E30D7DL, 9UL, 0x7211E143L, 0x7211E143L, 9UL, 0xE0E30D7DL}, {0x2C1338E8L, 0xE0E30D7DL, 9UL, 0x7211E143L, 0x7211E143L, 9UL, 0xE0E30D7DL}, {0x2C1338E8L, 0xE0E30D7DL, 9UL, 0x7211E143L, 0x7211E143L, 9UL, 0xE0E30D7DL}};
        uint8_t l_1863 = 0xC4L;
        uint1 l_1881 = make_uint1(0x85AE3403L);
        // attempting a hip shared for loop
        __shared__ int32_t l_1882[8];
        for (int i = 0; i < 8; i++)
            l_1882[i] = (-10L);
        // attempting a hip shared for loop
        __shared__ uint8_t l_1907[10];
        for (int i = 0; i < 10; i++)
            l_1907[i] = 0x97L;
        long3 l_1921 = make_long3((-7L), 0x6A680CA0C949183CLL, (-7L));
        long2 l_1925 = make_long2((-6L), 0xB6CD38516734CF67LL);
        int64_t l_1946 = 0xFC9A26349847874FLL;
        uint8_t ***l_1969 = &p_2312->g_617;
        int16_t **l_2011[7] = {&p_2312->g_1295[5][1][1], &p_2312->g_1295[5][1][1], &l_1651, &p_2312->g_1295[5][1][1], &p_2312->g_1295[5][1][1], &l_1651, &p_2312->g_1295[5][1][1]};
        int16_t ***l_2010 = &l_2011[0];
        int i, j;
        if (l_1652)
            goto lbl_1655;
        for (p_19 = 20; (p_19 == 11); p_19 = safe_sub_func_uint8_t_u_u(p_19, 1))
        { /* block id: 633 */
            int32_t *l_1660 = nullptr;
            int32_t *l_1661 = nullptr;
            int32_t *l_1662[5][7] = {{&p_2312->g_75, nullptr, &l_1575, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75}, {&p_2312->g_75, nullptr, &l_1575, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75}, {&p_2312->g_75, nullptr, &l_1575, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75}, {&p_2312->g_75, nullptr, &l_1575, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75}, {&p_2312->g_75, nullptr, &l_1575, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75}};
            uint32_t l_1719 = 0xA414654FL;
            uint64_t l_1720 = 3UL;
            int1 l_1723 = make_int1(0x403BD8CCL);
            uint64_t l_1773 = 0x254A3983DE2AADA1LL;
            long4 l_1786 = make_long4(0x7DB35ED5B204DD1DLL, (-2L), 0x7DB35ED5B204DD1DLL, (-2L));
            uint16_t ***l_1791 = &l_1750;
            uint32_t l_1793 = 1UL;
            char1 l_1812 = make_char1((-2L));
            int32_t l_1817 = 0x865C7B4EL;
            char4 l_1821 = make_char4(0L, 0x0BL, 0L, 0x0BL);
            uint32_t l_1826[5] = {0x992A4FA6L, 18446744073709551610UL, 0x992A4FA6L, 18446744073709551610UL, 0x992A4FA6L};
            int32_t l_1843 = 0x87C5C6A8L;
            uint8_t **l_1844[3];
            __shared__ int8_t l_1862;
            l_1862 = 0L;
            uint64_t ****l_1937 = &p_2312->g_1935;
            __shared__ long3 l_1982;
            l_1982 = make_long3(2L, (-9L), 2L);
            uint32_t l_1993 = 0x83477974L;
            int32_t l_2016 = 0L;
            int i, j;
            for (int i = 0; i < 3; i++)
                l_1844[i] = &p_2312->g_618;
        }
        (*p_2312->g_2009) = (*p_2312->g_2009);
    }
    else
    { /* block id: 761 */
        int32_t *l_2021[4][9][4] = {{{nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}}, {{nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}}, {{nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}}, {{nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}, {nullptr, nullptr, nullptr, &p_2312->g_75}}};
        uint8_t l_2022 = 0xBDL;
        int i, j, k;
        l_2022++;
    }
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_2312->g_1543 p_2312->g_1017 p_2312->g_74 p_2312->g_617 p_2312->g_618 p_2312->g_213
 * writes: p_2312->g_1543 p_2312->g_74
 */
__device__ uint8_t  func_20(int8_t  p_21, int32_t * p_22, int32_t * p_23, int32_t * p_24, struct S0 * p_2312)
{ /* block id: 595 */
    int32_t l_1541[1][5][1];
    int32_t *l_1542[4] = {&p_2312->g_75, nullptr, &p_2312->g_75, nullptr};
    uint32_t l_1546 = 4294967295UL;
    int4 l_1547 = make_int4((-1L), (-1L), (-1L), (-1L));
    int8_t l_1548 = 0xFCL;
    int i, j, k;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            for (int k = 0; k < 1; k++)
                l_1541[i][j][k] = (-5L);
        }
    }
    --p_2312->g_1543;
    (*p_2312->g_1017) = (*p_2312->g_1017);
    l_1546 = ((**p_2312->g_617) == p_21);
    l_1548 = make_int1(l_1547.w).x;
    return (*p_2312->g_618);
}


/* ------------------------------------------ */
/* 
 * reads : p_2312->g_75 p_2312->g_1535 p_2312->g_1017 p_2312->g_74
 * writes: p_2312->g_75
 */
__device__ int32_t * func_25(int32_t * p_26, int64_t  p_27, struct S0 * p_2312)
{ /* block id: 330 */
    uint8_t l_935 = 0xA2L;
    int32_t **l_947 = nullptr;
    __shared__ ulong3 l_955;
    l_955 = make_ulong3(2UL, 18446744073709551606UL, 2UL);
    // attempting a hip shared for loop
    __shared__ int32_t *l_970[5][2][7];
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 7; k++)
                l_970[i][j][k] = nullptr;
        }
    }
    int64_t l_1029 = 0x642B798C31463097LL;
    int32_t l_1031 = 0x629BE057L;
    int16_t *l_1055 = nullptr;
    int32_t l_1070 = 4L;
    int32_t l_1071 = 1L;
    int32_t l_1073 = 0x1BF443F2L;
    short4 l_1090 = make_short4(0x5EFDL, 0xE229L, 0x5EFDL, 0xE229L);
    int32_t **l_1103 = &p_2312->g_74;
    int32_t l_1133 = 6L;
    int32_t l_1134 = 0xE2B12169L;
    int32_t l_1135 = 0L;
    int32_t l_1136 = 1L;
    int32_t l_1137[9];
    int64_t l_1139 = 0xCBE144B1DBAA10CCLL;
    int32_t *l_1187 = nullptr;
    int16_t l_1191 = 0xF24EL;
    long3 l_1204 = make_long3(0xFB31A0DC55E51286LL, (-1L), 0xFB31A0DC55E51286LL);
    char4 l_1342 = make_char4(7L, 0x3FL, 7L, 0x3FL);
    int8_t ***l_1343 = &p_2312->g_1341;
    uint8_t l_1353 = 1UL;
    ulong3 l_1360 = make_ulong3(0xAF78910938605D59LL, 0xEE4182D84AA1E757LL, 0xAF78910938605D59LL);
    __shared__ uint64_t l_1361;
    l_1361 = 0xEE37CD59B774A815LL;
    int64_t **l_1365 = &p_2312->g_390;
    int4 l_1366 = make_int4(0xFEFACD0EL, 8L, 0xFEFACD0EL, 8L);
    int64_t l_1396 = (-7L);
    int16_t l_1431[10][4][1] = {{{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}, {{0x2ACBL}, {0x2ACBL}, {0x2ACBL}, {0x2ACBL}}};
    ulong2 l_1456 = make_ulong2(0xCCE7986409450A91LL, 0x41E4D7E7A8134861LL);
    __shared__ int1 l_1459;
    l_1459 = make_int1(0xAE230A20L);
    int16_t **l_1463 = &p_2312->g_1295[3][0][0];
    int16_t ***l_1462[4] = {nullptr, &l_1463, nullptr, &l_1463};
    int32_t l_1513[5][8] = {{1L, 0xCF887FE0L, 0xFBA6453EL, 0xFBA6453EL, 0xCF887FE0L, 1L, 0xCF887FE0L, 0xFBA6453EL}, {1L, 0xCF887FE0L, 0xFBA6453EL, 0xFBA6453EL, 0xCF887FE0L, 1L, 0xCF887FE0L, 0xFBA6453EL}, {1L, 0xCF887FE0L, 0xFBA6453EL, 0xFBA6453EL, 0xCF887FE0L, 1L, 0xCF887FE0L, 0xFBA6453EL}, {1L, 0xCF887FE0L, 0xFBA6453EL, 0xFBA6453EL, 0xCF887FE0L, 1L, 0xCF887FE0L, 0xFBA6453EL}, {1L, 0xCF887FE0L, 0xFBA6453EL, 0xFBA6453EL, 0xCF887FE0L, 1L, 0xCF887FE0L, 0xFBA6453EL}};
    int16_t l_1514 = 0L;
    int32_t l_1515 = 7L;
    uint16_t **l_1521 = &p_2312->g_352[0];
    __shared__ short2 l_1528;
    l_1528 = make_short2(0L, 0L);
    __shared__ short2 l_1529;
    l_1529 = make_short2((-4L), 1L);
    short1 l_1530 = make_short1(0x446AL);
    // attempting a hip shared for loop
    __shared__ uint32_t ***l_1536[3];
    for (int i = 0; i < 3; i++)
        l_1536[i] = &p_2312->g_1043;
    int64_t *l_1537 = nullptr;
    __shared__ int64_t *l_1538;
    l_1538 = &l_1396;
    int16_t *l_1539 = nullptr;
    __shared__ int32_t *l_1540;
    l_1540 = &l_1137[1];
    int i, j, k;
    for (int i = 0; i < 9; i++)
        l_1137[i] = 0x6AD35F21L;
    for (int i = 0; i < 3; i++)
        l_1536[i] = &p_2312->g_1043;
    for (p_2312->g_75 = 0; (p_2312->g_75 >= 0); p_2312->g_75 -= 1)
    { /* block id: 333 */
        uint32_t l_911[7] = {0UL, 18446744073709551611UL, 0UL, 18446744073709551611UL, 0UL, 18446744073709551611UL, 0UL};
        int32_t l_912 = 0xA20E791DL;
        uint64_t *l_913 = &p_2312->g_169[0][0][0];
        long2 l_964 = make_long2(7L, (-1L));
        int4 l_974 = make_int4(0L, 0x8F0B90DBL, 0L, 0x8F0B90DBL);
        int32_t l_1028 = (-9L);
        long3 l_1046 = make_long3(0x08455B52628EC4B7LL, 2L, 0x08455B52628EC4B7LL);
        int32_t l_1067 = (-6L);
        int32_t l_1068 = 0x69281CFCL;
        __shared__ int32_t l_1069;
        l_1069 = (-5L);
        int4 l_1072 = make_int4(1L, 0xCE9A0876L, 1L, 0xCE9A0876L);
        uint16_t l_1074 = 0UL;
        __shared__ uchar1 l_1091;
        l_1091 = make_uchar1(0xA3L);
        uchar1 l_1174 = make_uchar1(0xB7L);
        uint64_t ***l_1197 = &p_2312->g_643;
        uint8_t ***l_1245 = &p_2312->g_617;
        __shared__ uint16_t l_1291;
        l_1291 = 65529UL;
        uint8_t l_1309 = 0x01L;
        ulong1 l_1320 = make_ulong1(18446744073709551608UL);
        ushort2 l_1339 = make_ushort2(0x52C6L, 65534UL);
        __shared__ long1 l_1355;
        l_1355 = make_long1((-10L));
        uint16_t ****l_1362 = &p_2312->g_398;
        __shared__ short3 l_1388;
        l_1388 = make_short3(1L, 0x674CL, 1L);
        int8_t l_1398 = 1L;
        int8_t **l_1404 = &p_2312->g_1196[0][3];
        uint32_t l_1455 = 0xCC6AC50CL;
        int16_t **l_1461[6] = {&l_1055, &l_1055, nullptr, &l_1055, &l_1055, nullptr};
        int16_t ***l_1460[2][2] = {{&l_1461[3], &l_1461[3]}, {&l_1461[3], &l_1461[3]}};
        long4 l_1467 = make_long4(0xC1A3A4847C040EDELL, 0x96A18710241DFDEDLL, 0xC1A3A4847C040EDELL, 0x96A18710241DFDEDLL);
        __shared__ int32_t *l_1493;
        l_1493 = &l_1137[1];
        __shared__ int16_t l_1508;
        l_1508 = 6L;
        int i, j;
    }
    (*l_1540) = (safe_div_func_int16_t_s_s((((nullptr == l_1521) == (safe_lshift_func_int16_t_s_s(0xF7BAL, 9))) | (safe_lshift_func_int16_t_s_u(((((safe_add(make_short4(l_1528.x, l_1528.x, l_1528.x, l_1528.x), make_short4(l_1529.x, l_1529.x, l_1529.x, l_1529.x)))) & make_short4(l_1530.x, l_1530.x, l_1530.x, l_1530.x))).w, (0x339F9836L & (((safe_rshift_func_int32_t_s_u((-1L), 6)) <= (safe_mod_func_int8_t_s_s((((*l_1538) = ((make_ushort4(p_2312->g_1535.z, p_2312->g_1535.z, p_2312->g_1535.z, p_2312->g_1535.z).z ^ p_27) & (l_1536[1] != nullptr))) < (nullptr != l_1539)), 1UL))) == 7UL))))), p_27));
    return (*p_2312->g_1017);
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_1 p_2312->g_600 p_2312->g_617 p_2312->g_618 p_2312->g_213 p_2312->g_38 p_2312->g_322 p_2312->g_803 hip_const_2 p_2312->g_211 p_2312->g_47 p_2312->g_389 p_2312->g_185 p_2312->g_81 p_2312->g_92 p_2312->g_877 p_2312->g_169 p_2312->g_66 p_2312->g_333 p_2312->g_704 p_2312->g_715 p_2312->g_457 p_2312->g_722 p_2312->g_194
 * writes: p_2312->g_75 p_2312->g_168 p_2312->g_322 p_2312->g_682 p_2312->g_211 p_2312->g_886 p_2312->g_81 p_2312->g_74 p_2312->g_850 p_2312->g_169 p_2312->g_457 p_2312->g_185 p_2312->g_73
 */
__device__ int32_t * func_28(uint16_t  p_29, int32_t * p_30, struct S0 * p_2312)
{ /* block id: 257 */
    long1 l_709 = make_long1(0x60B88D6FFA38848BLL);
    long2 l_712 = make_long2(1L, 0L);
    uint64_t *l_716 = &p_2312->g_169[0][0][0];
    __shared__ uint16_t *l_717;
    l_717 = &p_2312->g_457;
    uint2 l_718 = make_uint2(0xAEB4F7DFL, 0UL);
    short4 l_721 = make_short4(0x7B22L, 0x9C4FL, 0x7B22L, 0x9C4FL);
    int32_t *l_725 = nullptr;
    int8_t *l_726[9] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int32_t l_727 = 0x5B7C144CL;
    int32_t l_731 = 0xE200C02AL;
    int32_t l_732 = (-1L);
    int32_t l_733 = 0x84BA530CL;
    int2 l_734 = make_int2(0x264033F1L, 0x20C2706DL);
    __shared__ uint64_t l_735;
    l_735 = 18446744073709551606UL;
    __shared__ int32_t l_738;
    l_738 = 0x5CF9A463L;
    uint64_t l_765 = 0xB2F6BB760A46611CLL;
    uint32_t l_812 = 9UL;
    // attempting a hip shared for loop
    __shared__ uint8_t l_835[8];
    for (int i = 0; i < 8; i++)
        l_835[i] = 6UL;
    int3 l_872 = make_int3(7L, 0x1DE1419FL, 7L);
    uint16_t *l_887 = &hip_const_3;
    __shared__ int32_t **l_892;
    l_892 = &l_725;
    int32_t **l_893 = &p_2312->g_74;
    // attempting a hip shared for loop
    __shared__ int32_t ***l_891[7][6][3];
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 3; k++)
                l_891[i][j][k] = &l_892;
        }
    }
    int32_t **l_909 = nullptr;
    int i, j, k;
    if ((safe_div_func_int8_t_s_s(((((make_long4(p_2312->g_704.x, p_2312->g_704.x, p_2312->g_704.x, p_2312->g_704.x).x | ((safe_mul(((((safe_lshift(make_long3(l_709.x, l_709.x, l_709.x), ((safe_div(make_long3(l_712.x, l_712.x, l_712.x), make_long3(0x4D830D44B2BBC797LL, ((((((p_29 = ((((safe_rshift(make_ushort4(p_2312->g_715.x, p_2312->g_715.x, p_2312->g_715.x, p_2312->g_715.x), make_ushort4(16, 16, 16, 16)))).z || ((p_2312->g_73.x = make_char3((-8L), ((((((l_712.y | 0x65EBL) && ((*l_716) = p_29)) >= ((*l_717) &= l_709.x)) || l_712.y) , ((make_uint4(l_718.x, l_718.x, l_718.x, l_718.x) & make_uint4(0x4F78195CL, 0x61B933C4L, (safe_sub_func_int32_t_s_s(0xD24D4AD5L, (((make_short4(0x1B2CL, make_short2(l_721.y, l_721.y).y, 0L, 0xF5FDL).y > p_29) | make_long1(p_2312->g_722.x).x) , (p_2312->g_185.y = (safe_mod_func_uint16_t_u_u(p_29, 1UL)))))), p_29))).y) , l_712.x), 5L).y) && 0UL)) != p_29)) && l_709.x) , 0x7AL) ^ p_2312->g_194) ^ l_709.x) == (*p_2312->g_618)), 0x25460EF153774870LL))))))) & make_long3(0x1BC091502C137537LL, 0x1BC091502C137537LL, 0x1BC091502C137537LL))), make_long3(0xE179408B1BF8A3C5LL, 0xE179408B1BF8A3C5LL, 0xE179408B1BF8A3C5LL)))).z) || l_727) || p_29) , 0xEBL), hip_const_1)))
    { /* block id: 263 */
lbl_838:
        l_727 = p_2312->g_600.x;
    }
    else
    { /* block id: 265 */
        int32_t *l_728 = &l_727;
        int32_t *l_729 = &p_2312->g_168;
        int32_t *l_730[8][9] = {{nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}, {nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}, {nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}, {nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}, {nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}, {nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}, {nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}, {nullptr, &p_2312->g_168, &p_2312->g_168, nullptr, &l_727, nullptr, nullptr, &l_727, nullptr}};
        __shared__ int16_t l_739;
        l_739 = 0xA93CL;
        __shared__ uint32_t l_740;
        l_740 = 0xAA364956L;
        int i, j;
        l_735--;
        ++l_740;
    }
    for (l_735 = 0; (l_735 <= 4); l_735 += 1)
    { /* block id: 271 */
        int16_t l_760 = 1L;
        __shared__ int32_t l_761;
        l_761 = 6L;
        // attempting a hip shared for loop
        __shared__ int32_t l_763[4][1];
        for (int i = 0; i < 4; i++)
        {
            for (int j = 0; j < 1; j++)
                l_763[i][j] = 5L;
        }
        uchar1 l_796 = make_uchar1(252UL);
        uint32_t *l_799 = nullptr;
        __shared__ uint32_t **l_798;
        l_798 = &l_799;
        int8_t l_804 = (-1L);
        int32_t *l_805 = &l_731;
        int32_t *l_806 = &l_732;
        int32_t *l_807 = &p_2312->g_211;
        __shared__ int32_t *l_808;
        l_808 = &l_733;
        int32_t *l_809 = &l_731;
        int32_t *l_810 = &l_763[0][0];
        int32_t *l_811[1][3];
        ulong4 l_830 = make_ulong4(0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL);
        int32_t *l_840 = &hip_const_4;
        __shared__ int32_t **l_839;
        l_839 = &l_840;
        __shared__ int32_t **l_841;
        l_841 = nullptr;
        int32_t *l_843 = &hip_const_6;
        int32_t **l_842 = &l_843;
        int2 l_867 = make_int2((-1L), 0xD969EAEDL);
        int3 l_875 = make_int3(1L, 0x29F8E10FL, 1L);
        int8_t l_883 = 2L;
        int32_t *l_885 = &hip_const_6;
        int32_t **l_884[7] = {&l_885, &l_885, &l_885, &l_885, &l_885, &l_885, &l_885};
        int i, j;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 3; j++)
                l_811[i][j] = &p_2312->g_168;
        }
        for (p_2312->g_75 = 1; (p_2312->g_75 >= 0); p_2312->g_75 -= 1)
        { /* block id: 274 */
            int8_t l_752 = 0x56L;
            int32_t l_762 = 1L;
            int32_t l_764[8] = {1L, 0xBF4F1A97L, 1L, 0xBF4F1A97L, 1L, 0xBF4F1A97L, 1L, 0xBF4F1A97L};
            char1 l_776 = make_char1((-2L));
            uint64_t ***l_794 = &p_2312->g_643;
            __shared__ int32_t l_797;
            l_797 = 0xF7A4C00BL;
            uint32_t ***l_800 = nullptr;
            uint32_t **l_802 = &l_799;
            uint32_t ***l_801 = &l_802;
            int i;
            for (p_2312->g_168 = 1; (p_2312->g_168 >= 0); p_2312->g_168 -= 1)
            { /* block id: 277 */
                __shared__ char2 l_745;
                l_745 = make_char2(6L, 0x0DL);
                uint8_t **l_746 = &p_2312->g_618;
                uint3 l_747 = make_uint3(0xC3DE8404L, 7UL, 0xC3DE8404L);
                int32_t *l_748 = nullptr;
                int32_t *l_749 = &l_732;
                int32_t *l_750 = nullptr;
                int32_t *l_751 = &l_732;
                __shared__ int32_t *l_753;
                l_753 = &l_732;
                int32_t *l_754 = nullptr;
                __shared__ int32_t *l_755;
                l_755 = nullptr;
                int32_t *l_756 = &l_731;
                __shared__ int32_t l_757;
                l_757 = 0L;
                int32_t *l_758 = &l_731;
                int32_t *l_759[3][7] = {{&l_727, nullptr, nullptr, nullptr, nullptr, &l_727, nullptr}, {&l_727, nullptr, nullptr, nullptr, nullptr, &l_727, nullptr}, {&l_727, nullptr, nullptr, nullptr, nullptr, &l_727, nullptr}};
                int i, j;
                p_2312->g_322.x |= (((((((safe_lshift(((make_char3(l_745.y, l_745.y, l_745.y) ^ make_char3(0L, 0x86L, (-1L)))), make_char3(8, 8, 8)))).z > ((**p_2312->g_617) < (**p_2312->g_617))) != (make_int2(1L, (-6L)).x , 0xA2FD8B2BFA021516LL)) == (nullptr != l_746)) == p_2312->g_38) || make_uint3(l_747.z, l_747.z, l_747.z).z);
                --l_765;
                for (l_738 = 0; (l_738 <= 4); l_738 += 1)
                { /* block id: 282 */
                    int2 l_779 = make_int2(0x2C587108L, 0x6DFDA0F5L);
                    int i;
                    for (p_2312->g_682 = 0; (p_2312->g_682 <= 4); p_2312->g_682 += 1)
                    { /* block id: 285 */
                        int32_t l_769 = 0x6A5A2B24L;
                        __shared__ int64_t *l_792;
                        l_792 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int64_t *l_793[1][4];
                        for (int i = 0; i < 1; i++)
                        {
                            for (int j = 0; j < 4; j++)
                                l_793[i][j] = nullptr;
                        }
                        int4 l_795 = make_int4(3L, 0xB75324DBL, 3L, 0xB75324DBL);
                        int i, j;
                        l_797 = ((safe_unary_minus_func_int32_t_s((l_769 && (((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((((l_763[3][0] = make_char2(l_776.x, l_776.x).y) | (**p_2312->g_617)) > (safe_rshift_func_int32_t_s_u(((make_int1(((-1L) < (*l_751))) ^ make_int1(l_779.y))).x, 13))), (safe_mul_func_uint32_t_u_u((l_762 = ((safe_unary_minus_func_int64_t_s(((**p_2312->g_617) | p_29))) | ((((((l_769 , (((make_long1((p_2312->g_704.x &= (safe_mod_func_uint8_t_u_u((l_764[2] = ((safe_div_func_uint8_t_u_u(make_uchar1((safe_lshift_func_int8_t_s_s(p_2312->g_300.x, 7))).x, (safe_sub_func_int8_t_s_s((l_769 |= (safe_unary_minus_func_int32_t_s(p_2312->g_66.x))), l_760)))) != 6UL)), p_29)))).x | l_752) != 0x44C2CB07L) || 2UL)) ^ p_29) , p_29) , &p_2312->g_643) == l_794) < l_760))), l_776.x)))) != l_795.w), (-9L))), l_796.x)) , &p_2312->g_47) == &l_760)))) < l_752);
                    }
                }
            }
            if (l_763[3][0])
                continue;
            (*l_801) = l_798;
            if (p_2312->g_803)
                continue;
        }
        ++l_812;
        for (l_727 = 4; (l_727 >= 1); l_727 -= 1)
        { /* block id: 302 */
            __shared__ int32_t **l_815;
            l_815 = &l_806;
            int32_t l_833 = 0xD1E57FAAL;
            int32_t l_834 = 9L;
            int32_t l_836 = (-3L);
            uint32_t l_837[4][9] = {{0x9CBE1FB8L, 6UL, 0x6F5DA296L, 4294967295UL, 1UL, 4294967295UL, 0x6F5DA296L, 6UL, 0x9CBE1FB8L}, {0x9CBE1FB8L, 6UL, 0x6F5DA296L, 4294967295UL, 1UL, 4294967295UL, 0x6F5DA296L, 6UL, 0x9CBE1FB8L}, {0x9CBE1FB8L, 6UL, 0x6F5DA296L, 4294967295UL, 1UL, 4294967295UL, 0x6F5DA296L, 6UL, 0x9CBE1FB8L}, {0x9CBE1FB8L, 6UL, 0x6F5DA296L, 4294967295UL, 1UL, 4294967295UL, 0x6F5DA296L, 6UL, 0x9CBE1FB8L}};
            int i, j;
            (*l_815) = &p_2312->g_211;
            if (hip_const_2[2][2])
                break;
            (*l_806) = (safe_mul_func_uint16_t_u_u((safe_lshift_func_int32_t_s_u((((safe_add_func_uint32_t_u_u(((((((*l_809) = (((**l_815) || (safe_mul_func_uint64_t_u_u(0x349D04555FD7F3CCLL, (**l_815)))) <= ((*l_810) = (l_834 = (((((make_uchar3(l_721.z, ((safe_mod_func_uint64_t_u_u(((((((0x7AD30ED8L > ((safe_div_func_uint64_t_u_u(make_ulong3(l_830.y, l_830.y, l_830.y).z, (safe_lshift_func_int8_t_s_u((+0x49L), (**p_2312->g_617))))) > ((*l_808) ^= 9L))) == (l_833 = ((p_29 < 65533UL) >= 0x7919L))) , 0L) , 0x85094BF931B8FC18LL) , p_2312->g_162) , 0x14BCB8F5E9DA7AACLL), 0xE62207973FD4C2DALL)) ^ (**l_815)), 252UL).y | p_29) < (**l_815)) , p_29) == p_29) != 255UL))))) < (*l_806)) > l_835[0]) && p_29) , (**l_815)), p_2312->g_47)) == p_29) & l_836), l_837[2][5])), p_29));
            if (l_733)
                goto lbl_838;
        }
        (*l_810) = (p_2312->g_47 == (65532UL & (((*l_842) = ((*l_839) = &l_738)) == (p_2312->g_886 = ((((*l_805) = (((safe_div_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(((make_uint3(4294967295UL, (p_2312->g_555.y |= (p_2312->g_213 ^ (*l_807))), (make_int4(p_2312->g_850.x, p_2312->g_850.x, p_2312->g_850.x, p_2312->g_850.x).x != ((make_int2(((((((safe_add_func_uint8_t_u_u(1UL, ((safe_lshift_func_uint32_t_u_s(p_2312->g_185.x, 13)) , (0L || (((safe_sub_func_int16_t_s_s(((safe_lshift_func_int32_t_s_s((safe_sub_func_int32_t_s_s(((((safe_rshift(((safe_mod(make_int1(l_867.y), make_int1(0x67A423C6L)))), ((((safe_sub(((((safe_div(make_int1(l_872.z), ((safe_sub(make_int1(l_875.z), make_int1(p_2312->g_876.z))))))) ^ make_int1(p_2312->g_877.x))), make_int1((safe_lshift_func_uint32_t_u_u((!((safe_rshift_func_uint8_t_u_s(((*p_2312->g_618) &= (make_short4(p_2312->g_882.x, p_2312->g_882.x, p_2312->g_882.x, p_2312->g_882.x).x <= ((*l_806) , 0xD1B9L))), p_2312->g_333.w)) , p_2312->g_658.x)), 12)))))) ^ make_int1(1L)))))) ^ make_int1(0L))).x, p_2312->g_389[5][6][0])), p_29)) , p_29), (*l_805))) , p_29) > (*l_810)))))) & l_883) < p_29) ^ 0x08L) , 0x4FB93975BB2E50E9LL) && p_29), 0xD5E82385L) ^ make_int2((-3L), (-3L)))).y)) ^ make_uint3(0xCAB3DD52L, 0xCAB3DD52L, 0xCAB3DD52L))).z, p_2312->g_389[4][0][1])), 251UL)), p_29)) != p_29) < p_29)) | p_2312->g_185.y) , &l_738)))));
        for (p_2312->g_81 = 0; (p_2312->g_81 <= 4); p_2312->g_81 += 1)
        { /* block id: 322 */
            __shared__ uint3 l_890;
            l_890 = make_uint3(0xB9D156B1L, 0x82E5AFD5L, 0xB9D156B1L);
            __shared__ int32_t ****l_894;
            l_894 = nullptr;
            int32_t ****l_895 = nullptr;
            int32_t ***l_897 = &l_893;
            int32_t ****l_896 = &l_897;
            int8_t *l_904 = nullptr;
            int i;
            (*l_808) |= ((!p_2312->g_92) , p_2312->g_877.y);
            p_2312->g_74 = &p_2312->g_211;
        }
    }
    p_2312->g_850.x = ((p_2312->g_169[4][1][0] >= p_2312->g_66.x) > p_2312->g_333.z);
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_2312->g_66 hip_const_4 p_2312->g_71 p_2312->g_72 p_2312->g_73 p_2312->g_74 p_2312->g_47 p_2312->g_92 p_2312->g_75 hip_const_3 hip_const_5 hip_const_2 p_2312->g_90 hip_const_1 p_2312->g_81 p_2312->g_162 p_2312->g_169 p_2312->g_185 p_2312->g_194 p_2312->g_213 hip_const_6 p_2312->g_168 p_2312->g_457 p_2312->g_211 p_2312->g_333 p_2312->g_555 p_2312->g_322 p_2312->g_300 p_2312->g_600 p_2312->g_442 p_2312->g_617 p_2312->g_643 p_2312->g_304 p_2312->g_342
 * writes: p_2312->g_81 p_2312->g_90 p_2312->g_92 p_2312->g_74 p_2312->g_72 p_2312->g_75 p_2312->g_162 p_2312->g_169 p_2312->g_194 p_2312->g_213 p_2312->g_168 p_2312->g_457 p_2312->g_211 p_2312->g_300 p_2312->g_66 p_2312->g_322 p_2312->g_617 p_2312->g_643
 */
__device__ int32_t * func_39(uint32_t  p_40, struct S0 * p_2312)
{ /* block id: 4 */
    uint16_t *l_54[10][2] = {{&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}, {&hip_const_1, &hip_const_1}};
    int2 l_61 = make_int2(0L, 0x56014EFCL);
    int16_t *l_175 = &p_2312->g_47;
    int32_t *l_176[2][4];
    __shared__ int32_t **l_460;
    l_460 = nullptr;
    int32_t **l_461 = &l_176[1][2];
    int32_t **l_462 = &p_2312->g_74;
    long2 l_465 = make_long2(0xC14DF2417E2C7542LL, 0xCF6CDC54B03DB69ELL);
    ulong2 l_472 = make_ulong2(18446744073709551615UL, 0x5231609210B71877LL);
    uint64_t *l_585 = &p_2312->g_169[0][0][0];
    __shared__ int3 l_595;
    l_595 = make_int3(0xF3368ADBL, 0x2B226853L, 0xF3368ADBL);
    uint8_t *l_633 = nullptr;
    uint8_t **l_653 = &p_2312->g_618;
    int8_t *l_660[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int8_t **l_659[4][8][8] = {{{&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}}, {{&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}}, {{&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}}, {{&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}, {&l_660[4], &l_660[4], &l_660[4], &l_660[4], &l_660[7], &l_660[4], &l_660[4], &l_660[4]}}};
    int8_t ***l_700 = &l_659[2][5][7];
    int i, j, k;
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 4; j++)
            l_176[i][j] = &p_2312->g_168;
    }
    (*l_462) = ((*l_461) = func_49(l_54[1][0], (safe_lshift_func_int16_t_s_u((safe_add_func_uint8_t_u_u(((safe_mul_func_int32_t_s_s(make_int4(l_61.y, l_61.y, l_61.y, l_61.y).y, ((func_62(((((safe_rshift(make_char2(p_2312->g_66.x, p_2312->g_66.x), make_char2(8, 8)))).x != (safe_sub_func_uint8_t_u_u(hip_const_4, (safe_rshift_func_int8_t_s_u(((make_char1(p_2312->g_71.x) & ((make_char1(p_2312->g_72.x) ^ make_char1(p_2312->g_73.x))))).x, l_61.y))))) , p_2312->g_74), p_2312) < (18446744073709551615UL != 0x2AD579426CD91451LL)) >= (p_40 ^ (safe_sub_func_int8_t_s_s(((((safe_unary_minus_func_uint64_t_u((p_2312->g_73.x < hip_const_5))) > hip_const_3) | 0UL) | 1L), l_61.y)))))) < p_2312->g_71.y), hip_const_3)), 13)), l_175, l_176[0][2], p_2312));
    if ((**l_461))
    { /* block id: 151 */
        uint64_t l_475 = 0xB3400376F3510A28LL;
        int32_t l_480 = (-1L);
        uint16_t l_481[6] = {0x7974L, 0x7974L, 1UL, 0x7974L, 0x7974L, 1UL};
        uint16_t *l_494 = &p_2312->g_457;
        __shared__ uint8_t *l_495;
        l_495 = &p_2312->g_213;
        uint64_t *l_496 = &p_2312->g_169[0][0][0];
        int32_t **l_497 = &l_176[0][2];
        int i;
        p_2312->g_211 = ((((safe_lshift_func_uint32_t_u_u(((((make_long4(l_465.y, l_465.y, l_465.y, l_465.y) | make_long4((-2L), (((safe_div_func_uint8_t_u_u((safe_add_func_int8_t_s_s(((&p_2312->g_74 != ((((((safe_mul(make_ulong3(1UL, 0x0DB767BAFDC18966LL, 0UL), make_ulong3(l_472.x, l_472.x, l_472.x)))).z , 255UL) | (l_475 != ((safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((((**l_461) = (((*l_496) |= ((((((--l_481[2]) < ((safe_div_func_int32_t_s_s((p_40 >= (safe_mod_func_uint8_t_u_u(255UL, (((*l_494) = ((!(make_char1((-3L)).x , 2L)) || (safe_mod_func_int8_t_s_s((+((safe_mod_func_int64_t_s_s((l_475 < (((((*l_495) = (safe_mod_func_uint8_t_u_u((l_54[1][0] != l_494), p_40))) && 0UL) & 0x2FFCL) & l_480)), l_475)) , (-5L))), (**l_461))))) , (-1L))))), p_40)) , (**l_462))) | p_40) | (-1L)) || l_481[2]) , p_40)) <= 0x3C0FBA9DEC9036A0LL)) , p_40), 0x21L)), 6L)) >= p_40))) | p_2312->g_92) , l_497)) == p_40), p_40)), (-1L))) ^ 0x7AL) != p_2312->g_185.x), 0x30E582BB0F48CC1ELL, 0x3F31A1003AA5FD0ALL))).w , &l_481[2]) == nullptr), p_40)) , p_40) , p_40) , 0xEE7F7BDFL);
    }
    else
    { /* block id: 158 */
        __shared__ int32_t l_528;
        l_528 = 1L;
        int8_t l_591 = 0xFEL;
        // attempting a hip shared for loop
        __shared__ uint16_t l_610[5][1][9];
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 1; j++)
            {
                for (int k = 0; k < 9; k++)
                    l_610[i][j][k] = 0UL;
            }
        }
        __shared__ int32_t **l_641;
        l_641 = &l_176[1][0];
        uint64_t **l_642 = &l_585;
        uint32_t *l_661 = &hip_const_5;
        int32_t *l_686 = &p_2312->g_75;
        int i, j, k;
        for (p_2312->g_457 = 0; (p_2312->g_457 <= 0); p_2312->g_457 += 1)
        { /* block id: 161 */
            __shared__ int32_t *l_498;
            l_498 = nullptr;
            int32_t l_525 = (-1L);
            uint64_t *l_586 = &hip_const_2[0][1];
            (*l_462) = l_498;
            for (p_2312->g_211 = 0; (p_2312->g_211 <= 1); p_2312->g_211 += 1)
            { /* block id: 165 */
                __shared__ int32_t l_507;
                l_507 = 0x33C9541FL;
                uint8_t *l_522 = &p_2312->g_213;
                int64_t *l_526 = nullptr;
                int64_t *l_527 = nullptr;
                int8_t *l_529 = nullptr;
                __shared__ int8_t *l_530;
                l_530 = nullptr;
                int8_t *l_531 = nullptr;
                __shared__ int8_t *l_532;
                l_532 = nullptr;
                int8_t *l_533[10];
                uint16_t *l_540 = &p_2312->g_457;
                short1 l_571 = make_short1(0xDDB6L);
                ushort2 l_592 = make_ushort2(0UL, 0x867DL);
                int i, j;
                for (int i = 0; i < 10; i++)
                    l_533[i] = nullptr;
                if ((safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_mod_func_int32_t_s_s(((safe_mul_func_uint32_t_u_u(((make_uint2(0xC5F02047L, 0xADB7A7C4L) ^ make_uint2(4294967295UL, 0UL))).x, l_507)) <= make_ushort3(0UL, p_40, (safe_mod_func_uint16_t_u_u((p_40 >= ((safe_add_func_uint64_t_u_u(((p_2312->g_47 < (nullptr == &p_2312->g_398)) || p_40), make_ulong1(1UL).x)) < (safe_div_func_uint8_t_u_u(((p_2312->g_66.x = ((safe_add_func_uint16_t_u_u(make_ushort2(make_ushort3(65535UL, (safe_lshift_func_uint8_t_u_s(((safe_mul_func_int64_t_s_s((p_2312->g_300.x = (safe_div_func_uint8_t_u_u(((*l_522)--), l_525))), (-3L))) > p_2312->g_194), 0)), 65535UL).y, p_40).y, p_40)) != l_528)) <= hip_const_6), l_528)))), p_40))).x), p_40)) , 0x9DL), p_2312->g_185.y)), p_40)))
                { /* block id: 169 */
                    __shared__ int16_t l_547;
                    l_547 = 0x5B8BL;
                    uint8_t l_588 = 249UL;
                    (**l_461) ^= (!(((safe_div(((safe_unary_minus(make_short2(0xFCBAL, 0x367AL)))), ((safe_mul(((~((make_short2((safe_add_func_int8_t_s_s((&hip_const_3 == l_540), (safe_mod_func_int8_t_s_s(p_2312->g_169[1][0][0], p_40)))), (((safe_mul_func_uint64_t_u_u(p_40, (make_long4(0x235A639A11204BB2LL, 0xCD146A0C7446ED02LL, 0xDC593E33728CE204LL, 0x898E814A99FFF442LL).w != 0L))) , ((safe_mul_func_uint64_t_u_u(p_2312->g_333.z, p_40)) || 0xF0L)) ^ 0xB10429B1L)) ^ make_short2(1L, 1L))))), make_short2(0x2377L, 0x2377L))))))).x , l_547));
                    (**l_461) = ((safe_div_func_int8_t_s_s(0xD2L, ((safe_unary_minus_func_int16_t_s(0x9A13L)) & ((safe_add_func_uint32_t_u_u(p_40, (((-1L) == l_547) || (safe_rshift_func_uint8_t_u_s(p_40, p_2312->g_73.x))))) , p_40)))) > make_uint1(p_2312->g_555.z).x);
                    for (p_2312->g_168 = 3; (p_2312->g_168 >= 0); p_2312->g_168 -= 1)
                    { /* block id: 174 */
                        int32_t *l_570[9] = {nullptr, &p_2312->g_168, nullptr, &p_2312->g_168, nullptr, &p_2312->g_168, nullptr, &p_2312->g_168, nullptr};
                        __shared__ uint32_t *l_572;
                        l_572 = &hip_const_5;
                        __shared__ uint32_t *l_573;
                        l_573 = &hip_const_5;
                        uint32_t *l_574 = &hip_const_5;
                        uint32_t *l_575 = &hip_const_5;
                        uint32_t *l_576 = &hip_const_5;
                        uint32_t *l_577 = &hip_const_5;
                        __shared__ uint32_t *l_578;
                        l_578 = nullptr;
                        uint32_t *l_579 = &hip_const_5;
                        uint32_t *l_580 = nullptr;
                        uint32_t *l_581 = nullptr;
                        uint32_t *l_582[5];
                        __shared__ uint64_t **l_587;
                        l_587 = &l_586;
                        int16_t *l_589 = &p_2312->g_47;
                        int32_t *l_590[1];
                        int i, j, k;
                        for (int i = 0; i < 5; i++)
                            l_582[i] = nullptr;
                        for (int i = 0; i < 1; i++)
                            l_590[i] = &hip_const_4;
                        p_2312->g_322.y &= (safe_mod_func_int64_t_s_s(make_long3((safe_div_func_int32_t_s_s((((p_2312->g_169[p_2312->g_457][(p_2312->g_457 + 1)][p_2312->g_457] <= (p_2312->g_169[2][1][0] | ((*l_589) ^= (safe_sub_func_uint64_t_u_u((safe_add_func_uint32_t_u_u((((*l_522)--) , (((l_507 = ((safe_rshift_func_uint64_t_u_s((safe_rshift_func_uint8_t_u_u(((l_176[p_2312->g_457][p_2312->g_211] = func_82(l_570[7], (((p_2312->g_342.z || p_40) < ((+(make_short3(l_571.x, l_571.x, l_571.x).x ^ ((p_2312->g_71.y <= (0x891CE7B1L || (((p_2312->g_555.z--) , ((l_585 != ((*l_587) = l_586)) <= l_588)) | l_547))) == p_2312->g_389[2][4][2]))) ^ p_2312->g_185.x)) && p_40), l_589, &p_2312->g_211, p_40, p_2312)) == nullptr), p_40)), 20)) > p_2312->g_428.y)) , 0xFDL) , l_591)), p_2312->g_168)), p_40))))) <= p_40) ^ p_2312->g_185.y), l_571.x)), (-5L), l_592.x).y, p_40));
                    }
                }
                else
                { /* block id: 184 */
                    uint64_t l_601 = 18446744073709551608UL;
                    int32_t l_611 = 9L;
                    for (p_2312->g_90 = 0; (p_2312->g_90 <= 4); p_2312->g_90 += 1)
                    { /* block id: 187 */
                        uint32_t *l_602 = nullptr;
                        __shared__ uint32_t *l_603;
                        l_603 = nullptr;
                        uint32_t *l_604 = &hip_const_5;
                        uint32_t *l_605 = nullptr;
                        uint32_t *l_606 = &hip_const_5;
                        uint32_t *l_607 = nullptr;
                        uint32_t *l_608 = &hip_const_5;
                        uint32_t *l_609[10][7] = {{nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}, {nullptr, nullptr, nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_5}};
                        int32_t *l_612 = nullptr;
                        int i, j, k;
                        (*l_462) = (l_176[p_2312->g_211][p_2312->g_211] = (((safe_mul(make_int4(p_2312->g_169[(p_2312->g_211 + 2)][(p_2312->g_457 + 2)][p_2312->g_457], ((((0x363599A8L >= ((0x44L || (~(p_2312->g_169[p_2312->g_90][(p_2312->g_211 + 1)][p_2312->g_457] <= (-1L)))) & (p_40 ^ make_int2(l_595.y, l_595.y).y))) , ((safe_add_func_uint32_t_u_u((l_610[4][0][8] = (9L < (make_ulong2(p_2312->g_300.x, ((safe_mod_func_uint64_t_u_u(((((l_601 |= make_long2(p_2312->g_600.y, p_2312->g_600.y).x) <= 18446744073709551611UL) | p_40) || p_2312->g_72.x), 0x4C44917F6DDA1FE4LL)) , p_2312->g_169[(p_2312->g_211 + 2)][(p_2312->g_457 + 2)][p_2312->g_457])).x <= p_2312->g_169[(p_2312->g_211 + 2)][(p_2312->g_457 + 2)][p_2312->g_457]))), p_40)) ^ l_611)) || 1UL) ^ 0x8F1BL), 0x52542484L, 0x65A5509EL), make_int4(0L, 0L, 0L, 0L)))).x , l_612));
                        return l_176[p_2312->g_211][p_2312->g_211];
                    }
                }
                return &p_2312->g_168;
            }
        }
        for (p_2312->g_168 = 0; (p_2312->g_168 < 24); p_2312->g_168++)
        { /* block id: 200 */
            int32_t l_622 = 0x54F31DC0L;
            int4 l_625 = make_int4(0x4BF6A316L, 0xB7104366L, 0x4BF6A316L, 0xB7104366L);
            char4 l_630 = make_char4(0x99L, 0xB1L, 0x99L, 0xB1L);
            int32_t ***l_640[9][7] = {{&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}, {&l_461, &l_462, &l_461, &l_461, &l_461, &l_462, &l_461}};
            uint64_t ***l_645 = &p_2312->g_643;
            uint8_t **l_652 = nullptr;
            uint32_t **l_662 = &l_661;
            char1 l_667 = make_char1((-1L));
            uint64_t l_683 = 0x3A193DEBF33D6B8DLL;
            ulong1 l_687 = make_ulong1(0x614224A557D3B0E9LL);
            uint32_t l_696 = 18446744073709551613UL;
            int i, j;
            for (p_40 = 5; (p_40 < 1); --p_40)
            { /* block id: 203 */
                int32_t *l_637[4][10] = {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_168, nullptr, nullptr, nullptr, &p_2312->g_168, &p_2312->g_75, &p_2312->g_75, &p_2312->g_168}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_168, nullptr, nullptr, nullptr, &p_2312->g_168, &p_2312->g_75, &p_2312->g_75, &p_2312->g_168}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_168, nullptr, nullptr, nullptr, &p_2312->g_168, &p_2312->g_75, &p_2312->g_75, &p_2312->g_168}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_168, nullptr, nullptr, nullptr, &p_2312->g_168, &p_2312->g_75, &p_2312->g_75, &p_2312->g_168}};
                int i, j;
                for (p_2312->g_457 = 0; (p_2312->g_457 <= 2); p_2312->g_457 += 1)
                { /* block id: 206 */
                    uint3 l_632 = make_uint3(4294967295UL, 0UL, 4294967295UL);
                    __shared__ uint8_t *l_634;
                    l_634 = &p_2312->g_213;
                    int32_t l_636 = 0x4F49C948L;
                    int i;
                    (*l_461) = ((*l_462) = func_82(&p_2312->g_168, l_528, &p_2312->g_47, ((*l_462) = &p_2312->g_75), p_2312->g_442.x, p_2312));
                    for (p_2312->g_90 = 0; (p_2312->g_90 <= 2); p_2312->g_90 += 1)
                    { /* block id: 212 */
                        __shared__ uint8_t ***l_619;
                        l_619 = &p_2312->g_617;
                        int8_t *l_635[2][6] = {{&l_591, &l_591, nullptr, &l_591, &l_591, nullptr}, {&l_591, &l_591, nullptr, &l_591, &l_591, nullptr}};
                        int i, j;
                        (*l_619) = p_2312->g_617;
                    }
                }
                if (p_2312->g_92)
                    break;
            }
            p_2312->g_322.w = (((safe_rshift_func_uint8_t_u_s((!(hip_const_1 && 0x285A2EFDL)), ((l_641 = nullptr) == &l_176[1][3]))) , l_642) != ((*l_645) = p_2312->g_643));
            l_528 = ((safe_mul_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(((safe_sub(make_ushort3(((l_652 != (l_653 = &l_633)) <= (~(safe_mul_func_uint64_t_u_u((((p_40 , 0x244467C4L) , (safe_lshift_func_int16_t_s_u((+make_short4(p_2312->g_658.y, p_2312->g_658.y, p_2312->g_658.y, p_2312->g_658.y).y), ((nullptr == l_659[3][2][7]) , ((p_2312->g_73.x = (((((*l_662) = l_661) == nullptr) , p_40) , 0xF8L)) >= p_2312->g_75))))) , 1UL), 0x7403859B3E6019CDLL)))), p_40, p_40), make_ushort3(65533UL, 65533UL, 65533UL)))).x, p_2312->g_333.x)), p_40)) >= (**l_461));
            for (p_2312->g_92 = 0; (p_2312->g_92 != 36); ++p_2312->g_92)
            { /* block id: 233 */
                uint32_t l_694 = 0x68282419L;
                int32_t l_695[8];
                int i;
                for (int i = 0; i < 8; i++)
                    l_695[i] = 1L;
                for (p_2312->g_162 = 0; (p_2312->g_162 <= 38); p_2312->g_162++)
                { /* block id: 236 */
                    int32_t l_672 = 0x0AD0ECE5L;
                    uint32_t *l_679 = nullptr;
                    uint32_t *l_680 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ uint32_t *l_681[3][8];
                    for (int i = 0; i < 3; i++)
                    {
                        for (int j = 0; j < 8; j++)
                            l_681[i][j] = nullptr;
                    }
                    int i, j;
                    l_683 |= (p_40 ^ ((make_char2(l_667.x, l_667.x).y >= (safe_add_func_int32_t_s_s((&p_2312->g_90 != nullptr), (safe_add_func_uint8_t_u_u((nullptr == &p_2312->g_390), l_672))))) == (0x2FL != (safe_sub_func_int16_t_s_s(((p_40 == ((!(~((safe_sub(((((make_uint3(1UL, 0UL, (p_2312->g_682 = (safe_lshift_func_uint64_t_u_u(0UL, l_672)))) & make_uint3(1UL, 1UL, 1UL))) | make_uint3(0xE305F968L, 0xE305F968L, 0xE305F968L))), make_uint3(1UL, 1UL, 1UL)))).y)) == p_40)) || p_40), p_2312->g_304.x)))));
                    for (p_2312->g_457 = 0; (p_2312->g_457 > 26); ++p_2312->g_457)
                    { /* block id: 241 */
                        if (p_40)
                            break;
                        p_2312->g_322.z &= p_2312->g_342.z;
                    }
                    return l_686;
                }
                l_695[0] |= (make_ulong2(l_687.x, l_687.x).x < (safe_rshift_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((make_short2(p_2312->g_692.y, p_2312->g_692.y).x || (safe_unary_minus_func_int8_t_s(0x2BL))), l_694)), 15)));
                l_696--;
                if (hip_const_4)
                    goto lbl_699;
            }
        }
    }
lbl_699:
    (**l_461) &= p_40;
    (*l_700) = &l_660[4];
    return &p_2312->g_211;
}


/* ------------------------------------------ */
/* 
 * reads : p_2312->g_185 p_2312->g_194 p_2312->g_162 p_2312->g_213 p_2312->g_47 hip_const_2 hip_const_6 p_2312->g_72 p_2312->g_74 p_2312->g_169 p_2312->g_168 p_2312->g_75 p_2312->g_457
 * writes: p_2312->g_194 p_2312->g_213 p_2312->g_168 p_2312->g_75 p_2312->g_457 p_2312->g_74
 */
__device__ int32_t * func_49(uint16_t * p_50, int64_t  p_51, int16_t * p_52, int32_t * p_53, struct S0 * p_2312)
{ /* block id: 56 */
    uint16_t *l_180 = &hip_const_1;
    uint16_t **l_179 = &l_180;
    uint16_t *l_182 = nullptr;
    uint16_t **l_181 = &l_182;
    ushort4 l_192 = make_ushort4(0UL, 0x3325L, 0UL, 0x3325L);
    // attempting a hip shared for loop
    __shared__ uint16_t *l_193[9][9];
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 9; j++)
            l_193[i][j] = &hip_const_3;
    }
    int32_t l_208 = 7L;
    uint32_t *l_209 = &hip_const_5;
    uint32_t *l_210[8][10] = {{nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}, {nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}, {nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}, {nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}, {nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}, {nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}, {nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}, {nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5, nullptr, &hip_const_5, &hip_const_5, nullptr, &hip_const_5}};
    int32_t l_212 = 0L;
    uchar2 l_216 = make_uchar2(0UL, 247UL);
    int8_t *l_219 = nullptr;
    int8_t *l_220[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    __shared__ int32_t l_223;
    l_223 = 0L;
    int32_t l_224 = 0L;
    int32_t l_225 = (-6L);
    int32_t l_226 = (-1L);
    __shared__ int32_t l_227;
    l_227 = 1L;
    int32_t l_228 = (-1L);
    short3 l_229 = make_short3((-1L), (-10L), (-1L));
    int32_t l_230 = 4L;
    int32_t l_231 = (-4L);
    int32_t l_232 = 0x9FFC7C3EL;
    __shared__ int32_t **l_242;
    l_242 = &p_2312->g_74;
    uint8_t l_266 = 0x54L;
    long4 l_302 = make_long4(0x71430AAFB5A1B66CLL, 0x3D675C65715371F8LL, 0x71430AAFB5A1B66CLL, 0x3D675C65715371F8LL);
    long3 l_303 = make_long3(0x037B79DAD9700F0DLL, 8L, 0x037B79DAD9700F0DLL);
    int16_t *l_393 = nullptr;
    ulong4 l_426 = make_ulong4(0x36751C904A2A2AF9LL, 1UL, 0x36751C904A2A2AF9LL, 1UL);
    ulong1 l_427 = make_ulong1(0x93FC86E067EDE7A5LL);
    ulong3 l_432 = make_ulong3(18446744073709551615UL, 1UL, 18446744073709551615UL);
    __shared__ uchar3 l_453;
    l_453 = make_uchar3(0xB1L, 251UL, 0xB1L);
    // attempting a hip shared for loop
    __shared__ int32_t *l_456[3];
    for (int i = 0; i < 3; i++)
        l_456[i] = nullptr;
    int i, j;
    for (int i = 0; i < 3; i++)
        l_456[i] = nullptr;
    if (((*p_2312->g_74) = ((safe_div_func_int64_t_s_s(((((*l_181) = ((*l_179) = &hip_const_3)) == (((safe_mul(make_long1(0xA66330F89493EADCLL), make_long1(0xFDAC8820D8B5B866LL)))).x , p_50)) || (((*p_53) = ((make_int1(p_2312->g_185.x).x , (safe_lshift_func_int8_t_s_u((safe_add_func_uint16_t_u_u((l_208 = (safe_add_func_uint32_t_u_u((((p_2312->g_194 &= make_ushort4(l_192.w, l_192.w, l_192.w, l_192.w).w) , (safe_mod_func_uint32_t_u_u((((((make_char3((l_212 = make_char4(p_51, (-10L), (+(p_2312->g_162 && ((safe_div_func_int32_t_s_s((safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u(((safe_mul_func_int16_t_s_s((safe_add_func_int8_t_s_s((((p_2312->g_213--) , (l_212 != (~0xA6L))) && 0x0F33844FDB9DDAD4LL), make_uchar1(l_216.x).x)), ((((((l_216.x , ((safe_rshift_func_uint32_t_u_u((l_212 > 7L), 0)) > p_51)) == 0xD99568BBL) >= 4294967295UL) > 1L) > 0xF389892B93441F19LL) , (*p_52)))) <= p_51))), hip_const_2[2][1])), l_216.x)), 0x59E8EBB9L)) >= hip_const_6))), l_208).x), 0L, (-1L)) ^ make_char3(0xD2L, 0xD2L, 0xD2L))).z >= p_51) == 0xF1L) & p_2312->g_72.x), p_2312->g_72.x))) ^ p_51), 1L))), 0xF118L)), l_192.z))) != l_192.z)) >= 2L)), l_192.w)) & 0UL)))
    { /* block id: 65 */
        int32_t *l_221 = &p_2312->g_168;
        int32_t *l_222[9];
        uint32_t l_233 = 0x917E9C42L;
        int i;
        for (int i = 0; i < 9; i++)
            l_222[i] = &p_2312->g_211;
        l_233--;
    }
    else
    { /* block id: 67 */
        int32_t **l_243 = &p_2312->g_74;
        int32_t *l_244 = &l_224;
        int32_t *l_245 = nullptr;
        int32_t *l_246 = &l_228;
        int32_t *l_247 = &l_228;
        int32_t l_248 = 4L;
        int32_t *l_249 = &p_2312->g_211;
        int32_t *l_250[7] = {&l_224, &l_224, &l_212, &l_224, &l_224, &l_212, &l_224};
        uint64_t l_251 = 0UL;
        int i;
        (**l_242) ^= ((*p_53) ^= ((safe_div_func_uint16_t_u_u(0xB9FBL, (*p_52))) >= ((safe_lshift_func_int16_t_s_s(p_2312->g_169[3][2][0], 1)) != (&p_2312->g_74 != (l_243 = l_242)))));
        l_251--;
    }
    for (l_223 = 0; (l_223 < (-10)); l_223--)
    { /* block id: 75 */
        int8_t *l_258 = nullptr;
        int32_t l_268 = (-4L);
        long4 l_276 = make_long4(0L, 0x2A1E79B9721220F7LL, 0L, 0x2A1E79B9721220F7LL);
        uint32_t *l_288 = &p_2312->g_90;
        uint16_t ***l_301 = &l_179;
        ulong4 l_337 = make_ulong4(0xCB9A50B5D90F7090LL, 18446744073709551614UL, 0xCB9A50B5D90F7090LL, 18446744073709551614UL);
        uint32_t l_354 = 0xE0714F08L;
        // attempting a hip shared for loop
        __shared__ int64_t l_372[5];
        for (int i = 0; i < 5; i++)
            l_372[i] = 0x1018CC1155B47B51LL;
        int32_t *l_380 = &p_2312->g_75;
        char4 l_388 = make_char4(0L, (-7L), 0L, (-7L));
        ulong4 l_425 = make_ulong4(0x2BE0F94A62984404LL, 0x913B07E92FE9CAD1LL, 0x2BE0F94A62984404LL, 0x913B07E92FE9CAD1LL);
        ulong4 l_429 = make_ulong4(1UL, 0x5484A3F1D026599ELL, 1UL, 0x5484A3F1D026599ELL);
        __shared__ ulong1 l_433;
        l_433 = make_ulong1(18446744073709551615UL);
        __shared__ uint64_t l_436;
        l_436 = 18446744073709551615UL;
        short1 l_439 = make_short1(0x4E18L);
        ushort3 l_449 = make_ushort3(0UL, 9UL, 0UL);
        __shared__ ushort2 l_450;
        l_450 = make_ushort2(0UL, 65535UL);
        uint64_t *l_454[3];
        int64_t l_455 = 1L;
        int i;
        for (int i = 0; i < 3; i++)
            l_454[i] = nullptr;
    }
    --p_2312->g_457;
    (*l_242) = &p_2312->g_75;
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_2312->g_47 p_2312->g_92 hip_const_4 p_2312->g_75 p_2312->g_74 hip_const_3 p_2312->g_66 p_2312->g_72 hip_const_5 hip_const_2 p_2312->g_90 hip_const_1 p_2312->g_81 p_2312->g_71 p_2312->g_162 p_2312->g_169 p_2312->g_73
 * writes: p_2312->g_81 p_2312->g_90 p_2312->g_92 p_2312->g_74 p_2312->g_72 p_2312->g_75 p_2312->g_162 p_2312->g_169
 */
__device__ int8_t  func_62(int32_t * p_63, struct S0 * p_2312)
{ /* block id: 5 */
    int64_t l_76 = 0x847E08A84A000286LL;
    char4 l_79 = make_char4(1L, 0xDBL, 1L, 0xDBL);
    uint64_t *l_80[8] = {&hip_const_2[0][1], &p_2312->g_81, &hip_const_2[0][1], &p_2312->g_81, &hip_const_2[0][1], &p_2312->g_81, &hip_const_2[0][1], &p_2312->g_81};
    int2 l_88 = make_int2(1L, 1L);
    __shared__ uint32_t *l_89;
    l_89 = &p_2312->g_90;
    uint32_t *l_91 = &p_2312->g_92;
    int32_t **l_95 = nullptr;
    int32_t **l_96 = &p_2312->g_74;
    // attempting a hip shared for loop
    __shared__ int16_t l_109[3];
    for (int i = 0; i < 3; i++)
        l_109[i] = 0xC2F6L;
    int8_t *l_118[1][8] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
    __shared__ int32_t l_119;
    l_119 = 0xD934358BL;
    __shared__ int32_t l_120;
    l_120 = 0L;
    uchar1 l_127 = make_uchar1(1UL);
    uint16_t *l_131 = &hip_const_1;
    int i, j;
    for (int i = 0; i < 3; i++)
        l_109[i] = 0xC2F6L;
    (*l_96) = ((p_2312->g_47 , l_76) , ((p_2312->g_81 = (l_76 == (l_76 != ((safe_lshift_func_int8_t_s_s(make_char1(l_79.y).x, 3)) >= l_79.y)))) , func_82((make_int1(l_88.y).x , p_63), ((*l_91) |= ((*l_89) = p_2312->g_47)), &p_2312->g_47, (l_79.x , &p_2312->g_75), l_79.y, p_2312)));
    (*p_63) = ((((safe_sub(make_long3(0x061DAE56B76AF746LL, 0xECCD2826019FDEE1LL, (safe_sub_func_int64_t_s_s(((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(((0L ^ hip_const_4) , make_ushort2(0x115BL, 0x3A71L).y), ((safe_sub_func_int8_t_s_s(((safe_mul_func_int32_t_s_s(l_109[1], (*p_63))) | ((**l_96) || (((+((*p_2312->g_74) , ((safe_mod_func_uint8_t_u_u((((-1L) > (**l_96)) <= make_ulong4(0x9A55AEF27357609ELL, 1UL, 0x7B8CEE11437717E4LL, ((safe_div_func_int8_t_s_s((p_2312->g_72.x |= (safe_mul_func_int64_t_s_s(make_long1((-1L)).x, (!(safe_add_func_uint64_t_u_u((~hip_const_3), p_2312->g_66.x)))))), (**l_96))) , 0xC61B7CE843D8BAA4LL)).x), (**l_96))) | (**l_96)))) , nullptr) == nullptr))), 0x0BL)) != l_119))), (**l_96))) , p_2312->g_66.x), hip_const_5))), make_long3(0x2BF9DFF4590BACEALL, 0x2BF9DFF4590BACEALL, 0x2BF9DFF4590BACEALL)))).x < l_120) != hip_const_2[0][1]);
lbl_140:
    (*p_2312->g_74) = (safe_div_func_int64_t_s_s((p_2312->g_92 > (safe_mod_func_int64_t_s_s((((**l_96) == ((*p_2312->g_74) == (**l_96))) < (l_120 = (hip_const_5 <= (make_char1(0x10L).x && make_uchar2(l_127.x, l_127.x).x)))), (safe_unary_minus_func_int64_t_s((0L != 0x65L)))))), ((safe_mod_func_uint64_t_u_u(((p_2312->g_90 , l_131) == l_131), hip_const_1)) ^ 1UL)));
    for (p_2312->g_81 = 0; (p_2312->g_81 > 3); p_2312->g_81 = safe_add_func_uint64_t_u_u(p_2312->g_81, 9))
    { /* block id: 19 */
        int2 l_159 = make_int2(0x67F3A6B8L, 0xD1E1EA80L);
        int32_t *l_163 = &p_2312->g_75;
        int32_t *l_164 = &p_2312->g_75;
        int32_t l_165 = 0x8590E404L;
        int32_t *l_166[10][3][8] = {{{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, nullptr, &p_2312->g_75, nullptr, &p_2312->g_75, &p_2312->g_75}}};
        int64_t l_167 = (-1L);
        int i, j, k;
        for (p_2312->g_90 = 0; (p_2312->g_90 <= 54); p_2312->g_90++)
        { /* block id: 22 */
            __shared__ uint16_t **l_151;
            l_151 = &l_131;
            for (p_2312->g_92 = 0; (p_2312->g_92 <= 54); p_2312->g_92++)
            { /* block id: 25 */
                for (l_120 = 29; (l_120 >= (-9)); l_120 = safe_sub_func_uint16_t_u_u(l_120, 1))
                { /* block id: 28 */
                    __shared__ uint64_t l_148;
                    l_148 = 0xA7E502840ACBBF45LL;
                    if (p_2312->g_92)
                        goto lbl_140;
                    for (l_76 = 0; (l_76 == 3); l_76++)
                    { /* block id: 32 */
                        __shared__ int32_t *l_143;
                        l_143 = &p_2312->g_75;
                        int32_t *l_144 = &p_2312->g_75;
                        int32_t *l_145 = &p_2312->g_75;
                        int32_t *l_146 = nullptr;
                        int32_t *l_147[8][6][5] = {{{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}, {{&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}, {&p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75, &p_2312->g_75}}};
                        uint16_t ***l_152 = nullptr;
                        uint16_t **l_154 = nullptr;
                        uint16_t ***l_153 = &l_154;
                        int i, j, k;
                        l_148++;
                        if ((**l_96))
                            break;
                        (*l_153) = l_151;
                        return l_148;
                    }
                }
            }
        }
        for (p_2312->g_75 = (-22); (p_2312->g_75 < 16); ++p_2312->g_75)
        { /* block id: 43 */
            for (l_120 = 0; (l_120 > 18); ++l_120)
            { /* block id: 46 */
                return p_2312->g_71.w;
            }
            if (l_159.y)
                break;
            p_2312->g_162 |= (safe_sub_func_int16_t_s_s(0xF35BL, 6L));
        }
        p_2312->g_169[0][0][0]++;
        (**l_96) ^= (hip_const_3 ^ p_2312->g_73.x);
    }
    return (**l_96);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_2312->g_74
 */
__device__ int32_t * func_82(int32_t * p_83, uint32_t  p_84, int16_t * p_85, int32_t * p_86, uint32_t  p_87, struct S0 * p_2312)
{ /* block id: 9 */
    uint8_t l_93[5];
    int32_t **l_94 = &p_2312->g_74;
    int i;
    for (int i = 0; i < 5; i++)
        l_93[i] = 255UL;
    (*l_94) = (l_93[3] , &p_2312->g_75);
    return &p_2312->g_75;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S0 c_2313;
    struct S0* p_2312 = &c_2313;
    struct S0 c_2314 = {
        .g_14 = 0xC77509CBL,
        .g_38 = 1UL,
        .g_47 = (-1L),
        .g_66 = make_char1(7L),
        .g_71 = make_char4(0x8DL, 1L, 0x8DL, 1L),
        .g_72 = make_char1(0x04L),
        .g_73 = make_char1(0x7CL),
        .g_75 = 0xB8F5B6EFL,
        .g_74 = &p_2312->g_75,
        .g_81 = 0xFE07384C7B934CEBLL,
        .g_90 = 0xD26DA612L,
        .g_92 = 0UL,
        .g_162 = 0x9DAF5B91L,
        .g_168 = 0L,
        .g_169 = {{{1UL}, {1UL}, {1UL}}, {{1UL}, {1UL}, {1UL}}, {{1UL}, {1UL}, {1UL}}, {{1UL}, {1UL}, {1UL}}, {{1UL}, {1UL}, {1UL}}},
        .g_185 = make_int2(0L, 0xFA84F372L),
        .g_194 = 0x44576A33L,
        .g_211 = 2L,
        .g_213 = 0x8FL,
        .g_300 = make_long2(9L, 0x6458D0A81A918C55LL),
        .g_304 = make_long1(0x753BC47F2C3C599FLL),
        .g_322 = make_int4(1L, 1L, 1L, 1L),
        .g_333 = make_ushort4(65535UL, 0UL, 65535UL, 0UL),
        .g_342 = make_uchar3(0x09L, 0xCDL, 0x09L),
        .g_352 = {&hip_const_3, &hip_const_3, &hip_const_3, &hip_const_3, &hip_const_3},
        .g_389 = {{{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}, {{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}, {{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}, {{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}, {{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}, {{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}, {{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}, {{18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}, {18446744073709551608UL, 18446744073709551615UL, 1UL}}},
        .g_390 = nullptr,
        .g_392 = nullptr,
        .g_398 = nullptr,
        .g_428 = make_ulong2(0xEB6EA5EBC05423A4LL, 0UL),
        .g_442 = make_short1(1L),
        .g_457 = 65526UL,
        .g_555 = make_uint3(0xD563B01BL, 0x0D009DE2L, 0xD563B01BL),
        .g_600 = make_long2(0xED5FE6FC9EE55C38LL, (-1L)),
        .g_618 = &p_2312->g_213,
        .g_617 = &p_2312->g_618,
        .g_631 = make_uint2(4294967288UL, 0x0BDCCA55L),
        .g_644 = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}},
        .g_643 = &p_2312->g_644[0][0],
        .g_658 = make_short2(0x3F79L, 0x7A77L),
        .g_682 = 65535UL,
        .g_692 = make_short2(0x120BL, (-4L)),
        .g_704 = make_long1(0xE996C4569E5F4AAALL),
        .g_715 = make_ushort4(0x3D2AL, 5UL, 0x3D2AL, 5UL),
        .g_722 = make_long4(0L, 1L, 0L, 1L),
        .g_803 = 0UL,
        .g_850 = make_int1(0x92B6909FL),
        .g_876 = make_int4((-1L), 5L, (-1L), 5L),
        .g_877 = make_int2((-1L), 0L),
        .g_882 = make_short1(7L),
        .g_886 = &p_2312->g_194,
        .g_940 = make_int1(0L),
        .g_992 = make_ulong4(0x633645B05E335D9DLL, 0xE87E183491AC2357LL, 0x633645B05E335D9DLL, 0xE87E183491AC2357LL),
        .g_1017 = &p_2312->g_74,
        .g_1016 = {{&p_2312->g_1017, &p_2312->g_1017, &p_2312->g_1017, &p_2312->g_1017, &p_2312->g_1017, &p_2312->g_1017, &p_2312->g_1017}},
        .g_1020 = make_int4(3L, 0L, 3L, 0L),
        .g_1044 = nullptr,
        .g_1043 = &p_2312->g_1044,
        .g_1042 = &p_2312->g_1043,
        .g_1083 = make_ulong4(18446744073709551613UL, 0xC16A15A346DA97E7LL, 18446744073709551613UL, 0xC16A15A346DA97E7LL),
        .g_1108 = make_long3((-8L), 0x503FC15713A5F4C6LL, (-8L)),
        .g_1140 = 0x538FA0B1EDA44CFCLL,
        .g_1193 = {9UL, 9UL, 0x4D82A37163A58F61LL, 9UL, 9UL, 0x4D82A37163A58F61LL, 9UL, 9UL, 0x4D82A37163A58F61LL},
        .g_1196 = {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}},
        .g_1248 = make_char4(0x16L, 0x69L, 0x16L, 0x69L),
        .g_1265 = make_ulong4(0xAB5CAF8FEDC512F7LL, 3UL, 0xAB5CAF8FEDC512F7LL, 3UL),
        .g_1266 = make_ulong3(18446744073709551611UL, 1UL, 18446744073709551611UL),
        .g_1267 = make_ulong1(0xD54BA81023DD4A87LL),
        .g_1285 = make_uint4(0x68A6C58FL, 0x96A53298L, 0x68A6C58FL, 0x96A53298L),
        .g_1295 = {{{&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}}, {{&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}}, {{&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}}, {{&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}}, {{&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}}, {{&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}, {&p_2312->g_47, &p_2312->g_47}}},
        .g_1305 = &p_2312->g_398,
        .g_1304 = &p_2312->g_1305,
        .g_1341 = &p_2312->g_1196[0][3],
        .g_1340 = {{nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}, {nullptr, &p_2312->g_1341, nullptr}},
        .g_1401 = make_int1(8L),
        .g_1402 = make_int3((-1L), (-8L), (-1L)),
        .g_1419 = make_long3((-1L), 0xC23E7119C289368BLL, (-1L)),
        .g_1469 = make_char3((-1L), 0x73L, (-1L)),
        .g_1474 = make_char4(0x7FL, 5L, 0x7FL, 5L),
        .g_1495 = &p_2312->g_392,
        .g_1494 = &p_2312->g_1495,
        .g_1535 = make_ushort3(65533UL, 65535UL, 65533UL),
        .g_1543 = 0x04L,
        .g_1590 = make_char1(0x94L),
        .g_1596 = make_char3(0x46L, 7L, 0x46L),
        .g_1597 = make_char3((-1L), 0xEEL, (-1L)),
        .g_1598 = make_char2(0xA7L, 8L),
        .g_1599 = make_char3(0xB7L, (-7L), 0xB7L),
        .g_1627 = make_ulong3(18446744073709551611UL, 0x2F8F33D2C2C83327LL, 18446744073709551611UL),
        .g_1637 = make_ulong2(0xA1B323DFCF691148LL, 0xA9F70C968C26FCD5LL),
        .g_1638 = make_ulong1(18446744073709551610UL),
        .g_1643 = make_ushort3(65535UL, 9UL, 65535UL),
        .g_1679 = make_short2(0xC9CFL, 0x23C6L),
        .g_1698 = {0x7E863B73EA57BA68LL, 0xF33D2BC16A21DC04LL, 0x7E863B73EA57BA68LL, 0xF33D2BC16A21DC04LL, 0x7E863B73EA57BA68LL, 0xF33D2BC16A21DC04LL, 0x7E863B73EA57BA68LL, 0xF33D2BC16A21DC04LL, 0x7E863B73EA57BA68LL},
        .g_1708 = &p_2312->g_390,
        .g_1724 = make_int4((-6L), (-1L), (-6L), (-1L)),
        .g_1725 = make_int3(0x675FE0D0L, 0x1C5C4BA2L, 0x675FE0D0L),
        .g_1726 = make_int4(0x5B314B7BL, 4L, 0x5B314B7BL, 4L),
        .g_1741 = &p_2312->g_352[2],
        .g_1761 = make_char2(0x04L, (-8L)),
        .g_1769 = make_uint2(0xA97AC910L, 8UL),
        .g_1798 = make_long1(1L),
        .g_1799 = make_ulong1(18446744073709551614UL),
        .g_1800 = make_short3(0x40ECL, 0L, 0x40ECL),
        .g_1802 = make_char2(0xC8L, 0xF9L),
        .g_1807 = make_char4(0x21L, 0xDFL, 0x21L, 0xDFL),
        .g_1811 = make_char1(1L),
        .g_1813 = make_char1(0xF8L),
        .g_1848 = make_int1(0xCBF698BAL),
        .g_1883 = make_uchar3(3UL, 0xBEL, 3UL),
        .g_1919 = make_char4(1L, 0x46L, 1L, 0x46L),
        .g_1935 = &p_2312->g_643,
        .g_1934 = &p_2312->g_1935,
        .g_1936 = &p_2312->g_1935,
        .g_1956 = make_char3(0L, 0xFEL, 0L),
        .g_2001 = make_long2(0x4A7FD83CDD95E0E0LL, 0x1CCCDEBB2567EC09LL),
        .g_2009 = &p_2312->g_168,
        .g_2015 = nullptr,
        .g_2014 = &p_2312->g_2015,
        .g_2030 = make_uchar1(0UL),
        .g_2045 = make_uint4(0x82A47882L, 0x86A3D9CFL, 0x82A47882L, 0x86A3D9CFL),
        .g_2064 = 6UL,
        .g_2075 = 1L,
        .g_2083 = 0x04CE58E7L,
        .g_2095 = &p_2312->g_617,
        .g_2094 = &p_2312->g_2095,
        .g_2096 = &p_2312->g_2095,
        .g_2106 = make_int2(0xF780B8A7L, 0x02D20560L),
        .g_2199 = make_long3(0xA9A74C098572FEC5LL, 1L, 0xA9A74C098572FEC5LL),
        .g_2306 = &p_2312->g_1741,
    };
    c_2313 = c_2314;

    // Execute core logic
    func_1(p_2312);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            transparent_crc(hip_const_2[i][j], "hip_const_2[i][j]", print_hash_value);

        }
    }
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(hip_const_5, "hip_const_5", print_hash_value);
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    transparent_crc(p_2312->g_14, "p_2312->g_14", print_hash_value);
    transparent_crc(p_2312->g_38, "p_2312->g_38", print_hash_value);
    transparent_crc(p_2312->g_47, "p_2312->g_47", print_hash_value);
    transparent_crc(p_2312->g_66.x, "p_2312->g_66.x", print_hash_value);
    transparent_crc(p_2312->g_71.x, "p_2312->g_71.x", print_hash_value);
    transparent_crc(p_2312->g_71.y, "p_2312->g_71.y", print_hash_value);
    transparent_crc(p_2312->g_71.z, "p_2312->g_71.z", print_hash_value);
    transparent_crc(p_2312->g_71.w, "p_2312->g_71.w", print_hash_value);
    transparent_crc(p_2312->g_72.x, "p_2312->g_72.x", print_hash_value);
    transparent_crc(p_2312->g_73.x, "p_2312->g_73.x", print_hash_value);
    transparent_crc(p_2312->g_75, "p_2312->g_75", print_hash_value);
    transparent_crc(p_2312->g_81, "p_2312->g_81", print_hash_value);
    transparent_crc(p_2312->g_90, "p_2312->g_90", print_hash_value);
    transparent_crc(p_2312->g_92, "p_2312->g_92", print_hash_value);
    transparent_crc(p_2312->g_162, "p_2312->g_162", print_hash_value);
    transparent_crc(p_2312->g_168, "p_2312->g_168", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            for (int k = 0; k < 1; k++)
            {
                transparent_crc(p_2312->g_169[i][j][k], "p_2312->g_169[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2312->g_185.x, "p_2312->g_185.x", print_hash_value);
    transparent_crc(p_2312->g_185.y, "p_2312->g_185.y", print_hash_value);
    transparent_crc(p_2312->g_194, "p_2312->g_194", print_hash_value);
    transparent_crc(p_2312->g_211, "p_2312->g_211", print_hash_value);
    transparent_crc(p_2312->g_213, "p_2312->g_213", print_hash_value);
    transparent_crc(p_2312->g_300.x, "p_2312->g_300.x", print_hash_value);
    transparent_crc(p_2312->g_300.y, "p_2312->g_300.y", print_hash_value);
    transparent_crc(p_2312->g_304.x, "p_2312->g_304.x", print_hash_value);
    transparent_crc(p_2312->g_322.x, "p_2312->g_322.x", print_hash_value);
    transparent_crc(p_2312->g_322.y, "p_2312->g_322.y", print_hash_value);
    transparent_crc(p_2312->g_322.z, "p_2312->g_322.z", print_hash_value);
    transparent_crc(p_2312->g_322.w, "p_2312->g_322.w", print_hash_value);
    transparent_crc(p_2312->g_333.x, "p_2312->g_333.x", print_hash_value);
    transparent_crc(p_2312->g_333.y, "p_2312->g_333.y", print_hash_value);
    transparent_crc(p_2312->g_333.z, "p_2312->g_333.z", print_hash_value);
    transparent_crc(p_2312->g_333.w, "p_2312->g_333.w", print_hash_value);
    transparent_crc(p_2312->g_342.x, "p_2312->g_342.x", print_hash_value);
    transparent_crc(p_2312->g_342.y, "p_2312->g_342.y", print_hash_value);
    transparent_crc(p_2312->g_342.z, "p_2312->g_342.z", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 7; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_2312->g_389[i][j][k], "p_2312->g_389[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2312->g_428.x, "p_2312->g_428.x", print_hash_value);
    transparent_crc(p_2312->g_428.y, "p_2312->g_428.y", print_hash_value);
    transparent_crc(p_2312->g_442.x, "p_2312->g_442.x", print_hash_value);
    transparent_crc(p_2312->g_457, "p_2312->g_457", print_hash_value);
    transparent_crc(p_2312->g_555.x, "p_2312->g_555.x", print_hash_value);
    transparent_crc(p_2312->g_555.y, "p_2312->g_555.y", print_hash_value);
    transparent_crc(p_2312->g_555.z, "p_2312->g_555.z", print_hash_value);
    transparent_crc(p_2312->g_600.x, "p_2312->g_600.x", print_hash_value);
    transparent_crc(p_2312->g_600.y, "p_2312->g_600.y", print_hash_value);
    transparent_crc(p_2312->g_631.x, "p_2312->g_631.x", print_hash_value);
    transparent_crc(p_2312->g_631.y, "p_2312->g_631.y", print_hash_value);
    transparent_crc(p_2312->g_658.x, "p_2312->g_658.x", print_hash_value);
    transparent_crc(p_2312->g_658.y, "p_2312->g_658.y", print_hash_value);
    transparent_crc(p_2312->g_682, "p_2312->g_682", print_hash_value);
    transparent_crc(p_2312->g_692.x, "p_2312->g_692.x", print_hash_value);
    transparent_crc(p_2312->g_692.y, "p_2312->g_692.y", print_hash_value);
    transparent_crc(p_2312->g_704.x, "p_2312->g_704.x", print_hash_value);
    transparent_crc(p_2312->g_715.x, "p_2312->g_715.x", print_hash_value);
    transparent_crc(p_2312->g_715.y, "p_2312->g_715.y", print_hash_value);
    transparent_crc(p_2312->g_715.z, "p_2312->g_715.z", print_hash_value);
    transparent_crc(p_2312->g_715.w, "p_2312->g_715.w", print_hash_value);
    transparent_crc(p_2312->g_722.x, "p_2312->g_722.x", print_hash_value);
    transparent_crc(p_2312->g_722.y, "p_2312->g_722.y", print_hash_value);
    transparent_crc(p_2312->g_722.z, "p_2312->g_722.z", print_hash_value);
    transparent_crc(p_2312->g_722.w, "p_2312->g_722.w", print_hash_value);
    transparent_crc(p_2312->g_803, "p_2312->g_803", print_hash_value);
    transparent_crc(p_2312->g_850.x, "p_2312->g_850.x", print_hash_value);
    transparent_crc(p_2312->g_876.x, "p_2312->g_876.x", print_hash_value);
    transparent_crc(p_2312->g_876.y, "p_2312->g_876.y", print_hash_value);
    transparent_crc(p_2312->g_876.z, "p_2312->g_876.z", print_hash_value);
    transparent_crc(p_2312->g_876.w, "p_2312->g_876.w", print_hash_value);
    transparent_crc(p_2312->g_877.x, "p_2312->g_877.x", print_hash_value);
    transparent_crc(p_2312->g_877.y, "p_2312->g_877.y", print_hash_value);
    transparent_crc(p_2312->g_882.x, "p_2312->g_882.x", print_hash_value);
    transparent_crc(p_2312->g_940.x, "p_2312->g_940.x", print_hash_value);
    transparent_crc(p_2312->g_992.x, "p_2312->g_992.x", print_hash_value);
    transparent_crc(p_2312->g_992.y, "p_2312->g_992.y", print_hash_value);
    transparent_crc(p_2312->g_992.z, "p_2312->g_992.z", print_hash_value);
    transparent_crc(p_2312->g_992.w, "p_2312->g_992.w", print_hash_value);
    transparent_crc(p_2312->g_1020.x, "p_2312->g_1020.x", print_hash_value);
    transparent_crc(p_2312->g_1020.y, "p_2312->g_1020.y", print_hash_value);
    transparent_crc(p_2312->g_1020.z, "p_2312->g_1020.z", print_hash_value);
    transparent_crc(p_2312->g_1020.w, "p_2312->g_1020.w", print_hash_value);
    transparent_crc(p_2312->g_1083.x, "p_2312->g_1083.x", print_hash_value);
    transparent_crc(p_2312->g_1083.y, "p_2312->g_1083.y", print_hash_value);
    transparent_crc(p_2312->g_1083.z, "p_2312->g_1083.z", print_hash_value);
    transparent_crc(p_2312->g_1083.w, "p_2312->g_1083.w", print_hash_value);
    transparent_crc(p_2312->g_1108.x, "p_2312->g_1108.x", print_hash_value);
    transparent_crc(p_2312->g_1108.y, "p_2312->g_1108.y", print_hash_value);
    transparent_crc(p_2312->g_1108.z, "p_2312->g_1108.z", print_hash_value);
    transparent_crc(p_2312->g_1140, "p_2312->g_1140", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        transparent_crc(p_2312->g_1193[i], "p_2312->g_1193[i]", print_hash_value);

    }
    transparent_crc(p_2312->g_1248.x, "p_2312->g_1248.x", print_hash_value);
    transparent_crc(p_2312->g_1248.y, "p_2312->g_1248.y", print_hash_value);
    transparent_crc(p_2312->g_1248.z, "p_2312->g_1248.z", print_hash_value);
    transparent_crc(p_2312->g_1248.w, "p_2312->g_1248.w", print_hash_value);
    transparent_crc(p_2312->g_1265.x, "p_2312->g_1265.x", print_hash_value);
    transparent_crc(p_2312->g_1265.y, "p_2312->g_1265.y", print_hash_value);
    transparent_crc(p_2312->g_1265.z, "p_2312->g_1265.z", print_hash_value);
    transparent_crc(p_2312->g_1265.w, "p_2312->g_1265.w", print_hash_value);
    transparent_crc(p_2312->g_1266.x, "p_2312->g_1266.x", print_hash_value);
    transparent_crc(p_2312->g_1266.y, "p_2312->g_1266.y", print_hash_value);
    transparent_crc(p_2312->g_1266.z, "p_2312->g_1266.z", print_hash_value);
    transparent_crc(p_2312->g_1267.x, "p_2312->g_1267.x", print_hash_value);
    transparent_crc(p_2312->g_1285.x, "p_2312->g_1285.x", print_hash_value);
    transparent_crc(p_2312->g_1285.y, "p_2312->g_1285.y", print_hash_value);
    transparent_crc(p_2312->g_1285.z, "p_2312->g_1285.z", print_hash_value);
    transparent_crc(p_2312->g_1285.w, "p_2312->g_1285.w", print_hash_value);
    transparent_crc(p_2312->g_1401.x, "p_2312->g_1401.x", print_hash_value);
    transparent_crc(p_2312->g_1402.x, "p_2312->g_1402.x", print_hash_value);
    transparent_crc(p_2312->g_1402.y, "p_2312->g_1402.y", print_hash_value);
    transparent_crc(p_2312->g_1402.z, "p_2312->g_1402.z", print_hash_value);
    transparent_crc(p_2312->g_1419.x, "p_2312->g_1419.x", print_hash_value);
    transparent_crc(p_2312->g_1419.y, "p_2312->g_1419.y", print_hash_value);
    transparent_crc(p_2312->g_1419.z, "p_2312->g_1419.z", print_hash_value);
    transparent_crc(p_2312->g_1469.x, "p_2312->g_1469.x", print_hash_value);
    transparent_crc(p_2312->g_1469.y, "p_2312->g_1469.y", print_hash_value);
    transparent_crc(p_2312->g_1469.z, "p_2312->g_1469.z", print_hash_value);
    transparent_crc(p_2312->g_1474.x, "p_2312->g_1474.x", print_hash_value);
    transparent_crc(p_2312->g_1474.y, "p_2312->g_1474.y", print_hash_value);
    transparent_crc(p_2312->g_1474.z, "p_2312->g_1474.z", print_hash_value);
    transparent_crc(p_2312->g_1474.w, "p_2312->g_1474.w", print_hash_value);
    transparent_crc(p_2312->g_1535.x, "p_2312->g_1535.x", print_hash_value);
    transparent_crc(p_2312->g_1535.y, "p_2312->g_1535.y", print_hash_value);
    transparent_crc(p_2312->g_1535.z, "p_2312->g_1535.z", print_hash_value);
    transparent_crc(p_2312->g_1543, "p_2312->g_1543", print_hash_value);
    transparent_crc(p_2312->g_1590.x, "p_2312->g_1590.x", print_hash_value);
    transparent_crc(p_2312->g_1596.x, "p_2312->g_1596.x", print_hash_value);
    transparent_crc(p_2312->g_1596.y, "p_2312->g_1596.y", print_hash_value);
    transparent_crc(p_2312->g_1596.z, "p_2312->g_1596.z", print_hash_value);
    transparent_crc(p_2312->g_1597.x, "p_2312->g_1597.x", print_hash_value);
    transparent_crc(p_2312->g_1597.y, "p_2312->g_1597.y", print_hash_value);
    transparent_crc(p_2312->g_1597.z, "p_2312->g_1597.z", print_hash_value);
    transparent_crc(p_2312->g_1598.x, "p_2312->g_1598.x", print_hash_value);
    transparent_crc(p_2312->g_1598.y, "p_2312->g_1598.y", print_hash_value);
    transparent_crc(p_2312->g_1599.x, "p_2312->g_1599.x", print_hash_value);
    transparent_crc(p_2312->g_1599.y, "p_2312->g_1599.y", print_hash_value);
    transparent_crc(p_2312->g_1599.z, "p_2312->g_1599.z", print_hash_value);
    transparent_crc(p_2312->g_1627.x, "p_2312->g_1627.x", print_hash_value);
    transparent_crc(p_2312->g_1627.y, "p_2312->g_1627.y", print_hash_value);
    transparent_crc(p_2312->g_1627.z, "p_2312->g_1627.z", print_hash_value);
    transparent_crc(p_2312->g_1637.x, "p_2312->g_1637.x", print_hash_value);
    transparent_crc(p_2312->g_1637.y, "p_2312->g_1637.y", print_hash_value);
    transparent_crc(p_2312->g_1638.x, "p_2312->g_1638.x", print_hash_value);
    transparent_crc(p_2312->g_1643.x, "p_2312->g_1643.x", print_hash_value);
    transparent_crc(p_2312->g_1643.y, "p_2312->g_1643.y", print_hash_value);
    transparent_crc(p_2312->g_1643.z, "p_2312->g_1643.z", print_hash_value);
    transparent_crc(p_2312->g_1679.x, "p_2312->g_1679.x", print_hash_value);
    transparent_crc(p_2312->g_1679.y, "p_2312->g_1679.y", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        transparent_crc(p_2312->g_1698[i], "p_2312->g_1698[i]", print_hash_value);

    }
    transparent_crc(p_2312->g_1724.x, "p_2312->g_1724.x", print_hash_value);
    transparent_crc(p_2312->g_1724.y, "p_2312->g_1724.y", print_hash_value);
    transparent_crc(p_2312->g_1724.z, "p_2312->g_1724.z", print_hash_value);
    transparent_crc(p_2312->g_1724.w, "p_2312->g_1724.w", print_hash_value);
    transparent_crc(p_2312->g_1725.x, "p_2312->g_1725.x", print_hash_value);
    transparent_crc(p_2312->g_1725.y, "p_2312->g_1725.y", print_hash_value);
    transparent_crc(p_2312->g_1725.z, "p_2312->g_1725.z", print_hash_value);
    transparent_crc(p_2312->g_1726.x, "p_2312->g_1726.x", print_hash_value);
    transparent_crc(p_2312->g_1726.y, "p_2312->g_1726.y", print_hash_value);
    transparent_crc(p_2312->g_1726.z, "p_2312->g_1726.z", print_hash_value);
    transparent_crc(p_2312->g_1726.w, "p_2312->g_1726.w", print_hash_value);
    transparent_crc(p_2312->g_1761.x, "p_2312->g_1761.x", print_hash_value);
    transparent_crc(p_2312->g_1761.y, "p_2312->g_1761.y", print_hash_value);
    transparent_crc(p_2312->g_1769.x, "p_2312->g_1769.x", print_hash_value);
    transparent_crc(p_2312->g_1769.y, "p_2312->g_1769.y", print_hash_value);
    transparent_crc(p_2312->g_1798.x, "p_2312->g_1798.x", print_hash_value);
    transparent_crc(p_2312->g_1799.x, "p_2312->g_1799.x", print_hash_value);
    transparent_crc(p_2312->g_1800.x, "p_2312->g_1800.x", print_hash_value);
    transparent_crc(p_2312->g_1800.y, "p_2312->g_1800.y", print_hash_value);
    transparent_crc(p_2312->g_1800.z, "p_2312->g_1800.z", print_hash_value);
    transparent_crc(p_2312->g_1802.x, "p_2312->g_1802.x", print_hash_value);
    transparent_crc(p_2312->g_1802.y, "p_2312->g_1802.y", print_hash_value);
    transparent_crc(p_2312->g_1807.x, "p_2312->g_1807.x", print_hash_value);
    transparent_crc(p_2312->g_1807.y, "p_2312->g_1807.y", print_hash_value);
    transparent_crc(p_2312->g_1807.z, "p_2312->g_1807.z", print_hash_value);
    transparent_crc(p_2312->g_1807.w, "p_2312->g_1807.w", print_hash_value);
    transparent_crc(p_2312->g_1811.x, "p_2312->g_1811.x", print_hash_value);
    transparent_crc(p_2312->g_1813.x, "p_2312->g_1813.x", print_hash_value);
    transparent_crc(p_2312->g_1848.x, "p_2312->g_1848.x", print_hash_value);
    transparent_crc(p_2312->g_1883.x, "p_2312->g_1883.x", print_hash_value);
    transparent_crc(p_2312->g_1883.y, "p_2312->g_1883.y", print_hash_value);
    transparent_crc(p_2312->g_1883.z, "p_2312->g_1883.z", print_hash_value);
    transparent_crc(p_2312->g_1919.x, "p_2312->g_1919.x", print_hash_value);
    transparent_crc(p_2312->g_1919.y, "p_2312->g_1919.y", print_hash_value);
    transparent_crc(p_2312->g_1919.z, "p_2312->g_1919.z", print_hash_value);
    transparent_crc(p_2312->g_1919.w, "p_2312->g_1919.w", print_hash_value);
    transparent_crc(p_2312->g_1956.x, "p_2312->g_1956.x", print_hash_value);
    transparent_crc(p_2312->g_1956.y, "p_2312->g_1956.y", print_hash_value);
    transparent_crc(p_2312->g_1956.z, "p_2312->g_1956.z", print_hash_value);
    transparent_crc(p_2312->g_2001.x, "p_2312->g_2001.x", print_hash_value);
    transparent_crc(p_2312->g_2001.y, "p_2312->g_2001.y", print_hash_value);
    transparent_crc(p_2312->g_2030.x, "p_2312->g_2030.x", print_hash_value);
    transparent_crc(p_2312->g_2045.x, "p_2312->g_2045.x", print_hash_value);
    transparent_crc(p_2312->g_2045.y, "p_2312->g_2045.y", print_hash_value);
    transparent_crc(p_2312->g_2045.z, "p_2312->g_2045.z", print_hash_value);
    transparent_crc(p_2312->g_2045.w, "p_2312->g_2045.w", print_hash_value);
    transparent_crc(p_2312->g_2064, "p_2312->g_2064", print_hash_value);
    transparent_crc(p_2312->g_2075, "p_2312->g_2075", print_hash_value);
    transparent_crc(p_2312->g_2083, "p_2312->g_2083", print_hash_value);
    transparent_crc(p_2312->g_2106.x, "p_2312->g_2106.x", print_hash_value);
    transparent_crc(p_2312->g_2106.y, "p_2312->g_2106.y", print_hash_value);
    transparent_crc(p_2312->g_2199.x, "p_2312->g_2199.x", print_hash_value);
    transparent_crc(p_2312->g_2199.y, "p_2312->g_2199.y", print_hash_value);
    transparent_crc(p_2312->g_2199.z, "p_2312->g_2199.z", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

