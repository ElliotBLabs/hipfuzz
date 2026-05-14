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
// Seed: 3323536584

/* --- Struct/Union Declarations --- */
// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ int16_t hip_const_1;
__constant__ uint8_t hip_const_2;
__constant__ int32_t hip_const_3;
__constant__ uint8_t hip_const_4;
__constant__ int16_t hip_const_5;
__constant__ uint16_t hip_const_6[10];
__constant__ int8_t hip_const_7;
__constant__ uint16_t hip_const_8;
__constant__ uint16_t hip_const_9;
__constant__ int16_t hip_const_10;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        int16_t host_hip_const_1 = 3L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint8_t host_hip_const_2 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        int32_t host_hip_const_3 = 5L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        uint8_t host_hip_const_4 = 0xDDL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        int16_t host_hip_const_5 = 0L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        uint16_t host_hip_const_6[10] = {0xA9EFL, 65535UL, 0xA9EFL, 65535UL, 0xA9EFL, 65535UL, 0xA9EFL, 65535UL, 0xA9EFL, 65535UL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        int8_t host_hip_const_7 = 1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        uint16_t host_hip_const_8 = 65531UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        uint16_t host_hip_const_9 = 65528UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        int16_t host_hip_const_10 = 0xE2BBL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
}

struct S0 {
    uint32_t g_15;
    int2 g_16;
    int32_t g_18;
    int32_t g_29[10];
    uint1 g_66;
    int3 g_67;
    ulong2 g_76;
    uint2 g_88;
    ulong3 g_102;
    ulong2 g_103;
    int32_t *g_121;
    int32_t **g_120;
    long2 g_153;
    uint32_t *g_238[6][6][7];
    int16_t *g_250;
    int2 g_272;
    int32_t g_280;
    uint1 g_283;
    uchar2 g_319;
    uint4 g_320;
    uint8_t g_335[3];
    int4 g_359;
    uint64_t *g_376;
    uint64_t **g_381;
    int32_t g_402;
    ulong2 g_420;
    uchar3 g_429;
    uint32_t *g_437;
    char1 g_455;
    int4 g_459;
    uint32_t *g_472;
    ulong1 g_475;
    char1 g_493;
    uint4 g_504;
    uint8_t *g_569;
    uint8_t **g_568;
    char4 g_614;
    ushort2 g_617;
    long3 g_622;
    long1 g_630;
    ulong4 g_636;
    int64_t **g_664;
    int64_t ***g_663;
    int16_t **g_693;
    int16_t ***g_692;
    int16_t ****g_691;
    int32_t *g_703;
    ulong4 g_713;
    int4 g_743;
    char2 g_752;
    int32_t g_767;
    ulong4 g_829;
    ushort2 g_875;
    ushort2 g_889;
    uint64_t g_892;
    short4 g_913;
    uint8_t g_921;
    int64_t g_944;
    int32_t g_945;
    int32_t g_946;
    int32_t ***g_970;
    ushort4 g_982;
    ulong2 g_1029;
    char2 g_1043;
    int8_t *g_1059;
    int8_t **g_1058;
    ulong3 g_1076;
    uint1 g_1098;
    uint2 g_1110;
    int4 g_1114;
    char3 g_1150;
    int1 g_1151;
    uint16_t *g_1170;
    uint16_t **g_1169;
    ushort1 g_1183;
    uint32_t **g_1217;
    ushort3 g_1223;
    long1 g_1230;
    int2 g_1264;
    ulong4 g_1279;
    long3 g_1291;
    uint32_t g_1320;
    int1 g_1331;
    int1 g_1332;
    int1 g_1340;
    int1 g_1380;
    char3 g_1424;
    int32_t g_1441;
    uint3 g_1449;
    ushort4 g_1484;
    uchar2 g_1501;
    uchar3 g_1502;
    uint8_t **g_1609;
    char3 g_1613;
    int4 g_1654;
    uint32_t *g_1663;
    uint8_t g_1677;
    int2 g_1788;
    ushort3 g_1794;
    uint16_t ***g_1798;
    uint16_t ****g_1797;
    int64_t g_1856;
    int64_t *g_1896;
    int3 g_1898;
    int2 g_1915;
    char4 g_2004;
    uint2 g_2049;
    int3 g_2050;
    char4 g_2081;
    char1 g_2104;
    char1 g_2155;
    char2 g_2156;
    short2 g_2165;
    uint4 g_2194;
    int32_t g_2195;
    int32_t g_2204;
    char3 g_2249;
    ulong4 g_2256;
    ushort2 g_2342;
    int64_t g_2355[5];
    ushort3 g_2358;
    ushort1 g_2377;
    uint16_t g_2412;
    int8_t ****g_2423;
    int8_t g_2458;
    int64_t ****g_2465;
    int64_t *****g_2464[6];
    long1 g_2480;
    uint8_t g_2553;
    uint64_t ***g_2564;
    uint64_t ****g_2563;
    long4 g_2568;
    ushort4 g_2570;
    ushort3 g_2620;
    short4 g_2621;
    ushort1 g_2648;
    long3 g_2661;
    long1 g_2664;
    int32_t g_2672;
    short3 g_2698;
    uint64_t g_2705[7];
    long1 g_2735;
    int1 g_2737;
    uint32_t *g_2795;
    char1 g_2812;
    uint32_t g_2834;
    int8_t g_2840;
    int32_t g_2869[7][1][3];
    uint4 g_2884;
    uchar2 g_2920;
    int8_t g_2930;
    int1 g_2949;
    ulong4 g_2961;
    uint64_t g_2973;
    int16_t g_3006[3][2];
    int4 g_3029;
    uchar3 g_3041;
    uint16_t g_3042;
    short1 g_3103;
};


/* --- FORWARD DECLARATIONS --- */
__device__ int64_t  func_1(struct S0 * p_3133);
__device__ int8_t  func_2(int32_t  p_3, uint32_t  p_4, uint16_t  p_5, uint32_t  p_6, struct S0 * p_3133);
__device__ uint32_t  func_8(uint32_t  p_9, struct S0 * p_3133);
__device__ uint8_t  func_23(int32_t  p_24, struct S0 * p_3133);
__device__ int32_t  func_30(uint8_t  p_31, uint32_t  p_32, uint32_t  p_33, int32_t  p_34, struct S0 * p_3133);
__device__ int16_t  func_39(uint32_t * p_40, int16_t  p_41, uint8_t  p_42, int32_t * p_43, struct S0 * p_3133);
__device__ int16_t  func_45(uint32_t  p_46, int16_t * p_47, int16_t  p_48, struct S0 * p_3133);
__device__ int32_t * func_49(int16_t * p_50, uint32_t * p_51, uint32_t * p_52, int32_t  p_53, int16_t  p_54, struct S0 * p_3133);
__device__ uint32_t * func_57(uint16_t  p_58, struct S0 * p_3133);
__device__ int32_t  func_59(uint8_t  p_60, uint32_t  p_61, struct S0 * p_3133);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_6 hip_const_7 p_3133->g_16 p_3133->g_18 p_3133->g_15 p_3133->g_29 hip_const_4 hip_const_10 p_3133->g_66 p_3133->g_67 hip_const_8 p_3133->g_76 p_3133->g_88 p_3133->g_102 p_3133->g_103 p_3133->g_120 hip_const_3 hip_const_5 hip_const_1 p_3133->g_153 hip_const_2 hip_const_9 p_3133->g_238 p_3133->g_272 p_3133->g_280 p_3133->g_283 p_3133->g_250 p_3133->g_121 p_3133->g_319 p_3133->g_320 p_3133->g_359 p_3133->g_376 p_3133->g_381 p_3133->g_402 p_3133->g_420 p_3133->g_429 p_3133->g_455 p_3133->g_459 p_3133->g_335 p_3133->g_568 p_3133->g_504 p_3133->g_569 p_3133->g_614 p_3133->g_617 p_3133->g_622 p_3133->g_630 p_3133->g_636 p_3133->g_691 p_3133->g_692 p_3133->g_693 p_3133->g_767 p_3133->g_829 p_3133->g_892 p_3133->g_1058 p_3133->g_946 p_3133->g_1059 p_3133->g_945 p_3133->g_713 p_3133->g_1114 p_3133->g_1169 p_3133->g_1043 p_3133->g_1183 p_3133->g_1291 p_3133->g_664 p_3133->g_1320 p_3133->g_1331 p_3133->g_1332 p_3133->g_1441 p_3133->g_1797 p_3133->g_1856 p_3133->g_944 p_3133->g_1663 p_3133->g_1230 p_3133->g_970 p_3133->g_1380 p_3133->g_1029 p_3133->g_2194 p_3133->g_2195 p_3133->g_2204 p_3133->g_2165 p_3133->g_1609 p_3133->g_1915 p_3133->g_2249 p_3133->g_2256 p_3133->g_2412 p_3133->g_2464 p_3133->g_2553 p_3133->g_875 p_3133->g_2648 p_3133->g_2661 p_3133->g_2664 p_3133->g_2672 p_3133->g_2698 p_3133->g_2735 p_3133->g_2737 p_3133->g_2564 p_3133->g_2795 p_3133->g_2812 p_3133->g_2840 p_3133->g_1898 p_3133->g_921 p_3133->g_2869 p_3133->g_2458 p_3133->g_2973 p_3133->g_2920 p_3133->g_3041 p_3133->g_3042 p_3133->g_2930 p_3133->g_3103 p_3133->g_2358 p_3133->g_2004
 * writes: p_3133->g_15 p_3133->g_18 p_3133->g_29 p_3133->g_67 p_3133->g_16 p_3133->g_102 p_3133->g_120 p_3133->g_250 p_3133->g_121 p_3133->g_153 p_3133->g_272 p_3133->g_335 p_3133->g_381 p_3133->g_437 p_3133->g_280 p_3133->g_472 p_3133->g_429 p_3133->g_402 p_3133->g_663 p_3133->g_459 p_3133->g_455 p_3133->g_703 p_3133->g_617 p_3133->g_892 p_3133->g_946 p_3133->g_767 p_3133->g_713 p_3133->g_359 p_3133->g_1058 p_3133->g_614 p_3133->g_664 p_3133->g_1217 p_3133->g_945 p_3133->g_1043 p_3133->g_743 p_3133->g_1059 p_3133->g_944 p_3133->g_630 p_3133->g_1441 p_3133->g_1320 p_3133->g_1797 p_3133->g_1380 p_3133->g_752 p_3133->g_1029 p_3133->g_420 p_3133->g_2165 p_3133->g_970 p_3133->g_1114 p_3133->g_1915 p_3133->g_2195 p_3133->g_2412 p_3133->g_921 p_3133->g_76 p_3133->g_2553 p_3133->g_1264 p_3133->g_1331 p_3133->g_875 p_3133->g_1223 p_3133->g_2705 p_3133->g_1798 p_3133->g_1613 p_3133->g_2834 p_3133->g_2355 p_3133->g_1856 p_3133->g_1898 p_3133->g_2458 p_3133->g_2973 p_3133->g_2920 p_3133->g_319 p_3133->g_2930 p_3133->g_2869 p_3133->g_2570 p_3133->g_3006
 */
__device__ int64_t  func_1(struct S0 * p_3133)
{ /* block id: 0 */
    int32_t l_7 = 0xBBE56890L;
    uint32_t *l_14 = &p_3133->g_15;
    int64_t *l_3092[5][4][8] = {{{nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}}, {{nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}}, {{nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}}, {{nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}}, {{nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}, {nullptr, &p_3133->g_1856, &p_3133->g_2355[0], nullptr, nullptr, nullptr, &p_3133->g_2355[1], nullptr}}};
    int1 l_3093 = make_int1(0L);
    __shared__ int32_t *l_3094;
    l_3094 = nullptr;
    int32_t l_3095 = 0x16A5EB9CL;
    uint64_t l_3100 = 0x9A46A0BF27B4B51BLL;
    int16_t *l_3104 = &p_3133->g_3006[0][1];
    int32_t l_3112 = 0x950AB9CDL;
    uint8_t *l_3113 = &hip_const_4;
    __shared__ uint8_t *l_3114;
    l_3114 = &p_3133->g_2553;
    uint32_t l_3130 = 0x530E78C3L;
    int i, j, k;
    l_3095 = ((l_3093.x = (((func_2(l_7, func_8(((*l_14) = ((safe_rshift_func_uint64_t_u_s((safe_mod_func_uint64_t_u_u(hip_const_6[1], (l_7 , hip_const_6[1]))), 56)) | hip_const_7)), p_3133), l_7, (l_7 , (safe_rshift_func_int16_t_s_s(0x6211L, l_7))), p_3133) , l_7) == (-1L)) | l_7)) | l_7);
    p_3133->g_16.y |= (((safe_mul_func_uint16_t_u_u((safe_div_func_int16_t_s_s((l_3093.x , (((l_3100 >= ((0x24B0L || l_3100) , ((safe_sub_func_int8_t_s_s((l_3095 >= ((*l_3104) = ((make_short1(p_3133->g_3103.x) & make_short1(0xA8E6L))).x)), (((**p_3133->g_568) = 249UL) || ((*l_3114) = ((safe_mod_func_uint8_t_u_u(((*p_3133->g_569) = (!((safe_unary_minus_func_uint64_t_u((((l_3095 , ((((safe_mul_func_uint32_t_u_u(l_7, (safe_lshift_func_uint16_t_u_u(l_3100, 9)))) , (*p_3133->g_1059)) <= 0xC0L) | l_3112)) , p_3133->g_2358.x) & 0x4C546E932DE3D01BLL))) , (**p_3133->g_568)))), l_3095)) >= l_3093.x))))) == l_7))) , p_3133->g_2004.y) , 5L)), 3L)), 0xD53AL)) > 65535UL) , l_3100);
    for (p_3133->g_892 = 0; (p_3133->g_892 >= 4); p_3133->g_892 = safe_add_func_uint16_t_u_u(p_3133->g_892, 7))
    { /* block id: 1240 */
        __shared__ int32_t *l_3117;
        l_3117 = nullptr;
        int32_t l_3118 = 0xC3F7F5C3L;
        int32_t *l_3119 = nullptr;
        int32_t *l_3120 = &l_3118;
        __shared__ int32_t *l_3121;
        l_3121 = nullptr;
        int32_t l_3122 = 0x1673CDD8L;
        int32_t *l_3123 = nullptr;
        int32_t *l_3124 = &l_3095;
        __shared__ int32_t *l_3125;
        l_3125 = nullptr;
        int32_t *l_3126 = &l_3095;
        int32_t *l_3127 = &p_3133->g_29[2];
        int32_t *l_3128[10][4][6] = {{{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}, {{nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}, {nullptr, nullptr, &l_3118, nullptr, &l_3122, nullptr}}};
        int64_t l_3129 = 4L;
        int i, j, k;
        --l_3130;
    }
    return l_3100;
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_280 p_3133->g_1898 p_3133->g_2869 p_3133->g_568 p_3133->g_569 p_3133->g_693 p_3133->g_250 hip_const_5 hip_const_10 p_3133->g_921 p_3133->g_2458 p_3133->g_18 p_3133->g_2973 p_3133->g_2920 p_3133->g_1058 p_3133->g_1059 hip_const_7 p_3133->g_3041 p_3133->g_3042 p_3133->g_2412 p_3133->g_1291 p_3133->g_335 p_3133->g_2930 p_3133->g_2812 p_3133->g_1856 p_3133->g_2840 p_3133->g_692
 * writes: p_3133->g_1613 p_3133->g_121 p_3133->g_280 p_3133->g_1898 p_3133->g_921 p_3133->g_335 p_3133->g_2834 p_3133->g_2412 p_3133->g_18 p_3133->g_2458 p_3133->g_2973 p_3133->g_2920 p_3133->g_319 p_3133->g_2930 p_3133->g_946 p_3133->g_2869 p_3133->g_944 p_3133->g_2570 p_3133->g_2355 p_3133->g_1856
 */
__device__ int8_t  func_2(int32_t  p_3, uint32_t  p_4, uint16_t  p_5, uint32_t  p_6, struct S0 * p_3133)
{ /* block id: 1081 */
    int32_t *l_2799 = nullptr;
    int32_t *l_2800 = nullptr;
    int32_t *l_2801 = nullptr;
    __shared__ int32_t *l_2802;
    l_2802 = &p_3133->g_280;
    int32_t *l_2803 = &p_3133->g_280;
    int32_t *l_2804 = nullptr;
    int32_t *l_2805[9] = {&p_3133->g_29[9], &p_3133->g_29[9], nullptr, &p_3133->g_29[9], &p_3133->g_29[9], nullptr, &p_3133->g_29[9], &p_3133->g_29[9], nullptr};
    uint32_t l_2806 = 18446744073709551608UL;
    int32_t l_2835 = 0xA8081B3FL;
    int64_t *l_2836 = nullptr;
    int64_t *l_2837 = &p_3133->g_2355[2];
    __shared__ int64_t *l_2838;
    l_2838 = nullptr;
    __shared__ int64_t *l_2839;
    l_2839 = &p_3133->g_1856;
    int8_t *l_2841 = nullptr;
    int8_t *l_2842 = nullptr;
    int8_t *l_2843[4][2] = {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}};
    uint32_t l_2845[8][10] = {{3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}, {3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}, {3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}, {3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}, {3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}, {3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}, {3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}, {3UL, 0x026E5A4CL, 8UL, 0xF40B9AF2L, 0x438B562AL, 0xE24B18DDL, 0UL, 0xB97B7C77L, 8UL, 0xB97B7C77L}};
    long4 l_2850 = make_long4(0x156E6116DABCBD59LL, 3L, 0x156E6116DABCBD59LL, 3L);
    int1 l_2855 = make_int1(6L);
    uint32_t l_2872 = 0x7FEE97DAL;
    int3 l_2900 = make_int3(0x47947871L, 5L, 0x47947871L);
    uchar2 l_2919 = make_uchar2(248UL, 0x3EL);
    int8_t *****l_2948 = nullptr;
    ulong1 l_2962 = make_ulong1(18446744073709551607UL);
    uint8_t ***l_2972 = &p_3133->g_568;
    uint8_t ****l_2971[5][5];
    int16_t *****l_2974 = &p_3133->g_691;
    int4 l_3047 = make_int4((-4L), (-4L), (-4L), (-4L));
    uint16_t ****l_3079[10][8][3] = {{{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}, {{nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}, {nullptr, &p_3133->g_1798, &p_3133->g_1798}}};
    __shared__ int32_t l_3090;
    l_3090 = 0x3BCEADB6L;
    int8_t l_3091[1];
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
            l_2971[i][j] = &l_2972;
    }
    for (i = 0; i < 1; i++)
        l_3091[i] = (-1L);
    --l_2806;
    if ((safe_unary_minus_func_int8_t_s((p_3133->g_1613.z = ((safe_sub(make_char4(make_char2(p_3133->g_2812.x, p_3133->g_2812.x).y, (safe_add_func_uint32_t_u_u((safe_unary_minus_func_int32_t_s((((safe_mod_func_int16_t_s_s((~((safe_sub_func_int8_t_s_s((**p_3133->g_1058), (safe_lshift_func_uint64_t_u_s(((safe_add_func_int64_t_s_s(((*l_2839) ^= (safe_mul_func_int64_t_s_s(p_4, (p_6 || (0x6FF78AB2AE4D1B53LL != ((*l_2837) = ((make_long2(make_long4((4294967295UL <= make_uint4(((p_3133->g_2834 = ((p_3 <= ((safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(p_5, (p_4 , ((((*l_2802) ^= ((make_uchar2(((safe_mul_func_uint8_t_u_u((p_4 ^ p_3), (**p_3133->g_1058))) <= p_5), 0UL) ^ make_uchar2(248UL, 248UL))).x) || (**p_3133->g_1058)) ^ 1UL)))), p_5)) , (*l_2803)), 0xA668053C48AF356CLL)) , p_6)) >= p_5)) , p_3), 0UL, 4294967291UL, 4294967291UL).z), (-9L), l_2835, 0x548EBAEFDC5C54D9LL).w, 1L) & make_long2((-1L), (-1L)))).y)))))), 0L)) & p_3133->g_2840), p_6)))) , (***p_3133->g_692))), p_4)) && p_6) && (*p_3133->g_569)))), p_4)), (-8L), p_5), make_char4(0x80L, 0x80L, 0x80L, 0x80L)))).w))))
    { /* block id: 1088 */
        int32_t **l_2844 = &p_3133->g_121;
        (*l_2844) = &p_3;
        return p_6;
    }
    else
    { /* block id: 1091 */
lbl_3080:
        l_2845[5][8] |= (*l_2802);
lbl_2939:
        p_3133->g_1898.x &= ((*l_2802) &= (safe_div_func_uint32_t_u_u(p_6, 0x2C11D5DDL)));
    }
    for (p_3133->g_921 = 0; (p_3133->g_921 <= 8); p_3133->g_921 += 1)
    { /* block id: 1098 */
        __shared__ uint32_t *l_2856;
        l_2856 = nullptr;
        __shared__ int32_t l_2864;
        l_2864 = 3L;
        ulong4 l_2865 = make_ulong4(0UL, 0xAB212D44B4E98B85LL, 0UL, 0xAB212D44B4E98B85LL);
        int1 l_2873 = make_int1(8L);
        int32_t l_2891[10][9][2] = {{{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}, {{(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}, {(-1L), (-1L)}}};
        ushort2 l_2914 = make_ushort2(0x9CE9L, 65535UL);
        __shared__ int8_t ***l_2986;
        l_2986 = &p_3133->g_1058;
        int16_t l_3005[8] = {0xEA0EL, 4L, 0xEA0EL, 4L, 0xEA0EL, 4L, 0xEA0EL, 4L};
        int32_t *l_3007 = nullptr;
        uint64_t ***l_3014[2][1][6] = {{{&p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381}}, {{&p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381}}};
        uint32_t l_3040 = 2UL;
        ushort2 l_3066 = make_ushort2(0x5ACBL, 0x2117L);
        int i, j, k;
        if ((safe_lshift_func_int64_t_s_u(make_long4(l_2850.w, l_2850.w, l_2850.w, l_2850.w).x, (+p_4))))
        { /* block id: 1099 */
            uint16_t l_2863[7][10][3] = {{{1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}}, {{1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}}, {{1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}}, {{1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}}, {{1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}}, {{1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}}, {{1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}, {1UL, 0x3D24L, 65526UL}}};
            uint32_t **l_2868 = &p_3133->g_1663;
            char2 l_2885 = make_char2(0x27L, 2L);
            uint32_t *l_2892 = nullptr;
            uint32_t *l_2893 = nullptr;
            uint32_t *l_2894 = nullptr;
            uint32_t *l_2895 = &p_3133->g_2834;
            int32_t l_2940 = 0x09AEFF0DL;
            int32_t l_2942 = 0L;
            int32_t **l_2965 = nullptr;
            __shared__ uint8_t ***l_2969;
            l_2969 = &p_3133->g_568;
            uint8_t ****l_2968 = &l_2969;
            __shared__ uint8_t *****l_2970;
            l_2970 = &l_2968;
            uint64_t *l_3001[2][9][8] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
            int64_t l_3039 = 0x006B2A927E7A7666LL;
            int i, j, k;
            p_3 = ((safe_mod_func_uint64_t_u_u((0UL & ((safe_div_func_uint32_t_u_u(((((((make_int2(2L, ((((make_int1(3L) | make_int1(l_2855.x))) & make_int1(0xE4066A9BL))).x) ^ make_int2(1L, make_int3(0L, 6L, (((l_2856 != ((*l_2868) = (((safe_lshift_func_int16_t_s_u(((((make_uchar4(p_4, (safe_sub_func_int64_t_s_s(0x71FB0EDE4BCDE560LL, ((((safe_div_func_uint64_t_u_u((l_2863[5][2][2] > l_2864), make_ulong4(l_2865.x, l_2865.x, l_2865.x, l_2865.x).y)) , (safe_lshift_func_int32_t_s_s((!((0x44L > (*p_3133->g_569)) == ((((0xF5B5F7486F93AFC8LL || l_2865.x) && (***p_3133->g_692)) >= p_5) || 0L))), 3))) , 249UL) && 1UL))), 254UL, 0x85L) & make_uchar4(248UL, 248UL, 248UL, 248UL))).x & p_3) ^ (**p_3133->g_568)), 7)) ^ p_4) , nullptr))) , p_6) | p_6)).y))) ^ make_int2(2L, 2L))).x , p_6) != p_5), p_6)) , 1L)), 0x59EE217BC5E66456LL)) && p_3133->g_2869[1][0][2]);
            if ((safe_div_func_uint16_t_u_u(l_2872, (make_int2(make_int4(l_2873.x, l_2873.x, l_2873.x, l_2873.x).y, 0xEF166497L).y | (p_4 < ((*l_2895) = (safe_mul_func_int32_t_s_s((safe_sub_func_uint16_t_u_u((p_3 , (safe_lshift_func_int64_t_s_s((((l_2891[5][0][0] &= (((((safe_mul_func_int16_t_s_s(l_2865.z, 4L)) , (safe_div_func_uint8_t_u_u(((**p_3133->g_568) = (((+make_uint4(p_3133->g_2884.y, p_3133->g_2884.y, p_3133->g_2884.y, p_3133->g_2884.y).x) , (p_6 || 0x5273L)) & p_5)), make_char3(l_2885.y, l_2885.y, l_2885.y).x))) <= ((*l_2802) |= ((((safe_unary_minus_func_uint8_t_u((safe_lshift_func_int8_t_s_u((((safe_lshift(make_uchar4(l_2864, 1UL, 253UL, 6UL), make_uchar4(8, 8, 8, 8)))).z , p_4), p_6)))) , 18446744073709551611UL) , p_5) , l_2873.x))) ^ l_2863[5][5][2]) | p_4)) , 1L) ^ p_3), l_2864))), p_4)), p_6))))))))
            { /* block id: 1106 */
                int1 l_2901 = make_int1(5L);
                int64_t l_2926 = 0x2FEFC5E77807D27FLL;
                int32_t l_2938[6] = {0x94079539L, 0x94079539L, 0xCA0136E9L, 0x94079539L, 0x94079539L, 0xCA0136E9L};
                int i;
                for (p_3133->g_2412 = (-6); (p_3133->g_2412 <= 52); p_3133->g_2412++)
                { /* block id: 1109 */
                    uint32_t l_2925 = 0x817C051BL;
                    uint8_t *l_2927 = nullptr;
                    uint8_t *l_2928 = nullptr;
                    int32_t l_2929 = 0L;
                    uint16_t *l_2931 = &hip_const_6[1];
                    uint16_t *l_2932 = &hip_const_9;
                    uint16_t *l_2933 = &hip_const_6[2];
                    __shared__ uint16_t *l_2934;
                    l_2934 = nullptr;
                    uint16_t *l_2935 = &hip_const_6[0];
                    __shared__ uint16_t *l_2936;
                    l_2936 = &hip_const_6[1];
                    uint16_t *l_2937 = &hip_const_6[1];
                    int32_t l_2941 = 0xC0D72DC2L;
                    int32_t l_2943 = 8L;
                    int32_t l_2944 = (-1L);
                    __shared__ uint16_t l_2945;
                    l_2945 = 0xDCC3L;
                    l_2901.x = ((safe_sub(make_int3(l_2900.y, l_2900.y, l_2900.y), ((make_int3(l_2901.x, l_2901.x, l_2901.x) ^ make_int3(1L, ((p_5 & (l_2938[1] = (((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s((p_6 < (-8L)), ((l_2929 = (((++(*p_3133->g_569)) >= ((((safe_div_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u(make_ushort2(l_2914.x, l_2914.x).x, (***p_3133->g_692))) || (((*l_2839) = 0L) > (safe_add_func_uint8_t_u_u(((((((make_uchar3(l_2919.y, l_2919.y, l_2919.y) | ((~make_uchar3(p_3133->g_2920.x, p_3133->g_2920.x, p_3133->g_2920.x))))).z ^ (safe_div_func_uint32_t_u_u(((safe_add_func_uint8_t_u_u((l_2925 < (+p_4)), 0UL)) != (l_2926 = 0x9BC8EC5E1057FA98LL)), l_2864))) >= l_2914.x) <= 0xD75DCE6BL) | 0L), l_2925)))) != 0x152028CAL), 5)), p_6)) | p_6) & (**p_3133->g_693)) >= 0xF6L)) != p_3)) <= (-2L)))), p_5)) | p_3133->g_2930) , 65533UL))) >= l_2925), 0x6EC79F14L)))))).z;
                    if (p_3)
                        goto lbl_2939;
                    --l_2945;
                    l_2948 = l_2948;
                }
                (*l_2803) &= make_int3(p_3133->g_2949.x, p_3133->g_2949.x, p_3133->g_2949.x).y;
            }
            else
            { /* block id: 1121 */
                int32_t **l_2950 = &l_2800;
                (*l_2950) = &l_2891[5][0][0];
                for (l_2942 = 0; (l_2942 > 25); l_2942 = safe_add_func_uint32_t_u_u(l_2942, 6))
                { /* block id: 1125 */
                    l_2873.x = (**l_2950);
                    for (l_2864 = 0; (l_2864 != (-12)); --l_2864)
                    { /* block id: 1129 */
                        if ((**l_2950))
                            break;
                        if (p_5)
                            continue;
                        p_3 ^= (0x7A0DB20583C7A079LL < ((safe_lshift(make_ulong4(0UL, 7UL, ((safe_sub(make_ulong2(1UL, p_5), ((safe_add(make_ulong2(p_3133->g_2961.x, p_3133->g_2961.x), make_ulong2(l_2962.x, l_2962.x))))))).y, make_ulong4(0UL, 0x273FF07ABDB10223LL, 3UL, 18446744073709551610UL).w), make_ulong4(64, 64, 64, 64)))).z);
                    }
                }
                (**l_2950) = (safe_rshift_func_int16_t_s_s((nullptr != &p_3133->g_1609), (**p_3133->g_693)));
            }
            l_2805[p_3133->g_921] = &p_3;
            if ((safe_rshift_func_int32_t_s_s((((*l_2970) = l_2968) == (p_6 , l_2971[2][2])), 17)))
            { /* block id: 1139 */
                __shared__ uint32_t **l_2977;
                l_2977 = &p_3133->g_472;
                short4 l_3002 = make_short4(0x7A59L, 0x4FC3L, 0x7A59L, 0x4FC3L);
                int i;
                for (p_3133->g_18 = 0; (p_3133->g_18 <= 1); p_3133->g_18 += 1)
                { /* block id: 1142 */
                    int i;
                    for (p_3133->g_2458 = 1; (p_3133->g_2458 >= 0); p_3133->g_2458 -= 1)
                    { /* block id: 1145 */
                        int i, j, k;
                        if (l_2891[(p_3133->g_2458 + 2)][p_3133->g_921][p_3133->g_18])
                            break;
                        return p_3133->g_2973;
                    }
                    (*l_2802) &= make_int1(((nullptr == l_2974) || (safe_lshift_func_uint64_t_u_u((l_2977 != &p_3133->g_437), 27)))).x;
                    for (p_3133->g_2973 = 0; (p_3133->g_2973 <= 5); p_3133->g_2973 += 1)
                    { /* block id: 1152 */
                        return l_2891[5][0][0];
                    }
                    (*l_2802) = (safe_div_func_uint8_t_u_u((p_3133->g_319.y = (safe_lshift_func_int64_t_s_u((safe_sub_func_uint8_t_u_u((p_3133->g_2920.x ^= (((l_2873.x = (l_2986 == nullptr)) || (make_short3((&p_3133->g_1441 != &p_3133->g_767), 0x5F0AL, (-7L)).x && 0x5555L)) == (l_2891[5][0][0] = (((safe_lshift(((safe_mod(((safe_mod(((((safe_mod(make_short1((safe_sub_func_uint8_t_u_u(0x12L, (((safe_add_func_uint64_t_u_u((((((safe_rshift_func_int16_t_s_u((18446744073709551615UL < ((((((((***l_2969) = (((*p_3133->g_381) = l_3001[0][3][1]) != (((!make_short3(l_3002.x, l_3002.x, l_3002.x).y) || (safe_sub_func_int16_t_s_s(l_3002.z, 0x31F2L))) , l_3001[0][3][1]))) > p_3) >= p_4) , 0x719DD5D0L) , p_5) && (-4L)) , p_6)), 2)) == l_2865.z) , (*p_3133->g_569)) > l_3005[3]) && 0xE1B8L), p_3133->g_3006[0][1])) <= p_5) >= 1UL)))), make_short1(0x7C11L)))) & make_short1(4L))), make_short1(0xA94DL)))), make_short1(0x26E4L)))), make_short1(6L)))).x > l_3002.x)))), (**p_3133->g_1058))), 39))), p_6));
                    for (l_2942 = 5; (l_2942 >= 0); l_2942 -= 1)
                    { /* block id: 1164 */
                        __shared__ int32_t l_3008;
                        l_3008 = 0x7020BCCAL;
                        int16_t *****l_3013 = &p_3133->g_691;
                        uint64_t *l_3016[6][10][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
                        int32_t **l_3017 = &l_2805[p_3133->g_921];
                        int i, j, k;
                        l_2805[p_3133->g_921] = l_3007;
                        (*l_2803) ^= ((l_3008 = (p_5 = make_ushort1(0x442CL).x)) == 0x1318L);
                        (*l_3017) = ((safe_add_func_int32_t_s_s((safe_add_func_uint32_t_u_u(((nullptr == l_3013) , 0x51390125L), (l_3014[1][0][2] != nullptr))), (safe_unary_minus_func_int16_t_s(((p_5 , (l_3001[0][7][1] != l_3016[3][5][1])) , l_3002.x))))) , nullptr);
                    }
                }
                for (p_3 = 0; (p_3 > 16); p_3 = safe_add_func_int16_t_s_s(p_3, 3))
                { /* block id: 1174 */
                    int32_t **l_3020 = &l_3007;
                    (*l_3020) = nullptr;
                    return p_6;
                }
            }
            else
            { /* block id: 1178 */
                int32_t **l_3021 = nullptr;
                int32_t **l_3022 = &l_2805[p_3133->g_921];
                int16_t *l_3037 = nullptr;
                uint16_t *l_3038[10][4] = {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}};
                int i, j;
                (*l_3022) = &l_2864;
                p_3 = (((*l_2802) < ((safe_lshift_func_int32_t_s_u(((make_int4((l_3040 = ((safe_rshift_func_uint8_t_u_s(((safe_mod_func_int16_t_s_s(((make_int3(p_3133->g_3029.w, p_3133->g_3029.w, p_3133->g_3029.w).y > p_6) | (safe_unary_minus_func_uint8_t_u((p_4 > 1UL)))), (p_3133->g_875.x = (safe_rshift_func_uint8_t_u_s(((safe_lshift_func_uint32_t_u_s((((~make_uint3(((*l_2895) = (safe_sub_func_int64_t_s_s(0xDD2F08D55E26DD02LL, (((*p_3133->g_381) = nullptr) != nullptr)))), (((p_3133->g_3006[2][0] = (p_3 == (((l_2942 = 18446744073709551610UL) <= p_4) , p_5))) <= (-1L)) , p_6), p_5))).y < p_6), 13)) , 0x7CL), 5))))) >= l_3039), 0)) && p_5)), p_5, 0x28D2E7E3L, (-6L)).w , &p_3133->g_1059) != &p_3133->g_1059), 21)) , p_5)) > p_3133->g_3041.z);
                if (p_3133->g_3042)
                    continue;
            }
        }
        else
        { /* block id: 1189 */
            uint32_t l_3052 = 0xA371C596L;
            int32_t *l_3061 = nullptr;
            int64_t *l_3067 = &p_3133->g_2355[2];
            uint32_t *l_3085[5][8] = {{nullptr, &l_2845[3][1], nullptr, &p_3133->g_2834, nullptr, &p_3133->g_2834, nullptr, &l_2845[3][1]}, {nullptr, &l_2845[3][1], nullptr, &p_3133->g_2834, nullptr, &p_3133->g_2834, nullptr, &l_2845[3][1]}, {nullptr, &l_2845[3][1], nullptr, &p_3133->g_2834, nullptr, &p_3133->g_2834, nullptr, &l_2845[3][1]}, {nullptr, &l_2845[3][1], nullptr, &p_3133->g_2834, nullptr, &p_3133->g_2834, nullptr, &l_2845[3][1]}, {nullptr, &l_2845[3][1], nullptr, &p_3133->g_2834, nullptr, &p_3133->g_2834, nullptr, &l_2845[3][1]}};
            int64_t l_3086[5];
            __shared__ uint32_t l_3087;
            l_3087 = 1UL;
            int i, j;
            for (i = 0; i < 5; i++)
                l_3086[i] = 0x86D7C3A31819A8B0LL;
            for (p_3133->g_2930 = 0; (p_3133->g_2930 >= 27); p_3133->g_2930++)
            { /* block id: 1192 */
                uint16_t l_3057[3][3][1] = {{{65535UL}, {65535UL}, {65535UL}}, {{65535UL}, {65535UL}, {65535UL}}, {{65535UL}, {65535UL}, {65535UL}}};
                __shared__ int64_t *l_3069;
                l_3069 = nullptr;
                ulong4 l_3077 = make_ulong4(0xC14CC8509A9E33BCLL, 3UL, 0xC14CC8509A9E33BCLL, 3UL);
                int i, j, k;
                if (((((safe_mod(make_int2(l_3047.z, l_3047.z), make_int2(0L, 1L)))) ^ make_int2(0x36365DF7L, 0xCA1D9283L))).x)
                { /* block id: 1193 */
                    int64_t l_3055 = 0L;
                    int32_t l_3056[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_3056[i] = 0x27DE7F07L;
                    for (p_3133->g_946 = 0; (p_3133->g_946 >= 2); p_3133->g_946++)
                    { /* block id: 1196 */
                        int32_t **l_3050 = nullptr;
                        int32_t **l_3051 = &p_3133->g_121;
                        (*l_3051) = &p_3;
                        --l_3052;
                        l_3057[2][2][0]++;
                    }
                    for (p_3133->g_2412 = 0; (p_3133->g_2412 <= 0); p_3133->g_2412 += 1)
                    { /* block id: 1203 */
                        int i, j, k;
                        p_3133->g_2869[(p_3133->g_2412 + 6)][p_3133->g_2412][p_3133->g_2412] = (!(nullptr != &l_3014[1][0][2]));
                        if (p_3133->g_2869[(p_3133->g_2412 + 6)][p_3133->g_2412][(p_3133->g_2412 + 2)])
                            continue;
                    }
                }
                else
                { /* block id: 1207 */
                    int64_t **l_3068 = &l_2837;
                    int64_t **l_3070[4];
                    uint16_t *l_3071 = nullptr;
                    uint16_t *l_3072 = nullptr;
                    uint16_t *l_3073 = nullptr;
                    uint16_t *l_3074 = nullptr;
                    uint16_t *l_3075 = &l_3057[0][0][0];
                    __shared__ int32_t l_3076;
                    l_3076 = 0L;
                    char4 l_3078 = make_char4(0L, 0x8DL, 0L, 0x8DL);
                    int i;
                    for (i = 0; i < 4; i++)
                        l_3070[i] = &l_3069;
                    for (p_3133->g_944 = 1; (p_3133->g_944 >= 0); p_3133->g_944 -= 1)
                    { /* block id: 1210 */
                        int32_t **l_3060[6][2][9] = {{{&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}, {&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}}, {{&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}, {&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}}, {{&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}, {&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}}, {{&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}, {&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}}, {{&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}, {&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}}, {{&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}, {&l_2804, &l_2805[0], &l_3007, &l_2801, &l_2803, &l_3007, &l_2805[0], &l_2803, &l_3007}}};
                        int i, j, k;
                        l_3061 = &l_2835;
                    }
                    (*l_2803) = ((safe_lshift_func_int16_t_s_s(((safe_add_func_uint16_t_u_u((p_3133->g_2570.z = make_ushort1(make_ushort4(l_3066.x, l_3066.x, l_3066.x, l_3066.x).w).x), (((*l_3075) = (((*l_3068) = l_3067) == (l_2839 = l_3069))) ^ make_ushort2((p_6 , l_3076), 0x1576L).y))) & (p_5 = 0UL)), (make_ulong1(l_3077.w).x | p_6))) ^ (0x6AB4EBC78D1DFD53LL <= (p_3133->g_1291.x , ((+(((make_char2(l_3078.w, l_3078.w) & ((((make_char2((**p_3133->g_1058), p_4) ^ make_char2(0x73L, 0x73L))) ^ make_char2(0x12L, 0x12L))))).x <= (*p_3133->g_569))) == 1L))));
                }
                (*l_2803) = ((nullptr != l_3079[4][7][0]) ^ 0L);
                if (p_4)
                    break;
                if (p_6)
                    goto lbl_3080;
            }
            if (p_3133->g_2930)
                goto lbl_2939;
            (*l_2802) &= ((safe_mod_func_int8_t_s_s(0x5CL, 0x0EL)) & ((((l_3052 , nullptr) != ((((0UL >= p_6) > (safe_rshift_func_uint32_t_u_u((0x458468F316F3E539LL <= 1L), 29))) == (l_3087--)) , (l_3090 , &l_3067))) | 0x4F55L) , p_5));
            if (p_4)
                continue;
        }
    }
    return l_3091[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_16 p_3133->g_18 p_3133->g_15 p_3133->g_29 hip_const_4 hip_const_10 p_3133->g_66 p_3133->g_67 hip_const_8 p_3133->g_76 p_3133->g_88 p_3133->g_102 p_3133->g_103 hip_const_6 p_3133->g_120 hip_const_3 hip_const_5 hip_const_1 p_3133->g_153 hip_const_2 hip_const_9 p_3133->g_238 p_3133->g_272 p_3133->g_280 p_3133->g_283 p_3133->g_250 p_3133->g_121 p_3133->g_319 p_3133->g_320 p_3133->g_359 p_3133->g_376 p_3133->g_381 p_3133->g_402 p_3133->g_420 p_3133->g_429 p_3133->g_455 p_3133->g_459 p_3133->g_335 p_3133->g_568 p_3133->g_504 p_3133->g_569 p_3133->g_614 p_3133->g_617 p_3133->g_622 p_3133->g_630 p_3133->g_636 p_3133->g_691 p_3133->g_692 p_3133->g_693 p_3133->g_767 p_3133->g_829 p_3133->g_892 p_3133->g_1058 p_3133->g_946 p_3133->g_1059 hip_const_7 p_3133->g_945 p_3133->g_713 p_3133->g_1114 p_3133->g_1169 p_3133->g_1043 p_3133->g_1183 p_3133->g_1291 p_3133->g_664 p_3133->g_1320 p_3133->g_1331 p_3133->g_1332 p_3133->g_1441 p_3133->g_1797 p_3133->g_1856 p_3133->g_944 p_3133->g_1663 p_3133->g_1230 p_3133->g_970 p_3133->g_1380 p_3133->g_1029 p_3133->g_2194 p_3133->g_2195 p_3133->g_2204 p_3133->g_2165 p_3133->g_1609 p_3133->g_1915 p_3133->g_2249 p_3133->g_2256 p_3133->g_2412 p_3133->g_2464 p_3133->g_2553 p_3133->g_875 p_3133->g_2648 p_3133->g_2661 p_3133->g_2664 p_3133->g_2672 p_3133->g_2698 p_3133->g_2735 p_3133->g_2737 p_3133->g_2564 p_3133->g_2795
 * writes: p_3133->g_18 p_3133->g_29 p_3133->g_67 p_3133->g_15 p_3133->g_16 p_3133->g_102 p_3133->g_120 p_3133->g_250 p_3133->g_121 p_3133->g_153 p_3133->g_272 p_3133->g_335 p_3133->g_381 p_3133->g_437 p_3133->g_280 p_3133->g_472 p_3133->g_429 p_3133->g_402 p_3133->g_663 p_3133->g_459 p_3133->g_455 p_3133->g_703 p_3133->g_617 p_3133->g_892 p_3133->g_946 p_3133->g_767 p_3133->g_713 p_3133->g_359 p_3133->g_1058 p_3133->g_614 p_3133->g_664 p_3133->g_1217 p_3133->g_945 p_3133->g_1043 p_3133->g_743 p_3133->g_1059 p_3133->g_944 p_3133->g_630 p_3133->g_1441 p_3133->g_1320 p_3133->g_1797 p_3133->g_1380 p_3133->g_752 p_3133->g_1029 p_3133->g_420 p_3133->g_2165 p_3133->g_970 p_3133->g_1114 p_3133->g_1915 p_3133->g_2195 p_3133->g_2412 p_3133->g_921 p_3133->g_76 p_3133->g_2553 p_3133->g_1264 p_3133->g_1331 p_3133->g_875 p_3133->g_1223 p_3133->g_2705 p_3133->g_1798
 */
__device__ uint32_t  func_8(uint32_t  p_9, struct S0 * p_3133)
{ /* block id: 2 */
    __shared__ int32_t *l_17;
    l_17 = &p_3133->g_18;
    uint32_t *l_44[8] = {&p_3133->g_15, nullptr, &p_3133->g_15, nullptr, &p_3133->g_15, nullptr, &p_3133->g_15, nullptr};
    long3 l_2665 = make_long3(1L, 9L, 1L);
    int32_t ****l_2671 = &p_3133->g_970;
    int32_t **l_2677[10][5] = {{nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}, {nullptr, &p_3133->g_703, nullptr, &p_3133->g_703, &l_17}};
    int32_t **l_2678[1][3][2] = {{{&p_3133->g_121, &p_3133->g_121}, {&p_3133->g_121, &p_3133->g_121}, {&p_3133->g_121, &p_3133->g_121}}};
    short4 l_2699 = make_short4(0L, 0x14BFL, 0L, 0x14BFL);
    uint64_t ****l_2709 = &p_3133->g_2564;
    int64_t *l_2715 = nullptr;
    uint8_t l_2723 = 249UL;
    ulong4 l_2741 = make_ulong4(0UL, 0xB283C1E047BE1F71LL, 0UL, 0xB283C1E047BE1F71LL);
    long2 l_2744 = make_long2(0xB217E7D62F2A2C23LL, 0x23C2B078D943F05ALL);
    uint64_t l_2770[10] = {0x01EE5B5C6BC179E1LL, 0x0BFEAB23B1683160LL, 0x01EE5B5C6BC179E1LL, 0x0BFEAB23B1683160LL, 0x01EE5B5C6BC179E1LL, 0x0BFEAB23B1683160LL, 0x01EE5B5C6BC179E1LL, 0x0BFEAB23B1683160LL, 0x01EE5B5C6BC179E1LL, 0x0BFEAB23B1683160LL};
    short2 l_2776 = make_short2(0L, (-1L));
    __shared__ int8_t l_2781;
    l_2781 = 0xA7L;
    int16_t *l_2782 = nullptr;
    uint4 l_2789 = make_uint4(0x0CE77C3BL, 0UL, 0x0CE77C3BL, 0UL);
    uint3 l_2790 = make_uint3(0xAA5831D6L, 0xF91EA4A5L, 0xAA5831D6L);
    int4 l_2793 = make_int4((-1L), 7L, (-1L), 7L);
    int8_t *****l_2794[8][8] = {{&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}, {&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}, {&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}, {&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}, {&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}, {&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}, {&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}, {&p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423, &p_3133->g_2423}};
    __shared__ int16_t l_2796;
    l_2796 = (-1L);
    int i, j, k;
    (*l_17) &= make_int2(p_3133->g_16.y, p_3133->g_16.y).x;
    if (((p_3133->g_16.x < (*l_17)) > (safe_div_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(make_uchar4(func_23((safe_add_func_uint8_t_u_u((*l_17), p_3133->g_15)), p_3133), (nullptr == &p_9), (0x8AL == p_9), p_9).y, (*l_17))), hip_const_4))))
    { /* block id: 7 */
        __shared__ int16_t *l_35;
        l_35 = &hip_const_5;
        int16_t *l_36 = nullptr;
        int16_t *l_37 = &hip_const_5;
        __shared__ int16_t *l_38;
        l_38 = &hip_const_5;
        ulong1 l_1207 = make_ulong1(0xE0E77462016313F7LL);
        __shared__ int32_t *l_2652;
        l_2652 = nullptr;
        __shared__ int32_t *l_2653;
        l_2653 = nullptr;
        int32_t l_2654 = 0xBE99239BL;
        int32_t ****l_2670 = nullptr;
        int8_t *****l_2679 = &p_3133->g_2423;
        uint32_t *l_2704[3];
        int i;
        for (i = 0; i < 3; i++)
            l_2704[i] = nullptr;
        l_2654 &= ((*l_17) = func_30(p_9, ((((*l_17) = p_3133->g_29[6]) & func_39(l_44[0], func_45(p_3133->g_29[9], l_36, p_9, p_3133), (make_ulong3(l_1207.x, l_1207.x, l_1207.x).y , (safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(l_1207.x, (l_1207.x ^ 6UL))), p_9))), l_17, p_3133)) > l_1207.x), l_1207.x, p_9, p_3133));
        (*l_17) = (safe_add_func_uint64_t_u_u((safe_mod_func_int64_t_s_s((*l_17), ((((safe_mod(make_long3(p_3133->g_2661.z, p_3133->g_2661.z, p_3133->g_2661.z), ((((safe_mod(make_long3(p_3133->g_2664.x, p_3133->g_2664.x, p_3133->g_2664.x), make_long3((-9L), (-8L), (-8L))))) ^ make_long3(l_2665.z, l_2665.z, l_2665.z)))))) ^ make_long3(((safe_rshift_func_uint32_t_u_s((safe_sub_func_uint16_t_u_u((*l_17), (l_2670 != l_2671))), p_9)) > p_3133->g_2672), ((make_long4((((p_9 <= (p_9 < ((*l_17) != p_9))) > (*p_3133->g_250)) , p_9), 0xCCE7EA254471EA81LL, 1L, 2L) ^ make_long4((-5L), (-5L), (-5L), (-5L)))).z, 0xE15C338F82B593E9LL))).z)), p_9));
        (*l_17) |= ((safe_mul(((make_int2(((safe_mul_func_uint32_t_u_u(p_9, (p_3133->g_2705[3] = ((make_uint2(((((l_2678[0][0][1] = l_2677[9][3]) == nullptr) , l_2679) == nullptr), (safe_div_func_int8_t_s_s((*p_3133->g_1059), (safe_lshift_func_int16_t_s_s((+(safe_div_func_int16_t_s_s(p_9, ((safe_mul_func_uint32_t_u_u(((safe_mod_func_uint32_t_u_u((safe_div_func_int32_t_s_s((safe_mod_func_int16_t_s_s((((safe_lshift_func_int8_t_s_u((-7L), 3)) & (((safe_mod(((((make_short4(p_3133->g_2698.z, p_3133->g_2698.z, p_3133->g_2698.z, p_3133->g_2698.z) ^ make_short4(l_2699.x, l_2699.x, l_2699.x, l_2699.x))) ^ ((((make_short4((-1L), (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u(((nullptr == &p_3133->g_692) , 0xBBL), 0xD7L)), 0)), p_9, 0x47C4L) ^ make_short4((-10L), (-10L), (-10L), (-10L)))) ^ make_short4((-5L), (-5L), (-5L), (-5L)))))), make_short4(0x7B93L, 0x7B93L, 0x7B93L, 0x7B93L)))).w ^ (-5L))) > p_9), p_9)), 0xE99975D9L)), 0xABACB186L)) > 0x1E53L), p_9)) || p_9)))), (**p_3133->g_693)))))) ^ make_uint2(0xA5B81FACL, 0xA5B81FACL))).y))) != 65535UL), 0xC3E2A225L) & make_int2((-10L), (-10L)))), make_int2(0x6D0E6657L, 0x6D0E6657L)))).x;
        (*l_17) |= p_9;
    }
    else
    { /* block id: 1052 */
        int32_t l_2706 = 0xE8C4F28BL;
        return l_2706;
    }
    for (p_3133->g_1441 = 0; (p_3133->g_1441 > 16); p_3133->g_1441++)
    { /* block id: 1057 */
        uint32_t ***l_2710 = &p_3133->g_1217;
        int32_t l_2725 = 0x03189D3FL;
        uint16_t ***l_2738 = &p_3133->g_1169;
        uint32_t *l_2747[5];
        __shared__ int32_t l_2748;
        l_2748 = (-6L);
        int32_t l_2749 = 0x2B9399D6L;
        int32_t l_2750 = (-1L);
        int32_t l_2751 = 0xFFFDC105L;
        int8_t l_2752 = (-1L);
        int32_t l_2753 = 0xB0E97C04L;
        int32_t l_2754 = 6L;
        int32_t l_2755 = (-1L);
        __shared__ int32_t l_2756;
        l_2756 = (-2L);
        int32_t l_2757 = 0xDCE21B6FL;
        int32_t l_2758 = 0xDFEBD5FBL;
        __shared__ int32_t l_2759;
        l_2759 = 0x7AB4FA85L;
        int32_t l_2760 = 0xC4D86A1FL;
        int32_t l_2761 = 0x1AAA9390L;
        int32_t l_2762 = 0xE91A36C7L;
        int32_t l_2763 = 0xB6E14D03L;
        __shared__ int32_t l_2764;
        l_2764 = 1L;
        int32_t l_2765 = 0x04FBC1AEL;
        int32_t l_2766 = 2L;
        int32_t l_2767[10][2] = {{0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}, {0x2FB895F9L, 0x76FD881DL}};
        int16_t l_2768 = 0x0BCFL;
        int64_t l_2769 = 0x8C8843F169B2C845LL;
        uint64_t *l_2773 = nullptr;
        int i, j;
        for (i = 0; i < 5; i++)
            l_2747[i] = nullptr;
        if (((nullptr != l_2709) >= (!((make_ulong2(18446744073709551607UL, 0UL).y < (-8L)) != make_ushort2((l_2710 != &p_3133->g_1217), 0xFFE9L).x))))
        { /* block id: 1058 */
            int64_t l_2711 = 0x22AD4C398530CAEBLL;
            if ((*l_17))
                break;
            (*l_17) = l_2711;
            (*l_17) = 0x5EBBD06DL;
        }
        else
        { /* block id: 1062 */
            int64_t *l_2714 = nullptr;
            int64_t **l_2716 = &l_2715;
            int32_t l_2724 = 0x97A0D0BEL;
            long2 l_2736 = make_long2(0xFA7ECAA9819C8BBBLL, 0xF948927576DD1D4BLL);
            int i;
            (*l_17) ^= (safe_div_func_int32_t_s_s((0xDE13DA36L | (((((0L != (((*p_3133->g_1059) & ((l_2714 != ((*l_2716) = l_2715)) ^ ((safe_rshift_func_uint8_t_u_u((0xECAFL || (((safe_sub_func_uint8_t_u_u((l_2723 == 0UL), (((&p_3133->g_569 == &p_3133->g_569) > p_9) | l_2724))) , p_9) , p_9)), l_2724)) == l_2724))) < p_9)) == l_2724) || p_9) , p_9) || p_9)), l_2725));
            p_3133->g_121 = &p_3133->g_18;
            for (l_2724 = 0; (l_2724 == (-22)); l_2724 = safe_sub_func_int64_t_s_s(l_2724, 7))
            { /* block id: 1068 */
                (*l_17) |= (safe_div_func_int8_t_s_s(make_char4(((**p_3133->g_1058) == ((safe_unary_minus_func_uint64_t_u((p_9 , l_2725))) , (safe_add_func_int8_t_s_s((((+(0x78CDL == l_2725)) || ((safe_div(make_long4(make_long1(p_3133->g_2735.x).x, p_9, 6L, (-1L)), make_long4(l_2736.y, l_2736.y, l_2736.y, l_2736.y)))).w) | make_int1(p_3133->g_2737.x).x), p_9)))), (((*p_3133->g_1797) = l_2738) != l_2738), (-1L), 4L).z, p_9));
            }
            if (p_9)
                continue;
        }
        l_2754 |= (l_2725 || ((safe_lshift_func_int8_t_s_s(make_char3(0xB0L, 0x86L, 1L).y, p_9)) == ((make_ulong4(l_2741.w, l_2741.w, l_2741.w, l_2741.w).z & (safe_div_func_uint64_t_u_u(((l_2725 , (((**p_3133->g_1609) = (p_9 >= ((l_2725 = p_9) , make_long3(l_2744.y, l_2744.y, l_2744.y).z))) | (((safe_sub_func_int16_t_s_s(((++l_2770[9]) < ((l_2773 == (***l_2709)) == ((***p_3133->g_692) ^ (safe_mul_func_int16_t_s_s(((make_short2(l_2776.y, l_2776.y).x < (make_char2((safe_add_func_int8_t_s_s(make_char3((safe_add_func_uint64_t_u_u(p_9, l_2781)), 0x13L, (**p_3133->g_1058)).x, (-1L))), 5L).y >= 0L)) ^ 0xA025L), p_9))))), 0xD21BL)) ^ 18446744073709551615UL) | p_9))) <= 1UL), 0x3EDEFBFFB482D644LL))) && p_9)));
    }
    p_3133->g_703 = func_49(l_2782, l_44[3], ((safe_rshift_func_uint8_t_u_u(255UL, 0)) , p_3133->g_2795), p_9, l_2796, p_3133);
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_29
 * writes: p_3133->g_29
 */
__device__ uint8_t  func_23(int32_t  p_24, struct S0 * p_3133)
{ /* block id: 4 */
    int3 l_27 = make_int3(3L, 0x4A6B2C4EL, 3L);
    int32_t *l_28 = &p_3133->g_29[9];
    int i;
    (*l_28) ^= (0xF0EF2F37L < make_int1(l_27.x).x);
    return (*l_28);
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_2648 p_3133->g_568 p_3133->g_569 p_3133->g_335 p_3133->g_1609
 * writes: p_3133->g_335
 */
__device__ int32_t  func_30(uint8_t  p_31, uint32_t  p_32, uint32_t  p_33, int32_t  p_34, struct S0 * p_3133)
{ /* block id: 1041 */
    __shared__ int64_t *****l_2649;
    l_2649 = &p_3133->g_2465;
    int32_t *l_2650 = nullptr;
    int32_t l_2651 = (-5L);
    l_2651 ^= (((make_ushort2(p_3133->g_2648.x, p_3133->g_2648.x).y , &p_3133->g_2465) != l_2649) >= ((+0x09F8L) , ((**p_3133->g_1609) = (+(**p_3133->g_568)))));
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_767 p_3133->g_335 p_3133->g_945 p_3133->g_1043 p_3133->g_455 p_3133->g_1059 hip_const_7 p_3133->g_280 p_3133->g_1183 p_3133->g_1058 p_3133->g_153 p_3133->g_569 p_3133->g_1320 p_3133->g_691 p_3133->g_692 p_3133->g_693 p_3133->g_250 hip_const_5 hip_const_10 p_3133->g_1797 p_3133->g_946 p_3133->g_1856 p_3133->g_664 p_3133->g_944 p_3133->g_1663 p_3133->g_568 p_3133->g_892 p_3133->g_359 p_3133->g_1230 p_3133->g_970 p_3133->g_1380 p_3133->g_1029 p_3133->g_459 p_3133->g_617 p_3133->g_67 p_3133->g_420 p_3133->g_2195 p_3133->g_2204 p_3133->g_2165 p_3133->g_1609 p_3133->g_1915 p_3133->g_2464 p_3133->g_76 p_3133->g_2553 p_3133->g_1331 p_3133->g_875 p_3133->g_16 p_3133->g_15 p_3133->g_1291 p_3133->g_1332 p_3133->g_1441 p_3133->g_2194 p_3133->g_2249 p_3133->g_2256 p_3133->g_283 p_3133->g_2412
 * writes: p_3133->g_664 p_3133->g_280 p_3133->g_1217 p_3133->g_703 p_3133->g_767 p_3133->g_945 p_3133->g_15 p_3133->g_892 p_3133->g_1043 p_3133->g_455 p_3133->g_121 p_3133->g_743 p_3133->g_946 p_3133->g_1059 p_3133->g_153 p_3133->g_16 p_3133->g_1441 p_3133->g_1320 p_3133->g_944 p_3133->g_1797 p_3133->g_335 p_3133->g_359 p_3133->g_1380 p_3133->g_752 p_3133->g_1029 p_3133->g_402 p_3133->g_663 p_3133->g_459 p_3133->g_67 p_3133->g_420 p_3133->g_2165 p_3133->g_1915 p_3133->g_2195 p_3133->g_2412 p_3133->g_921 p_3133->g_472 p_3133->g_76 p_3133->g_2553 p_3133->g_1264 p_3133->g_1331 p_3133->g_875 p_3133->g_1223 p_3133->g_630 p_3133->g_970 p_3133->g_1114
 */
__device__ int16_t  func_39(uint32_t * p_40, int16_t  p_41, uint8_t  p_42, int32_t * p_43, struct S0 * p_3133)
{ /* block id: 431 */
    int64_t *l_1213 = &p_3133->g_944;
    int64_t **l_1212[7][8] = {{&l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213}, {&l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213}, {&l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213}, {&l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213}, {&l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213}, {&l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213}, {&l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213, &l_1213}};
    int64_t ***l_1214 = &p_3133->g_664;
    uint32_t ***l_1233 = &p_3133->g_1217;
    uint32_t l_1237[6][5] = {{7UL, 0x91004DF8L, 7UL, 0x7CE77B41L, 7UL}, {7UL, 0x91004DF8L, 7UL, 0x7CE77B41L, 7UL}, {7UL, 0x91004DF8L, 7UL, 0x7CE77B41L, 7UL}, {7UL, 0x91004DF8L, 7UL, 0x7CE77B41L, 7UL}, {7UL, 0x91004DF8L, 7UL, 0x7CE77B41L, 7UL}, {7UL, 0x91004DF8L, 7UL, 0x7CE77B41L, 7UL}};
    int32_t *l_1248[8] = {&p_3133->g_945, nullptr, &p_3133->g_945, nullptr, &p_3133->g_945, nullptr, &p_3133->g_945, nullptr};
    int3 l_1288 = make_int3(0x9D4C0D05L, 0L, 0x9D4C0D05L);
    __shared__ int16_t ****l_1294;
    l_1294 = nullptr;
    int8_t *l_1307[5];
    __shared__ uint16_t l_1330;
    l_1330 = 0xC1ACL;
    uint32_t l_1359[6];
    uint16_t l_1401 = 65535UL;
    char1 l_1411 = make_char1((-3L));
    uint3 l_1447 = make_uint3(0x29F3853EL, 0x8F10A151L, 0x29F3853EL);
    uint3 l_1450 = make_uint3(0x80CEE732L, 9UL, 0x80CEE732L);
    __shared__ uint64_t *l_1511;
    l_1511 = &p_3133->g_892;
    uint8_t **l_1608 = &p_3133->g_569;
    uint16_t l_1617 = 65535UL;
    __shared__ uint64_t ***l_1707;
    l_1707 = &p_3133->g_381;
    int32_t *l_1785[9][4][4] = {{{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}, {{&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}, {&p_3133->g_945, &p_3133->g_945, nullptr, &p_3133->g_945}}};
    __shared__ uint8_t l_1805;
    l_1805 = 0UL;
    int32_t l_1828 = 0x3676B3B2L;
    __shared__ uint8_t l_1851;
    l_1851 = 6UL;
    uint1 l_1876 = make_uint1(0x77F37902L);
    int64_t l_1892 = 0x601B957007FC572BLL;
    int32_t ****l_1943[5] = {&p_3133->g_970, nullptr, &p_3133->g_970, nullptr, &p_3133->g_970};
    int4 l_1960 = make_int4(0x2C87CCA9L, 0L, 0x2C87CCA9L, 0L);
    char1 l_1977 = make_char1(0x60L);
    int32_t l_2040 = 0xEC436E84L;
    uint32_t l_2137 = 4294967288UL;
    uint32_t l_2159 = 7UL;
    uint32_t l_2207 = 0x34CD3DF2L;
    __shared__ uint32_t l_2209;
    l_2209 = 0x3E61D02FL;
    int1 l_2215 = make_int1((-6L));
    ulong1 l_2231 = make_ulong1(0xF7DF79F89F867AF0LL);
    long1 l_2257 = make_long1((-10L));
    int8_t l_2268 = 0xFBL;
    int32_t l_2306[1][2];
    __shared__ uint64_t l_2312;
    l_2312 = 7UL;
    uint1 l_2323 = make_uint1(0x284DC6D1L);
    uchar4 l_2351 = make_uchar4(0x6DL, 0xCDL, 0x6DL, 0xCDL);
    uint32_t l_2357 = 0UL;
    int8_t ***l_2428 = &p_3133->g_1058;
    int8_t ****l_2427 = &l_2428;
    int64_t *****l_2466[3];
    char4 l_2491 = make_char4(0x3EL, (-1L), 0x3EL, (-1L));
    __shared__ uint32_t **l_2495;
    l_2495 = &p_3133->g_1663;
    ushort3 l_2498 = make_ushort3(0x8916L, 0x8ED3L, 0x8916L);
    int2 l_2515 = make_int2(1L, (-1L));
    uint16_t **l_2533 = &p_3133->g_1170;
    uint32_t l_2534 = 0UL;
    int2 l_2558 = make_int2((-1L), 0L);
    short4 l_2622 = make_short4(0x5307L, 1L, 0x5307L, 1L);
    short2 l_2624 = make_short2(0x9EF5L, 0x0052L);
    int32_t *l_2647 = nullptr;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1307[i] = nullptr;
    for (i = 0; i < 6; i++)
        l_1359[i] = 0UL;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_2306[i][j] = 0L;
    }
    for (i = 0; i < 3; i++)
        l_2466[i] = nullptr;
lbl_1287:
    (*l_1214) = l_1212[3][7];
lbl_1408:
    for (p_41 = 0; (p_41 <= 2); p_41 += 1)
    { /* block id: 435 */
        int32_t *l_1218 = nullptr;
        int32_t l_1236 = 0x1A3A3B1EL;
        int32_t l_1238 = (-1L);
        int32_t l_1240 = 0x92D0AC8CL;
        int32_t l_1242 = 0xE880D5B6L;
        __shared__ int32_t l_1243;
        l_1243 = 0x9BD79CF3L;
        uint32_t **l_1278 = nullptr;
        uint8_t l_1286 = 0xA7L;
        uint16_t l_1298 = 2UL;
        ulong3 l_1318 = make_ulong3(0x514EB99DEBAABF72LL, 18446744073709551615UL, 0x514EB99DEBAABF72LL);
        int32_t l_1321 = 0x57324BDFL;
        int i;
        for (p_3133->g_280 = 0; (p_3133->g_280 <= 5); p_3133->g_280 += 1)
        { /* block id: 438 */
            uint32_t **l_1216[9] = {&p_3133->g_472, nullptr, &p_3133->g_472, nullptr, &p_3133->g_472, nullptr, &p_3133->g_472, nullptr, &p_3133->g_472};
            uint32_t ***l_1215[8] = {&l_1216[8], &l_1216[8], &l_1216[4], &l_1216[8], &l_1216[8], &l_1216[4], &l_1216[8], &l_1216[8]};
            __shared__ int32_t l_1229;
            l_1229 = 0L;
            int32_t l_1239 = 0x4972AAF0L;
            __shared__ int32_t l_1241;
            l_1241 = 0xB68AAC57L;
            int32_t l_1244 = 0x78006820L;
            int i;
            p_3133->g_1217 = nullptr;
            p_3133->g_703 = l_1218;
            for (p_3133->g_767 = 0; (p_3133->g_767 <= 2); p_3133->g_767 += 1)
            { /* block id: 443 */
                __shared__ uint64_t ***l_1221;
                l_1221 = &p_3133->g_381;
                int32_t l_1222 = 1L;
                uint64_t *l_1228[9][4][7] = {{{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}, {{&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}, {&p_3133->g_892, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_892}}};
                int32_t *l_1234 = nullptr;
                int32_t *l_1235[5] = {nullptr, nullptr, nullptr, nullptr, nullptr};
                uint8_t l_1245[10] = {247UL, 0xBBL, 247UL, 0xBBL, 247UL, 0xBBL, 247UL, 0xBBL, 247UL, 0xBBL};
                int i, j, k;
                l_1237[2][0] = (l_1236 = (p_3133->g_945 |= (make_char1(((safe_rshift_func_uint16_t_u_u(((&p_3133->g_381 != l_1221) < (l_1222 |= p_3133->g_335[p_41])), make_ushort1(p_3133->g_1223.y).x)) , (safe_lshift_func_int8_t_s_u(((l_1222 = (safe_div_func_int32_t_s_s(0x9396653BL, 0x3E309CA2L))) && (0UL == (l_1222 = (l_1229 |= p_3133->g_335[p_3133->g_767])))), 1)))).x == (((~make_long3(p_3133->g_1230.x, p_3133->g_1230.x, p_3133->g_1230.x))).z == (safe_rshift_func_uint8_t_u_u((nullptr != l_1233), p_3133->g_335[p_3133->g_767]))))));
                l_1245[0]--;
                p_43 = l_1248[1];
            }
        }
        if (p_3133->g_335[p_41])
            break;
        for (p_3133->g_15 = 1; (p_3133->g_15 <= 5); p_3133->g_15 += 1)
        { /* block id: 458 */
            __shared__ int32_t l_1254;
            l_1254 = 0xD34B28A3L;
            long1 l_1275 = make_long1(0L);
            uint16_t ***l_1281 = &p_3133->g_1169;
            int16_t ****l_1293 = &p_3133->g_692;
            uint32_t **l_1299 = nullptr;
            int32_t l_1323 = 0x495CC3D5L;
            int i;
            if (p_3133->g_335[p_41])
                break;
            if (p_3133->g_335[p_41])
                continue;
            for (p_3133->g_892 = 0; (p_3133->g_892 <= 5); p_3133->g_892 += 1)
            { /* block id: 463 */
                __shared__ uint16_t *l_1253;
                l_1253 = &hip_const_9;
                int8_t *l_1257 = nullptr;
                int8_t *l_1258 = &hip_const_7;
                int8_t *l_1259 = &hip_const_7;
                int32_t l_1262 = 0xED13D5DDL;
                uint16_t ***l_1283[8];
                uint32_t **l_1296[4] = {&p_3133->g_238[2][5][1], &p_3133->g_238[4][1][2], &p_3133->g_238[2][5][1], &p_3133->g_238[4][1][2]};
                int i;
                for (i = 0; i < 8; i++)
                    l_1283[i] = &p_3133->g_1169;
                if ((safe_sub_func_uint16_t_u_u((l_1254 &= (safe_lshift_func_uint32_t_u_u(0xCA220A78L, 13))), (0xF34C3DDEL != ((safe_sub_func_int8_t_s_s((p_3133->g_1043.y &= p_41), (0xDC6C3C6AL && 0xE194EA8EL))) & (p_3133->g_455.x ^= (l_1262 = (safe_sub_func_uint64_t_u_u(0x2438CD1DBB81D161LL, p_42)))))))))
                { /* block id: 468 */
                    int64_t l_1263 = 0xA002DD2BDC120518LL;
                    __shared__ uint16_t ****l_1282;
                    l_1282 = &l_1281;
                    l_1263 = (-2L);
                    p_3133->g_121 = nullptr;
                    if (((make_int2(0xB2C79A48L, (l_1254 > p_42)) ^ make_int2(p_3133->g_1264.x, p_3133->g_1264.x))).y)
                    { /* block id: 471 */
                        int32_t l_1273 = (-3L);
                        int32_t **l_1274 = &p_3133->g_703;
                        int i, j, k;
                        if (p_41)
                            break;
                        (*l_1274) = ((0xF627537447C8BB9DLL ^ ((p_41 != 0x85E2D3AD1E7E0D26LL) != ((safe_sub(((make_short1((safe_mod_func_uint64_t_u_u(0UL, (0xC2FE26C17C3B4431LL ^ ((((((make_uchar3((((p_42 , (safe_add_func_uint64_t_u_u(((***p_3133->g_692) , (safe_div_func_uint32_t_u_u(p_41, l_1273))), l_1262))) <= p_41) > (**p_3133->g_1058)), p_42, 1UL) ^ make_uchar3(251UL, 251UL, 251UL))).x & (*p_3133->g_1059)) & p_42) > p_42) , l_1273))))) ^ make_short1(0xD0D6L))), make_short1(0xF8A8L)))).x)) , &p_3133->g_280);
                    }
                    else
                    { /* block id: 474 */
                        if (l_1263)
                            break;
                    }
                    l_1262 |= (p_42 ^ ((make_long2(l_1275.x, l_1275.x).x > ((*p_3133->g_1059) & (safe_div_func_int8_t_s_s(((l_1278 != nullptr) | (((make_ulong1(p_3133->g_1279.y).x > (safe_unary_minus_func_uint32_t_u((make_ushort2(0xC26AL, 1UL).y < (((nullptr == &p_43) || (((*l_1282) = l_1281) != (l_1283[3] = nullptr))) != (safe_mod_func_uint64_t_u_u(((-7L) | l_1286), p_41))))))) < 0xA5CF208EA1AD4D62LL) ^ 0x042F1BE791297307LL)), (-5L))))) , p_42));
                }
                else
                { /* block id: 480 */
                    uint32_t **l_1292 = &p_3133->g_238[5][4][6];
                    int16_t *****l_1295[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1295[i] = nullptr;
                    if (p_3133->g_280)
                        goto lbl_1287;
                    if ((+make_int3(l_1288.y, l_1288.y, l_1288.y).y))
                    { /* block id: 482 */
                        int32_t **l_1289 = &p_3133->g_703;
                        (*l_1289) = p_43;
                        if (l_1262)
                            break;
                        (*l_1289) = p_43;
                        if (p_3133->g_1183.x)
                            break;
                    }
                    else
                    { /* block id: 487 */
                        uint3 l_1290 = make_uint3(0x9FEFF954L, 0x1B28DA18L, 0x9FEFF954L);
                        int i;
                        p_3133->g_703 = p_43;
                        if (l_1290.z)
                            continue;
                    }
                    if (p_42)
                        break;
                    p_3133->g_743.x = ((make_long4(p_3133->g_1291.z, p_3133->g_1291.z, p_3133->g_1291.z, p_3133->g_1291.z).z == (l_1292 != ((l_1293 == (l_1294 = l_1294)) , l_1296[1]))) >= p_42);
                }
                return l_1262;
            }
            for (p_3133->g_280 = 5; (p_3133->g_280 >= 0); p_3133->g_280 -= 1)
            { /* block id: 499 */
                uint16_t l_1297 = 65534UL;
                __shared__ uint32_t **l_1302;
                l_1302 = &p_3133->g_472;
                int32_t l_1322 = 0L;
                int32_t l_1324[1];
                uint8_t l_1327 = 255UL;
                int i;
                for (i = 0; i < 1; i++)
                    l_1324[i] = 0x36122EE2L;
                l_1297 &= 0x9D84D95AL;
                l_1298 = l_1242;
                for (p_3133->g_946 = 5; (p_3133->g_946 >= 1); p_3133->g_946 -= 1)
                { /* block id: 504 */
                    uint64_t l_1319 = 0x981F76724586FE72LL;
                    l_1299 = l_1299;
                    p_3133->g_16.x = (safe_add_func_uint16_t_u_u(((((&p_40 != l_1302) & ((((((safe_add_func_uint8_t_u_u((safe_lshift_func_uint64_t_u_u((((*p_3133->g_1058) = (*p_3133->g_1058)) != l_1307[3]), (0xA194C80DA2CD4B5FLL <= (p_3133->g_153.y |= (make_int1(0xF83948E3L).x < ((safe_sub(((make_int4(0x31E976B8L, 0L, (safe_mul_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((safe_mul_func_uint64_t_u_u((255UL < p_3133->g_420.x), ((((((((((safe_rshift_func_uint64_t_u_s(make_ulong3(l_1318.x, l_1318.x, l_1318.x).z, (!(p_3133->g_630.x = ((**p_3133->g_664) = (0x3FAEEBF2AC08ECAALL ^ (-5L))))))) <= (-9L)) ^ p_42) | 18446744073709551615UL) || l_1254) > 18446744073709551615UL) ^ l_1297) != 0xC551E958C24E31F4LL) , p_41) <= p_42))), p_42)) || 0x5191L), p_42)), l_1319) ^ make_int4(0xC8A43369L, 0xC8A43369L, 0xC8A43369L, 0xC8A43369L))), make_int4(9L, 9L, 9L, 9L)))).w))))), p_3133->g_335[p_41])) ^ 0x91D7L) | (*p_3133->g_569)) , 0x652EL) <= 0xC624L) >= p_3133->g_1320)) >= p_41) , l_1321), (-1L)));
                    for (p_3133->g_767 = 6; (p_3133->g_767 >= 1); p_3133->g_767 -= 1)
                    { /* block id: 513 */
                        int8_t l_1325 = (-1L);
                        int32_t l_1326 = 0x3F51E8E6L;
                        if (p_3133->g_945)
                            goto lbl_1287;
                        l_1327--;
                    }
                }
            }
        }
    }
    if (l_1330)
    { /* block id: 521 */
        int16_t l_1363 = 1L;
        uint16_t l_1365 = 0xDD8FL;
        ushort4 l_1395 = make_ushort4(0xE20EL, 0x7231L, 0xE20EL, 0x7231L);
        int1 l_1423 = make_int1(0x41FC006FL);
        uint64_t ***l_1427 = &p_3133->g_381;
        int16_t l_1434 = 0x37E0L;
        uchar1 l_1463 = make_uchar1(0x49L);
        uchar3 l_1498 = make_uchar3(0x64L, 251UL, 0x64L);
        uchar2 l_1507 = make_uchar2(0x49L, 0x48L);
        int64_t l_1512[6][3];
        uint32_t *l_1522[4][3] = {{nullptr, &l_1237[2][0], &p_3133->g_1320}, {nullptr, &l_1237[2][0], &p_3133->g_1320}, {nullptr, &l_1237[2][0], &p_3133->g_1320}, {nullptr, &l_1237[2][0], &p_3133->g_1320}};
        __shared__ int8_t *l_1526;
        l_1526 = nullptr;
        int16_t *l_1531 = &hip_const_5;
        int32_t l_1601 = 1L;
        uint8_t l_1749 = 0x95L;
        int32_t *l_1764 = nullptr;
        int8_t ***l_1803 = &p_3133->g_1058;
        int8_t ****l_1802[10][1][9] = {{{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}, {{nullptr, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803, &l_1803}}};
        int32_t l_1804 = 0xD4F179EEL;
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 3; j++)
                l_1512[i][j] = 3L;
        }
        if ((((make_int2(p_3133->g_1331.x, p_3133->g_1331.x) ^ make_int2(p_3133->g_1332.x, p_3133->g_1332.x))).x || p_41))
        { /* block id: 522 */
            int2 l_1339 = make_int2(0x6BF84027L, (-1L));
            int32_t l_1400 = 0xBD0B6866L;
            uint1 l_1413 = make_uint1(4294967295UL);
            int2 l_1418 = make_int2(0x6CA54CBAL, 0x251C8628L);
            uint3 l_1448 = make_uint3(0UL, 0xC2EEC8D7L, 0UL);
            int1 l_1477 = make_int1(0x4A6DF551L);
            uint16_t *l_1508 = &l_1365;
            __shared__ int64_t l_1519;
            l_1519 = 1L;
            __shared__ uint32_t l_1536;
            l_1536 = 0xF521800DL;
            long4 l_1547 = make_long4((-5L), 1L, (-5L), 1L);
            int32_t l_1603 = 0x1D37397AL;
            int32_t l_1604 = 0L;
            int2 l_1605 = make_int2(0x111AB706L, 4L);
            int32_t *l_1620 = nullptr;
            uint32_t *l_1661 = nullptr;
            uint8_t ***l_1690[3];
            int3 l_1699 = make_int3(0x4A8BB02AL, 0x3B6FD803L, 0x4A8BB02AL);
            uint3 l_1700 = make_uint3(0x3E90D381L, 0xBE195A90L, 0x3E90D381L);
            uint64_t ***l_1705[2][8] = {{&p_3133->g_381, &p_3133->g_381, nullptr, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, nullptr, &p_3133->g_381}, {&p_3133->g_381, &p_3133->g_381, nullptr, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, nullptr, &p_3133->g_381}};
            uchar1 l_1744 = make_uchar1(251UL);
            int i, j;
            for (i = 0; i < 3; i++)
                l_1690[i] = &l_1608;
            for (p_3133->g_280 = 0; (p_3133->g_280 >= 18); p_3133->g_280 = safe_add_func_uint8_t_u_u(p_3133->g_280, 1))
            { /* block id: 525 */
                return (****p_3133->g_691);
            }
        }
        else
        { /* block id: 681 */
            uint64_t **l_1757[9] = {&l_1511, nullptr, &l_1511, nullptr, &l_1511, nullptr, &l_1511, nullptr, &l_1511};
            int i;
            l_1423.x = (safe_add_func_uint16_t_u_u(l_1507.y, (safe_mul_func_uint16_t_u_u(1UL, (safe_rshift_func_uint16_t_u_s(((nullptr == l_1757[8]) , (!65535UL)), 10))))));
        }
        for (p_3133->g_1441 = 0; (p_3133->g_1441 > 3); p_3133->g_1441 = safe_add_func_int32_t_s_s(p_3133->g_1441, 5))
        { /* block id: 686 */
            uint16_t l_1779 = 1UL;
            ushort1 l_1795 = make_ushort1(0xAAABL);
            int32_t l_1796 = 0x8CD2C1E3L;
            int8_t ***l_1801[9][8] = {{&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}, {&p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058, &p_3133->g_1058}};
            int8_t ****l_1800 = &l_1801[7][1];
            int i, j;
            for (p_3133->g_1320 = 2; (p_3133->g_1320 <= 6); p_3133->g_1320 += 1)
            { /* block id: 689 */
                __shared__ uint8_t l_1760;
                l_1760 = 255UL;
                __shared__ int32_t **l_1763;
                l_1763 = &p_3133->g_121;
                l_1760++;
                (*l_1763) = p_43;
            }
            for (l_1434 = 1; (l_1434 <= 6); l_1434 += 1)
            { /* block id: 695 */
                int32_t l_1766 = 0xC630DF8AL;
                int32_t l_1780 = 5L;
                uint32_t l_1781 = 1UL;
                int32_t ****l_1790[2];
                __shared__ int32_t *****l_1789;
                l_1789 = &l_1790[0];
                int i;
                for (i = 0; i < 2; i++)
                    l_1790[i] = &p_3133->g_970;
                for (p_3133->g_944 = 0; (p_3133->g_944 <= 2); p_3133->g_944 += 1)
                { /* block id: 698 */
                    __shared__ uint32_t l_1765;
                    l_1765 = 0UL;
                    int32_t l_1782 = 0L;
                    int32_t **l_1786[9][7] = {{&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}, {&l_1764, &l_1785[2][1][3], &l_1785[2][1][3], &l_1764, nullptr, nullptr, &l_1785[2][1][3]}};
                    int i, j;
                    for (p_3133->g_945 = 2; (p_3133->g_945 >= 0); p_3133->g_945 -= 1)
                    { /* block id: 701 */
                        l_1764 = p_43;
                        if (l_1765)
                            continue;
                        return l_1766;
                    }
                    if ((safe_add_func_uint16_t_u_u((safe_div_func_int64_t_s_s(0xEB7E0EB9B5BB07E5LL, (safe_sub_func_uint16_t_u_u(make_ushort1(p_41).x, ((safe_sub_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u(p_42, 0x4D680038L)) == 3L), (l_1782 ^= ((safe_sub_func_int16_t_s_s(p_41, (l_1766 > (l_1780 |= (l_1779 | p_41))))) != l_1781)))) , l_1766))))), (-1L))))
                    { /* block id: 708 */
                        if (p_42)
                            break;
                    }
                    else
                    { /* block id: 710 */
                        uint8_t ***l_1784[3];
                        uint8_t ****l_1783 = &l_1784[0];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1784[i] = &l_1608;
                        (*l_1783) = &p_3133->g_1609;
                    }
                    p_3133->g_703 = l_1785[2][1][3];
                }
                for (p_3133->g_1320 = 0; (p_3133->g_1320 <= 2); p_3133->g_1320 += 1)
                { /* block id: 717 */
                    int32_t *l_1787 = nullptr;
                    l_1787 = p_43;
                    if (make_int4(p_3133->g_1788.x, p_3133->g_1788.x, p_3133->g_1788.x, p_3133->g_1788.x).x)
                    { /* block id: 719 */
                        uint32_t l_1791 = 0x492EFC24L;
                        l_1789 = nullptr;
                        if (l_1791)
                            break;
                        l_1796 = (((~((safe_rshift(make_ushort3(p_3133->g_1794.z, p_3133->g_1794.z, p_3133->g_1794.z), make_ushort3(l_1795.x, l_1795.x, l_1795.x)))))).y >= (0xECL >= l_1779));
                    }
                    else
                    { /* block id: 723 */
                        uint16_t *****l_1799[8][6][5] = {{{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}, {{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}, {{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}, {{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}, {{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}, {{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}, {{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}, {{&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}, {&p_3133->g_1797, nullptr, &p_3133->g_1797, &p_3133->g_1797, &p_3133->g_1797}}};
                        int i, j, k;
                        p_3133->g_1797 = p_3133->g_1797;
                    }
                }
            }
            l_1802[9][0][1] = l_1800;
        }
        --l_1805;
    }
    else
    { /* block id: 731 */
        int32_t ****l_1821 = &p_3133->g_970;
        int32_t *****l_1820 = &l_1821;
        int32_t l_1829[10][6][4] = {{{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}, {{0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}, {0x9A7A8F53L, 0x9D43CB24L, (-6L), 0xCD6507E4L}}};
        int64_t *l_1937 = nullptr;
        uint64_t ***l_1938[9] = {&p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381, &p_3133->g_381};
        short2 l_1944 = make_short2(0x2518L, 0x720DL);
        int32_t *l_1948[4][8][2] = {{{nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}}, {{nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}}, {{nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}}, {{nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}, {nullptr, &l_1829[0][5][2]}}};
        ulong2 l_1987 = make_ulong2(0x41C1FC5EE7065C46LL, 18446744073709551615UL);
        __shared__ int8_t l_2057;
        l_2057 = 3L;
        uint8_t l_2063 = 7UL;
        int32_t l_2111 = 1L;
        uint16_t l_2121 = 4UL;
        int8_t l_2143 = 3L;
        __shared__ int8_t **l_2177;
        l_2177 = nullptr;
        uint64_t l_2180 = 1UL;
        int16_t *l_2182 = nullptr;
        int32_t l_2189[6] = {0xE30A1F9CL, 0xE30A1F9CL, 1L, 0xE30A1F9CL, 0xE30A1F9CL, 1L};
        __shared__ uint32_t *l_2205;
        l_2205 = nullptr;
        uint32_t *l_2206[7][9][4] = {{{nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}}, {{nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}}, {{nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}}, {{nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}}, {{nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}}, {{nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}}, {{nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}, {nullptr, nullptr, &l_2137, nullptr}}};
        int64_t l_2208 = (-1L);
        uchar1 l_2228 = make_uchar1(0x35L);
        __shared__ uint32_t l_2232;
        l_2232 = 18446744073709551606UL;
        ushort4 l_2286 = make_ushort4(0UL, 1UL, 0UL, 1UL);
        int32_t l_2307 = (-4L);
        int32_t l_2311 = 1L;
        short3 l_2361 = make_short3((-9L), 0L, (-9L));
        uint16_t *****l_2387 = nullptr;
        char4 l_2433 = make_char4(0xB8L, 0x1FL, 0xB8L, 0x1FL);
        char1 l_2436 = make_char1(0x5BL);
        long4 l_2483 = make_long4(5L, 0x92936482021B089DLL, 5L, 0x92936482021B089DLL);
        int32_t l_2504 = 0x150E1A98L;
        uint64_t l_2519[2][9] = {{0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL}, {0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL, 7UL, 0xA825F7AF4665F285LL}};
        uint8_t l_2601 = 0xE4L;
        ushort2 l_2626 = make_ushort2(65529UL, 0UL);
        int i, j, k;
lbl_2467:
        for (p_3133->g_946 = 4; (p_3133->g_946 >= 1); p_3133->g_946 -= 1)
        { /* block id: 734 */
            int32_t l_1847 = 0xD5A6B81DL;
            char3 l_1848 = make_char3(0x3CL, 3L, 0x3CL);
            uint64_t l_1853 = 0xB0C4DDDADB7770BBLL;
            uint64_t l_1854[6] = {0xFC231F9A11E036B4LL, 0xFC231F9A11E036B4LL, 0UL, 0xFC231F9A11E036B4LL, 0xFC231F9A11E036B4LL, 0UL};
            __shared__ int32_t l_1855;
            l_1855 = 0x5EFAB4A5L;
            long2 l_1883 = make_long2(0x8776A5C234C66405LL, 0x1D6EECFF9338F39ELL);
            __shared__ int64_t ***l_1886;
            l_1886 = &l_1212[3][0];
            int32_t l_1901 = 1L;
            int32_t l_1902 = 0xA07E4FC2L;
            int32_t l_1904 = 1L;
            int32_t l_1906 = 0x07B364FEL;
            int32_t l_1907[1];
            uchar2 l_1921 = make_uchar2(1UL, 1UL);
            __shared__ uint64_t l_1934;
            l_1934 = 0xDA16591016E8ACDDLL;
            int8_t l_1945[2][9][9] = {{{0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}}, {{0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}, {0x09L, 0L, 8L, 7L, 0x19L, 7L, 8L, 0L, 0x09L}}};
            uint32_t l_1955[9][10][2] = {{{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}, {{0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}, {0x55A25A28L, 0xA7F16BB9L}}};
            uint32_t l_1969[9] = {0xD73EC10CL, 0xA3D8A235L, 0xD73EC10CL, 0xA3D8A235L, 0xD73EC10CL, 0xA3D8A235L, 0xD73EC10CL, 0xA3D8A235L, 0xD73EC10CL};
            uint4 l_1990 = make_uint4(0x28D6676DL, 0x888E8E41L, 0x28D6676DL, 0x888E8E41L);
            int8_t l_1996 = 3L;
            uint64_t ***l_1997 = &p_3133->g_381;
            __shared__ int16_t **l_2033;
            l_2033 = &p_3133->g_250;
            uint32_t l_2055 = 0xF3973B30L;
            long4 l_2070 = make_long4(0x6EE1D05D98FEF239LL, 0x1D648DD55F3FAD2ALL, 0x6EE1D05D98FEF239LL, 0x1D648DD55F3FAD2ALL);
            uint32_t l_2091 = 0xB3EC2108L;
            uint32_t l_2117[3];
            uint32_t **l_2118 = &p_3133->g_238[5][3][5];
            uint32_t l_2181[8] = {1UL, 1UL, 0xA7A851C6L, 1UL, 1UL, 0xA7A851C6L, 1UL, 1UL};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1907[i] = 0x43C7D757L;
            for (i = 0; i < 3; i++)
                l_2117[i] = 0xDF160D6FL;
            if ((safe_mul_func_int32_t_s_s(make_int3(0x68F7A077L, 0xEA8DB025L, (safe_add_func_int64_t_s_s((((((((safe_add_func_int16_t_s_s(((safe_div_func_int64_t_s_s(((((safe_div_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u((((nullptr == l_1820) & make_uint3(4294967289UL, 0x4C5DD82AL, 4294967295UL).x) , 6UL), (safe_add_func_int32_t_s_s(((safe_mul_func_int64_t_s_s((((((*l_1213) = l_1359[(p_3133->g_946 + 1)]) > make_long2((p_3133->g_622.x &= p_42), (safe_add_func_int8_t_s_s(0xDBL, (1L != ((*l_1511) = 0xFEE8F2402ED2FA79LL))))).x) , ((p_42 , (*p_3133->g_1169)) == (***p_3133->g_1797))) || (**p_3133->g_1609)), 0x757E908E5788C710LL)) != 0x7D34L), l_1359[(p_3133->g_946 + 1)])))) || 0x6EL), 1L)) < l_1828) != p_42) || 0x61ADL), p_41)) & p_41), l_1359[(p_3133->g_946 + 1)])) != 0x7DBCFBFFL) < l_1359[(p_3133->g_946 + 1)]) >= 4L) | l_1359[(p_3133->g_946 + 1)]) < l_1829[0][5][2]) == p_42), p_42))).z, p_41)))
            { /* block id: 738 */
                uchar3 l_1832 = make_uchar3(255UL, 0x46L, 255UL);
                __shared__ int32_t l_1852;
                l_1852 = 0xDD4AD76EL;
                int i;
                l_1855 ^= (((p_40 = p_40) != nullptr) , ((p_41 || ((((make_uchar2(l_1832.x, l_1832.x).x & (l_1832.x ^ (safe_add_func_uint16_t_u_u(l_1832.y, (4294967291UL >= (safe_sub_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((l_1852 = ((safe_mod_func_uint32_t_u_u((l_1359[(p_3133->g_946 + 1)]++), (safe_mod_func_uint8_t_u_u(l_1847, make_char2(l_1848.z, l_1848.z).y)))) | (((0xD7EFL | ((safe_sub_func_uint16_t_u_u(((l_1851 < 0xCB9DL) | 4UL), 0x7441L)) || (*p_3133->g_1059))) & p_41) == 0xFAL))), l_1832.z)), p_41))))))) ^ 0x1928L) || l_1853) < l_1854[4])) & 1UL));
                return p_3133->g_1856;
            }
            else
            { /* block id: 744 */
                int64_t *l_1859 = nullptr;
                uint32_t *l_1870 = nullptr;
                uint32_t *l_1871 = nullptr;
                uint32_t *l_1872 = nullptr;
                uint32_t *l_1873 = nullptr;
                __shared__ uint32_t *l_1874;
                l_1874 = nullptr;
                uint32_t *l_1875[10][6] = {{&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}, {&l_1359[4], nullptr, nullptr, &l_1359[4], nullptr, nullptr}};
                uint64_t *l_1887 = nullptr;
                uint64_t *l_1888[2];
                int32_t l_1889 = 0xB16A0E7AL;
                int16_t ****l_1890 = &p_3133->g_692;
                int32_t l_1891 = 0L;
                int32_t l_1903[1];
                __shared__ int8_t l_1910;
                l_1910 = 0x26L;
                int32_t l_1911 = 0L;
                int1 l_1932 = make_int1(0xF830CD01L);
                int32_t l_1966 = 9L;
                __shared__ int32_t ****l_2009;
                l_2009 = &p_3133->g_970;
                uint16_t l_2017 = 1UL;
                int8_t l_2056 = (-4L);
                ushort4 l_2098 = make_ushort4(0x766FL, 65535UL, 0x766FL, 65535UL);
                int16_t l_2103 = (-4L);
                int32_t l_2105 = 4L;
                int32_t l_2108 = 0x509840EBL;
                __shared__ int32_t l_2109;
                l_2109 = 2L;
                int32_t l_2110 = 0xBA6969E2L;
                int32_t l_2112 = (-1L);
                __shared__ int32_t l_2113;
                l_2113 = 0x681FEF71L;
                uint32_t l_2114 = 0x061CAD5DL;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_1888[i] = nullptr;
                for (i = 0; i < 1; i++)
                    l_1903[i] = 0x08664A11L;
                if ((safe_add_func_int32_t_s_s((l_1859 == ((safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(l_1848.z, (safe_add_func_int16_t_s_s(((((safe_lshift_func_int32_t_s_s((((((p_3133->g_1320 = l_1359[(p_3133->g_946 + 1)]) , ((((safe_sub_func_uint64_t_u_u(18446744073709551609UL, p_41)) | ((**l_1608) |= ((--l_1876.x) && (safe_add_func_int64_t_s_s((safe_mul_func_int64_t_s_s(make_long2(l_1883.y, l_1883.y).x, 0UL)), (l_1889 |= (((safe_rshift_func_uint32_t_u_s(((((*l_1511) = (nullptr == l_1886)) | 1L) <= (**p_3133->g_664)), 16)) < 5L) | p_42))))))) , nullptr) != p_3133->g_1663)) != (*p_3133->g_1059)) , nullptr) != l_1890), l_1883.y)) <= l_1891) , (*p_3133->g_1059)) | 0x9BL), 0L)))), p_42)) , l_1859)), 0x64EC579AL)))
                { /* block id: 750 */
                    int64_t *l_1895 = nullptr;
                    __shared__ uint32_t l_1897;
                    l_1897 = 0xCEC8CE91L;
                    int32_t l_1899 = 1L;
                    int32_t l_1900 = 6L;
                    int32_t l_1905 = 1L;
                    int32_t l_1908 = 0xA4860C01L;
                    int32_t l_1909[7] = {9L, 0x12D46FEDL, 9L, 0x12D46FEDL, 9L, 0x12D46FEDL, 9L};
                    uint64_t l_1912 = 0xFC450F0C8DF0983ELL;
                    int i;
                    l_1892 = (-3L);
                    l_1897 = ((**p_3133->g_664) < (safe_rshift_func_uint64_t_u_u((p_42 || 0L), make_ulong4((nullptr != &p_3133->g_1798), l_1891, make_ulong4((l_1895 != (p_3133->g_1896 = (*p_3133->g_664))), l_1854[4], 0x3F5B9333FACD8A35LL, 2UL).w, p_41).x)));
                    l_1899 = make_int3(p_3133->g_1898.x, p_3133->g_1898.x, p_3133->g_1898.x).x;
                    l_1912++;
                }
                else
                { /* block id: 756 */
                    int64_t *l_1928 = nullptr;
                    int32_t l_1931 = 0L;
                    int3 l_1933 = make_int3(0xF3EF49E9L, (-10L), 0xF3EF49E9L);
                    uint8_t **l_1946 = &p_3133->g_569;
                    int32_t l_1947 = 0L;
                    int i;
                    l_1891 = (+make_int4(p_3133->g_1915.y, p_3133->g_1915.y, p_3133->g_1915.y, p_3133->g_1915.y).w);
                    for (p_3133->g_15 = 0; (p_3133->g_15 <= 5); p_3133->g_15 += 1)
                    { /* block id: 760 */
                        int32_t **l_1916 = &p_3133->g_121;
                        (*l_1916) = (p_43 = p_43);
                        return p_42;
                    }
                    l_1889 &= (safe_add_func_uint64_t_u_u(((**p_3133->g_568) ^ (~((safe_add_func_int16_t_s_s(0L, (((make_long1(4L).x & ((((((((make_uchar1(l_1921.x).x || (-1L)) || ((safe_lshift_func_uint8_t_u_u(p_42, 4)) >= 4294967293UL)) <= ((safe_mul_func_int32_t_s_s((+((*p_3133->g_1059) < (((l_1928 != ((safe_div_func_uint32_t_u_u((l_1931 = 0UL), (++l_1934))) , l_1937)) < p_42) >= l_1901))), p_42)) && 0x616AD06E79B7C538LL)) ^ 1UL) , &p_3133->g_381) != l_1938[5]) , l_1883.x) , 0xF09638302B22ED0FLL)) , 8L) < (**p_3133->g_664)))) | p_42))), p_42));
                    if ((p_3133->g_359.w ^= ((((*l_1511) &= 0x2C106F47B0E098B4LL) & ((safe_mul_func_int8_t_s_s(((safe_div_func_int64_t_s_s((p_42 ^ l_1933.z), p_42)) < (l_1943[4] != ((*l_1820) = l_1943[4]))), ((make_char4(0L, 0x2AL, (make_ulong1((l_1947 = (((((((((make_short2(l_1944.x, l_1944.x).x | 5L) <= (p_42 < ((p_3133->g_752.y = (l_1945[1][0][5] && l_1944.x)) >= (*p_3133->g_1059)))) || 3L) , (*p_3133->g_1798)) == (**p_3133->g_1797)) , &l_1608) == &l_1608) , l_1946) != &p_3133->g_569))).x || (**p_3133->g_664)), l_1889) & make_char4((-9L), (-9L), (-9L), (-9L)))).x)) <= 0xE277L)) >= (*p_3133->g_250))))
                    { /* block id: 773 */
                        l_1931 |= 0x1256EB59L;
                        l_1948[2][4][1] = &l_1902;
                        if (l_1359[(p_3133->g_946 + 1)])
                            continue;
                    }
                    else
                    { /* block id: 777 */
                        return p_42;
                    }
                }
                p_3133->g_1380.x = (safe_lshift_func_int16_t_s_u(0x8BF3L, 6));
                if (p_41)
                { /* block id: 782 */
                    uint16_t l_1972 = 65535UL;
                    int32_t ****l_1979 = &p_3133->g_970;
                    int2 l_1984 = make_int2(0x250EC678L, 0x3272E7D3L);
                    int i;
                    for (p_3133->g_767 = 0; (p_3133->g_767 <= 5); p_3133->g_767 += 1)
                    { /* block id: 785 */
                        int64_t l_1965 = 1L;
                        int32_t l_1978 = (-1L);
                        uint3 l_1982 = make_uint3(0x991393EDL, 0x4374FFD2L, 0x991393EDL);
                        uint32_t *l_1983 = &l_1969[5];
                        __shared__ uint32_t l_1993;
                        l_1993 = 0x5379D352L;
                        int i;
                        l_1907[0] = (((safe_mul_func_uint8_t_u_u((((((*p_3133->g_250) || (l_1955[0][9][0] < (((safe_sub_func_uint64_t_u_u(((p_42 , ((safe_lshift_func_int8_t_s_s((make_int1(l_1960.z).x ^ (((***p_3133->g_692) >= (****p_3133->g_691)) >= (p_3133->g_752.x = (safe_mul_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(((p_41 = l_1965) <= l_1966), p_42)), (l_1901 = (((make_int2(0xB0AA003EL, (-3L)).x == (l_1854[3] <= p_42)) , l_1904) || 0L))))))), p_42)) , 0x703A36901CA62E3CLL)) | 0x101816B8A6985C52LL), p_3133->g_1230.x)) >= (*p_3133->g_250)) == l_1965))) , 0x4225L) , 1UL) || l_1853), p_42)) , 0x0FL) & l_1969[6]);
                        l_1972 ^= (safe_mul_func_int16_t_s_s(p_42, (*p_3133->g_250)));
                        p_3133->g_1380.x ^= (safe_mul_func_uint64_t_u_u((safe_add_func_uint8_t_u_u(((((*l_1820) = &p_3133->g_970) != (((l_1978 = make_char2(l_1977.x, l_1977.x).x) , (**p_3133->g_664)) , l_1979)) , ((l_1904 ^= ((safe_lshift_func_uint32_t_u_s((((*l_1983) &= make_uint1(l_1982.x).x) , l_1848.y), (nullptr != (**l_1820)))) , (+(l_1966 |= l_1853)))) & make_int4(l_1984.x, l_1984.x, l_1984.x, l_1984.x).x)), make_uchar2(251UL, ((safe_sub_func_int8_t_s_s((make_ulong4(l_1987.y, l_1987.y, l_1987.y, l_1987.y).w ^ ((*l_1511) ^= p_41)), (safe_add_func_int32_t_s_s((make_uint2(l_1990.y, l_1990.y).y , (safe_rshift_func_int16_t_s_s(l_1993, 13))), (-4L))))) ^ l_1903[0])).y)), p_41));
                    }
                }
                else
                { /* block id: 799 */
                    int32_t ****l_2010[6][2][6] = {{{&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}, {&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}}, {{&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}, {&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}}, {{&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}, {&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}}, {{&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}, {&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}}, {{&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}, {&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}}, {{&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}, {&p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970, &p_3133->g_970}}};
                    __shared__ int64_t l_2018;
                    l_2018 = 0x9C888121A7B5C51CLL;
                    int16_t **l_2034[9][8][2] = {{{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}, {{&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}, {&p_3133->g_250, &p_3133->g_250}}};
                    long1 l_2038 = make_long1(0x9D6C5124790C7EEDLL);
                    uint8_t l_2058 = 250UL;
                    int64_t ***l_2066 = &l_1212[2][2];
                    long4 l_2069 = make_long4((-1L), (-1L), (-1L), (-1L));
                    __shared__ int32_t ***l_2090;
                    l_2090 = &p_3133->g_120;
                    int16_t l_2106 = 9L;
                    int32_t l_2107[9] = {0L, (-9L), 0L, (-9L), 0L, (-9L), 0L, (-9L), 0L};
                    int i, j, k;
                    if ((safe_lshift_func_int32_t_s_s((l_1996 <= ((nullptr != l_1997) | (safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(253UL, ((safe_mul(((make_char2((-10L), 0xAAL) ^ make_char2(p_3133->g_2004.x, p_3133->g_2004.x))), make_char2(0x21L, (((l_2018 = (safe_sub_func_int64_t_s_s(p_41, (safe_sub_func_int8_t_s_s(((((**p_3133->g_693) , (l_2009 == l_2010[0][0][2])) & (safe_add_func_uint16_t_u_u(((safe_lshift_func_uint32_t_u_s((safe_mul_func_uint16_t_u_u(p_41, l_2017)), 20)) || hip_const_2), p_42))) , 5L), (**p_3133->g_568)))))) & l_1891) || p_42))))).y)), p_41)))), 5)))
                    { /* block id: 801 */
                        uint8_t l_2035 = 0xB6L;
                        p_3133->g_703 = nullptr;
                        l_1902 = ((safe_sub_func_int16_t_s_s((p_41 = (safe_mul_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((p_3133->g_1029.x ^= (safe_mul_func_int64_t_s_s((((p_41 && (safe_mul_func_int16_t_s_s(p_42, make_short3(p_42, (p_41 ^ l_2017), (safe_mul_func_uint16_t_u_u(((p_42 <= (*p_3133->g_250)) & ((p_42 != (((safe_lshift_func_int64_t_s_u((**p_3133->g_664), p_42)) , l_2033) == l_2034[6][5][1])) | 0x1A3F0E9EB29FBD4BLL)), p_42))).z))) , p_41) || (*p_3133->g_1059)), p_42))) < 0x5AE429D6BD1B4FF7LL), 255UL)), l_2035))), (****p_3133->g_691))) || 0L);
                        l_1889 &= ((safe_sub_func_int64_t_s_s(make_long1(l_2038.x).x, p_41)) <= l_2017);
                        p_3133->g_703 = p_43;
                    }
                    else
                    { /* block id: 808 */
                        int64_t l_2039 = 0x166499E2A42A3B7FLL;
                        l_2039 = p_42;
                        if (l_2040)
                            continue;
                        p_3133->g_703 = func_49((*p_3133->g_693), &p_3133->g_15, p_40, (safe_sub_func_uint32_t_u_u(l_1955[0][9][0], make_int2(((safe_add_func_int32_t_s_s((safe_div_func_uint16_t_u_u((((65532UL < p_41) , (((safe_lshift_func_int64_t_s_u(((make_uint1(p_3133->g_2049.y).x <= (make_int4(p_3133->g_2050.y, p_3133->g_2050.y, p_3133->g_2050.y, p_3133->g_2050.y).z , (((~((((((safe_sub(make_short3((p_42 == ((((safe_sub_func_uint16_t_u_u(((l_2055 &= (0x450CL || (***p_3133->g_692))) && l_2056), p_41)) < p_41) , &p_3133->g_376) == (*l_1707))), l_2039, l_2057), make_short3(0L, 0L, 0L)))) & make_short3(0L, 0L, 0L))) | make_short3(0x0697L, 0x0697L, 0x0697L))))).x | 1L))) | p_41), 51)) || 0x2A92A619L) > 7L)) || l_2039), p_42)), l_2058)) ^ l_2039), l_1847).x)), l_2039, p_3133);
                    }
                    for (p_3133->g_15 = 2; (p_3133->g_15 <= 6); p_3133->g_15 += 1)
                    { /* block id: 816 */
                        uint8_t l_2059 = 249UL;
                        int32_t l_2062 = 0x32F60B59L;
                        int i;
                        l_2059++;
                        l_2062 |= l_1854[p_3133->g_946];
                        if (l_2063)
                            continue;
                        l_2062 = ((make_int2(0xA2EC2ADCL, 0xF3975087L) | make_int2((1L || (safe_div_func_int64_t_s_s(((p_42 , l_2066) != &l_1212[2][3]), ((make_long4((-1L), ((safe_sub(make_long4(l_2069.x, l_2069.x, l_2069.x, l_2069.x), make_long4((p_3133->g_622.x |= ((make_long4(l_2070.z, l_2070.z, l_2070.z, l_2070.z).y > (safe_lshift_func_uint32_t_u_s((safe_mod_func_uint8_t_u_u(make_uchar4(6UL, (safe_lshift_func_uint32_t_u_s((safe_sub_func_uint64_t_u_u((l_1854[(p_3133->g_946 + 1)] &= (((safe_mul(make_char2((p_3133->g_2081.w = make_char2(p_3133->g_2081.w, p_3133->g_2081.w).x), ((l_2059 != (make_short2((-9L), 0xF67FL).x > (safe_add_func_int64_t_s_s((make_uchar1(0UL).x == (!(**p_3133->g_568))), ((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u(((make_ushort3(0xDD9AL, (p_3133->g_1223.x = (safe_rshift_func_uint32_t_u_s(((l_1847 = ((l_2090 = &p_3133->g_120) != &p_3133->g_120)) != l_2091), p_42))), 8UL) | make_ushort3(0xBC74L, 0xBC74L, 0xBC74L))).x, 14)), 18446744073709551611UL)) & 1L))))) >= l_1932.x)), make_char2(0x18L, 0x18L)))).y == (**p_3133->g_1058))), (**p_3133->g_664))), l_1906)), 0x15L, 0UL).x, 3L)), l_1934))) | p_42)), 0x15D6837FE7DF496BLL, p_41, (-4L))))).x, 0xCEFD581548BD2AA8LL, p_42) | make_long4(1L, 1L, 1L, 1L))).y))), 1L))).x;
                    }
                    p_3133->g_67.z &= (0L || ((safe_add(make_long1(((***l_2066) = (safe_lshift_func_uint32_t_u_s((safe_lshift_func_uint16_t_u_u((l_1903[0] , make_ushort4(l_2098.y, l_2098.y, l_2098.y, l_2098.y).x), ((l_2121 = (safe_mul_func_int32_t_s_s((p_41 > (l_1904 = p_41)), make_int2(((safe_sub_func_uint32_t_u_u(((++l_2114) < l_2117[2]), (((nullptr != l_2118) > ((safe_mul_func_uint32_t_u_u(p_42, (p_42 | 4294967295UL))) , 1L)) < l_1907[0]))) >= (*p_3133->g_569)), 0x08302F1DL).x))) | p_42))), 15)))), make_long1(1L)))).x);
                    if (l_1906)
                        goto lbl_1408;
                }
            }
            for (l_2063 = 0; (l_2063 <= 5); l_2063 += 1)
            { /* block id: 838 */
                int16_t *l_2122 = nullptr;
                __shared__ int32_t l_2123;
                l_2123 = 5L;
                __shared__ uint64_t l_2128;
                l_2128 = 18446744073709551612UL;
                uint16_t *l_2129 = nullptr;
                uint16_t *l_2130 = &hip_const_8;
                short2 l_2135 = make_short2(0xB149L, 0x9E25L);
                int32_t l_2136 = 0xA76B4989L;
                uint4 l_2140 = make_uint4(0UL, 4294967291UL, 0UL, 4294967291UL);
                int32_t *l_2160 = nullptr;
                int i;
                for (l_1805 = 0; (l_1805 <= 3); l_1805 += 1)
                { /* block id: 841 */
                    if (p_42)
                        break;
                }
                p_43 = func_49(l_2122, p_40, p_40, l_2123, (safe_sub_func_int8_t_s_s(((make_char3((*p_3133->g_1059), ((safe_mul_func_int64_t_s_s(((l_2128 >= ((p_3133->g_1183.x--) <= (((*l_1511) = (p_3133->g_982.x && p_42)) ^ ((**p_3133->g_664) = ((safe_mul_func_int16_t_s_s(make_short4((-6L), 1L, (-1L), ((((make_short3(l_2135.y, l_2135.y, l_2135.y) | make_short3(9L, p_41, l_2135.x))) ^ make_short3(0x094EL, 0x094EL, 0x094EL))).z).z, p_42)) , 0xB9041D02CC96FB19LL))))) >= 0x1857FF3945556476LL), p_42)) && p_41), p_41) | make_char3((-1L), (-1L), (-1L)))).z, l_2136)), p_3133);
                if (p_41)
                    break;
                ++l_2137;
                for (l_1330 = 0; (l_1330 <= 5); l_1330 += 1)
                { /* block id: 852 */
                    int8_t l_2148 = 1L;
                    uint64_t l_2166 = 18446744073709551610UL;
                    p_3133->g_703 = p_43;
                    if ((make_uint2(l_2140.z, l_2140.z).y != (safe_lshift_func_uint32_t_u_s((((*p_3133->g_1059) , l_2143) || (((safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s(l_2148, ((make_char3(0xDFL, ((safe_mod_func_int64_t_s_s(0x40B511E5E6E231FALL, (((safe_add_func_uint64_t_u_u((l_2148 & ((safe_lshift(make_char2(0L, 0xF9L), ((make_char2(p_3133->g_2155.x, p_3133->g_2155.x) ^ make_char2(p_3133->g_2156.x, p_3133->g_2156.x)))))).x), (((p_41 , ((l_2148 , (make_int2((safe_lshift_func_int64_t_s_s((18446744073709551611UL == (5L ^ (**p_3133->g_1609))), 14)), l_2135.x).x | 0x54F3AF96L)) && (**p_3133->g_1058))) , p_41) > (**p_3133->g_568)))) && p_41) | (**p_3133->g_1609)))) > p_41), 0x40L).x , 0xA81C4D4CF3E33019LL) >= p_42))), 251UL)) , l_2159) , 1UL)), l_2135.y))))
                    { /* block id: 854 */
                        p_3133->g_703 = nullptr;
                    }
                    else
                    { /* block id: 856 */
                        int16_t *l_2167 = nullptr;
                        int16_t *l_2168 = nullptr;
                        int16_t *l_2169 = &hip_const_10;
                        int16_t *l_2170 = nullptr;
                        int16_t *l_2171 = nullptr;
                        __shared__ int16_t *l_2172;
                        l_2172 = &hip_const_5;
                        int16_t *l_2173 = nullptr;
                        int16_t *l_2174 = &hip_const_10;
                        int16_t *l_2175 = &hip_const_1;
                        int8_t ***l_2176 = &p_3133->g_1058;
                        int32_t *l_2178 = &p_3133->g_767;
                        int32_t l_2179 = (-2L);
                        l_2160 = p_43;
                        l_2123 = (0x31L >= (((safe_rshift_func_int16_t_s_s(p_41, (p_3133->g_335[1] , ((((safe_div(make_short3(p_3133->g_2165.y, p_3133->g_2165.y, p_3133->g_2165.y), make_short3((-4L), 0xAFDCL, (p_3133->g_913.z = l_2166))))) ^ make_short3((((*l_2176) = &p_3133->g_1059) == (p_42 , l_2177)), 0x08FCL, (((*l_2178) = (l_2166 & 0xCD1A0883FFE72E0DLL)) , 0xD7FDL)))).x))) , l_2179) == 0xBCL));
                    }
                    if (l_2180)
                        continue;
                    if (l_2181[1])
                        break;
                }
            }
        }
        if (((p_41 = make_short2((*p_3133->g_250), 1L).y) & (((((safe_sub_func_uint64_t_u_u((p_3133->g_420.x++), (safe_lshift_func_int8_t_s_s((((+p_42) | l_2189[0]) , (((~(safe_mul_func_int16_t_s_s((p_3133->g_2165.x ^= (p_42 , ((l_2208 ^= (l_2207 &= ((safe_rshift_func_uint32_t_u_u(make_uint4(p_3133->g_2194.z, p_3133->g_2194.z, p_3133->g_2194.z, p_3133->g_2194.z).y, p_3133->g_2195)) != (safe_add_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(p_42, ((p_3133->g_67.x = ((&p_3133->g_691 == &p_3133->g_691) & (safe_lshift_func_uint8_t_u_u((safe_rshift_func_int64_t_s_u((1UL || p_42), p_42)), 3)))) , p_3133->g_2204))) == p_42), (*p_3133->g_569)))))) < 0xC4E9A1AFL))), 0xDF65L))) , l_2209) != p_42)), 2)))) , (*p_3133->g_1059)) & (**p_3133->g_1609)) && 0xA7L) || 1L)))
        { /* block id: 874 */
            int32_t ***l_2214[4];
            int i;
            for (i = 0; i < 4; i++)
                l_2214[i] = nullptr;
            p_3133->g_1915.y ^= ((safe_mul(((safe_add(make_int3(0xF9D98EC9L, 0xA6C6CBE9L, ((p_3133->g_970 = l_2214[3]) != l_2214[2])), ((make_int3(l_2215.x, l_2215.x, l_2215.x) | ((safe_lshift(((safe_rshift(make_int3((p_3133->g_1114.z = (safe_add_func_uint64_t_u_u(p_42, (safe_mul_func_uint64_t_u_u(p_41, ((+p_41) <= (((((((safe_rshift(((safe_lshift(make_uchar1(l_2228.x), make_uchar1(8)))), make_uchar1(((safe_sub_func_uint64_t_u_u(make_ulong2(l_2231.x, l_2231.x).x, 0x1F11F1EE8281148ELL)) != (nullptr == &p_3133->g_664)))))).x ^ ((l_2232 || 0L) > (**p_3133->g_664))) >= 0x11L) == (**p_3133->g_664)) || (**p_3133->g_568)) != 0xDEL))))))), 7L, p_41), make_int3(0xF5A689DBL, 0xF5A689DBL, 0xF5A689DBL)))), make_int3(0x76D2D3FAL, 0x76D2D3FAL, 0x76D2D3FAL))))))))), make_int3(0x81E349C1L, 0x81E349C1L, 0x81E349C1L)))).z;
        }
        else
        { /* block id: 878 */
            int32_t *l_2233 = &p_3133->g_945;
            int32_t l_2248 = 0xE59DEC95L;
            int16_t *l_2258 = nullptr;
            int16_t *l_2259 = nullptr;
            __shared__ int16_t *l_2260;
            l_2260 = &hip_const_5;
            int16_t *l_2261 = &hip_const_1;
            uint16_t l_2281 = 0UL;
            uint1 l_2299 = make_uint1(0x99D00593L);
            uint4 l_2300 = make_uint4(4294967295UL, 0xFA565835L, 4294967295UL, 0xFA565835L);
            int32_t l_2308[1][7] = {{0xE5A71D9EL, 0xE5A71D9EL, (-4L), 0xE5A71D9EL, 0xE5A71D9EL, (-4L), 0xE5A71D9EL}};
            __shared__ uint16_t l_2410;
            l_2410 = 8UL;
            int64_t *l_2414 = &l_1892;
            int64_t ***l_2439[9] = {&l_1212[3][7], &l_1212[3][7], &l_1212[4][1], &l_1212[3][7], &l_1212[3][7], &l_1212[4][1], &l_1212[3][7], &l_1212[3][7], &l_1212[4][1]};
            uint32_t l_2449 = 0xCD63F4A6L;
            uint16_t ****l_2462[5][7][2] = {{{&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}}, {{&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}}, {{&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}}, {{&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}}, {{&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}, {&p_3133->g_1798, &p_3133->g_1798}}};
            int i, j, k;
lbl_2442:
            p_43 = l_2233;
            if ((safe_add_func_int32_t_s_s((((safe_div(make_int3(0x55483EEBL, (*p_43), (make_uchar2(255UL, 0x90L).x , (safe_sub_func_uint32_t_u_u(((safe_mod_func_int32_t_s_s(1L, ((safe_lshift_func_int16_t_s_s(p_42, ((safe_div_func_uint8_t_u_u((l_2248 = (++(*p_3133->g_569))), (make_uint1(((make_char2(p_3133->g_2249.y, p_3133->g_2249.y).x == ((+(safe_add_func_int8_t_s_s((p_3133->g_455.x = (safe_mul_func_uint32_t_u_u((p_42 < (!((make_ulong1(p_3133->g_2256.y).x , (((make_short4(1L, 0x6A07L, 0x1773L, (p_41 = (p_42 <= ((*l_2233) = make_long1(l_2257.x).x)))) & ((make_short4(0x1021L, 1L, 5L, (((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(((+((safe_sub_func_int8_t_s_s((nullptr == &l_1943[4]), (((*l_1511) = 0x6D47E534A1D47026LL) || 0UL))) != 0xCF3AL)) >= 18446744073709551610UL), (*p_3133->g_1059))), p_3133->g_283.x)) , nullptr) == &p_3133->g_691)) & make_short4(1L, 1L, 1L, 1L))))).z || p_42)) | 0x38L))), 1L))), p_42))) ^ p_42)) < p_42)).x && (*p_43)))) <= l_2268))) , p_41))) || p_42), p_42)))), make_int3(0xA4F6A81AL, 0xA4F6A81AL, 0xA4F6A81AL)))).z ^ p_42), 0xAC4AA461L)))
            { /* block id: 886 */
                uint8_t l_2274 = 0x46L;
                __shared__ int32_t l_2278;
                l_2278 = (-1L);
                int32_t l_2279 = 0xD77EB1CFL;
                int1 l_2280 = make_int1(0x35296BC7L);
                uint4 l_2298 = make_uint4(0x5E45CED5L, 0x78F665E7L, 0x5E45CED5L, 0x78F665E7L);
                int8_t l_2309 = 0x8AL;
                int32_t **l_2378 = &l_1948[2][1][0];
                int64_t **l_2382 = nullptr;
                int i;
                for (p_3133->g_2195 = 0; (p_3133->g_2195 > (-4)); p_3133->g_2195 = safe_sub_func_uint64_t_u_u(p_3133->g_2195, 5))
                { /* block id: 889 */
                    uint32_t l_2271[9][5] = {{0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}, {0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L, 0x8B60BD91L, 0x1D2380F5L}};
                    int i, j;
                    l_2271[8][0]--;
                    l_2274 = ((!((***l_1214) |= make_long3(p_42, p_41, 0x8F129F49B9F77D47LL).z)) != (*l_2233));
                    (*l_2233) = 0x2A79BBBDL;
                    l_2278 = ((*l_2233) = (safe_lshift_func_int8_t_s_s((safe_unary_minus_func_int64_t_s(((p_41 <= l_2271[8][0]) & (*p_43)))), 4)));
                }
                ++l_2281;
                for (p_42 = 15; (p_42 == 3); p_42--)
                { /* block id: 900 */
                    uint32_t l_2289 = 0xC60BABB1L;
                    int32_t l_2305[4] = {0x882D0AF8L, 4L, 0x882D0AF8L, 4L};
                    __shared__ int16_t l_2310;
                    l_2310 = (-8L);
                    uint8_t *l_2324 = &l_2063;
                    uchar3 l_2350 = make_uchar3(255UL, 0x43L, 255UL);
                    int1 l_2372 = make_int1((-1L));
                    __shared__ int32_t **l_2379;
                    l_2379 = &l_1248[6];
                    long1 l_2398 = make_long1(1L);
                    int32_t l_2402[8][2] = {{3L, 0x97FD3732L}, {3L, 0x97FD3732L}, {3L, 0x97FD3732L}, {3L, 0x97FD3732L}, {3L, 0x97FD3732L}, {3L, 0x97FD3732L}, {3L, 0x97FD3732L}, {3L, 0x97FD3732L}};
                    int8_t ***l_2426 = nullptr;
                    int8_t ****l_2425 = &l_2426;
                    int8_t *****l_2424[10][7];
                    int i, j;
                    for (i = 0; i < 10; i++)
                    {
                        for (j = 0; j < 7; j++)
                            l_2424[i][j] = &l_2425;
                    }
                    l_2286.y--;
                    ++l_2289;
                    if ((l_2278 |= (safe_mod_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(0x8000F51CL, ((((safe_sub(((make_uint4(l_2298.x, l_2298.x, l_2298.x, l_2298.x) | make_uint4(l_2299.x, l_2299.x, l_2299.x, l_2299.x))), make_uint4(l_2300.z, l_2300.z, l_2300.z, l_2300.z)))) ^ make_uint4(0x00BBE1B5L, (((*l_2324) = ((safe_mod_func_int32_t_s_s(((&p_3133->g_29[1] == (p_43 = nullptr)) != p_42), (l_2312++))) < (!(((safe_rshift_func_uint8_t_u_s((--(*p_3133->g_569)), 6)) || (safe_mod_func_int32_t_s_s((safe_lshift_func_uint64_t_u_u(p_42, 31)), ((**p_3133->g_568) , make_uint3(l_2323.x, l_2323.x, l_2323.x).y)))) == l_2310)))) >= ((*l_2233) >= (((safe_lshift_func_int64_t_s_u(((safe_unary_minus_func_uint64_t_u(((*l_1511) |= (safe_mod_func_uint8_t_u_u(((make_uint4((&l_1821 != nullptr), 0x08475908L, (*l_2233), 4294967295UL).x && 0x22B83331L) == l_2280.x), l_2298.z))))) && l_2310), 18)) >= p_41) | 0x4719L))), 0x00BC3D92L, p_41))).w)), l_2279))))
                    { /* block id: 909 */
                        uint32_t l_2349 = 9UL;
                        __shared__ uint32_t l_2352;
                        l_2352 = 0xCA163718L;
                        int32_t l_2356[10] = {(-1L), 6L, (-1L), 6L, (-1L), 6L, (-1L), 6L, (-1L), 6L};
                        int64_t **l_2383 = &l_1937;
                        int64_t ***l_2384 = &l_1212[3][7];
                        int i;
                        l_2305[2] = (l_2357 = ((((((((safe_div(((safe_mod(make_int3(0L, (((make_int1(0xAE218EC7L).x != (((l_2356[3] ^= ((safe_mod_func_uint64_t_u_u(((safe_add_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((p_3133->g_614.w = ((*l_2233) = p_42)) || p_41), (make_ushort1(p_3133->g_2342.x).x , (safe_lshift_func_int32_t_s_s((((safe_mod_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u(((l_2349 = (****p_3133->g_691)) != (&p_3133->g_376 != nullptr)), p_3133->g_1380.x)) , (((((make_uchar4(l_2350.x, l_2350.x, l_2350.x, l_2350.x) ^ make_uchar4(l_2351.z, l_2351.z, l_2351.z, l_2351.z))) & make_uchar4(0x6DL, 0xB5L, 1UL, 1UL))).w && (*p_3133->g_1059))), l_2352)) < (safe_sub_func_int32_t_s_s(((-1L) <= p_42), p_42))) & p_3133->g_2355[2]), p_3133->g_622.z))))), (**p_3133->g_1609))), p_42)) ^ (*p_3133->g_250)), (-2L))) == p_41)) != (*p_3133->g_250)) & (**p_3133->g_693))) == l_2350.y) | p_42), 0L), make_int3((-10L), (-10L), (-10L))))), make_int3(0x9A65C916L, 0x9A65C916L, 0x9A65C916L)))) | make_int3((-10L), (-10L), (-10L)))) ^ make_int3(0xDA7DDB7CL, 0xDA7DDB7CL, 0xDA7DDB7CL))) ^ make_int3(0x3044D10AL, 0x3044D10AL, 0x3044D10AL))).y);
                        l_2280.x = (make_ushort1(p_3133->g_2358.z).x && (((((((safe_rshift(make_short3(l_2361.z, l_2361.z, l_2361.z), make_short3(16, 16, 16)))) ^ make_short3((((l_2356[3] = ((*l_2233) = ((0x70F1L <= ((safe_rshift_func_uint32_t_u_u(((((safe_mod_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((p_41 = 6L), (safe_lshift_func_int32_t_s_s(make_int2(l_2372.x, l_2372.x).y, (!(safe_lshift_func_uint32_t_u_u(l_2305[0], (safe_lshift_func_int64_t_s_s(((***l_1214) = (**p_3133->g_664)), 36))))))))) != (make_ushort3(p_3133->g_2377.x, p_3133->g_2377.x, p_3133->g_2377.x).y < (&l_2233 == (l_2379 = l_2378)))), (safe_sub_func_uint64_t_u_u(((l_2383 = l_2382) == ((*l_2384) = (*l_1214))), (safe_mul_func_uint64_t_u_u((l_2387 != l_2387), p_42)))))) >= p_42), p_42)) > p_42) & p_42) > 0x38L), 24)) || (-7L))) & p_42))) < p_42) , 0x236FL), 0L, 0x8788L))).y > p_42) , 0L) ^ p_42));
                        (*l_2379) = p_43;
                    }
                    else
                    { /* block id: 925 */
                        uint32_t l_2388[6][8][2] = {{{0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}}, {{0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}}, {{0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}}, {{0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}}, {{0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}}, {{0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}, {0x39B423FDL, 1UL}}};
                        char3 l_2395 = make_char3(0xC0L, 1L, 0xC0L);
                        int64_t ****l_2399 = &p_3133->g_663;
                        long2 l_2405 = make_long2(1L, 0x4019D2A81A870382LL);
                        int16_t *****l_2411 = &l_1294;
                        int32_t l_2413[9][3][9] = {{{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}, {{1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}, {1L, 7L, 0x9C84C09EL, 0L, 0x422B9F10L, (-1L), 0xDBCCB4C4L, 0x67060BB0L, 0L}}};
                        int i, j, k;
                        if (l_2388[1][7][1])
                            break;
                        l_2413[1][0][8] ^= (safe_sub_func_int64_t_s_s(((((safe_lshift(((make_long4((safe_mod_func_int8_t_s_s(make_char1(l_2395.z).x, ((*l_2324) &= ((safe_add_func_uint64_t_u_u(make_ulong2(0xD4BAFC4CA75E368DLL, ((*l_1511) |= (+p_41))).y, make_long3(l_2398.x, l_2398.x, l_2398.x).y)) > ((l_2399 == (((p_3133->g_2412 ^= (((safe_div_func_int64_t_s_s((l_2402[0][0] , ((((safe_rshift_func_uint8_t_u_s(((*p_3133->g_1797) == ((&l_2208 == ((*p_3133->g_664) = ((p_41 ^ ((+make_long1(l_2405.y).x) < ((safe_div_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s((*l_2233), 14)), 0xD220544347D55063LL)) ^ (p_41 && p_41)))) , nullptr))) , nullptr)), (**p_3133->g_1058))) & l_2410) , nullptr) == l_2411)), p_42)) & (*l_2233)) > p_42)) , p_42) , &p_3133->g_663)) <= p_41))))), 1L, 0xDDA10DE71B2EBC8ELL, 6L) & make_long4(0x61ED5A122A920863LL, 0x61ED5A122A920863LL, 0x61ED5A122A920863LL, 0x61ED5A122A920863LL))), make_long4(0x2139C61CC87D8D8FLL, 0x2139C61CC87D8D8FLL, 0x2139C61CC87D8D8FLL, 0x2139C61CC87D8D8FLL)))) | make_long4(0x901B82497C80C95FLL, 0x901B82497C80C95FLL, 0x901B82497C80C95FLL, 0x901B82497C80C95FLL))).z, 0x88D0D71A33194DA3LL));
                        l_2413[1][0][8] |= make_int4((nullptr != l_2414), 0xEF740C7FL, 0x8F97FC73L, (safe_rshift_func_uint32_t_u_u(p_42, 28))).z;
                        return p_41;
                    }
                    l_2280.x |= ((safe_lshift(make_int4(p_41, (safe_mod_func_uint8_t_u_u(((safe_mul_func_int64_t_s_s((-7L), (p_3133->g_2423 == (l_2427 = p_3133->g_2423)))) >= (safe_lshift_func_uint32_t_u_u((p_42 & 0x593045B1CF67D91BLL), 20))), (p_3133->g_1150.x = (p_3133->g_2156.y = p_42)))), ((((safe_add_func_int8_t_s_s(make_char4(l_2433.y, l_2433.y, l_2433.y, l_2433.y).z, (safe_mul_func_int8_t_s_s(make_char2(l_2436.x, l_2436.x).x, ((safe_add_func_int64_t_s_s((*l_2233), (l_2439[5] == nullptr))) == p_41))))) , p_41) ^ (*l_2233)) , p_42), 0L), make_int4((-8L), (-8L), (-8L), (-8L))))).z;
                }
            }
            else
            { /* block id: 940 */
                int32_t *l_2447 = &l_2306[0][0];
                __shared__ int32_t *l_2448;
                l_2448 = nullptr;
                for (p_3133->g_280 = 14; (p_3133->g_280 < 23); ++p_3133->g_280)
                { /* block id: 943 */
                    if (p_3133->g_280)
                        goto lbl_2442;
                    p_3133->g_121 = p_43;
                }
                for (p_3133->g_2412 = 28; (p_3133->g_2412 > 32); ++p_3133->g_2412)
                { /* block id: 949 */
                    uint32_t **l_2450[5] = {nullptr, &p_3133->g_437, nullptr, &p_3133->g_437, nullptr};
                    int32_t l_2453 = 0x0C87615EL;
                    long4 l_2461 = make_long4(0x88F6DAB46280C9D7LL, 1L, 0x88F6DAB46280C9D7LL, 1L);
                    __shared__ uint64_t l_2463;
                    l_2463 = 0x289DEAB061047864LL;
                    int i;
                    for (p_3133->g_921 = (-7); (p_3133->g_921 < 1); p_3133->g_921 = safe_add_func_uint16_t_u_u(p_3133->g_921, 1))
                    { /* block id: 952 */
                        p_43 = l_2447;
                        p_43 = l_2448;
                        if (l_2449)
                            break;
                    }
                    p_43 = func_49(&p_41, &p_3133->g_1320, (p_3133->g_472 = (((nullptr == l_2450[4]) , (safe_div_func_int32_t_s_s(((1UL <= (((((p_42 > p_42) , p_42) , ((-1L) || (*l_2233))) , 0UL) && p_41)) == (-1L)), (*l_2447)))) , &l_2232)), l_2453, (*l_2233), p_3133);
                    if ((l_2463 = make_int1(((((safe_div_func_uint64_t_u_u(p_3133->g_2458, p_42)) | (p_41 < (((safe_mod(make_long3(l_2461.w, l_2461.w, l_2461.w), make_long3(((*l_1213) ^= p_41), ((make_long1(0xEC3721C46736EBD6LL) ^ make_long1((&p_3133->g_1798 == ((l_2461.z & 0x7B7A98A7L) , l_2462[3][5][1]))))).x, 0x5F55DD6E38AB4046LL)))).x != ((*l_2414) = p_41)))) && 0x9768L) , 0x33385897L)).x))
                    { /* block id: 962 */
                        if ((*l_2447))
                            break;
                    }
                    else
                    { /* block id: 964 */
                        if (p_42)
                            break;
                        l_2466[2] = p_3133->g_2464[4];
                        if (p_3133->g_280)
                            goto lbl_2467;
                    }
                }
            }
        }
        for (l_2232 = 0; (l_2232 <= 2); l_2232++)
        { /* block id: 974 */
            int8_t l_2484 = (-1L);
            char1 l_2492 = make_char1(0xFEL);
            int32_t l_2503 = 0xD75E0EB6L;
            int32_t l_2542 = 0L;
            int32_t l_2543 = 8L;
            int32_t l_2544[10][6][4] = {{{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}, {{1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}, {1L, 1L, 0x8C1B59A6L, 0xDB84211DL}}};
            short3 l_2625 = make_short3(4L, (-4L), 4L);
            int i, j, k;
            l_2504 ^= ((safe_mod_func_uint64_t_u_u(((safe_rshift_func_int64_t_s_u((safe_rshift_func_int16_t_s_u((***p_3133->g_692), 8)), 18)) < (p_3133->g_76.y--)), ((((safe_div(make_long1(p_3133->g_2480.x), make_long1((-5L))))) ^ ((safe_lshift(make_long1(((*l_1213) = (l_2484 &= make_long2(l_2483.y, l_2483.y).x))), make_long1(64)))))).x)) <= (make_int3((safe_div_func_uint16_t_u_u(0x30C2L, (safe_add_func_int64_t_s_s((safe_mod_func_int32_t_s_s((((make_char4(l_2491.y, l_2491.y, l_2491.y, l_2491.y) ^ make_char4(l_2492.x, l_2492.x, l_2492.x, l_2492.x))).z | (p_3133->g_2155.x = (((-1L) && (((l_2495 != l_2495) != (p_40 == &l_2232)) & ((safe_mul_func_int16_t_s_s(p_41, make_ushort1(l_2498.y).x)) == (((safe_mul_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u(((l_2503 = (((*p_3133->g_1058) == nullptr) , p_41)) <= (*p_3133->g_569)), 0x1AFFL)), 0x2FA0E475L)) > l_2492.x) || p_41)))) , p_42))), (-1L))), p_41)))), 8L, 0xA93D51F0L).z == p_41));
            for (l_2504 = (-17); (l_2504 < 26); ++l_2504)
            { /* block id: 983 */
                p_43 = p_43;
            }
            for (p_3133->g_402 = 3; (p_3133->g_402 <= 24); p_3133->g_402++)
            { /* block id: 988 */
                p_3133->g_1915.x = l_2484;
                for (l_2057 = (-5); (l_2057 == (-21)); --l_2057)
                { /* block id: 992 */
                    int3 l_2516 = make_int3(0x6523AD93L, 0xFCFA04FEL, 0x6523AD93L);
                    int i;
                    l_2516.y |= ((safe_div(((safe_lshift(make_int2(1L, 0xF552C016L), make_int2(p_41, 0x97B7B9DCL)))), make_int2(l_2515.y, l_2515.y)))).x;
                    for (l_2063 = 0; (l_2063 <= 12); ++l_2063)
                    { /* block id: 996 */
                        if (p_41)
                            break;
                    }
                    l_2519[1][2] = ((**p_3133->g_664) | p_41);
                }
                p_3133->g_121 = &l_2503;
            }
            for (p_3133->g_946 = 1; (p_3133->g_946 <= 5); p_3133->g_946 += 1)
            { /* block id: 1005 */
                uint2 l_2522 = make_uint2(0xA3CF5C9AL, 1UL);
                __shared__ int32_t l_2536;
                l_2536 = (-8L);
                int32_t l_2537 = (-5L);
                int32_t l_2538 = 0xAF7ACDBAL;
                int32_t l_2539 = 0x6AA5930BL;
                __shared__ int32_t l_2541;
                l_2541 = 0x5F113AC8L;
                int32_t l_2546 = 0x03052D17L;
                __shared__ int32_t l_2547;
                l_2547 = 0x46DD0D3CL;
                int32_t l_2548 = 0xA2110DE5L;
                int32_t l_2550 = 0x0C4CB138L;
                int32_t l_2551[10][2] = {{9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}, {9L, 0xA72E54BBL}};
                uint64_t ****l_2565 = &l_1707;
                __shared__ uint8_t **l_2607;
                l_2607 = &p_3133->g_569;
                int i, j;
                if (((safe_lshift_func_int64_t_s_u(((((make_uint2(l_2522.x, l_2522.x) ^ make_uint2((((l_1359[p_3133->g_946] || (l_1359[p_3133->g_946] < ((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint32_t_u_u(1UL, ((((((*p_3133->g_569) |= (l_2492.x | ((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(p_42, l_2484)), (nullptr == (***p_3133->g_1797)))), (**p_3133->g_1058))) || p_41))) && (*p_3133->g_569)) && p_41) == l_1359[p_3133->g_946]) | p_42))), p_42)) , p_42))) , (*p_3133->g_1798)) == l_2533), 1UL))).x <= 1UL) , p_42), p_41)) , l_2534))
                { /* block id: 1007 */
                    int32_t l_2535 = 0L;
                    __shared__ int16_t l_2540;
                    l_2540 = (-1L);
                    int32_t l_2545 = (-1L);
                    int32_t l_2549[7][9] = {{(-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L)}, {(-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L)}, {(-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L)}, {(-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L)}, {(-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L)}, {(-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L)}, {(-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L), 0x466DDEB2L, (-7L)}};
                    int8_t l_2552 = (-5L);
                    int i, j;
                    ++p_3133->g_2553;
                    p_3133->g_1331.x |= (p_3133->g_1264.x = ((safe_div_func_int16_t_s_s(0x321DL, (l_2548 ^ p_41))) , ((make_int3(l_2558.x, l_2558.x, l_2558.x) ^ ((safe_lshift(make_int3((((safe_rshift_func_uint64_t_u_s(p_41, 34)) > (p_3133->g_2563 == l_2565)) & l_2552), (((safe_lshift(make_long1(p_3133->g_2568.z), make_long1(64)))).x > 0x5F57D7964113DC53LL), 0x0DF2C218L), make_int3(32, 32, 32)))))).x));
                }
                else
                { /* block id: 1011 */
                    __shared__ int64_t l_2569;
                    l_2569 = (-4L);
                    short4 l_2608 = make_short4(0xD22BL, 0x876EL, 0xD22BL, 0x876EL);
                    short4 l_2623 = make_short4((-10L), 0x8935L, (-10L), 0x8935L);
                    int32_t l_2630[9] = {0x0779302BL, 1L, 0x0779302BL, 1L, 0x0779302BL, 1L, 0x0779302BL, 1L, 0x0779302BL};
                    uint16_t *l_2644 = &hip_const_8;
                    int i;
                    l_2569 |= p_41;
                    for (l_2548 = 0; (l_2548 <= 0); l_2548 += 1)
                    { /* block id: 1015 */
                        __shared__ int32_t *l_2600;
                        l_2600 = &p_3133->g_402;
                        int32_t **l_2599 = &l_2600;
                        int32_t l_2602 = (-8L);
                        uint16_t *l_2611 = nullptr;
                        uint16_t *l_2612 = nullptr;
                        uint16_t *l_2613 = &hip_const_9;
                        uint16_t *l_2614[6][7] = {{nullptr, &hip_const_8, nullptr, &l_1401, nullptr, nullptr, nullptr}, {nullptr, &hip_const_8, nullptr, &l_1401, nullptr, nullptr, nullptr}, {nullptr, &hip_const_8, nullptr, &l_1401, nullptr, nullptr, nullptr}, {nullptr, &hip_const_8, nullptr, &l_1401, nullptr, nullptr, nullptr}, {nullptr, &hip_const_8, nullptr, &l_1401, nullptr, nullptr, nullptr}, {nullptr, &hip_const_8, nullptr, &l_1401, nullptr, nullptr, nullptr}};
                        long4 l_2619 = make_long4(8L, (-1L), 8L, (-1L));
                        int3 l_2627 = make_int3(1L, 0xF7E8B4C5L, 1L);
                        uint16_t **l_2643 = &l_2611;
                        int i, j;
                        l_2602 ^= ((make_ushort3(p_3133->g_2570.w, p_3133->g_2570.w, p_3133->g_2570.w).y , ((((l_2306[l_2548][(l_2548 + 1)] | (safe_unary_minus_func_uint64_t_u(((p_41 , (((((make_uint1(((safe_div_func_uint64_t_u_u(((make_char4((safe_sub_func_uint16_t_u_u(l_2569, (safe_sub_func_uint64_t_u_u(((*l_1511) = p_42), (p_3133->g_1279.y--))))), (p_41 , ((((make_char4((safe_sub_func_int32_t_s_s((&p_3133->g_767 != ((*l_2599) = ((safe_mul_func_uint64_t_u_u((p_42 , ((*l_1511) = l_2569)), (safe_mul_func_uint32_t_u_u(make_uint2(make_uint2((safe_sub_func_uint32_t_u_u((((safe_mod(((make_uchar3(0xCAL, 1UL, ((safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s((safe_div_func_uint16_t_u_u(65533UL, 0xA7BCL)), 4294967295UL)), p_41)))), l_2569)) && p_42)) ^ make_uchar3(0x44L, 0x44L, 0x44L))), make_uchar3(1UL, 1UL, 1UL)))).z ^ p_41), 0L)), p_42).y, p_41).y, 0xC2F896DEL)))) , nullptr))), 0x5D36E019L)), l_2306[l_2548][(l_2548 + 1)], (-3L), 0x6AL) ^ make_char4(1L, 1L, 1L, 1L))) | make_char4((-1L), (-1L), (-1L), (-1L)))).x), (*p_3133->g_1059), 0L).w > p_41) == 0x93L), p_41)) ^ 1L)) & make_uint1(0x342D2F14L))) ^ make_uint1(6UL))).x , 0x6284L)) , l_2601)))) > 0L) > p_42) | 0UL)) && 0xC4747CD3L);
                        l_2539 ^= ((l_2630[5] = (make_char3(0x6CL, (-4L), (safe_add_func_uint16_t_u_u((((safe_add_func_uint64_t_u_u(18446744073709551615UL, (nullptr != l_2607))) , nullptr) == nullptr), make_short1(l_2608.y).x))).z > (0x3A77L && (((safe_rshift_func_uint16_t_u_u((p_3133->g_875.x++), (safe_div_func_int32_t_s_s(l_2542, ((~make_long1(l_2619.y).x) && p_42))))) < ((l_2543 ^= ((((l_2541 = make_ushort2(p_3133->g_2620.z, p_3133->g_2620.z).x) || (l_2544[0][4][2] = ((((make_short3(p_3133->g_2621.x, p_3133->g_2621.x, p_3133->g_2621.x) | ((((~make_short3(0xF45AL, (-9L), 0xD139L))) ^ make_short3(l_2622.z, l_2622.z, l_2622.z))))) ^ ((make_short3(0x0BB4L, (p_41 = make_short4(l_2623.w, l_2623.w, l_2623.w, l_2623.w).z), 0xA27CL) ^ ((make_short3(l_2624.x, l_2624.x, l_2624.x) ^ make_short3(l_2625.x, l_2625.x, l_2625.x))))))).y)) & (make_ushort3(l_2626.x, l_2626.x, l_2626.x).z | (make_int4(l_2627.y, l_2627.y, l_2627.y, l_2627.y).z | (safe_mul_func_int8_t_s_s((*p_3133->g_1059), (**p_3133->g_568)))))) & p_42)) <= 0xBBL)) == (-1L))))) != p_42);
                        p_3133->g_16.x |= ((safe_add_func_uint8_t_u_u(((safe_div_func_int16_t_s_s((0xED7F45EACF45E020LL && (safe_rshift_func_int32_t_s_s((-1L), (l_2625.y , (safe_div_func_int32_t_s_s((l_2306[l_2548][l_2548] = (safe_mod_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((((p_42 , make_ushort3(0x6F83L, (l_2627.z = l_2623.x), ((p_3133->g_2621.x , (*p_3133->g_1169)) != (l_2644 = ((*l_2643) = (*p_3133->g_1169))))).y) <= (p_3133->g_1223.y = (safe_div_func_int16_t_s_s((**p_3133->g_693), l_2539)))) <= 0x1900L) , 0L), 255UL)), l_2630[5]))), p_41)))))), l_2544[9][5][1])) & p_42), p_41)) && p_41);
                    }
                }
            }
        }
    }
    p_3133->g_121 = l_2647;
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_10 p_3133->g_66 p_3133->g_67 hip_const_4 hip_const_8 p_3133->g_76 p_3133->g_88 p_3133->g_102 p_3133->g_103 hip_const_6 p_3133->g_29 p_3133->g_16 p_3133->g_15 p_3133->g_120 hip_const_3 hip_const_5 hip_const_1 p_3133->g_153 hip_const_2 hip_const_9 p_3133->g_238 p_3133->g_272 p_3133->g_280 p_3133->g_283 p_3133->g_250 p_3133->g_121 p_3133->g_319 p_3133->g_320 p_3133->g_359 p_3133->g_376 p_3133->g_381 p_3133->g_402 p_3133->g_420 p_3133->g_429 p_3133->g_455 p_3133->g_459 p_3133->g_335 p_3133->g_568 p_3133->g_504 p_3133->g_569 p_3133->g_614 p_3133->g_617 p_3133->g_622 p_3133->g_630 p_3133->g_636 p_3133->g_691 p_3133->g_692 p_3133->g_693 p_3133->g_767 p_3133->g_829 p_3133->g_892 p_3133->g_1058 p_3133->g_946 p_3133->g_1059 hip_const_7 p_3133->g_945 p_3133->g_713 p_3133->g_1114 p_3133->g_1169
 * writes: p_3133->g_67 p_3133->g_15 p_3133->g_16 p_3133->g_102 p_3133->g_120 p_3133->g_250 p_3133->g_121 p_3133->g_153 p_3133->g_272 p_3133->g_335 p_3133->g_381 p_3133->g_437 p_3133->g_280 p_3133->g_472 p_3133->g_429 p_3133->g_402 p_3133->g_663 p_3133->g_459 p_3133->g_455 p_3133->g_703 p_3133->g_617 p_3133->g_892 p_3133->g_946 p_3133->g_767 p_3133->g_713 p_3133->g_359 p_3133->g_1058 p_3133->g_614
 */
__device__ int16_t  func_45(uint32_t  p_46, int16_t * p_47, int16_t  p_48, struct S0 * p_3133)
{ /* block id: 9 */
    int16_t *l_55[9][2] = {{&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}, {&hip_const_5, &hip_const_10}};
    uint32_t *l_56 = &p_3133->g_15;
    int32_t l_62 = 0xBEA8E434L;
    int32_t **l_701 = nullptr;
    int32_t **l_702[7][10] = {{nullptr, &p_3133->g_121, nullptr, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121}, {nullptr, &p_3133->g_121, nullptr, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121}, {nullptr, &p_3133->g_121, nullptr, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121}, {nullptr, &p_3133->g_121, nullptr, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121}, {nullptr, &p_3133->g_121, nullptr, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121}, {nullptr, &p_3133->g_121, nullptr, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121}, {nullptr, &p_3133->g_121, nullptr, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121, &p_3133->g_121}};
    int64_t *l_739 = nullptr;
    uint8_t l_742 = 0UL;
    int64_t l_807 = 0x51CD6AFC5C9034A3LL;
    int64_t ***l_820 = &p_3133->g_664;
    ulong2 l_825 = make_ulong2(4UL, 18446744073709551613UL);
    uint1 l_834 = make_uint1(1UL);
    uint64_t ***l_860 = &p_3133->g_381;
    ushort4 l_876 = make_ushort4(1UL, 0xE130L, 1UL, 0xE130L);
    int32_t l_901 = 0x920218B8L;
    __shared__ int8_t l_943;
    l_943 = (-1L);
    __shared__ uint64_t l_947;
    l_947 = 0xBF7FCB451CACFA98LL;
    uint3 l_959 = make_uint3(4294967295UL, 0x0DADB2E4L, 4294967295UL);
    int2 l_998 = make_int2(0xAD95DE75L, 0xFC01BB45L);
    int16_t l_1013[6];
    ulong3 l_1077 = make_ulong3(1UL, 7UL, 1UL);
    char3 l_1142 = make_char3((-1L), 1L, (-1L));
    int8_t l_1171 = 0xD1L;
    int32_t ***l_1187 = &l_701;
    int16_t ***l_1195[3][1][9] = {{{&p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693}}, {{&p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693}}, {{&p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693, &p_3133->g_693}}};
    __shared__ int16_t ***l_1197;
    l_1197 = &p_3133->g_693;
    int16_t ****l_1205[6][7] = {{&l_1195[2][0][3], &l_1197, nullptr, &l_1197, &l_1195[2][0][3], &l_1197, nullptr}, {&l_1195[2][0][3], &l_1197, nullptr, &l_1197, &l_1195[2][0][3], &l_1197, nullptr}, {&l_1195[2][0][3], &l_1197, nullptr, &l_1197, &l_1195[2][0][3], &l_1197, nullptr}, {&l_1195[2][0][3], &l_1197, nullptr, &l_1197, &l_1195[2][0][3], &l_1197, nullptr}, {&l_1195[2][0][3], &l_1197, nullptr, &l_1197, &l_1195[2][0][3], &l_1197, nullptr}, {&l_1195[2][0][3], &l_1197, nullptr, &l_1197, &l_1195[2][0][3], &l_1197, nullptr}};
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1013[i] = 1L;
    p_3133->g_703 = func_49(l_55[0][1], l_56, (hip_const_10 , func_57((+(((make_int1(func_59(((!l_62) , l_62), p_48, p_3133)) | make_int1(p_3133->g_67.y))).x > ((((~((make_ushort3(65526UL, 0x88A0L, 65532UL) ^ make_ushort3(1UL, 0xAF57L, 1UL))))).y >= (safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s(hip_const_4, l_62)), hip_const_8)), 7L))) != 0x3A768FB0C4F31BC4LL))), p_3133)), p_46, l_62, p_3133);
    for (p_48 = 3; (p_48 < (-26)); p_48--)
    { /* block id: 245 */
        int64_t l_714[6][6] = {{0L, 0x9A1F5A0FE97FC899LL, 1L, 6L, 0xD23456EF254878AFLL, 0x5A5D6AB14464BE12LL}, {0L, 0x9A1F5A0FE97FC899LL, 1L, 6L, 0xD23456EF254878AFLL, 0x5A5D6AB14464BE12LL}, {0L, 0x9A1F5A0FE97FC899LL, 1L, 6L, 0xD23456EF254878AFLL, 0x5A5D6AB14464BE12LL}, {0L, 0x9A1F5A0FE97FC899LL, 1L, 6L, 0xD23456EF254878AFLL, 0x5A5D6AB14464BE12LL}, {0L, 0x9A1F5A0FE97FC899LL, 1L, 6L, 0xD23456EF254878AFLL, 0x5A5D6AB14464BE12LL}, {0L, 0x9A1F5A0FE97FC899LL, 1L, 6L, 0xD23456EF254878AFLL, 0x5A5D6AB14464BE12LL}};
        int64_t *l_738 = nullptr;
        int32_t l_762 = (-1L);
        __shared__ uint16_t l_766;
        l_766 = 0xCE32L;
        int32_t l_768 = 0x0F8BA457L;
        long1 l_778 = make_long1(0x6FD7296954EDE083LL);
        char2 l_779 = make_char2(1L, 0xBAL);
        uint16_t l_793 = 9UL;
        int32_t *l_905 = nullptr;
        uint32_t *l_908[3][1][8] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
        int1 l_918 = make_int1(0x27C73F6BL);
        short2 l_920 = make_short2((-8L), 0x9692L);
        int64_t l_942 = (-3L);
        uint64_t l_966[5][3] = {{18446744073709551610UL, 6UL, 18446744073709551615UL}, {18446744073709551610UL, 6UL, 18446744073709551615UL}, {18446744073709551610UL, 6UL, 18446744073709551615UL}, {18446744073709551610UL, 6UL, 18446744073709551615UL}, {18446744073709551610UL, 6UL, 18446744073709551615UL}};
        uint16_t l_984[7][6][1] = {{{0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}}, {{0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}}, {{0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}}, {{0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}}, {{0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}}, {{0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}}, {{0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}, {0xE8EFL}}};
        int2 l_1050 = make_int2(0x440E2ECBL, 1L);
        int64_t ****l_1052 = &p_3133->g_663;
        uint16_t *l_1069 = &l_984[1][5][0];
        uint16_t **l_1068[5][5] = {{&l_1069, nullptr, &l_1069, &l_1069, &l_1069}, {&l_1069, nullptr, &l_1069, &l_1069, &l_1069}, {&l_1069, nullptr, &l_1069, &l_1069, &l_1069}, {&l_1069, nullptr, &l_1069, &l_1069, &l_1069}, {&l_1069, nullptr, &l_1069, &l_1069, &l_1069}};
        uint1 l_1111 = make_uint1(4294967293UL);
        char3 l_1185 = make_char3(2L, 0xBFL, 2L);
        int16_t *****l_1204[10][8] = {{&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}, {&p_3133->g_691, nullptr, nullptr, nullptr, nullptr, &p_3133->g_691, &p_3133->g_691, &p_3133->g_691}};
        int8_t l_1206 = 1L;
        int i, j, k;
        for (l_62 = 5; (l_62 >= 1); l_62 -= 1)
        { /* block id: 248 */
            int32_t l_706 = 3L;
            return l_706;
        }
        if (p_48)
        { /* block id: 251 */
            uint8_t l_708 = 0x4DL;
            int32_t l_711 = (-1L);
            __shared__ int32_t *l_715;
            l_715 = &p_3133->g_280;
            uint3 l_727 = make_uint3(7UL, 18446744073709551615UL, 7UL);
            int8_t l_765 = 0x4FL;
            long3 l_777 = make_long3(7L, 0x35A12FBC94C4C1CBLL, 7L);
            int16_t l_794 = 1L;
            uint64_t l_795 = 0UL;
            long3 l_817 = make_long3(0x8C5F93EF769506C7LL, 4L, 0x8C5F93EF769506C7LL);
            int64_t ***l_821 = &p_3133->g_664;
            int32_t l_822 = 0xF0DF93E0L;
            uint64_t ***l_838 = &p_3133->g_381;
            uint64_t l_891 = 18446744073709551615UL;
            uint32_t l_895 = 18446744073709551615UL;
            uint16_t *l_922 = &l_793;
            ulong3 l_927 = make_ulong3(1UL, 2UL, 1UL);
            uint64_t *l_936 = &l_795;
            uint32_t *l_937 = nullptr;
            int32_t l_938 = 3L;
            __shared__ int32_t l_939;
            l_939 = 0L;
            int32_t l_940 = 0L;
            int32_t l_941[5][10] = {{1L, 1L, 0L, 0xB80CC2F8L, 1L, 0xB80CC2F8L, 0L, 1L, 1L, 0L}, {1L, 1L, 0L, 0xB80CC2F8L, 1L, 0xB80CC2F8L, 0L, 1L, 1L, 0L}, {1L, 1L, 0L, 0xB80CC2F8L, 1L, 0xB80CC2F8L, 0L, 1L, 1L, 0L}, {1L, 1L, 0L, 0xB80CC2F8L, 1L, 0xB80CC2F8L, 0L, 1L, 1L, 0L}, {1L, 1L, 0L, 0xB80CC2F8L, 1L, 0xB80CC2F8L, 0L, 1L, 1L, 0L}};
            int i, j;
            if ((safe_unary_minus_func_int64_t_s(l_708)))
            { /* block id: 252 */
                int16_t l_712 = 3L;
                l_714[3][4] ^= (safe_mul_func_int32_t_s_s((l_711 |= p_48), (l_712 < make_ulong1(p_3133->g_713.y).x)));
                l_715 = nullptr;
            }
            else
            { /* block id: 256 */
                int8_t l_720 = 0x68L;
                uint64_t **l_728 = &p_3133->g_376;
                int64_t *l_737 = &l_714[2][1];
                __shared__ int32_t l_764;
                l_764 = 1L;
                uint16_t *l_780[8][10][3] = {{{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}, {{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}, {{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}, {{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}, {{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}, {{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}, {{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}, {{nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}, {nullptr, &hip_const_6[1], &hip_const_6[1]}}};
                __shared__ uint32_t l_835;
                l_835 = 0x117F0FCAL;
                int32_t l_853 = 0L;
                int i, j, k;
                for (l_708 = 0; (l_708 == 58); l_708 = safe_add_func_uint64_t_u_u(l_708, 2))
                { /* block id: 259 */
                    uint32_t l_718 = 0x7141D007L;
                    uint16_t l_719 = 0x9DDFL;
                    uint64_t ***l_729 = nullptr;
                    uint64_t ***l_730 = &l_728;
                    uint32_t *l_731 = nullptr;
                    uint32_t *l_732 = &l_718;
                    int64_t **l_740 = nullptr;
                    int64_t **l_741 = &l_739;
                    (*l_715) &= l_718;
                    if (l_719)
                        continue;
                    if (l_720)
                        break;
                    (*l_715) = (safe_rshift_func_uint8_t_u_u(((safe_div_func_uint32_t_u_u(((*l_732) &= (safe_lshift_func_uint64_t_u_u(((p_48 && (~(((*l_730) = (((make_uint3(l_727.x, l_727.x, l_727.x) ^ make_uint3(18446744073709551611UL, 9UL, l_714[3][4]))).z , l_728)) != nullptr))) && l_720), (0UL <= p_46)))), ((safe_add_func_uint32_t_u_u((safe_sub_func_int16_t_s_s(((l_738 = l_737) == ((*l_741) = l_739)), l_719)), p_48)) && p_48))) & l_742), p_46));
                }
                for (p_3133->g_402 = 0; (p_3133->g_402 <= 1); p_3133->g_402 += 1)
                { /* block id: 271 */
                    __shared__ uint16_t *l_782;
                    l_782 = nullptr;
                    uint16_t **l_781 = &l_782;
                    uint32_t *l_787 = nullptr;
                    uint32_t *l_788 = nullptr;
                    __shared__ uint32_t *l_789;
                    l_789 = nullptr;
                    uint32_t *l_790 = nullptr;
                    uint32_t *l_791 = nullptr;
                    uint32_t *l_792[4][2][5] = {{{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}}};
                    int i, j, k;
                    (*l_715) = make_int1(p_3133->g_743.w).x;
                    for (l_708 = 0; (l_708 <= 1); l_708 += 1)
                    { /* block id: 275 */
                        __shared__ uint16_t *l_759;
                        l_759 = &hip_const_6[9];
                        uint16_t *l_760 = &hip_const_9;
                        uint16_t *l_761[5];
                        int32_t l_763 = 1L;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_761[i] = &hip_const_9;
                        l_768 = ((p_46 && 0x7DL) >= (((***p_3133->g_692) && (l_766 = (safe_mod_func_int16_t_s_s((((*l_715) | ((make_char4((safe_div_func_int64_t_s_s(((~(((l_764 = (safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(make_char2(p_3133->g_752.y, p_3133->g_752.y).y, ((((safe_lshift_func_int64_t_s_s((safe_mod_func_int64_t_s_s(1L, 0x122089C5BE975A88LL)), (((p_3133->g_429.z < ((((l_762 = (p_3133->g_617.x = (safe_sub_func_uint16_t_u_u(make_ushort3(0x1059L, (*l_715), 0x7263L).z, (**p_3133->g_693))))) == l_720) == l_720) == (*l_715))) || hip_const_2) , p_46))) , p_48) & l_763) <= p_48))), p_3133->g_66.x))) != p_48) <= 8UL)) ^ (**p_3133->g_693)), l_720)), l_765, 0x68L, (-1L)).w & p_48) && (**p_3133->g_693))) & 0x5570L), l_720)))) && p_3133->g_767));
                        return (****p_3133->g_691);
                    }
                    l_795 = (safe_lshift_func_int64_t_s_u((((((safe_mul_func_int32_t_s_s(((*l_715) = p_46), (safe_div_func_int64_t_s_s(p_46, ((safe_div(make_long3(l_777.y, l_777.y, l_777.y), ((~make_long3(l_778.x, l_778.x, l_778.x)))))).y)))) && make_char4(l_779.x, l_779.x, l_779.x, l_779.x).y) , l_780[7][4][2]) != ((*l_781) = &hip_const_6[1])) > (0x77A1L & (((((safe_add_func_int64_t_s_s((((safe_div_func_uint16_t_u_u((l_762 , (p_3133->g_617.y = ((((l_793 = p_46) , 0x032DL) >= (*p_3133->g_250)) & l_778.x))), (**p_3133->g_693))) , p_48) < p_46), p_3133->g_29[9])) < l_720) > l_794) || (-8L)) , p_48))), 45));
                }
                for (l_711 = 0; (l_711 == 28); l_711++)
                { /* block id: 291 */
                    uchar4 l_798 = make_uchar4(249UL, 0xDBL, 249UL, 0xDBL);
                    int32_t l_808 = 1L;
                    uint32_t *l_810 = nullptr;
                    uint32_t **l_809 = &l_810;
                    ulong1 l_826 = make_ulong1(0xD376985EEE97BEC3LL);
                    int32_t *l_857 = &l_62;
                    __shared__ uint32_t l_904;
                    l_904 = 0x9474FD7EL;
                    int i;
                    if (((((make_uchar3(0xE0L, 252UL, 249UL) ^ make_uchar3(l_798.y, l_798.y, l_798.y))).y < (((-9L) <= ((safe_mul(make_ulong2((safe_div_func_int8_t_s_s((safe_div_func_uint64_t_u_u((((safe_mul_func_uint16_t_u_u((nullptr == &p_3133->g_120), (l_808 ^= (l_779.x == l_807)))) >= (p_3133->g_238[4][1][2] != ((*l_809) = p_3133->g_238[1][1][1]))) || 0xA7B46888L), (((*l_737) ^= ((safe_mod_func_int64_t_s_s(((safe_rshift(((safe_div(make_long2(l_817.y, l_817.y), make_long2(0xAE3CBC6017F834B7LL, (-1L))))), ((((safe_rshift(make_long2((((l_820 != l_821) , 0UL) ^ (-7L)), 0L), make_long2(64, 64)))) ^ make_long2(0xDEC2076B26A84C48LL, 0xDEC2076B26A84C48LL)))))).y, (*l_715))) & (*l_715))) ^ l_822))), (**p_3133->g_568))), 1UL), make_ulong2(0x05E0D49C3980BCA0LL, 0x05E0D49C3980BCA0LL)))).x) != 1UL)) , (-10L)))
                    { /* block id: 295 */
                        uint16_t l_851 = 65535UL;
                        uint64_t ***l_852[9] = {&p_3133->g_381, &p_3133->g_381, &l_728, &p_3133->g_381, &p_3133->g_381, &l_728, &p_3133->g_381, &p_3133->g_381, &l_728};
                        int32_t l_854 = 0x8C00AC44L;
                        int8_t *l_855[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int32_t l_856[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_856[i] = 0xFE061FDAL;
                        l_856[1] = (~((safe_rshift_func_int8_t_s_s(((*l_715) = (((make_long1(0xFC9BF7645D131674LL) ^ ((make_long1((((make_ulong2(l_825.y, l_825.y) ^ ((make_ulong2(l_826.x, l_826.x) ^ ((safe_rshift(make_ulong2(p_3133->g_829.x, p_3133->g_829.x), make_ulong2(64, 64)))))))).x , (safe_mul_func_int16_t_s_s(p_46, (((safe_div_func_uint8_t_u_u((make_uint1(l_834.x).x < 0x33BE4BD9L), make_uchar3(l_835, ((l_854 = ((l_853 = (safe_div_func_int8_t_s_s((l_838 == ((safe_mod_func_int32_t_s_s((safe_div_func_int32_t_s_s((p_46 > (((*p_3133->g_568) != ((safe_sub_func_int16_t_s_s((safe_mul_func_uint64_t_u_u(0xB3893D4F7645BB8ELL, ((safe_mul_func_int64_t_s_s(((*p_3133->g_569) < make_char2(2L, (((safe_mod_func_int16_t_s_s((l_798.w ^ 18446744073709551615UL), l_714[3][4])) > 1L) & 0x715042F2L)).y), 0xF595D6CC382B732FLL)) != l_835))), l_851)) , &l_742)) && 0x8D67CA45L)), p_48)), l_851)) , l_852[5])), 9L))) | hip_const_1)) && (*l_715)), (**p_3133->g_568)).x)) > 0x76FF068FL) == p_46))))) ^ make_long1(0x9D45DC0782B1DFAELL))))).x == 0x1341276175BC981DLL)), 6)) <= l_826.x));
                        l_857 = &l_808;
                    }
                    else
                    { /* block id: 301 */
                        char3 l_890 = make_char3(1L, 0x01L, 1L);
                        int32_t l_893 = 1L;
                        int32_t l_894 = 0x94471821L;
                        int32_t l_896 = 3L;
                        int i;
                        l_896 = (l_768 ^= (safe_lshift_func_uint32_t_u_s(((((2L || (l_860 != &p_3133->g_381)) , (l_764 & (safe_rshift_func_int32_t_s_s(((*l_715) = 0x6A5F8F6EL), ((0x61AE7A4EL != (p_3133->g_829.x || (((((safe_sub(make_ulong2((make_long2((safe_mod_func_int16_t_s_s(((safe_add_func_int64_t_s_s((safe_mul_func_uint64_t_u_u((~(safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((*l_857) = ((make_ushort4(p_3133->g_875.x, p_3133->g_875.x, p_3133->g_875.x, p_3133->g_875.x) | make_ushort4(l_876.x, l_876.x, l_876.x, l_876.x))).x), 12)), (((safe_sub_func_uint16_t_u_u((l_894 |= (((safe_mul_func_uint16_t_u_u(((((safe_add_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(hip_const_4, 6)), (((safe_sub(((safe_add(make_ushort1(6UL), ((((((make_ushort1(p_3133->g_889.y) ^ make_ushort1((p_3133->g_617.x = (((make_short3((***p_3133->g_692), (-1L), (**p_3133->g_693)) ^ make_short3((-5L), (-5L), (-5L)))).x != l_890.y))))) ^ make_ushort1(1UL))) & make_ushort1(0x88CDL)))))), make_ushort1(65526UL)))).x | l_764))) || l_891) < p_3133->g_892) > (-10L)), p_46)) , l_893) <= 0xF4L)), 1L)) , l_893) || p_48)))), 0x29FE1BDE9F0511D3LL)), p_48)) != 7L), 0x6C05L)), l_894).x , l_895), 18446744073709551615UL), make_ulong2(4UL, 4UL)))) ^ make_ulong2(0UL, 0UL))).y , hip_const_6[4]))) || 0L))))) | l_793) <= p_46), 18)));
                    }
                    l_905 = func_49(((safe_div_func_uint32_t_u_u(((((make_ulong4(((*l_715) && (safe_sub_func_int64_t_s_s((l_901 , p_48), (p_3133->g_420.y & (****p_3133->g_691))))), 3UL, 1UL, ((*p_3133->g_250) <= (*l_715))) | make_ulong4(18446744073709551615UL, 0UL, (safe_rshift_func_uint16_t_u_u(l_764, p_48)), 0xA0E7D1BA9485106ELL))).z <= l_904) >= p_48), 4294967295UL)) , &p_48), &p_3133->g_15, &p_3133->g_15, p_48, l_793, p_3133);
                }
            }
            for (p_46 = 13; (p_46 <= 34); ++p_46)
            { /* block id: 314 */
                uint32_t *l_909 = &l_895;
                int32_t *l_915 = &l_711;
                for (p_3133->g_892 = 0; (p_3133->g_892 <= 1); p_3133->g_892 += 1)
                { /* block id: 317 */
                    __shared__ uint32_t **l_910;
                    l_910 = &l_909;
                    __shared__ int32_t l_914;
                    l_914 = (-8L);
                    uint1 l_919 = make_uint1(0x2662DA1BL);
                    int i;
                    l_915 = func_49((*p_3133->g_693), l_908[0][0][5], ((*l_910) = l_909), p_46, (l_914 = ((~((((safe_rshift(make_short1(p_3133->g_913.z), make_short1((-10L))))) & make_short1(0x572BL))))).x), p_3133);
                    l_711 &= (p_3133->g_272.x = (safe_sub_func_uint16_t_u_u((((p_46 > p_48) , (p_48 && ((p_48 != (make_int4(l_918.x, l_918.x, l_918.x, l_918.x).x , make_long1((-1L)).x)) , 0x2248L))) ^ make_uint1(l_919.x).x), make_short4(l_920.y, l_920.y, l_920.y, l_920.y).y)));
                }
                return (*p_3133->g_250);
            }
            l_905 = func_49(&l_794, &p_3133->g_15, (((*l_922) &= p_46) , l_937), p_46, (***p_3133->g_692), p_3133);
            ++l_947;
        }
        else
        { /* block id: 331 */
            int32_t *l_950 = &p_3133->g_280;
            int64_t l_987 = 7L;
            uint16_t **l_1065[4][2];
            int8_t l_1088 = (-7L);
            int32_t l_1106[2];
            int3 l_1130 = make_int3(4L, 0xBA1BB0F2L, 4L);
            int32_t l_1144 = 0x17622134L;
            int64_t **l_1167 = &l_738;
            int16_t *l_1175[4];
            char4 l_1192 = make_char4(0xB3L, 0xFCL, 0xB3L, 0xFCL);
            int16_t ****l_1196 = &l_1195[2][0][3];
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1065[i][j] = nullptr;
            }
            for (i = 0; i < 2; i++)
                l_1106[i] = 0xB8CAF17CL;
            for (i = 0; i < 4; i++)
                l_1175[i] = &l_1013[5];
            l_950 = &l_768;
            for (p_3133->g_946 = 0; (p_3133->g_946 <= 1); p_3133->g_946 += 1)
            { /* block id: 335 */
                uint2 l_958 = make_uint2(5UL, 0x2A9209CEL);
                __shared__ uint8_t l_986;
                l_986 = 0xD7L;
                int16_t ***l_1008 = &p_3133->g_693;
                int32_t l_1015 = 0L;
                char4 l_1038 = make_char4(0L, 0xADL, 0L, 0xADL);
                char3 l_1039 = make_char3(1L, (-5L), 1L);
                int64_t ****l_1051[1][4];
                uint1 l_1097 = make_uint1(0UL);
                uint32_t *l_1101 = nullptr;
                uint32_t *l_1102 = nullptr;
                uint32_t *l_1103 = nullptr;
                uint32_t *l_1104[5][9][4] = {{{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}};
                int32_t l_1105 = 0x514851D3L;
                uint32_t l_1107[10] = {4294967288UL, 1UL, 3UL, 3UL, 1UL, 4294967288UL, 1UL, 3UL, 3UL, 1UL};
                uint32_t l_1176 = 18446744073709551606UL;
                __shared__ int32_t l_1189;
                l_1189 = 0x8A3A51D6L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_1051[i][j] = &p_3133->g_663;
                }
                for (p_3133->g_767 = 0; (p_3133->g_767 <= 1); p_3133->g_767 += 1)
                { /* block id: 338 */
                    uint64_t l_973[5][1] = {{0xCDF3B3D6DAF61343LL}, {0xCDF3B3D6DAF61343LL}, {0xCDF3B3D6DAF61343LL}, {0xCDF3B3D6DAF61343LL}, {0xCDF3B3D6DAF61343LL}};
                    int16_t ***l_1007 = &p_3133->g_693;
                    int32_t l_1014 = (-1L);
                    char3 l_1040 = make_char3((-5L), 5L, (-5L));
                    ulong1 l_1057 = make_ulong1(0xD7A858C3BE70B170LL);
                    int i, j;
                    for (p_46 = 0; (p_46 <= 5); p_46 += 1)
                    { /* block id: 341 */
                        int64_t l_953 = 0x65F6A19A210CF872LL;
                        int32_t ****l_967 = nullptr;
                        int32_t ***l_969 = &p_3133->g_120;
                        int32_t ****l_968[8] = {&l_969, nullptr, &l_969, nullptr, &l_969, nullptr, &l_969, nullptr};
                        int16_t ****l_983 = &p_3133->g_692;
                        int64_t *l_985 = &p_3133->g_944;
                        uint32_t l_1001 = 18446744073709551615UL;
                        uchar1 l_1004 = make_uchar1(0xA3L);
                        uint32_t *l_1009 = nullptr;
                        uint32_t *l_1010 = nullptr;
                        __shared__ uint32_t *l_1011;
                        l_1011 = nullptr;
                        uint32_t *l_1012[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int i, j, k;
                        l_918.x &= (((make_long3(((safe_rshift_func_uint64_t_u_u(l_953, 27)) && (p_46 || (safe_sub_func_int32_t_s_s(((safe_rshift_func_uint32_t_u_s(((make_uint1(l_958.x) ^ make_uint1(l_959.x))).x, 17)) <= make_long2(0xE0B9183B2465092BLL, 0L).y), 0xCDE48095L)))), (-1L), ((*l_985) = ((safe_add_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(((((~((safe_mod(make_uint2(0x4DB6CF33L, ((*l_950) < (l_966[1][1] , ((p_3133->g_970 = &p_3133->g_120) == (((safe_mul_func_int64_t_s_s(l_973[3][0], (safe_rshift_func_int16_t_s_s(((((((safe_sub_func_uint64_t_u_u(18446744073709551615UL, (((safe_lshift_func_uint64_t_u_s(((safe_rshift_func_uint8_t_u_u((((make_ushort3(p_3133->g_982.z, p_3133->g_982.z, p_3133->g_982.z).x , nullptr) == l_983) , 249UL), (*p_3133->g_569))) <= p_48), 11)) , (*p_3133->g_691)) == (*p_3133->g_691)))) || 2L) , (*l_950)) & p_48) & (*l_950)) <= (**p_3133->g_568)), (*p_3133->g_250))))) , l_958.x) , &p_3133->g_120))))), make_uint2(0x4EFBF036L, 0x4EFBF036L)))))) ^ make_uint2(0xD78F4D17L, 0xD78F4D17L))).y, (-1L))), l_984[1][5][0])) , l_973[3][0]))).x == l_986) , l_987) < 65535UL);
                        if (p_48)
                            break;
                        l_1015 = (safe_rshift_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((0xBF9536EBCE2B32D0LL & (safe_add_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(0x43L, p_3133->g_420.x)), (safe_lshift_func_int32_t_s_s(make_int4(l_998.x, l_998.x, l_998.x, l_998.x).x, (safe_sub_func_uint32_t_u_u(0xA422AE8BL, (l_1014 = ((l_1001 != ((p_3133->g_713.y = (0x11L | ((((safe_rshift(make_uchar1(0xEFL), make_uchar1(l_1004.x)))) ^ make_uchar1(0UL))).x)) > ((l_1013[3] ^= ((-1L) != make_uchar2((safe_rshift_func_int64_t_s_s((l_1007 == l_1008), p_46)), (*l_950)).y)) < p_46))) && 0L))))))))), p_3133->g_892)), l_986));
                        p_3133->g_359.w = ((*l_950) = 0x6639C3C3L);
                    }
                    for (l_942 = 1; (l_942 >= 0); l_942 -= 1)
                    { /* block id: 355 */
                        uint16_t l_1022 = 1UL;
                        int32_t l_1053 = 5L;
                        __shared__ uint64_t *l_1054;
                        l_1054 = &l_966[0][1];
                        int i, j;
                        (*l_950) = (safe_add_func_uint32_t_u_u((((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(l_1022, (((safe_lshift(make_ulong1(((*l_1054) ^= (safe_lshift_func_uint64_t_u_u(((safe_rshift(make_ulong2(p_3133->g_1029.y, p_3133->g_1029.y), ((((make_ulong2(0UL, ((1UL >= (+(&p_3133->g_970 != &p_3133->g_970))) < (l_1053 = (safe_lshift_func_int8_t_s_s(((safe_sub(((safe_rshift(((safe_sub(make_char4(l_1038.x, l_1038.x, l_1038.x, l_1038.x), make_char4(l_1039.y, l_1039.y, l_1039.y, l_1039.y)))), make_char4(make_char4(l_1040.x, l_1040.x, l_1040.x, l_1040.x).y, 0x35L, (safe_rshift_func_uint8_t_u_u(make_uchar2(0x61L, (**p_3133->g_568)).x, 3)), (-8L))))), make_char4(p_3133->g_1043.x, p_3133->g_1043.x, p_3133->g_1043.x, p_3133->g_1043.x)))).x, (safe_rshift_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((make_int2(l_1050.x, l_1050.x).y , 0xABF9L) >= (l_1014 = (l_1051[0][0] == l_1052))), p_48)), (*l_950))), p_46))))))) | make_ulong2(1UL, 1UL))) & make_ulong2(0xD3223711A90091FBLL, 0xD3223711A90091FBLL)))))).y, 22)))), make_ulong1(0x9B569A49A7BD4C4ELL)))).x ^ l_958.x))), p_48)) && p_48) | p_48), p_48));
                    }
                    (*l_950) = ((~((safe_lshift_func_uint16_t_u_s(0x0E0FL, 10)) && make_ulong4(l_1057.x, l_1057.x, l_1057.x, l_1057.x).x)) ^ l_778.x);
                }
                for (l_947 = 0; (l_947 <= 0); l_947 += 1)
                { /* block id: 365 */
                    int32_t *l_1062 = &p_3133->g_945;
                    uint16_t ***l_1066 = nullptr;
                    uint16_t ***l_1067[7][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
                    int i, j;
                    for (l_793 = 0; (l_793 <= 6); l_793 += 1)
                    { /* block id: 368 */
                        int8_t ***l_1060 = nullptr;
                        int8_t ***l_1061 = &p_3133->g_1058;
                        int i, j;
                        (*l_1061) = p_3133->g_1058;
                        p_3133->g_703 = l_1062;
                        if (l_714[(l_947 + 2)][(p_3133->g_946 + 2)])
                            break;
                    }
                    (*l_950) = (((safe_mul_func_uint64_t_u_u((*l_950), (((*l_1069) = ((l_1068[1][1] = l_1065[3][1]) != l_1065[3][1])) & ((safe_div_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((((safe_mod(make_ulong4(p_3133->g_1076.x, p_3133->g_1076.x, p_3133->g_1076.x, p_3133->g_1076.x), make_ulong4(l_1077.y, l_1077.y, l_1077.y, l_1077.y)))).x , ((p_48 >= (safe_sub_func_uint16_t_u_u(((p_48 >= ((((-10L) != (((safe_lshift_func_int8_t_s_s(p_46, 2)) || ((safe_add_func_int64_t_s_s(((((+(**p_3133->g_1058)) < (*l_1062)) , (*l_950)) && 1L), p_46)) != 0UL)) > p_48)) , l_1015) != l_986)) || 0x44BCB575L), (*p_3133->g_250)))) >= l_1088)), 246UL)), 255UL)) == (**p_3133->g_693))))) , 0x3C9D73B8L) , (-1L));
                }
                if ((p_3133->g_713.x , (((*l_1069)++) ^ ((safe_mul_func_uint16_t_u_u(((safe_mul_func_uint32_t_u_u(((safe_mod(make_uint2(l_1097.x, l_1097.x), make_uint2(p_3133->g_1098.x, p_3133->g_1098.x)))).y, p_46)) >= ((safe_mul(((make_uint3(0xA76580ABL, (l_1107[9]++), 4294967295UL) | make_uint3(p_3133->g_1110.y, p_3133->g_1110.y, p_3133->g_1110.y))), make_uint3(l_1111.x, l_1111.x, l_1111.x)))).x), (((safe_mul_func_int32_t_s_s(p_48, ((make_int1(1L) ^ make_int1(p_3133->g_1114.z))).x)) < ((l_1015 = make_ulong2((&p_3133->g_664 == ((*l_1052) = (l_820 = (*l_1052)))), 0xE31B8BB98AEB0797LL).x) , ((***p_3133->g_692) ^ (nullptr == &p_3133->g_472)))) > p_48))) | (*l_950)))))
                { /* block id: 382 */
                    uint32_t l_1117 = 0x18A05060L;
                    __shared__ int32_t l_1118;
                    l_1118 = 0x36CBE623L;
                    int8_t *l_1119 = nullptr;
                    int8_t *l_1120 = nullptr;
                    __shared__ int8_t *l_1121;
                    l_1121 = &hip_const_7;
                    int8_t *l_1122 = &hip_const_7;
                    int8_t *l_1123[3];
                    int3 l_1133 = make_int3(3L, 0xBC023A28L, 3L);
                    int4 l_1134 = make_int4(1L, 0xE377157EL, 1L, 0xE377157EL);
                    char1 l_1145 = make_char1(0xD3L);
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1123[i] = &l_1088;
                    l_1015 &= ((((l_1117 = (-7L)) , &p_3133->g_569) == &p_3133->g_569) > (((**p_3133->g_693) | (0xE4L || (0x0B823A8BL && p_48))) , (p_3133->g_614.w |= l_1118)));
                    for (p_3133->g_402 = 1; (p_3133->g_402 >= 0); p_3133->g_402 -= 1)
                    { /* block id: 388 */
                        int8_t ***l_1139 = nullptr;
                        int32_t l_1143 = 0xC259A924L;
                        uint32_t **l_1166 = &l_1104[1][2][0];
                        int64_t **l_1168[1];
                        uint64_t *l_1172 = &l_966[1][1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1168[i] = &l_738;
                        l_1144 |= ((((*l_950) < 0x092AL) , ((p_48 , ((safe_rshift_func_int32_t_s_u((p_46 || (+(make_char1(3L).x <= (safe_sub_func_uint64_t_u_u(((((safe_rshift(make_int3(l_1130.x, l_1130.x, l_1130.x), ((((((safe_rshift(make_int3(l_1133.x, l_1133.x, l_1133.x), make_int3(32, 32, 32)))) ^ make_int3((-5L), 0x3B0F46FEL, p_48))) ^ ((make_int3(0xABD58452L, 0xD3586F42L, (-1L)) ^ make_int3(make_int4(l_1134.w, l_1134.w, l_1134.w, l_1134.w).w, 3L, l_1038.x)))))))).z | ((safe_rshift_func_uint32_t_u_u((l_1015 = ((l_1143 = ((*l_56) = (safe_add_func_int8_t_s_s(((make_uchar1((nullptr != l_1139)).x || make_char3(make_char1(((safe_rshift_func_int16_t_s_s(l_1142.y, (*p_3133->g_250))) , (**p_3133->g_1058))).x, (-1L), 0x18L).z) > 0xB250E8A8L), 250UL)))) , 0x16E3D690L)), 29)) , (*l_950))) | 0x32E27C47L), p_46))))), p_46)) , p_48)) == (**p_3133->g_1058))) <= (*l_950));
                        l_1133.x ^= (make_char4(l_1145.x, l_1145.x, l_1145.x, l_1145.x).w | ((safe_div_func_int32_t_s_s(p_46, p_46)) ^ (safe_lshift_func_int8_t_s_u(make_char1(p_3133->g_1150.z).x, 7))));
                        (*l_950) = make_int3(p_3133->g_1151.x, p_3133->g_1151.x, p_3133->g_1151.x).z;
                        (*l_950) = (safe_mod_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((((1UL <= ((*l_1172) = ((((((p_48 != (+((0L ^ 0xE3L) >= (((p_3133->g_1114.x > (((0x57ACL != (l_1015 = ((!make_uint3(4294967288UL, (safe_add_func_int64_t_s_s(((safe_rshift(make_long2(0xBA96FFDE56340850LL, p_48), make_long2(0x0A7BD3DB91687B4ELL, (-1L))))).y, (make_char3((-1L), (-1L), (make_int1(((safe_add_func_uint16_t_u_u(l_1107[4], (safe_mul_func_int8_t_s_s((**p_3133->g_1058), 0xABL)))) ^ 0x7EL)).x ^ p_48)).x != (**p_3133->g_568)))), 0xD92C0E16L).x) > l_1143))) , nullptr) == l_1166)) , l_1167) != l_1168[0])))) , p_3133->g_1169) == nullptr) , 253UL) != 0x09L) ^ l_1171))) , 0xEFL) > 0xF5L) >= 1UL), 0x91L)), (*l_950)));
                    }
                    (*l_950) = p_46;
                }
                else
                { /* block id: 400 */
                    uint32_t *l_1177 = &l_1176;
                    int32_t *l_1186 = nullptr;
                    for (l_807 = 1; (l_807 >= 0); l_807 -= 1)
                    { /* block id: 403 */
                        int64_t ****l_1173 = &l_820;
                        int64_t *****l_1174 = &l_1173;
                        int32_t l_1178 = 0x703247BBL;
                        (*l_1174) = l_1173;
                        l_1186 = func_49(l_1175[2], &l_1176, l_1177, l_1178, (((safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s(((make_ushort1(p_3133->g_1183.x).x ^ (safe_unary_minus_func_int8_t_s(make_char3(l_1185.z, l_1185.z, l_1185.z).y))) , p_48), p_48)), (*p_3133->g_569))) ^ 0x97E72257L) > 0x9D30E080L), p_3133);
                    }
                    for (p_3133->g_15 = 0; (p_3133->g_15 <= 1); p_3133->g_15 += 1)
                    { /* block id: 410 */
                        int32_t *l_1188 = &l_768;
                        int i, j;
                        l_1187 = &l_702[(p_3133->g_946 + 2)][p_3133->g_15];
                        p_3133->g_121 = l_1188;
                        if (l_1189)
                            continue;
                    }
                    l_762 &= ((p_46 == (*l_950)) > ((*l_1069)++));
                }
            }
            l_918.x ^= make_int2(((*l_950) = (make_char2(l_1192.y, l_1192.y).x != (make_short3((safe_add_func_uint16_t_u_u(((((*l_1196) = ((*p_3133->g_691) = l_1195[2][0][3])) != l_1197) , 0x9436L), p_48)), 0x4A91L, 1L).y , (p_46 , 0x34L)))), 0xD6D9A0EEL).y;
        }
        p_3133->g_359.w = (make_ushort3(make_ushort2(((*p_3133->g_569) != (nullptr != &l_1187)), 0x913CL).y, ((l_918.x ^= (1L ^ (***p_3133->g_692))) , (l_920.y >= ((safe_sub_func_uint8_t_u_u(((((nullptr == &l_762) < (safe_mul_func_uint16_t_u_u(make_ushort4(0UL, 0x4D00L, 0x9B36L, 0xF05DL).x, (safe_mod_func_uint32_t_u_u((((l_1205[5][1] = &p_3133->g_692) != &l_1195[0][0][0]) >= l_1185.z), l_918.x))))) || l_1206) >= p_46), p_46)) , p_46))), 0xB255L).y && 0x1504L);
        l_762 = 9L;
    }
    p_3133->g_121 = (p_48 , &p_3133->g_280);
    return (***p_3133->g_692);
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_402 p_3133->g_459 p_3133->g_569 p_3133->g_335 p_3133->g_617 p_3133->g_250 hip_const_5 hip_const_10 p_3133->g_691 p_3133->g_692 p_3133->g_693 p_3133->g_280
 * writes: p_3133->g_402 p_3133->g_15 p_3133->g_663 p_3133->g_459 p_3133->g_455 p_3133->g_280
 */
__device__ int32_t * func_49(int16_t * p_50, uint32_t * p_51, uint32_t * p_52, int32_t  p_53, int16_t  p_54, struct S0 * p_3133)
{ /* block id: 218 */
    int32_t *l_667[3][10] = {{nullptr, &p_3133->g_280, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_280}, {nullptr, &p_3133->g_280, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_280}, {nullptr, &p_3133->g_280, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_3133->g_280}};
    int64_t ***l_669 = &p_3133->g_664;
    int16_t l_670 = 0xEF5FL;
    uint3 l_675 = make_uint3(0x5BD1ECD6L, 8UL, 0x5BD1ECD6L);
    uint3 l_676 = make_uint3(4294967295UL, 0x2054E093L, 4294967295UL);
    uchar3 l_683 = make_uchar3(252UL, 0x02L, 252UL);
    uchar2 l_684 = make_uchar2(0xC1L, 7UL);
    __shared__ uint32_t l_685;
    l_685 = 0xAC832C24L;
    uint8_t l_688 = 253UL;
    int16_t ****l_694 = nullptr;
    int8_t *l_695 = &hip_const_7;
    int8_t *l_696 = nullptr;
    __shared__ int32_t l_697;
    l_697 = 0x2EC0B554L;
    __shared__ int8_t *l_698;
    l_698 = nullptr;
    int8_t *l_699[9][10] = {{nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}, {nullptr, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7}};
    uint64_t l_700[2][7][4] = {{{0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}}, {{0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}, {0x569C917D8E1F2189LL, 0x61243E742D095DADLL, 0x946EAA8EB49E4BB3LL, 0x946EAA8EB49E4BB3LL}}};
    int i, j, k;
    for (p_3133->g_402 = (-10); (p_3133->g_402 > (-22)); p_3133->g_402 = safe_sub_func_int8_t_s_s(p_3133->g_402, 5))
    { /* block id: 221 */
        uint32_t l_660[7] = {0xAE5C7E02L, 0xE13AB5C8L, 0xAE5C7E02L, 0xE13AB5C8L, 0xAE5C7E02L, 0xE13AB5C8L, 0xAE5C7E02L};
        int i;
        for (p_53 = 2; (p_53 >= 0); p_53 -= 1)
        { /* block id: 224 */
            int32_t **l_668 = &l_667[1][1];
            for (p_3133->g_15 = 0; (p_3133->g_15 <= 2); p_3133->g_15 += 1)
            { /* block id: 227 */
                int32_t *l_652 = nullptr;
                int32_t *l_653 = nullptr;
                int32_t *l_654 = nullptr;
                int32_t l_655 = 0x50C386F3L;
                int32_t *l_656 = nullptr;
                int32_t *l_657 = &p_3133->g_280;
                int32_t *l_658 = &l_655;
                __shared__ int32_t *l_659;
                l_659 = &l_655;
                int64_t ***l_666[4] = {&p_3133->g_664, &p_3133->g_664, &p_3133->g_664, &p_3133->g_664};
                int64_t ****l_665 = &l_666[3];
                int i;
                l_660[6]--;
                (*l_665) = (p_3133->g_663 = nullptr);
            }
            (*l_668) = l_667[1][1];
        }
    }
    p_3133->g_459.w &= (nullptr != l_669);
    l_670 = p_53;
    p_3133->g_280 |= ((l_700[0][4][0] = (safe_mul_func_uint32_t_u_u(((*p_3133->g_569) , ((safe_lshift(make_uint4(l_675.y, l_675.y, l_675.y, l_675.y), make_uint4(l_676.x, l_676.x, l_676.x, l_676.x)))).z), (safe_div_func_int32_t_s_s(((safe_sub_func_int64_t_s_s(((p_53 > p_3133->g_617.y) , ((safe_add_func_int16_t_s_s((((make_int4((p_53 ^= 0x7E1A2190L), make_int2(6L, (((make_uchar3(l_683.y, l_683.y, l_683.y) & make_uchar3(l_684.y, l_684.y, l_684.y))).x & (0xF2FB8A64E8E6CE3DLL | l_685))).y, (((safe_mod_func_int8_t_s_s((p_3133->g_455.x = (((((((*p_3133->g_250) == (l_688 >= (safe_add_func_uint8_t_u_u((p_3133->g_691 == l_694), (*p_3133->g_569))))) <= p_54) != p_53) && p_54) <= p_54) <= 0xC371B93074904D1FLL)), (*p_3133->g_569))) , p_54) <= p_54), p_3133->g_335[1]).w <= l_697) | p_54) == p_54), (***p_3133->g_692))) <= hip_const_5)), p_54)) , 1L), p_54))))) || p_53);
    return l_667[1][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_16 p_3133->g_120 p_3133->g_67 hip_const_3 p_3133->g_88 hip_const_1 p_3133->g_29 p_3133->g_153 hip_const_4 hip_const_9 p_3133->g_238 hip_const_8 p_3133->g_76 p_3133->g_280 hip_const_2 p_3133->g_283 p_3133->g_250 hip_const_5 hip_const_10 p_3133->g_272 p_3133->g_66 p_3133->g_376 p_3133->g_121 p_3133->g_381 hip_const_6 p_3133->g_402 p_3133->g_429 p_3133->g_335 p_3133->g_102 p_3133->g_568 p_3133->g_504 p_3133->g_569 p_3133->g_614 p_3133->g_617 p_3133->g_622 p_3133->g_630 p_3133->g_636 p_3133->g_455 p_3133->g_103 p_3133->g_15 p_3133->g_319 p_3133->g_320 p_3133->g_359 p_3133->g_420 p_3133->g_459
 * writes: p_3133->g_67 p_3133->g_15 p_3133->g_16 p_3133->g_120 p_3133->g_250 p_3133->g_121 p_3133->g_153 p_3133->g_272 p_3133->g_335 p_3133->g_381 p_3133->g_437 p_3133->g_280 p_3133->g_472 p_3133->g_429 p_3133->g_102
 */
__device__ uint32_t * func_57(uint16_t  p_58, struct S0 * p_3133)
{ /* block id: 17 */
    uint1 l_86 = make_uint1(5UL);
    char2 l_96 = make_char2(7L, 0L);
    int32_t l_97[2][5] = {{0x45CF3152L, 0x45CF3152L, 3L, 0x45CF3152L, 0x45CF3152L}, {0x45CF3152L, 0x45CF3152L, 3L, 0x45CF3152L, 0x45CF3152L}};
    uint8_t l_105[6][2] = {{0x36L, 0xADL}, {0x36L, 0xADL}, {0x36L, 0xADL}, {0x36L, 0xADL}, {0x36L, 0xADL}, {0x36L, 0xADL}};
    int3 l_107 = make_int3(0xF4B6F1E5L, 0xFE0D49B8L, 0xF4B6F1E5L);
    uint32_t l_109 = 18446744073709551615UL;
    int32_t *l_111[10][3][8] = {{{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}, {{nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}, {nullptr, &l_97[0][2], &p_3133->g_29[2], nullptr, nullptr, nullptr, &l_97[1][3], &l_97[1][2]}}};
    long1 l_118 = make_long1((-2L));
    uint32_t l_124 = 4294967295UL;
    uint8_t l_229 = 0x0AL;
    uint64_t *l_237 = nullptr;
    uint8_t *l_368 = nullptr;
    uint8_t **l_367[6];
    __shared__ int16_t **l_398;
    l_398 = &p_3133->g_250;
    uint3 l_410 = make_uint3(0x1913D0C9L, 0xB7E36B68L, 0x1913D0C9L);
    ulong2 l_419 = make_ulong2(18446744073709551615UL, 0x34BA70878BC4DD5ELL);
    int4 l_430 = make_int4(0L, 1L, 0L, 1L);
    ulong4 l_431 = make_ulong4(0xA47CA6D87F4DC187LL, 0x85DC857C6D8648ECLL, 0xA47CA6D87F4DC187LL, 0x85DC857C6D8648ECLL);
    uchar1 l_452 = make_uchar1(0x07L);
    int2 l_458 = make_int2(0xE573851CL, 0x5C797D7EL);
    uint64_t ***l_473[2];
    uint64_t l_510 = 1UL;
    ushort4 l_519 = make_ushort4(1UL, 0x04FFL, 1UL, 0x04FFL);
    uint64_t l_527 = 0UL;
    int32_t **l_547 = &l_111[4][2][2];
    int3 l_563 = make_int3(1L, (-1L), 1L);
    uint16_t l_576[5] = {6UL, 65527UL, 6UL, 65527UL, 6UL};
    short2 l_585 = make_short2(0x3399L, 0L);
    long4 l_604 = make_long4(0xAD09A24E2D2A3AC1LL, (-1L), 0xAD09A24E2D2A3AC1LL, (-1L));
    char2 l_610 = make_char2(0x60L, 0xF9L);
    char3 l_613 = make_char3((-2L), 0xA6L, (-2L));
    uint32_t l_633 = 4294967293UL;
    int32_t l_648 = 0x45F0A356L;
    uint32_t l_649 = 0x8DD1A980L;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_367[i] = &l_368;
    for (i = 0; i < 2; i++)
        l_473[i] = &p_3133->g_381;
lbl_546:
    if ((safe_rshift_func_uint64_t_u_s(make_ulong4(p_3133->g_76.x, p_3133->g_76.x, p_3133->g_76.x, p_3133->g_76.x).z, 7)))
    { /* block id: 18 */
        uint4 l_85 = make_uint4(0x2E9AD701L, 1UL, 0x2E9AD701L, 1UL);
        uint4 l_87 = make_uint4(0x2A19D8D7L, 4294967290UL, 0x2A19D8D7L, 4294967290UL);
        __shared__ int32_t *l_93;
        l_93 = &p_3133->g_29[9];
        int8_t l_104 = (-5L);
        int32_t *l_106[10][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
        int i, j;
        p_3133->g_67.y = (((safe_div_func_int64_t_s_s(((((safe_div(((safe_sub(((safe_div(make_uint2(l_85.w, l_85.w), make_uint2(l_86.x, l_86.x)))), make_uint2(l_87.z, l_87.z)))), make_uint2(p_3133->g_88.x, p_3133->g_88.x)))).x > ((((safe_rshift(make_int2((safe_sub_func_int8_t_s_s((l_93 != nullptr), (safe_mul_func_int64_t_s_s((l_86.x & ((l_97[0][2] = make_char1(l_96.y).x) == make_char4(1L, (safe_rshift_func_uint16_t_u_u((make_char4((safe_rshift_func_uint64_t_u_u((((~make_int3((-8L), (l_96.x > (-1L)), 0xCBA47412L))).z , ((make_ulong2(p_3133->g_102.y, p_3133->g_102.y) & make_ulong2(p_3133->g_103.y, p_3133->g_103.y))).x), (hip_const_6[1] & p_58))), (p_58 >= l_104), l_105[4][1], 0x28L).y & (*l_93)), 13)), 0xFEL, l_105[4][0]).z)), p_58)))), (-6L)), make_int2(32, 32)))).y < 0x432CFE06L) , 0x96E56265L)) & p_58), 0xDC5D499989FA4E93LL)) >= p_3133->g_16.y) != p_58);
    }
    else
    { /* block id: 21 */
        int32_t *l_108[3];
        int32_t **l_110[8][1] = {{&l_108[0]}, {&l_108[0]}, {&l_108[0]}, {&l_108[0]}, {&l_108[0]}, {&l_108[0]}, {&l_108[0]}, {&l_108[0]}};
        uint16_t l_166 = 0x4E49L;
        int8_t l_174 = (-1L);
        int16_t *l_183[1];
        uchar2 l_185 = make_uchar2(3UL, 0xA1L);
        uint32_t l_202 = 3UL;
        long2 l_234 = make_long2(1L, 6L);
        uint32_t *l_235[2][4] = {{&p_3133->g_15, &p_3133->g_15, nullptr, &p_3133->g_15}, {&p_3133->g_15, &p_3133->g_15, nullptr, &p_3133->g_15}};
        int64_t l_247 = 0L;
        uint16_t l_256 = 0UL;
        uint16_t l_274 = 0xF4D4L;
        long2 l_284 = make_long2((-9L), 6L);
        ulong4 l_299 = make_ulong4(1UL, 0x5EA8D3366A8991DELL, 1UL, 0x5EA8D3366A8991DELL);
        char2 l_300 = make_char2(7L, 0xC6L);
        uint32_t l_302[10][6] = {{0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}, {0xE7C30624L, 0x424097C1L, 6UL, 4294967289UL, 0UL, 0UL}};
        ulong2 l_305 = make_ulong2(0xC6EF26CA4341FC42LL, 0xA5FD6ADE0E863DC8LL);
        ulong1 l_306 = make_ulong1(0xCB02DF14B8F8CD49LL);
        uint8_t l_343 = 0UL;
        int32_t l_403 = 0x9EE3DA58L;
        int32_t l_406 = 1L;
        __shared__ uint32_t l_439;
        l_439 = 18446744073709551615UL;
        __shared__ int8_t l_526;
        l_526 = 0xB6L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_108[i] = &l_97[0][2];
        for (i = 0; i < 1; i++)
            l_183[i] = &hip_const_10;
lbl_169:
        l_109 |= make_int1(l_107.x).x;
        l_111[6][0][1] = &p_3133->g_29[6];
        if ((!1L))
        { /* block id: 24 */
            __shared__ int32_t l_141;
            l_141 = 9L;
            __shared__ int32_t **l_148;
            l_148 = &p_3133->g_121;
            int32_t l_165 = 0L;
            int16_t *l_184[5][5][7] = {{{nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}}, {{nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}}, {{nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}}, {{nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}}, {{nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}, {nullptr, nullptr, &hip_const_5, &hip_const_5, &hip_const_1, &hip_const_1, &hip_const_5}}};
            __shared__ uint32_t *l_197;
            l_197 = &p_3133->g_15;
            uint2 l_206 = make_uint2(0x9995B76EL, 4294967290UL);
            uint1 l_207 = make_uint1(0xD6ED3673L);
            int32_t **l_244 = &l_111[6][0][1];
            int32_t **l_261 = &l_108[0];
            int i, j, k;
            for (p_58 = (-8); (p_58 > 39); ++p_58)
            { /* block id: 27 */
                int32_t **l_119 = nullptr;
                int32_t l_122 = (-8L);
                __shared__ int32_t l_164;
                l_164 = (-10L);
                __shared__ uint8_t l_190;
                l_190 = 0x63L;
                for (p_3133->g_15 = 0; (p_3133->g_15 <= 2); p_3133->g_15 += 1)
                { /* block id: 30 */
                    uint8_t l_123[1][5] = {{255UL, 1UL, 255UL, 1UL, 255UL}};
                    int32_t **l_134[5][6] = {{nullptr, nullptr, &l_111[6][0][1], &l_108[0], &l_111[6][0][1], nullptr}, {nullptr, nullptr, &l_111[6][0][1], &l_108[0], &l_111[6][0][1], nullptr}, {nullptr, nullptr, &l_111[6][0][1], &l_108[0], &l_111[6][0][1], nullptr}, {nullptr, nullptr, &l_111[6][0][1], &l_108[0], &l_111[6][0][1], nullptr}, {nullptr, nullptr, &l_111[6][0][1], &l_108[0], &l_111[6][0][1], nullptr}};
                    int16_t *l_181 = &hip_const_10;
                    int i, j;
                    if ((safe_div_func_int8_t_s_s((-1L), ((safe_lshift_func_uint16_t_u_u(((p_58 != ((make_long2(l_118.x, l_118.x).y , l_119) == p_3133->g_120)) & (l_122 , l_123[0][0])), p_58)) || l_124))))
                    { /* block id: 31 */
                        uint64_t l_125[6][9][4] = {{{18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}}, {{18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}}, {{18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}}, {{18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}}, {{18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}}, {{18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}, {18446744073709551615UL, 0x4EB220E445E5F965LL, 18446744073709551609UL, 0UL}}};
                        uint16_t *l_144 = &hip_const_6[1];
                        uint16_t *l_145 = &hip_const_8;
                        uint16_t *l_146[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int32_t ***l_147[10] = {&l_134[3][0], &l_119, &l_134[3][0], &l_119, &l_134[3][0], &l_119, &l_134[3][0], &l_119, &l_134[3][0], &l_119};
                        int16_t *l_163[9][3] = {{nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}, {nullptr, &hip_const_5, nullptr}};
                        int i, j, k;
                        l_141 &= (l_125[5][3][2] == ((((safe_div_func_uint32_t_u_u((p_3133->g_67.y && (((((safe_mod_func_uint64_t_u_u((hip_const_3 && (((safe_sub_func_int64_t_s_s((((safe_div_func_uint8_t_u_u((0x936EB09B283B4B79LL || (l_134[4][5] != &l_108[0])), ((((0UL < ((make_char1(0x16L) ^ ((~((make_char1((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint32_t_u_u(2UL, ((safe_lshift_func_int8_t_s_u(make_char2(0xA3L, 0x83L).y, 7)) <= hip_const_5))), l_125[0][3][1]))) ^ make_char1((-1L)))))))).x) == p_58) , (-2L)) , l_125[5][3][2]))) < 0L) ^ p_58), 0L)) ^ p_3133->g_88.y) | hip_const_1)), 0xE1585BBCD1606331LL)) , nullptr) != nullptr) >= 0xEBE5BDD1L) >= p_58)), p_3133->g_29[9])) <= 0x65B9L) , 0x0D85DCC5L) , (-7L)));
                        p_3133->g_16.y &= (safe_add_func_uint64_t_u_u((0L > (l_122 |= (p_58 , make_ushort3((l_141 = p_58), 4UL, 65535UL).y))), (((((l_125[1][5][1] , (((l_148 = &p_3133->g_121) != (l_134[0][1] = &p_3133->g_121)) && (safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s(1L, 8)), 2)))) | (((make_long2((-3L), p_3133->g_76.x) & make_long2(p_3133->g_153.x, p_3133->g_153.x))).x == p_3133->g_153.y)) == p_3133->g_88.x) > 0x611BEE51L) < 0x8F81L)));
                        l_164 = (((p_58 != p_58) > (safe_rshift_func_int32_t_s_s(((l_110[4][0] = l_119) != &p_3133->g_121), ((safe_unary_minus_func_int32_t_s((p_3133->g_16.x = ((safe_add(make_int3(((hip_const_2 == (safe_mul_func_int16_t_s_s((l_122 |= (safe_sub_func_int8_t_s_s((0xA65F372EL == (nullptr == &l_109)), p_58))), p_3133->g_29[9]))) >= 0x81L), 0L, (-7L)), make_int3(1L, 1L, 1L)))).x))) && p_58)))) && 0xA1A12858L);
                        --l_166;
                    }
                    else
                    { /* block id: 43 */
                        int16_t **l_182 = &l_181;
                        uint64_t *l_188 = nullptr;
                        uint64_t *l_189[7][8] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                        __shared__ int32_t l_191;
                        l_191 = (-6L);
                        uint32_t *l_192 = nullptr;
                        uint32_t *l_193 = nullptr;
                        uint32_t *l_194 = nullptr;
                        uint32_t *l_195 = nullptr;
                        __shared__ uint32_t *l_196;
                        l_196 = &l_124;
                        int i, j;
                        if (hip_const_3)
                            goto lbl_169;
                        if (p_58)
                            break;
                        l_141 ^= ((((*l_196) = (l_191 = (((safe_rshift_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((l_174 <= (safe_add_func_int8_t_s_s(hip_const_4, (0xA95D1FD822348030LL ^ (((make_char4(0xD7L, (safe_rshift_func_int16_t_s_s(((make_short4(0x7B5CL, (0x67L && (+((make_uchar4(((p_58 > (((((*l_182) = l_181) != (l_184[1][1][3] = l_183[0])) || (make_uchar3(l_185.y, l_185.y, l_185.y).z > (safe_sub_func_int64_t_s_s(hip_const_10, (p_3133->g_102.y = (p_58 || p_58)))))) , 0x72L)) == l_190), 3UL, 1UL, 251UL) | make_uchar4(251UL, 251UL, 251UL, 251UL))).y)), 0xAF4FL, 0xA95CL) ^ make_short4(0x58ABL, 0x58ABL, 0x58ABL, 0x58ABL))).w, p_58)), l_191, (-9L)) ^ make_char4((-1L), (-1L), (-1L), (-1L)))).z != p_58))))), p_58)), 8)) ^ p_58) & l_191))) < p_58) , (-8L));
                    }
                    return l_197;
                }
            }
            for (p_58 = (-21); (p_58 < 2); p_58 = safe_add_func_int32_t_s_s(p_58, 6))
            { /* block id: 58 */
                int32_t ***l_205 = &p_3133->g_120;
                __shared__ uint16_t *l_220;
                l_220 = nullptr;
                uint16_t *l_221 = &hip_const_6[1];
                uint16_t *l_222 = &hip_const_6[1];
                uint16_t *l_223 = nullptr;
                uint16_t *l_224 = &hip_const_6[1];
                uint16_t *l_225 = &hip_const_8;
                uint16_t *l_226[6][4] = {{&hip_const_9, nullptr, nullptr, &hip_const_6[1]}, {&hip_const_9, nullptr, nullptr, &hip_const_6[1]}, {&hip_const_9, nullptr, nullptr, &hip_const_6[1]}, {&hip_const_9, nullptr, nullptr, &hip_const_6[1]}, {&hip_const_9, nullptr, nullptr, &hip_const_6[1]}, {&hip_const_9, nullptr, nullptr, &hip_const_6[1]}};
                int32_t l_227 = 0x8E8DD6AAL;
                int32_t l_228 = (-1L);
                uint64_t *l_236 = nullptr;
                uchar3 l_252 = make_uchar3(255UL, 8UL, 255UL);
                uint64_t *l_273 = nullptr;
                int64_t *l_275[8][10][3] = {{{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}, {{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}, {{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}, {{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}, {{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}, {{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}, {{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}, {{nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}, {nullptr, nullptr, &l_247}}};
                uint8_t *l_276 = &hip_const_4;
                __shared__ uint8_t *l_277;
                l_277 = &l_105[4][0];
                int i, j, k;
                if (((((safe_div_func_int64_t_s_s((-1L), l_202)) ^ ((((safe_mod_func_uint32_t_u_u(hip_const_9, ((&p_3133->g_121 == ((*l_205) = &l_111[2][0][0])) , ((make_uint2(l_206.y, l_206.y) | make_uint2(l_207.x, l_207.x))).y))) >= (safe_div_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((safe_lshift(make_int3((safe_sub_func_int16_t_s_s((l_141 = ((safe_add_func_uint8_t_u_u((0x00L ^ ((((((p_58 && (((safe_mul_func_int32_t_s_s(p_58, ((l_229++) != (make_long2((safe_lshift_func_int8_t_s_s((make_long2(l_234.y, l_234.y).x <= p_58), 5)), p_3133->g_29[3]).x == 18446744073709551608UL)))) , nullptr) != l_235[0][1])) , p_3133->g_102.y) > 8UL) != p_58) , l_236) == l_237)), hip_const_2)) || p_58)), 0UL)), 0xCDBF535DL, 0x4210C5FFL), make_int3(32, 32, 32)))).y, p_58)), 0xC9L))) , p_58) && 255UL)) , nullptr) != p_3133->g_238[4][1][2]))
                { /* block id: 62 */
                    uint8_t l_239 = 0UL;
                    int16_t *l_249 = &hip_const_10;
                    l_239 = (((*l_205) = nullptr) != &l_108[0]);
                    for (l_141 = 23; (l_141 <= (-29)); l_141 = safe_sub_func_uint8_t_u_u(l_141, 9))
                    { /* block id: 67 */
                        p_3133->g_67.y = (p_3133->g_16.y = p_58);
                        p_3133->g_16.y = make_int3((safe_mul_func_uint64_t_u_u(p_3133->g_88.y, 0x6EC9BEFE6A039872LL)), p_58, 0xABFD20BFL).y;
                    }
                    if ((nullptr != l_244))
                    { /* block id: 72 */
                        int16_t **l_248[5][3] = {{&l_183[0], nullptr, &l_183[0]}, {&l_183[0], nullptr, &l_183[0]}, {&l_183[0], nullptr, &l_183[0]}, {&l_183[0], nullptr, &l_183[0]}, {&l_183[0], nullptr, &l_183[0]}};
                        __shared__ uint8_t *l_253;
                        l_253 = nullptr;
                        uint8_t *l_254 = &l_105[1][0];
                        ushort3 l_255 = make_ushort3(0x1580L, 0xB614L, 0x1580L);
                        int i, j;
                        p_3133->g_16.x |= (p_3133->g_67.x = ((safe_add_func_int32_t_s_s(l_247, (1L == (!((l_249 = &hip_const_10) != (p_3133->g_250 = &hip_const_10)))))) < (((make_ulong3(0xBAA201D12309B60FLL, 8UL, 18446744073709551607UL).y , ((((((safe_unary_minus_func_int16_t_s(((&p_3133->g_29[9] != &p_3133->g_29[3]) < (0x89L > ((*l_254) ^= make_uchar4(l_252.x, l_252.x, l_252.x, l_252.x).y))))) , ((-3L) != ((make_ushort3(l_255.z, l_255.z, l_255.z).x & hip_const_8) >= p_3133->g_88.x))) , p_58) != p_58) ^ p_58) & p_3133->g_76.y)) , l_255.x) ^ 0x10B6FDA8L)));
                        l_141 |= l_256;
                    }
                    else
                    { /* block id: 79 */
                        int32_t *l_257 = &l_97[0][2];
                        (*l_148) = l_257;
                    }
                }
                else
                { /* block id: 82 */
                    __shared__ int32_t *l_258;
                    l_258 = nullptr;
                    (**l_205) = l_258;
                    if (l_229)
                        goto lbl_546;
                }
                (**l_261) = (safe_mul_func_uint16_t_u_u((l_261 == ((*l_205) = nullptr)), ((~(((safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_u((((safe_add_func_uint8_t_u_u((safe_mul_func_uint64_t_u_u((((p_3133->g_153.y = (safe_sub_func_int64_t_s_s(make_long1((-2L)).x, (l_274 = (make_int2(p_3133->g_272.y, p_3133->g_272.y).x > 7UL))))) & p_58) & p_58), (**l_261))), ((p_58 , ((*l_277) = p_58)) < ((((~((make_uchar3(248UL, (((safe_rshift(make_uint4(0x8ADEA07BL, 4294967295UL, 0x5A1C0EE6L, p_58), make_uint4(4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL)))).x >= p_58), 254UL) & make_uchar3(0xB7L, 0xB7L, 0xB7L))))) ^ make_uchar3(0x58L, 0x58L, 0x58L))).x))) != p_58) , 8L), p_58)), 0x866E13792FB510B9LL)) ^ 0x2D2EL) >= p_58)) != p_3133->g_280)));
                (*l_244) = (*l_261);
            }
        }
        else
        { /* block id: 92 */
            int8_t l_298 = 0L;
            int32_t l_339 = (-1L);
            uint64_t **l_384 = &l_237;
            __shared__ int16_t *l_401;
            l_401 = &hip_const_10;
            int32_t *l_407 = nullptr;
            int64_t l_443 = 0x88D8BED2A8ADF922LL;
            uint8_t l_485 = 1UL;
            uint1 l_530 = make_uint1(0x377C5195L);
            uint32_t l_540 = 0x0C5EE152L;
            ushort4 l_543 = make_ushort4(0UL, 65529UL, 0UL, 65529UL);
            int i;
            if (p_58)
            { /* block id: 93 */
                uint8_t l_321 = 0xADL;
                char2 l_328 = make_char2(5L, 2L);
                int1 l_338 = make_int1(2L);
                uint8_t l_340 = 246UL;
                short2 l_344 = make_short2(8L, 0x5827L);
                uint8_t *l_366 = &hip_const_4;
                uint8_t **l_365 = &l_366;
                int i;
                if ((safe_mod_func_int32_t_s_s((hip_const_2 , (&hip_const_9 == nullptr)), make_uint4(p_3133->g_283.x, p_3133->g_283.x, p_3133->g_283.x, p_3133->g_283.x).y)))
                { /* block id: 94 */
                    uint32_t l_285 = 1UL;
                    int1 l_301 = make_int1((-2L));
                    __shared__ uint64_t *l_333;
                    l_333 = nullptr;
                    int i;
                    l_285 |= l_284.y;
                    for (l_229 = 0; (l_229 <= 0); l_229 += 1)
                    { /* block id: 98 */
                        int8_t l_290[4][6] = {{0x88L, 0x9AL, 0L, 0x03L, 0x03L, 0L}, {0x88L, 0x9AL, 0L, 0x03L, 0x03L, 0L}, {0x88L, 0x9AL, 0L, 0x03L, 0x03L, 0L}, {0x88L, 0x9AL, 0L, 0x03L, 0x03L, 0L}};
                        __shared__ int8_t *l_291;
                        l_291 = &l_174;
                        int i, j;
                        l_290[1][1] = (safe_sub_func_uint32_t_u_u(4294967286UL, (safe_rshift_func_uint32_t_u_s(l_285, 28))));
                        p_3133->g_272.x &= ((((*l_291) ^= 0x69L) != (safe_mod_func_uint16_t_u_u((((safe_lshift_func_int64_t_s_u((safe_lshift_func_uint64_t_u_u(0x9D6655A303509A93LL, l_298)), 57)) || (+(p_3133->g_76.y != make_ulong1(l_299.y).x))) < ((l_302[3][4] = (make_char3(l_300.y, l_300.y, l_300.y).x >= (make_int4(l_301.x, l_301.x, l_301.x, l_301.x).w < 0xC09D82C8L))) & ((+(safe_div_func_int32_t_s_s(p_58, (make_ulong2(l_305.y, l_305.y).y || make_ulong4(l_306.x, l_306.x, l_306.x, l_306.x).z)))) >= ((safe_rshift_func_uint16_t_u_s((((safe_mul_func_uint64_t_u_u(((-1L) < (nullptr != l_183[l_229])), (-1L))) & p_3133->g_283.x) && p_3133->g_29[1]), l_301.x)) >= l_298)))), (*p_3133->g_250)))) , p_58);
                    }
                    for (l_174 = (-24); (l_174 > 13); l_174++)
                    { /* block id: 106 */
                        int8_t *l_315 = nullptr;
                        int8_t *l_316[10];
                        uint8_t *l_326[4];
                        uint8_t **l_327 = &l_326[2];
                        int64_t *l_334[1][8] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                        int32_t l_336 = (-7L);
                        int32_t l_337 = 1L;
                        int i, j;
                        for (i = 0; i < 10; i++)
                            l_316[i] = &hip_const_7;
                        for (i = 0; i < 4; i++)
                            l_326[i] = &l_105[4][1];
                        p_3133->g_67.x |= (make_ushort2((((((*p_3133->g_120) != (*p_3133->g_120)) , &hip_const_2) == nullptr) != (l_301.x = p_3133->g_76.x)), 7UL).x == ((safe_rshift_func_int64_t_s_u(((make_uchar1(p_3133->g_319.x).x >= (p_58 , (&p_58 == nullptr))) , (((make_uint4(p_3133->g_320.x, p_3133->g_320.x, p_3133->g_320.x, p_3133->g_320.x).y , (l_321 <= p_3133->g_66.x)) == p_58) != 0L)), p_58)) <= 0L));
                        p_3133->g_67.z = ((safe_rshift_func_int64_t_s_s((safe_add_func_int16_t_s_s(((((&hip_const_4 == ((*l_327) = l_326[2])) > p_58) , make_char3(l_328.y, l_328.y, l_328.y).z) && p_3133->g_272.x), p_58)), (p_3133->g_335[1] = ((safe_mul_func_uint8_t_u_u((((p_58 | (make_short3((safe_sub_func_int64_t_s_s(make_long3(((safe_unary_minus(((make_long1((p_3133->g_153.x = ((((p_3133->g_272.y , l_333) != l_333) ^ 5UL) | (-1L)))) ^ make_long1(1L)))))).x, p_3133->g_280, p_58).y, 0xC9077AF8F90EE572LL)), 0xD2AFL, (-1L)).x != 0xFD45L)) || (*p_3133->g_250)) ^ p_58), p_58)) & p_58)))) || p_58);
                        --l_340;
                        l_343 &= p_58;
                    }
                }
                else
                { /* block id: 116 */
                    __shared__ uint64_t l_349;
                    l_349 = 18446744073709551615UL;
                    ushort2 l_354 = make_ushort2(0xC7CBL, 0UL);
                    int1 l_360 = make_int1(8L);
                    __shared__ int8_t *l_375;
                    l_375 = &l_298;
                    int32_t *l_378 = nullptr;
                    __shared__ int64_t **l_379;
                    l_379 = nullptr;
                    int i;
                    if ((make_short4(l_344.x, l_344.x, l_344.x, l_344.x).x < ((p_58 != ((safe_sub_func_int8_t_s_s(p_58, ((*l_375) = (safe_mul_func_uint32_t_u_u((l_349 != (safe_mul_func_int16_t_s_s(p_58, ((safe_mul(make_ushort4(l_354.y, l_354.y, l_354.y, l_354.y), ((((make_ushort4(1UL, 65526UL, 0xA35AL, (safe_sub_func_uint16_t_u_u((safe_add_func_int8_t_s_s((((make_int3(p_3133->g_359.y, p_3133->g_359.y, p_3133->g_359.y) & make_int3(l_360.x, l_360.x, l_360.x))).x & (l_338.x = 0x470E1591L)), (((((safe_mod_func_int32_t_s_s((safe_add_func_uint64_t_u_u(((l_365 = nullptr) != l_367[3]), (safe_lshift_func_int16_t_s_s((l_339 = (*p_3133->g_250)), (((safe_add_func_uint16_t_u_u(((safe_rshift_func_int64_t_s_u(0x6415629FB11BDF6BLL, p_3133->g_29[8])) != p_58), (*p_3133->g_250))) == p_58) != p_3133->g_153.x))))), l_354.y)) , 0x08L) <= p_3133->g_283.x) || l_298) | p_58))), p_3133->g_16.x))) ^ make_ushort4(0x971AL, 0x971AL, 0x971AL, 0x971AL))) & make_ushort4(0x0B60L, 0x0B60L, 0x0B60L, 0x0B60L)))))).z))), 0x7AABE5E9L))))) ^ p_58)) ^ 0xE495C154L)))
                    { /* block id: 121 */
                        uint16_t l_377[3][10] = {{65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L}, {65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L}, {65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L, 65535UL, 0x2365L}};
                        __shared__ int64_t ***l_380;
                        l_380 = &l_379;
                        int i, j;
                        l_377[1][5] = (p_3133->g_376 == nullptr);
                        (*p_3133->g_120) = (l_378 = nullptr);
                        (*p_3133->g_120) = (*p_3133->g_120);
                        (*l_380) = l_379;
                    }
                    else
                    { /* block id: 127 */
                        __shared__ uint64_t **l_383;
                        l_383 = &l_237;
                        uint64_t ***l_382[8] = {&l_383, &l_383, &l_383, &l_383, &l_383, &l_383, &l_383, &l_383};
                        int i;
                        l_384 = (p_3133->g_381 = &p_3133->g_376);
                        l_339 &= (p_3133->g_67.z ^= ((((*p_3133->g_381) == ((safe_mod_func_uint16_t_u_u(((nullptr != &hip_const_6[1]) != 1L), ((&p_3133->g_120 != ((safe_mod_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((safe_div_func_uint8_t_u_u(p_58, ((safe_mod_func_int32_t_s_s((safe_lshift_func_uint32_t_u_s(((&p_3133->g_250 == l_398) > (safe_lshift_func_uint64_t_u_s((l_401 != nullptr), hip_const_6[1]))), p_3133->g_66.x)), p_3133->g_402)) ^ (*p_3133->g_250)))))), p_3133->g_76.y)), (*p_3133->g_250))) , &p_3133->g_120)) || l_403))) , l_237)) != 0x31L) && 3UL));
                        return &p_3133->g_15;
                    }
                    if ((safe_add_func_uint64_t_u_u(l_406, 0x5401A2F0B874C075LL)))
                    { /* block id: 134 */
                        int64_t *l_435 = &l_247;
                        int32_t l_436 = (-1L);
                        (*p_3133->g_120) = l_378;
                        (*p_3133->g_120) = l_407;
                        (*p_3133->g_120) = (*p_3133->g_120);
                        l_436 = ((((safe_sub(((((make_uint2(l_410.z, l_410.z) & make_uint2(0UL, 5UL))) ^ make_uint2(4294967295UL, (safe_mul_func_uint64_t_u_u((safe_lshift_func_int64_t_s_u(((*l_435) = (safe_sub_func_uint8_t_u_u((((l_354.y || ((safe_mod(make_ulong2((p_3133->g_102.y = make_ulong4(0x0C408FF482BFD9E2LL, 18446744073709551615UL, p_58, ((make_ulong1(l_419.y) & make_ulong1(p_3133->g_420.x))).x).w), (safe_add_func_uint8_t_u_u(make_uchar3(((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((*l_375) = hip_const_5), 2)), l_340)), 6)) , make_uchar1(p_3133->g_429.z).x), 0xEDL, 0x59L).y, l_430.w))), make_ulong2(l_431.x, l_431.x)))).x) > p_58) > (l_338.x = (safe_unary_minus_func_uint8_t_u((p_58 == (safe_add_func_uint8_t_u_u(p_3133->g_320.w, 1UL))))))), l_340))), 38)), 0x7AFC881086F47C3ALL))))), make_uint2(5UL, 5UL)))).y != 0xBE085FA7L) == hip_const_8);
                    }
                    else
                    { /* block id: 143 */
                        uint32_t *l_438 = &l_109;
                        l_338.x = p_58;
                        l_439 = ((p_3133->g_437 = nullptr) != l_438);
                    }
                    for (l_229 = 0; (l_229 >= 58); l_229 = safe_add_func_uint64_t_u_u(l_229, 2))
                    { /* block id: 150 */
                        int32_t l_456 = 0xA3927CCCL;
                        l_443 &= (safe_unary_minus_func_uint16_t_u(l_340));
                        l_360.x ^= (safe_div_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(((safe_mod(((~make_uchar2((safe_mul_func_int16_t_s_s((*p_3133->g_250), p_3133->g_420.x)), 0x2DL))), make_uchar2(l_452.x, l_452.x)))).y, ((*l_375) = make_char4((-10L), 0x33L, (-6L), ((((safe_lshift(make_char4(p_3133->g_455.x, p_3133->g_455.x, p_3133->g_455.x, p_3133->g_455.x), make_char4(8, 8, 8, 8)))) ^ make_char4(((p_58 < p_58) <= (l_456 ^ (safe_unary_minus_func_int64_t_s(7L)))), make_char4(0L, 6L, 0xB8L, 0x3EL).z, 0xCCL, (-1L)))).x).y))), 1L));
                    }
                    p_3133->g_280 |= ((make_int2(l_458.x, l_458.x) | make_int2(p_3133->g_459.y, p_3133->g_459.y))).y;
                }
            }
            else
            { /* block id: 157 */
                int8_t *l_464 = &l_174;
                ushort4 l_478 = make_ushort4(0UL, 0x98CCL, 0UL, 0x98CCL);
                int32_t l_521 = 0xF0F93CE9L;
                int i;
                for (l_274 = 0; (l_274 <= 47); l_274 = safe_add_func_int32_t_s_s(l_274, 9))
                { /* block id: 160 */
                    int8_t l_484 = 0L;
                    uint32_t *l_505[3];
                    int32_t l_518[5][4][2] = {{{(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}}, {{(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}}, {{(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}}, {{(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}}, {{(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}, {(-10L), 0x9B218900L}}};
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_505[i] = &l_109;
                    if ((safe_mul_func_uint64_t_u_u((nullptr == l_464), p_58)))
                    { /* block id: 161 */
                        uint32_t **l_471[9];
                        uint64_t ***l_474 = &l_384;
                        int32_t l_479 = (-1L);
                        uint32_t *l_480 = nullptr;
                        uint32_t *l_481 = nullptr;
                        uint32_t *l_482 = &l_124;
                        int8_t l_483[10][9] = {{0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}, {0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L, 0xA9L, 0xA9L, 0xA8L}};
                        int32_t l_486 = (-1L);
                        uint16_t l_496 = 1UL;
                        uint16_t *l_503 = &hip_const_8;
                        int32_t l_506[2][1][2];
                        int16_t ****l_507 = nullptr;
                        __shared__ int16_t ***l_509;
                        l_509 = nullptr;
                        int16_t ****l_508 = &l_509;
                        int i, j, k;
                        for (i = 0; i < 9; i++)
                            l_471[i] = &l_235[0][1];
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 2; k++)
                                    l_506[i][j][k] = (-1L);
                            }
                        }
                        l_486 &= (safe_lshift_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((((make_uint1(0xF0BA2720L).x < (safe_sub_func_uint8_t_u_u(p_3133->g_16.x, (p_3133->g_402 , ((*l_464) |= ((p_3133->g_472 = (p_3133->g_437 = &p_3133->g_15)) == (((l_473[0] == l_474) != make_ulong3(((make_ulong1(p_58) ^ make_ulong1(p_3133->g_475.x))).x, 0x79F229AE782D04C3LL, 0x2B9EBC3F98CBEEF1LL).x) , &p_3133->g_15))))))) < (safe_sub_func_uint32_t_u_u(((*l_482) = (make_ushort1(l_478.y).x && l_479)), l_483[1][3]))) , l_484), l_485)), p_3133->g_29[8]));
                        (*l_508) = ((safe_unary_minus_func_int64_t_s((safe_mod_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((safe_unary_minus_func_int8_t_s((make_char4(p_3133->g_493.x, p_3133->g_493.x, p_3133->g_493.x, p_3133->g_493.x).w < ((safe_mul_func_int8_t_s_s(l_496, ((((safe_rshift_func_uint32_t_u_u((p_3133->g_429.z , ((safe_add(make_uint2(((l_486 &= (p_58 , (safe_rshift_func_uint64_t_u_u(p_58, 53)))) , p_58), 0x5AA12001L), make_uint2(make_uint3(p_3133->g_504.y, p_3133->g_504.y, p_3133->g_504.y).x, (p_58 == (l_505[0] == nullptr)))))).x), p_58)) <= l_506[1][0][1]) != p_58) < l_506[1][0][1]))) >= 18446744073709551613UL)))), p_58)), (-6L))))) , nullptr);
                    }
                    else
                    { /* block id: 169 */
                        l_339 ^= l_510;
                        if (p_58)
                            goto lbl_169;
                        (*p_3133->g_120) = &l_97[0][4];
                    }
                    if ((l_339 = (&l_97[0][2] == ((*p_3133->g_120) = (*p_3133->g_120)))))
                    { /* block id: 176 */
                        if (p_58)
                            break;
                    }
                    else
                    { /* block id: 178 */
                        uint16_t *l_517[8] = {&l_274, nullptr, &l_274, nullptr, &l_274, nullptr, &l_274, nullptr};
                        uint32_t *l_520 = &l_124;
                        __shared__ int32_t l_531;
                        l_531 = 0x7AA76A48L;
                        int i;
                        l_521 |= (((0x2FL == ((p_58 , 0xEDL) >= (safe_rshift_func_int32_t_s_u(p_58, 23)))) ^ (p_58 <= (safe_mul_func_uint32_t_u_u(((l_518[1][1][1] |= p_3133->g_67.z) && ((make_ushort1(l_519.y) ^ make_ushort1(65531UL))).x), ((*l_520) &= (0UL ^ p_58)))))) || (nullptr == &hip_const_10));
                        l_531 = (safe_div_func_int64_t_s_s(make_long4(0x2ECF274F7103C415LL, (!(safe_lshift_func_uint16_t_u_u((((l_526 = p_3133->g_280) && (l_527 >= (safe_sub_func_uint32_t_u_u(make_uint4(make_uint2(l_530.x, l_530.x).y, 0x4C7FB06AL, 3UL, 0x4E3FBEA9L).w, (~(l_531 != ((((safe_lshift_func_uint64_t_u_s((safe_mul_func_int64_t_s_s((p_58 > ((safe_rshift_func_int8_t_s_s((((&hip_const_10 != (l_484 , &hip_const_10)) , (((safe_mod_func_uint32_t_u_u(p_58, 0xBC1A68CCL)) == p_58) , 8UL)) && 0xFCB1L), p_3133->g_29[9])) || 0x0731L)), p_3133->g_153.y)), p_3133->g_459.x)) <= l_518[1][1][1]) <= p_58) < 0L))))))) < (*p_3133->g_250)), p_3133->g_103.x))), l_484, (-7L)).y, p_58));
                    }
                }
                ++l_540;
                return &p_3133->g_15;
            }
            l_543.z--;
        }
    }
    (*l_547) = &l_97[0][2];
    for (l_109 = 0; (l_109 != 21); l_109 = safe_add_func_int16_t_s_s(l_109, 7))
    { /* block id: 196 */
        int32_t l_560 = 0x0997A383L;
        int8_t *l_570[10] = {&hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7};
        int32_t l_571[10];
        int64_t *l_572 = nullptr;
        int64_t *l_573 = nullptr;
        int64_t *l_574 = nullptr;
        int64_t *l_575[8][8][4] = {{{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}};
        int32_t l_577 = 1L;
        int64_t l_578 = 0L;
        uint32_t l_579 = 4294967295UL;
        char4 l_607 = make_char4((-7L), 0xE2L, (-7L), 0xE2L);
        short1 l_618 = make_short1(6L);
        long3 l_619 = make_long3(0L, (-1L), 0L);
        long2 l_627 = make_long2(9L, (-3L));
        long4 l_643 = make_long4(1L, 0x57228DF719E9AD61LL, 1L, 0x57228DF719E9AD61LL);
        int i, j, k;
        for (i = 0; i < 10; i++)
            l_571[i] = 0xEE7779E0L;
        l_577 = (safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(((safe_mul_func_uint64_t_u_u((safe_add_func_uint32_t_u_u((nullptr != &p_3133->g_15), p_58)), (p_3133->g_153.x = make_long4((safe_mod_func_uint8_t_u_u((--p_3133->g_335[0]), 0xA3L)), ((-9L) > (l_571[7] = ((((p_3133->g_429.y |= p_3133->g_102.x) , ((((((p_3133->g_67.y , ((make_int4(l_563.y, l_563.y, l_563.y, l_563.y) ^ ((make_int4(1L, 0x964EC4E8L, (-9L), (safe_mul_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((p_3133->g_568 != &l_368), p_58)) , 0x14L), p_3133->g_504.w))) ^ make_int4(0L, 0L, 0L, 0L))))).x) ^ p_58) >= 0x5DL) , hip_const_4) != 0x4DBDL) , 0x98L)) == (**p_3133->g_568)) | (*p_3133->g_250)))), 1L, (-1L)).z))) != (-3L)), 0L)) <= p_58), l_576[1]));
        ++l_579;
        for (l_527 = 0; (l_527 >= 19); l_527 = safe_add_func_uint8_t_u_u(l_527, 9))
        { /* block id: 205 */
            uint32_t l_584[10][6] = {{2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}, {2UL, 0x2843EBFCL, 6UL, 0UL, 0UL, 6UL}};
            int16_t *l_586 = nullptr;
            __shared__ int16_t *l_587;
            l_587 = &hip_const_1;
            int16_t *l_588 = &hip_const_1;
            int16_t *l_589 = &hip_const_5;
            __shared__ int16_t *l_590;
            l_590 = &hip_const_1;
            int16_t *l_591 = &hip_const_10;
            int16_t *l_592 = &hip_const_10;
            int16_t *l_593 = nullptr;
            int16_t *l_594 = &hip_const_10;
            __shared__ int16_t *l_595;
            l_595 = &hip_const_10;
            int16_t *l_596 = nullptr;
            int16_t *l_597[1];
            __shared__ int32_t l_598;
            l_598 = 0x4F4BEBD3L;
            long3 l_603 = make_long3(0L, 1L, 0L);
            int i, j;
            for (i = 0; i < 1; i++)
                l_597[i] = &hip_const_5;
            p_3133->g_67.x = l_584[3][5];
            p_3133->g_16.y = ((l_598 = make_short3(l_585.y, l_585.y, l_585.y).x) != l_584[3][5]);
            p_3133->g_272.x ^= (((safe_lshift_func_int64_t_s_u(((((make_long4((p_3133->g_153.x = ((safe_mod(make_long1(l_603.x), make_long1(0x0AFDF2B7CCF9A489LL)))).x), p_58, (-1L), 0x11EB4C31AC1C3D45LL) ^ make_long4((-1L), make_long2(l_604.z, l_604.z).y, (safe_mod_func_int8_t_s_s(make_char4(l_607.y, l_607.y, l_607.y, l_607.y).z, (l_598 = ((safe_rshift(make_char1(l_610.y), ((safe_rshift(make_char1(l_613.y), ((((make_char1(p_3133->g_614.x) ^ make_char1(p_58))) & ((~make_char1((l_571[3] = (safe_sub_func_uint16_t_u_u(make_ushort1(p_3133->g_617.y).x, ((make_short2(l_618.x, l_618.x) ^ make_short2(1L, 2L))).x)))))))))))))).x))), 3L))) | ((make_long4(l_619.x, l_619.x, l_619.x, l_619.x) ^ ((safe_sub(((make_long4(p_3133->g_622.z, p_3133->g_622.z, p_3133->g_622.z, p_3133->g_622.z) | ((safe_sub(((((safe_mod(((make_long4(l_627.y, l_627.y, l_627.y, l_627.y) ^ ((safe_mul(make_long4(p_3133->g_630.x, p_3133->g_630.x, p_3133->g_630.x, p_3133->g_630.x), ((make_long4((safe_div_func_int32_t_s_s((l_633 < ((p_58 , hip_const_6[1]) ^ (safe_rshift_func_uint16_t_u_u((make_ulong3(p_3133->g_636.z, p_3133->g_636.z, p_3133->g_636.z).x , (safe_rshift_func_uint8_t_u_u(((p_58 , (*p_3133->g_250)) , (safe_div_func_uint8_t_u_u((make_long4((safe_div_func_int64_t_s_s(((make_long2(l_643.w, l_643.w).x & (safe_lshift_func_int16_t_s_u(p_58, 8))) ^ p_58), p_3133->g_16.y)), p_58, 5L, l_607.y).y <= l_619.x), 0x9BL))), 5))), 7)))), l_643.y)), 0x3092AE8B029D6883LL, 0L, l_603.y) ^ make_long4(0L, 0L, 0L, 0L)))))))), make_long4(0x384639A78AFF0B46LL, 0x384639A78AFF0B46LL, 0x384639A78AFF0B46LL, 0x384639A78AFF0B46LL)))) & make_long4(0xC5772E1A3ECE3337LL, 0xC5772E1A3ECE3337LL, 0xC5772E1A3ECE3337LL, 0xC5772E1A3ECE3337LL))), make_long4(0x5103FC4D798EFA59LL, 0x5103FC4D798EFA59LL, 0x5103FC4D798EFA59LL, 0x5103FC4D798EFA59LL)))))), make_long4(0xB39451ADC250C173LL, 0xB39451ADC250C173LL, 0xB39451ADC250C173LL, 0xB39451ADC250C173LL)))))))).w, 29)) != 0x04D5883799EBA9C2LL) == p_3133->g_630.x);
        }
        p_3133->g_67.z = ((safe_div_func_int16_t_s_s(l_648, p_58)) < (l_649 = p_3133->g_455.x));
    }
    return &p_3133->g_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_3133->g_66
 * writes:
 */
__device__ int32_t  func_59(uint8_t  p_60, uint32_t  p_61, struct S0 * p_3133)
{ /* block id: 10 */
    for (p_61 = (-21); (p_61 < 53); p_61 = safe_add_func_uint64_t_u_u(p_61, 1))
    { /* block id: 13 */
        int32_t l_65 = 0x3F8C0E5CL;
        return l_65;
    }
    return p_3133->g_66.x;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S0 c_3134;
    struct S0* p_3133 = &c_3134;
    struct S0 c_3135 = {
        .g_15 = 18446744073709551615UL,
        .g_16 = make_int2((-1L), 0L),
        .g_18 = 1L,
        .g_29 = {1L, (-8L), 0x09E149CFL, 0x09E149CFL, (-8L), 1L, (-8L), 0x09E149CFL, 0x09E149CFL, (-8L)},
        .g_66 = make_uint1(0xF48B058BL),
        .g_67 = make_int3(0x252307D3L, (-7L), 0x252307D3L),
        .g_76 = make_ulong2(5UL, 18446744073709551610UL),
        .g_88 = make_uint2(0x35AC29F8L, 0xE2CD2A19L),
        .g_102 = make_ulong3(0x4CFDD0FD02F95C78LL, 0x0E11B63BBBF13354LL, 0x4CFDD0FD02F95C78LL),
        .g_103 = make_ulong2(0x0B9A650DEC7D6112LL, 0UL),
        .g_121 = nullptr,
        .g_120 = &p_3133->g_121,
        .g_153 = make_long2(0xBC78BEF385434852LL, 0L),
        .g_238 = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}},
        .g_250 = &hip_const_5,
        .g_272 = make_int2(1L, (-2L)),
        .g_280 = 0xC2A4E8ABL,
        .g_283 = make_uint1(4294967295UL),
        .g_319 = make_uchar2(0x04L, 0xE6L),
        .g_320 = make_uint4(18446744073709551608UL, 4UL, 18446744073709551608UL, 4UL),
        .g_335 = {0UL, 0UL, 0UL},
        .g_359 = make_int4(0x2C0ABF15L, 1L, 0x2C0ABF15L, 1L),
        .g_376 = nullptr,
        .g_381 = &p_3133->g_376,
        .g_402 = 9L,
        .g_420 = make_ulong2(1UL, 18446744073709551614UL),
        .g_429 = make_uchar3(0x73L, 0xF8L, 0x73L),
        .g_437 = &p_3133->g_15,
        .g_455 = make_char1(0xABL),
        .g_459 = make_int4(0xF1C50707L, 0xB0E5B570L, 0xF1C50707L, 0xB0E5B570L),
        .g_472 = nullptr,
        .g_475 = make_ulong1(4UL),
        .g_493 = make_char1(0x6EL),
        .g_504 = make_uint4(4294967287UL, 4294967295UL, 4294967287UL, 4294967295UL),
        .g_569 = &p_3133->g_335[0],
        .g_568 = &p_3133->g_569,
        .g_614 = make_char4(0x66L, 6L, 0x66L, 6L),
        .g_617 = make_ushort2(3UL, 0xA4D0L),
        .g_622 = make_long3(0x6E25473CF61CBF45LL, 0x8EB8C4705FB5F058LL, 0x6E25473CF61CBF45LL),
        .g_630 = make_long1((-6L)),
        .g_636 = make_ulong4(0xCA7BF69BD29598A4LL, 0x7CEE1ACC4A438F33LL, 0xCA7BF69BD29598A4LL, 0x7CEE1ACC4A438F33LL),
        .g_664 = nullptr,
        .g_663 = &p_3133->g_664,
        .g_693 = &p_3133->g_250,
        .g_692 = &p_3133->g_693,
        .g_691 = &p_3133->g_692,
        .g_703 = nullptr,
        .g_713 = make_ulong4(18446744073709551615UL, 1UL, 18446744073709551615UL, 1UL),
        .g_743 = make_int4(2L, 0x97BADF72L, 2L, 0x97BADF72L),
        .g_752 = make_char2(0x47L, 0x02L),
        .g_767 = (-1L),
        .g_829 = make_ulong4(18446744073709551615UL, 18446744073709551610UL, 18446744073709551615UL, 18446744073709551610UL),
        .g_875 = make_ushort2(0xF710L, 65530UL),
        .g_889 = make_ushort2(0x170BL, 65530UL),
        .g_892 = 0UL,
        .g_913 = make_short4(0xD4F4L, (-1L), 0xD4F4L, (-1L)),
        .g_921 = 0UL,
        .g_944 = (-1L),
        .g_945 = 0x88109E12L,
        .g_946 = 0x2FD5860DL,
        .g_970 = &p_3133->g_120,
        .g_982 = make_ushort4(0x27D0L, 0UL, 0x27D0L, 0UL),
        .g_1029 = make_ulong2(0x17753E01D8F2AFA0LL, 0x38D5B82439C239CFLL),
        .g_1043 = make_char2(0xACL, 0x1CL),
        .g_1059 = &hip_const_7,
        .g_1058 = &p_3133->g_1059,
        .g_1076 = make_ulong3(0xA676F3E12C6F4218LL, 0x4AE8B1FC61761395LL, 0xA676F3E12C6F4218LL),
        .g_1098 = make_uint1(0xAD0C8A84L),
        .g_1110 = make_uint2(4294967295UL, 0xBCE6C10FL),
        .g_1114 = make_int4(0x73166FE7L, 0x6A012D4AL, 0x73166FE7L, 0x6A012D4AL),
        .g_1150 = make_char3(0xACL, 0x6CL, 0xACL),
        .g_1151 = make_int1((-6L)),
        .g_1170 = nullptr,
        .g_1169 = &p_3133->g_1170,
        .g_1183 = make_ushort1(0x5303L),
        .g_1217 = nullptr,
        .g_1223 = make_ushort3(1UL, 5UL, 1UL),
        .g_1230 = make_long1((-4L)),
        .g_1264 = make_int2((-1L), 0L),
        .g_1279 = make_ulong4(0xF45B14626A372E88LL, 18446744073709551611UL, 0xF45B14626A372E88LL, 18446744073709551611UL),
        .g_1291 = make_long3((-1L), 0x1F4596996E4F9A7ELL, (-1L)),
        .g_1320 = 0xD9256701L,
        .g_1331 = make_int1((-1L)),
        .g_1332 = make_int1(0xD51EDBE0L),
        .g_1340 = make_int1((-4L)),
        .g_1380 = make_int1(0xE302904DL),
        .g_1424 = make_char3((-4L), 0x3FL, (-4L)),
        .g_1441 = 0xA70275E5L,
        .g_1449 = make_uint3(0x6BCE5BD4L, 1UL, 0x6BCE5BD4L),
        .g_1484 = make_ushort4(0UL, 0x6D4DL, 0UL, 0x6D4DL),
        .g_1501 = make_uchar2(249UL, 0x70L),
        .g_1502 = make_uchar3(0x56L, 0xFDL, 0x56L),
        .g_1609 = &p_3133->g_569,
        .g_1613 = make_char3(0x18L, 0x1DL, 0x18L),
        .g_1654 = make_int4(0L, 1L, 0L, 1L),
        .g_1663 = nullptr,
        .g_1677 = 247UL,
        .g_1788 = make_int2(0xAB3FCCA8L, 0xC230D3B9L),
        .g_1794 = make_ushort3(65527UL, 65535UL, 65527UL),
        .g_1798 = &p_3133->g_1169,
        .g_1797 = &p_3133->g_1798,
        .g_1856 = 0x22E5B37A419C47FCLL,
        .g_1896 = nullptr,
        .g_1898 = make_int3((-6L), 0L, (-6L)),
        .g_1915 = make_int2(0x7CD7C78BL, 0L),
        .g_2004 = make_char4(0xCEL, 1L, 0xCEL, 1L),
        .g_2049 = make_uint2(0x1A312071L, 0xF2FB80EBL),
        .g_2050 = make_int3(0xF00A700EL, 0x5147D163L, 0xF00A700EL),
        .g_2081 = make_char4(0x14L, 0x69L, 0x14L, 0x69L),
        .g_2104 = make_char1(8L),
        .g_2155 = make_char1(0x1DL),
        .g_2156 = make_char2(9L, 0xD7L),
        .g_2165 = make_short2(0L, 0xEC57L),
        .g_2194 = make_uint4(4294967295UL, 0UL, 4294967295UL, 0UL),
        .g_2195 = (-2L),
        .g_2204 = 0x88FC9804L,
        .g_2249 = make_char3(6L, (-1L), 6L),
        .g_2256 = make_ulong4(0x45BA885F137C8E9ELL, 0x65BB199227F9090ALL, 0x45BA885F137C8E9ELL, 0x65BB199227F9090ALL),
        .g_2342 = make_ushort2(0x0CAAL, 0x9639L),
        .g_2355 = {(-1L), 0xF9DF3C9073AD2FB4LL, (-1L), 0xF9DF3C9073AD2FB4LL, (-1L)},
        .g_2358 = make_ushort3(65529UL, 0UL, 65529UL),
        .g_2377 = make_ushort1(1UL),
        .g_2412 = 65535UL,
        .g_2423 = nullptr,
        .g_2458 = 9L,
        .g_2465 = &p_3133->g_663,
        .g_2464 = {&p_3133->g_2465, &p_3133->g_2465, &p_3133->g_2465, &p_3133->g_2465, &p_3133->g_2465, &p_3133->g_2465},
        .g_2480 = make_long1(0L),
        .g_2553 = 0x10L,
        .g_2564 = &p_3133->g_381,
        .g_2563 = &p_3133->g_2564,
        .g_2568 = make_long4(0x7465AEABA247AEDALL, 0x21A3D363FAACCEC4LL, 0x7465AEABA247AEDALL, 0x21A3D363FAACCEC4LL),
        .g_2570 = make_ushort4(65531UL, 0x6D30L, 65531UL, 0x6D30L),
        .g_2620 = make_ushort3(0x072CL, 65527UL, 0x072CL),
        .g_2621 = make_short4((-1L), (-7L), (-1L), (-7L)),
        .g_2648 = make_ushort1(0x9055L),
        .g_2661 = make_long3(0xF7190EF4DA73AFF5LL, (-2L), 0xF7190EF4DA73AFF5LL),
        .g_2664 = make_long1(0L),
        .g_2672 = 3L,
        .g_2698 = make_short3((-9L), 6L, (-9L)),
        .g_2705 = {0xCE96ECC02F341629LL, 0xCE96ECC02F341629LL, 0xCE96ECC02F341629LL, 0xCE96ECC02F341629LL, 0xCE96ECC02F341629LL, 0xCE96ECC02F341629LL, 0xCE96ECC02F341629LL},
        .g_2735 = make_long1(0x0C6A09CBE5AFD416LL),
        .g_2737 = make_int1((-1L)),
        .g_2795 = nullptr,
        .g_2812 = make_char1(0x59L),
        .g_2834 = 0xCA921491L,
        .g_2840 = (-10L),
        .g_2869 = {{{0x70C8F533L, 0L, 0x70C8F533L}}, {{0x70C8F533L, 0L, 0x70C8F533L}}, {{0x70C8F533L, 0L, 0x70C8F533L}}, {{0x70C8F533L, 0L, 0x70C8F533L}}, {{0x70C8F533L, 0L, 0x70C8F533L}}, {{0x70C8F533L, 0L, 0x70C8F533L}}, {{0x70C8F533L, 0L, 0x70C8F533L}}},
        .g_2884 = make_uint4(1UL, 0x387858DCL, 1UL, 0x387858DCL),
        .g_2920 = make_uchar2(8UL, 1UL),
        .g_2930 = 5L,
        .g_2949 = make_int1(0L),
        .g_2961 = make_ulong4(2UL, 0UL, 2UL, 0UL),
        .g_2973 = 0x6C90EB877FC721FALL,
        .g_3006 = {{(-6L), (-6L)}, {(-6L), (-6L)}, {(-6L), (-6L)}},
        .g_3029 = make_int4(0x7D8E119DL, 2L, 0x7D8E119DL, 2L),
        .g_3041 = make_uchar3(0x70L, 246UL, 0x70L),
        .g_3042 = 65528UL,
        .g_3103 = make_short1(0xE6EEL),
    };
    c_3134 = c_3135;

    // Execute core logic
    func_1(p_3133);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(hip_const_5, "hip_const_5", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        transparent_crc(hip_const_6[i], "hip_const_6[i]", print_hash_value);

    }
    transparent_crc(hip_const_7, "hip_const_7", print_hash_value);
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9, "hip_const_9", print_hash_value);
    transparent_crc(hip_const_10, "hip_const_10", print_hash_value);
    transparent_crc(p_3133->g_15, "p_3133->g_15", print_hash_value);
    transparent_crc(p_3133->g_16.x, "p_3133->g_16.x", print_hash_value);
    transparent_crc(p_3133->g_16.y, "p_3133->g_16.y", print_hash_value);
    transparent_crc(p_3133->g_18, "p_3133->g_18", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        transparent_crc(p_3133->g_29[i], "p_3133->g_29[i]", print_hash_value);

    }
    transparent_crc(p_3133->g_66.x, "p_3133->g_66.x", print_hash_value);
    transparent_crc(p_3133->g_67.x, "p_3133->g_67.x", print_hash_value);
    transparent_crc(p_3133->g_67.y, "p_3133->g_67.y", print_hash_value);
    transparent_crc(p_3133->g_67.z, "p_3133->g_67.z", print_hash_value);
    transparent_crc(p_3133->g_76.x, "p_3133->g_76.x", print_hash_value);
    transparent_crc(p_3133->g_76.y, "p_3133->g_76.y", print_hash_value);
    transparent_crc(p_3133->g_88.x, "p_3133->g_88.x", print_hash_value);
    transparent_crc(p_3133->g_88.y, "p_3133->g_88.y", print_hash_value);
    transparent_crc(p_3133->g_102.x, "p_3133->g_102.x", print_hash_value);
    transparent_crc(p_3133->g_102.y, "p_3133->g_102.y", print_hash_value);
    transparent_crc(p_3133->g_102.z, "p_3133->g_102.z", print_hash_value);
    transparent_crc(p_3133->g_103.x, "p_3133->g_103.x", print_hash_value);
    transparent_crc(p_3133->g_103.y, "p_3133->g_103.y", print_hash_value);
    transparent_crc(p_3133->g_153.x, "p_3133->g_153.x", print_hash_value);
    transparent_crc(p_3133->g_153.y, "p_3133->g_153.y", print_hash_value);
    transparent_crc(p_3133->g_272.x, "p_3133->g_272.x", print_hash_value);
    transparent_crc(p_3133->g_272.y, "p_3133->g_272.y", print_hash_value);
    transparent_crc(p_3133->g_280, "p_3133->g_280", print_hash_value);
    transparent_crc(p_3133->g_283.x, "p_3133->g_283.x", print_hash_value);
    transparent_crc(p_3133->g_319.x, "p_3133->g_319.x", print_hash_value);
    transparent_crc(p_3133->g_319.y, "p_3133->g_319.y", print_hash_value);
    transparent_crc(p_3133->g_320.x, "p_3133->g_320.x", print_hash_value);
    transparent_crc(p_3133->g_320.y, "p_3133->g_320.y", print_hash_value);
    transparent_crc(p_3133->g_320.z, "p_3133->g_320.z", print_hash_value);
    transparent_crc(p_3133->g_320.w, "p_3133->g_320.w", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_3133->g_335[i], "p_3133->g_335[i]", print_hash_value);

    }
    transparent_crc(p_3133->g_359.x, "p_3133->g_359.x", print_hash_value);
    transparent_crc(p_3133->g_359.y, "p_3133->g_359.y", print_hash_value);
    transparent_crc(p_3133->g_359.z, "p_3133->g_359.z", print_hash_value);
    transparent_crc(p_3133->g_359.w, "p_3133->g_359.w", print_hash_value);
    transparent_crc(p_3133->g_402, "p_3133->g_402", print_hash_value);
    transparent_crc(p_3133->g_420.x, "p_3133->g_420.x", print_hash_value);
    transparent_crc(p_3133->g_420.y, "p_3133->g_420.y", print_hash_value);
    transparent_crc(p_3133->g_429.x, "p_3133->g_429.x", print_hash_value);
    transparent_crc(p_3133->g_429.y, "p_3133->g_429.y", print_hash_value);
    transparent_crc(p_3133->g_429.z, "p_3133->g_429.z", print_hash_value);
    transparent_crc(p_3133->g_455.x, "p_3133->g_455.x", print_hash_value);
    transparent_crc(p_3133->g_459.x, "p_3133->g_459.x", print_hash_value);
    transparent_crc(p_3133->g_459.y, "p_3133->g_459.y", print_hash_value);
    transparent_crc(p_3133->g_459.z, "p_3133->g_459.z", print_hash_value);
    transparent_crc(p_3133->g_459.w, "p_3133->g_459.w", print_hash_value);
    transparent_crc(p_3133->g_475.x, "p_3133->g_475.x", print_hash_value);
    transparent_crc(p_3133->g_493.x, "p_3133->g_493.x", print_hash_value);
    transparent_crc(p_3133->g_504.x, "p_3133->g_504.x", print_hash_value);
    transparent_crc(p_3133->g_504.y, "p_3133->g_504.y", print_hash_value);
    transparent_crc(p_3133->g_504.z, "p_3133->g_504.z", print_hash_value);
    transparent_crc(p_3133->g_504.w, "p_3133->g_504.w", print_hash_value);
    transparent_crc(p_3133->g_614.x, "p_3133->g_614.x", print_hash_value);
    transparent_crc(p_3133->g_614.y, "p_3133->g_614.y", print_hash_value);
    transparent_crc(p_3133->g_614.z, "p_3133->g_614.z", print_hash_value);
    transparent_crc(p_3133->g_614.w, "p_3133->g_614.w", print_hash_value);
    transparent_crc(p_3133->g_617.x, "p_3133->g_617.x", print_hash_value);
    transparent_crc(p_3133->g_617.y, "p_3133->g_617.y", print_hash_value);
    transparent_crc(p_3133->g_622.x, "p_3133->g_622.x", print_hash_value);
    transparent_crc(p_3133->g_622.y, "p_3133->g_622.y", print_hash_value);
    transparent_crc(p_3133->g_622.z, "p_3133->g_622.z", print_hash_value);
    transparent_crc(p_3133->g_630.x, "p_3133->g_630.x", print_hash_value);
    transparent_crc(p_3133->g_636.x, "p_3133->g_636.x", print_hash_value);
    transparent_crc(p_3133->g_636.y, "p_3133->g_636.y", print_hash_value);
    transparent_crc(p_3133->g_636.z, "p_3133->g_636.z", print_hash_value);
    transparent_crc(p_3133->g_636.w, "p_3133->g_636.w", print_hash_value);
    transparent_crc(p_3133->g_713.x, "p_3133->g_713.x", print_hash_value);
    transparent_crc(p_3133->g_713.y, "p_3133->g_713.y", print_hash_value);
    transparent_crc(p_3133->g_713.z, "p_3133->g_713.z", print_hash_value);
    transparent_crc(p_3133->g_713.w, "p_3133->g_713.w", print_hash_value);
    transparent_crc(p_3133->g_743.x, "p_3133->g_743.x", print_hash_value);
    transparent_crc(p_3133->g_743.y, "p_3133->g_743.y", print_hash_value);
    transparent_crc(p_3133->g_743.z, "p_3133->g_743.z", print_hash_value);
    transparent_crc(p_3133->g_743.w, "p_3133->g_743.w", print_hash_value);
    transparent_crc(p_3133->g_752.x, "p_3133->g_752.x", print_hash_value);
    transparent_crc(p_3133->g_752.y, "p_3133->g_752.y", print_hash_value);
    transparent_crc(p_3133->g_767, "p_3133->g_767", print_hash_value);
    transparent_crc(p_3133->g_829.x, "p_3133->g_829.x", print_hash_value);
    transparent_crc(p_3133->g_829.y, "p_3133->g_829.y", print_hash_value);
    transparent_crc(p_3133->g_829.z, "p_3133->g_829.z", print_hash_value);
    transparent_crc(p_3133->g_829.w, "p_3133->g_829.w", print_hash_value);
    transparent_crc(p_3133->g_875.x, "p_3133->g_875.x", print_hash_value);
    transparent_crc(p_3133->g_875.y, "p_3133->g_875.y", print_hash_value);
    transparent_crc(p_3133->g_889.x, "p_3133->g_889.x", print_hash_value);
    transparent_crc(p_3133->g_889.y, "p_3133->g_889.y", print_hash_value);
    transparent_crc(p_3133->g_892, "p_3133->g_892", print_hash_value);
    transparent_crc(p_3133->g_913.x, "p_3133->g_913.x", print_hash_value);
    transparent_crc(p_3133->g_913.y, "p_3133->g_913.y", print_hash_value);
    transparent_crc(p_3133->g_913.z, "p_3133->g_913.z", print_hash_value);
    transparent_crc(p_3133->g_913.w, "p_3133->g_913.w", print_hash_value);
    transparent_crc(p_3133->g_921, "p_3133->g_921", print_hash_value);
    transparent_crc(p_3133->g_944, "p_3133->g_944", print_hash_value);
    transparent_crc(p_3133->g_945, "p_3133->g_945", print_hash_value);
    transparent_crc(p_3133->g_946, "p_3133->g_946", print_hash_value);
    transparent_crc(p_3133->g_982.x, "p_3133->g_982.x", print_hash_value);
    transparent_crc(p_3133->g_982.y, "p_3133->g_982.y", print_hash_value);
    transparent_crc(p_3133->g_982.z, "p_3133->g_982.z", print_hash_value);
    transparent_crc(p_3133->g_982.w, "p_3133->g_982.w", print_hash_value);
    transparent_crc(p_3133->g_1029.x, "p_3133->g_1029.x", print_hash_value);
    transparent_crc(p_3133->g_1029.y, "p_3133->g_1029.y", print_hash_value);
    transparent_crc(p_3133->g_1043.x, "p_3133->g_1043.x", print_hash_value);
    transparent_crc(p_3133->g_1043.y, "p_3133->g_1043.y", print_hash_value);
    transparent_crc(p_3133->g_1076.x, "p_3133->g_1076.x", print_hash_value);
    transparent_crc(p_3133->g_1076.y, "p_3133->g_1076.y", print_hash_value);
    transparent_crc(p_3133->g_1076.z, "p_3133->g_1076.z", print_hash_value);
    transparent_crc(p_3133->g_1098.x, "p_3133->g_1098.x", print_hash_value);
    transparent_crc(p_3133->g_1110.x, "p_3133->g_1110.x", print_hash_value);
    transparent_crc(p_3133->g_1110.y, "p_3133->g_1110.y", print_hash_value);
    transparent_crc(p_3133->g_1114.x, "p_3133->g_1114.x", print_hash_value);
    transparent_crc(p_3133->g_1114.y, "p_3133->g_1114.y", print_hash_value);
    transparent_crc(p_3133->g_1114.z, "p_3133->g_1114.z", print_hash_value);
    transparent_crc(p_3133->g_1114.w, "p_3133->g_1114.w", print_hash_value);
    transparent_crc(p_3133->g_1150.x, "p_3133->g_1150.x", print_hash_value);
    transparent_crc(p_3133->g_1150.y, "p_3133->g_1150.y", print_hash_value);
    transparent_crc(p_3133->g_1150.z, "p_3133->g_1150.z", print_hash_value);
    transparent_crc(p_3133->g_1151.x, "p_3133->g_1151.x", print_hash_value);
    transparent_crc(p_3133->g_1183.x, "p_3133->g_1183.x", print_hash_value);
    transparent_crc(p_3133->g_1223.x, "p_3133->g_1223.x", print_hash_value);
    transparent_crc(p_3133->g_1223.y, "p_3133->g_1223.y", print_hash_value);
    transparent_crc(p_3133->g_1223.z, "p_3133->g_1223.z", print_hash_value);
    transparent_crc(p_3133->g_1230.x, "p_3133->g_1230.x", print_hash_value);
    transparent_crc(p_3133->g_1264.x, "p_3133->g_1264.x", print_hash_value);
    transparent_crc(p_3133->g_1264.y, "p_3133->g_1264.y", print_hash_value);
    transparent_crc(p_3133->g_1279.x, "p_3133->g_1279.x", print_hash_value);
    transparent_crc(p_3133->g_1279.y, "p_3133->g_1279.y", print_hash_value);
    transparent_crc(p_3133->g_1279.z, "p_3133->g_1279.z", print_hash_value);
    transparent_crc(p_3133->g_1279.w, "p_3133->g_1279.w", print_hash_value);
    transparent_crc(p_3133->g_1291.x, "p_3133->g_1291.x", print_hash_value);
    transparent_crc(p_3133->g_1291.y, "p_3133->g_1291.y", print_hash_value);
    transparent_crc(p_3133->g_1291.z, "p_3133->g_1291.z", print_hash_value);
    transparent_crc(p_3133->g_1320, "p_3133->g_1320", print_hash_value);
    transparent_crc(p_3133->g_1331.x, "p_3133->g_1331.x", print_hash_value);
    transparent_crc(p_3133->g_1332.x, "p_3133->g_1332.x", print_hash_value);
    transparent_crc(p_3133->g_1340.x, "p_3133->g_1340.x", print_hash_value);
    transparent_crc(p_3133->g_1380.x, "p_3133->g_1380.x", print_hash_value);
    transparent_crc(p_3133->g_1424.x, "p_3133->g_1424.x", print_hash_value);
    transparent_crc(p_3133->g_1424.y, "p_3133->g_1424.y", print_hash_value);
    transparent_crc(p_3133->g_1424.z, "p_3133->g_1424.z", print_hash_value);
    transparent_crc(p_3133->g_1441, "p_3133->g_1441", print_hash_value);
    transparent_crc(p_3133->g_1449.x, "p_3133->g_1449.x", print_hash_value);
    transparent_crc(p_3133->g_1449.y, "p_3133->g_1449.y", print_hash_value);
    transparent_crc(p_3133->g_1449.z, "p_3133->g_1449.z", print_hash_value);
    transparent_crc(p_3133->g_1484.x, "p_3133->g_1484.x", print_hash_value);
    transparent_crc(p_3133->g_1484.y, "p_3133->g_1484.y", print_hash_value);
    transparent_crc(p_3133->g_1484.z, "p_3133->g_1484.z", print_hash_value);
    transparent_crc(p_3133->g_1484.w, "p_3133->g_1484.w", print_hash_value);
    transparent_crc(p_3133->g_1501.x, "p_3133->g_1501.x", print_hash_value);
    transparent_crc(p_3133->g_1501.y, "p_3133->g_1501.y", print_hash_value);
    transparent_crc(p_3133->g_1502.x, "p_3133->g_1502.x", print_hash_value);
    transparent_crc(p_3133->g_1502.y, "p_3133->g_1502.y", print_hash_value);
    transparent_crc(p_3133->g_1502.z, "p_3133->g_1502.z", print_hash_value);
    transparent_crc(p_3133->g_1613.x, "p_3133->g_1613.x", print_hash_value);
    transparent_crc(p_3133->g_1613.y, "p_3133->g_1613.y", print_hash_value);
    transparent_crc(p_3133->g_1613.z, "p_3133->g_1613.z", print_hash_value);
    transparent_crc(p_3133->g_1654.x, "p_3133->g_1654.x", print_hash_value);
    transparent_crc(p_3133->g_1654.y, "p_3133->g_1654.y", print_hash_value);
    transparent_crc(p_3133->g_1654.z, "p_3133->g_1654.z", print_hash_value);
    transparent_crc(p_3133->g_1654.w, "p_3133->g_1654.w", print_hash_value);
    transparent_crc(p_3133->g_1677, "p_3133->g_1677", print_hash_value);
    transparent_crc(p_3133->g_1788.x, "p_3133->g_1788.x", print_hash_value);
    transparent_crc(p_3133->g_1788.y, "p_3133->g_1788.y", print_hash_value);
    transparent_crc(p_3133->g_1794.x, "p_3133->g_1794.x", print_hash_value);
    transparent_crc(p_3133->g_1794.y, "p_3133->g_1794.y", print_hash_value);
    transparent_crc(p_3133->g_1794.z, "p_3133->g_1794.z", print_hash_value);
    transparent_crc(p_3133->g_1856, "p_3133->g_1856", print_hash_value);
    transparent_crc(p_3133->g_1898.x, "p_3133->g_1898.x", print_hash_value);
    transparent_crc(p_3133->g_1898.y, "p_3133->g_1898.y", print_hash_value);
    transparent_crc(p_3133->g_1898.z, "p_3133->g_1898.z", print_hash_value);
    transparent_crc(p_3133->g_1915.x, "p_3133->g_1915.x", print_hash_value);
    transparent_crc(p_3133->g_1915.y, "p_3133->g_1915.y", print_hash_value);
    transparent_crc(p_3133->g_2004.x, "p_3133->g_2004.x", print_hash_value);
    transparent_crc(p_3133->g_2004.y, "p_3133->g_2004.y", print_hash_value);
    transparent_crc(p_3133->g_2004.z, "p_3133->g_2004.z", print_hash_value);
    transparent_crc(p_3133->g_2004.w, "p_3133->g_2004.w", print_hash_value);
    transparent_crc(p_3133->g_2049.x, "p_3133->g_2049.x", print_hash_value);
    transparent_crc(p_3133->g_2049.y, "p_3133->g_2049.y", print_hash_value);
    transparent_crc(p_3133->g_2050.x, "p_3133->g_2050.x", print_hash_value);
    transparent_crc(p_3133->g_2050.y, "p_3133->g_2050.y", print_hash_value);
    transparent_crc(p_3133->g_2050.z, "p_3133->g_2050.z", print_hash_value);
    transparent_crc(p_3133->g_2081.x, "p_3133->g_2081.x", print_hash_value);
    transparent_crc(p_3133->g_2081.y, "p_3133->g_2081.y", print_hash_value);
    transparent_crc(p_3133->g_2081.z, "p_3133->g_2081.z", print_hash_value);
    transparent_crc(p_3133->g_2081.w, "p_3133->g_2081.w", print_hash_value);
    transparent_crc(p_3133->g_2104.x, "p_3133->g_2104.x", print_hash_value);
    transparent_crc(p_3133->g_2155.x, "p_3133->g_2155.x", print_hash_value);
    transparent_crc(p_3133->g_2156.x, "p_3133->g_2156.x", print_hash_value);
    transparent_crc(p_3133->g_2156.y, "p_3133->g_2156.y", print_hash_value);
    transparent_crc(p_3133->g_2165.x, "p_3133->g_2165.x", print_hash_value);
    transparent_crc(p_3133->g_2165.y, "p_3133->g_2165.y", print_hash_value);
    transparent_crc(p_3133->g_2194.x, "p_3133->g_2194.x", print_hash_value);
    transparent_crc(p_3133->g_2194.y, "p_3133->g_2194.y", print_hash_value);
    transparent_crc(p_3133->g_2194.z, "p_3133->g_2194.z", print_hash_value);
    transparent_crc(p_3133->g_2194.w, "p_3133->g_2194.w", print_hash_value);
    transparent_crc(p_3133->g_2195, "p_3133->g_2195", print_hash_value);
    transparent_crc(p_3133->g_2204, "p_3133->g_2204", print_hash_value);
    transparent_crc(p_3133->g_2249.x, "p_3133->g_2249.x", print_hash_value);
    transparent_crc(p_3133->g_2249.y, "p_3133->g_2249.y", print_hash_value);
    transparent_crc(p_3133->g_2249.z, "p_3133->g_2249.z", print_hash_value);
    transparent_crc(p_3133->g_2256.x, "p_3133->g_2256.x", print_hash_value);
    transparent_crc(p_3133->g_2256.y, "p_3133->g_2256.y", print_hash_value);
    transparent_crc(p_3133->g_2256.z, "p_3133->g_2256.z", print_hash_value);
    transparent_crc(p_3133->g_2256.w, "p_3133->g_2256.w", print_hash_value);
    transparent_crc(p_3133->g_2342.x, "p_3133->g_2342.x", print_hash_value);
    transparent_crc(p_3133->g_2342.y, "p_3133->g_2342.y", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        transparent_crc(p_3133->g_2355[i], "p_3133->g_2355[i]", print_hash_value);

    }
    transparent_crc(p_3133->g_2358.x, "p_3133->g_2358.x", print_hash_value);
    transparent_crc(p_3133->g_2358.y, "p_3133->g_2358.y", print_hash_value);
    transparent_crc(p_3133->g_2358.z, "p_3133->g_2358.z", print_hash_value);
    transparent_crc(p_3133->g_2377.x, "p_3133->g_2377.x", print_hash_value);
    transparent_crc(p_3133->g_2412, "p_3133->g_2412", print_hash_value);
    transparent_crc(p_3133->g_2458, "p_3133->g_2458", print_hash_value);
    transparent_crc(p_3133->g_2480.x, "p_3133->g_2480.x", print_hash_value);
    transparent_crc(p_3133->g_2553, "p_3133->g_2553", print_hash_value);
    transparent_crc(p_3133->g_2568.x, "p_3133->g_2568.x", print_hash_value);
    transparent_crc(p_3133->g_2568.y, "p_3133->g_2568.y", print_hash_value);
    transparent_crc(p_3133->g_2568.z, "p_3133->g_2568.z", print_hash_value);
    transparent_crc(p_3133->g_2568.w, "p_3133->g_2568.w", print_hash_value);
    transparent_crc(p_3133->g_2570.x, "p_3133->g_2570.x", print_hash_value);
    transparent_crc(p_3133->g_2570.y, "p_3133->g_2570.y", print_hash_value);
    transparent_crc(p_3133->g_2570.z, "p_3133->g_2570.z", print_hash_value);
    transparent_crc(p_3133->g_2570.w, "p_3133->g_2570.w", print_hash_value);
    transparent_crc(p_3133->g_2620.x, "p_3133->g_2620.x", print_hash_value);
    transparent_crc(p_3133->g_2620.y, "p_3133->g_2620.y", print_hash_value);
    transparent_crc(p_3133->g_2620.z, "p_3133->g_2620.z", print_hash_value);
    transparent_crc(p_3133->g_2621.x, "p_3133->g_2621.x", print_hash_value);
    transparent_crc(p_3133->g_2621.y, "p_3133->g_2621.y", print_hash_value);
    transparent_crc(p_3133->g_2621.z, "p_3133->g_2621.z", print_hash_value);
    transparent_crc(p_3133->g_2621.w, "p_3133->g_2621.w", print_hash_value);
    transparent_crc(p_3133->g_2648.x, "p_3133->g_2648.x", print_hash_value);
    transparent_crc(p_3133->g_2661.x, "p_3133->g_2661.x", print_hash_value);
    transparent_crc(p_3133->g_2661.y, "p_3133->g_2661.y", print_hash_value);
    transparent_crc(p_3133->g_2661.z, "p_3133->g_2661.z", print_hash_value);
    transparent_crc(p_3133->g_2664.x, "p_3133->g_2664.x", print_hash_value);
    transparent_crc(p_3133->g_2672, "p_3133->g_2672", print_hash_value);
    transparent_crc(p_3133->g_2698.x, "p_3133->g_2698.x", print_hash_value);
    transparent_crc(p_3133->g_2698.y, "p_3133->g_2698.y", print_hash_value);
    transparent_crc(p_3133->g_2698.z, "p_3133->g_2698.z", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        transparent_crc(p_3133->g_2705[i], "p_3133->g_2705[i]", print_hash_value);

    }
    transparent_crc(p_3133->g_2735.x, "p_3133->g_2735.x", print_hash_value);
    transparent_crc(p_3133->g_2737.x, "p_3133->g_2737.x", print_hash_value);
    transparent_crc(p_3133->g_2812.x, "p_3133->g_2812.x", print_hash_value);
    transparent_crc(p_3133->g_2834, "p_3133->g_2834", print_hash_value);
    transparent_crc(p_3133->g_2840, "p_3133->g_2840", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_3133->g_2869[i][j][k], "p_3133->g_2869[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_3133->g_2884.x, "p_3133->g_2884.x", print_hash_value);
    transparent_crc(p_3133->g_2884.y, "p_3133->g_2884.y", print_hash_value);
    transparent_crc(p_3133->g_2884.z, "p_3133->g_2884.z", print_hash_value);
    transparent_crc(p_3133->g_2884.w, "p_3133->g_2884.w", print_hash_value);
    transparent_crc(p_3133->g_2920.x, "p_3133->g_2920.x", print_hash_value);
    transparent_crc(p_3133->g_2920.y, "p_3133->g_2920.y", print_hash_value);
    transparent_crc(p_3133->g_2930, "p_3133->g_2930", print_hash_value);
    transparent_crc(p_3133->g_2949.x, "p_3133->g_2949.x", print_hash_value);
    transparent_crc(p_3133->g_2961.x, "p_3133->g_2961.x", print_hash_value);
    transparent_crc(p_3133->g_2961.y, "p_3133->g_2961.y", print_hash_value);
    transparent_crc(p_3133->g_2961.z, "p_3133->g_2961.z", print_hash_value);
    transparent_crc(p_3133->g_2961.w, "p_3133->g_2961.w", print_hash_value);
    transparent_crc(p_3133->g_2973, "p_3133->g_2973", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            transparent_crc(p_3133->g_3006[i][j], "p_3133->g_3006[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3133->g_3029.x, "p_3133->g_3029.x", print_hash_value);
    transparent_crc(p_3133->g_3029.y, "p_3133->g_3029.y", print_hash_value);
    transparent_crc(p_3133->g_3029.z, "p_3133->g_3029.z", print_hash_value);
    transparent_crc(p_3133->g_3029.w, "p_3133->g_3029.w", print_hash_value);
    transparent_crc(p_3133->g_3041.x, "p_3133->g_3041.x", print_hash_value);
    transparent_crc(p_3133->g_3041.y, "p_3133->g_3041.y", print_hash_value);
    transparent_crc(p_3133->g_3041.z, "p_3133->g_3041.z", print_hash_value);
    transparent_crc(p_3133->g_3042, "p_3133->g_3042", print_hash_value);
    transparent_crc(p_3133->g_3103.x, "p_3133->g_3103.x", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

