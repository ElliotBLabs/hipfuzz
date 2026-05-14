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
// Seed: 2835694504

/* --- Struct/Union Declarations --- */
// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ int8_t hip_const_1;
__constant__ uint64_t hip_const_2;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        int8_t host_hip_const_1 = (-5L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint64_t host_hip_const_2 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
}

struct S0 {
    uint3 g_4;
    int32_t g_11[6][8];
    uint64_t g_23;
    int8_t g_38;
    uint32_t g_39;
    int32_t g_42;
    uint16_t g_43;
    short1 g_56;
    int32_t *g_95;
    uint32_t g_105;
    uint8_t g_107;
    int32_t g_135;
    int64_t g_156[8][4][8];
    long1 g_196;
    long4 g_215;
    short4 g_235;
    uint32_t g_249[4];
    int32_t g_322;
    uint32_t g_323;
    ulong3 g_338;
    int32_t **g_348[10][10][2];
    int32_t ***g_347;
    ushort2 g_353;
    ushort4 g_354;
    char2 g_357;
    int16_t g_364;
    uint64_t *g_447;
    uint64_t **g_446;
    char1 g_460;
    int64_t *g_488;
    int64_t **g_487;
    uint2 g_494;
    short1 g_517;
    uint4 g_541;
    short1 g_571;
    ushort4 g_572;
    int64_t *g_630;
    uint8_t **g_647;
    uint8_t ***g_646;
    char4 g_726;
    long1 g_741;
    uint1 g_758;
    ulong1 g_772;
    ulong2 g_773;
    ulong3 g_774;
    ushort1 g_848;
    int16_t g_906[3];
    int32_t g_908;
    int4 g_919;
    int3 g_921;
    short4 g_939;
    int32_t ****g_941;
    int32_t *****g_940;
    ushort3 g_951;
    uint8_t g_1020;
    uint32_t **g_1027;
    uint32_t ***g_1026;
    char3 g_1028;
    char2 g_1031;
    char4 g_1051;
    int16_t g_1113;
    long3 g_1142;
    int1 g_1146;
    int32_t ***g_1163;
    ushort2 g_1188;
    short1 g_1219;
    uint16_t *g_1251[6][9][4];
    uint16_t **g_1250[9];
    int1 g_1256;
    int2 g_1265;
    uint32_t g_1278;
    uint8_t g_1279;
    int3 g_1286;
    int1 g_1328;
    long3 g_1331;
    uint3 g_1334;
    ulong2 g_1371;
    char2 g_1376;
    char4 g_1391;
    uint4 g_1397;
    char3 g_1419;
    char1 g_1420;
    char3 g_1423;
    int32_t g_1434;
    uint1 g_1454;
    uint1 g_1457;
    uchar3 g_1473;
    uchar4 g_1475;
    int1 g_1513;
    long4 g_1539;
    int1 g_1604;
    char3 g_1631;
    int2 g_1688;
    uint32_t *g_1706;
    long2 g_1716;
    ushort3 g_1756;
    char1 g_1765;
    ulong1 g_1783;
    short4 g_1797;
    ulong2 g_1813;
    ulong1 g_1816;
    ulong4 g_1818;
    ulong4 g_1819;
    short1 g_1820;
    ushort4 g_1854;
    char3 g_1859;
    short2 g_1888;
    uchar1 g_1931;
    ushort3 g_1944;
    short4 g_1960;
    short4 g_1961;
    short1 g_1977;
    uint1 g_1984;
    ushort3 g_2016;
    char4 g_2046;
    int32_t *g_2060[8][8][4];
    uchar2 g_2081;
    ushort1 g_2087;
    uchar1 g_2118;
    uint4 g_2146;
    uint1 g_2147;
    uchar4 g_2173;
    short4 g_2180;
    ulong4 g_2189;
    uint3 g_2242;
    int1 g_2277;
    long1 g_2280;
    int8_t *g_2286;
    int8_t **g_2285;
    short2 g_2296;
    short3 g_2297;
    uchar4 g_2312;
    char1 g_2327;
    uint16_t ***g_2346[4];
    uint16_t ****g_2345;
    int2 g_2419;
    char3 g_2436;
    int64_t g_2437;
    int64_t g_2441;
    uint1 g_2465;
    ushort2 g_2516;
    int4 g_2536;
    int1 g_2558;
    char4 g_2568;
    int3 g_2573;
    ulong1 g_2602;
    uchar1 g_2622;
    ulong4 g_2719;
    ulong2 g_2720;
    int2 g_2751;
    int1 g_2752;
    int2 g_2753;
    int16_t g_2763[9];
    short2 g_2771;
    ulong1 g_2791;
    uchar2 g_2822;
    int3 g_2854;
    uint64_t ***g_2857;
    uint64_t ****g_2856[1][8];
    uint64_t *****g_2855;
    long2 g_2882;
    long2 g_2903;
    int32_t *****g_2919[2];
    uint8_t *****g_2945;
    char2 g_2983;
    int32_t g_3016;
    uchar3 g_3037;
    uint8_t *g_3049;
    uint8_t **g_3048;
    long3 g_3060;
    int64_t ***g_3069;
    int64_t ***g_3070;
    uint8_t g_3088;
    int1 g_3116;
    int1 g_3117;
    char2 g_3154;
    ulong3 g_3169;
    ulong4 g_3188;
    ulong2 g_3190;
    int32_t ***g_3212[6][8][5];
    int8_t ***g_3220;
    int8_t ****g_3219;
    int8_t ****g_3224;
};


/* --- FORWARD DECLARATIONS --- */
__device__ int64_t  func_1(struct S0 * p_3230);
__device__ int32_t ** func_46(uint8_t  p_47, uint32_t * p_48, int16_t  p_49, uint32_t * p_50, uint8_t  p_51, struct S0 * p_3230);
__device__ int64_t  func_62(int32_t * p_63, uint32_t * p_64, uint16_t  p_65, struct S0 * p_3230);
__device__ int32_t * func_66(int16_t  p_67, uint32_t  p_68, int8_t  p_69, struct S0 * p_3230);
__device__ uint32_t  func_70(int32_t  p_71, int8_t  p_72, uint32_t * p_73, uint8_t  p_74, struct S0 * p_3230);
__device__ uint32_t  func_75(uint8_t  p_76, uint8_t  p_77, int32_t * p_78, int8_t  p_79, struct S0 * p_3230);
__device__ int32_t ** func_80(int16_t  p_81, uint32_t  p_82, uint32_t  p_83, int32_t  p_84, struct S0 * p_3230);
__device__ uint16_t  func_89(int64_t  p_90, int32_t  p_91, int32_t  p_92, struct S0 * p_3230);
__device__ uint32_t  func_98(uint32_t * p_99, uint32_t  p_100, uint32_t  p_101, int16_t  p_102, uint64_t  p_103, struct S0 * p_3230);
__device__ uint16_t  func_117(int32_t ** p_118, struct S0 * p_3230);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_1 p_3230->g_4 p_3230->g_23 p_3230->g_11 p_3230->g_39 p_3230->g_43 p_3230->g_487 p_3230->g_488 p_3230->g_156 p_3230->g_494 p_3230->g_951 p_3230->g_2763 p_3230->g_2345 p_3230->g_2346 p_3230->g_1706 p_3230->g_249 p_3230->g_2855 p_3230->g_1279 p_3230->g_1473 p_3230->g_941 p_3230->g_347 p_3230->g_348 p_3230->g_2437 p_3230->g_446 p_3230->g_1475 p_3230->g_2536 p_3230->g_908 p_3230->g_1250 p_3230->g_940 p_3230->g_2945 p_3230->g_1391 p_3230->g_630 p_3230->g_447 p_3230->g_2903 p_3230->g_1265 p_3230->g_2060 p_3230->g_1434 p_3230->g_357 p_3230->g_2602 p_3230->g_322 p_3230->g_1020 p_3230->g_3037 p_3230->g_2822 p_3230->g_646 p_3230->g_3048 p_3230->g_364 p_3230->g_3060 p_3230->g_3088 p_3230->g_571 p_3230->g_3116 p_3230->g_3117 p_3230->g_3049 p_3230->g_107 p_3230->g_1820 p_3230->g_42 p_3230->g_135 p_3230->g_1420 p_3230->g_3154 p_3230->g_3169 p_3230->g_3188 p_3230->g_3190 p_3230->g_56 p_3230->g_3212 p_3230->g_3219 p_3230->g_2857
 * writes: p_3230->g_4 p_3230->g_23 p_3230->g_39 p_3230->g_43 p_3230->g_2437 p_3230->g_1279 p_3230->g_42 p_3230->g_2855 p_3230->g_2060 p_3230->g_1113 p_3230->g_908 p_3230->g_364 p_3230->g_1391 p_3230->g_107 p_3230->g_348 p_3230->g_1434 p_3230->g_1250 p_3230->g_322 p_3230->g_1020 p_3230->g_647 p_3230->g_2441 p_3230->g_3069 p_3230->g_3070 p_3230->g_156 p_3230->g_571 p_3230->g_135 p_3230->g_2763 p_3230->g_3224
 */
__device__ int64_t  func_1(struct S0 * p_3230)
{ /* block id: 0 */
    uint32_t *l_5[7][9] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
    int32_t l_6 = 0L;
    short4 l_59 = make_short4(1L, 0xE1D8L, 1L, 0xE1D8L);
    uint32_t l_365[6] = {0UL, 3UL, 0UL, 3UL, 0UL, 3UL};
    int32_t l_3020 = 3L;
    int32_t l_3021 = (-8L);
    uint32_t l_3022 = 0x5E66456EL;
    uint16_t **l_3053[6] = {&p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0]};
    int64_t *l_3061 = nullptr;
    int64_t *l_3062 = nullptr;
    int64_t *l_3063 = &p_3230->g_2441;
    int64_t ***l_3068 = &p_3230->g_487;
    int64_t ****l_3067[5][3] = {{&l_3068, &l_3068, &l_3068}, {&l_3068, &l_3068, &l_3068}, {&l_3068, &l_3068, &l_3068}, {&l_3068, &l_3068, &l_3068}, {&l_3068, &l_3068, &l_3068}};
    int32_t l_3103 = 0L;
    int32_t l_3104 = 0x26682BACL;
    int32_t l_3108 = 1L;
    int32_t l_3109 = 0x4B1D65EAL;
    int32_t l_3110 = 0L;
    uint8_t ***l_3228 = &p_3230->g_3048;
    int i, j;
    if ((safe_lshift_func_int32_t_s_s((hip_const_1 && ((p_3230->g_4.x = (!make_uint1(p_3230->g_4.z).x)) , l_6)), 22)))
    { /* block id: 2 */
        int32_t *l_7 = nullptr;
        int32_t *l_8 = &l_6;
        int32_t *l_9 = nullptr;
        int32_t *l_10 = nullptr;
        int32_t *l_12 = &l_6;
        int32_t *l_13 = &l_6;
        int32_t *l_14 = &l_6;
        int32_t *l_15 = &l_6;
        int32_t *l_16 = &l_6;
        int32_t *l_17 = &l_6;
        int32_t *l_18 = nullptr;
        int32_t *l_19 = &l_6;
        int32_t *l_20 = &l_6;
        int32_t *l_21 = &l_6;
        int32_t *l_22 = nullptr;
        --p_3230->g_23;
        for (p_3230->g_23 = (-25); (p_3230->g_23 >= 25); ++p_3230->g_23)
        { /* block id: 6 */
            return p_3230->g_11[2][2];
        }
    }
    else
    { /* block id: 9 */
        int32_t *l_28 = nullptr;
        int32_t *l_29 = nullptr;
        int32_t *l_30 = &l_6;
        int32_t *l_31 = &l_6;
        int32_t *l_32 = &l_6;
        int32_t *l_33 = &l_6;
        int32_t *l_34 = &l_6;
        int32_t *l_35 = &l_6;
        int32_t *l_36 = &l_6;
        int32_t *l_37[4] = {&l_6, nullptr, &l_6, nullptr};
        int2 l_97 = make_int2(0L, 0xDD067980L);
        uint32_t *l_104 = &p_3230->g_39;
        int32_t **l_736 = &l_36;
        uint16_t l_3013[4] = {65527UL, 0UL, 65527UL, 0UL};
        uint16_t l_3031 = 1UL;
        int i;
        p_3230->g_39++;
        p_3230->g_43++;
        for (l_6 = 0; (l_6 <= 3); l_6 += 1)
        { /* block id: 14 */
            int32_t l_96 = (-1L);
            uint32_t *l_2211[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
            int8_t l_2212[1][5][2] = {{{0xC4L, 0x59L}, {0xC4L, 0x59L}, {0xC4L, 0x59L}, {0xC4L, 0x59L}, {0xC4L, 0x59L}}};
            int32_t ****l_3002[5][1] = {{&p_3230->g_1163}, {&p_3230->g_1163}, {&p_3230->g_1163}, {&p_3230->g_1163}, {&p_3230->g_1163}};
            uint64_t l_3012 = 18446744073709551607UL;
            int i, j, k;
            (*p_3230->g_347) = func_46((safe_sub_func_int8_t_s_s((safe_sub_func_int64_t_s_s((((make_short4(p_3230->g_56.x, p_3230->g_56.x, p_3230->g_56.x, p_3230->g_56.x) ^ ((safe_mul(make_short4(l_59.z, l_59.z, l_59.z, l_59.z), ((~make_short4(0x6627L, 0x3988L, (((safe_mul_func_int64_t_s_s(func_62(func_66(p_3230->g_39, func_70((0xEEC8559CE7900082LL | ((((p_3230->g_758.x = func_75((((l_736 = func_80((safe_mul_func_int32_t_s_s((safe_add_func_uint16_t_u_u(func_89((1UL & (((l_37[l_6] = nullptr) == p_3230->g_95) >= l_96)), (make_int2(l_97.x, l_97.x).x && func_98(l_104, (*l_30), p_3230->g_105, l_96, l_6, p_3230)), l_365[1], p_3230), 1UL)), p_3230->g_353.x)), p_3230->g_353.y, p_3230->g_4.y, l_96, p_3230)) != (*p_3230->g_347)) , (*l_35)), l_365[1], l_28, l_96, p_3230)) ^ p_3230->g_774.x) <= 0x79C60235F57A7705LL) || 0xDACBL)), p_3230->g_774.z, l_104, l_365[1], p_3230), l_96, p_3230), l_2211[3], l_2212[0][0][1], p_3230), 0L)) ^ l_2212[0][3][0]) != l_365[4]), 0x3E52L)))))))).y , (**p_3230->g_487)), p_3230->g_494.x)), l_96)), l_5[4][1], p_3230->g_951.y, l_5[0][8], l_2212[0][1][0], p_3230);
            for (p_3230->g_1434 = 0; (p_3230->g_1434 <= 5); p_3230->g_1434 += 1)
            { /* block id: 1234 */
                int32_t ****l_3003 = &p_3230->g_347;
                int i, j;
                l_3013[3] |= (l_3012 = (safe_div_func_uint32_t_u_u((((make_ushort2((+p_3230->g_11[p_3230->g_1434][(l_6 + 3)]), 65535UL).x && (safe_rshift_func_uint64_t_u_u((l_3002[1][0] != l_3003), (((*p_3230->g_1706) , ((safe_div_func_int64_t_s_s(((safe_sub_func_uint64_t_u_u(18446744073709551615UL, (((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((*l_35), l_6)), (-10L))) > 254UL) >= (*l_32)))) != 18446744073709551613UL), (*p_3230->g_488))) , p_3230->g_11[p_3230->g_1434][(l_6 + 3)])) || (-10L))))) < p_3230->g_357.x) ^ p_3230->g_2602.x), (*p_3230->g_1706))));
                if (l_365[0])
                    break;
            }
            (**p_3230->g_2345) = nullptr;
        }
        for (p_3230->g_322 = 0; (p_3230->g_322 <= 10); ++p_3230->g_322)
        { /* block id: 1243 */
            int16_t l_3017 = 0L;
            int16_t l_3018 = 0x6F25L;
            int32_t l_3019 = 4L;
            int4 l_3032 = make_int4(0L, 8L, 0L, 8L);
            uchar2 l_3038 = make_uchar2(2UL, 1UL);
            uint64_t l_3044[3];
            int i;
            for (i = 0; i < 3; i++)
                l_3044[i] = 18446744073709551608UL;
            l_3022++;
            for (p_3230->g_1020 = 6; (p_3230->g_1020 < 29); p_3230->g_1020++)
            { /* block id: 1247 */
                uint32_t l_3039 = 0x636B3A37L;
                uint16_t *l_3042[6][9] = {{nullptr, nullptr, &p_3230->g_43, nullptr, nullptr, &l_3013[3], nullptr, nullptr, &p_3230->g_43}, {nullptr, nullptr, &p_3230->g_43, nullptr, nullptr, &l_3013[3], nullptr, nullptr, &p_3230->g_43}, {nullptr, nullptr, &p_3230->g_43, nullptr, nullptr, &l_3013[3], nullptr, nullptr, &p_3230->g_43}, {nullptr, nullptr, &p_3230->g_43, nullptr, nullptr, &l_3013[3], nullptr, nullptr, &p_3230->g_43}, {nullptr, nullptr, &p_3230->g_43, nullptr, nullptr, &l_3013[3], nullptr, nullptr, &p_3230->g_43}, {nullptr, nullptr, &p_3230->g_43, nullptr, nullptr, &l_3013[3], nullptr, nullptr, &p_3230->g_43}};
                uint32_t l_3043 = 4294967292UL;
                uint8_t **l_3047 = nullptr;
                uint64_t **l_3050 = &p_3230->g_447;
                int4 l_3052 = make_int4(0L, 0xF464E40FL, 0L, 0xF464E40FL);
                int i, j;
                l_3044[0] = (((safe_div_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((l_6 = (l_3031 < (((((*p_3230->g_1706) && make_int3(l_3032.z, l_3032.z, l_3032.z).z) , ((safe_sub_func_uint8_t_u_u(((safe_mod(make_uchar3(p_3230->g_3037.x, p_3230->g_3037.x, p_3230->g_3037.x), make_uchar3(0x25L, make_uchar4(l_3038.x, l_3038.x, l_3038.x, l_3038.x).y, 1UL)))).y, 2UL)) , l_3039)) == (safe_add_func_uint64_t_u_u(((((*p_3230->g_630) > (0xD0B01D1BAEFC3878LL <= (make_ulong1(l_3018).x >= ((l_3039 || ((*p_3230->g_447) || 0xECB10C9A619E8518LL)) || 0xDF5053A2B30F989CLL)))) & l_3038.y) && l_3038.x), l_3038.y))) && (*l_34)))), p_3230->g_2822.y)), l_3039)) < l_3039) == l_3043);
                for (p_3230->g_1434 = 0; (p_3230->g_1434 <= (-6)); --p_3230->g_1434)
                { /* block id: 1252 */
                    uint32_t l_3051[9][2] = {{0UL, 4UL}, {0UL, 4UL}, {0UL, 4UL}, {0UL, 4UL}, {0UL, 4UL}, {0UL, 4UL}, {0UL, 4UL}, {0UL, 4UL}, {0UL, 4UL}};
                    int i, j;
                    (*l_32) |= (((*p_3230->g_646) = l_3047) == p_3230->g_3048);
                    for (p_3230->g_364 = 0; (p_3230->g_364 <= 1); p_3230->g_364 += 1)
                    { /* block id: 1257 */
                        (*l_34) = (nullptr == l_3050);
                    }
                    l_3021 |= ((*l_30) = l_3051[6][0]);
                }
                (*l_34) = make_int4(l_3052.x, l_3052.x, l_3052.x, l_3052.x).y;
            }
            (**p_3230->g_2345) = l_3053[5];
        }
    }
    l_6 = (make_char1((l_3022 && ((*p_3230->g_488) || (make_ushort3((((*p_3230->g_630) = (((safe_add_func_uint64_t_u_u((0xE6B54074A77609F1LL < (safe_add_func_int32_t_s_s((l_365[1] == (l_3021 = (l_3022 != (((safe_sub(make_long2(p_3230->g_3060.x, p_3230->g_3060.x), make_long2((*p_3230->g_488), 6L)))).x < ((*l_3063) = l_6))))), (safe_sub_func_int16_t_s_s(((safe_unary_minus_func_uint16_t_u((((p_3230->g_3069 = &p_3230->g_487) == (p_3230->g_3070 = &p_3230->g_487)) ^ l_3022))) == l_365[1]), l_365[1]))))), (**p_3230->g_487))) , l_3022) >= 1L)) != (-5L)), 0x4ED5L, 65528UL).x , 0xF3127A0C71F7041FLL)))).x & (-1L));
    for (p_3230->g_2437 = (-9); (p_3230->g_2437 < (-25)); p_3230->g_2437 = safe_sub_func_int8_t_s_s(p_3230->g_2437, 7))
    { /* block id: 1276 */
        uint32_t l_3085[6][9][4] = {{{0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}}, {{0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}}, {{0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}}, {{0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}}, {{0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}}, {{0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}, {0x3A69BC71L, 0xCE26BC46L, 5UL, 0UL}}};
        uint16_t **l_3091 = nullptr;
        int32_t l_3095 = 8L;
        int32_t l_3105[9][8] = {{(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}, {(-1L), 0x378E9FE2L, 0x876AEB32L, 0x15E64C40L, 0x49F19C26L, 0L, 0x734159A0L, 3L}};
        int64_t l_3112 = 0x01A8123877A61D75LL;
        uint64_t l_3113[8][4][5] = {{{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}, {{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}, {{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}, {{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}, {{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}, {{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}, {{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}, {{18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}, {18446744073709551611UL, 1UL, 18446744073709551615UL, 18446744073709551613UL, 0x614C086B26002616LL}}};
        char3 l_3157 = make_char3(0xF0L, (-6L), 0xF0L);
        uint64_t l_3158 = 0x161F620373A16F62LL;
        long1 l_3176 = make_long1((-2L));
        int8_t ****l_3221 = &p_3230->g_3220;
        int8_t *****l_3222 = nullptr;
        int8_t *****l_3223 = &l_3221;
        uint8_t ***l_3227 = &p_3230->g_3048;
        int32_t *l_3229 = &l_3105[7][2];
        int i, j, k;
        for (p_3230->g_1279 = 25; (p_3230->g_1279 <= 5); p_3230->g_1279 = safe_sub_func_uint8_t_u_u(p_3230->g_1279, 3))
        { /* block id: 1279 */
            uint32_t l_3079 = 4294967295UL;
            int32_t l_3094 = 0xBD0B1905L;
            int32_t l_3101 = (-8L);
            int32_t l_3106[8] = {(-1L), (-1L), 0xE275BE66L, (-1L), (-1L), 0xE275BE66L, (-1L), (-1L)};
            int i;
            for (l_6 = 0; (l_6 <= 7); ++l_6)
            { /* block id: 1282 */
                uint16_t l_3093 = 0UL;
                int32_t l_3102 = 0x7DCCABA9L;
                int32_t l_3107 = 7L;
                int32_t l_3111 = (-1L);
                uint32_t l_3142 = 0x8D9EA523L;
                for (l_3020 = 4; (l_3020 <= (-30)); l_3020--)
                { /* block id: 1285 */
                    uint32_t l_3082 = 0x560B9F62L;
                    int16_t *l_3092[7] = {&p_3230->g_2763[4], &p_3230->g_2763[4], nullptr, &p_3230->g_2763[4], &p_3230->g_2763[4], nullptr, &p_3230->g_2763[4]};
                    int32_t l_3100[2];
                    int32_t l_3141 = (-8L);
                    int i;
                    for (i = 0; i < 2; i++)
                        l_3100[i] = 0xF6FD6041L;
                    if (((l_3079 < (l_3082 <= ((safe_lshift_func_uint32_t_u_u(((((l_3085[3][7][2] > (((*p_3230->g_447) &= (p_3230->g_3088 , l_3082)) || ((-8L) <= (safe_lshift_func_int16_t_s_s((p_3230->g_571.x ^= ((l_3085[3][7][2] <= (l_3091 == l_3091)) , 0xE140L)), 12))))) & l_59.x) && l_3082) ^ 0x4FL), 2)) < l_3093))) ^ 0x83L))
                    { /* block id: 1288 */
                        return (*p_3230->g_630);
                    }
                    else
                    { /* block id: 1290 */
                        int32_t *l_3096 = nullptr;
                        int32_t *l_3097 = nullptr;
                        int32_t *l_3098 = nullptr;
                        int32_t *l_3099[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_3099[i] = nullptr;
                        l_3113[4][0][2]--;
                        l_3021 |= make_int1(((((l_3103 = (make_int4(p_3230->g_3116.x, p_3230->g_3116.x, p_3230->g_3116.x, p_3230->g_3116.x).x == l_3100[1])) , make_int2(p_3230->g_3117.x, p_3230->g_3117.x).x) , make_uint4((l_3079 <= ((**p_3230->g_3048) = (l_59.w <= (((((l_3107 = l_3111) | (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint32_t_u_u(((safe_lshift_func_uint32_t_u_s((((safe_add_func_uint16_t_u_u((((*l_3063) = 0xECEDC571D5F5818ALL) & (safe_rshift_func_int32_t_s_u(l_3100[1], (safe_div_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(((make_uint2((!make_uint2(1UL, 4294967292UL).y), 4294967286UL) ^ ((safe_add(((((((make_uint2((*p_3230->g_1706), ((safe_unary_minus_func_uint32_t_u((((((((safe_div_func_uint32_t_u_u((safe_add_func_int16_t_s_s(((l_3141 = ((0xE60B91B6L <= (safe_lshift_func_uint64_t_u_s((l_3079 , (**p_3230->g_446)), l_3111))) || 0x6F4113C4L)) == 0xEAAED2F73F8060E5LL), 0xC5FFL)), l_3082)) , 0xECL) > l_3104) == 0L) || l_3142) < l_3108) > 2UL))) || (-9L))) ^ make_uint2(0xA09C2418L, 0xA09C2418L))) ^ make_uint2(0x7A8F4A3FL, 0x7A8F4A3FL))) ^ make_uint2(4294967288UL, 4294967288UL))), make_uint2(1UL, 1UL)))))).y, (*p_3230->g_1706))), (**p_3230->g_3048)))))), (-6L))) , 0xA0777FB6C5C7A0A7LL) , (*p_3230->g_1706)), 8)) , (*p_3230->g_1706)), (*p_3230->g_1706))), (**p_3230->g_3048)))) , l_3095) < p_3230->g_1820.x) >= (-1L))))), 4294967287UL, 0xB3B2DCB9L, 0x309000F8L).x) && 1UL)).x;
                    }
                }
                return l_3021;
            }
        }
        for (p_3230->g_42 = 0; (p_3230->g_42 <= 3); p_3230->g_42 += 1)
        { /* block id: 1305 */
            int32_t *l_3143 = nullptr;
            uint32_t *l_3152[3][10] = {{&p_3230->g_249[3], &l_3085[3][5][1], nullptr, &p_3230->g_323, nullptr, &p_3230->g_323, nullptr, &l_3085[3][5][1], &p_3230->g_249[3], &p_3230->g_249[1]}, {&p_3230->g_249[3], &l_3085[3][5][1], nullptr, &p_3230->g_323, nullptr, &p_3230->g_323, nullptr, &l_3085[3][5][1], &p_3230->g_249[3], &p_3230->g_249[1]}, {&p_3230->g_249[3], &l_3085[3][5][1], nullptr, &p_3230->g_323, nullptr, &p_3230->g_323, nullptr, &l_3085[3][5][1], &p_3230->g_249[3], &p_3230->g_249[1]}};
            int32_t l_3159 = 0x5D488743L;
            ulong3 l_3189 = make_ulong3(0xC78D1DFD53B883BELL, 0xB94E54B04AE04D75LL, 0xC78D1DFD53B883BELL);
            uint32_t l_3193 = 0x066622C1L;
            int i, j;
            l_3143 = (l_3020 , l_3143);
            for (p_3230->g_135 = 0; (p_3230->g_135 <= 1); p_3230->g_135 += 1)
            { /* block id: 1309 */
                int8_t l_3153 = 1L;
                int8_t l_3192 = 0x83L;
                int i, j, k;
                l_3159 = (((l_3105[4][2] = ((safe_sub_func_uint64_t_u_u(l_3085[3][7][2], (((safe_rshift_func_int64_t_s_u((safe_mod_func_uint16_t_u_u(((l_3152[1][4] != &p_3230->g_105) , (p_3230->g_1420.x ^ l_3153)), l_3022)), (l_3113[p_3230->g_42][p_3230->g_42][p_3230->g_42] = (*p_3230->g_447)))) <= ((make_char2(p_3230->g_3154.x, p_3230->g_3154.x) ^ ((safe_sub(make_char2(9L, 0x09L), ((make_char2(1L, 3L) ^ make_char2(l_3157.z, l_3157.z)))))))).y) || (!((((-1L) | (((l_3153 <= l_3153) | (*p_3230->g_1706)) > 0x52L)) , 6UL) , l_3158))))) || l_3108)) , 0xC3D11F56L) , 1L);
                for (p_3230->g_107 = 0; (p_3230->g_107 <= 3); p_3230->g_107 += 1)
                { /* block id: 1315 */
                    uint8_t ***l_3166 = &p_3230->g_647;
                    int32_t l_3185 = (-1L);
                    int16_t *l_3191 = &p_3230->g_2763[6];
                    int32_t *l_3194 = nullptr;
                    int32_t *l_3195 = &l_6;
                    int i, j;
                    (*l_3195) = (((((make_ulong2((safe_add_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((nullptr == l_3166), ((**p_3230->g_487) != l_3159))), (((((safe_sub(((~make_ulong2(p_3230->g_3169.z, p_3230->g_3169.z))), ((((((make_ulong2((safe_sub_func_int32_t_s_s((((safe_rshift_func_int32_t_s_u(((((*p_3230->g_488) , ((safe_add(((make_long2(l_3176.x, l_3176.x) ^ ((((make_long2(make_long1((safe_div_func_int32_t_s_s((safe_add_func_int16_t_s_s(0xFE06L, (l_3192 = (safe_div_func_int64_t_s_s((((*l_3191) = ((!(safe_mul_func_int8_t_s_s((l_3185 ^ (safe_mod_func_uint64_t_u_u(((make_ulong2(0x193759A248644C2ALL, 0xF7700864B9FAC14CLL) ^ ((make_ulong2(p_3230->g_3188.x, p_3230->g_3188.x) & make_ulong2(l_3189.y, l_3189.y))))).y, make_ulong4(p_3230->g_3190.x, p_3230->g_3190.x, p_3230->g_3190.x, p_3230->g_3190.x).z))), 0xDCL))) || (((p_3230->g_249[3] , (**p_3230->g_446)) , nullptr) != nullptr))) ^ l_3108), 18446744073709551615UL))))), l_3105[1][4]))).x, 0x64E47E67ADB57ED3LL) & make_long2(0x5A539396DB427C6FLL, 0x5A539396DB427C6FLL))) ^ make_long2(0x4C05D38EB4ADE08ALL, 0x4C05D38EB4ADE08ALL))))), make_long2(0x9D27A6B24A236B39LL, 0x9D27A6B24A236B39LL)))).y) , l_3158) | 0x0E90L), l_3108)) == l_3113[5][0][4]) | 0xFCDDE3AEECA49CA8LL), (*p_3230->g_1706))), 18446744073709551614UL) ^ make_ulong2(18446744073709551613UL, 18446744073709551613UL))) ^ make_ulong2(0UL, 0UL))) ^ make_ulong2(0xD0AA1357FDAEAAABLL, 0xD0AA1357FDAEAAABLL)))))) ^ make_ulong2(7UL, 7UL))).y ^ l_3193))), l_3020)), l_3113[3][2][0]) & make_ulong2(18446744073709551615UL, 18446744073709551615UL))).y || l_3105[0][6]) , nullptr) == &l_365[4]);
                }
            }
        }
        (*l_3229) = (safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u((safe_rshift_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u(((safe_lshift(make_ushort2(1UL, ((safe_sub_func_int64_t_s_s(((safe_sub_func_int64_t_s_s((safe_add_func_int8_t_s_s(p_3230->g_56.x, (p_3230->g_3212[2][6][2] != nullptr))), ((safe_mul(make_long4(1L, ((safe_lshift_func_int8_t_s_s(0x08L, (safe_rshift_func_uint8_t_u_u((l_3110 < (p_3230->g_3219 != (p_3230->g_3224 = ((*l_3223) = l_3221)))), ((**p_3230->g_3048)--))))) || (**p_3230->g_3048)), (l_3227 != l_3228), 0x5E93636E2D4B3D29LL), make_long4(0xF3D14B34E6EAA51ALL, 0xF3D14B34E6EAA51ALL, 0xF3D14B34E6EAA51ALL, 0xF3D14B34E6EAA51ALL)))).x)) & l_3021), 1UL)) || l_3021)), make_ushort2(1UL, 1UL)))).x, 4UL)), (***p_3230->g_2857))), l_365[1])), l_3021));
    }
    l_3020 &= 4L;
    return l_365[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_446 p_3230->g_447 p_3230->g_23 p_3230->g_2791 p_3230->g_487 p_3230->g_488 p_3230->g_156 p_3230->g_2822 p_3230->g_1706 p_3230->g_249 p_3230->g_364 p_3230->g_2173 p_3230->g_2437 p_3230->g_2763 p_3230->g_2345 p_3230->g_2346 p_3230->g_2855 p_3230->g_1279 p_3230->g_11 p_3230->g_1473 p_3230->g_941 p_3230->g_347 p_3230->g_348 p_3230->g_1475 p_3230->g_2536 p_3230->g_908 p_3230->g_1250 p_3230->g_940 p_3230->g_2945 p_3230->g_1391 p_3230->g_630 p_3230->g_2983 p_3230->g_2903 p_3230->g_1265 p_3230->g_2060 p_3230->g_107
 * writes: p_3230->g_156 p_3230->g_364 p_3230->g_2437 p_3230->g_1279 p_3230->g_42 p_3230->g_2855 p_3230->g_2060 p_3230->g_1113 p_3230->g_908 p_3230->g_1391 p_3230->g_23 p_3230->g_107
 */
__device__ int32_t ** func_46(uint8_t  p_47, uint32_t * p_48, int16_t  p_49, uint32_t * p_50, uint8_t  p_51, struct S0 * p_3230)
{ /* block id: 1126 */
    ulong2 l_2790 = make_ulong2(4UL, 0x3804625B899949C0LL);
    uint16_t *l_2808[9] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int32_t l_2809 = (-7L);
    uint16_t l_2823 = 65534UL;
    int32_t l_2824 = 0x03F00712L;
    int16_t l_2825 = (-9L);
    int8_t l_2826[8] = {5L, 0L, 5L, 0L, 5L, 0L, 5L, 0L};
    int16_t *l_2827 = &p_3230->g_364;
    int32_t l_2828 = 6L;
    int32_t l_2829 = 0L;
    int32_t l_2830 = 0xEDAF8DC3L;
    int32_t l_2848 = 0x77864F9DL;
    ulong3 l_2859 = make_ulong3(0x737AB4FA85135CA5LL, 0x10CCD6480FD619C0LL, 0x737AB4FA85135CA5LL);
    uint64_t ***l_2868 = &p_3230->g_446;
    int64_t **l_2886 = &p_3230->g_488;
    long4 l_2906 = make_long4(1L, 0xFC751A7CAFB507C9LL, 1L, 0xFC751A7CAFB507C9LL);
    short2 l_2907 = make_short2(0L, 0xC789L);
    uint32_t *l_2912 = &p_3230->g_323;
    uint32_t l_2946 = 0x3EB0ED0AL;
    int32_t **l_2997[7] = {&p_3230->g_2060[3][3][0], &p_3230->g_95, &p_3230->g_2060[3][3][0], &p_3230->g_95, &p_3230->g_2060[3][3][0], &p_3230->g_95, &p_3230->g_2060[3][3][0]};
    int i;
    l_2830 &= (((((safe_sub(((make_ulong1(l_2790.x) | make_ulong1((p_49 < (**p_3230->g_446))))), make_ulong1(p_3230->g_2791.x)))) ^ make_ulong1((safe_mul_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(((make_ushort3((((safe_add_func_uint8_t_u_u((((safe_div_func_int16_t_s_s(make_short4((-4L), (safe_sub_func_int16_t_s_s((!((*l_2827) &= (safe_rshift_func_int8_t_s_u(((safe_add_func_int64_t_s_s((safe_div_func_uint16_t_u_u(l_2790.y, (l_2809 = l_2790.x))), (safe_add_func_int64_t_s_s(0x19BE70EE8C4F28BCLL, ((**p_3230->g_487) &= make_long1(0x3CD1BA89B78BA173LL).x))))) ^ (safe_add_func_int32_t_s_s(((l_2824 = ((((safe_rshift_func_int8_t_s_s((l_2808[1] != nullptr), 4)) == (safe_sub_func_uint8_t_u_u((l_2790.y & (safe_rshift_func_uint64_t_u_u(((p_51 &= ((safe_mod(make_uchar2(p_3230->g_2822.x, p_3230->g_2822.x), make_uchar2(255UL, 0x03L)))).x) ^ ((!((l_2790.y <= l_2790.y) , l_2790.x)) && 7L)), l_2790.y))), l_2823))) <= l_2790.y) , p_51)) ^ l_2825), (*p_3230->g_1706)))), l_2826[7])))), l_2828)), 6L, 0xC000L).y, p_47)) || p_49) >= l_2829), p_49)) <= p_49) != l_2826[7]), l_2826[7], 0UL) & make_ushort3(0x9718L, 0x9718L, 0x9718L))).y, p_3230->g_2173.w)) >= 0x4F6793B6L), p_47))))).x != l_2826[7]);
    for (p_3230->g_2437 = 8; (p_3230->g_2437 >= 0); p_3230->g_2437 -= 1)
    { /* block id: 1135 */
        ulong1 l_2839 = make_ulong1(0xCA77799FA78B82DALL);
        int64_t *l_2845 = nullptr;
        int32_t l_2850 = 1L;
        long2 l_2885 = make_long2(5L, 3L);
        int32_t **l_2893 = &p_3230->g_2060[5][4][2];
        uint32_t l_2896 = 0xED2621CFL;
        short4 l_2910 = make_short4(0L, 0xB482L, 0L, 0xB482L);
        uint32_t **l_2911[10][8][3] = {{{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}, {{&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}, {&p_3230->g_1706, &p_3230->g_1706, &p_3230->g_1706}}};
        int64_t l_2920 = (-1L);
        int8_t **l_2959 = &p_3230->g_2286;
        uint64_t ***l_2986 = &p_3230->g_446;
        int i, j, k;
        for (l_2825 = 7; (l_2825 >= 3); l_2825 -= 1)
        { /* block id: 1138 */
            uint16_t ****l_2842 = &p_3230->g_2346[3];
            uint16_t ****l_2844 = &p_3230->g_2346[2];
            uint16_t *****l_2843 = &l_2844;
            uint64_t ***l_2867 = &p_3230->g_446;
            char2 l_2872 = make_char2(0x92L, 7L);
            char1 l_2877 = make_char1(0xA0L);
            uint32_t **l_2878 = nullptr;
            int32_t l_2891 = 0x3EAA7CEDL;
            int32_t *l_2895 = nullptr;
            int i;
            if ((safe_mul_func_int32_t_s_s(((l_2824 = ((safe_mul_func_int8_t_s_s(p_3230->g_2763[(l_2825 + 1)], (l_2824 , ((*p_3230->g_2345) == (((((safe_lshift(((((safe_rshift(make_ulong4(l_2839.x, l_2839.x, l_2839.x, l_2839.x), ((safe_rshift(make_ulong4((l_2842 != ((*l_2843) = l_2842)), ((l_2845 == (*p_3230->g_487)) , p_47), 0UL, 18446744073709551606UL), make_ulong4(64, 64, 64, 64))))))) | make_ulong4(0xB3F61540DF796EA6LL, 0xBFA7ECAA9819C8BBLL, ((**p_3230->g_446) = (safe_sub_func_uint32_t_u_u((((p_49 || p_51) <= 4294967288UL) & p_49), p_51))), l_2848))), make_ulong4(64, 64, 64, 64)))).y != 0x824AFE5B6B00A868LL) & (*p_3230->g_1706)) , (*p_3230->g_2345)))))) , 1UL)) ^ 1L), p_47)))
            { /* block id: 1142 */
                uint16_t l_2869 = 65535UL;
                int32_t **l_2892 = nullptr;
                for (p_3230->g_1279 = 0; (p_3230->g_1279 <= 3); p_3230->g_1279 += 1)
                { /* block id: 1145 */
                    ulong1 l_2860 = make_ulong1(0xC4358C6292729E98LL);
                    int i;
                    for (p_3230->g_42 = 0; (p_3230->g_42 <= 3); p_3230->g_42 += 1)
                    { /* block id: 1148 */
                        int32_t *l_2849[2][8][7] = {{{nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}}, {{nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}, {nullptr, &l_2830, &l_2830, &p_3230->g_908, nullptr, nullptr, nullptr}}};
                        int32_t *l_2851 = &l_2850;
                        int i, j, k;
                        l_2850 = p_51;
                        if (p_3230->g_2763[(l_2825 + 1)])
                            continue;
                        l_2851 = (l_2849[0][5][0] = l_2849[0][5][0]);
                        l_2830 = ((safe_sub(make_int1(0x760FDE87L), make_int1(p_3230->g_2854.x)))).x;
                    }
                    p_3230->g_2855 = p_3230->g_2855;
                    for (p_51 = 0; (p_51 <= 8); p_51 += 1)
                    { /* block id: 1158 */
                        int32_t *l_2858 = &l_2830;
                        int8_t ***l_2862 = &p_3230->g_2285;
                        int8_t ****l_2861 = &l_2862;
                        int i, j;
                        (*l_2858) &= (l_2850 = p_3230->g_11[p_3230->g_1279][(p_3230->g_1279 + 4)]);
                        (*l_2861) = (((make_ulong1(l_2859.y) ^ make_ulong1(l_2860.x))).x , nullptr);
                    }
                }
                if ((((safe_sub_func_uint8_t_u_u((~((((((safe_div_func_int64_t_s_s((l_2891 |= ((l_2868 = l_2867) != ((l_2869 | ((safe_mul_func_int8_t_s_s(((((make_char3(l_2872.x, l_2872.x, l_2872.x) ^ ((safe_add(((safe_div(make_char3(l_2877.x, l_2877.x, l_2877.x), make_char3(1L, (l_2850 |= ((((l_2869 ^ (l_2878 == (((safe_div_func_uint8_t_u_u(p_47, (0x9CL & (safe_unary_minus_func_int64_t_s(((make_long2(p_3230->g_2882.y, p_3230->g_2882.y) ^ ((safe_rshift(make_long2(l_2885.x, l_2885.x), make_long2(64, 64)))))).y))))) >= ((l_2886 != ((p_47 | (safe_sub_func_int64_t_s_s(((((((safe_mul_func_int8_t_s_s((p_3230->g_1028.x = l_2826[7]), p_51)) < (-1L)) , p_3230->g_39) > 0xE3L) , 0x86L) | 0x47L), (*p_3230->g_488)))) , &p_3230->g_488)) <= 0xD3C52DEC2B194A7DLL)) , l_2878))) != p_47) != (***p_3230->g_2857)) | p_49)), 0L)))), make_char3(7L, 7L, 7L)))))) ^ make_char3(4L, 4L, 4L))).y, l_2790.x)) <= 5UL)) , nullptr))), p_49)) , 5L) >= 0UL) != l_2869) || 0xBBD082B1D3C1FD2FLL) & 0UL)), 1L)) >= 0xBFL) > p_3230->g_1473.z))
                { /* block id: 1168 */
                    return l_2892;
                }
                else
                { /* block id: 1170 */
                    return l_2893;
                }
            }
            else
            { /* block id: 1173 */
                int32_t *l_2894 = &p_3230->g_135;
                (*l_2893) = (l_2895 = (l_2894 = nullptr));
                if (l_2896)
                    continue;
                return (**p_3230->g_941);
            }
        }
        if (((((safe_mod_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(p_3230->g_2763[p_3230->g_2437], (l_2824 |= (make_long1(p_3230->g_2903.x).x || ((safe_div(make_long3(l_2906.w, l_2906.w, l_2906.w), make_long3(0x025F72499065893ALL, (make_short2(l_2907.y, l_2907.y).y , ((make_short1(l_2910.y).x <= ((l_2912 = &p_3230->g_249[3]) == &p_3230->g_323)) < p_3230->g_2763[p_3230->g_2437])), ((*p_3230->g_630) = (((safe_div_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(((safe_rshift_func_int32_t_s_s(l_2848, ((254UL >= ((p_3230->g_2919[1] = (p_3230->g_940 = &p_3230->g_941)) != &p_3230->g_941)) & p_49))) , p_49), (-5L))), 0xFD253386F1C4BD23LL)) != p_47) ^ l_2830)))))).x)))), l_2790.y)), l_2920)) > (*p_3230->g_1706)) , p_47) >= p_51))
        { /* block id: 1186 */
            uint64_t **l_2934 = &p_3230->g_447;
            uint16_t l_2937 = 0xF7C2L;
            l_2850 ^= ((safe_sub_func_uint32_t_u_u((((safe_lshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u(((safe_add_func_uint8_t_u_u((((safe_rshift_func_uint64_t_u_s((p_47 >= ((safe_unary_minus_func_uint32_t_u((((safe_lshift_func_uint64_t_u_u(p_49, (&p_3230->g_2346[2] == nullptr))) < (((l_2934 != (*l_2868)) != l_2859.y) , (safe_div_func_uint32_t_u_u((p_49 > l_2826[2]), p_49)))) , (*p_3230->g_1706)))) , l_2937)), (*p_3230->g_488))) && p_49) >= l_2906.y), p_51)) >= p_49), l_2907.y)), p_47)) < l_2824) & p_51), 4294967295UL)) == p_3230->g_1475.x);
        }
        else
        { /* block id: 1188 */
            uint64_t *****l_2951 = &p_3230->g_2856[0][1];
            int32_t l_2967 = 0x3C41E903L;
            for (l_2896 = 0; (l_2896 <= 3); l_2896 += 1)
            { /* block id: 1191 */
                int32_t ***l_2940 = nullptr;
                int32_t *****l_2950 = &p_3230->g_941;
                long1 l_2955 = make_long1(0L);
                char3 l_2966 = make_char3(0xC3L, 0xB8L, 0xC3L);
                int i;
                for (p_3230->g_1113 = 3; (p_3230->g_1113 >= 0); p_3230->g_1113 -= 1)
                { /* block id: 1194 */
                    uint64_t l_2938 = 0UL;
                    uint8_t ***l_2939 = &p_3230->g_647;
                    (*l_2893) = func_66(l_2938, ((l_2938 , l_2939) == &p_3230->g_647), p_3230->g_2536.x, p_3230);
                    l_2940 = (**p_3230->g_940);
                    l_2824 = 0x59487E39L;
                }
                l_2946 ^= ((safe_add_func_uint32_t_u_u((safe_lshift_func_uint32_t_u_s(p_51, 13)), (*p_3230->g_1706))) >= (~(p_3230->g_2945 == nullptr)));
                for (p_3230->g_364 = 0; (p_3230->g_364 <= 3); p_3230->g_364 += 1)
                { /* block id: 1202 */
                    int64_t l_2949 = 0xED919EA3C76CB575LL;
                    int16_t **l_2954 = &l_2827;
                    uint64_t *****l_2958 = nullptr;
                    int8_t *l_2960 = nullptr;
                    int8_t *l_2961 = nullptr;
                    int8_t *l_2962 = nullptr;
                    int8_t *l_2963 = nullptr;
                    int32_t l_2987 = 0L;
                    int32_t *l_2988 = nullptr;
                    int32_t *l_2989 = nullptr;
                    int32_t *l_2990 = nullptr;
                    int32_t *l_2991 = &l_2850;
                    if ((((safe_sub_func_int8_t_s_s((!(p_3230->g_1391.z |= ((((l_2824 = l_2949) , ((((l_2950 != nullptr) , (l_2951 = nullptr)) == ((safe_mul_func_uint8_t_u_u((0xDAL || 1L), (((*l_2954) = &p_49) != &p_3230->g_2763[6]))) , (((make_long2(l_2955.x, l_2955.x) ^ make_long2((-1L), ((safe_lshift_func_uint32_t_u_s(p_49, l_2949)) == (*p_3230->g_630))))).y , l_2958))) , l_2959)) == &p_3230->g_2286) < l_2949))), 1UL)) & 0xD23E07B9A58E9E02LL) | p_49))
                    { /* block id: 1207 */
                        l_2967 |= (0x0CL && ((safe_div(make_char1(l_2966.x), make_char1(0xDCL)))).x);
                    }
                    else
                    { /* block id: 1209 */
                        int32_t **l_2968 = &p_3230->g_95;
                        return l_2968;
                    }
                    l_2987 ^= (((!l_2967) & (safe_add_func_uint8_t_u_u(((!(safe_lshift_func_uint16_t_u_s((0xD9L == (((+(safe_sub_func_uint16_t_u_u((l_2824 = 65529UL), ((*p_3230->g_630) ^ ((***l_2868) ^= p_49))))) && (((*l_2827) = (safe_mod_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(18446744073709551610UL, (safe_mod_func_int16_t_s_s(((safe_div_func_int8_t_s_s(make_char3(p_3230->g_2983.x, p_3230->g_2983.x, p_3230->g_2983.x).z, (safe_sub_func_int16_t_s_s((((nullptr == l_2986) ^ (p_47 != 6L)) >= 0L), p_51)))) <= p_3230->g_2903.y), p_49)))), 0xD732L))) < p_3230->g_1265.x)) >= 0x4225E61C779B1D6FLL)), p_51))) & 0xA095L), l_2967))) && 0L);
                    (*l_2991) = (l_2824 &= p_47);
                }
            }
        }
        l_2809 |= (safe_lshift_func_uint64_t_u_s((--(**p_3230->g_446)), l_2790.y));
        (*l_2893) = (*l_2893);
        for (p_3230->g_107 = 0; (p_3230->g_107 <= 3); p_3230->g_107 += 1)
        { /* block id: 1226 */
            int32_t **l_2996 = &p_3230->g_2060[3][3][0];
            return l_2996;
        }
    }
    return l_2997[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_322 p_3230->g_446 p_3230->g_447 p_3230->g_23 p_3230->g_908 p_3230->g_1250 p_3230->g_774 p_3230->g_630 p_3230->g_1219 p_3230->g_1278 p_3230->g_758 p_3230->g_487 p_3230->g_488 p_3230->g_156
 * writes: p_3230->g_322 p_3230->g_135 p_3230->g_908 p_3230->g_156 p_3230->g_43 p_3230->g_38 p_3230->g_1020
 */
__device__ int64_t  func_62(int32_t * p_63, uint32_t * p_64, uint16_t  p_65, struct S0 * p_3230)
{ /* block id: 889 */
    uint16_t *l_2220 = &p_3230->g_43;
    int64_t **l_2227 = nullptr;
    int1 l_2231 = make_int1((-1L));
    int64_t *l_2241[4][9][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
    uint8_t l_2267 = 3UL;
    int64_t l_2269[2];
    int16_t l_2270 = 0x152CL;
    uint8_t ****l_2328 = &p_3230->g_646;
    uint32_t l_2414 = 1UL;
    uchar2 l_2472 = make_uchar2(0x73L, 0x2FL);
    int32_t l_2481 = 0L;
    uint64_t l_2494 = 0x70480E534BF69581LL;
    uint64_t **l_2509 = &p_3230->g_447;
    int32_t l_2520 = 0L;
    int8_t l_2543 = (-8L);
    uint8_t *l_2545 = nullptr;
    uint8_t **l_2544 = &l_2545;
    short3 l_2566 = make_short3(0x3300L, 0x3891L, 0x3300L);
    ushort3 l_2576 = make_ushort3(0xE8DDL, 65529UL, 0xE8DDL);
    uint16_t l_2588 = 0x5196L;
    int4 l_2613 = make_int4(1L, (-1L), 1L, (-1L));
    int32_t *l_2614[8] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    ushort3 l_2714 = make_ushort3(0UL, 0xCD66L, 0UL);
    short3 l_2770 = make_short3(0x8565L, 0xF719L, 0x8565L);
    int16_t *l_2781 = nullptr;
    int16_t **l_2780[4][4] = {{&l_2781, &l_2781, &l_2781, &l_2781}, {&l_2781, &l_2781, &l_2781, &l_2781}, {&l_2781, &l_2781, &l_2781, &l_2781}, {&l_2781, &l_2781, &l_2781, &l_2781}};
    int16_t l_2787[4][6][1] = {{{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2269[i] = 0xEAE43791DF9AF5E7LL;
    for (p_3230->g_322 = 8; (p_3230->g_322 >= 0); p_3230->g_322 -= 1)
    { /* block id: 892 */
        int32_t ****l_2214 = &p_3230->g_347;
        uint16_t *l_2284 = nullptr;
        int32_t l_2316 = 0xCDFB7334L;
        short1 l_2333 = make_short1(1L);
        int32_t l_2356 = 0xF19B86B5L;
        int32_t l_2361[5][10][5] = {{{0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}}, {{0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}}, {{0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}}, {{0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}}, {{0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}, {0x009B4BD5L, 0x4169A857L, 0x6EE9CE8AL, (-7L), 0x009B4BD5L}}};
        char3 l_2382 = make_char3((-10L), (-3L), (-10L));
        uint16_t l_2398 = 65526UL;
        int16_t l_2430[7][10][3] = {{{0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}}, {{0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}}, {{0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}}, {{0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}}, {{0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}}, {{0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}}, {{0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}, {0x472DL, (-9L), (-5L)}}};
        int64_t ***l_2455 = &l_2227;
        uint8_t *l_2458[4][5][10] = {{{&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}}, {{&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}}, {{&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}}, {{&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}, {&p_3230->g_1020, &l_2267, nullptr, &p_3230->g_107, &p_3230->g_1279, &p_3230->g_1279, &p_3230->g_107, nullptr, &p_3230->g_1020, &p_3230->g_1020}}};
        uint8_t **l_2457[7] = {&l_2458[2][1][1], &l_2458[2][1][1], &l_2458[2][0][9], &l_2458[2][1][1], &l_2458[2][1][1], &l_2458[2][0][9], &l_2458[2][1][1]};
        int4 l_2485 = make_int4(1L, 0x1E138A28L, 1L, 0x1E138A28L);
        ulong2 l_2487 = make_ulong2(0x368EC4D05D597791LL, 2UL);
        int4 l_2490 = make_int4(0x2A81A870L, 0x2342D921L, 0x2A81A870L, 0x2342D921L);
        ushort3 l_2517 = make_ushort3(0x8A64L, 65535UL, 0x8A64L);
        uint32_t ****l_2518[6] = {&p_3230->g_1026, nullptr, &p_3230->g_1026, nullptr, &p_3230->g_1026, nullptr};
        char1 l_2567 = make_char1(0x5FL);
        int8_t l_2587[2];
        uint1 l_2638 = make_uint1(4294967289UL);
        int32_t ***l_2659[1];
        short2 l_2688 = make_short2(0x45EDL, 0xBD26L);
        short4 l_2689 = make_short4(0x8714L, 0x2053L, 0x8714L, 0x2053L);
        int16_t *l_2737 = nullptr;
        int16_t **l_2736 = &l_2737;
        uchar3 l_2738 = make_uchar3(0x03L, 0x7EL, 0x03L);
        uint8_t ****l_2785 = &p_3230->g_646;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_2587[i] = (-10L);
        for (i = 0; i < 1; i++)
            l_2659[i] = &p_3230->g_348[0][8][0];
        for (p_3230->g_135 = 3; (p_3230->g_135 >= 0); p_3230->g_135 -= 1)
        { /* block id: 895 */
            int32_t ****l_2215 = &p_3230->g_1163;
            int4 l_2223 = make_int4(0x82F5772AL, (-6L), 0x82F5772AL, (-6L));
            int64_t *l_2240[10];
            uchar3 l_2306 = make_uchar3(249UL, 0x3DL, 249UL);
            uchar2 l_2321 = make_uchar2(7UL, 0UL);
            uint4 l_2322 = make_uint4(4294967295UL, 0xC26EFFDCL, 4294967295UL, 0xC26EFFDCL);
            int8_t *l_2344 = nullptr;
            uint64_t l_2366 = 18446744073709551612UL;
            int64_t l_2371[8][2] = {{9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}, {9L, 9L}};
            uint32_t l_2372[4][2] = {{0UL, 0UL}, {0UL, 0UL}, {0UL, 0UL}, {0UL, 0UL}};
            int64_t l_2386 = 0L;
            int16_t l_2411 = (-1L);
            int4 l_2417 = make_int4(0x6E072B29L, (-4L), 0x6E072B29L, (-4L));
            uint32_t l_2428 = 0xBBEBD128L;
            uint32_t l_2431 = 0xEDFD5D67L;
            int64_t ***l_2456 = nullptr;
            uchar1 l_2473 = make_uchar1(0x2CL);
            int64_t l_2477[5] = {(-10L), (-1L), (-10L), (-1L), (-10L)};
            short2 l_2497 = make_short2(1L, 0x3384L);
            int i, j;
            for (i = 0; i < 10; i++)
                l_2240[i] = nullptr;
        }
        if ((((make_ushort1((safe_rshift_func_uint16_t_u_s((((((p_65 | make_short4(l_2566.y, l_2566.y, l_2566.y, l_2566.y).z) ^ (nullptr != (*l_2214))) && make_char4(l_2567.x, l_2567.x, l_2567.x, l_2567.x).x) ^ ((~make_char4(p_3230->g_2568.y, p_3230->g_2568.y, p_3230->g_2568.y, p_3230->g_2568.y))).x) <= (safe_add_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(((make_int3(p_3230->g_2573.x, p_3230->g_2573.x, p_3230->g_2573.x).y , 1UL) , ((*p_3230->g_1706)--)), (p_65 != (make_ushort4(65529UL, 0xE475L, 0x03FBL, (((make_ushort4(l_2576.y, l_2576.y, l_2576.y, l_2576.y).w != (&p_3230->g_1706 != &p_3230->g_1706)) > (safe_div_func_int64_t_s_s((safe_lshift_func_int32_t_s_u((4294967290UL != (safe_add_func_uint64_t_u_u(make_ulong2(18446744073709551615UL, 0x9F8B56EF01F10FB6LL).y, ((safe_rshift_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s((p_3230->g_2568.y == p_65), 3)) ^ l_2587[1]), 16)) ^ l_2588)))), 6)), (*p_3230->g_447)))) && 0x09D949F6ACA880C6LL)).z , l_2267)))) > (*p_3230->g_488)), p_65))), p_3230->g_43))) ^ make_ushort1(4UL))).x <= l_2270))
        { /* block id: 1042 */
            int16_t l_2607 = 0x7AF4L;
            int32_t l_2610 = (-9L);
            int32_t l_2616 = (-2L);
            int32_t *l_2621 = nullptr;
            int1 l_2652 = make_int1(0x68B24983L);
            int32_t *l_2682 = &l_2616;
            uchar3 l_2692 = make_uchar3(8UL, 0x86L, 8UL);
            int16_t l_2703 = 0L;
            int3 l_2744 = make_int3(5L, 0x40E9DBD7L, 5L);
            int32_t ***l_2774 = &p_3230->g_348[0][8][0];
            ulong3 l_2776 = make_ulong3(0x504F376FC7DABB57LL, 0x84789FCAC2B555D1LL, 0x504F376FC7DABB57LL);
            int i;
            for (l_2356 = 0; (l_2356 <= 8); l_2356 += 1)
            { /* block id: 1045 */
                uint16_t l_2601 = 0x3E3BL;
                uint2 l_2612 = make_uint2(18446744073709551615UL, 0x390B3B91L);
                uint64_t ***l_2632 = &l_2509;
                int32_t l_2633 = 0xF0EB163CL;
                int32_t l_2641 = (-10L);
                int3 l_2653 = make_int3(0x26259BF7L, 0xE2FAF5EDL, 0x26259BF7L);
                int32_t l_2660 = 0x8E800658L;
                int16_t *l_2668 = nullptr;
                uint32_t l_2679 = 0x729C6FD3L;
                uint8_t ***l_2723 = nullptr;
                int32_t *****l_2739 = &p_3230->g_941;
                int i;
                l_2481 = (safe_add_func_uint64_t_u_u((safe_lshift_func_int32_t_s_u(0x6BCFB13AL, 16)), ((nullptr != l_2214) >= p_65)));
                for (l_2414 = 0; (l_2414 <= 8); l_2414 += 1)
                { /* block id: 1049 */
                    int16_t *l_2608 = &l_2270;
                    int16_t *l_2609[3][5][7] = {{{nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, &l_2430[0][8][2], nullptr, nullptr}}};
                    int32_t l_2611 = 0x0D0979B6L;
                    uint32_t ****l_2631 = &p_3230->g_1026;
                    int64_t *l_2658 = &p_3230->g_2437;
                    short2 l_2661 = make_short2(0x33AAL, 0xF471L);
                    int32_t l_2678 = 1L;
                    int64_t l_2725 = 1L;
                    int i, j, k;
                    if ((safe_sub_func_uint8_t_u_u((((safe_lshift_func_int16_t_s_u(((safe_mod_func_uint64_t_u_u((**p_3230->g_446), (safe_rshift_func_int8_t_s_u(p_65, l_2601)))) , make_short2((l_2610 = (make_ulong2(p_3230->g_2602.x, p_3230->g_2602.x).y & (((safe_mod_func_int64_t_s_s(((*p_3230->g_630) = ((safe_mod_func_uint8_t_u_u(l_2607, 0x06L)) > ((*l_2608) = (l_2607 , 3L)))), (p_3230->g_2441 = (((p_65 == l_2607) == 1L) , p_65)))) , &l_2430[0][8][2]) != nullptr))), p_3230->g_1376.x).y), 8)) & l_2611) && l_2356), l_2612.y)))
                    { /* block id: 1054 */
                        int8_t l_2615 = 0x96L;
                        uint16_t l_2617[6] = {0UL, 65528UL, 0UL, 65528UL, 0UL, 65528UL};
                        int i;
                        l_2611 = make_int2(l_2613.y, l_2613.y).y;
                        if (l_2612.y)
                            continue;
                        p_63 = l_2614[5];
                        l_2617[0]--;
                    }
                    else
                    { /* block id: 1059 */
                        int32_t l_2620 = 6L;
                        l_2621 = func_66(((*l_2608) &= (-1L)), l_2620, p_65, p_3230);
                        l_2633 = (make_uchar3(p_3230->g_2622.x, p_3230->g_2622.x, p_3230->g_2622.x).y ^ ((make_uchar3(p_65, 0UL, p_65) ^ ((safe_add(((make_uchar3(p_65, p_65, (make_ushort2((safe_lshift_func_int64_t_s_u((make_int4(0x77A7F041L, (((((-1L) ^ l_2611) , (safe_add_func_uint16_t_u_u((+(p_3230->g_1331.x || 0x494CL)), ((((((safe_sub_func_uint16_t_u_u(l_2611, p_65)) < 1UL) , l_2631) == &p_3230->g_1026) < p_3230->g_726.w) > p_65)))) , nullptr) == l_2632), p_65, 0x6792CD6BL).y > l_2611), p_65)), p_65).x | p_65)) ^ make_uchar3(0x88L, 0x88L, 0x88L))), make_uchar3(3UL, 3UL, 3UL)))))).x);
                    }
                    l_2660 &= (((l_2612.y & (safe_mul_func_uint32_t_u_u((l_2612.y > ((p_3230->g_774.y , ((*l_2455) = (*l_2455))) == ((safe_add_func_int64_t_s_s((make_uint3(l_2638.x, l_2638.x, l_2638.x).x != ((safe_mul(make_uint2(4294967295UL, (l_2641 ^= l_2633)), make_uint2(((((((**p_3230->g_940) = ((safe_div_func_uint8_t_u_u((make_uchar1((make_short3(1L, 0x124EL, 0x9D0DL).z > (safe_div_func_int8_t_s_s(make_char4(p_65, (p_3230->g_1631.x = (-1L)), (safe_mod_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((make_int2(l_2652.x, l_2652.x) ^ make_int2(l_2653.y, l_2653.y))).y, make_uint4(((safe_mul_func_int16_t_s_s(p_3230->g_1397.z, ((++(*p_3230->g_447)) > ((*p_3230->g_488) &= ((((p_65 > 65534UL) , l_2658) != (*p_3230->g_487)) & p_65))))) != p_65), p_65, 0x64375B7AL, 0x46DD0D3CL).z)), p_65)), 0xAD3AL)), 0x22L).w, p_65)))).x , p_65), p_65)) , (*l_2214))) != l_2659[0]) != p_65) & 0L) != 1UL), 0x380C88E2L)))).x), l_2611)) , nullptr))), p_65))) , 0xAE9ECB3DDB1780ACLL) == l_2601);
                    if (((0L <= (make_short2(l_2661.x, l_2661.x).y >= 0xE3DCL)) ^ (safe_sub_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((safe_rshift_func_int64_t_s_s(((&p_3230->g_906[0] == l_2668) & (((*p_3230->g_630) = (safe_unary_minus_func_uint16_t_u(l_2633))) > (safe_add_func_uint16_t_u_u(65535UL, p_3230->g_1219.x)))), (safe_rshift_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((*p_3230->g_447) & 0x1121B2CF0BF8D7AALL), l_2661.x)), l_2661.x)))), 0xBBC7428DL)), l_2661.y))))
                    { /* block id: 1072 */
                        int64_t l_2676 = 0x18A1321D2AAC3F84LL;
                        int32_t l_2677[3][7][2] = {{{0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}}, {{0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}}, {{0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}, {0x324913F3L, 0xF422C125L}}};
                        int i, j, k;
                        ++l_2679;
                        p_63 = p_63;
                        if (l_2676)
                            continue;
                        if (l_2677[1][4][0])
                            continue;
                    }
                    else
                    { /* block id: 1077 */
                        int32_t l_2683 = 0xBE54BE05L;
                        l_2682 = (p_65 , p_63);
                        l_2660 = l_2683;
                        return p_65;
                    }
                    for (l_2588 = 1; (l_2588 <= 8); l_2588 += 1)
                    { /* block id: 1084 */
                        uchar2 l_2704 = make_uchar2(8UL, 0x3BL);
                        int16_t l_2724 = 0x8624L;
                        int32_t l_2726 = 0x8D2BFBB0L;
                        int32_t l_2727 = 0xB405AA27L;
                        uint64_t l_2728 = 1UL;
                        int i;
                        l_2725 = (safe_mod_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((~((*l_2220) = (((0xC9L <= (l_2679 <= ((make_short2(l_2688.x, l_2688.x) | ((make_short2(l_2689.w, l_2689.w) ^ make_short2(((((safe_div_func_uint8_t_u_u(make_uchar4(l_2692.x, l_2692.x, l_2692.x, l_2692.x).x, make_uchar4(246UL, p_65, 0x17L, 246UL).w)) && ((**l_2509) = ((safe_mod_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((((*p_3230->g_447) >= ((safe_rshift_func_int64_t_s_u((safe_add_func_int64_t_s_s(((safe_rshift_func_uint64_t_u_s((((l_2703 | (l_2611 = (((*l_2608) ^= l_2704.y) ^ ((*l_2682) = ((!(safe_div_func_int8_t_s_s((((*l_2658) |= ((safe_add_func_int8_t_s_s((safe_mod_func_int8_t_s_s(l_2704.x, (safe_unary_minus_func_int64_t_s((((safe_mul_func_uint16_t_u_u(make_ushort3(l_2714.z, l_2714.z, l_2714.z).z, ((((*p_3230->g_1706) = (safe_div_func_int8_t_s_s(((p_3230->g_773.y = ((((safe_mod(make_ulong3(p_3230->g_2719.y, p_3230->g_2719.y, p_3230->g_2719.y), make_ulong3(p_3230->g_2720.y, p_3230->g_2720.y, p_3230->g_2720.y)))) | make_ulong3(((~(*p_3230->g_488)) || ((((**p_3230->g_446) || p_65) >= (*p_3230->g_1706)) == p_65)), 9UL, 1UL))).y) ^ 0x52851FD52713F7D6LL), 5UL))) & l_2612.x) , 0xC5ECL))) , l_2723) != l_2723))))), l_2601)) < 6UL)) , p_65), p_65))) , p_65))))) == p_3230->g_1797.w) ^ 0x77F199AF793C4747LL), (**p_3230->g_487))) & p_3230->g_2602.x), (**p_3230->g_487))), (*p_3230->g_447))) && (**p_3230->g_487))) == 0xAEL), 1UL)), 2UL)) > p_65))) > p_65) <= l_2724), p_3230->g_156[3][3][7]))))).x)) ^ 1UL) || 0x93L))), l_2661.x)), p_3230->g_1278));
                        if (l_2724)
                            continue;
                        l_2728--;
                        (*l_2455) = &l_2241[1][8][1];
                    }
                }
                if (((safe_rshift_func_uint8_t_u_s(((safe_unary_minus_func_int16_t_s(make_short2(0x7930L, 0xB6D5L).x)) < ((((safe_mul_func_uint8_t_u_u(0xCAL, (nullptr == l_2736))) | make_long3(p_65, (make_uchar1(l_2738.x).x <= 247UL), p_65).x) < ((p_3230->g_758.x , nullptr) != (l_2739 = nullptr))) | p_65)), 2)) == 1L))
                { /* block id: 1100 */
                    uint8_t *l_2740 = nullptr;
                    int1 l_2743 = make_int1(0x261C8931L);
                    int3 l_2756 = make_int3(0x1AF76534L, 3L, 0x1AF76534L);
                    int i;
                    (*l_2682) |= ((((((make_int2(0xFE9165D3L, ((nullptr != l_2740) , (safe_lshift_func_uint16_t_u_u(p_65, p_65)))) ^ make_int2(l_2743.x, l_2743.x))) ^ ((make_int2(l_2744.z, l_2744.z) ^ ((safe_rshift(((safe_mod(((safe_mul(make_int2(p_3230->g_2751.x, p_3230->g_2751.x), ((((((make_int2(p_3230->g_2752.x, p_3230->g_2752.x) ^ make_int2(make_int4(p_3230->g_2753.y, p_3230->g_2753.y, p_3230->g_2753.y, p_3230->g_2753.y).x, 0xBE383BF2L))) ^ make_int2(1L, 0x7E59E081L))) | ((safe_rshift(make_int2(l_2756.z, l_2756.z), ((safe_mod(make_int2((make_char4(0x99L, (-2L), (p_65 , (1L & ((safe_lshift(make_ushort1(1UL), ((safe_sub(make_ushort1(65535UL), make_ushort1(((((*p_3230->g_2285) = &l_2587[1]) != &l_2587[1]) & (p_65 != p_3230->g_2763[4]))))))))).x)), 1L).z || 0UL), 1L), make_int2(0L, 0L)))))))))))), make_int2(0x3B02C096L, 0x3B02C096L)))), make_int2(32, 32)))))))) ^ make_int2(0L, 0L))).y;
                }
                else
                { /* block id: 1103 */
                    int64_t l_2775 = 0x28988476C713D014LL;
                    int32_t l_2777 = (-8L);
                    uint8_t *****l_2786[8][7][4] = {{{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}, {{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}, {{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}, {{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}, {{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}, {{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}, {{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}, {{nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}, {nullptr, &l_2328, nullptr, &l_2328}}};
                    int i, j, k;
                    if ((p_65 ^ make_short4(((safe_rshift_func_int16_t_s_u((p_65 , (((safe_div_func_uint32_t_u_u(((*p_3230->g_1706) = make_uint3((p_64 == p_64), 0UL, (((l_2777 = ((safe_rshift(((make_short4(l_2770.y, l_2770.y, l_2770.y, l_2770.y) ^ ((((make_short4(p_3230->g_2771.x, p_3230->g_2771.x, p_3230->g_2771.x, p_3230->g_2771.x) & make_short4((-6L), 0xC427L, 1L, 0xB281L))) ^ make_short4(((safe_lshift_func_int32_t_s_s((l_2774 == nullptr), l_2775)) != ((*l_2682) ^ make_ulong4(l_2776.z, l_2776.z, l_2776.z, l_2776.z).w)), p_65, 0x1CEEL, p_65))))), make_short4(0L, 0L, 0L, 0L)))).x) , 65535UL) , p_65)).y), 4294967295UL)) != l_2775) <= (-5L))), l_2775)) ^ p_65), 0xD2F6L, p_3230->g_353.y, 0x4DC5L).z))
                    { /* block id: 1106 */
                        int8_t *l_2782 = &p_3230->g_38;
                        int32_t l_2783 = 0x1ABB8E88L;
                        l_2783 |= (safe_mod_func_int8_t_s_s(((&l_2668 != l_2780[3][0]) , p_65), ((*l_2782) = p_65)));
                    }
                    else
                    { /* block id: 1109 */
                        int64_t l_2784 = 0x905D1108425C15C5LL;
                        if (l_2784)
                            break;
                    }
                    l_2785 = l_2785;
                }
            }
            for (p_3230->g_1020 = 1; (p_3230->g_1020 <= 8); p_3230->g_1020 += 1)
            { /* block id: 1117 */
                return (**p_3230->g_487);
            }
        }
        else
        { /* block id: 1120 */
            return p_65;
        }
        if (l_2787[2][3][0])
            continue;
    }
    return (*p_3230->g_630);
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_908 p_3230->g_1250
 * writes: p_3230->g_908
 */
__device__ int32_t * func_66(int16_t  p_67, uint32_t  p_68, int8_t  p_69, struct S0 * p_3230)
{ /* block id: 610 */
    uint32_t **l_1640 = nullptr;
    int32_t l_1641[5][3][8] = {{{0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}}, {{0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}}, {{0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}}, {{0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}}, {{0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}, {0x4461E306L, 0x4CE9B4A3L, (-7L), (-7L), 0x4CE9B4A3L, 0x4461E306L, 0x4CE9B4A3L, (-7L)}}};
    int64_t l_1646[8] = {(-7L), 0x1CA529205689198DLL, (-7L), 0x1CA529205689198DLL, (-7L), 0x1CA529205689198DLL, (-7L), 0x1CA529205689198DLL};
    uint64_t l_1653 = 1UL;
    int32_t l_1680 = 0x32508DF7L;
    uint32_t l_1685 = 8UL;
    int32_t *l_1687 = &p_3230->g_908;
    uint4 l_1713 = make_uint4(0x4587A422L, 7UL, 0x4587A422L, 7UL);
    long2 l_1717 = make_long2(1L, 1L);
    int32_t l_1732 = 0x9ABC6FCFL;
    uint16_t ***l_1737 = &p_3230->g_1250[2];
    int1 l_1784 = make_int1(0x056E730EL);
    int32_t l_1794 = (-4L);
    ulong4 l_1810 = make_ulong4(0xF025F7D3E9CA1CB2LL, 3UL, 0xF025F7D3E9CA1CB2LL, 3UL);
    ushort3 l_1915 = make_ushort3(0x6E20L, 0x084AL, 0x6E20L);
    short2 l_1959 = make_short2(0x0A7EL, (-2L));
    uint32_t l_2036 = 4294967287UL;
    uint16_t l_2056 = 6UL;
    uchar1 l_2076 = make_uchar1(0x84L);
    uchar3 l_2089 = make_uchar3(0x10L, 0xC7L, 0x10L);
    uint16_t l_2110 = 0x9A69L;
    int32_t l_2194 = 0x129FDFF1L;
    uint32_t l_2203 = 4294967290UL;
    uint16_t **l_2209 = &p_3230->g_1251[2][1][1];
    uint16_t ***l_2208 = &l_2209;
    int32_t *l_2210 = nullptr;
    int i, j, k;
lbl_1644:
    l_1641[2][0][2] &= (l_1640 != l_1640);
    for (p_3230->g_908 = 0; (p_3230->g_908 < (-3)); p_3230->g_908 = safe_sub_func_int64_t_s_s(p_3230->g_908, 5))
    { /* block id: 614 */
        int32_t l_1645[5][6] = {{0L, 1L, 4L, 1L, 0L, 1L}, {0L, 1L, 4L, 1L, 0L, 1L}, {0L, 1L, 4L, 1L, 0L, 1L}, {0L, 1L, 4L, 1L, 0L, 1L}, {0L, 1L, 4L, 1L, 0L, 1L}};
        int32_t *l_1647 = nullptr;
        int32_t *l_1648 = &l_1645[0][4];
        int32_t *l_1649 = &l_1645[0][3];
        int32_t *l_1650 = nullptr;
        int32_t *l_1651 = nullptr;
        int32_t *l_1652[4][10] = {{&l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2]}, {&l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2]}, {&l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2]}, {&l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2], &l_1645[3][2], nullptr, &l_1645[3][2]}};
        short1 l_1675 = make_short1(0xD9E1L);
        int8_t *l_1678 = nullptr;
        int32_t *l_1690[5] = {&l_1641[2][0][2], &p_3230->g_135, &l_1641[2][0][2], &p_3230->g_135, &l_1641[2][0][2]};
        ulong2 l_1695 = make_ulong2(0x157AB9A4E4B28EFBLL, 18446744073709551606UL);
        int32_t ***l_1718 = &p_3230->g_348[0][8][0];
        uint8_t l_1731[1][4][4] = {{{0UL, 0xB5L, 0x47L, 0x47L}, {0UL, 0xB5L, 0x47L, 0x47L}, {0UL, 0xB5L, 0x47L, 0x47L}, {0UL, 0xB5L, 0x47L, 0x47L}}};
        uint16_t ***l_1744 = &p_3230->g_1250[2];
        long2 l_1745 = make_long2(0x8BB97DB259B9BD41LL, 4L);
        int64_t l_1752 = 0xD07CA87A28A127A7LL;
        short4 l_1766 = make_short4(0xF8AFL, 0xD194L, 0xF8AFL, 0xD194L);
        int8_t *l_1775 = nullptr;
        ulong4 l_1808 = make_ulong4(0x393E16D15B37FC51LL, 0UL, 0x393E16D15B37FC51LL, 0UL);
        ulong4 l_1809 = make_ulong4(18446744073709551615UL, 1UL, 18446744073709551615UL, 1UL);
        ulong1 l_1817 = make_ulong1(18446744073709551608UL);
        int16_t *l_1828[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
        int16_t **l_1827 = &l_1828[5];
        ulong3 l_1898 = make_ulong3(18446744073709551611UL, 0x1C2D86971DD01906LL, 18446744073709551611UL);
        ushort2 l_1914 = make_ushort2(65535UL, 0x5496L);
        int32_t *l_1938 = nullptr;
        uint32_t l_1965 = 0xD65D3A8CL;
        uint2 l_1971 = make_uint2(0xB83B0C4DL, 0xADB7770BL);
        uchar4 l_2027 = make_uchar4(0x8AL, 0x88L, 0x8AL, 0x88L);
        int i, j, k;
        if (p_3230->g_908)
            goto lbl_1644;
        l_1653++;
    }
    (*l_1687) = ((*l_1737) != ((*l_2208) = (*l_1737)));
    return l_2210;
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_488 p_3230->g_249 p_3230->g_446 p_3230->g_447 p_3230->g_23 p_3230->g_107 p_3230->g_364 p_3230->g_347 p_3230->g_773 p_3230->g_848 p_3230->g_630 p_3230->g_322 p_3230->g_235 p_3230->g_572 p_3230->g_135 p_3230->g_11 p_3230->g_487 p_3230->g_156 p_3230->g_919 p_3230->g_921 p_3230->g_939 p_3230->g_940 p_3230->g_941 p_3230->g_951 p_3230->g_541 p_3230->g_772 p_3230->g_39 p_3230->g_4 p_3230->g_338 p_3230->g_726 p_3230->g_906 p_3230->g_1020 p_3230->g_1026 p_3230->g_1279 p_3230->g_1539 p_3230->g_56 p_3230->g_1328
 * writes: p_3230->g_107 p_3230->g_156 p_3230->g_135 p_3230->g_348 p_3230->g_23 p_3230->g_940 p_3230->g_941 p_3230->g_43 p_3230->g_906 p_3230->g_249 p_3230->g_1279 p_3230->g_42 p_3230->g_322
 */
__device__ uint32_t  func_70(int32_t  p_71, int8_t  p_72, uint32_t * p_73, uint8_t  p_74, struct S0 * p_3230)
{ /* block id: 304 */
    uint64_t l_788 = 1UL;
    int64_t **l_800[8][1][7] = {{{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}, {{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}, {{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}, {{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}, {{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}, {{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}, {{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}, {{&p_3230->g_488, nullptr, &p_3230->g_630, &p_3230->g_630, &p_3230->g_630, nullptr, &p_3230->g_488}}};
    uint8_t l_807[7][10][3] = {{{0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}}, {{0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}}, {{0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}}, {{0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}}, {{0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}}, {{0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}}, {{0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}, {0x44L, 1UL, 0UL}}};
    int32_t l_820 = 0x0177B751L;
    int32_t l_821[2];
    uchar1 l_845 = make_uchar1(0x5BL);
    int32_t l_857[6][1] = {{0x58CDDD75L}, {0x58CDDD75L}, {0x58CDDD75L}, {0x58CDDD75L}, {0x58CDDD75L}, {0x58CDDD75L}};
    int32_t *l_886[4];
    int64_t l_944 = (-4L);
    uchar2 l_988 = make_uchar2(0x08L, 255UL);
    uchar4 l_1009 = make_uchar4(1UL, 0x37L, 1UL, 0x37L);
    int32_t ****l_1019 = &p_3230->g_347;
    uint16_t **l_1042 = nullptr;
    int16_t *l_1045 = &p_3230->g_906[0];
    short3 l_1050 = make_short3((-2L), 6L, (-2L));
    uint16_t l_1128 = 0xEF6EL;
    uint4 l_1141 = make_uint4(1UL, 18446744073709551609UL, 1UL, 18446744073709551609UL);
    int64_t l_1166 = 0xCC47485EAAD94BFFLL;
    uint32_t l_1167[1];
    int3 l_1168 = make_int3(0x81A2DF52L, 0L, 0x81A2DF52L);
    uint64_t **l_1203 = &p_3230->g_447;
    short2 l_1215 = make_short2(0xDC3DL, 4L);
    long1 l_1314 = make_long1(0x24AA5E900BAEB3E7LL);
    int2 l_1315 = make_int2((-1L), 0x69E4B189L);
    uint4 l_1321 = make_uint4(0UL, 0x1C7029F7L, 0UL, 0x1C7029F7L);
    int32_t l_1322[7] = {0L, 0L, 0xC2B0BCF4L, 0L, 0L, 0xC2B0BCF4L, 0L};
    uint8_t l_1366 = 0x68L;
    int2 l_1436 = make_int2(0xA069A141L, 0xDCCE880DL);
    int8_t l_1438 = 0xB1L;
    uint32_t l_1504 = 0x2E93A971L;
    short4 l_1516 = make_short4(0x4426L, 0L, 0x4426L, 0L);
    int8_t l_1521 = (-3L);
    uint8_t l_1523 = 0UL;
    uint32_t *l_1529 = &l_1504;
    uint32_t **l_1528 = &l_1529;
    long4 l_1600 = make_long4(0L, 0x1756A8BF58150326LL, 0L, 0x1756A8BF58150326LL);
    int2 l_1632 = make_int2(0x6225D8A3L, 0x57A35F3AL);
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_821[i] = (-1L);
    for (i = 0; i < 4; i++)
        l_886[i] = &l_857[0][0];
    for (i = 0; i < 1; i++)
        l_1167[i] = 2UL;
    if ((safe_mul_func_int16_t_s_s(6L, p_71)))
    { /* block id: 305 */
        return p_72;
    }
    else
    { /* block id: 307 */
        int4 l_797 = make_int4((-10L), 0xD88C6A46L, (-10L), 0xD88C6A46L);
        int64_t **l_801 = &p_3230->g_630;
        int64_t ***l_802 = &l_801;
        uint8_t *l_803 = &p_3230->g_107;
        uint32_t *l_806[7][8][4] = {{{&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}}, {{&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}}, {{&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}}, {{&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}}, {{&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}}, {{&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}}, {{&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}, {&p_3230->g_323, nullptr, nullptr, &p_3230->g_249[3]}}};
        uint64_t l_829 = 0UL;
        ushort1 l_833 = make_ushort1(65526UL);
        int8_t l_881 = 0xAEL;
        int32_t *l_885 = &l_820;
        int32_t *l_890 = &l_821[0];
        int64_t l_902 = 0x4CF590624F5F68C3LL;
        uint64_t l_912 = 4UL;
        int1 l_920 = make_int1(0xAFC5C903L);
        ulong2 l_945 = make_ulong2(0x568FFC9BF7645D13LL, 18446744073709551606UL);
        ushort2 l_962 = make_ushort2(1UL, 0x6596L);
        int32_t l_992 = 0xED7ED2A3L;
        short2 l_1016 = make_short2(0x218EL, 0x1FB2L);
        int8_t l_1021 = 0xD0L;
        int i, j, k;
        if (make_int4(1L, (safe_mul_func_int32_t_s_s(((make_int1(0xC547451FL) ^ make_int1(l_788))).x, 4294967295UL)), (0xED3C1365L ^ ((safe_mul_func_int64_t_s_s((((safe_rshift_func_int32_t_s_u((safe_sub_func_uint32_t_u_u(7UL, make_int2(l_797.z, l_797.z).y)), (l_807[3][9][1] = ((((*p_3230->g_488) = (safe_div_func_uint8_t_u_u(((*l_803) = (l_800[4][0][0] == ((*l_802) = l_801))), ((safe_rshift_func_int16_t_s_u(0xF7DBL, 10)) , 0xF3L)))) != ((p_74 | p_72) < p_3230->g_249[3])) & 0x5505EBD0E7A43BCDLL)))) >= (-1L)) && l_807[3][6][2]), 18446744073709551615UL)) , 0UL)), p_71).z)
        { /* block id: 312 */
            int32_t *l_808 = &p_3230->g_135;
            int32_t l_815 = 0xD45CA09DL;
            int1 l_822 = make_int1(0xF452E8EBL);
            int32_t ***l_832 = nullptr;
            ulong1 l_849 = make_ulong1(0xFF4DB78721F9AC02LL);
            short1 l_869 = make_short1(0xA9F1L);
            uint32_t *l_981 = &p_3230->g_39;
            uint32_t **l_980 = &l_981;
            uint32_t ***l_979 = &l_980;
            uchar2 l_984 = make_uchar2(0xFCL, 250UL);
            uchar4 l_987 = make_uchar4(1UL, 0x96L, 1UL, 0x96L);
            uint32_t l_991 = 0x65733013L;
            int i;
lbl_901:
            (*l_808) = 0xB2A39DB3L;
            if (((**p_3230->g_446) , l_807[1][4][2]))
            { /* block id: 314 */
                uint16_t l_811 = 0x89C9L;
                int32_t l_813 = 1L;
                int32_t l_825 = 0xFC9FE1FFL;
                int32_t l_827 = 0x639A78AFL;
                int32_t l_828 = 0L;
                int16_t l_880 = (-1L);
                int32_t l_893 = 1L;
                int32_t l_895 = 0x1059ECB2L;
                int32_t l_896 = (-1L);
                int32_t l_897 = 0x88ECA557L;
                int32_t l_903 = 1L;
                int32_t l_904 = 1L;
                int32_t l_905 = 0L;
                int32_t l_907 = 3L;
                int32_t l_909 = 0x5D94A21BL;
                int32_t l_910 = 1L;
                int32_t l_911[6][9][4] = {{{0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}}, {{0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}}, {{0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}}, {{0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}}, {{0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}}, {{0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}, {0xF3EBD34AL, 0x3719B248L, 0x1AC3ADD0L, (-1L)}}};
                long3 l_926 = make_long3(0x168C8D3B19DD9898LL, 0xD168A7475A9946EALL, 0x168C8D3B19DD9898LL);
                int i, j, k;
                if (((safe_rshift_func_int16_t_s_s(l_811, 4)) <= p_74))
                { /* block id: 315 */
                    int8_t l_812[7];
                    int32_t l_814 = 0x31E4A75AL;
                    int32_t l_823 = 0x4C20A124L;
                    int32_t l_824 = 0x78C91999L;
                    int32_t l_826[8];
                    int8_t *l_834 = &hip_const_1;
                    ulong3 l_892 = make_ulong3(0xC4E32082CC50967FLL, 18446744073709551615UL, 0xC4E32082CC50967FLL);
                    short4 l_894 = make_short4(0x0E26L, 7L, 0x0E26L, 7L);
                    uint32_t l_898 = 18446744073709551609UL;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_812[i] = 6L;
                    for (i = 0; i < 8; i++)
                        l_826[i] = 0xCC746F24L;
                    for (p_3230->g_107 = 0; (p_3230->g_107 <= 2); p_3230->g_107 += 1)
                    { /* block id: 318 */
                        int64_t l_816 = 0x300AD09A24E2D2A3LL;
                        int32_t *l_817 = &p_3230->g_135;
                        int32_t *l_818 = nullptr;
                        int32_t *l_819[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_819[i] = &p_3230->g_135;
                        l_812[5] = p_74;
                        l_829--;
                        return p_74;
                    }
lbl_875:
                    for (l_829 = 0; (l_829 <= 0); l_829 += 1)
                    { /* block id: 325 */
                        l_808 = &l_823;
                    }
                    if ((((0x55L ^ 1L) < (((l_832 == nullptr) || (p_3230->g_364 >= l_807[2][2][0])) && make_ushort1(l_833.x).x)) != ((l_829 , (l_797.z = 0x3BL)) >= 255UL)))
                    { /* block id: 329 */
                        uint2 l_858 = make_uint2(0x64E8E6CEL, 4294967294UL);
                        uint16_t *l_859[5];
                        int32_t l_860[5][2][4] = {{{(-8L), (-8L), 0x5C629B79L, (-8L)}, {(-8L), (-8L), 0x5C629B79L, (-8L)}}, {{(-8L), (-8L), 0x5C629B79L, (-8L)}, {(-8L), (-8L), 0x5C629B79L, (-8L)}}, {{(-8L), (-8L), 0x5C629B79L, (-8L)}, {(-8L), (-8L), 0x5C629B79L, (-8L)}}, {{(-8L), (-8L), 0x5C629B79L, (-8L)}, {(-8L), (-8L), 0x5C629B79L, (-8L)}}, {{(-8L), (-8L), 0x5C629B79L, (-8L)}, {(-8L), (-8L), 0x5C629B79L, (-8L)}}};
                        int32_t *l_872 = nullptr;
                        int32_t *l_873 = nullptr;
                        int32_t *l_874[10][5][5] = {{{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}, {{&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}, {&l_828, nullptr, &l_857[3][0], &l_857[3][0], nullptr}}};
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_859[i] = nullptr;
                        (*p_3230->g_347) = nullptr;
                        l_860[0][0][1] &= (((l_825 = (safe_mul_func_int16_t_s_s(8L, (l_858.x = (safe_add_func_int16_t_s_s((p_3230->g_773.y | (safe_div_func_uint8_t_u_u((((&p_3230->g_39 == ((safe_rshift_func_int32_t_s_u((safe_add_func_int8_t_s_s(((l_826[4] ^= ((make_uchar3(l_845.x, l_845.x, l_845.x).y || ((safe_sub_func_uint16_t_u_u(((make_ushort3(p_3230->g_848.x, p_3230->g_848.x, p_3230->g_848.x) ^ make_ushort3(65535UL, 0x2ECDL, 0xA505L))).z, (((*p_3230->g_630) = l_824) || p_74))) == make_ulong3(l_849.x, l_849.x, l_849.x).y)) ^ (safe_unary_minus_func_int32_t_s(((0xF4L >= 4UL) != ((safe_div_func_int16_t_s_s(((((*p_3230->g_447) = make_ulong3((0xA0L | (safe_sub_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((0L || l_797.z), 1UL)), p_72))), 0xA4F63DE72054E093LL, 0x527ED7BEF9015434LL).z) || p_74) || p_74), p_3230->g_322)) >= 0x29L)))))) || 0UL), p_3230->g_235.w)), p_3230->g_572.x)) , nullptr)) | (*l_808)) || p_71), l_857[3][0]))), 0xB0DBL)))))) < p_72) != l_833.x);
                        l_797.w ^= ((safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((~(safe_mul_func_int8_t_s_s(((((*l_808) > (((**l_801) = ((safe_sub_func_uint16_t_u_u((!(((make_short4(l_869.x, l_869.x, l_869.x, l_869.x).x | p_71) <= (((((((((p_3230->g_11[2][4] | ((p_71 > (nullptr == &p_3230->g_347)) >= p_71)) < ((((*l_808) && ((((((make_char4(0x11L, 0xF2L, (safe_rshift_func_int32_t_s_s((0x5FF2L <= p_71), 16)), p_3230->g_773.y) ^ make_char4(1L, 1L, 1L, 1L))).z && 0UL) && p_72) , l_833.x) && p_72)) , 4294967288UL) || l_845.x)) & 1UL) & p_71) < l_820) <= l_811) || p_72) <= p_74) , p_71)) && l_829)), 0L)) <= 0x41BCL)) , 0x067853D4L)) >= l_814) | l_860[0][0][1]), (-1L)))) > 0xAA01L), (-9L))), 1UL)) < p_71);
                        if (l_823)
                            goto lbl_875;
                    }
                    else
                    { /* block id: 340 */
                        int32_t *l_876 = &l_826[6];
                        int32_t *l_877 = &l_814;
                        int32_t *l_878 = &l_814;
                        int32_t *l_879[8] = {&l_826[2], &l_826[2], &l_823, &l_826[2], &l_826[2], &l_823, &l_826[2], &l_826[2]};
                        uint8_t l_882 = 9UL;
                        int32_t **l_887 = &l_879[5];
                        int i;
                        l_882++;
                        l_808 = (l_886[0] = (l_879[2] = l_885));
                        (*l_887) = &l_823;
                    }
                    for (p_3230->g_107 = 0; (p_3230->g_107 <= 59); p_3230->g_107 = safe_add_func_int64_t_s_s(p_3230->g_107, 4))
                    { /* block id: 349 */
                        int32_t **l_891 = &l_885;
                        (*l_808) = p_72;
                        (*l_891) = l_890;
                        (*l_885) = (make_ulong1(l_892.y).x | (**p_3230->g_487));
                        --l_898;
                    }
                }
                else
                { /* block id: 355 */
                    if (l_829)
                        goto lbl_901;
                }
                ++l_912;
                (*l_885) = ((safe_sub(((safe_add(make_int3(p_3230->g_919.x, p_3230->g_919.x, p_3230->g_919.x), ((make_int3(l_920.x, l_920.x, l_920.x) ^ make_int3(p_3230->g_921.x, p_3230->g_921.x, p_3230->g_921.x)))))), make_int3((-1L), ((safe_mul_func_int16_t_s_s(((((safe_div_func_uint64_t_u_u(((nullptr == &p_3230->g_347) < (make_long3(l_926.x, l_926.x, l_926.x).y | ((**p_3230->g_487) = (safe_mod_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(p_3230->g_921.x, ((safe_sub_func_int32_t_s_s((*l_890), make_int4((safe_mod_func_uint8_t_u_u(((safe_mul_func_uint32_t_u_u(l_895, ((((safe_mod(make_short2(1L, 0x93EFL), make_short2(p_3230->g_939.z, p_3230->g_939.z)))).y , (**p_3230->g_446)) >= (((p_3230->g_940 = p_3230->g_940) == nullptr) & (safe_add_func_int32_t_s_s(p_74, p_71)))))) | 6UL), p_3230->g_156[3][2][2])), 0xD3EE6B74L, 1L, 0x076B26A8L).x)) && p_74))), p_3230->g_322))))), 0x0ED03A20E90DF0DFLL)) , (*l_890)) && l_944) <= 0xD6325322C80D9593LL), 65535UL)) != 1UL), 0x4C3F6264L)))).x;
            }
            else
            { /* block id: 362 */
                int32_t ****l_946 = &l_832;
                uint32_t l_971 = 0x039C5C0EL;
                uint16_t *l_972 = nullptr;
                uint16_t *l_973 = nullptr;
                uint16_t *l_974 = &p_3230->g_43;
                (*l_890) &= (((make_ulong4(l_945.y, l_945.y, l_945.y, l_945.y) | ((((~make_ulong4(0x1C4659FB41A1C08DLL, ((**p_3230->g_446) = p_72), ((((*p_3230->g_940) = (*p_3230->g_940)) != l_946) | (p_74 == (!(((safe_div_func_uint32_t_u_u((safe_add_func_uint16_t_u_u(make_ushort3(p_3230->g_951.z, p_3230->g_951.z, p_3230->g_951.z).x, (p_72 || (((!(safe_rshift_func_uint64_t_u_s((safe_mod_func_uint64_t_u_u((safe_add_func_int32_t_s_s((0x53L && (((safe_lshift(((safe_mod(make_ushort3(l_962.x, l_962.x, l_962.x), ((((make_ushort3(p_3230->g_541.y, ((*l_974) = make_ushort4(((safe_sub_func_int32_t_s_s(((safe_lshift_func_int32_t_s_s((safe_add_func_uint8_t_u_u((+(246UL ^ (safe_lshift_func_uint8_t_u_u(l_971, 6)))), p_72)), p_72)) | (**p_3230->g_446)), p_72)) != (*p_3230->g_447)), p_3230->g_772.x, p_3230->g_156[5][2][6], 1UL).z), 0x32F6L) ^ make_ushort3(65535UL, 65535UL, 65535UL))) | make_ushort3(0x755EL, 0x755EL, 0x755EL)))))), make_ushort3(65534UL, 65534UL, 65534UL)))).x || p_71)), 0L)), 18446744073709551615UL)), (*p_3230->g_630)))) && p_71) == p_72)))), 0xF983A696L)) || (*l_885)) > (-2L))))), 0x7723702B36967554LL))) | make_ulong4(0UL, 0UL, 0UL, 0UL))))).y < p_71);
                if (p_72)
                    goto lbl_975;
lbl_975:
                (*l_885) = 0xF7926E67L;
                (*l_885) = (~(safe_unary_minus_func_int32_t_s((0xC981L || ((*p_73) , (((***l_802) = ((safe_mul_func_int64_t_s_s((nullptr == l_979), p_71)) == (((p_74 < (make_ushort3(0xB438L, ((safe_sub_func_uint8_t_u_u(make_uchar4(p_3230->g_4.y, l_984.y, ((*l_803) = ((safe_sub(make_uchar4(l_987.z, l_987.z, l_987.z, l_987.z), make_uchar4(l_988.y, l_988.y, l_988.y, l_988.y)))).x), 0xB7L).x, ((l_992 = ((safe_mul_func_int32_t_s_s(make_int3(p_72, (-8L), 0xB58F4079L).x, l_991)) <= 0x0139B03D38DBD25BLL)) & p_3230->g_39))) <= p_3230->g_338.x), 0x58F7L).z , p_3230->g_726.x)) && p_3230->g_921.y) <= (**p_3230->g_446)))) || p_72))))));
            }
        }
        else
        { /* block id: 374 */
            long3 l_995 = make_long3(0xA02AA8ADCA1DC0E1LL, 0xAE17A1FA99170BD2LL, 0xA02AA8ADCA1DC0E1LL);
            int16_t *l_1010 = &p_3230->g_906[2];
            int i;
            (*l_885) &= (safe_rshift_func_uint32_t_u_s(((make_uchar2(255UL, (p_71 | make_ushort3(6UL, 8UL, 0x20D1L).y)).x != (p_3230->g_135 && (make_ulong1(0UL).x || make_long3(l_995.x, l_995.x, l_995.x).x))) , (((safe_unary_minus_func_uint16_t_u(65530UL)) ^ (*l_890)) , 4294967292UL)), 23));
            (*l_885) |= (safe_sub_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u(make_ulong2((safe_div_func_int16_t_s_s((safe_add_func_int16_t_s_s(p_3230->g_235.z, ((safe_lshift_func_uint32_t_u_s((&p_3230->g_488 == l_800[4][0][0]), 29)) != 0UL))), ((*l_1010) &= (safe_lshift_func_uint8_t_u_s(((*l_803) |= make_uchar1(l_1009.w).x), make_char3(0xC8L, 0L, (-7L)).x))))), ((0x24L >= (safe_lshift_func_uint8_t_u_u((0L < (safe_unary_minus_func_uint64_t_u(((safe_mul_func_uint64_t_u_u(((*p_3230->g_447) &= (make_short2(l_1016.x, l_1016.x).x , (&p_3230->g_39 == (((safe_mul_func_int16_t_s_s(((((*p_3230->g_940) = l_1019) == l_1019) , 0x53CCL), 8L)) , p_3230->g_919.z) , p_73)))), (**p_3230->g_487))) <= p_3230->g_1020)))), 4))) , p_74)).x, (*l_890))) , l_995.z), l_1021));
        }
    }
    if (((**p_3230->g_446) < (**p_3230->g_487)))
    { /* block id: 383 */
        uint16_t *l_1023 = nullptr;
        uint16_t **l_1022 = &l_1023;
        uint16_t ***l_1024 = &l_1022;
        int32_t l_1025 = 0xA477361CL;
        char2 l_1032 = make_char2(7L, (-10L));
        uint16_t **l_1035 = &l_1023;
        uint32_t *l_1041[3][6][8] = {{{&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}}, {{&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}}, {{&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}, {&p_3230->g_39, &p_3230->g_39, &p_3230->g_39, nullptr, &p_3230->g_39, nullptr, &p_3230->g_39, &p_3230->g_39}}};
        uint32_t **l_1040 = &l_1041[1][4][1];
        uint32_t *l_1043 = &p_3230->g_249[3];
        int32_t l_1044 = (-1L);
        long1 l_1060 = make_long1(0L);
        uint64_t *l_1061[1];
        uint8_t **l_1069 = nullptr;
        int32_t l_1078 = 8L;
        int32_t l_1083 = 0xDB06606CL;
        int32_t l_1088 = 0L;
        int32_t l_1090 = 0x82236FB5L;
        int32_t l_1092 = 0x26061DC3L;
        int32_t l_1093 = (-1L);
        int32_t l_1098[4];
        uint8_t l_1100 = 1UL;
        int32_t *****l_1123[2];
        int32_t l_1165 = 0xEF877A3CL;
        uint8_t l_1183 = 0UL;
        uint16_t l_1233 = 0x7FA2L;
        int32_t l_1234 = 0xC1B656DBL;
        int2 l_1308 = make_int2(1L, 0x671B0523L);
        ulong2 l_1320 = make_ulong2(3UL, 0x854CACD8DB50D7A3LL);
        int1 l_1335 = make_int1(0xA3477A47L);
        uchar3 l_1343 = make_uchar3(0x06L, 0x7FL, 0x06L);
        uint32_t ***l_1358 = &l_1040;
        uint2 l_1377 = make_uint2(4294967288UL, 0UL);
        uint32_t l_1402 = 18446744073709551612UL;
        int32_t l_1405 = 0x95681E99L;
        char1 l_1431 = make_char1(0x1EL);
        ushort1 l_1432 = make_ushort1(0xFF31L);
        uint32_t l_1463 = 0x1DA4D454L;
        uint16_t l_1466 = 0xD44FL;
        uchar1 l_1474 = make_uchar1(0x8CL);
        uint32_t l_1482 = 18446744073709551615UL;
        uchar2 l_1495 = make_uchar2(0x71L, 0xC6L);
        uint16_t *l_1522[8][3] = {{nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr}};
        int32_t l_1530 = 0x95BEC4F4L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1061[i] = nullptr;
        for (i = 0; i < 4; i++)
            l_1098[i] = 0xD0048E88L;
        for (i = 0; i < 2; i++)
            l_1123[i] = &p_3230->g_941;
        l_1044 |= (((*l_1043) = ((((*l_1024) = l_1022) == ((((p_74 < l_1025) && ((p_3230->g_1026 == nullptr) < make_char2(((make_char3(p_3230->g_1028.z, p_3230->g_1028.z, p_3230->g_1028.z) ^ ((safe_mul(((make_char3(p_3230->g_1031.x, p_3230->g_1031.x, p_3230->g_1031.x) ^ make_char3(l_1032.x, l_1032.x, l_1032.x))), make_char3((((((safe_add_func_uint16_t_u_u(p_3230->g_1020, ((&p_3230->g_43 != ((*l_1035) = &p_3230->g_43)) , (safe_add_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s(((((p_71 > p_72) , p_3230->g_951.z) || 0xFE49133AL) , 0x042DCA21L), p_3230->g_4.x)) & p_74), 0x9D5EL))))) , l_1040) != nullptr) , l_1025) ^ 0x327E4B97L), p_3230->g_494.y, (-1L))))))).z, 3L).x)) && 3UL) , l_1042)) , p_74)) ^ p_72);
    }
    else
    { /* block id: 569 */
        uint64_t l_1542 = 0x751C0E64E128079DLL;
        int32_t l_1570[9][1] = {{0x9AA8DE51L}, {0x9AA8DE51L}, {0x9AA8DE51L}, {0x9AA8DE51L}, {0x9AA8DE51L}, {0x9AA8DE51L}, {0x9AA8DE51L}, {0x9AA8DE51L}, {0x9AA8DE51L}};
        int32_t *l_1636 = nullptr;
        int i, j;
        for (p_3230->g_1279 = 0; (p_3230->g_1279 <= 2); p_3230->g_1279 += 1)
        { /* block id: 572 */
            int32_t *****l_1538[9] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
            uint64_t l_1552 = 18446744073709551614UL;
            ulong1 l_1562 = make_ulong1(0x25282F73BBB752BELL);
            int1 l_1605 = make_int1(0x0A676C9DL);
            uint8_t l_1624[7];
            uint8_t l_1637[5][10] = {{0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L}, {0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L}, {0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L}, {0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L}, {0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L, 0x73L, 0x98L, 0x73L}};
            int i, j;
            for (i = 0; i < 7; i++)
                l_1624[i] = 0xA3L;
            for (p_3230->g_42 = 2; (p_3230->g_42 >= 0); p_3230->g_42 -= 1)
            { /* block id: 575 */
                int32_t *****l_1537 = &p_3230->g_941;
                uint32_t *l_1551 = &p_3230->g_249[3];
                uint32_t **l_1550 = &l_1551;
                uint8_t l_1569[10] = {0UL, 0UL, 1UL, 0UL, 0UL, 1UL, 0UL, 0UL, 1UL, 0UL};
                uint32_t l_1582 = 18446744073709551608UL;
                int32_t l_1585 = 4L;
                int32_t l_1587 = (-9L);
                uint32_t **l_1597 = &l_1529;
                uint32_t l_1612 = 0xE05C1F52L;
                ulong3 l_1625 = make_ulong3(0x2CE391AD3294E047LL, 0xA551DDB791931946LL, 0x2CE391AD3294E047LL);
                int i;
                for (p_3230->g_322 = 0; (p_3230->g_322 <= 2); p_3230->g_322 += 1)
                { /* block id: 578 */
                    uint32_t *l_1548 = nullptr;
                    uint32_t **l_1547[1][2][10];
                    uint32_t ***l_1549 = &l_1547[0][1][5];
                    int32_t **l_1561 = nullptr;
                    int32_t *l_1584 = &p_3230->g_908;
                    int32_t l_1586 = (-2L);
                    int32_t l_1588 = 0x4ABD5E7AL;
                    int32_t l_1589[8][7][4] = {{{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}, {{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}, {{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}, {{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}, {{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}, {{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}, {{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}, {{0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}, {0x290CAAB5L, 0xBCE0CA41L, 0x66CD2DD4L, 0xBCE0CA41L}}};
                    uint8_t l_1590 = 255UL;
                    ulong2 l_1623 = make_ulong2(18446744073709551615UL, 0x3886C341DA2455FELL);
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 10; k++)
                                l_1547[i][j][k] = &l_1548;
                        }
                    }
                    if (((safe_div_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(((nullptr != (*p_3230->g_487)) != (p_72 > (safe_lshift_func_int16_t_s_s(((p_3230->g_940 = &p_3230->g_941) == (l_1538[1] = l_1537)), 15)))), make_long1(p_3230->g_1539.y).x)), p_74)) ^ (safe_sub_func_int32_t_s_s(l_1542, (safe_div_func_int8_t_s_s(((safe_mul_func_int64_t_s_s(((((*l_1549) = l_1547[0][1][5]) == l_1550) <= 1L), 0UL)) && l_1552), 247UL))))))
                    { /* block id: 582 */
                        uint32_t l_1567 = 0xFF260191L;
                        uint8_t l_1568 = 1UL;
                        l_1569[7] = (safe_sub_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((safe_mul_func_int32_t_s_s(((safe_sub_func_int32_t_s_s((((make_short4((l_1561 == (**l_1019)), ((((-1L) ^ 7UL) , make_ushort3(0xDE27L, 65527UL, p_72).y) ^ (p_71 || ((**p_3230->g_487) <= ((p_72 & make_ulong1(l_1562.x).x) , (safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((((*p_3230->g_1026) = (l_1528 = (*p_3230->g_1026))) == &p_73), 13)), p_3230->g_1328.x)))))), p_3230->g_1286.z, 1L).y | p_3230->g_1539.z) , l_1567) >= l_1567), l_1542)) >= l_1568), 1UL)), (*p_3230->g_630))), p_72));
                    }
                    else
                    { /* block id: 586 */
                        uint64_t l_1579 = 0xFED19E769A2108ECLL;
                        int32_t *l_1583 = &p_3230->g_908;
                        l_1570[8][0] = 6L;
                        if (p_71)
                            continue;
                        l_1585 = ((safe_mod_func_int16_t_s_s(0x0B44L, (safe_div_func_int64_t_s_s(0x52CE2DD0144B7CA4LL, p_74)))) && (safe_mul_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(p_3230->g_56.x, p_74)), ((((l_1579 , ((safe_rshift_func_uint32_t_u_s(p_3230->g_1328.x, l_1582)) , l_1583)) != l_1584) , p_72) <= p_71))));
                    }
                    l_1590++;
                    for (l_1588 = 0; (l_1588 <= 2); l_1588 += 1)
                    { /* block id: 594 */
                        int8_t *l_1603 = &p_3230->g_38;
                        int32_t l_1613 = 0xE1244875L;
                        int32_t l_1614 = 0L;
                        char2 l_1630 = make_char2(0x1EL, 2L);
                        uint16_t *l_1633 = nullptr;
                        uint16_t *l_1634[7];
                        uint32_t l_1635 = 0x1FFA9737L;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_1634[i] = nullptr;
                        l_1614 &= ((safe_mod(make_int2(0xF14662D0L, p_72), make_int2(((p_3230->g_1031.x || ((p_3230->g_906[p_3230->g_42] ^= ((((safe_rshift_func_uint16_t_u_s((l_1597 == (((((safe_mod(make_long1(l_1600.y), make_long1((-1L))))).x , (safe_lshift_func_int8_t_s_u(((*l_1603) = 0x81L), (0x33E9L == (make_int3(p_3230->g_1604.x, p_3230->g_1604.x, p_3230->g_1604.x).y > p_74))))) < ((make_int4(l_1605.x, l_1605.x, l_1605.x, l_1605.x).y | p_71) | make_int4((-1L), 0x24F84675L, (safe_mul_func_int64_t_s_s((safe_div_func_int64_t_s_s((safe_div_func_uint16_t_u_u((0x20041F58365ECD56LL & (*l_1584)), l_1612)), p_72)), l_1570[3][0])), 2L).y)) , (*p_3230->g_1026))), hip_const_1)) == 0UL) >= 0UL) > l_1613)) <= p_3230->g_215.z)) == p_72), 9L)))).x;
                        l_1613 |= ((safe_add_func_int32_t_s_s(p_71, (safe_rshift_func_int32_t_s_s((safe_mul_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s((make_ulong4(l_1623.y, l_1623.y, l_1623.y, l_1623.y).y == l_1624[3]), (make_ulong3(l_1625.x, l_1625.x, l_1625.x).z < ((*p_3230->g_488) , ((*p_3230->g_488) |= p_72))))) & (((*l_1551) &= 0xDC8D0265L) & make_int4((-1L), 0xA7215FD5L, 0x9DB1344CL, (safe_lshift_func_int16_t_s_u(((~((((((*l_1584) = (((((make_char2(l_1630.x, l_1630.x) ^ make_char2(p_3230->g_1631.y, p_3230->g_1631.y))) ^ make_char2(0x47L, 0L))).y == (p_72 || make_int3(l_1632.x, l_1632.x, l_1632.x).y))) <= 5UL) > (l_1542 <= (((-6L) >= p_71) , p_72))) | 0UL) , 4294967295UL)) > p_74), p_72))).z)), l_1570[8][0])), p_71)))) , l_1635);
                    }
                }
            }
            l_1636 = &l_821[0];
            --l_1637[0][7];
        }
    }
    return p_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_364 p_3230->g_338 p_3230->g_741 p_3230->g_446 p_3230->g_447 p_3230->g_23 p_3230->g_107 p_3230->g_758 p_3230->g_630 p_3230->g_156 p_3230->g_488 p_3230->g_772 p_3230->g_773 p_3230->g_774 p_3230->g_572
 * writes: p_3230->g_364 p_3230->g_23 p_3230->g_107 p_3230->g_156
 */
__device__ uint32_t  func_75(uint8_t  p_76, uint8_t  p_77, int32_t * p_78, int8_t  p_79, struct S0 * p_3230)
{ /* block id: 287 */
    int32_t l_755 = (-6L);
    int32_t ***l_759 = nullptr;
    int32_t l_761[5][6] = {{(-9L), (-9L), (-2L), 0x307DFDAAL, 0xE7DEBE7AL, 0x307DFDAAL}, {(-9L), (-9L), (-2L), 0x307DFDAAL, 0xE7DEBE7AL, 0x307DFDAAL}, {(-9L), (-9L), (-2L), 0x307DFDAAL, 0xE7DEBE7AL, 0x307DFDAAL}, {(-9L), (-9L), (-2L), 0x307DFDAAL, 0xE7DEBE7AL, 0x307DFDAAL}, {(-9L), (-9L), (-2L), 0x307DFDAAL, 0xE7DEBE7AL, 0x307DFDAAL}};
    int32_t l_762[2][7] = {{0x4A37A0F6L, 1L, 0x0AE35E17L, 0x0AE35E17L, 1L, 0x4A37A0F6L, 1L}, {0x4A37A0F6L, 1L, 0x0AE35E17L, 0x0AE35E17L, 1L, 0x4A37A0F6L, 1L}};
    uint16_t *l_764 = nullptr;
    uint16_t **l_763 = &l_764;
    long3 l_766 = make_long3(0xD70945594F143B40LL, (-1L), 0xD70945594F143B40LL);
    int64_t **l_767 = &p_3230->g_630;
    uint8_t l_779 = 2UL;
    uint32_t *l_782 = nullptr;
    uint8_t *l_783[4] = {&p_3230->g_107, nullptr, &p_3230->g_107, nullptr};
    int i, j;
    for (p_3230->g_364 = 0; (p_3230->g_364 >= 0); --p_3230->g_364)
    { /* block id: 290 */
        uint8_t *l_742 = &p_3230->g_107;
        int32_t ***l_760[10] = {&p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0], nullptr};
        uint16_t ***l_765 = &l_763;
        int i;
        l_762[1][0] ^= (l_761[4][2] = (p_3230->g_338.y <= (&p_79 != ((((*l_742) &= ((safe_div_func_int64_t_s_s((p_76 | make_long1(p_3230->g_741.x).x), ((**p_3230->g_446) |= p_77))) ^ 0x67F3L)) == (safe_sub_func_uint32_t_u_u(4294967288UL, (safe_add_func_int16_t_s_s((safe_sub_func_int32_t_s_s((((safe_sub_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(l_755, ((safe_add_func_uint16_t_u_u(((make_uint3(p_3230->g_758.x, p_3230->g_758.x, p_3230->g_758.x).y , l_759) != l_760[0]), p_76)) >= p_79))), p_77)) ^ 0xC4F3BA8AL), 0xA352L)) & (*p_3230->g_630)) == p_77), 0xBB662A77L)), p_79))))) , &p_3230->g_38))));
        (*l_765) = l_763;
    }
    l_761[4][2] ^= ((make_ushort3(0xDC35L, (l_755 , 0UL), 0xCD8AL).z | (((*p_3230->g_488) |= (+((make_long1(l_766.x).x , &p_3230->g_488) == l_767))) < ((safe_rshift(make_ulong2(((*p_3230->g_447)++), ((*p_3230->g_447) = ((make_ulong3(p_3230->g_772.x, p_3230->g_772.x, p_3230->g_772.x) ^ make_ulong3(p_3230->g_773.y, p_3230->g_773.y, p_3230->g_773.y))).z)), make_ulong2(p_3230->g_774.z, p_3230->g_774.z)))).x)) == (safe_rshift_func_uint16_t_u_u(((((safe_sub_func_int64_t_s_s(l_779, p_76)) , make_int1((safe_sub_func_uint8_t_u_u(((nullptr != l_782) , ((l_783[1] = l_783[2]) != &p_76)), p_76))).x) , 4294967295UL) != p_3230->g_572.w), 15)));
    return p_3230->g_773.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_107 p_3230->g_42 p_3230->g_156 p_3230->g_249 p_3230->g_338 hip_const_1 p_3230->g_196 p_3230->g_446 hip_const_2 p_3230->g_23 p_3230->g_39 p_3230->g_487 p_3230->g_38 p_3230->g_347 p_3230->g_348 p_3230->g_11 p_3230->g_488 p_3230->g_646 p_3230->g_135 p_3230->g_460 p_3230->g_323 p_3230->g_43 p_3230->g_647 p_3230->g_364 p_3230->g_541 p_3230->g_447 p_3230->g_726 p_3230->g_354 p_3230->g_571
 * writes: p_3230->g_42 p_3230->g_107 p_3230->g_156 p_3230->g_364 p_3230->g_38 p_3230->g_487 p_3230->g_23 p_3230->g_488 p_3230->g_630 p_3230->g_460 p_3230->g_323 p_3230->g_541
 */
__device__ int32_t ** func_80(int16_t  p_81, uint32_t  p_82, uint32_t  p_83, int32_t  p_84, struct S0 * p_3230)
{ /* block id: 141 */
    uint8_t *l_403 = &p_3230->g_107;
    int32_t l_404 = 0x9AAA8E01L;
    int16_t *l_405 = &p_3230->g_364;
    int32_t *l_434 = &l_404;
    uint2 l_435 = make_uint2(5UL, 0xFB510B97L);
    int32_t l_450 = 1L;
    int32_t l_452 = 0xE32FFEEBL;
    uint32_t l_482 = 4294967295UL;
    char4 l_529 = make_char4(0xE7L, 5L, 0xE7L, 5L);
    uchar4 l_534 = make_uchar4(1UL, 249UL, 1UL, 249UL);
    uint32_t l_600 = 0x20AC4414L;
    int3 l_618 = make_int3(0xD76E7416L, 1L, 0xD76E7416L);
    uint32_t l_627 = 1UL;
    int64_t *l_632 = &p_3230->g_156[4][2][3];
    uint8_t ***l_648 = &p_3230->g_647;
    int32_t ****l_719 = &p_3230->g_347;
    uint32_t l_720 = 18446744073709551608UL;
    uint64_t *l_727 = &p_3230->g_23;
    int i;
    for (p_82 = (-10); (p_82 < 38); p_82 = safe_add_func_uint16_t_u_u(p_82, 8))
    { /* block id: 144 */
        int16_t *l_393 = &p_3230->g_364;
        int32_t l_425 = (-6L);
        int32_t l_426[4] = {0x37689F0EL, 0x4BCD085BL, 0x37689F0EL, 0x4BCD085BL};
        int8_t l_429 = (-7L);
        int32_t *l_431 = &l_404;
        int32_t ***l_444 = &p_3230->g_348[7][7][1];
        uint32_t l_453 = 0xDE0E863DL;
        short3 l_479 = make_short3(1L, (-1L), 1L);
        ushort2 l_623 = make_ushort2(0x0772L, 0xABBAL);
        int64_t *l_628[3];
        int64_t *l_631[9][7] = {{nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}, {nullptr, &p_3230->g_156[5][0][6], nullptr, nullptr, nullptr, &p_3230->g_156[5][0][6], nullptr}};
        ushort1 l_635 = make_ushort1(65535UL);
        int64_t ***l_663 = &p_3230->g_487;
        short2 l_696 = make_short2(1L, (-4L));
        uint64_t l_728 = 18446744073709551615UL;
        int32_t *l_735 = &l_450;
        int i, j;
        for (i = 0; i < 3; i++)
            l_628[i] = &p_3230->g_156[5][3][1];
        for (p_3230->g_42 = 0; (p_3230->g_42 <= 3); p_3230->g_42 += 1)
        { /* block id: 147 */
            uint32_t *l_397 = &p_3230->g_39;
            uint32_t **l_396 = &l_397;
            uint8_t **l_398 = nullptr;
            uint8_t **l_399 = nullptr;
            uint8_t **l_400 = nullptr;
            uint8_t *l_402 = &p_3230->g_107;
            uint8_t **l_401 = &l_402;
            ushort2 l_406 = make_ushort2(0xAA96L, 0UL);
            int64_t l_424 = 0x37808A29CE088B17LL;
            int32_t ***l_445 = &p_3230->g_348[9][0][1];
            uint64_t **l_448 = &p_3230->g_447;
            int32_t l_451 = 0x396A70DAL;
            ushort2 l_465 = make_ushort2(0xBF58L, 0UL);
            int i;
            if ((safe_div_func_uint16_t_u_u((l_393 != ((((safe_add_func_uint8_t_u_u((&p_83 != ((*l_396) = &p_83)), (((*l_401) = nullptr) == l_403))) <= l_404) & 0xD894L) , l_405)), make_ushort2(l_406.x, l_406.x).y)))
            { /* block id: 150 */
                uint64_t *l_415[5][3] = {{&p_3230->g_23, &hip_const_2, &p_3230->g_23}, {&p_3230->g_23, &hip_const_2, &p_3230->g_23}, {&p_3230->g_23, &hip_const_2, &p_3230->g_23}, {&p_3230->g_23, &hip_const_2, &p_3230->g_23}, {&p_3230->g_23, &hip_const_2, &p_3230->g_23}};
                uint64_t *l_422 = nullptr;
                int32_t l_430 = (-1L);
                int32_t *l_449[1][3][8] = {{{&l_430, &l_404, &l_426[2], &l_404, &l_430, &l_426[1], &l_430, &l_404}, {&l_430, &l_404, &l_426[2], &l_404, &l_430, &l_426[1], &l_430, &l_404}, {&l_430, &l_404, &l_426[2], &l_404, &l_430, &l_426[1], &l_430, &l_404}}};
                int64_t *l_483 = nullptr;
                int64_t *l_484 = &l_424;
                int i, j, k;
                for (p_3230->g_107 = 0; (p_3230->g_107 <= 1); p_3230->g_107 += 1)
                { /* block id: 153 */
                    int32_t l_427 = 1L;
                    int i, j, k;
                    if ((safe_div_func_int8_t_s_s(p_3230->g_156[(p_3230->g_107 + 5)][p_3230->g_42][(p_3230->g_42 + 4)], p_3230->g_249[2])))
                    { /* block id: 154 */
                        uint64_t **l_420 = nullptr;
                        uint64_t **l_421[1][9][9] = {{{&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}, {&l_415[1][1], &l_415[1][1], nullptr, nullptr, nullptr, nullptr, nullptr, &l_415[1][1], &l_415[1][1]}}};
                        int32_t l_423 = 0xF4D44978L;
                        uint8_t l_428 = 0x28L;
                        int32_t *l_432 = &l_427;
                        int i, j, k;
                        p_84 = (safe_mod_func_uint32_t_u_u(((((p_83 || (safe_mod_func_uint16_t_u_u((((((safe_rshift_func_uint32_t_u_u((l_415[0][0] != &p_3230->g_23), ((((((((safe_add_func_uint64_t_u_u(l_406.x, (((l_427 = ((p_3230->g_156[(p_3230->g_107 + 1)][p_3230->g_42][(p_3230->g_107 + 5)] = (((((l_425 = (((safe_sub_func_uint64_t_u_u((l_415[0][0] == (l_422 = l_415[0][0])), (((l_405 = (l_423 , &p_3230->g_364)) != &p_81) , p_3230->g_338.y))) || 0x3548L) > l_424)) == l_426[2]) , 0x56EEL) >= l_426[2]) ^ p_84)) != hip_const_1)) != l_428) , l_404))) | 0xE690L) >= 0xEC0EB8D5E67B2A46LL) != p_84) , 0xDBL) , l_427) && (-7L)) <= p_84))) , p_81) & l_423) < p_3230->g_196.x) <= l_428), l_429))) || 0x28EEL) & 0x5956L) ^ 0x3BA36871C2EA10CCLL), l_430));
                        l_431 = &l_404;
                        (*l_432) &= ((*l_431) = 0xD9418C2AL);
                    }
                    else
                    { /* block id: 164 */
                        int32_t **l_433[8] = {&l_431, &p_3230->g_95, &l_431, &p_3230->g_95, &l_431, &p_3230->g_95, &l_431, &p_3230->g_95};
                        int i, j, k;
                        (*l_431) ^= 4L;
                        l_434 = &l_427;
                        l_427 = (((((make_uint2(l_435.x, l_435.x) ^ ((safe_mod(make_uint2(1UL, 2UL), ((safe_mul(make_uint2(4294967290UL, p_84), make_uint2((make_char1(9L).x == ((safe_add_func_int32_t_s_s(p_81, make_int2((safe_add_func_int16_t_s_s(p_82, ((((p_3230->g_338.y , l_444) != (p_81 , l_445)) <= l_430) == p_3230->g_215.y))), 0x96435743L).x)) , l_430)), p_3230->g_156[(p_3230->g_107 + 5)][p_3230->g_42][(p_3230->g_42 + 4)]))))))))) & make_uint2(0xE04DB151L, 0xE04DB151L))).x != (*l_431));
                    }
                    p_84 &= (p_3230->g_446 == (l_448 = &p_3230->g_447));
                }
                ++l_453;
                p_84 = (((safe_sub_func_uint16_t_u_u(hip_const_2, (safe_mod_func_uint32_t_u_u((p_84 & make_char2(p_3230->g_460.x, p_3230->g_460.x).y), (safe_mul_func_int64_t_s_s((-3L), p_81)))))) , ((*l_484) = (safe_lshift_func_uint16_t_u_s((make_ushort3(l_465.x, l_465.x, l_465.x).z < (safe_mul_func_uint8_t_u_u(((((*l_405) = (safe_lshift_func_int16_t_s_u(make_short4(3L, 0x85D6L, (-6L), (make_uint1(0UL).x <= ((safe_div_func_int8_t_s_s(p_3230->g_460.x, ((safe_add_func_uint32_t_u_u(p_3230->g_135, (((safe_mod_func_int16_t_s_s((safe_unary_minus_func_uint8_t_u(p_83)), ((make_ushort3(((safe_mod_func_int16_t_s_s(make_short1(0x4445L).x, make_short3(l_479.z, l_479.z, l_479.z).x)) || 1L), ((safe_mod(make_ushort2((nullptr != (*p_3230->g_446)), 0xC636L), make_ushort2(0UL, 0UL)))).x, p_3230->g_23) ^ make_ushort3(0xB65AL, 0xB65AL, 0xB65AL))).z)) & p_3230->g_196.x) , p_3230->g_156[5][3][1]))) || p_3230->g_357.x))) , p_84))).z, p_81))) & (*l_431)) != l_482), p_3230->g_23))), p_3230->g_39)))) <= p_81);
            }
            else
            { /* block id: 176 */
                int32_t ****l_491[1];
                int32_t *****l_492 = nullptr;
                int32_t *****l_493 = &l_491[0];
                uint32_t *l_506 = nullptr;
                int i;
                for (i = 0; i < 1; i++)
                    l_491[i] = &p_3230->g_347;
                for (l_424 = (-13); (l_424 >= 19); l_424 = safe_add_func_uint8_t_u_u(l_424, 5))
                { /* block id: 179 */
                    int8_t l_490 = (-1L);
                    (*l_431) = 6L;
                    for (p_3230->g_38 = 0; (p_3230->g_38 <= 3); p_3230->g_38 += 1)
                    { /* block id: 183 */
                        int64_t ***l_489 = &p_3230->g_487;
                        int i;
                        (*l_489) = p_3230->g_487;
                        if (l_426[p_3230->g_38])
                            continue;
                        l_490 = l_426[p_3230->g_42];
                    }
                }
                (*l_493) = l_491[0];
                if (p_82)
                    break;
                if (l_406.y)
                { /* block id: 191 */
                    uint2 l_499 = make_uint2(0x2DCD3B6AL, 0xCA4A8E8BL);
                    uint32_t *l_509[5][3] = {{&l_453, &l_482, &p_3230->g_249[2]}, {&l_453, &l_482, &p_3230->g_249[2]}, {&l_453, &l_482, &p_3230->g_249[2]}, {&l_453, &l_482, &p_3230->g_249[2]}, {&l_453, &l_482, &p_3230->g_249[2]}};
                    int32_t l_510 = 0x1046598DL;
                    int i, j;
                    l_451 ^= ((0x19616A6EL > make_uint4(4UL, p_3230->g_357.y, 0x61D7D39FL, (l_510 = ((((make_uint4(p_3230->g_494.y, p_3230->g_494.y, p_3230->g_494.y, p_3230->g_494.y) & ((safe_div(make_uint4(p_3230->g_107, 4294967286UL, 4294967295UL, 0x1FCE55A8L), ((safe_mod(make_uint4(l_499.y, l_499.y, l_499.y, l_499.y), ((make_uint4((safe_rshift_func_uint64_t_u_u(((safe_div_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((((*p_3230->g_347) = (*p_3230->g_347)) != ((((+(*l_434)) , (((&p_3230->g_105 == l_506) >= ((((safe_mod(make_char4((-6L), ((!1UL) , p_84), 0xA7L, 0x1FL), make_char4(0x3DL, 0x3DL, 0x3DL, 0x3DL)))).x , p_81) > p_3230->g_323)) & 6L)) | 0x7EDA61598BFD52D8LL) , nullptr)), p_3230->g_105)), p_84)) <= p_82), p_84)), (*l_434), 1UL, p_3230->g_196.x) ^ make_uint4(4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL))))))))))) | make_uint4(4294967286UL, 4294967286UL, 4294967286UL, 4294967286UL))).w)).z) , 6L);
                    if (p_84)
                        break;
                    for (l_429 = 0; (l_429 <= 3); l_429 += 1)
                    { /* block id: 198 */
                        int i;
                        if (l_426[l_429])
                            break;
                        (*l_431) = ((&l_426[l_429] != &l_452) && (&p_3230->g_107 == &p_3230->g_107));
                    }
                }
                else
                { /* block id: 202 */
                    return (*p_3230->g_347);
                }
            }
        }
        l_431 = &p_84;
        for (l_482 = 0; (l_482 <= 3); l_482 += 1)
        { /* block id: 210 */
            int8_t l_539 = 0x28L;
            int32_t l_574[3][8][6] = {{{(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}}, {{(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}}, {{(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}, {(-7L), 0x97231DA2L, (-10L), 0x97231DA2L, (-7L), 0xC4EE7278L}}};
            int32_t l_587[4];
            int64_t *l_626[2][6] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
            uchar2 l_636 = make_uchar2(0x93L, 0UL);
            uint32_t *l_638[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
            uint32_t **l_637[1][7][3] = {{{nullptr, &l_638[1], nullptr}, {nullptr, &l_638[1], nullptr}, {nullptr, &l_638[1], nullptr}, {nullptr, &l_638[1], nullptr}, {nullptr, &l_638[1], nullptr}, {nullptr, &l_638[1], nullptr}, {nullptr, &l_638[1], nullptr}}};
            int64_t ***l_662[6][3] = {{nullptr, &p_3230->g_487, nullptr}, {nullptr, &p_3230->g_487, nullptr}, {nullptr, &p_3230->g_487, nullptr}, {nullptr, &p_3230->g_487, nullptr}, {nullptr, &p_3230->g_487, nullptr}, {nullptr, &p_3230->g_487, nullptr}};
            uint64_t **l_708 = &p_3230->g_447;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_587[i] = (-4L);
            for (l_425 = 0; (l_425 <= 3); l_425 += 1)
            { /* block id: 213 */
                uint2 l_540 = make_uint2(0xA8F2CDA6L, 0x1AE0B602L);
                int32_t l_586[5][8][6] = {{{0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}}, {{0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}}, {{0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}}, {{0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}}, {{0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}, {0xF2C22F1AL, 0xF2C22F1AL, 3L, 0L, 0x1946F399L, 0xA7E1C27AL}}};
                int32_t *l_590 = nullptr;
                int i, j, k;
                for (p_81 = 3; (p_81 >= 0); p_81 -= 1)
                { /* block id: 216 */
                    long4 l_522 = make_long4(8L, 0x27E8873B0AC06432LL, 8L, 0x27E8873B0AC06432LL);
                    uint16_t l_585 = 4UL;
                    int32_t *l_603 = nullptr;
                    int i, j, k;
                    if (((safe_mod_func_int32_t_s_s((make_uint2((safe_mod_func_uint16_t_u_u(((((safe_add_func_int16_t_s_s(make_short3(p_3230->g_517.x, p_3230->g_517.x, p_3230->g_517.x).y, (safe_add_func_int8_t_s_s(((-1L) != ((safe_mod_func_uint64_t_u_u((nullptr == (*p_3230->g_446)), make_long3(l_522.w, l_522.w, l_522.w).x)) != 4294967290UL)), (safe_add_func_uint8_t_u_u(p_3230->g_156[(l_425 + 3)][l_482][(l_425 + 1)], p_3230->g_11[(l_482 + 1)][(p_81 + 2)])))))) || (l_540.x = ((safe_rshift_func_int16_t_s_u((((safe_rshift_func_int8_t_s_u(make_char3(l_529.y, l_529.y, l_529.y).z, (p_3230->g_107 = (safe_mod_func_uint32_t_u_u(p_3230->g_11[(l_482 + 2)][(p_81 + 2)], p_84))))) , (safe_div_func_int8_t_s_s((((make_uchar4(0xE7L, 1UL, 0xB9L, make_uchar3(l_534.y, l_534.y, l_534.y).z).z <= (safe_sub_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((-1L), p_81)), p_81))) == p_81) <= l_539), 0xB8L))) > (*p_3230->g_447)), p_3230->g_460.x)) , p_3230->g_56.x))) ^ p_3230->g_354.y) <= p_81), 1L)), 0xF3FC8E66L).y > l_435.x), 1UL)) <= 3UL))
                    { /* block id: 219 */
                        uint64_t **l_559[10] = {&p_3230->g_447, &p_3230->g_447, &p_3230->g_447, &p_3230->g_447, &p_3230->g_447, &p_3230->g_447, &p_3230->g_447, &p_3230->g_447, &p_3230->g_447, &p_3230->g_447};
                        uint16_t *l_573 = nullptr;
                        int32_t l_581 = 8L;
                        uint32_t *l_582 = nullptr;
                        uint32_t *l_583 = nullptr;
                        uint32_t *l_584 = &p_3230->g_323;
                        int32_t *l_588 = &l_452;
                        int32_t **l_589 = &l_431;
                        int i;
                        (*l_588) = (((make_uint2(p_3230->g_541.y, p_3230->g_541.y).x <= ((((l_587[2] = ((safe_add(make_short3(0x0147L, ((*l_393) = (safe_unary_minus_func_uint8_t_u((safe_sub_func_int16_t_s_s(make_short2(0x6386L, (safe_sub_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(((l_586[3][6][1] = ((safe_lshift(make_long3(((safe_rshift_func_uint32_t_u_u(((*l_584) = (safe_sub_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((nullptr != l_559[2]), (safe_add_func_uint32_t_u_u(make_uint2(0x07307C66L, 0xC1AC1D17L).x, ((*l_431) = (safe_mod_func_uint64_t_u_u((safe_div_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((safe_lshift_func_int16_t_s_u((0x1063L <= make_short2((safe_rshift_func_int32_t_s_s((make_short3(p_3230->g_571.x, p_3230->g_571.x, p_3230->g_571.x).x || (l_574[0][3][4] = make_ushort1(p_3230->g_572.x).x)), 7)), (-10L)).x), (((safe_div(make_short4((-9L), (*l_431), 0L, (((safe_lshift_func_int32_t_s_s((-1L), ((p_82 , (p_84 && (l_581 = (safe_mul_func_int8_t_s_s(p_83, p_3230->g_460.x))))) , l_581))) , p_83) & 0xE466BBE49399CE56LL)), make_short4(8L, 8L, 8L, 8L)))).w ^ (-3L)))))), p_3230->g_39)), l_529.y))))))) < p_81), p_3230->g_572.y))), p_81)) , 6L), 0x53E0E994EA03C6BALL, l_585), make_long3(64, 64, 64)))).y) , (*p_3230->g_447)), (**p_3230->g_487))), 0xC126536920581040LL))).y, p_3230->g_571.x))))), (-10L)), make_short3((-1L), (-1L), (-1L))))).z) && p_83) , 0x70L) != (-2L))) && p_3230->g_11[(l_482 + 1)][(p_81 + 2)]) == 4294967291UL);
                        (*l_589) = &p_84;
                    }
                    else
                    { /* block id: 229 */
                        int32_t *l_591 = &l_586[3][2][3];
                        int32_t *l_592 = nullptr;
                        int32_t *l_593 = &l_574[2][2][2];
                        int32_t *l_594 = &l_426[2];
                        int32_t *l_595 = &l_574[0][3][4];
                        int32_t *l_596 = nullptr;
                        int32_t *l_597 = nullptr;
                        int32_t *l_598 = &l_587[2];
                        int32_t *l_599[10] = {nullptr, nullptr, &l_587[2], nullptr, nullptr, &l_587[2], nullptr, nullptr, &l_587[2], nullptr};
                        int i;
                        l_434 = l_590;
                        l_600--;
                        l_603 = l_598;
                        (*l_595) = (safe_div_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u((safe_mul_func_int64_t_s_s(p_81, ((safe_div_func_uint32_t_u_u(((p_3230->g_42 ^ (((!0x6327L) , p_81) & (*l_603))) & (safe_sub_func_int8_t_s_s(1L, p_83))), (safe_mul_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((&l_444 == nullptr), (*p_3230->g_488))), (*l_603))))) < (*l_591)))), 0xCB1B95DDL)) , p_83), p_83));
                    }
                    return (*p_3230->g_347);
                }
            }
            l_450 |= make_int4(make_int1(l_618.z).x, (safe_rshift_func_int8_t_s_u((safe_mod_func_uint64_t_u_u(make_ulong2(18446744073709551615UL, make_ulong2(0xB0FAD2783233DEA8LL, 0x033A2C4CC19F7E55LL).x).y, (l_627 |= ((**p_3230->g_487) = (make_int3(((*l_431) = p_84), 8L, ((*l_431) & make_ushort1(l_623.y).x)).z | (safe_mul_func_int32_t_s_s(l_587[1], p_82))))))), 1)), 0xA54A9079L, 0x7DADCAC0L).x;
            if (p_84)
                continue;
            for (p_3230->g_23 = 0; (p_3230->g_23 <= 3); p_3230->g_23 += 1)
            { /* block id: 245 */
                int64_t **l_629[1];
                int32_t l_633 = (-1L);
                int32_t **l_634 = &l_434;
                int32_t ***l_659[10] = {nullptr, &p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0], nullptr, &p_3230->g_348[0][8][0]};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_629[i] = &l_626[0][2];
                if (p_3230->g_156[(p_3230->g_23 + 1)][l_482][l_482])
                    break;
                l_633 = (((*p_3230->g_487) = l_628[2]) == (l_632 = (l_631[6][4] = (p_3230->g_630 = ((!p_82) , &p_3230->g_156[(p_3230->g_23 + 1)][l_482][l_482])))));
                (*l_634) = &p_84;
                for (p_81 = 4; (p_81 >= 1); p_81 -= 1)
                { /* block id: 255 */
                    uint32_t ***l_639 = &l_637[0][2][0];
                    int32_t *l_655 = &l_633;
                    int32_t ****l_658[7][7][5] = {{{nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}}, {{nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}}, {{nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}}, {{nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}}, {{nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}}, {{nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}}, {{nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}, {nullptr, &p_3230->g_347, &p_3230->g_347, &l_444, &p_3230->g_347}}};
                    int64_t *l_664 = &p_3230->g_156[(p_3230->g_23 + 1)][l_482][l_482];
                    int32_t *****l_667 = nullptr;
                    int32_t *****l_668 = nullptr;
                    int32_t *****l_669 = &l_658[6][4][3];
                    uint2 l_693 = make_uint2(0x744D1AA7L, 1UL);
                    int i, j, k;
                    (*l_655) = (((make_ushort3(l_635.x, l_635.x, l_635.x) | make_ushort3(0xA789L, (make_uchar4(l_636.x, l_636.x, l_636.x, l_636.x).y , (((*l_639) = l_637[0][2][0]) == nullptr)), 0x9729L))).x <= ((((safe_sub_func_uint8_t_u_u((++(*l_403)), (((**l_634) = 0x47FFL) <= (safe_add_func_uint32_t_u_u(((p_3230->g_646 == l_648) , (safe_add_func_int16_t_s_s(p_3230->g_11[p_3230->g_23][p_81], (~(l_636.y && p_83))))), (safe_sub_func_uint32_t_u_u((safe_add_func_int16_t_s_s((0x50B9L != p_3230->g_135), p_3230->g_460.x)), hip_const_2))))))) <= 1UL) > l_636.y) >= p_3230->g_323));
                    if (((0UL == (((((l_659[0] = l_444) != nullptr) || (safe_rshift_func_uint64_t_u_u(((l_663 = l_662[4][2]) == &l_629[0]), 1))) , (((((*p_3230->g_487) = l_664) != l_631[3][6]) <= (safe_div_func_int8_t_s_s(((((*l_669) = nullptr) == nullptr) , 0L), p_83))) , nullptr)) != nullptr)) , p_82))
                    { /* block id: 264 */
                        int32_t l_676 = 0L;
                        uint8_t **l_679 = &l_403;
                        uint8_t ***l_680 = &l_679;
                        uint4 l_685 = make_uint4(0xB304FF51L, 4294967291UL, 0xB304FF51L, 4294967291UL);
                        int8_t *l_688[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_688[i] = nullptr;
                        (*l_431) &= p_83;
                        (*l_655) ^= (safe_lshift_func_int8_t_s_s((*l_431), (p_3230->g_460.x = ((safe_add_func_int32_t_s_s((!(safe_add_func_uint16_t_u_u((((**p_3230->g_487) = l_676) <= (l_618.y = ((safe_add_func_uint32_t_u_u(p_83, (p_82 >= p_3230->g_43))) , (((*p_3230->g_646) == ((*l_680) = l_679)) & (safe_mul_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u(((make_uint3(1UL, 1UL, (**l_634)) & make_uint3(l_685.z, l_685.z, l_685.z))).z, (((((safe_mul_func_uint8_t_u_u(((nullptr == &l_637[0][2][0]) == 0xE412D0BE0248581DLL), p_82)) | (-1L)) < p_84) && 8L) , (*l_431)))) , p_83), 0x60B8827BL)))))), l_676))), p_84)) >= 0xAA76A489089E91BALL))));
                    }
                    else
                    { /* block id: 271 */
                        uint8_t l_701 = 6UL;
                        uint32_t *l_704[9][8] = {{&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}, {&p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323, &p_3230->g_249[3], &p_3230->g_323, &p_3230->g_323}};
                        uint64_t **l_707 = &p_3230->g_447;
                        int32_t l_721 = 0x3A686E81L;
                        int i, j;
                        (**l_634) = (safe_sub_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(((~make_uint3(l_693.x, l_693.x, l_693.x))).y, (safe_sub_func_int16_t_s_s(make_short2(l_696.x, l_696.x).x, p_83)))), (+(safe_mod_func_uint32_t_u_u(p_3230->g_364, (safe_sub_func_uint8_t_u_u(l_701, p_83)))))));
                        (*l_655) ^= (safe_sub_func_uint32_t_u_u((p_3230->g_323 = 4294967289UL), (safe_mul_func_int16_t_s_s((l_707 == l_708), ((make_short1(0x3266L) ^ make_short1((*l_434)))).x))));
                        p_84 = (safe_lshift_func_uint16_t_u_u((~(((safe_rshift_func_int8_t_s_u(4L, (safe_mod_func_uint16_t_u_u(((safe_mod_func_int16_t_s_s((((make_long2((&p_3230->g_348[0][2][0] == nullptr), (-1L)).x > (l_701 == ((p_83 && ((make_uchar3(make_uchar2(p_81, (make_uint2(((safe_mul_func_uint16_t_u_u((((((p_3230->g_541.x |= (l_719 == &l_444)) , 0x27A00734L) == p_81) , 0x4608DE20L) == 0xEF5C9A0CL), hip_const_2)) & (*l_655)), l_720).x ^ l_721)).y, 8UL, 0x80L) ^ make_uchar3(255UL, 255UL, 255UL))).z) != 0x32B8DDDCL))) , (*p_3230->g_447)) >= l_574[2][0][4]), p_3230->g_323)) || 0x41F874DAL), 65535UL)))) ^ 0x531B93EDL) & p_83)), p_81));
                    }
                    (*l_431) = p_82;
                }
            }
        }
        (*l_735) = make_int4(((*l_431) &= (safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(make_char4(p_3230->g_726.w, p_3230->g_726.w, p_3230->g_726.w, p_3230->g_726.w).w, (((p_3230->g_42 , l_727) != l_727) || 8L))), l_728))), ((*l_431) | p_82), (((safe_lshift_func_uint8_t_u_s(make_uchar3(254UL, ((((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int64_t_s_s(p_84, p_81)) , 0xBEL), 0)) , p_81) | 0xFEE7779E0E07D7F3LL) ^ 0x29EDL), 0x21L).z, p_3230->g_354.x)) == p_84) ^ p_3230->g_571.x), (*l_431)).x;
    }
    return (**l_719);
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_107 p_3230->g_357 p_3230->g_11 p_3230->g_156 hip_const_1
 * writes: p_3230->g_107 p_3230->g_156
 */
__device__ uint16_t  func_89(int64_t  p_90, int32_t  p_91, int32_t  p_92, struct S0 * p_3230)
{ /* block id: 135 */
    uint8_t *l_370 = &p_3230->g_107;
    int32_t l_373[8];
    uint32_t *l_374 = nullptr;
    uint32_t *l_375[7][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
    uint64_t l_376[10] = {0x5C8BFADAF887CB2CLL, 0x5C8BFADAF887CB2CLL, 0x4D005C5DCF13215FLL, 0x5C8BFADAF887CB2CLL, 0x5C8BFADAF887CB2CLL, 0x4D005C5DCF13215FLL, 0x5C8BFADAF887CB2CLL, 0x5C8BFADAF887CB2CLL, 0x4D005C5DCF13215FLL, 0x5C8BFADAF887CB2CLL};
    uint1 l_383 = make_uint1(4294967295UL);
    uint2 l_384 = make_uint2(0xDBA9DB8BL, 0x7B8F472CL);
    int16_t *l_385 = nullptr;
    uint32_t l_386 = 4294967289UL;
    int64_t *l_387 = &p_3230->g_156[7][1][3];
    int32_t *l_388 = nullptr;
    int i, j;
    for (i = 0; i < 8; i++)
        l_373[i] = 0xAF1AFB8CL;
    l_373[3] ^= (((*l_387) |= (safe_mod_func_int16_t_s_s((!((safe_sub_func_int8_t_s_s(0xC8L, ((*l_370) ^= 0xC7L))) | (((p_92 , ((!(make_uchar4(1UL, ((safe_rshift_func_int16_t_s_s(p_3230->g_357.y, 12)) == (((make_uint1(4294967295UL) ^ make_uint1((--l_376[9])))).x , (l_376[9] && p_90))), 255UL, ((safe_lshift_func_int16_t_s_u((safe_add_func_int32_t_s_s(1L, ((!p_90) , (((make_uint3(0x0C37AA4AL, 4294967295UL, 0x0C5B31C8L) ^ ((make_uint3(l_383.x, l_383.x, l_383.x) ^ make_uint3(l_384.x, l_384.x, l_384.x))))).z == (nullptr != l_385))))), 13)) || p_3230->g_11[0][2])).x , l_386)) == p_92)) , &l_386) == nullptr))), l_384.y))) > 0x23F51F510D637567LL);
    return hip_const_1;
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_107 p_3230->g_38 p_3230->g_11 p_3230->g_42 p_3230->g_105 p_3230->g_56 p_3230->g_135 p_3230->g_39 p_3230->g_4 p_3230->g_23 p_3230->g_156 p_3230->g_249 p_3230->g_323 p_3230->g_338
 * writes: p_3230->g_107 p_3230->g_38 p_3230->g_135 p_3230->g_42 p_3230->g_105 p_3230->g_11 p_3230->g_156 p_3230->g_249 p_3230->g_323 p_3230->g_364
 */
__device__ uint32_t  func_98(uint32_t * p_99, uint32_t  p_100, uint32_t  p_101, int16_t  p_102, uint64_t  p_103, struct S0 * p_3230)
{ /* block id: 16 */
    uint8_t *l_106[1][10];
    int32_t l_108 = 0xCBA47412L;
    int32_t l_109 = 0xCFDD0FD0L;
    int32_t l_110 = 1L;
    int32_t l_111 = 8L;
    int64_t l_116 = (-1L);
    char1 l_148 = make_char1(0x4FL);
    int32_t **l_149[6][8];
    uint32_t l_197 = 18446744073709551610UL;
    uint8_t *l_207[5][9] = {{&p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107}, {&p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107}, {&p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107}, {&p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107}, {&p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107, &p_3230->g_107}};
    int1 l_221 = make_int1(1L);
    int32_t l_222[7] = {0x4BEC2C41L, 0x4BEC2C41L, 9L, 0x4BEC2C41L, 0x4BEC2C41L, 9L, 0x4BEC2C41L};
    short4 l_244 = make_short4((-1L), 0x81B2L, (-1L), 0x81B2L);
    char4 l_287 = make_char4((-6L), 1L, (-6L), 1L);
    ushort4 l_290 = make_ushort4(0x68BFL, 1UL, 0x68BFL, 1UL);
    uint32_t *l_333[2];
    uint32_t **l_332[3][3] = {{nullptr, &l_333[0], nullptr}, {nullptr, &l_333[0], nullptr}, {nullptr, &l_333[0], nullptr}};
    uint32_t *l_363 = &p_3230->g_249[3];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
            l_106[i][j] = &p_3230->g_107;
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
            l_149[i][j] = &p_3230->g_95;
    }
    for (i = 0; i < 2; i++)
        l_333[i] = &l_197;
    if ((((p_3230->g_107++) < (safe_lshift_func_int16_t_s_u(p_3230->g_38, 14))) && ((p_103 ^ (l_116 <= ((4294967288UL > (func_117(&p_3230->g_95, p_3230) > ((safe_mul_func_int64_t_s_s(((l_108 < make_uint1((safe_rshift_func_int8_t_s_s(l_116, 0))).x) | ((safe_mul(make_char1(l_148.x), make_char1(0x3EL)))).x), (nullptr != l_149[3][1]))) < p_100))) || 0x62L))) <= 1L)))
    { /* block id: 42 */
        for (p_100 = 0; (p_100 <= 5); p_100 += 1)
        { /* block id: 45 */
            for (p_3230->g_105 = 0; p_3230->g_105 < 6; p_3230->g_105 += 1)
            {
                for (l_108 = 0; l_108 < 8; l_108 += 1)
                {
                    p_3230->g_11[p_3230->g_105][l_108] = 0x0A51E9D5L;
                }
            }
            return p_3230->g_105;
        }
    }
    else
    { /* block id: 49 */
        int16_t l_150 = 1L;
        int32_t l_162 = 0xD5C82D1FL;
        uint32_t l_169[6][1];
        int32_t l_172 = (-9L);
        uint8_t l_200 = 253UL;
        ushort1 l_210 = make_ushort1(0x2ECCL);
        uchar2 l_231 = make_uchar2(0x93L, 2UL);
        int32_t l_248 = 0x8CC2CD18L;
        int32_t *l_273 = &l_222[4];
        int64_t *l_283 = &p_3230->g_156[0][0][5];
        char4 l_286 = make_char4(0L, 0x22L, 0L, 0x22L);
        int i, j;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 1; j++)
                l_169[i][j] = 0UL;
        }
        for (p_103 = 0; (p_103 <= 0); p_103 += 1)
        { /* block id: 52 */
            int64_t l_168 = 0xB99A68D69DEFF53BLL;
            char3 l_183 = make_char3(0xD0L, 0x00L, 0xD0L);
            uchar2 l_232 = make_uchar2(0x58L, 0xBDL);
            int32_t l_247[10] = {0xEA9E6CEFL, 0x90AFDDB5L, 0xEA9E6CEFL, 0x90AFDDB5L, 0xEA9E6CEFL, 0x90AFDDB5L, 0xEA9E6CEFL, 0x90AFDDB5L, 0xEA9E6CEFL, 0x90AFDDB5L};
            uint64_t l_299 = 0x066DA58FE9995B76LL;
            int32_t l_319 = (-10L);
            int3 l_343 = make_int3(1L, 0xB171C3BCL, 1L);
            uint8_t **l_360 = &l_207[2][3];
            int i;
            l_150 = 3L;
            if (p_101)
            { /* block id: 54 */
                uint32_t l_165 = 0xCC2B1C82L;
                int32_t l_266 = 1L;
                int32_t l_270[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_270[i] = 0x31CA4282L;
                for (l_150 = 5; (l_150 >= 0); l_150 -= 1)
                { /* block id: 57 */
                    ulong2 l_153 = make_ulong2(18446744073709551608UL, 0UL);
                    int64_t *l_154 = &l_116;
                    int64_t *l_155 = &p_3230->g_156[5][3][1];
                    int32_t l_159 = 0x36B76923L;
                    int3 l_161 = make_int3((-1L), 0x757F069BL, (-1L));
                    uint64_t *l_216[10][3] = {{&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}, {&p_3230->g_23, &p_3230->g_23, &p_3230->g_23}};
                    uint16_t *l_245 = nullptr;
                    int4 l_246 = make_int4(1L, 3L, 1L, 3L);
                    int i, j;
                    if ((0xCA506553L && (+(safe_mod_func_uint64_t_u_u(((make_ulong3(l_153.y, l_153.y, l_153.y) ^ make_ulong3(0xA979D12DC1848BC0LL, 18446744073709551615UL, 18446744073709551606UL))).y, ((*l_155) = ((*l_154) = 2L)))))))
                    { /* block id: 60 */
                        uint64_t l_160 = 1UL;
                        int i, j;
                        l_159 = ((safe_rshift_func_int64_t_s_u(3L, 55)) < l_153.x);
                        l_161.y = ((make_int3(l_160, 0x144B6F7AL, (-6L)) ^ make_int3(l_161.x, l_161.x, l_161.x))).z;
                        if (p_100)
                            break;
                    }
                    else
                    { /* block id: 64 */
                        int16_t l_163 = 0x4822L;
                        int32_t l_164 = 1L;
                        l_165--;
                        l_169[3][0]--;
                        if (l_153.x)
                            break;
                        l_172 &= (0x46033E33L < 0x0BABF467L);
                    }
                    if ((((safe_lshift_func_uint64_t_u_s(((safe_lshift_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(make_uchar1((make_ulong1(18446744073709551613UL).x , (safe_mod_func_uint32_t_u_u((p_103 < ((safe_rshift(make_char1(1L), make_char1(make_char1(l_183.x).x)))).x), (safe_rshift_func_uint16_t_u_s((((safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((l_172 = (9L != 0xB231L)), ((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint32_t_u_s((p_103 , (safe_add_func_int32_t_s_s(((make_long2(p_3230->g_196.x, p_3230->g_196.x).y < ((0L && l_197) & (safe_add_func_uint8_t_u_u(255UL, l_161.y)))) <= p_100), 1L))), 11)), p_101)) <= l_183.y))), l_183.z)) , p_103) == 1UL), 5)))))).x, p_3230->g_56.x)), 7)) & p_3230->g_135), l_200)) <= 0UL) , p_102))
                    { /* block id: 71 */
                        l_172 |= 0x7D269447L;
                    }
                    else
                    { /* block id: 73 */
                        return p_3230->g_11[2][4];
                    }
                    l_159 ^= make_int3(((safe_mul_func_int8_t_s_s((safe_div_func_uint8_t_u_u((!((safe_sub_func_uint64_t_u_u((((l_106[p_103][(p_103 + 6)] = &p_3230->g_107) == l_207[2][3]) >= (~l_200)), (safe_mul_func_uint64_t_u_u((p_3230->g_23 = (make_ushort2(l_210.x, l_210.x).y , (safe_lshift_func_int8_t_s_s((safe_lshift_func_int64_t_s_s(make_long1(p_3230->g_215.x).x, 5)), 5)))), ((safe_mod_func_int32_t_s_s(p_103, (l_183.x , ((p_3230->g_135 ^ hip_const_2) && (safe_lshift_func_int64_t_s_u((p_3230->g_105 >= (make_int2(l_221.x, l_221.x).x , p_103)), l_222[0])))))) < p_3230->g_42))))) > 4294967286UL)), p_3230->g_156[6][0][6])), p_100)) != l_161.x), 7L, p_101).y;
                    if ((((*l_155) &= (safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s((p_3230->g_39 , ((p_3230->g_4.x && ((make_uchar1(l_231.y) & make_uchar1(l_232.x))).x) , (safe_rshift_func_int32_t_s_s((p_3230->g_135 ^= 0xDD72962DL), l_159)))), (((0xB389L <= make_short2(p_3230->g_235.z, p_3230->g_235.z).y) >= p_102) && l_165))), make_ulong3(6UL, (safe_sub_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u(make_ushort1(65535UL).x, (l_172 = (safe_mul_func_uint16_t_u_u(7UL, make_short2(make_short2(l_244.y, l_244.y).x, 0xE576L).y))))) >= (make_int4(l_246.x, l_246.x, l_246.x, l_246.x).y , (&p_3230->g_23 == &hip_const_2))), 0L)), 0xD9BE9A1A12858AB2LL).x)), (-1L))), p_3230->g_23))) || p_3230->g_4.x))
                    { /* block id: 82 */
                        uint64_t l_252 = 0x265BCB941C5EEF02LL;
                        p_3230->g_249[3]--;
                        p_3230->g_135 ^= l_252;
                        if (p_102)
                            break;
                    }
                    else
                    { /* block id: 86 */
                        uint8_t l_257 = 0x08L;
                        int32_t *l_267 = nullptr;
                        int32_t *l_268 = &l_222[2];
                        long3 l_269 = make_long3((-1L), 0L, (-1L));
                        int8_t *l_271 = nullptr;
                        int16_t *l_272[9][9] = {{nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}, {nullptr, &l_150, &l_150, nullptr, &l_150, nullptr, nullptr, &l_150, nullptr}};
                        int i, j;
                        p_3230->g_135 &= ((p_102 = (safe_rshift_func_uint16_t_u_u((safe_rshift_func_int32_t_s_s(l_257, 5)), (safe_mod_func_int8_t_s_s((p_3230->g_38 = ((safe_div_func_int32_t_s_s(((nullptr == &p_3230->g_156[5][3][6]) , 0x552E8AB1L), (safe_rshift_func_int16_t_s_s((((safe_add_func_int8_t_s_s(((l_270[6] = ((((((l_266 = p_100) , (~((((make_int1(0xF076C89BL).x , l_267) == (l_268 = nullptr)) != make_long1(l_269.z).x) , 0L))) != (l_150 >= p_3230->g_56.x)) , 0x24L) ^ 1UL) != (-7L))) & p_3230->g_39), p_100)) , 0xEA250765B23B5386LL) < (-1L)), 6)))) > p_100)), p_101))))) , 0x5BDB47CDL);
                        if (p_103)
                            continue;
                        l_273 = &l_159;
                        if ((*l_273))
                            break;
                    }
                }
                if (p_100)
                    break;
            }
            else
            { /* block id: 99 */
                long4 l_276 = make_long4((-9L), 1L, (-9L), 1L);
                int32_t l_305 = 5L;
                int32_t ***l_320 = &l_149[1][6];
                uint8_t ***l_359 = nullptr;
                int i;
                for (p_3230->g_38 = 5; (p_3230->g_38 >= 0); p_3230->g_38 -= 1)
                { /* block id: 102 */
                    uint16_t *l_304 = nullptr;
                    uint1 l_308 = make_uint1(1UL);
                    int i, j;
                    l_222[(p_103 + 1)] = ((+9UL) && p_3230->g_249[(p_103 + 2)]);
                    if ((safe_rshift_func_uint64_t_u_u(((make_long3(l_276.w, l_276.w, l_276.w).x , (l_305 = ((safe_add(((((safe_mul(((make_ushort2((safe_mod_func_uint32_t_u_u(4294967295UL, ((((make_int1((((l_283 == &l_116) < (((safe_sub(make_char4(l_286.w, l_286.w, l_286.w, l_286.w), make_char4(l_287.z, l_287.z, l_287.z, l_287.z)))).w == (safe_lshift_func_uint16_t_u_u(make_ushort2(l_290.z, l_290.z).y, l_222[p_103])))) != ((safe_rshift_func_uint64_t_u_s(l_222[p_103], (safe_rshift_func_int64_t_s_s((9UL & ((safe_sub_func_int16_t_s_s(((l_299 , l_247[8]) <= (safe_sub_func_int64_t_s_s((safe_mul_func_int32_t_s_s((p_3230->g_215.w || p_3230->g_156[5][3][7]), 4294967295UL)), 18446744073709551610UL))), (-1L))) >= l_168)), 54)))) && p_100))) & make_int1(3L))) ^ make_int1(8L))).x)), 0xA37FL) ^ make_ushort2(0xD69CL, 0xD69CL))), make_ushort2(65531UL, 65531UL)))) & make_ushort2(0UL, 0UL))), make_ushort2(0x75E4L, 0x75E4L)))).y)) != (-10L)), 43)))
                    { /* block id: 105 */
                        uint16_t *l_315[9] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int32_t l_316[5][8] = {{(-1L), 0x0A52FB1AL, 0xA6D14303L, 0x0A52FB1AL, (-1L), 0xA4408C10L, (-1L), 0x0A52FB1AL}, {(-1L), 0x0A52FB1AL, 0xA6D14303L, 0x0A52FB1AL, (-1L), 0xA4408C10L, (-1L), 0x0A52FB1AL}, {(-1L), 0x0A52FB1AL, 0xA6D14303L, 0x0A52FB1AL, (-1L), 0xA4408C10L, (-1L), 0x0A52FB1AL}, {(-1L), 0x0A52FB1AL, 0xA6D14303L, 0x0A52FB1AL, (-1L), 0xA4408C10L, (-1L), 0x0A52FB1AL}, {(-1L), 0x0A52FB1AL, 0xA6D14303L, 0x0A52FB1AL, (-1L), 0xA4408C10L, (-1L), 0x0A52FB1AL}};
                        uint32_t *l_317 = nullptr;
                        uint32_t *l_318[5] = {&p_3230->g_249[1], &l_169[3][0], &p_3230->g_249[1], &l_169[3][0], &p_3230->g_249[1]};
                        int i, j;
                        l_273 = (((((safe_div_func_uint32_t_u_u(make_uint2(l_308.x, l_308.x).y, 1L)) == (((safe_div_func_uint64_t_u_u((safe_div_func_int32_t_s_s(p_103, 0x7B91546AL)), (safe_div_func_int64_t_s_s((l_304 != l_315[2]), p_103)))) , ((p_101 = ((l_316[2][4] = p_101) && (nullptr == &p_3230->g_43))) && p_101)) , 65528UL)) || 0x8CD818A9741A8574LL) != l_319) , &p_3230->g_135);
                    }
                    else
                    { /* block id: 109 */
                        int32_t ****l_321 = &l_320;
                        (*l_273) = 0xC0CD3579L;
                        (*l_321) = l_320;
                    }
                    ++p_3230->g_323;
                    for (l_162 = 0; (l_162 <= 5); l_162 += 1)
                    { /* block id: 116 */
                        int32_t ****l_346 = &l_320;
                        uint32_t *l_358 = &p_3230->g_249[3];
                        int i;
                        l_247[(p_3230->g_38 + 2)] |= (safe_mod_func_int16_t_s_s((safe_sub_func_int32_t_s_s(l_222[(l_162 + 1)], (safe_sub_func_int32_t_s_s(((&l_247[p_3230->g_38] == &p_3230->g_135) && 0x571DL), p_3230->g_38)))), (p_103 , (~(&p_99 != l_332[2][0])))));
                        l_247[(l_162 + 3)] = ((~(safe_add_func_uint16_t_u_u(((safe_rshift_func_uint64_t_u_u(make_ulong2(p_3230->g_338.x, p_3230->g_338.x).y, 19)) >= ((make_uint2(((*l_358) |= ((safe_mod_func_uint8_t_u_u(l_183.x, p_101)) ^ (safe_mod_func_int32_t_s_s(make_int1(l_343.x).x, (safe_rshift_func_uint32_t_u_s((p_103 == ((((*l_346) = nullptr) != (p_3230->g_347 = p_3230->g_347)) > (safe_rshift_func_int16_t_s_u((p_103 == l_276.z), ((((safe_sub(make_ushort4(p_3230->g_353.y, p_3230->g_353.y, p_3230->g_353.y, p_3230->g_353.y), make_ushort4(p_3230->g_354.z, p_3230->g_354.z, p_3230->g_354.z, p_3230->g_354.z)))).w && (safe_add_func_int8_t_s_s(make_char3(p_3230->g_357.x, p_3230->g_357.x, p_3230->g_357.x).x, p_3230->g_338.x))) == (p_3230->g_353.x & p_103)))))), 22)))))), 0UL) ^ make_uint2(0x26D4EE6DL, 0x26D4EE6DL))).y), p_3230->g_338.z))) < p_101);
                        l_247[p_3230->g_38] = p_101;
                    }
                }
                l_360 = &l_106[0][9];
                return p_3230->g_323;
            }
            l_172 ^= 0x6DEC1858L;
            return p_3230->g_4.y;
        }
    }
    p_3230->g_364 = (safe_mod_func_uint32_t_u_u(((*l_363) = 0x7EC04D9AL), 4294967295UL));
    return p_102;
}


/* ------------------------------------------ */
/* 
 * reads : p_3230->g_38 p_3230->g_11 p_3230->g_42
 * writes: p_3230->g_38 p_3230->g_135 p_3230->g_42
 */
__device__ uint16_t  func_117(int32_t ** p_118, struct S0 * p_3230)
{ /* block id: 18 */
    uint64_t l_119 = 4UL;
    uint32_t *l_129 = &p_3230->g_39;
    for (p_3230->g_38 = 0; (p_3230->g_38 <= 5); p_3230->g_38 += 1)
    { /* block id: 21 */
        uint16_t l_122 = 65531UL;
        uint64_t *l_130[2];
        int32_t l_131 = 0xD7553AF0L;
        int32_t *l_134 = &p_3230->g_135;
        uint32_t **l_136 = &l_129;
        int i;
        for (i = 0; i < 2; i++)
            l_130[i] = &hip_const_2;
        (*l_134) = ((l_119 && (make_uint3((safe_div_func_uint16_t_u_u(l_119, l_122)), (safe_rshift_func_uint64_t_u_u((l_131 = (safe_add_func_int8_t_s_s(3L, ((safe_sub_func_uint8_t_u_u(make_uchar1(0xE6L).x, (nullptr != l_129))) | l_122)))), 32)), 1UL).y > ((safe_mul_func_uint32_t_u_u(p_3230->g_11[4][6], l_122)) ^ 1L))) > 0x36L);
        for (p_3230->g_42 = 4; (p_3230->g_42 >= 0); p_3230->g_42 -= 1)
        { /* block id: 26 */
            uint32_t ***l_137 = &l_136;
            int i, j;
            (*l_137) = l_136;
            if (p_3230->g_11[p_3230->g_38][(p_3230->g_42 + 1)])
                continue;
            if (l_119)
            { /* block id: 29 */
                uint32_t l_138[1][7][5] = {{{0x49298730L, 3UL, 0x49298730L, 0xA9F70EF1L, 4294967293UL}, {0x49298730L, 3UL, 0x49298730L, 0xA9F70EF1L, 4294967293UL}, {0x49298730L, 3UL, 0x49298730L, 0xA9F70EF1L, 4294967293UL}, {0x49298730L, 3UL, 0x49298730L, 0xA9F70EF1L, 4294967293UL}, {0x49298730L, 3UL, 0x49298730L, 0xA9F70EF1L, 4294967293UL}, {0x49298730L, 3UL, 0x49298730L, 0xA9F70EF1L, 4294967293UL}, {0x49298730L, 3UL, 0x49298730L, 0xA9F70EF1L, 4294967293UL}}};
                int i, j, k;
                return l_138[0][0][3];
            }
            else
            { /* block id: 31 */
                uint32_t l_139[7][9][2] = {{{0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}}, {{0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}}, {{0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}}, {{0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}}, {{0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}}, {{0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}}, {{0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}, {0x3E2A5121L, 0xF9C57FF4L}}};
                int i, j, k;
                return l_139[0][8][0];
            }
        }
    }
    for (l_119 = 0; (l_119 == 21); l_119++)
    { /* block id: 38 */
        return l_119;
    }
    return l_119;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S0 c_3231;
    struct S0* p_3230 = &c_3231;
    struct S0 c_3232 = {
        .g_4 = make_uint3(18446744073709551608UL, 0xFDE2BBEFL, 18446744073709551608UL),
        .g_11 = {{0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L)}, {0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L)}, {0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L)}, {0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L)}, {0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L)}, {0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L), 0x6A77D77FL, (-1L)}},
        .g_23 = 0x921BA52B3395CC9ELL,
        .g_38 = 0x86L,
        .g_39 = 18446744073709551615UL,
        .g_42 = 0xACAEC2B2L,
        .g_43 = 0x8E43L,
        .g_56 = make_short1(1L),
        .g_95 = nullptr,
        .g_105 = 0x72454177L,
        .g_107 = 0xE6L,
        .g_135 = 0x9397282FL,
        .g_156 = {{{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}, {{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}, {{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}, {{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}, {{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}, {{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}, {{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}, {{0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}, {0xEE1A2211D25EB2E6LL, 0x48A961F3FAF8E688LL, 3L, 0x4414898B9DDC81AELL, 0xAE58DA50500D59F5LL, 0L, 1L, 0x48A961F3FAF8E688LL}}},
        .g_196 = make_long1((-1L)),
        .g_215 = make_long4(0x010D2CAD3D6EBB9BLL, 3L, 0x010D2CAD3D6EBB9BLL, 3L),
        .g_235 = make_short4((-4L), 1L, (-4L), 1L),
        .g_249 = {4294967287UL, 0x49478B05L, 4294967287UL, 0x49478B05L},
        .g_322 = 0x69C0ACD7L,
        .g_323 = 0x68C0C089L,
        .g_338 = make_ulong3(0x754648E5995FA5FFLL, 0xFF97E0FD7342C774LL, 0x754648E5995FA5FFLL),
        .g_348 = {{{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}, {{&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}, {&p_3230->g_95, &p_3230->g_95}}},
        .g_347 = &p_3230->g_348[0][8][0],
        .g_353 = make_ushort2(65526UL, 9UL),
        .g_354 = make_ushort4(0xBF00L, 0UL, 0xBF00L, 0UL),
        .g_357 = make_char2(0x3BL, (-5L)),
        .g_364 = 8L,
        .g_447 = &p_3230->g_23,
        .g_446 = &p_3230->g_447,
        .g_460 = make_char1((-2L)),
        .g_488 = &p_3230->g_156[5][3][1],
        .g_487 = &p_3230->g_488,
        .g_494 = make_uint2(0xFB258EC9L, 0x0F64D708L),
        .g_517 = make_short1(0xBBF3L),
        .g_541 = make_uint4(0x94AC3D09L, 4294967295UL, 0x94AC3D09L, 4294967295UL),
        .g_571 = make_short1(0xF234L),
        .g_572 = make_ushort4(0xA405L, 0UL, 0xA405L, 0UL),
        .g_630 = &p_3230->g_156[2][0][3],
        .g_647 = nullptr,
        .g_646 = &p_3230->g_647,
        .g_726 = make_char4(0x3BL, (-6L), 0x3BL, (-6L)),
        .g_741 = make_long1((-5L)),
        .g_758 = make_uint1(8UL),
        .g_772 = make_ulong1(0xBB3E524871C79959LL),
        .g_773 = make_ulong2(0x4F6F6FA08822C5B3LL, 18446744073709551609UL),
        .g_774 = make_ulong3(0x815B61A18E345194LL, 1UL, 0x815B61A18E345194LL),
        .g_848 = make_ushort1(0xB4F7L),
        .g_906 = {0xFA75L, 0xFA75L, 0xFA75L},
        .g_908 = 1L,
        .g_919 = make_int4(0L, 0x5614AC23L, 0L, 0x5614AC23L),
        .g_921 = make_int3(0L, 0L, 0L),
        .g_939 = make_short4((-2L), 0xC8E3L, (-2L), 0xC8E3L),
        .g_941 = &p_3230->g_347,
        .g_940 = &p_3230->g_941,
        .g_951 = make_ushort3(65535UL, 0xCF8DL, 65535UL),
        .g_1020 = 246UL,
        .g_1027 = nullptr,
        .g_1026 = &p_3230->g_1027,
        .g_1028 = make_char3(0x88L, 1L, 0x88L),
        .g_1031 = make_char2(0L, (-1L)),
        .g_1051 = make_char4((-1L), 1L, (-1L), 1L),
        .g_1113 = 0L,
        .g_1142 = make_long3(0x3D73108E341E7C68LL, 0x9D124CAE27CBB380LL, 0x3D73108E341E7C68LL),
        .g_1146 = make_int1(0xBB45084AL),
        .g_1163 = &p_3230->g_348[5][5][0],
        .g_1188 = make_ushort2(0x06C3L, 0x7E46L),
        .g_1219 = make_short1(0L),
        .g_1251 = {{{nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}}, {{nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}}, {{nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}}, {{nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}}, {{nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}}, {{nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}, {nullptr, nullptr, &p_3230->g_43, nullptr}}},
        .g_1250 = {&p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0], &p_3230->g_1251[3][2][0]},
        .g_1256 = make_int1((-8L)),
        .g_1265 = make_int2((-3L), 0xB4BA856CL),
        .g_1278 = 0xC1046005L,
        .g_1279 = 0x21L,
        .g_1286 = make_int3((-5L), 5L, (-5L)),
        .g_1328 = make_int1(0x01B526F7L),
        .g_1331 = make_long3((-2L), 0xB5ECB6DB5079B9A0LL, (-2L)),
        .g_1334 = make_uint3(0x1D846D59L, 1UL, 0x1D846D59L),
        .g_1371 = make_ulong2(0xF0BC91EEE79A2E1BLL, 1UL),
        .g_1376 = make_char2(0L, 1L),
        .g_1391 = make_char4(0x62L, (-10L), 0x62L, (-10L)),
        .g_1397 = make_uint4(0UL, 4294967292UL, 0UL, 4294967292UL),
        .g_1419 = make_char3(0x8AL, 0L, 0x8AL),
        .g_1420 = make_char1(0x6AL),
        .g_1423 = make_char3(0xB9L, (-1L), 0xB9L),
        .g_1434 = 0x64FB2DF2L,
        .g_1454 = make_uint1(0xB28A3B3FL),
        .g_1457 = make_uint1(0x88E6F889L),
        .g_1473 = make_uchar3(0UL, 0x3EL, 0UL),
        .g_1475 = make_uchar4(0UL, 255UL, 0UL, 255UL),
        .g_1513 = make_int1(0x20E2F2EAL),
        .g_1539 = make_long4(1L, 8L, 1L, 8L),
        .g_1604 = make_int1(0xABDEC482L),
        .g_1631 = make_char3(7L, 0xCBL, 7L),
        .g_1688 = make_int2(0x629F07E7L, 0x5B62FF7DL),
        .g_1706 = &p_3230->g_249[0],
        .g_1716 = make_long2(0x7C7634FB9F13E422LL, 0xA23A8C39C679575ELL),
        .g_1756 = make_ushort3(0x62EFL, 0UL, 0x62EFL),
        .g_1765 = make_char1((-7L)),
        .g_1783 = make_ulong1(0x8F26BFC67C7A44EFLL),
        .g_1797 = make_short4(0xB59CL, 0x2A5BL, 0xB59CL, 0x2A5BL),
        .g_1813 = make_ulong2(0x90FB37A2B3290B09LL, 1UL),
        .g_1816 = make_ulong1(2UL),
        .g_1818 = make_ulong4(0x081BE430A3F30C29LL, 0x70B9C75426971FDELL, 0x081BE430A3F30C29LL, 0x70B9C75426971FDELL),
        .g_1819 = make_ulong4(0UL, 0x1AAB94890EF4F025LL, 0UL, 0x1AAB94890EF4F025LL),
        .g_1820 = make_short1(0x826DL),
        .g_1854 = make_ushort4(0x1425L, 65528UL, 0x1425L, 65528UL),
        .g_1859 = make_char3(0x6BL, (-9L), 0x6BL),
        .g_1888 = make_short2((-8L), 0x3199L),
        .g_1931 = make_uchar1(1UL),
        .g_1944 = make_ushort3(0xB41FL, 0xF675L, 0xB41FL),
        .g_1960 = make_short4(1L, 0x8B6AL, 1L, 0x8B6AL),
        .g_1961 = make_short4(0x5FAEL, 0x5158L, 0x5FAEL, 0x5158L),
        .g_1977 = make_short1(0x7BEEL),
        .g_1984 = make_uint1(0x6912CAF0L),
        .g_2016 = make_ushort3(0xA340L, 65535UL, 0xA340L),
        .g_2046 = make_char4(0L, 1L, 0L, 1L),
        .g_2060 = {{{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}, {{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}, {{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}, {{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}, {{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}, {{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}, {{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}, {{nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}, {nullptr, &p_3230->g_908, nullptr, nullptr}}},
        .g_2081 = make_uchar2(0x41L, 246UL),
        .g_2087 = make_ushort1(65526UL),
        .g_2118 = make_uchar1(0x3FL),
        .g_2146 = make_uint4(0x670366A3L, 4294967286UL, 0x670366A3L, 4294967286UL),
        .g_2147 = make_uint1(5UL),
        .g_2173 = make_uchar4(0UL, 0x39L, 0UL, 0x39L),
        .g_2180 = make_short4(0xFEC2L, 0xA6EFL, 0xFEC2L, 0xA6EFL),
        .g_2189 = make_ulong4(18446744073709551607UL, 0xF81C467306D39F52LL, 18446744073709551607UL, 0xF81C467306D39F52LL),
        .g_2242 = make_uint3(18446744073709551612UL, 0x35E70CFAL, 18446744073709551612UL),
        .g_2277 = make_int1(0xAFD62D19L),
        .g_2280 = make_long1(0xEA36C449B651B814LL),
        .g_2286 = nullptr,
        .g_2285 = &p_3230->g_2286,
        .g_2296 = make_short2(1L, 0x0F9EL),
        .g_2297 = make_short3(1L, 0x1D46L, 1L),
        .g_2312 = make_uchar4(246UL, 0x5CL, 246UL, 0x5CL),
        .g_2327 = make_char1(0x73L),
        .g_2346 = {&p_3230->g_1250[2], &p_3230->g_1250[2], &p_3230->g_1250[2], &p_3230->g_1250[2]},
        .g_2345 = &p_3230->g_2346[2],
        .g_2419 = make_int2(0x3A290864L, 0x413944AFL),
        .g_2436 = make_char3(0x84L, (-7L), 0x84L),
        .g_2437 = (-1L),
        .g_2441 = 0L,
        .g_2465 = make_uint1(0x15AD8C2FL),
        .g_2516 = make_ushort2(65531UL, 0xCA0EL),
        .g_2536 = make_int4(0xA8EE3CAFL, (-1L), 0xA8EE3CAFL, (-1L)),
        .g_2558 = make_int1(8L),
        .g_2568 = make_char4(0x8FL, 1L, 0x8FL, 1L),
        .g_2573 = make_int3(0x61482D75L, 0xEB6DFD1EL, 0x61482D75L),
        .g_2602 = make_ulong1(0x0F071718876B0F9ALL),
        .g_2622 = make_uchar1(255UL),
        .g_2719 = make_ulong4(1UL, 0xFE7D856C0D8A009ELL, 1UL, 0xFE7D856C0D8A009ELL),
        .g_2720 = make_ulong2(0xA8B8A77821FE05A1LL, 0UL),
        .g_2751 = make_int2(0x71209FE9L, 1L),
        .g_2752 = make_int1(0x521B6E53L),
        .g_2753 = make_int2(0xCCE1900FL, 0x4DF45518L),
        .g_2763 = {0x66DDL, 0x66DDL, 0x66DDL, 0x66DDL, 0x66DDL, 0x66DDL, 0x66DDL, 0x66DDL, 0x66DDL},
        .g_2771 = make_short2(0x823EL, 0x9653L),
        .g_2791 = make_ulong1(18446744073709551609UL),
        .g_2822 = make_uchar2(0xC3L, 0x53L),
        .g_2854 = make_int3(1L, (-4L), 1L),
        .g_2857 = &p_3230->g_446,
        .g_2856 = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}},
        .g_2855 = &p_3230->g_2856[0][1],
        .g_2882 = make_long2(1L, (-1L)),
        .g_2903 = make_long2(0x8E8B449FA61EC34CLL, 0x2A7FC130476F14ECLL),
        .g_2919 = {&p_3230->g_941, &p_3230->g_941},
        .g_2945 = nullptr,
        .g_2983 = make_char2(0x16L, 0xAEL),
        .g_3016 = 0x0A7EF6C1L,
        .g_3037 = make_uchar3(0x59L, 4UL, 0x59L),
        .g_3049 = &p_3230->g_107,
        .g_3048 = &p_3230->g_3049,
        .g_3060 = make_long3((-1L), 0x6F40FC19243831C6LL, (-1L)),
        .g_3069 = &p_3230->g_487,
        .g_3070 = &p_3230->g_487,
        .g_3088 = 0UL,
        .g_3116 = make_int1(0x9D35E73DL),
        .g_3117 = make_int1(3L),
        .g_3154 = make_char2(0x73L, 0xA6L),
        .g_3169 = make_ulong3(0x2D8C729AFDF3A11ALL, 0x9A1C409253F3A1A9LL, 0x2D8C729AFDF3A11ALL),
        .g_3188 = make_ulong4(0x39F57909EA7EDEA4LL, 18446744073709551608UL, 0x39F57909EA7EDEA4LL, 18446744073709551608UL),
        .g_3190 = make_ulong2(0x02F04731070AF378LL, 1UL),
        .g_3212 = {{{nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}}, {{nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}}, {{nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}}, {{nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}}, {{nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}}, {{nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}, {nullptr, &p_3230->g_348[0][8][0], &p_3230->g_348[0][8][0], &p_3230->g_348[6][5][1], &p_3230->g_348[4][8][1]}}},
        .g_3220 = &p_3230->g_2285,
        .g_3219 = &p_3230->g_3220,
        .g_3224 = &p_3230->g_3220,
    };
    c_3231 = c_3232;

    // Execute core logic
    func_1(p_3230);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(p_3230->g_4.x, "p_3230->g_4.x", print_hash_value);
    transparent_crc(p_3230->g_4.y, "p_3230->g_4.y", print_hash_value);
    transparent_crc(p_3230->g_4.z, "p_3230->g_4.z", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            transparent_crc(p_3230->g_11[i][j], "p_3230->g_11[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3230->g_23, "p_3230->g_23", print_hash_value);
    transparent_crc(p_3230->g_38, "p_3230->g_38", print_hash_value);
    transparent_crc(p_3230->g_39, "p_3230->g_39", print_hash_value);
    transparent_crc(p_3230->g_42, "p_3230->g_42", print_hash_value);
    transparent_crc(p_3230->g_43, "p_3230->g_43", print_hash_value);
    transparent_crc(p_3230->g_56.x, "p_3230->g_56.x", print_hash_value);
    transparent_crc(p_3230->g_105, "p_3230->g_105", print_hash_value);
    transparent_crc(p_3230->g_107, "p_3230->g_107", print_hash_value);
    transparent_crc(p_3230->g_135, "p_3230->g_135", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 8; k++)
            {
                transparent_crc(p_3230->g_156[i][j][k], "p_3230->g_156[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_3230->g_196.x, "p_3230->g_196.x", print_hash_value);
    transparent_crc(p_3230->g_215.x, "p_3230->g_215.x", print_hash_value);
    transparent_crc(p_3230->g_215.y, "p_3230->g_215.y", print_hash_value);
    transparent_crc(p_3230->g_215.z, "p_3230->g_215.z", print_hash_value);
    transparent_crc(p_3230->g_215.w, "p_3230->g_215.w", print_hash_value);
    transparent_crc(p_3230->g_235.x, "p_3230->g_235.x", print_hash_value);
    transparent_crc(p_3230->g_235.y, "p_3230->g_235.y", print_hash_value);
    transparent_crc(p_3230->g_235.z, "p_3230->g_235.z", print_hash_value);
    transparent_crc(p_3230->g_235.w, "p_3230->g_235.w", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        transparent_crc(p_3230->g_249[i], "p_3230->g_249[i]", print_hash_value);

    }
    transparent_crc(p_3230->g_322, "p_3230->g_322", print_hash_value);
    transparent_crc(p_3230->g_323, "p_3230->g_323", print_hash_value);
    transparent_crc(p_3230->g_338.x, "p_3230->g_338.x", print_hash_value);
    transparent_crc(p_3230->g_338.y, "p_3230->g_338.y", print_hash_value);
    transparent_crc(p_3230->g_338.z, "p_3230->g_338.z", print_hash_value);
    transparent_crc(p_3230->g_353.x, "p_3230->g_353.x", print_hash_value);
    transparent_crc(p_3230->g_353.y, "p_3230->g_353.y", print_hash_value);
    transparent_crc(p_3230->g_354.x, "p_3230->g_354.x", print_hash_value);
    transparent_crc(p_3230->g_354.y, "p_3230->g_354.y", print_hash_value);
    transparent_crc(p_3230->g_354.z, "p_3230->g_354.z", print_hash_value);
    transparent_crc(p_3230->g_354.w, "p_3230->g_354.w", print_hash_value);
    transparent_crc(p_3230->g_357.x, "p_3230->g_357.x", print_hash_value);
    transparent_crc(p_3230->g_357.y, "p_3230->g_357.y", print_hash_value);
    transparent_crc(p_3230->g_364, "p_3230->g_364", print_hash_value);
    transparent_crc(p_3230->g_460.x, "p_3230->g_460.x", print_hash_value);
    transparent_crc(p_3230->g_494.x, "p_3230->g_494.x", print_hash_value);
    transparent_crc(p_3230->g_494.y, "p_3230->g_494.y", print_hash_value);
    transparent_crc(p_3230->g_517.x, "p_3230->g_517.x", print_hash_value);
    transparent_crc(p_3230->g_541.x, "p_3230->g_541.x", print_hash_value);
    transparent_crc(p_3230->g_541.y, "p_3230->g_541.y", print_hash_value);
    transparent_crc(p_3230->g_541.z, "p_3230->g_541.z", print_hash_value);
    transparent_crc(p_3230->g_541.w, "p_3230->g_541.w", print_hash_value);
    transparent_crc(p_3230->g_571.x, "p_3230->g_571.x", print_hash_value);
    transparent_crc(p_3230->g_572.x, "p_3230->g_572.x", print_hash_value);
    transparent_crc(p_3230->g_572.y, "p_3230->g_572.y", print_hash_value);
    transparent_crc(p_3230->g_572.z, "p_3230->g_572.z", print_hash_value);
    transparent_crc(p_3230->g_572.w, "p_3230->g_572.w", print_hash_value);
    transparent_crc(p_3230->g_726.x, "p_3230->g_726.x", print_hash_value);
    transparent_crc(p_3230->g_726.y, "p_3230->g_726.y", print_hash_value);
    transparent_crc(p_3230->g_726.z, "p_3230->g_726.z", print_hash_value);
    transparent_crc(p_3230->g_726.w, "p_3230->g_726.w", print_hash_value);
    transparent_crc(p_3230->g_741.x, "p_3230->g_741.x", print_hash_value);
    transparent_crc(p_3230->g_758.x, "p_3230->g_758.x", print_hash_value);
    transparent_crc(p_3230->g_772.x, "p_3230->g_772.x", print_hash_value);
    transparent_crc(p_3230->g_773.x, "p_3230->g_773.x", print_hash_value);
    transparent_crc(p_3230->g_773.y, "p_3230->g_773.y", print_hash_value);
    transparent_crc(p_3230->g_774.x, "p_3230->g_774.x", print_hash_value);
    transparent_crc(p_3230->g_774.y, "p_3230->g_774.y", print_hash_value);
    transparent_crc(p_3230->g_774.z, "p_3230->g_774.z", print_hash_value);
    transparent_crc(p_3230->g_848.x, "p_3230->g_848.x", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_3230->g_906[i], "p_3230->g_906[i]", print_hash_value);

    }
    transparent_crc(p_3230->g_908, "p_3230->g_908", print_hash_value);
    transparent_crc(p_3230->g_919.x, "p_3230->g_919.x", print_hash_value);
    transparent_crc(p_3230->g_919.y, "p_3230->g_919.y", print_hash_value);
    transparent_crc(p_3230->g_919.z, "p_3230->g_919.z", print_hash_value);
    transparent_crc(p_3230->g_919.w, "p_3230->g_919.w", print_hash_value);
    transparent_crc(p_3230->g_921.x, "p_3230->g_921.x", print_hash_value);
    transparent_crc(p_3230->g_921.y, "p_3230->g_921.y", print_hash_value);
    transparent_crc(p_3230->g_921.z, "p_3230->g_921.z", print_hash_value);
    transparent_crc(p_3230->g_939.x, "p_3230->g_939.x", print_hash_value);
    transparent_crc(p_3230->g_939.y, "p_3230->g_939.y", print_hash_value);
    transparent_crc(p_3230->g_939.z, "p_3230->g_939.z", print_hash_value);
    transparent_crc(p_3230->g_939.w, "p_3230->g_939.w", print_hash_value);
    transparent_crc(p_3230->g_951.x, "p_3230->g_951.x", print_hash_value);
    transparent_crc(p_3230->g_951.y, "p_3230->g_951.y", print_hash_value);
    transparent_crc(p_3230->g_951.z, "p_3230->g_951.z", print_hash_value);
    transparent_crc(p_3230->g_1020, "p_3230->g_1020", print_hash_value);
    transparent_crc(p_3230->g_1028.x, "p_3230->g_1028.x", print_hash_value);
    transparent_crc(p_3230->g_1028.y, "p_3230->g_1028.y", print_hash_value);
    transparent_crc(p_3230->g_1028.z, "p_3230->g_1028.z", print_hash_value);
    transparent_crc(p_3230->g_1031.x, "p_3230->g_1031.x", print_hash_value);
    transparent_crc(p_3230->g_1031.y, "p_3230->g_1031.y", print_hash_value);
    transparent_crc(p_3230->g_1051.x, "p_3230->g_1051.x", print_hash_value);
    transparent_crc(p_3230->g_1051.y, "p_3230->g_1051.y", print_hash_value);
    transparent_crc(p_3230->g_1051.z, "p_3230->g_1051.z", print_hash_value);
    transparent_crc(p_3230->g_1051.w, "p_3230->g_1051.w", print_hash_value);
    transparent_crc(p_3230->g_1113, "p_3230->g_1113", print_hash_value);
    transparent_crc(p_3230->g_1142.x, "p_3230->g_1142.x", print_hash_value);
    transparent_crc(p_3230->g_1142.y, "p_3230->g_1142.y", print_hash_value);
    transparent_crc(p_3230->g_1142.z, "p_3230->g_1142.z", print_hash_value);
    transparent_crc(p_3230->g_1146.x, "p_3230->g_1146.x", print_hash_value);
    transparent_crc(p_3230->g_1188.x, "p_3230->g_1188.x", print_hash_value);
    transparent_crc(p_3230->g_1188.y, "p_3230->g_1188.y", print_hash_value);
    transparent_crc(p_3230->g_1219.x, "p_3230->g_1219.x", print_hash_value);
    transparent_crc(p_3230->g_1256.x, "p_3230->g_1256.x", print_hash_value);
    transparent_crc(p_3230->g_1265.x, "p_3230->g_1265.x", print_hash_value);
    transparent_crc(p_3230->g_1265.y, "p_3230->g_1265.y", print_hash_value);
    transparent_crc(p_3230->g_1278, "p_3230->g_1278", print_hash_value);
    transparent_crc(p_3230->g_1279, "p_3230->g_1279", print_hash_value);
    transparent_crc(p_3230->g_1286.x, "p_3230->g_1286.x", print_hash_value);
    transparent_crc(p_3230->g_1286.y, "p_3230->g_1286.y", print_hash_value);
    transparent_crc(p_3230->g_1286.z, "p_3230->g_1286.z", print_hash_value);
    transparent_crc(p_3230->g_1328.x, "p_3230->g_1328.x", print_hash_value);
    transparent_crc(p_3230->g_1331.x, "p_3230->g_1331.x", print_hash_value);
    transparent_crc(p_3230->g_1331.y, "p_3230->g_1331.y", print_hash_value);
    transparent_crc(p_3230->g_1331.z, "p_3230->g_1331.z", print_hash_value);
    transparent_crc(p_3230->g_1334.x, "p_3230->g_1334.x", print_hash_value);
    transparent_crc(p_3230->g_1334.y, "p_3230->g_1334.y", print_hash_value);
    transparent_crc(p_3230->g_1334.z, "p_3230->g_1334.z", print_hash_value);
    transparent_crc(p_3230->g_1371.x, "p_3230->g_1371.x", print_hash_value);
    transparent_crc(p_3230->g_1371.y, "p_3230->g_1371.y", print_hash_value);
    transparent_crc(p_3230->g_1376.x, "p_3230->g_1376.x", print_hash_value);
    transparent_crc(p_3230->g_1376.y, "p_3230->g_1376.y", print_hash_value);
    transparent_crc(p_3230->g_1391.x, "p_3230->g_1391.x", print_hash_value);
    transparent_crc(p_3230->g_1391.y, "p_3230->g_1391.y", print_hash_value);
    transparent_crc(p_3230->g_1391.z, "p_3230->g_1391.z", print_hash_value);
    transparent_crc(p_3230->g_1391.w, "p_3230->g_1391.w", print_hash_value);
    transparent_crc(p_3230->g_1397.x, "p_3230->g_1397.x", print_hash_value);
    transparent_crc(p_3230->g_1397.y, "p_3230->g_1397.y", print_hash_value);
    transparent_crc(p_3230->g_1397.z, "p_3230->g_1397.z", print_hash_value);
    transparent_crc(p_3230->g_1397.w, "p_3230->g_1397.w", print_hash_value);
    transparent_crc(p_3230->g_1419.x, "p_3230->g_1419.x", print_hash_value);
    transparent_crc(p_3230->g_1419.y, "p_3230->g_1419.y", print_hash_value);
    transparent_crc(p_3230->g_1419.z, "p_3230->g_1419.z", print_hash_value);
    transparent_crc(p_3230->g_1420.x, "p_3230->g_1420.x", print_hash_value);
    transparent_crc(p_3230->g_1423.x, "p_3230->g_1423.x", print_hash_value);
    transparent_crc(p_3230->g_1423.y, "p_3230->g_1423.y", print_hash_value);
    transparent_crc(p_3230->g_1423.z, "p_3230->g_1423.z", print_hash_value);
    transparent_crc(p_3230->g_1434, "p_3230->g_1434", print_hash_value);
    transparent_crc(p_3230->g_1454.x, "p_3230->g_1454.x", print_hash_value);
    transparent_crc(p_3230->g_1457.x, "p_3230->g_1457.x", print_hash_value);
    transparent_crc(p_3230->g_1473.x, "p_3230->g_1473.x", print_hash_value);
    transparent_crc(p_3230->g_1473.y, "p_3230->g_1473.y", print_hash_value);
    transparent_crc(p_3230->g_1473.z, "p_3230->g_1473.z", print_hash_value);
    transparent_crc(p_3230->g_1475.x, "p_3230->g_1475.x", print_hash_value);
    transparent_crc(p_3230->g_1475.y, "p_3230->g_1475.y", print_hash_value);
    transparent_crc(p_3230->g_1475.z, "p_3230->g_1475.z", print_hash_value);
    transparent_crc(p_3230->g_1475.w, "p_3230->g_1475.w", print_hash_value);
    transparent_crc(p_3230->g_1513.x, "p_3230->g_1513.x", print_hash_value);
    transparent_crc(p_3230->g_1539.x, "p_3230->g_1539.x", print_hash_value);
    transparent_crc(p_3230->g_1539.y, "p_3230->g_1539.y", print_hash_value);
    transparent_crc(p_3230->g_1539.z, "p_3230->g_1539.z", print_hash_value);
    transparent_crc(p_3230->g_1539.w, "p_3230->g_1539.w", print_hash_value);
    transparent_crc(p_3230->g_1604.x, "p_3230->g_1604.x", print_hash_value);
    transparent_crc(p_3230->g_1631.x, "p_3230->g_1631.x", print_hash_value);
    transparent_crc(p_3230->g_1631.y, "p_3230->g_1631.y", print_hash_value);
    transparent_crc(p_3230->g_1631.z, "p_3230->g_1631.z", print_hash_value);
    transparent_crc(p_3230->g_1688.x, "p_3230->g_1688.x", print_hash_value);
    transparent_crc(p_3230->g_1688.y, "p_3230->g_1688.y", print_hash_value);
    transparent_crc(p_3230->g_1716.x, "p_3230->g_1716.x", print_hash_value);
    transparent_crc(p_3230->g_1716.y, "p_3230->g_1716.y", print_hash_value);
    transparent_crc(p_3230->g_1756.x, "p_3230->g_1756.x", print_hash_value);
    transparent_crc(p_3230->g_1756.y, "p_3230->g_1756.y", print_hash_value);
    transparent_crc(p_3230->g_1756.z, "p_3230->g_1756.z", print_hash_value);
    transparent_crc(p_3230->g_1765.x, "p_3230->g_1765.x", print_hash_value);
    transparent_crc(p_3230->g_1783.x, "p_3230->g_1783.x", print_hash_value);
    transparent_crc(p_3230->g_1797.x, "p_3230->g_1797.x", print_hash_value);
    transparent_crc(p_3230->g_1797.y, "p_3230->g_1797.y", print_hash_value);
    transparent_crc(p_3230->g_1797.z, "p_3230->g_1797.z", print_hash_value);
    transparent_crc(p_3230->g_1797.w, "p_3230->g_1797.w", print_hash_value);
    transparent_crc(p_3230->g_1813.x, "p_3230->g_1813.x", print_hash_value);
    transparent_crc(p_3230->g_1813.y, "p_3230->g_1813.y", print_hash_value);
    transparent_crc(p_3230->g_1816.x, "p_3230->g_1816.x", print_hash_value);
    transparent_crc(p_3230->g_1818.x, "p_3230->g_1818.x", print_hash_value);
    transparent_crc(p_3230->g_1818.y, "p_3230->g_1818.y", print_hash_value);
    transparent_crc(p_3230->g_1818.z, "p_3230->g_1818.z", print_hash_value);
    transparent_crc(p_3230->g_1818.w, "p_3230->g_1818.w", print_hash_value);
    transparent_crc(p_3230->g_1819.x, "p_3230->g_1819.x", print_hash_value);
    transparent_crc(p_3230->g_1819.y, "p_3230->g_1819.y", print_hash_value);
    transparent_crc(p_3230->g_1819.z, "p_3230->g_1819.z", print_hash_value);
    transparent_crc(p_3230->g_1819.w, "p_3230->g_1819.w", print_hash_value);
    transparent_crc(p_3230->g_1820.x, "p_3230->g_1820.x", print_hash_value);
    transparent_crc(p_3230->g_1854.x, "p_3230->g_1854.x", print_hash_value);
    transparent_crc(p_3230->g_1854.y, "p_3230->g_1854.y", print_hash_value);
    transparent_crc(p_3230->g_1854.z, "p_3230->g_1854.z", print_hash_value);
    transparent_crc(p_3230->g_1854.w, "p_3230->g_1854.w", print_hash_value);
    transparent_crc(p_3230->g_1859.x, "p_3230->g_1859.x", print_hash_value);
    transparent_crc(p_3230->g_1859.y, "p_3230->g_1859.y", print_hash_value);
    transparent_crc(p_3230->g_1859.z, "p_3230->g_1859.z", print_hash_value);
    transparent_crc(p_3230->g_1888.x, "p_3230->g_1888.x", print_hash_value);
    transparent_crc(p_3230->g_1888.y, "p_3230->g_1888.y", print_hash_value);
    transparent_crc(p_3230->g_1931.x, "p_3230->g_1931.x", print_hash_value);
    transparent_crc(p_3230->g_1944.x, "p_3230->g_1944.x", print_hash_value);
    transparent_crc(p_3230->g_1944.y, "p_3230->g_1944.y", print_hash_value);
    transparent_crc(p_3230->g_1944.z, "p_3230->g_1944.z", print_hash_value);
    transparent_crc(p_3230->g_1960.x, "p_3230->g_1960.x", print_hash_value);
    transparent_crc(p_3230->g_1960.y, "p_3230->g_1960.y", print_hash_value);
    transparent_crc(p_3230->g_1960.z, "p_3230->g_1960.z", print_hash_value);
    transparent_crc(p_3230->g_1960.w, "p_3230->g_1960.w", print_hash_value);
    transparent_crc(p_3230->g_1961.x, "p_3230->g_1961.x", print_hash_value);
    transparent_crc(p_3230->g_1961.y, "p_3230->g_1961.y", print_hash_value);
    transparent_crc(p_3230->g_1961.z, "p_3230->g_1961.z", print_hash_value);
    transparent_crc(p_3230->g_1961.w, "p_3230->g_1961.w", print_hash_value);
    transparent_crc(p_3230->g_1977.x, "p_3230->g_1977.x", print_hash_value);
    transparent_crc(p_3230->g_1984.x, "p_3230->g_1984.x", print_hash_value);
    transparent_crc(p_3230->g_2016.x, "p_3230->g_2016.x", print_hash_value);
    transparent_crc(p_3230->g_2016.y, "p_3230->g_2016.y", print_hash_value);
    transparent_crc(p_3230->g_2016.z, "p_3230->g_2016.z", print_hash_value);
    transparent_crc(p_3230->g_2046.x, "p_3230->g_2046.x", print_hash_value);
    transparent_crc(p_3230->g_2046.y, "p_3230->g_2046.y", print_hash_value);
    transparent_crc(p_3230->g_2046.z, "p_3230->g_2046.z", print_hash_value);
    transparent_crc(p_3230->g_2046.w, "p_3230->g_2046.w", print_hash_value);
    transparent_crc(p_3230->g_2081.x, "p_3230->g_2081.x", print_hash_value);
    transparent_crc(p_3230->g_2081.y, "p_3230->g_2081.y", print_hash_value);
    transparent_crc(p_3230->g_2087.x, "p_3230->g_2087.x", print_hash_value);
    transparent_crc(p_3230->g_2118.x, "p_3230->g_2118.x", print_hash_value);
    transparent_crc(p_3230->g_2146.x, "p_3230->g_2146.x", print_hash_value);
    transparent_crc(p_3230->g_2146.y, "p_3230->g_2146.y", print_hash_value);
    transparent_crc(p_3230->g_2146.z, "p_3230->g_2146.z", print_hash_value);
    transparent_crc(p_3230->g_2146.w, "p_3230->g_2146.w", print_hash_value);
    transparent_crc(p_3230->g_2147.x, "p_3230->g_2147.x", print_hash_value);
    transparent_crc(p_3230->g_2173.x, "p_3230->g_2173.x", print_hash_value);
    transparent_crc(p_3230->g_2173.y, "p_3230->g_2173.y", print_hash_value);
    transparent_crc(p_3230->g_2173.z, "p_3230->g_2173.z", print_hash_value);
    transparent_crc(p_3230->g_2173.w, "p_3230->g_2173.w", print_hash_value);
    transparent_crc(p_3230->g_2180.x, "p_3230->g_2180.x", print_hash_value);
    transparent_crc(p_3230->g_2180.y, "p_3230->g_2180.y", print_hash_value);
    transparent_crc(p_3230->g_2180.z, "p_3230->g_2180.z", print_hash_value);
    transparent_crc(p_3230->g_2180.w, "p_3230->g_2180.w", print_hash_value);
    transparent_crc(p_3230->g_2189.x, "p_3230->g_2189.x", print_hash_value);
    transparent_crc(p_3230->g_2189.y, "p_3230->g_2189.y", print_hash_value);
    transparent_crc(p_3230->g_2189.z, "p_3230->g_2189.z", print_hash_value);
    transparent_crc(p_3230->g_2189.w, "p_3230->g_2189.w", print_hash_value);
    transparent_crc(p_3230->g_2242.x, "p_3230->g_2242.x", print_hash_value);
    transparent_crc(p_3230->g_2242.y, "p_3230->g_2242.y", print_hash_value);
    transparent_crc(p_3230->g_2242.z, "p_3230->g_2242.z", print_hash_value);
    transparent_crc(p_3230->g_2277.x, "p_3230->g_2277.x", print_hash_value);
    transparent_crc(p_3230->g_2280.x, "p_3230->g_2280.x", print_hash_value);
    transparent_crc(p_3230->g_2296.x, "p_3230->g_2296.x", print_hash_value);
    transparent_crc(p_3230->g_2296.y, "p_3230->g_2296.y", print_hash_value);
    transparent_crc(p_3230->g_2297.x, "p_3230->g_2297.x", print_hash_value);
    transparent_crc(p_3230->g_2297.y, "p_3230->g_2297.y", print_hash_value);
    transparent_crc(p_3230->g_2297.z, "p_3230->g_2297.z", print_hash_value);
    transparent_crc(p_3230->g_2312.x, "p_3230->g_2312.x", print_hash_value);
    transparent_crc(p_3230->g_2312.y, "p_3230->g_2312.y", print_hash_value);
    transparent_crc(p_3230->g_2312.z, "p_3230->g_2312.z", print_hash_value);
    transparent_crc(p_3230->g_2312.w, "p_3230->g_2312.w", print_hash_value);
    transparent_crc(p_3230->g_2327.x, "p_3230->g_2327.x", print_hash_value);
    transparent_crc(p_3230->g_2419.x, "p_3230->g_2419.x", print_hash_value);
    transparent_crc(p_3230->g_2419.y, "p_3230->g_2419.y", print_hash_value);
    transparent_crc(p_3230->g_2436.x, "p_3230->g_2436.x", print_hash_value);
    transparent_crc(p_3230->g_2436.y, "p_3230->g_2436.y", print_hash_value);
    transparent_crc(p_3230->g_2436.z, "p_3230->g_2436.z", print_hash_value);
    transparent_crc(p_3230->g_2437, "p_3230->g_2437", print_hash_value);
    transparent_crc(p_3230->g_2441, "p_3230->g_2441", print_hash_value);
    transparent_crc(p_3230->g_2465.x, "p_3230->g_2465.x", print_hash_value);
    transparent_crc(p_3230->g_2516.x, "p_3230->g_2516.x", print_hash_value);
    transparent_crc(p_3230->g_2516.y, "p_3230->g_2516.y", print_hash_value);
    transparent_crc(p_3230->g_2536.x, "p_3230->g_2536.x", print_hash_value);
    transparent_crc(p_3230->g_2536.y, "p_3230->g_2536.y", print_hash_value);
    transparent_crc(p_3230->g_2536.z, "p_3230->g_2536.z", print_hash_value);
    transparent_crc(p_3230->g_2536.w, "p_3230->g_2536.w", print_hash_value);
    transparent_crc(p_3230->g_2558.x, "p_3230->g_2558.x", print_hash_value);
    transparent_crc(p_3230->g_2568.x, "p_3230->g_2568.x", print_hash_value);
    transparent_crc(p_3230->g_2568.y, "p_3230->g_2568.y", print_hash_value);
    transparent_crc(p_3230->g_2568.z, "p_3230->g_2568.z", print_hash_value);
    transparent_crc(p_3230->g_2568.w, "p_3230->g_2568.w", print_hash_value);
    transparent_crc(p_3230->g_2573.x, "p_3230->g_2573.x", print_hash_value);
    transparent_crc(p_3230->g_2573.y, "p_3230->g_2573.y", print_hash_value);
    transparent_crc(p_3230->g_2573.z, "p_3230->g_2573.z", print_hash_value);
    transparent_crc(p_3230->g_2602.x, "p_3230->g_2602.x", print_hash_value);
    transparent_crc(p_3230->g_2622.x, "p_3230->g_2622.x", print_hash_value);
    transparent_crc(p_3230->g_2719.x, "p_3230->g_2719.x", print_hash_value);
    transparent_crc(p_3230->g_2719.y, "p_3230->g_2719.y", print_hash_value);
    transparent_crc(p_3230->g_2719.z, "p_3230->g_2719.z", print_hash_value);
    transparent_crc(p_3230->g_2719.w, "p_3230->g_2719.w", print_hash_value);
    transparent_crc(p_3230->g_2720.x, "p_3230->g_2720.x", print_hash_value);
    transparent_crc(p_3230->g_2720.y, "p_3230->g_2720.y", print_hash_value);
    transparent_crc(p_3230->g_2751.x, "p_3230->g_2751.x", print_hash_value);
    transparent_crc(p_3230->g_2751.y, "p_3230->g_2751.y", print_hash_value);
    transparent_crc(p_3230->g_2752.x, "p_3230->g_2752.x", print_hash_value);
    transparent_crc(p_3230->g_2753.x, "p_3230->g_2753.x", print_hash_value);
    transparent_crc(p_3230->g_2753.y, "p_3230->g_2753.y", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        transparent_crc(p_3230->g_2763[i], "p_3230->g_2763[i]", print_hash_value);

    }
    transparent_crc(p_3230->g_2771.x, "p_3230->g_2771.x", print_hash_value);
    transparent_crc(p_3230->g_2771.y, "p_3230->g_2771.y", print_hash_value);
    transparent_crc(p_3230->g_2791.x, "p_3230->g_2791.x", print_hash_value);
    transparent_crc(p_3230->g_2822.x, "p_3230->g_2822.x", print_hash_value);
    transparent_crc(p_3230->g_2822.y, "p_3230->g_2822.y", print_hash_value);
    transparent_crc(p_3230->g_2854.x, "p_3230->g_2854.x", print_hash_value);
    transparent_crc(p_3230->g_2854.y, "p_3230->g_2854.y", print_hash_value);
    transparent_crc(p_3230->g_2854.z, "p_3230->g_2854.z", print_hash_value);
    transparent_crc(p_3230->g_2882.x, "p_3230->g_2882.x", print_hash_value);
    transparent_crc(p_3230->g_2882.y, "p_3230->g_2882.y", print_hash_value);
    transparent_crc(p_3230->g_2903.x, "p_3230->g_2903.x", print_hash_value);
    transparent_crc(p_3230->g_2903.y, "p_3230->g_2903.y", print_hash_value);
    transparent_crc(p_3230->g_2983.x, "p_3230->g_2983.x", print_hash_value);
    transparent_crc(p_3230->g_2983.y, "p_3230->g_2983.y", print_hash_value);
    transparent_crc(p_3230->g_3016, "p_3230->g_3016", print_hash_value);
    transparent_crc(p_3230->g_3037.x, "p_3230->g_3037.x", print_hash_value);
    transparent_crc(p_3230->g_3037.y, "p_3230->g_3037.y", print_hash_value);
    transparent_crc(p_3230->g_3037.z, "p_3230->g_3037.z", print_hash_value);
    transparent_crc(p_3230->g_3060.x, "p_3230->g_3060.x", print_hash_value);
    transparent_crc(p_3230->g_3060.y, "p_3230->g_3060.y", print_hash_value);
    transparent_crc(p_3230->g_3060.z, "p_3230->g_3060.z", print_hash_value);
    transparent_crc(p_3230->g_3088, "p_3230->g_3088", print_hash_value);
    transparent_crc(p_3230->g_3116.x, "p_3230->g_3116.x", print_hash_value);
    transparent_crc(p_3230->g_3117.x, "p_3230->g_3117.x", print_hash_value);
    transparent_crc(p_3230->g_3154.x, "p_3230->g_3154.x", print_hash_value);
    transparent_crc(p_3230->g_3154.y, "p_3230->g_3154.y", print_hash_value);
    transparent_crc(p_3230->g_3169.x, "p_3230->g_3169.x", print_hash_value);
    transparent_crc(p_3230->g_3169.y, "p_3230->g_3169.y", print_hash_value);
    transparent_crc(p_3230->g_3169.z, "p_3230->g_3169.z", print_hash_value);
    transparent_crc(p_3230->g_3188.x, "p_3230->g_3188.x", print_hash_value);
    transparent_crc(p_3230->g_3188.y, "p_3230->g_3188.y", print_hash_value);
    transparent_crc(p_3230->g_3188.z, "p_3230->g_3188.z", print_hash_value);
    transparent_crc(p_3230->g_3188.w, "p_3230->g_3188.w", print_hash_value);
    transparent_crc(p_3230->g_3190.x, "p_3230->g_3190.x", print_hash_value);
    transparent_crc(p_3230->g_3190.y, "p_3230->g_3190.y", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

