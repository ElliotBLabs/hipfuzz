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
// Seed: 1281228648

/* --- Struct/Union Declarations --- */
struct S0 {
   signed f0 : 30;
};

union U1 {
   uint32_t  f0;
   int8_t  f1;
   int32_t  f2;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint8_t hip_const_1;
__constant__ int32_t hip_const_2;
__constant__ union U1 hip_const_3;
__constant__ int32_t hip_const_4[5][5][9];
__constant__ uint16_t hip_const_5;
__constant__ union U1 hip_const_6;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint8_t host_hip_const_1 = 255UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        int32_t host_hip_const_2 = 0xA8B108F8L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        union U1 host_hip_const_3 = {0xEF72D4EAL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int32_t host_hip_const_4[5][5][9] = {{{0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}}, {{0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}}, {{0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}}, {{0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}}, {{0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}, {0xDAD4F6C5L, (-1L), 0x9F3C5A4AL, 5L, 9L, (-10L), 0x39CEE24BL, 5L, 0x9C25B054L}}};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        uint16_t host_hip_const_5 = 0UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        union U1 host_hip_const_6 = {4294967287UL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
}

struct S2 {
    int16_t g_8;
    uint16_t g_12;
    uint32_t g_49;
    int8_t g_60;
    struct S0 g_62;
    struct S0 *g_64;
    int64_t g_106;
    uchar1 g_126;
    uint64_t g_139[7][2];
    int16_t *g_156;
    int16_t *g_157;
    int16_t *g_158;
    int64_t g_203;
    uint32_t g_213;
    char1 g_268;
    int8_t g_291;
    uint32_t g_295;
    long1 g_298;
    int16_t g_304;
    struct S0 **g_325;
    struct S0 ***g_324[3];
    uint8_t g_328;
    int16_t **g_342;
    int32_t g_382;
    int1 g_384;
    int2 g_400;
    uint16_t g_403;
    long1 g_473;
    short3 g_497;
    short4 g_498;
    char2 g_544;
    int32_t *g_566;
    int32_t **g_565[7];
    int4 g_689;
    int3 g_702;
    char4 g_705;
    struct S0 ****g_709;
    int4 g_740;
    uchar3 g_741;
    uint8_t *g_761[4][9][5];
    uint8_t **g_760;
    long2 g_811;
    int3 g_854;
    int3 g_855;
    int1 g_856;
    int1 g_895;
    uint1 g_906;
    uint8_t g_986;
    int4 g_990;
    ushort3 g_1010;
    uint32_t *g_1042;
    uint32_t **g_1041;
    uint1 g_1055;
    int32_t ***g_1092;
    int32_t ****g_1091[7];
    int16_t g_1109;
    uint16_t *g_1231;
    short1 g_1325;
    ushort2 g_1355;
    ulong1 g_1387;
    uint16_t **g_1410;
    ulong3 g_1429;
    long4 g_1431;
    short1 g_1445;
    short2 g_1448;
    struct S0 *****g_1461;
    short1 g_1469;
    ulong2 g_1480;
    int4 g_1493;
    int32_t *g_1525[6];
    long4 g_1532;
    int3 g_1541;
    union U1 *g_1549;
    union U1 **g_1548;
    uint8_t ****g_1567;
    int8_t *g_1580;
    int8_t **g_1579[9];
    uchar3 g_1585;
    char2 g_1605;
    uint4 g_1624;
    uint16_t g_1672;
    short2 g_1681;
    int64_t g_1710;
    uint16_t g_1712;
    int1 g_1738;
    uint64_t g_1743;
    int3 g_1755;
    char2 g_1759;
    long2 g_1767;
    long4 g_1771;
    int32_t g_1814;
    int16_t g_1817;
    uint16_t g_1820[8];
    long2 g_1892;
    uint32_t g_1926[1];
    int4 g_1974;
    int1 g_2000;
    int3 g_2048;
    int32_t *g_2069;
    uint32_t g_2103;
    uchar1 g_2164;
    uint1 g_2199;
    long1 g_2220;
    char4 g_2256;
    uint32_t g_2325;
    uint4 g_2351;
    char4 g_2360;
    ushort4 g_2397;
    short4 g_2402;
    uint4 g_2403;
    int3 g_2411;
    uint4 g_2424;
    ushort4 g_2432;
    uint32_t g_2441;
    short4 g_2450;
    uchar1 g_2453;
    ulong3 g_2477;
    int32_t *g_2493[9][8];
    char3 g_2547;
    int64_t g_2562;
    uint32_t g_2586;
    int32_t g_2615;
    ushort2 g_2651;
    struct S0 *g_2699;
    union U1 g_2775;
    uint8_t g_2792;
    char1 g_2814;
    char3 g_2815;
    ulong3 g_2843;
    ulong2 g_2844;
    ulong2 g_2845;
    ushort4 g_2851;
    int2 g_2859;
    ulong3 g_2884;
    char3 g_2953;
    ushort2 g_2958;
    int2 g_2982;
    char4 g_2992;
    short3 g_2994;
    int4 g_3047;
    int16_t g_3048;
    uint8_t g_3053;
    char1 g_3067;
    int8_t ***g_3070;
    int8_t ****g_3069;
    int1 g_3087;
    int1 g_3088;
    uchar3 g_3089;
    struct S0 *g_3090[1];
    ulong1 g_3109;
    short2 g_3117;
    uint32_t *g_3119;
    uint32_t **g_3118;
    ushort4 g_3125;
    short3 g_3128;
    uchar1 g_3188;
    long4 g_3212;
    short2 g_3219;
    ushort3 g_3220;
    int16_t ***g_3255;
    int16_t ****g_3254;
    int32_t g_3279;
    struct S0 g_3289;
    uint4 g_3299;
    char4 g_3300;
    int2 g_3312;
    char3 g_3352;
    ulong2 g_3375;
    uint2 g_3380;
    ulong2 g_3404;
    uchar3 g_3457;
    long1 g_3500;
    short2 g_3542;
    char4 g_3590;
    uchar4 g_3593;
    ulong2 g_3630;
    char3 g_3633;
    char4 g_3634;
    uint2 g_3644;
    uchar3 g_3673;
    short1 g_3698;
    int4 g_3721;
    uint32_t g_3801;
    int64_t g_3840;
    uint3 g_3863;
    ulong2 g_3871;
    short2 g_3901;
    uint1 g_3923;
    ulong4 g_3936;
    struct S0 g_3937[9][9][3];
    int2 g_3966;
    uint16_t g_3977[7];
    uint3 g_3987;
    int1 g_3990;
    char2 g_4024;
    char3 g_4025;
    uint4 g_4074;
    char1 g_4130;
    int16_t g_4143;
    int3 g_4156;
    short3 g_4163;
    uint1 g_4168;
    uint8_t g_4170;
    char1 g_4180;
    long2 g_4188;
    int64_t g_4231;
    char3 g_4240;
    long2 g_4245;
    long3 g_4252;
    char3 g_4256;
    short1 g_4275;
    int4 g_4280;
    char1 g_4281;
    int1 g_4302;
    uchar2 g_4327;
    char3 g_4373;
    char3 g_4374;
    int32_t g_4420[9];
    uint2 g_4441;
    uint2 g_4442;
    uint1 g_4564;
    int4 g_4599;
    short2 g_4608;
    uchar2 g_4641;
    int32_t g_4668[4];
    uint16_t g_4670;
    long2 g_4684;
    int8_t g_4710;
    int2 g_4712;
    long3 g_4719;
    uint4 g_4741;
    char1 g_4753;
    char2 g_4836;
    int4 g_4847;
    int1 g_4878;
    uint32_t g_4954[4];
    uchar3 g_4960;
    uchar2 g_4961;
    int16_t **g_4985;
    uint4 g_4999;
    short1 g_5006;
    long3 g_5020;
    ulong1 g_5029;
    long2 g_5037;
    int3 g_5068;
    uint1 g_5077;
    long2 g_5085;
    uint3 g_5090;
};


/* --- FORWARD DECLARATIONS --- */
__device__ int8_t  func_1(struct S2 * p_5135);
__device__ int32_t  func_19(int32_t * p_20, struct S2 * p_5135);
__device__ int32_t * func_21(struct S0  p_22, int32_t * p_23, int32_t * p_24, uint32_t  p_25, struct S2 * p_5135);
__device__ struct S0  func_26(int16_t  p_27, uint32_t  p_28, int32_t * p_29, uint64_t  p_30, int32_t  p_31, struct S2 * p_5135);
__device__ int32_t * func_37(int32_t  p_38, int32_t * p_39, int32_t * p_40, struct S2 * p_5135);
__device__ int32_t * func_52(uint32_t * p_53, uint32_t * p_54, struct S2 * p_5135);
__device__ union U1  func_55(uint16_t  p_56, union U1  p_57, struct S2 * p_5135);
__device__ int16_t  func_65(int32_t * p_66, struct S2 * p_5135);
__device__ struct S0  func_68(uint32_t * p_69, int8_t  p_70, struct S0 * p_71, struct S0 * p_72, struct S2 * p_5135);
__device__ struct S0 * func_76(int32_t * p_77, uint32_t ** p_78, int64_t  p_79, struct S2 * p_5135);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_5135->g_12 hip_const_4 hip_const_2 hip_const_1 hip_const_3 p_5135->g_60 p_5135->g_157 p_5135->g_8 p_5135->g_158 p_5135->g_1410 p_5135->g_1231 hip_const_5 p_5135->g_1712 p_5135->g_2562 p_5135->g_139 p_5135->g_1431 p_5135->g_2586 p_5135->g_203 p_5135->g_906 p_5135->g_400 p_5135->g_1549 hip_const_6 p_5135->g_2792 p_5135->g_2048 p_5135->g_325 p_5135->g_64 p_5135->g_2615 p_5135->g_1743 p_5135->g_1820 p_5135->g_2843 p_5135->g_2844 p_5135->g_2845 p_5135->g_2851 p_5135->g_1355 p_5135->g_1814 p_5135->g_2859 p_5135->g_1448 p_5135->g_2775.f0 p_5135->g_62 p_5135->g_1480 p_5135->g_2450 p_5135->g_291 p_5135->g_1926 p_5135->g_1041 p_5135->g_1042 p_5135->g_1567 p_5135->g_2411 p_5135->g_5077 p_5135->g_2982 p_5135->g_4753 p_5135->g_3279 p_5135->g_5085 p_5135->g_5090 p_5135->g_4684 p_5135->g_473 p_5135->g_1892 p_5135->g_497 p_5135->g_3923 p_5135->g_3118 p_5135->g_3119 p_5135->g_986 p_5135->g_709 p_5135->g_324
 * writes: p_5135->g_60 p_5135->g_64 p_5135->g_986 p_5135->g_2493 p_5135->g_8 p_5135->g_1109 p_5135->g_213 p_5135->g_1712 p_5135->g_1431 p_5135->g_203 p_5135->g_2699 p_5135->g_12 p_5135->g_2775 p_5135->g_62 p_5135->g_2615 p_5135->g_1743 p_5135->g_2432 p_5135->g_1814 p_5135->g_2103 p_5135->g_2792 p_5135->g_382 p_5135->g_2069 p_5135->g_3279 p_5135->g_3923 p_5135->g_3119
 */
__device__ int8_t  func_1(struct S2 * p_5135)
{ /* block id: 0 */
    int32_t *l_2 = &hip_const_6.f2;
    int32_t *l_3 = &hip_const_2;
    int32_t *l_4 = &hip_const_3.f2;
    int32_t *l_5 = &hip_const_2;
    int32_t *l_6 = &hip_const_3.f2;
    // attempting a hip shared for loop
    __shared__ int32_t *l_7[5][10][1];
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            for (int k = 0; k < 1; k++)
                l_7[i][j][k] = &hip_const_3.f2;
        }
    }
    uint16_t l_9 = 1UL;
    int32_t l_13 = (-8L);
    __shared__ uint16_t l_50;
    l_50 = 0xD091L;
    int64_t l_5105 = 0x2349FDF50519F74CLL;
    struct S0 *l_5114 = nullptr;
    int i, j, k;
    l_9++;
    l_13 = p_5135->g_12;
    if (hip_const_4[2][0][5])
    { /* block id: 3 */
        int16_t l_18 = 0L;
        struct S0 l_36 = {20834};
        __shared__ uint32_t *l_47;
        l_47 = &hip_const_3.f0;
        uint32_t *l_48[1][9][4] = {{{&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}, {&p_5135->g_49, &p_5135->g_49, nullptr, &p_5135->g_49}}};
        int32_t *l_51 = &hip_const_2;
        uint32_t l_2787[7] = {18446744073709551615UL, 18446744073709551615UL, 4UL, 18446744073709551615UL, 18446744073709551615UL, 4UL, 18446744073709551615UL};
        uint64_t l_5082[10] = {1UL, 0x8A195800D7E2B416LL, 1UL, 1UL, 0x8A195800D7E2B416LL, 1UL, 0x8A195800D7E2B416LL, 1UL, 1UL, 0x8A195800D7E2B416LL};
        int8_t l_5110 = 0xE3L;
        uint32_t l_5113 = 0x5B4A827EL;
        __shared__ int32_t l_5118;
        l_5118 = 0L;
        int32_t l_5119 = 0x49E09398L;
        int32_t l_5120 = 0x06302F17L;
        int32_t l_5121 = 0xB5412180L;
        int32_t l_5122 = (-5L);
        __shared__ uint32_t l_5123;
        l_5123 = 0x93FF17BAL;
        uint64_t l_5126 = 0UL;
        int i, j, k;
        if ((safe_mod_func_int8_t_s_s((((make_int2((safe_rshift_func_uint16_t_u_u((*l_3), 1)), l_18) ^ make_int2(func_19(func_21(func_26((safe_rshift_func_int8_t_s_s(l_18, ((safe_mod_func_int8_t_s_s(((l_36 , func_37((((l_50 &= (safe_mod_func_uint8_t_u_u((((safe_mul_func_int32_t_s_s(1L, (0x9861L < p_5135->g_12))) , (make_short4(((safe_rshift_func_int8_t_s_s(hip_const_4[2][0][5], (hip_const_4[3][1][1] && hip_const_4[2][0][5]))) & hip_const_4[0][0][6]), 0L, 3L, 0x5E1CL).w || 0x16A7L)) || 0xB8EBL), hip_const_1))) & hip_const_4[4][4][3]) && (*l_3)), l_5, l_51, p_5135)) == l_51), (*l_5))) , (-1L)))), l_2787[5], l_51, (*l_51), (*l_3), p_5135), l_51, l_51, p_5135->g_291, p_5135), p_5135), (-7L)))).x || (*l_51)), l_5082[5])))
        { /* block id: 2136 */
            uint16_t *l_5086 = nullptr;
            uint16_t *l_5087 = &p_5135->g_1712;
            int32_t *l_5093 = &l_13;
            int32_t l_5100 = (-1L);
            int32_t l_5115 = 3L;
            l_5115 ^= ((safe_lshift_func_uint16_t_u_u(((*l_5087) = ((-1L) && make_long3(p_5135->g_5085.y, p_5135->g_5085.y, p_5135->g_5085.y).z)), (safe_rshift_func_uint16_t_u_u(((p_5135->g_3923.x |= ((make_uint4(p_5135->g_5090.y, p_5135->g_5090.y, p_5135->g_5090.y, p_5135->g_5090.y) ^ make_uint4((func_68((((((*l_5093) = (safe_div_func_uint32_t_u_u((*l_3), (*l_51)))) , (safe_lshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(l_5100, ((((((safe_rshift_func_uint8_t_u_s((p_5135->g_4684.y < (((0x9E4E42874AB34C66LL | (safe_rshift_func_int64_t_s_s(l_5105, 1))) ^ ((((!(safe_mul_func_uint64_t_u_u(make_ulong2(l_5110, 0UL).y, (safe_sub_func_uint8_t_u_u((*l_51), (*l_51)))))) , 0xE896D704L) , 0xE52ACA084B7098A8LL) ^ 0UL)) != p_5135->g_473.x)), (*l_51))) || 0UL) , &p_5135->g_3069) != nullptr) == l_5100) <= l_5113))), (*l_51))), (*l_51)))) ^ (*p_5135->g_157)) , nullptr), (*l_51), &l_36, l_5114, p_5135) , 0UL), p_5135->g_1892.y, 1UL, p_5135->g_497.y))).y) , (*p_5135->g_1231)), 0)))) && (*l_3));
        }
        else
        { /* block id: 2141 */
            __shared__ uint32_t *l_5116;
            l_5116 = nullptr;
            int32_t l_5117 = 0xEDC6C646L;
            l_5117 = (((*p_5135->g_3118) = (*p_5135->g_3118)) == l_5116);
        }
        --l_5123;
        l_5126++;
        for (p_5135->g_986 = 0; (p_5135->g_986 <= 7); p_5135->g_986 += 1)
        { /* block id: 2149 */
            uint8_t l_5129 = 1UL;
            ++l_5129;
        }
    }
    else
    { /* block id: 2152 */
        union U1 ***l_5133 = &p_5135->g_1548;
        union U1 ****l_5132 = &l_5133;
        int4 l_5134 = make_int4(0x5D1FBD54L, 0L, 0x5D1FBD54L, 0L);
        int i;
        (*l_5132) = &p_5135->g_1548;
        return l_5134.y;
    }
    (*p_5135->g_64) = (****p_5135->g_709);
    return (*l_5);
}


/* ------------------------------------------ */
/* 
 * reads : p_5135->g_5077 p_5135->g_2982 p_5135->g_4753 p_5135->g_3279
 * writes: p_5135->g_3279
 */
__device__ int32_t  func_19(int32_t * p_20, struct S2 * p_5135)
{ /* block id: 2131 */
    int32_t l_5071[8][6] = {{0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}, {0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}, {0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}, {0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}, {0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}, {0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}, {0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}, {0x8044528EL, 0x8044528EL, 0xC94812B4L, 0x8044528EL, 0x8044528EL, 0xC94812B4L}};
    __shared__ union U1 l_5074;
    l_5074 = {1UL};
    // attempting a hip shared for loop
    __shared__ uint32_t *l_5075[5];
    for (int i = 0; i < 5; i++)
        l_5075[i] = &p_5135->g_2775.f0;
    int16_t l_5076 = (-1L);
    int32_t l_5080 = 1L;
    int32_t *l_5081 = &p_5135->g_3279;
    int i, j;
    (*l_5081) |= (safe_sub_func_uint64_t_u_u(0x505DCFA507995C43LL, ((1UL >= ((make_uint2(0UL, l_5071[4][0]) | ((((safe_add(make_uint2(4294967295UL, (l_5074 , ((make_uint4(0xEE427C26L, 0x987ADEB2L, (l_5076 = 4UL), 0xB546B8A6L) ^ ((make_uint4(p_5135->g_5077.x, p_5135->g_5077.x, p_5135->g_5077.x, p_5135->g_5077.x) & make_uint4(4294967293UL, (l_5074.f0 , l_5071[4][0]), l_5071[4][0], 0x76AF8038L))))).x)), ((safe_mul(make_uint2((l_5080 ^= ((l_5071[4][0] ^ 0x72L) ^ p_5135->g_2982.x)), 6UL), make_uint2(0UL, 0UL))))))) & make_uint2(4294967295UL, 4294967295UL))))).x) && p_5135->g_4753.x)));
    return (*l_5081);
}


/* ------------------------------------------ */
/* 
 * reads : p_5135->g_2615 p_5135->g_1926 p_5135->g_1041 p_5135->g_1042 p_5135->g_1567 p_5135->g_157 p_5135->g_8 p_5135->g_2411
 * writes: p_5135->g_382 p_5135->g_1814 p_5135->g_2615 p_5135->g_2792 p_5135->g_2069 p_5135->g_12 p_5135->g_8
 */
__device__ int32_t * func_21(struct S0  p_22, int32_t * p_23, int32_t * p_24, uint32_t  p_25, struct S2 * p_5135)
{ /* block id: 1498 */
    uint64_t l_3474 = 2UL;
    int32_t *l_3479 = nullptr;
    uint64_t l_3482 = 0UL;
    __shared__ int32_t *l_3487;
    l_3487 = nullptr;
    ushort1 l_3516 = make_ushort1(0x3E15L);
    int32_t l_3530 = (-5L);
    int16_t ****l_3541 = nullptr;
    uint32_t **l_3558 = &p_5135->g_1042;
    int32_t l_3615[2][3] = {{0x1AB63E39L, 6L, 0x1AB63E39L}, {0x1AB63E39L, 6L, 0x1AB63E39L}};
    uint8_t l_3625 = 0xFFL;
    uint8_t **l_3671 = nullptr;
    uint16_t l_3685 = 1UL;
    struct S0 l_3693 = {-20762};
    uint32_t l_3745[2];
    int32_t l_3768 = 0L;
    uint32_t l_3793 = 4294967294UL;
    __shared__ int16_t l_3837;
    l_3837 = (-1L);
    struct S0 *****l_3855 = &p_5135->g_709;
    int8_t *l_3875 = nullptr;
    __shared__ int16_t l_3913;
    l_3913 = (-1L);
    int16_t l_3915 = 0x072CL;
    int16_t l_3968 = 0x5D73L;
    __shared__ union U1 **l_3997;
    l_3997 = &p_5135->g_1549;
    int32_t l_4041 = (-2L);
    int8_t l_4083 = 0L;
    int64_t l_4092 = (-1L);
    uint8_t l_4112 = 0x90L;
    uint64_t l_4126[2];
    __shared__ uint32_t l_4145;
    l_4145 = 0UL;
    int32_t ****l_4195 = &p_5135->g_1092;
    uint8_t ***l_4206 = &p_5135->g_760;
    __shared__ uint8_t ****l_4205;
    l_4205 = &l_4206;
    int2 l_4217 = make_int2(0xD0E10CCEL, (-6L));
    int8_t l_4230[9];
    int32_t l_4233 = 0xE767F11BL;
    uint32_t l_4282 = 18446744073709551613UL;
    __shared__ int32_t *l_4348;
    l_4348 = nullptr;
    int1 l_4360 = make_int1(0L);
    uint8_t *****l_4477 = nullptr;
    __shared__ uint1 l_4501;
    l_4501 = make_uint1(0x6C740DB2L);
    uint2 l_4512 = make_uint2(0x7B8E8548L, 0x3153EEF2L);
    uint32_t *l_4626[3][3] = {{nullptr, nullptr, &p_5135->g_2586}, {nullptr, nullptr, &p_5135->g_2586}, {nullptr, nullptr, &p_5135->g_2586}};
    int32_t *l_4627 = nullptr;
    int32_t *l_4637[2];
    uint32_t l_4652 = 0xBE8BE419L;
    int32_t l_4662[8] = {0L, 0L, (-3L), 0L, 0L, (-3L), 0L, 0L};
    uchar3 l_4687 = make_uchar3(0xBFL, 0x8CL, 0xBFL);
    __shared__ long1 l_4721;
    l_4721 = make_long1((-8L));
    uint8_t *l_4770[2];
    int2 l_4782 = make_int2(5L, 0x53628A56L);
    uint32_t l_4793 = 0UL;
    __shared__ uint64_t l_4808;
    l_4808 = 0x8EA429AF28664979LL;
    short3 l_4865 = make_short3(0x09E1L, 0xD5F9L, 0x09E1L);
    ushort1 l_4879 = make_ushort1(9UL);
    char2 l_4923 = make_char2(0xD7L, (-1L));
    int16_t l_4941 = 2L;
    uint16_t l_4957[10][7] = {{0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}, {0UL, 4UL, 0x0950L, 4UL, 0UL, 0xC6DDL, 0UL}};
    int64_t l_4970 = 0x3B200B311994F4BCLL;
    int64_t l_4980 = (-6L);
    uint3 l_4996 = make_uint3(0xA48E9D64L, 0UL, 0xA48E9D64L);
    uint16_t l_5014 = 0xAC1AL;
    long4 l_5042 = make_long4(0x52D7CE6FA7604CD2LL, 0x10A89D0255C17F11LL, 0x52D7CE6FA7604CD2LL, 0x10A89D0255C17F11LL);
    int i, j;
    for (int i = 0; i < 2; i++)
        l_3745[i] = 0x5BAFC077L;
    for (int i = 0; i < 2; i++)
        l_4126[i] = 0x0503CA0E6915F19BLL;
    for (int i = 0; i < 9; i++)
        l_4230[i] = 0x40L;
    for (int i = 0; i < 2; i++)
        l_4637[i] = nullptr;
    for (int i = 0; i < 2; i++)
        l_4770[i] = &l_4112;
    for (p_5135->g_382 = 4; (p_5135->g_382 > (-12)); --p_5135->g_382)
    { /* block id: 1501 */
        __shared__ int16_t l_3452;
        l_3452 = 0L;
        int32_t l_3455 = 0xE101F206L;
        uint32_t *l_3485 = &p_5135->g_2586;
        int32_t l_3527[7][1][5] = {{{0x95249554L, 0x82B2F901L, 0x7AB7AD73L, 0x82B2F901L, 0x95249554L}}, {{0x95249554L, 0x82B2F901L, 0x7AB7AD73L, 0x82B2F901L, 0x95249554L}}, {{0x95249554L, 0x82B2F901L, 0x7AB7AD73L, 0x82B2F901L, 0x95249554L}}, {{0x95249554L, 0x82B2F901L, 0x7AB7AD73L, 0x82B2F901L, 0x95249554L}}, {{0x95249554L, 0x82B2F901L, 0x7AB7AD73L, 0x82B2F901L, 0x95249554L}}, {{0x95249554L, 0x82B2F901L, 0x7AB7AD73L, 0x82B2F901L, 0x95249554L}}, {{0x95249554L, 0x82B2F901L, 0x7AB7AD73L, 0x82B2F901L, 0x95249554L}}};
        int i, j, k;
        l_3455 = (safe_mul_func_uint64_t_u_u(l_3452, (safe_sub_func_uint16_t_u_u(p_22.f0, make_short1(0L).x))));
        if (l_3455)
            continue;
        for (p_5135->g_1814 = 5; (p_5135->g_1814 >= 0); p_5135->g_1814 -= 1)
        { /* block id: 1506 */
            // attempting a hip shared for loop
            __shared__ uint64_t l_3458[3][10][7];
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    for (int k = 0; k < 7; k++)
                        l_3458[i][j][k] = 1UL;
                }
            }
            __shared__ int32_t l_3461;
            l_3461 = (-1L);
            int4 l_3466 = make_int4((-1L), 0xF0540BD8L, (-1L), 0xF0540BD8L);
            int64_t l_3481 = (-5L);
            __shared__ uint8_t ***l_3513;
            l_3513 = &p_5135->g_760;
            uint8_t ****l_3512 = &l_3513;
            int i, j, k;
            for (p_5135->g_2615 = 0; (p_5135->g_2615 <= 0); p_5135->g_2615 += 1)
            { /* block id: 1509 */
                int32_t l_3456 = (-8L);
                int i, j, k;
                if ((((l_3456 ^= p_5135->g_1926[p_5135->g_2615]) && ((make_uchar2(p_5135->g_1926[p_5135->g_2615], 0xCDL) ^ ((((make_uchar2(7UL, 0UL) | make_uchar2(p_5135->g_3457.x, p_5135->g_3457.x))) | make_uchar2(255UL, 2UL))))).y) || l_3458[2][0][2]))
                { /* block id: 1511 */
                    int32_t *l_3459 = nullptr;
                    int32_t *l_3460 = &l_3455;
                    int32_t *l_3462 = nullptr;
                    int32_t *l_3463 = &hip_const_3.f2;
                    int32_t *l_3464 = nullptr;
                    __shared__ int32_t *l_3465;
                    l_3465 = nullptr;
                    int32_t *l_3467 = &p_5135->g_2775.f2;
                    int32_t *l_3468 = nullptr;
                    int32_t *l_3469 = nullptr;
                    __shared__ int32_t *l_3470;
                    l_3470 = nullptr;
                    __shared__ int32_t *l_3471;
                    l_3471 = nullptr;
                    __shared__ int32_t *l_3472;
                    l_3472 = nullptr;
                    int32_t *l_3473[2][10][6] = {{{nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}}, {{nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}, {nullptr, nullptr, &p_5135->g_2615, nullptr, nullptr, &l_3456}}};
                    int i, j, k;
                    --l_3474;
                }
                else
                { /* block id: 1513 */
                    __shared__ int32_t *l_3477;
                    l_3477 = nullptr;
                    int i;
                    l_3477 = p_24;
                }
                for (p_5135->g_2792 = 0; (p_5135->g_2792 <= 0); p_5135->g_2792 += 1)
                { /* block id: 1518 */
                    int32_t **l_3478 = &p_5135->g_2069;
                    (*l_3478) = &l_3461;
                    for (p_5135->g_12 = 0; (p_5135->g_12 <= 0); p_5135->g_12 += 1)
                    { /* block id: 1522 */
                        return l_3479;
                    }
                }
            }
            for (p_5135->g_8 = 0; (p_5135->g_8 >= 0); p_5135->g_8 -= 1)
            { /* block id: 1529 */
                int32_t *l_3480[2][1];
                char1 l_3505 = make_char1(0x80L);
                uint32_t l_3507[10];
                ushort4 l_3510 = make_ushort4(1UL, 0x88FEL, 1UL, 0x88FEL);
                int32_t l_3515 = 0x695940E0L;
                int i, j;
                for (int i = 0; i < 2; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_3480[i][j] = nullptr;
                }
                for (int i = 0; i < 10; i++)
                    l_3507[i] = 0x9BF32A02L;
                l_3482++;
                for (p_25 = 0; (p_25 <= 6); p_25 += 1)
                { /* block id: 1533 */
                    int32_t **l_3486[8] = {&p_5135->g_1525[2], &l_3480[0][0], &p_5135->g_1525[2], &l_3480[0][0], &p_5135->g_1525[2], &l_3480[0][0], &p_5135->g_1525[2], &l_3480[0][0]};
                    ushort3 l_3511 = make_ushort3(0x6F2DL, 3UL, 0x6F2DL);
                    int16_t *l_3514[4][4][1] = {{{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}, {{nullptr}, {nullptr}, {nullptr}, {nullptr}}};
                    __shared__ int8_t *l_3523;
                    l_3523 = nullptr;
                    int8_t *l_3524 = &hip_const_3.f1;
                    int8_t *l_3525 = &hip_const_3.f1;
                    __shared__ int8_t *l_3526;
                    l_3526 = &p_5135->g_291;
                    int i, j, k;
                    l_3480[0][0] = func_52((*p_5135->g_1041), (*p_5135->g_1041), p_5135);
                    l_3487 = func_52(l_3485, (*p_5135->g_1041), p_5135);
                    l_3527[1][0][2] &= (~(safe_mod_func_int64_t_s_s((((!(safe_add_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u((((safe_sub_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(((safe_sub_func_int64_t_s_s(0x04F27FCD3AA4739BLL, make_long4(p_5135->g_3500.x, p_5135->g_3500.x, p_5135->g_3500.x, p_5135->g_3500.x).w)) , ((l_3515 = (((safe_mul_func_int8_t_s_s(p_22.f0, ((safe_mod(make_char2(l_3505.x, l_3505.x), make_char2((-4L), (safe_unary_minus_func_uint32_t_u(l_3507[7])))))).x)) >= (p_5135->g_1567 != (((((safe_rshift(make_ushort3(l_3510.x, l_3510.x, l_3510.x), make_ushort3(16, 16, 16)))) ^ ((make_ushort3(l_3511.y, l_3511.y, l_3511.y) ^ make_ushort3(0xC4B7L, 65535UL, 65535UL))))).y , l_3512))) <= p_22.f0)) | make_ushort1(l_3516.x).x)), (make_char2(0xE5L, ((*l_3526) = (l_3455 = (l_3466.z = ((p_25 && ((p_5135->g_3089.z == (safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((safe_div_func_int32_t_s_s(l_3455, l_3455)), l_3481)), 1L))) > p_22.f0)) , 0x31L))))).x ^ p_25))), (*p_5135->g_157))) == 1L) & p_25), l_3458[2][4][6])), 0x37565472L))) ^ p_25) != 0xB41EB2CD053C2CD1LL), p_5135->g_2411.x)));
                    p_23 = p_24;
                }
            }
            return p_23;
        }
    }
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_5135->g_1712 hip_const_2 p_5135->g_2792 p_5135->g_2048 p_5135->g_325 p_5135->g_64 p_5135->g_157 p_5135->g_8 p_5135->g_1231 hip_const_5 p_5135->g_2615 p_5135->g_1743 p_5135->g_1820 p_5135->g_2843 p_5135->g_2844 p_5135->g_2845 p_5135->g_2851 p_5135->g_1355 p_5135->g_1814 p_5135->g_2859 p_5135->g_1448 p_5135->g_158 p_5135->g_2775.f0 p_5135->g_62 p_5135->g_1480 p_5135->g_2450
 * writes: p_5135->g_1712 p_5135->g_62 p_5135->g_8 p_5135->g_2615 p_5135->g_1743 p_5135->g_2432 p_5135->g_1814 p_5135->g_2493 p_5135->g_2775.f0 p_5135->g_2103 p_5135->g_2792 p_5135->g_986
 */
__device__ struct S0  func_26(int16_t  p_27, uint32_t  p_28, int32_t * p_29, uint64_t  p_30, int32_t  p_31, struct S2 * p_5135)
{ /* block id: 1268 */
    int8_t l_2803 = 0L;
    uint32_t l_2816 = 1UL;
    struct S0 *l_2822 = &p_5135->g_62;
    long2 l_2826 = make_long2(0L, 1L);
    union U1 l_2857[1] = {{0x2F988911L}};
    ulong3 l_2893 = make_ulong3(0x1F1691DBCD94996CLL, 0xEA30E34EEC95FC4FLL, 0x1F1691DBCD94996CLL);
    __shared__ int64_t l_2913;
    l_2913 = (-5L);
    uchar1 l_2931 = make_uchar1(0x2FL);
    __shared__ uint32_t *l_2937;
    l_2937 = &p_5135->g_213;
    struct S0 ***l_2959[9];
    uint32_t *l_2972 = &p_5135->g_213;
    int8_t **l_3000 = &p_5135->g_1580;
    int32_t l_3018 = (-10L);
    int32_t l_3019[1];
    int16_t l_3028 = 0x1905L;
    short1 l_3057 = make_short1(0x4EC8L);
    __shared__ ulong4 l_3133;
    l_3133 = make_ulong4(18446744073709551610UL, 0x05BFC7BB2DA98701LL, 18446744073709551610UL, 0x05BFC7BB2DA98701LL);
    uint32_t *l_3177 = &l_2857[0].f0;
    ushort4 l_3221 = make_ushort4(0x9461L, 0x1CA2L, 0x9461L, 0x1CA2L);
    uint32_t l_3249[5];
    int16_t ****l_3257[8] = {&p_5135->g_3255, &p_5135->g_3255, &p_5135->g_3255, &p_5135->g_3255, &p_5135->g_3255, &p_5135->g_3255, &p_5135->g_3255, &p_5135->g_3255};
    int32_t ***l_3294 = &p_5135->g_565[2];
    int4 l_3311 = make_int4(3L, 1L, 3L, 1L);
    int1 l_3313 = make_int1((-4L));
    uint8_t ***l_3323 = &p_5135->g_760;
    uint16_t l_3335 = 65534UL;
    long1 l_3347 = make_long1(1L);
    uchar3 l_3371 = make_uchar3(0x9DL, 1UL, 0x9DL);
    __shared__ ulong2 l_3374;
    l_3374 = make_ulong2(0x2A572941CE8E75EALL, 0x5D7A1AAFC1E7A478LL);
    uint2 l_3397 = make_uint2(0UL, 4294967291UL);
    uint8_t l_3415 = 248UL;
    uint32_t *l_3426 = nullptr;
    uint32_t *l_3427 = &p_5135->g_2103;
    uint8_t *****l_3428 = nullptr;
    uint64_t l_3431 = 0x2F4AE3D19F441A0ALL;
    __shared__ uint8_t *l_3432;
    l_3432 = nullptr;
    uint8_t *l_3433 = &p_5135->g_2792;
    __shared__ uint8_t *l_3434;
    l_3434 = nullptr;
    uint8_t *l_3435 = nullptr;
    uint8_t *l_3436 = &hip_const_1;
    uint8_t *l_3437 = &hip_const_1;
    uint8_t *l_3438 = &hip_const_1;
    uint8_t *l_3439 = nullptr;
    uint8_t *l_3440 = &p_5135->g_986;
    int32_t *l_3441 = nullptr;
    int32_t *l_3442 = nullptr;
    __shared__ int32_t *l_3443;
    l_3443 = nullptr;
    int32_t *l_3444 = nullptr;
    int32_t *l_3445 = nullptr;
    int32_t *l_3446 = &l_3019[0];
    struct S0 l_3447 = {-32719};
    int i;
    for (int i = 0; i < 9; i++)
        l_2959[i] = &p_5135->g_325;
    for (int i = 0; i < 1; i++)
        l_3019[i] = (-10L);
    for (int i = 0; i < 5; i++)
        l_3249[i] = 18446744073709551615UL;
    for (p_5135->g_1712 = 29; (p_5135->g_1712 <= 1); p_5135->g_1712 = safe_sub_func_int64_t_s_s(p_5135->g_1712, 9))
    { /* block id: 1271 */
        uint1 l_2793 = make_uint1(0xEA0AAC88L);
        uint2 l_2794 = make_uint2(0xB4FA8513L, 0xA5A210CCL);
        int32_t l_2799 = 4L;
        uint64_t *l_2800[6] = {&p_5135->g_1743, &p_5135->g_1743, nullptr, &p_5135->g_1743, &p_5135->g_1743, nullptr};
        int8_t *l_2804[2][6][7] = {{{&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}}, {{&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}, {&p_5135->g_60, nullptr, &l_2803, nullptr, &l_2803, &p_5135->g_60, &p_5135->g_60}}};
        int32_t l_2805[2];
        uint32_t *l_2806 = &p_5135->g_1926[0];
        struct S0 *l_2821[4][5][6] = {{{&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}}, {{&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}}, {{&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}}, {{&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}, {&p_5135->g_62, &p_5135->g_62, nullptr, &p_5135->g_62, &p_5135->g_62, &p_5135->g_62}}};
        int16_t ****l_2847 = nullptr;
        int16_t *****l_2846[3][3][5] = {{{&l_2847, &l_2847, &l_2847, &l_2847, nullptr}, {&l_2847, &l_2847, &l_2847, &l_2847, nullptr}, {&l_2847, &l_2847, &l_2847, &l_2847, nullptr}}, {{&l_2847, &l_2847, &l_2847, &l_2847, nullptr}, {&l_2847, &l_2847, &l_2847, &l_2847, nullptr}, {&l_2847, &l_2847, &l_2847, &l_2847, nullptr}}, {{&l_2847, &l_2847, &l_2847, &l_2847, nullptr}, {&l_2847, &l_2847, &l_2847, &l_2847, nullptr}, {&l_2847, &l_2847, &l_2847, &l_2847, nullptr}}};
        int32_t ***l_2876 = &p_5135->g_565[3];
        int i, j, k;
        for (int i = 0; i < 2; i++)
            l_2805[i] = 2L;
        if ((*p_29))
            break;
        if ((safe_add_func_int32_t_s_s((*p_29), make_int3(((p_5135->g_2792 == ((make_uint1(l_2793.x) ^ make_uint1(l_2794.y))).x) > (~(safe_rshift_func_int32_t_s_u((0L != (safe_div_func_uint8_t_u_u(((!((l_2799 = (-3L)) || (0L | ((p_5135->g_2048.y < (p_30 &= l_2799)) < (safe_lshift_func_uint64_t_u_u((l_2803 <= (l_2805[0] = 0x6CL)), 18)))))) >= p_28), 255UL))), 16)))), (*p_29), (*p_29)).y)))
        { /* block id: 1276 */
            uint64_t l_2807[5];
            struct S0 l_2823 = {-31516};
            long3 l_2825 = make_long3((-1L), 0L, (-1L));
            int32_t *l_2829 = nullptr;
            int32_t *l_2830 = &hip_const_3.f2;
            int32_t *l_2831 = &p_5135->g_2615;
            int8_t **l_2853 = nullptr;
            int i;
            for (int i = 0; i < 5; i++)
                l_2807[i] = 0UL;
            p_29 = p_29;
            (**p_5135->g_325) = l_2823;
            (*l_2831) |= ((safe_unary_minus_func_int64_t_s(((((make_long1(p_27) ^ make_long1(l_2825.x))) ^ make_long1(l_2826.y))).x)) ^ (safe_sub_func_int16_t_s_s(((*p_5135->g_157) |= l_2805[0]), (*p_5135->g_1231))));
            for (p_30 = (-30); (p_30 != 51); p_30 = safe_add_func_int64_t_s_s(p_30, 3))
            { /* block id: 1283 */
                int64_t l_2855[5] = {0x4BE6C4A22349D6ABLL, 0xF254B19577AE5940LL, 0x4BE6C4A22349D6ABLL, 0xF254B19577AE5940LL, 0x4BE6C4A22349D6ABLL};
                int i;
                for (p_5135->g_1743 = 0; (p_5135->g_1743 <= 7); p_5135->g_1743 += 1)
                { /* block id: 1286 */
                    uint8_t l_2842 = 250UL;
                    // attempting a hip shared for loop
                    __shared__ int32_t l_2856[8];
                    for (int i = 0; i < 8; i++)
                        l_2856[i] = 0L;
                    int i;
                    for (int i = 0; i < 8; i++)
                        l_2856[i] = 0L;
                    for (l_2816 = 2; (l_2816 <= 7); l_2816 += 1)
                    { /* block id: 1289 */
                        __shared__ int32_t *l_2840;
                        l_2840 = nullptr;
                        __shared__ int32_t *l_2841;
                        l_2841 = &hip_const_4[4][2][6];
                        int16_t l_2848 = 0xE120L;
                        uint16_t *l_2852[2][8][1] = {{{&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}}, {{&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}, {&p_5135->g_12}}};
                        int32_t l_2854 = 2L;
                        int i, j, k;
                        l_2856[1] &= (safe_mul_func_int16_t_s_s(p_5135->g_1820[p_5135->g_1743], ((safe_lshift(make_ushort2(0UL, (safe_add_func_uint64_t_u_u(((((l_2842 = p_5135->g_1820[l_2816]) , ((((((((make_ulong4(p_5135->g_2843.x, p_5135->g_2843.x, p_5135->g_2843.x, p_5135->g_2843.x) ^ make_ulong4(p_5135->g_2844.y, p_5135->g_2844.y, p_5135->g_2844.y, p_5135->g_2844.y))) & make_ulong4(p_5135->g_2845.y, p_5135->g_2845.y, p_5135->g_2845.y, p_5135->g_2845.y))) ^ make_ulong4(0xB391568B39F5F0B8LL, ((0x200C040D5C9FF400LL >= ((((nullptr == l_2846[1][0][3]) != l_2805[0]) < (l_2854 = ((((l_2848 & (safe_mod_func_uint16_t_u_u((((p_5135->g_2432.x = make_ushort2(p_5135->g_2851.x, p_5135->g_2851.x).y) , p_5135->g_1355.x) > l_2842), p_30))) >= l_2848) , &p_5135->g_1580) != l_2853))) != 2L)) >= (*p_29)), p_5135->g_1820[l_2816], 0x7F52721F320F1029LL))) & make_ulong4(0x5F7C2DE48B994EEALL, 0x5F7C2DE48B994EEALL, 0x5F7C2DE48B994EEALL, 0x5F7C2DE48B994EEALL))).z) , (*p_5135->g_1231)) == 7UL), l_2855[0]))), make_ushort2(0xD9CCL, 0xD9CCL)))).y));
                    }
                    for (p_5135->g_1814 = 0; (p_5135->g_1814 <= 4); p_5135->g_1814 += 1)
                    { /* block id: 1297 */
                        int32_t **l_2858 = &p_5135->g_2493[5][6];
                        uint16_t l_2860 = 0x62E1L;
                        int i;
                        (*l_2858) = func_52((l_2857[0] , (p_5135->g_1820[(p_5135->g_1814 + 1)] , nullptr)), &p_28, p_5135);
                        (*l_2831) = make_int4(p_5135->g_2859.x, p_5135->g_2859.x, p_5135->g_2859.x, p_5135->g_2859.x).x;
                        ++l_2860;
                    }
                    (*l_2831) ^= 0xEB1B76E7L;
                }
            }
        }
        else
        { /* block id: 1305 */
            char1 l_2873 = make_char1(0xEBL);
            int32_t l_2877 = (-1L);
            int i;
            l_2877 ^= (((safe_sub_func_uint8_t_u_u((p_30 || ((safe_div_func_int16_t_s_s((-9L), 0x7DC1L)) <= (0xADL >= ((!((safe_rshift(make_char4(l_2873.x, l_2873.x, l_2873.x, l_2873.x), make_char4(8, 8, 8, 8)))).w) && ((((((safe_sub_func_uint8_t_u_u(6UL, (&p_27 != nullptr))) <= p_5135->g_1448.y) < (l_2876 == nullptr)) != (-2L)) , 0x3C48L) != (*p_5135->g_158)))))), l_2803)) <= 2L) , (*p_29));
        }
        if (l_2826.x)
            break;
    }
    for (p_5135->g_2775.f0 = 18; (p_5135->g_2775.f0 == 33); p_5135->g_2775.f0++)
    { /* block id: 1312 */
        struct S0 l_2896 = {23981};
        long1 l_2901 = make_long1(0L);
        int64_t *l_2902 = &p_5135->g_106;
        int8_t *l_2903 = &l_2803;
        int32_t *l_2914[9];
        uint16_t *l_2915[2];
        __shared__ int32_t l_2916;
        l_2916 = (-3L);
        ulong2 l_2942 = make_ulong2(0x5F92D0E83D242955LL, 18446744073709551615UL);
        uint32_t **l_2943 = &p_5135->g_1042;
        struct S0 ***l_2947 = &p_5135->g_325;
        uchar4 l_2964 = make_uchar4(248UL, 0x43L, 248UL, 0x43L);
        int16_t **l_2965 = &p_5135->g_157;
        int1 l_2979 = make_int1(0x3A2B30F9L);
        uchar4 l_2993 = make_uchar4(2UL, 0x6EL, 2UL, 0x6EL);
        __shared__ int32_t l_3020;
        l_3020 = (-1L);
        int32_t l_3025 = (-1L);
        uint8_t l_3054 = 0x2AL;
        struct S0 *****l_3093 = &p_5135->g_709;
        ulong1 l_3106 = make_ulong1(7UL);
        int32_t **l_3134 = &p_5135->g_1525[1];
        int32_t l_3145 = 0L;
        __shared__ int32_t l_3146;
        l_3146 = (-1L);
        __shared__ int32_t l_3147;
        l_3147 = 0xEBF68C54L;
        int32_t l_3148 = 0x7121A29AL;
        int32_t l_3150 = 0xC2403C87L;
        __shared__ int32_t l_3151;
        l_3151 = 0x6F9C5870L;
        int32_t l_3152 = 1L;
        int32_t l_3153 = 0xB883BE2FL;
        int32_t l_3154 = 0xA86FA097L;
        int32_t l_3155 = (-8L);
        int32_t l_3156 = 2L;
        // attempting a hip shared for loop
        __shared__ int32_t l_3157[3];
        for (int i = 0; i < 3; i++)
            l_3157[i] = 9L;
        int32_t ****l_3222[5][6][8] = {{{&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}}, {{&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}}, {{&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}}, {{&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}}, {{&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}, {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, nullptr, nullptr, nullptr, &p_5135->g_1092}}};
        // attempting a hip shared for loop
        __shared__ union U1 l_3256[6];
        for (int i = 0; i < 6; i++)
            l_3256[i] = {0x27409D79L};
        __shared__ uint2 l_3275;
        l_3275 = make_uint2(0xD52901ACL, 7UL);
        uint1 l_3298 = make_uint1(4294967286UL);
        uint8_t l_3301 = 253UL;
        uint8_t l_3309 = 0xD7L;
        uint8_t ***l_3322 = &p_5135->g_760;
        ushort1 l_3383 = make_ushort1(0x30D9L);
        int4 l_3391 = make_int4(0L, 0x42A0A100L, 0L, 0x42A0A100L);
        uchar1 l_3392 = make_uchar1(0x40L);
        int32_t l_3400 = 0xCAE9C0FDL;
        // attempting a hip shared for loop
        __shared__ uint8_t l_3401[8][8][4];
        for (int i = 0; i < 8; i++)
        {
            for (int j = 0; j < 8; j++)
            {
                for (int k = 0; k < 4; k++)
                    l_3401[i][j][k] = 0xB8L;
            }
        }
        uint8_t *l_3405 = &p_5135->g_2792;
        int32_t l_3410 = (-1L);
        int i, j, k;
        for (int i = 0; i < 9; i++)
            l_2914[i] = nullptr;
        for (int i = 0; i < 2; i++)
            l_2915[i] = nullptr;
        for (int i = 0; i < 3; i++)
            l_3157[i] = 9L;
    }
    (*l_3446) |= (l_3313.x = ((safe_add_func_int8_t_s_s(((make_char3(4L, (((safe_mul_func_int16_t_s_s((((l_3415 , make_uint4(0xAF3CA9ABL, 0x2125DA7BL, 0UL, ((((*l_3440) = ((*l_3433) = ((((*l_2822) , (0x89FF81995DAE7FB7LL == ((safe_add_func_int32_t_s_s((0UL != ((*l_3427) = (safe_mul_func_uint64_t_u_u(p_5135->g_1480.y, (safe_lshift_func_uint32_t_u_u((--p_28), ((*l_3177)++))))))), (l_3428 != l_3428))) || l_2913))) ^ (safe_rshift_func_int64_t_s_s(((p_5135->g_2450.z , 0xECB5A7C4L) & l_3431), 49))) != 0x35C7L))) , l_3323) != &p_5135->g_760)).w) || (*p_29)) ^ (*p_5135->g_1231)), p_31)) > 0x3AA8L) | 2L), 1L) ^ make_char3(0xADL, 0xADL, 0xADL))).y, 8UL)) || p_28));
    return l_3447;
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_3 p_5135->g_60 p_5135->g_157 p_5135->g_8 p_5135->g_158 p_5135->g_1410 p_5135->g_1231 hip_const_5 p_5135->g_1712 p_5135->g_2562 p_5135->g_139 p_5135->g_1431 p_5135->g_2586 p_5135->g_203 p_5135->g_906 p_5135->g_400 p_5135->g_1549 hip_const_6
 * writes: p_5135->g_60 p_5135->g_64 p_5135->g_986 p_5135->g_2493 p_5135->g_8 p_5135->g_1109 p_5135->g_213 p_5135->g_1712 p_5135->g_1431 p_5135->g_203 p_5135->g_2699 p_5135->g_12 p_5135->g_2775
 */
__device__ int32_t * func_37(int32_t  p_38, int32_t * p_39, int32_t * p_40, struct S2 * p_5135)
{ /* block id: 5 */
    union U1 *l_2773 = &hip_const_3;
    union U1 *l_2774[6];
    uint32_t *l_2776 = &p_5135->g_1926[0];
    __shared__ int32_t *l_2786;
    l_2786 = nullptr;
    int i;
    for (int i = 0; i < 6; i++)
        l_2774[i] = &hip_const_6;
    l_2786 = func_52(((p_5135->g_2775 = func_55(p_38, hip_const_3, p_5135)) , l_2776), l_2776, p_5135);
    return l_2786;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ int32_t * func_52(uint32_t * p_53, uint32_t * p_54, struct S2 * p_5135)
{ /* block id: 1263 */
    int32_t *l_2777 = nullptr;
    __shared__ int32_t *l_2778;
    l_2778 = nullptr;
    int32_t *l_2779 = &p_5135->g_1814;
    int32_t *l_2780[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int64_t l_2781 = 0xF152911D854BB2E3LL;
    int64_t l_2782 = (-9L);
    uint32_t l_2783 = 0UL;
    int i;
    ++l_2783;
    return l_2777;
}


/* ------------------------------------------ */
/* 
 * reads : p_5135->g_60 p_5135->g_157 p_5135->g_8 p_5135->g_158 p_5135->g_1410 p_5135->g_1231 hip_const_5 p_5135->g_1712 p_5135->g_2562 p_5135->g_139 p_5135->g_1431 p_5135->g_2586 p_5135->g_906 p_5135->g_400 p_5135->g_1549 hip_const_6 p_5135->g_203 l_4018
 * writes: p_5135->g_60 p_5135->g_64 p_5135->g_986 p_5135->g_2493 p_5135->g_8 p_5135->g_1109 p_5135->g_213 p_5135->g_1712 p_5135->g_1431 p_5135->g_203 p_5135->g_2699 p_5135->g_12
 */
__device__ union U1  func_55(uint16_t  p_56, union U1  p_57, struct S2 * p_5135)
{ /* block id: 6 */
    int32_t *l_58 = &hip_const_6.f2;
    int32_t *l_59[10] = {&hip_const_2, &hip_const_2, nullptr, nullptr, &hip_const_2, &hip_const_2, &hip_const_2, nullptr, nullptr, &hip_const_2};
    uint4 l_2482 = make_uint4(2UL, 4294967295UL, 2UL, 4294967295UL);
    __shared__ int32_t l_2581;
    l_2581 = 0xCBCADF3BL;
    int8_t l_2585 = 3L;
    long2 l_2595 = make_long2(0x1A0D0979B675EE58LL, 0xA624B59A408FE749LL);
    int3 l_2596 = make_int3(0xB29619BFL, 1L, 0xB29619BFL);
    uint32_t l_2604 = 18446744073709551613UL;
    uint8_t **l_2605 = &p_5135->g_761[3][3][4];
    int16_t ****l_2643 = nullptr;
    __shared__ int16_t *****l_2642;
    l_2642 = &l_2643;
    __shared__ int8_t l_2655;
    l_2655 = 0xD9L;
    long2 l_2659 = make_long2(1L, 0xDA55FFFA95098237LL);
    int32_t ***l_2660 = &p_5135->g_565[6];
    uint32_t l_2689[9] = {0x7821FE05L, 0x7821FE05L, 0xE15763DAL, 0x7821FE05L, 0x7821FE05L, 0xE15763DAL, 0x7821FE05L, 0x7821FE05L, 0xE15763DAL};
    int16_t l_2761 = 0x6140L;
    union U1 l_2763[4] = {{7UL}, {0x6B5ED287L}, {7UL}, {0x6B5ED287L}};
    int i;
lbl_2700:
    p_5135->g_60 |= (-1L);
    for (p_56 = 2; (p_56 <= 9); p_56 += 1)
    { /* block id: 10 */
        struct S0 *l_61 = &p_5135->g_62;
        struct S0 **l_63[7];
        uint2 l_2484 = make_uint2(4294967288UL, 0x9818E68BL);
        long2 l_2569 = make_long2(0x4EB282D55D1535ECLL, 0L);
        uint32_t *l_2574 = nullptr;
        uint32_t *l_2579 = nullptr;
        int32_t l_2580 = 0L;
        int32_t l_2583 = 1L;
        int32_t l_2584 = 1L;
        char2 l_2599 = make_char2(1L, 3L);
        int32_t l_2632 = 5L;
        int32_t l_2634 = 0x74FAE9ECL;
        int32_t l_2635 = 0x4DD0A8E8L;
        int16_t *****l_2644 = &l_2643;
        union U1 l_2665 = {0x1BEEE6E2L};
        int16_t l_2686 = (-7L);
        __shared__ int32_t l_2714;
        l_2714 = 0x65DBA8F0L;
        int32_t l_2715 = 0xDCEEDE88L;
        int2 l_2716 = make_int2(8L, (-2L));
        uint16_t l_2717[1][2][1];
        int3 l_2762 = make_int3(6L, 0x0D7055F9L, 6L);
        uint16_t l_2767 = 8UL;
        __shared__ int32_t *l_2771;
        l_2771 = nullptr;
        int i, j, k;
        for (int i = 0; i < 7; i++)
            l_63[i] = nullptr;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 2; j++)
            {
                for (int k = 0; k < 1; k++)
                    l_2717[i][j][k] = 0UL;
            }
        }
        p_5135->g_64 = l_61;
        for (p_57.f0 = 0; (p_57.f0 <= 9); p_57.f0 += 1)
        { /* block id: 14 */
            int32_t ***l_2476 = &p_5135->g_565[5];
            __shared__ uint64_t *l_2478;
            l_2478 = &p_5135->g_1743;
            ushort2 l_2479 = make_ushort2(5UL, 65534UL);
            uint32_t *l_2483 = &p_5135->g_2325;
            int8_t *l_2487 = &p_5135->g_291;
            int8_t *l_2488 = &hip_const_6.f1;
            int8_t *l_2489[3][1][7];
            int32_t l_2490 = (-1L);
            __shared__ uint2 l_2521;
            l_2521 = make_uint2(1UL, 0x2AF4E2B9L);
            uint16_t *l_2557 = nullptr;
            uint16_t *l_2558 = nullptr;
            __shared__ uint16_t *l_2559;
            l_2559 = &p_5135->g_1712;
            __shared__ int32_t l_2563;
            l_2563 = 0x2FA0E475L;
            int32_t l_2582 = 0x9FAD319DL;
            uint32_t l_2622 = 0x79AF8087L;
            __shared__ union U1 *l_2627;
            l_2627 = &hip_const_6;
            uint64_t l_2628 = 0x8FD8EF2305B88A7ELL;
            int8_t l_2633[8][10][2] = {{{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}, {{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}, {{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}, {{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}, {{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}, {{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}, {{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}, {{(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}, {(-3L), (-1L)}}};
            __shared__ int32_t l_2636;
            l_2636 = 0L;
            uint64_t l_2637 = 18446744073709551607UL;
            __shared__ struct S0 *l_2657;
            l_2657 = &p_5135->g_62;
            int i, j, k;
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 1; j++)
                {
                    for (int k = 0; k < 7; k++)
                        l_2489[i][j][k] = &hip_const_6.f1;
                }
            }
            for (p_5135->g_60 = 0; p_5135->g_60 < 10; p_5135->g_60 += 1)
            {
                l_59[p_5135->g_60] = &hip_const_2;
            }
            if ((+(func_65(l_59[p_57.f0], p_5135) < ((safe_mod_func_uint8_t_u_u(1UL, ((safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((nullptr == l_2476), make_short2(0xA0E1L, (((p_5135->g_1820[1] != ((*l_2478) ^= make_ulong1(p_5135->g_2477.y).x)) <= make_ushort4(l_2479.x, l_2479.x, l_2479.x, l_2479.x).x) || ((l_2490 ^= ((((((safe_div(make_uint2(l_2482.y, l_2482.y), make_uint2(0xCEF2595CL, ((*l_2483) ^= make_uint1(p_57.f0).x))))) ^ make_uint2(l_2484.x, l_2484.x))).x <= (((*l_2487) = (safe_lshift_func_int16_t_s_u(0x642FL, 10))) > 251UL)) | p_5135->g_1738.x)) == p_57.f0))).x)), p_57.f0)) ^ p_56))) >= 0xDEL))))
            { /* block id: 1120 */
                uint2 l_2495 = make_uint2(0UL, 0x76445BE4L);
                int i;
                for (p_5135->g_986 = (-24); (p_5135->g_986 <= 15); p_5135->g_986 = safe_add_func_uint32_t_u_u(p_5135->g_986, 1))
                { /* block id: 1123 */
                    int32_t l_2494 = (-1L);
                    p_5135->g_2493[5][6] = l_59[4];
                    for (p_5135->g_8 = 6; (p_5135->g_8 >= 2); p_5135->g_8 -= 1)
                    { /* block id: 1127 */
                        int i, j;
                        if (p_57.f0)
                            break;
                    }
                    ++l_2495.y;
                }
            }
            else
            { /* block id: 1132 */
                int16_t l_2511 = 0L;
                uchar2 l_2518 = make_uchar2(0xE6L, 0UL);
                int32_t *l_2550 = nullptr;
                int i;
                for (p_5135->g_1109 = 0; (p_5135->g_1109 != (-9)); --p_5135->g_1109)
                { /* block id: 1135 */
                    short3 l_2506 = make_short3(0x57C6L, (-5L), 0x57C6L);
                    int i;
                    if (p_57.f0)
                        break;
                    for (p_5135->g_213 = 0; (p_5135->g_213 <= 31); p_5135->g_213++)
                    { /* block id: 1139 */
                        char4 l_2534 = make_char4(0x67L, (-3L), 0x67L, (-3L));
                        char3 l_2535 = make_char3(0x7DL, 0xBEL, 0x7DL);
                        __shared__ int32_t l_2538;
                        l_2538 = 0xCD8015F5L;
                        uint8_t *l_2539 = nullptr;
                        __shared__ uint8_t *l_2540;
                        l_2540 = &p_5135->g_986;
                        int i;
                        l_2538 = (safe_unary_minus_func_int64_t_s((((safe_unary_minus_func_uint8_t_u((p_56 | (safe_mul_func_int16_t_s_s((*p_5135->g_158), (make_short1(l_2506.y).x == make_ushort2((safe_mod_func_uint32_t_u_u(1UL, make_int3((safe_lshift_func_uint32_t_u_s(((l_2511 == ((~make_char4(0x17L, 5L, (safe_sub_func_int16_t_s_s((safe_lshift_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((l_2511 <= make_uchar4(l_2518.y, l_2518.y, l_2518.y, l_2518.y).w), make_long1((-1L)).x)), l_2506.y)), (safe_rshift_func_uint16_t_u_s((((((((make_uint3(l_2521.x, l_2521.x, l_2521.x) ^ make_uint3((safe_mod_func_int16_t_s_s((*p_5135->g_157), ((safe_mul(make_ushort4((safe_mod_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((safe_rshift_func_int64_t_s_s((((safe_mod_func_int8_t_s_s(make_char1(make_char3(l_2534.y, l_2534.y, l_2534.y).x).x, ((*l_2487) = (~make_char4(l_2535.x, l_2535.x, l_2535.x, l_2535.x).x)))) >= ((make_char4(1L, (safe_lshift_func_uint8_t_u_u((--(*l_2540)), 2)), (-4L), 1L) ^ make_char4(0x55L, p_56, 6L, 0xB7L))).y) >= (safe_add_func_uint64_t_u_u((((safe_add_func_uint32_t_u_u((make_char4(p_5135->g_2547.x, p_5135->g_2547.x, p_5135->g_2547.x, p_5135->g_2547.x).w ^ ((safe_div_func_int8_t_s_s(((p_5135->g_1532.z , 0x1CE42460L) & l_2484.x), 0xDAL)) <= 250UL)), l_2535.y)) ^ p_5135->g_1429.y) == p_5135->g_268.x), p_5135->g_295))), 51)), l_2484.x)), p_56)), 65531UL, 65535UL, 0xA246L), make_ushort4(0xC853L, 0xC853L, 0xC853L, 0xC853L)))).x)), 4294967294UL, 0UL))) ^ make_uint3(0x46F5B5D2L, 0x46F5B5D2L, 0x46F5B5D2L))) ^ make_uint3(0x106ABD91L, 0x106ABD91L, 0x106ABD91L))).y || 4UL), 13)))), p_56))).y) > 0x457D41B0L), l_2506.y)), p_56, 0xD1667B95L).z)), l_2484.y).y)))))) == l_2535.z) ^ (**p_5135->g_1410))));
                    }
                    l_2550 = l_59[0];
                }
            }
            l_2582 = ((safe_add_func_uint8_t_u_u(((safe_sub_func_int16_t_s_s((l_2585 |= (safe_div_func_uint64_t_u_u(((p_5135->g_1431.x |= (((*l_2559) &= (**p_5135->g_1410)) ^ (l_2584 = (((((((~(safe_div_func_uint16_t_u_u((((l_2563 = (p_5135->g_2562 ^ make_ulong1(18446744073709551612UL).x)) <= (p_56 == ((l_2583 ^= (safe_rshift_func_int64_t_s_s(((((l_2484.x , (((safe_unary_minus_func_uint32_t_u((247UL != (((((((make_long1(0L) ^ make_long1(0x02F6B39036919F75LL))) ^ make_long1(l_2569.y))) & ((safe_add(make_long1((safe_lshift_func_uint32_t_u_s(((l_2574 != (*p_5135->g_1041)) < (((safe_mul_func_int8_t_s_s((l_2580 = ((*l_2487) = ((((safe_add_func_int32_t_s_s((l_2579 != nullptr), 8L)) != (*p_5135->g_1231)) , &hip_const_4[2][0][5]) == nullptr))), 0xEFL)) & 0L) == (**p_5135->g_1410))), 21))), make_long1(0x3AD93527FCFA04FELL)))))).x >= l_2484.x)))) > 0L) , 1L)) > 0x50E3FF6A1EBFE20FLL) | (**p_5135->g_1410)) < l_2581), l_2582))) > 0x66L))) >= p_5135->g_139[0][0]), l_2484.x))) < p_57.f0) , (-1L)) , p_57.f0) || 18446744073709551608UL) != 0x860E55EBA6337633LL) > 0L)))) ^ 0UL), p_56))), 0UL)) && (*p_5135->g_1231)), p_5135->g_2586)) == 4294967295UL);
        }
        for (l_2665.f0 = 13; (l_2665.f0 < 40); l_2665.f0 = safe_add_func_int64_t_s_s(l_2665.f0, 7))
        { /* block id: 1192 */
            uint32_t *l_2680 = &p_5135->g_2586;
            struct S0 *l_2684 = &p_5135->g_62;
            int32_t l_2687 = 0x8ADA9CD6L;
            __shared__ int32_t l_2706;
            l_2706 = 0xEE296121L;
            int32_t l_2707 = 0xEF51A005L;
            int32_t l_2711 = (-4L);
            int32_t l_2712 = (-1L);
            // attempting a hip shared for loop
            __shared__ int32_t l_2713[8][8][4];
            for (int i = 0; i < 8; i++)
            {
                for (int j = 0; j < 8; j++)
                {
                    for (int k = 0; k < 4; k++)
                        l_2713[i][j][k] = 1L;
                }
            }
            uint1 l_2726 = make_uint1(4294967295UL);
            uint8_t l_2758 = 255UL;
            int32_t *l_2772 = &l_2584;
            int i, j, k;
            for (p_5135->g_203 = 0; (p_5135->g_203 <= 3); ++p_5135->g_203)
            { /* block id: 1195 */
                int8_t l_2688 = 1L;
                int32_t *l_2690 = &l_2687;
                int32_t l_2692 = 0xE514C2C9L;
                int32_t l_2693 = 0x2F14554BL;
                int32_t l_2694[5][3] = {{0L, 0xEF377F19L, 0x93C4747CL}, {0L, 0xEF377F19L, 0x93C4747CL}, {0L, 0xEF377F19L, 0x93C4747CL}, {0L, 0xEF377F19L, 0x93C4747CL}, {0L, 0xEF377F19L, 0x93C4747CL}};
                struct S0 *l_2698 = &p_5135->g_62;
                int i, j;
                for (l_2581 = (-21); (l_2581 > (-5)); l_2581 = safe_add_func_int16_t_s_s(l_2581, 9))
                { /* block id: 1198 */
                    uint16_t l_2681 = 0x667EL;
                    int32_t l_2683 = 0x9D346662L;
                    struct S0 *l_2685 = &p_5135->g_62;
                    __shared__ uint32_t l_2695;
                    l_2695 = 4294967294UL;
                    for (l_2635 = 6; (l_2635 >= 0); l_2635 -= 1)
                    { /* block id: 1201 */
                        int8_t *l_2682[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int32_t *l_2691[2][8] = {{nullptr, nullptr, &l_2683, nullptr, nullptr, &l_2683, nullptr, nullptr}, {nullptr, nullptr, &l_2683, nullptr, nullptr, &l_2683, nullptr, nullptr}};
                        int i, j;
                        p_57.f2 = (make_int2(p_56, 0xED56BD26L).x > (make_ushort4(65526UL, 1UL, (((p_57.f0 | (safe_sub_func_uint8_t_u_u(((l_2687 = (safe_lshift_func_int64_t_s_u(((+((safe_lshift_func_int64_t_s_s(0x4A608771EA0763F6LL, 52)) | (p_57.f0 || (((+((func_68(((*p_5135->g_1041) = l_2680), (l_2683 = l_2681), l_2684, l_2685, p_5135) , l_2686) == 0x83L)) , 0x049CF37DD24C8F67LL) <= 18446744073709551615UL)))) , l_2687), 0))) >= p_57.f0), l_2688))) & (*p_5135->g_158)) && (*p_5135->g_158)), (*p_5135->g_1231)).x > l_2689[8]));
                        l_2691[1][3] = l_2690;
                        --l_2695;
                    }
                }
                p_5135->g_2699 = l_2698;
            }
            if (p_5135->g_8)
                goto lbl_2700;
            for (l_2686 = 0; (l_2686 >= 3); l_2686 = safe_add_func_uint32_t_u_u(l_2686, 8))
            { /* block id: 1215 */
                int32_t *l_2703 = nullptr;
                int32_t l_2705 = (-1L);
                int32_t l_2708 = 0xB14B16E9L;
                __shared__ int32_t l_2709;
                l_2709 = 0L;
                int32_t l_2710[2];
                __shared__ ulong4 l_2739;
                l_2739 = make_ulong4(0x35B5ABACB186A4B1LL, 9UL, 0x35B5ABACB186A4B1LL, 9UL);
                struct S0 l_2754 = {-7502};
                uint64_t l_2755[4] = {0UL, 0xC398530CAEB1D403LL, 0UL, 0xC398530CAEB1D403LL};
                int i;
                for (int i = 0; i < 2; i++)
                    l_2710[i] = 0x45407793L;
                for (p_5135->g_12 = 0; (p_5135->g_12 <= 6); p_5135->g_12 += 1)
                { /* block id: 1218 */
                    int32_t **l_2704 = &l_59[3];
                    int i;
                    (*l_2704) = l_2703;
                }
                ++l_2717[0][1][0];
                if ((((safe_sub_func_uint16_t_u_u((**p_5135->g_1410), (safe_rshift_func_uint8_t_u_s((safe_mul_func_uint64_t_u_u((&p_5135->g_1549 == nullptr), p_5135->g_906.x)), 3)))) | make_uint4(l_2726.x, l_2726.x, l_2726.x, l_2726.x).z) && (safe_div_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((safe_lshift_func_uint32_t_u_s((safe_rshift_func_int16_t_s_s(l_2712, ((*p_5135->g_157) = ((safe_add_func_int16_t_s_s(((make_ulong2(l_2739.x, l_2739.x).x == (safe_lshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s(((p_57.f0 = (0L > ((safe_add_func_uint8_t_u_u((((safe_mul_func_uint64_t_u_u(((safe_add_func_int32_t_s_s(p_56, (make_ushort3(0x9621L, (safe_add_func_uint32_t_u_u(((l_2754 , p_56) | l_2713[2][6][1]), 1UL)), 0xABC6L).y <= p_56))) && p_56), p_5135->g_400.x)) ^ p_56) > p_56), p_56)) > p_56))) <= p_56), 0L)), l_2634)), 4))) <= p_56), (**p_5135->g_1410))) != l_2726.x)))), l_2755[2])), 4UL)), l_2713[2][6][1])) , p_57.f0), 3L))))
                { /* block id: 1224 */
                    if (l_2583)
                        goto lbl_2700;
                    for (p_5135->g_60 = 25; (p_5135->g_60 == (-30)); p_5135->g_60--)
                    { /* block id: 1228 */
                        int32_t *l_2759[9] = {&hip_const_2, &l_2635, &hip_const_2, &l_2635, &hip_const_2, &l_2635, &hip_const_2, &l_2635, &hip_const_2};
                        int32_t *l_2760 = nullptr;
                        int i;
                        l_2758 = l_2717[0][1][0];
                        l_2760 = l_2759[1];
                    }
                    l_2761 |= p_56;
                }
                else
                { /* block id: 1233 */
                    int32_t *l_2764 = &p_5135->g_1814;
                    if (make_int2(l_2762.y, l_2762.y).x)
                    { /* block id: 1234 */
                        return l_2763[2];
                    }
                    else
                    { /* block id: 1236 */
                        if (p_56)
                            break;
                        l_2703 = l_2764;
                        return p_57;
                    }
                }
                for (p_57.f1 = 1; (p_57.f1 >= 0); p_57.f1 -= 1)
                { /* block id: 1244 */
                    int32_t l_2766 = (-1L);
                    __shared__ int32_t *l_2770;
                    l_2770 = nullptr;
                    for (l_2761 = 1; (l_2761 >= 0); l_2761 -= 1)
                    { /* block id: 1247 */
                        int32_t l_2765[1];
                        int i;
                        for (int i = 0; i < 1; i++)
                            l_2765[i] = (-6L);
                        l_2767++;
                    }
                    for (p_5135->g_12 = 0; (p_5135->g_12 <= 7); p_5135->g_12 += 1)
                    { /* block id: 1252 */
                        int i;
                        if (l_2710[p_57.f1])
                            break;
                    }
                    l_2772 = (l_2771 = l_2770);
                }
            }
        }
    }
    return (*p_5135->g_1549);
}


/* ------------------------------------------ */
/* 
 * reads : p_5135->g_157 p_5135->g_8
 * writes:
 */
__device__ int16_t  func_65(int32_t * p_66, struct S2 * p_5135)
{ /* block id: 16 */
    int64_t l_67 = (-7L);
    uint32_t *l_73[5];
    uint32_t *l_81 = &p_5135->g_49;
    __shared__ uint32_t **l_80;
    l_80 = &l_81;
    struct S0 l_1094 = {-10210};
    uint8_t ***l_1358 = &p_5135->g_760;
    uint64_t *l_1366 = &p_5135->g_139[0][0];
    uint4 l_1367 = make_uint4(5UL, 0xEFE468FCL, 5UL, 0xEFE468FCL);
    ulong3 l_1386 = make_ulong3(18446744073709551615UL, 0x9B6CE2033BD19CA1LL, 18446744073709551615UL);
    __shared__ int32_t ***l_1398;
    l_1398 = &p_5135->g_565[2];
    int32_t ***l_1401 = &p_5135->g_565[2];
    int32_t ***l_1404 = &p_5135->g_565[3];
    int32_t l_1414 = 0L;
    int32_t l_1415 = 0xECFFB9EBL;
    int32_t l_1416 = 0xF4173A20L;
    int16_t ***l_1432 = &p_5135->g_342;
    short2 l_1447 = make_short2((-2L), 0xD0AEL);
    int32_t l_1515 = 0x78D80ECFL;
    int32_t l_1516 = 0L;
    __shared__ uint32_t l_1597;
    l_1597 = 0xA5B7579CL;
    int64_t l_1617 = 0x19D66EB9541065ACLL;
    struct S0 **l_1660 = nullptr;
    short1 l_1685 = make_short1(0xA059L);
    long3 l_1699 = make_long3((-1L), 0xC98B8145D256A732LL, (-1L));
    int32_t l_1709 = 0x47C1111DL;
    __shared__ int16_t l_1744;
    l_1744 = 0x3EEAL;
    __shared__ char1 l_1760;
    l_1760 = make_char1(0L);
    ulong1 l_1779 = make_ulong1(0xD991E23116324FBDLL);
    union U1 *l_1783 = nullptr;
    __shared__ uint8_t l_1789;
    l_1789 = 5UL;
    short4 l_1827 = make_short4(0xA6FCL, 0x6E2DL, 0xA6FCL, 0x6E2DL);
    int8_t l_1840 = (-7L);
    int64_t l_1883 = 0x6AAF09D89C1C50D5LL;
    short3 l_1885 = make_short3(0x9E1CL, 0x0293L, 0x9E1CL);
    int32_t l_1914 = 0xBA6EED5AL;
    __shared__ int32_t l_1925;
    l_1925 = 0L;
    uint64_t l_1956 = 5UL;
    uint8_t **l_1958[4][10][1] = {{{&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}}, {{&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}}, {{&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}}, {{&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}, {&p_5135->g_761[3][3][4]}}};
    int32_t l_1993 = 0x0D45DB1EL;
    uint8_t l_2001 = 0xACL;
    uint64_t l_2003 = 0x9675CE39C1A7F16BLL;
    uint64_t l_2004 = 0x677F0AD5FBB033FFLL;
    int32_t l_2035[9][2][5] = {{{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}, {{3L, (-1L), 0x59207944L, 2L, 0L}, {3L, (-1L), 0x59207944L, 2L, 0L}}};
    struct S0 l_2038 = {-9070};
    // attempting a hip shared for loop
    __shared__ uint8_t *l_2108[9];
    for (int i = 0; i < 9; i++)
        l_2108[i] = &p_5135->g_328;
    int32_t l_2153[8] = {0x093C56C5L, (-1L), 0x093C56C5L, (-1L), 0x093C56C5L, (-1L), 0x093C56C5L, (-1L)};
    int32_t l_2157[2];
    short1 l_2198 = make_short1(1L);
    int8_t ***l_2223 = &p_5135->g_1579[8];
    int32_t l_2243 = 0L;
    uint32_t l_2294 = 0x9ECF578BL;
    int32_t l_2298 = 0x5A2E3C95L;
    uint64_t l_2339 = 1UL;
    uint32_t l_2348 = 1UL;
    __shared__ uint16_t l_2375;
    l_2375 = 1UL;
    uint1 l_2392 = make_uint1(0xF69EB86FL);
    int8_t l_2401 = 0L;
    uchar3 l_2454 = make_uchar3(0x51L, 0xEFL, 0x51L);
    int2 l_2459 = make_int2(0L, 0xD5A122A9L);
    uint32_t l_2462 = 0UL;
    int16_t l_2465 = 1L;
    uchar2 l_2466 = make_uchar2(6UL, 0x48L);
    int16_t l_2467 = 0x780CL;
    __shared__ uint32_t *l_2468;
    l_2468 = &p_5135->g_213;
    struct S0 *l_2469 = &p_5135->g_62;
    int i, j, k;
    for (int i = 0; i < 5; i++)
        l_73[i] = &p_5135->g_49;
    for (int i = 0; i < 2; i++)
        l_2157[i] = (-2L);
    return (*p_5135->g_157);
}


/* ------------------------------------------ */
/* 
 * reads : p_5135->g_213 p_5135->g_62 p_5135->g_3937
 * writes: p_5135->g_213
 */
__device__ struct S0  func_68(uint32_t * p_69, int8_t  p_70, struct S0 * p_71, struct S0 * p_72, struct S2 * p_5135)
{ /* block id: 551 */
    uint16_t l_1100 = 0UL;
    struct S0 l_1103 = {-17105};
    int8_t *l_1111[10] = {nullptr, &p_5135->g_291, nullptr, &p_5135->g_291, nullptr, &p_5135->g_291, nullptr, &p_5135->g_291, nullptr, &p_5135->g_291};
    int32_t l_1119 = 0xED5A1636L;
    int32_t l_1125 = 0L;
    int32_t l_1129 = (-2L);
    int32_t l_1131 = 0x41CB21ECL;
    int32_t l_1132 = (-10L);
    int32_t l_1133 = 0L;
    __shared__ int32_t l_1136;
    l_1136 = (-1L);
    int32_t l_1138 = 0L;
    __shared__ int32_t l_1139;
    l_1139 = (-1L);
    int32_t l_1141 = (-8L);
    int32_t l_1142 = 7L;
    int32_t l_1143 = 0x7029F7DEL;
    int32_t l_1144 = (-9L);
    int32_t l_1145 = 6L;
    int32_t l_1146 = 7L;
    int8_t l_1147 = 0x40L;
    int32_t l_1148 = (-3L);
    __shared__ int32_t l_1149;
    l_1149 = (-1L);
    // attempting a hip shared for loop
    __shared__ int32_t l_1150[7][10][3];
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            for (int k = 0; k < 3; k++)
                l_1150[i][j][k] = 4L;
        }
    }
    ushort1 l_1181 = make_ushort1(65530UL);
    union U1 *l_1182 = &hip_const_3;
    uint16_t l_1214 = 65535UL;
    uint32_t l_1215 = 0xC3392D00L;
    uint16_t **l_1233 = &p_5135->g_1231;
    ushort1 l_1236 = make_ushort1(65530UL);
    int16_t *l_1249 = nullptr;
    int32_t **l_1250 = &p_5135->g_566;
    uint16_t *l_1261 = &l_1214;
    int32_t *l_1283 = &hip_const_4[3][3][5];
    uint3 l_1287 = make_uint3(18446744073709551611UL, 0xECF25928L, 18446744073709551611UL);
    ushort4 l_1294 = make_ushort4(65535UL, 65535UL, 65535UL, 65535UL);
    int16_t l_1310 = (-10L);
    __shared__ int32_t l_1311;
    l_1311 = (-1L);
    int8_t l_1312 = 0x6DL;
    int i, j, k;
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            for (int k = 0; k < 3; k++)
                l_1150[i][j][k] = 4L;
        }
    }
    for (p_5135->g_213 = 0; (p_5135->g_213 != 43); p_5135->g_213++)
    { /* block id: 554 */
        // attempting a hip shared for loop
        __shared__ union U1 l_1108[6][1];
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 1; j++)
                l_1108[i][j] = {4294967289UL};
        }
        int8_t *l_1113 = &hip_const_6.f1;
        uint64_t l_1114 = 0xB0F5AE46D44BCB57LL;
        int32_t l_1122[10][4] = {{4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}, {4L, 0x8165EAC5L, 0xA8625385L, (-4L)}};
        int64_t *l_1174 = &p_5135->g_203;
        char3 l_1243 = make_char3(0xCFL, 7L, 0xCFL);
        uint16_t l_1255[3][6] = {{0x04F1L, 65535UL, 65529UL, 65529UL, 65535UL, 0x04F1L}, {0x04F1L, 65535UL, 65529UL, 65529UL, 65535UL, 0x04F1L}, {0x04F1L, 65535UL, 65529UL, 65529UL, 65535UL, 0x04F1L}};
        uint64_t *l_1295 = &p_5135->g_139[4][1];
        int32_t *l_1298 = &l_1108[5][0].f2;
        int32_t *l_1299 = &l_1142;
        int32_t *l_1300 = &l_1145;
        __shared__ int32_t *l_1301;
        l_1301 = &l_1122[3][0];
        int32_t *l_1302 = &l_1144;
        int32_t *l_1303 = &hip_const_6.f2;
        int32_t *l_1304 = &l_1144;
        int32_t *l_1305 = nullptr;
        int32_t *l_1306 = &l_1142;
        int32_t *l_1307 = nullptr;
        int32_t *l_1308[10][8][3] = {{{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}, {{&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}, {&l_1122[4][0], &l_1143, &l_1125}}};
        int8_t l_1309 = (-1L);
        uint32_t l_1313 = 0x2DD0144BL;
        int i, j, k;
    }
    return (*p_71);
}


/* ------------------------------------------ */
/* 
 * reads : p_5135->g_62.f0 hip_const_4 p_5135->g_106 hip_const_1 p_5135->g_64 p_5135->g_62 p_5135->g_139 p_5135->g_126 hip_const_2 p_5135->g_49 p_5135->g_8 hip_const_3 hip_const_5 p_5135->g_213 p_5135->g_203 p_5135->g_158 p_5135->g_268 p_5135->g_295 p_5135->g_298 p_5135->g_304 p_5135->g_291 p_5135->g_157 p_5135->g_328 p_5135->g_325 p_5135->g_403 p_5135->g_384 p_5135->g_497 p_5135->g_60 p_5135->g_12
 * writes: p_5135->g_60 p_5135->g_62 p_5135->g_139 p_5135->g_126 p_5135->g_156 p_5135->g_157 p_5135->g_158 p_5135->g_49 p_5135->g_8 p_5135->g_106 p_5135->g_203 p_5135->g_213 p_5135->g_12 p_5135->g_295 p_5135->g_304 p_5135->g_291 p_5135->g_324 p_5135->g_328 p_5135->g_382 p_5135->g_384 p_5135->g_268 p_5135->g_342 p_5135->g_403
 */
__device__ struct S0 * func_76(int32_t * p_77, uint32_t ** p_78, int64_t  p_79, struct S2 * p_5135)
{ /* block id: 19 */
    __shared__ int16_t l_95;
    l_95 = 0xF0C1L;
    struct S0 l_96 = {9255};
    int32_t l_107 = 0xFAF8E688L;
    // attempting a hip shared for loop
    __shared__ int32_t *l_111[2];
    for (int i = 0; i < 2; i++)
        l_111[i] = &hip_const_6.f2;
    short2 l_132 = make_short2(6L, 0L);
    short2 l_133 = make_short2(0x704CL, 0x5E38L);
    int3 l_181 = make_int3((-7L), (-10L), (-7L));
    int64_t l_227 = 0x03EE57E1535540F0LL;
    __shared__ int16_t l_260;
    l_260 = 0x76D2L;
    uchar1 l_280 = make_uchar1(255UL);
    __shared__ int16_t *l_367;
    l_367 = &p_5135->g_8;
    uint16_t *l_402[7][4][1] = {{{&hip_const_5}, {&hip_const_5}, {&hip_const_5}, {&hip_const_5}}, {{&hip_const_5}, {&hip_const_5}, {&hip_const_5}, {&hip_const_5}}, {{&hip_const_5}, {&hip_const_5}, {&hip_const_5}, {&hip_const_5}}, {{&hip_const_5}, {&hip_const_5}, {&hip_const_5}, {&hip_const_5}}, {{&hip_const_5}, {&hip_const_5}, {&hip_const_5}, {&hip_const_5}}, {{&hip_const_5}, {&hip_const_5}, {&hip_const_5}, {&hip_const_5}}, {{&hip_const_5}, {&hip_const_5}, {&hip_const_5}, {&hip_const_5}}};
    __shared__ int8_t *l_411;
    l_411 = nullptr;
    int32_t *l_416 = nullptr;
    uint32_t l_422[5] = {4294967289UL, 5UL, 4294967289UL, 5UL, 4294967289UL};
    __shared__ uint4 l_436;
    l_436 = make_uint4(4294967287UL, 0x9ABF9493L, 4294967287UL, 0x9ABF9493L);
    uint8_t l_445 = 0xA0L;
    int8_t l_521 = 0x8EL;
    uint8_t l_522 = 253UL;
    int32_t **l_527 = &l_416;
    char2 l_542 = make_char2(1L, 0x2CL);
    char2 l_543 = make_char2(1L, 7L);
    union U1 l_553 = {0x3669A9CCL};
    int4 l_558 = make_int4(0xC3A334F1L, 0xDD3CDA14L, 0xC3A334F1L, 0xDD3CDA14L);
    long2 l_574 = make_long2(0x2411157D751CA857LL, 1L);
    short2 l_592 = make_short2(0x6028L, 0xFD7AL);
    __shared__ uint64_t *l_684;
    l_684 = &p_5135->g_139[0][0];
    uint8_t *l_716 = &hip_const_1;
    uint8_t **l_715 = &l_716;
    uint8_t ***l_714 = &l_715;
    int16_t l_826 = 0xE268L;
    __shared__ struct S0 ***l_873;
    l_873 = &p_5135->g_325;
    ushort2 l_941 = make_ushort2(0x2940L, 0xBEA3L);
    __shared__ uint16_t l_979;
    l_979 = 1UL;
    int4 l_991 = make_int4(0xF51C3E17L, 0xCEA4A8F5L, 0xF51C3E17L, 0xCEA4A8F5L);
    short2 l_993 = make_short2(0x4B20L, 0L);
    __shared__ short3 l_994;
    l_994 = make_short3(3L, 0x556FL, 3L);
    ushort2 l_1009 = make_ushort2(0x1CEAL, 65529UL);
    struct S0 *l_1038 = &l_96;
    uchar2 l_1045 = make_uchar2(0x12L, 0xA1L);
    int i, j, k;
    for (int i = 0; i < 2; i++)
        l_111[i] = &hip_const_6.f2;
lbl_245:
    for (p_5135->g_60 = (-21); (p_5135->g_60 < 29); p_5135->g_60 = safe_add_func_uint8_t_u_u(p_5135->g_60, 7))
    { /* block id: 22 */
        int32_t l_88 = 0L;
        struct S0 **l_103 = &p_5135->g_64;
        int16_t *l_104 = &p_5135->g_8;
        int64_t *l_105[2][2][5] = {{{&p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106}, {&p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106}}, {{&p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106}, {&p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106, &p_5135->g_106}}};
        __shared__ int32_t **l_108;
        l_108 = nullptr;
        int32_t *l_110[6] = {&hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr};
        int32_t **l_109[6] = {&l_110[2], &l_110[0], &l_110[2], &l_110[0], &l_110[2], &l_110[0]};
        int i, j, k;
        if (p_5135->g_62.f0)
            break;
        l_111[1] = ((safe_lshift_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((l_88 == (make_short1((p_5135->g_49 < (safe_add_func_uint32_t_u_u((((((p_5135->g_106 = (p_79 ^ (make_char1((-10L)).x != ((safe_rshift_func_uint32_t_u_s((safe_mul_func_uint8_t_u_u((l_95 |= 0xB5L), ((l_96 , (safe_add_func_int64_t_s_s(p_5135->g_12, (safe_rshift_func_int16_t_s_s(((*l_104) = (((((make_ulong3(((make_uint1(4294967295UL).x >= (-1L)) && ((safe_mul_func_uint32_t_u_u((((*l_103) = &p_5135->g_62) != (l_88 , &p_5135->g_62)), p_79)) || p_5135->g_8)), 18446744073709551615UL, 8UL) ^ make_ulong3(0x06553B8602F12706LL, 0x06553B8602F12706LL, 0x06553B8602F12706LL))) ^ make_ulong3(0x3B5EBD512F4ECBCELL, 0x3B5EBD512F4ECBCELL, 0x3B5EBD512F4ECBCELL))).y <= p_79)), 12))))) , p_79))), 11)) < l_88)))) > l_88) >= p_79) < 0xC445E426L) | p_79), 0x9CD97943L)))).x & p_79)), hip_const_4[2][0][5])), l_107)) , nullptr);
    }
lbl_449:
    if ((safe_lshift_func_int32_t_s_s((((0xF0E25250D9091441LL & (safe_lshift_func_int16_t_s_s(p_79, (p_79 <= p_5135->g_62.f0)))) != (p_5135->g_62.f0 == (p_79 == (safe_sub_func_uint8_t_u_u(((safe_lshift(((make_uchar1(((safe_mul_func_int8_t_s_s(make_char3(((safe_rshift_func_uint64_t_u_s((l_96 , (hip_const_5 , (safe_mul_func_uint8_t_u_u(make_uchar1(p_5135->g_126.x).x, p_79)))), 11)) < 5L), 0L, 0xE3L).y, (-7L))) & p_5135->g_12)) ^ make_uchar1(0x8AL))), make_uchar1(8)))).x, 0L))))) < 65527UL), p_5135->g_62.f0)))
    { /* block id: 30 */
        uint32_t l_127 = 0UL;
        int32_t l_134[7] = {(-1L), (-1L), (-9L), (-1L), (-1L), (-9L), (-1L)};
        struct S0 **l_135 = &p_5135->g_64;
        int8_t *l_207 = &p_5135->g_60;
        uint32_t **l_210 = nullptr;
        ushort4 l_212 = make_ushort4(0x3265L, 0xB941L, 0x3265L, 0xB941L);
        int32_t *l_216 = nullptr;
        uint8_t *l_234 = &hip_const_1;
        __shared__ int1 l_241;
        l_241 = make_int1((-5L));
        char3 l_275 = make_char3((-1L), 0xB3L, (-1L));
        union U1 l_299[2] = {{0UL}, {0UL}};
        __shared__ int16_t *l_315;
        l_315 = &p_5135->g_8;
        __shared__ int2 l_317;
        l_317 = make_int2(0xDBA9DB8BL, (-3L));
        int i;
        ++l_127;
        l_134[4] &= (((safe_rshift(make_short2(l_132.x, l_132.x), make_short2(l_133.y, l_133.y)))).x < p_5135->g_106);
        if ((l_134[4] = ((p_79 , l_135) != nullptr)))
        { /* block id: 34 */
            return &p_5135->g_62;
        }
        else
        { /* block id: 36 */
            __shared__ int32_t *l_136;
            l_136 = &hip_const_2;
            struct S0 *l_137 = &l_96;
            uint8_t *l_146 = &hip_const_1;
            __shared__ uint8_t *l_147;
            l_147 = &hip_const_1;
            uint8_t *l_148 = &hip_const_1;
            __shared__ uint8_t *l_149;
            l_149 = nullptr;
            // attempting a hip shared for loop
            __shared__ uint8_t *l_150[9];
            for (int i = 0; i < 9; i++)
                l_150[i] = &hip_const_1;
            __shared__ int32_t l_151;
            l_151 = 0x13960B7EL;
            int32_t l_152 = 0x12CC52EBL;
            int16_t **l_155[2];
            int8_t *l_159 = &hip_const_6.f1;
            int8_t *l_160 = nullptr;
            int8_t *l_161 = nullptr;
            int8_t *l_162[4];
            __shared__ uchar2 l_194;
            l_194 = make_uchar2(5UL, 252UL);
            uint16_t *l_235 = nullptr;
            union U1 l_301 = {0xD7F0A692L};
            __shared__ int16_t *l_316;
            l_316 = &p_5135->g_304;
            int64_t *l_323 = nullptr;
            int32_t ***l_331 = nullptr;
            int i;
            for (int i = 0; i < 2; i++)
                l_155[i] = nullptr;
            for (int i = 0; i < 4; i++)
                l_162[i] = &hip_const_6.f1;
            for (p_79 = 2; (p_79 <= 6); p_79 += 1)
            { /* block id: 39 */
                int i;
                if ((&l_134[p_79] != (hip_const_1 , l_136)))
                { /* block id: 40 */
                    return &p_5135->g_62;
                }
                else
                { /* block id: 42 */
                    int32_t l_138 = 0x18CA0322L;
                    int i;
                    for (l_127 = 0; (l_127 <= 1); l_127 += 1)
                    { /* block id: 45 */
                        (*p_5135->g_64) = (*p_5135->g_64);
                        return &p_5135->g_62;
                    }
                    l_138 = (l_134[p_79] = make_int1((-10L)).x);
                    --p_5135->g_139[0][0];
                }
            }
            if (((safe_div_func_int16_t_s_s((safe_div_func_uint8_t_u_u(255UL, (p_5135->g_126.x++))), (*l_136))) | (p_5135->g_60 = ((l_134[4] , &p_5135->g_8) != (p_5135->g_158 = (p_5135->g_157 = (p_5135->g_156 = &p_5135->g_8)))))))
            { /* block id: 59 */
                for (p_5135->g_49 = (-24); (p_5135->g_49 <= 46); p_5135->g_49 = safe_add_func_uint32_t_u_u(p_5135->g_49, 4))
                { /* block id: 62 */
                    l_152 |= (-1L);
                }
                for (p_5135->g_8 = 1; (p_5135->g_8 >= 0); p_5135->g_8 -= 1)
                { /* block id: 67 */
                    int8_t l_165 = 1L;
                    for (p_79 = 0; (p_79 <= 1); p_79 += 1)
                    { /* block id: 70 */
                        __shared__ uint64_t l_166;
                        l_166 = 1UL;
                        int i, j;
                        l_166++;
                        if (p_5135->g_139[(p_5135->g_8 + 4)][p_79])
                            continue;
                    }
                    for (l_127 = 0; (l_127 <= 1); l_127 += 1)
                    { /* block id: 76 */
                        (*l_137) = (*p_5135->g_64);
                    }
                }
            }
            else
            { /* block id: 80 */
                uint32_t l_188 = 0xCAE8D20AL;
                struct S0 l_205 = {18155};
                int64_t *l_211 = &p_5135->g_203;
                for (p_5135->g_8 = (-18); (p_5135->g_8 > 24); p_5135->g_8 = safe_add_func_int16_t_s_s(p_5135->g_8, 7))
                { /* block id: 83 */
                    __shared__ int64_t *l_191;
                    l_191 = &p_5135->g_106;
                    __shared__ int4 l_195;
                    l_195 = make_int4(5L, 0x01DA8FA5L, 5L, 0x01DA8FA5L);
                    __shared__ int64_t *l_202;
                    l_202 = &p_5135->g_203;
                    int8_t *l_204 = &p_5135->g_60;
                    int i;
                    l_195.x = ((((safe_lshift(((safe_mod(((make_int1(0xAD76B04DL) ^ ((((safe_add(((safe_sub(((safe_lshift(make_int1((l_161 == ((make_int1(l_181.x).x > ((((6L <= make_uint1(0x4F4B611BL).x) , (safe_rshift_func_uint32_t_u_s(make_uint4((safe_add_func_uint32_t_u_u((safe_mod_func_int8_t_s_s(l_188, ((safe_sub_func_int64_t_s_s(((*l_191) ^= p_5135->g_8), ((safe_sub_func_uint8_t_u_u(make_uchar3(l_194.x, l_194.x, l_194.x).y, ((make_int4(l_195.x, l_195.x, l_195.x, l_195.x).w > (safe_div_func_int8_t_s_s((hip_const_3 , (safe_add_func_uint32_t_u_u(4294967289UL, (safe_sub_func_int64_t_s_s(((*l_202) = (nullptr == &hip_const_1)), p_5135->g_8))))), p_79))) >= 1UL))) , 0xD5B5896D5BFB3890LL))) && p_79))), 1UL)), 0xE633990AL, 4294967295UL, 0xC9F556B5L).x, 20))) , 0xDC0C5F0CL) , (**p_78))) , l_204))), make_int1(32)))), make_int1(1L)))), make_int1(9L)))) ^ make_int1(0L))))), make_int1((-9L))))), make_int1(32)))) | make_int1((-4L)))).x;
                }
                if (((l_205 , hip_const_5) | ((safe_unary_minus_func_uint8_t_u(((((((make_uchar3((l_207 == &p_5135->g_60), ((65527UL && ((~((safe_mul(make_ushort1((l_210 == (((*l_211) = make_long2(1L, 0x76C49478B05629B9LL).x) , nullptr))), make_ushort1(l_212.x)))))).x) , p_79), (l_155[0] == &p_5135->g_157)) ^ make_uchar3(0xD6L, 0xD6L, 0xD6L))) ^ make_uchar3(255UL, 255UL, 255UL))) & make_uchar3(0x2BL, 0x2BL, 0x2BL))).x)) | hip_const_1)))
                { /* block id: 89 */
                    ++p_5135->g_213;
                }
                else
                { /* block id: 91 */
                    int32_t **l_217 = &l_216;
                    (*l_217) = l_216;
                    for (p_5135->g_8 = 0; (p_5135->g_8 != (-10)); --p_5135->g_8)
                    { /* block id: 95 */
                        if ((*l_136))
                            break;
                    }
                    (*l_217) = p_77;
                    for (l_188 = 0; (l_188 < 50); l_188 = safe_add_func_uint16_t_u_u(l_188, 9))
                    { /* block id: 101 */
                        int8_t l_222 = 1L;
                        (*l_217) = &hip_const_2;
                        if (l_222)
                            continue;
                        return &p_5135->g_62;
                    }
                }
            }
            if (((l_152 &= (safe_lshift_func_uint16_t_u_u(((-1L) ^ (safe_lshift_func_uint32_t_u_u(1UL, (((1UL >= hip_const_5) , (*l_136)) | (l_227 , (p_5135->g_106 == (((safe_div_func_uint64_t_u_u(p_5135->g_139[1][0], (safe_lshift_func_uint16_t_u_s((p_5135->g_12 = (safe_div_func_uint8_t_u_u((nullptr == l_234), p_5135->g_8))), 7)))) > p_5135->g_49) <= hip_const_2))))))), 0))) <= 0L))
            { /* block id: 110 */
                ushort4 l_240 = make_ushort4(0xF7FAL, 0xA296L, 0xF7FAL, 0xA296L);
                int64_t *l_244 = &p_5135->g_106;
                int32_t l_259 = 0x734024CBL;
                int32_t l_261 = 0xA219F341L;
                int i;
                if ((safe_sub_func_uint16_t_u_u((&hip_const_5 == l_235), ((safe_lshift_func_int32_t_s_u(((make_int4((p_79 || (*l_136)), 0xEB418550L, (((0xECL == 0x3BL) , (make_ushort2(l_240.w, l_240.w).y ^ p_79)) , (*l_136)), (-3L)) ^ make_int4(l_241.x, l_241.x, l_241.x, l_241.x))).y, (safe_add_func_int8_t_s_s((((*l_244) = (p_5135->g_203 , (*l_136))) != 0x264FA596293FC562LL), p_79)))) < (-1L)))))
                { /* block id: 112 */
                    ulong4 l_254 = make_ulong4(0x9975902A8F9CB822LL, 8UL, 0x9975902A8F9CB822LL, 8UL);
                    int32_t l_302 = 0x8E350B7AL;
                    int32_t l_303 = 0xEAFFF172L;
                    int i;
                    if (p_5135->g_106)
                        goto lbl_245;
                    for (l_152 = 0; (l_152 <= (-11)); l_152 = safe_sub_func_int16_t_s_s(l_152, 2))
                    { /* block id: 116 */
                        union U1 l_255 = {0x1F3B268BL};
                        short3 l_256 = make_short3((-8L), 0x746FL, (-8L));
                        uint64_t *l_257 = nullptr;
                        int32_t **l_258[3];
                        uint64_t *l_287 = nullptr;
                        uint64_t *l_288 = nullptr;
                        __shared__ uint64_t *l_289;
                        l_289 = nullptr;
                        uint64_t *l_290 = nullptr;
                        __shared__ uint64_t *l_292;
                        l_292 = nullptr;
                        uint64_t *l_293 = nullptr;
                        uint64_t *l_294[7] = {&p_5135->g_139[5][1], nullptr, &p_5135->g_139[5][1], nullptr, &p_5135->g_139[5][1], nullptr, &p_5135->g_139[5][1]};
                        union U1 *l_300[3][7][10] = {{{&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}}, {{&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}}, {{&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}, {&hip_const_6, &l_299[1], &l_299[1], &l_299[0], &l_255, &l_299[1], &l_255, &hip_const_6, &l_255, &hip_const_3}}};
                        int i, j, k;
                        for (int i = 0; i < 3; i++)
                            l_258[i] = &l_216;
                        p_5135->g_62.f0 ^= (l_261 = ((((((((make_uint2(8UL, 0x98E1627DL) ^ make_uint2(0x0FC249A5L, ((**p_78) &= (hip_const_1 != (safe_lshift_func_int16_t_s_u(((l_259 &= ((p_77 = ((safe_rshift_func_uint16_t_u_u(((((p_5135->g_157 = &p_5135->g_8) != nullptr) != ((safe_add(((((make_ulong1(l_254.y) ^ make_ulong1(((l_255 , p_79) > ((make_short4(l_256.y, l_256.y, l_256.y, l_256.y).w == (0x17C2A5B5B071355FLL ^ (p_5135->g_139[0][0] ^= (p_5135->g_213 , ((make_short3(((*p_5135->g_158) |= (nullptr == &p_79)), 0x3FD6L, p_79).z && l_240.x) || p_5135->g_126.x))))) && 0x32L))))) ^ make_ulong1(0x56AF5DE442C588E3LL))), make_ulong1(1UL)))).x) , p_79), 11)) , p_77)) != &l_152)) <= l_260), 12))))))) ^ make_uint2(0x55A29D44L, 0x55A29D44L))) | make_uint2(0xEBF453BBL, 0xEBF453BBL))).y && (*l_136)) > p_5135->g_126.x));
                        p_5135->g_304 |= ((safe_lshift_func_int8_t_s_u(((((make_char3(0L, (p_79 , p_5135->g_106), (-2L)) ^ make_char3(0L, 0xF0L, make_char3(2L, 0x04L, (nullptr != &p_5135->g_8)).x))) ^ ((((safe_add(((safe_div(make_char3(p_5135->g_268.x, p_5135->g_268.x, p_5135->g_268.x), ((make_char3((~((make_uchar4(0x90L, 0xCEL, 0x17L, 1UL).z || (hip_const_4[2][0][5] < (make_ushort2(0x7485L, 65529UL).x == (p_5135->g_203 > (+make_char4((((((safe_mul(((make_ushort2(0xF909L, ((safe_mul_func_uint32_t_u_u(((safe_div_func_int8_t_s_s((-10L), make_char3(l_275.z, l_275.z, l_275.z).x)) || ((safe_lshift_func_uint64_t_u_s(p_5135->g_139[6][0], ((l_259 = ((safe_sub_func_int16_t_s_s(((make_uchar4(l_280.x, l_280.x, l_280.x, l_280.x).w , (make_ushort1((safe_lshift_func_int8_t_s_s((((((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((--p_5135->g_295), ((l_303 = ((l_302 = ((make_long1(p_5135->g_298.x).x && (((l_299[0] = (l_301 = l_299[1])) , p_5135->g_298.x) , p_5135->g_62.f0)) , p_5135->g_268.x)) > 0x2CL)) ^ p_79))), 1UL)) & 0xAA1B3EB4133E5798LL) | p_79) , p_5135->g_268.x) == p_5135->g_298.x), 0))).x , nullptr)) != &hip_const_5), (*l_136))) | l_261)) ^ (**p_78)))) || p_5135->g_126.x)), 1L)) || 0xDDF38A95L)) & make_ushort2(7UL, 7UL))), make_ushort2(0xC2A1L, 0xC2A1L)))) ^ make_ushort2(2UL, 2UL))).x | p_5135->g_268.x), p_5135->g_49, (-9L), p_79).w))))) == p_5135->g_49)), 1L, p_5135->g_268.x) ^ make_char3(0x2DL, 0x2DL, 0x2DL)))))), make_char3(0xC8L, 0xC8L, 0xC8L)))) ^ make_char3(0L, 0L, 0L))))).y, 6)) , l_303);
                    }
                    p_5135->g_62.f0 = (0UL ^ ((*l_136) , l_254.y));
                }
                else
                { /* block id: 134 */
                    for (p_5135->g_291 = (-15); (p_5135->g_291 >= (-3)); p_5135->g_291 = safe_add_func_int32_t_s_s(p_5135->g_291, 7))
                    { /* block id: 137 */
                        int32_t **l_307 = &l_216;
                        (*l_307) = &hip_const_2;
                        if (hip_const_1)
                            continue;
                    }
                    if (p_5135->g_304)
                        goto lbl_449;
                }
            }
            else
            { /* block id: 142 */
                __shared__ uint2 l_308;
                l_308 = make_uint2(4294967292UL, 0x4716CAD3L);
                int32_t **l_309 = &l_216;
                int32_t *l_311[9][2] = {{&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}, {&l_134[4], &l_134[4]}};
                int32_t **l_310[1];
                int32_t *l_312 = &l_299[1].f2;
                int i, j;
                for (int i = 0; i < 1; i++)
                    l_310[i] = &l_311[3][0];
                l_152 = l_308.y;
                l_312 = ((*l_309) = &hip_const_2);
                l_134[0] = 0x215F6A51L;
                return &p_5135->g_62;
            }
            if (p_5135->g_298.x)
            { /* block id: 149 */
                int16_t *l_322 = nullptr;
                p_5135->g_324[1] = (((safe_mul_func_uint32_t_u_u(((l_316 = l_315) != &p_5135->g_304), (p_5135->g_62.f0 = ((*l_136) , make_int1(make_int1(l_317.x).x).x)))) >= (safe_lshift_func_int64_t_s_s(5L, (safe_lshift_func_uint8_t_u_s((((((((&p_5135->g_64 == &p_5135->g_64) | (0x515AL & ((((((l_322 != (((make_char4(0L, ((make_char2(((*l_207) = 0xBAL), 0x2BL) ^ make_char2(0x97L, 0x97L))).x, hip_const_2, (-4L)).x && 0xAAL) < (*l_136)) , &p_5135->g_304)) , nullptr) != l_323) , p_5135->g_139[2][1]) < p_79) , (*p_5135->g_157)))) , &hip_const_2) != nullptr) < 0xB6DEL) ^ 0L) , 0x78L), p_79))))) , nullptr);
                for (l_301.f1 = (-19); (l_301.f1 >= (-9)); ++l_301.f1)
                { /* block id: 156 */
                    int32_t **l_333 = &l_216;
                    int32_t ***l_332 = &l_333;
                    ++p_5135->g_328;
                    l_332 = l_331;
                    for (p_5135->g_8 = 20; (p_5135->g_8 == (-26)); p_5135->g_8 = safe_sub_func_int32_t_s_s(p_5135->g_8, 1))
                    { /* block id: 161 */
                        if ((*l_136))
                            break;
                    }
                    (*l_137) = (**l_135);
                }
            }
            else
            { /* block id: 166 */
                return (*p_5135->g_325);
            }
        }
    }
    else
    { /* block id: 170 */
        struct S0 *l_336 = &l_96;
        int32_t l_339[6];
        __shared__ int16_t **l_343;
        l_343 = &p_5135->g_157;
        __shared__ char2 l_354;
        l_354 = make_char2(0x68L, 8L);
        int32_t l_360[2];
        int32_t l_432[9];
        int16_t l_438 = 6L;
        int i;
        for (int i = 0; i < 6; i++)
            l_339[i] = 0x928B9590L;
        for (int i = 0; i < 2; i++)
            l_360[i] = 0x22448B24L;
        for (int i = 0; i < 9; i++)
            l_432[i] = (-1L);
        if (p_5135->g_49)
        { /* block id: 171 */
            return (*p_5135->g_325);
        }
        else
        { /* block id: 173 */
            int16_t l_344 = 2L;
            int32_t l_345 = 0x2C4057CCL;
            __shared__ struct S0 *l_352;
            l_352 = &l_96;
            int32_t l_383[5][2][5] = {{{(-8L), 1L, (-8L), 1L, (-8L)}, {(-8L), 1L, (-8L), 1L, (-8L)}}, {{(-8L), 1L, (-8L), 1L, (-8L)}, {(-8L), 1L, (-8L), 1L, (-8L)}}, {{(-8L), 1L, (-8L), 1L, (-8L)}, {(-8L), 1L, (-8L), 1L, (-8L)}}, {{(-8L), 1L, (-8L), 1L, (-8L)}, {(-8L), 1L, (-8L), 1L, (-8L)}}, {{(-8L), 1L, (-8L), 1L, (-8L)}, {(-8L), 1L, (-8L), 1L, (-8L)}}};
            int i, j, k;
            for (p_5135->g_8 = 0; (p_5135->g_8 >= (-7)); p_5135->g_8--)
            { /* block id: 176 */
                struct S0 *l_353 = &l_96;
                // attempting a hip shared for loop
                __shared__ int64_t *l_357[5][10][5];
                for (int i = 0; i < 5; i++)
                {
                    for (int j = 0; j < 10; j++)
                    {
                        for (int k = 0; k < 5; k++)
                            l_357[i][j][k] = &l_227;
                    }
                }
                int32_t l_358[5][8][3] = {{{0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}}, {{0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}}, {{0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}}, {{0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}}, {{0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}, {0xB90F47D5L, (-5L), 0L}}};
                int1 l_359 = make_int1(0L);
                int i, j, k;
                l_339[2] |= make_int1((-2L)).x;
                l_359.x &= make_int4(make_int2(0L, ((safe_add_func_uint16_t_u_u((p_5135->g_342 != l_343), (l_344 |= p_79))) <= l_345)).x, 6L, 0x617FE4AAL, (((make_ulong3(make_ulong4(0x1AB4DA3A7C934FE4LL, 18446744073709551613UL, 18446744073709551607UL, (((((safe_sub_func_int64_t_s_s(((safe_sub_func_uint32_t_u_u(((**p_78) = (l_352 == l_353)), 1L)) || ((((~(make_char4(l_354.x, l_354.x, l_354.x, l_354.x).z && ((safe_sub_func_uint64_t_u_u(((*l_336) , ((p_79 &= l_354.y) < 0x99B3F84FE9D9399ELL)), l_354.y)) & (*p_5135->g_158)))) == 0x8EE43EF6C835956CLL) && 0x71C2L) != l_358[2][6][2])), l_358[1][5][1])) <= l_354.x) , l_345) , nullptr) == &l_336)).y, 0UL, l_345) | make_ulong3(0x61C2209B29BD161BLL, 0x61C2209B29BD161BLL, 0x61C2209B29BD161BLL))).z >= p_5135->g_126.x)).w;
            }
            l_360[0] ^= l_339[2];
            for (l_345 = 0; (l_345 > (-15)); --l_345)
            { /* block id: 186 */
                struct S0 l_365 = {-18019};
                int16_t *l_366 = &l_344;
                for (l_260 = (-12); (l_260 != (-24)); l_260 = safe_sub_func_int16_t_s_s(l_260, 4))
                { /* block id: 189 */
                    (*l_352) = l_365;
                    if (l_344)
                        continue;
                }
                p_5135->g_62.f0 &= make_int3((l_366 == l_367), 0x8018A1D5L, ((safe_add_func_int32_t_s_s(l_339[2], (((safe_rshift_func_int32_t_s_u((safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((((safe_sub(((~make_uint2((safe_lshift_func_uint8_t_u_u(9UL, 5)), 0x0C2C9004L))), make_uint2((**p_78), ((**p_78) = (safe_mul_func_int64_t_s_s(p_5135->g_60, 0x3366A8991DED383BLL))))))).x & ((p_5135->g_126.x != ((make_char3(p_5135->g_382, 0x44L, 0x87L) ^ make_char3(0x6CL, 0x6CL, 0x6CL))).y) <= p_79)) <= l_345), l_365.f0)), 2)), 15)) <= p_5135->g_60) > l_365.f0))) || hip_const_4[2][0][5])).x;
                l_383[3][0][2] |= l_344;
            }
        }
        l_360[0] = make_int4(p_5135->g_384.x, p_5135->g_384.x, p_5135->g_384.x, p_5135->g_384.x).y;
        if (p_5135->g_291)
        { /* block id: 199 */
            uint32_t l_387 = 7UL;
            int32_t l_390[3];
            uint8_t l_391 = 0x4CL;
            struct S0 *l_394 = &p_5135->g_62;
            int16_t l_397 = 0x2259L;
            int8_t *l_410 = nullptr;
            int32_t *l_413 = &l_360[0];
            int32_t **l_412 = &l_413;
            __shared__ int8_t *l_414;
            l_414 = &hip_const_3.f1;
            int64_t l_415 = 0x9CC3CFD5BAA61934LL;
            int i;
            for (int i = 0; i < 3; i++)
                l_390[i] = (-1L);
            for (p_5135->g_291 = 1; (p_5135->g_291 >= 0); p_5135->g_291 -= 1)
            { /* block id: 202 */
                int32_t *l_386 = &l_339[2];
                int32_t **l_385 = &l_386;
                uint16_t *l_401[2];
                int i;
                for (int i = 0; i < 2; i++)
                    l_401[i] = nullptr;
                (*l_385) = &l_360[p_5135->g_291];
                for (p_5135->g_382 = 0; (p_5135->g_382 <= 2); p_5135->g_382 += 1)
                { /* block id: 206 */
                    ++l_387;
                    --l_391;
                    for (l_387 = 0; (l_387 <= 2); l_387 += 1)
                    { /* block id: 211 */
                        return l_394;
                    }
                }
                (**l_385) = p_79;
                p_5135->g_384.x = ((0xA2L > ((safe_sub_func_int8_t_s_s(l_339[2], l_397)) < ((**l_343) = (((0x5F692CA4C636CD66LL ^ p_5135->g_298.x) || (safe_lshift_func_int16_t_s_u((make_int4(p_5135->g_400.y, p_5135->g_400.y, p_5135->g_400.y, p_5135->g_400.y).y < (0x2BL && (l_401[0] != (p_5135->g_213 , l_402[6][2][0])))), p_5135->g_403))) == l_387)))) , l_360[1]);
            }
            l_390[2] = (safe_div_func_int64_t_s_s(((l_387 , p_5135->g_213) >= (safe_div_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(((l_410 != l_411) >= ((((*l_336) , (((p_5135->g_268.x = (((*l_412) = &l_360[1]) == &hip_const_2)) , (&p_5135->g_49 != nullptr)) ^ l_354.y)) ^ p_5135->g_62.f0) , p_5135->g_298.x)), l_415)), p_79))), 0x896BF1FCE55A843ELL));
            (*l_412) = l_416;
            for (p_79 = 0; (p_79 <= 2); p_79 += 1)
            { /* block id: 225 */
                return (*p_5135->g_325);
            }
        }
        else
        { /* block id: 228 */
            int32_t l_419 = 0x65E48E1CL;
            int16_t ***l_427 = &p_5135->g_342;
            int32_t l_431 = 0xED1102B4L;
            struct S0 l_435 = {17846};
            int8_t *l_437[3][5] = {{nullptr, &p_5135->g_291, nullptr, &p_5135->g_291, nullptr}, {nullptr, &p_5135->g_291, nullptr, &p_5135->g_291, nullptr}, {nullptr, &p_5135->g_291, nullptr, &p_5135->g_291, nullptr}};
            int i, j;
            l_432[0] ^= (+(l_360[0] = ((safe_mod_func_int64_t_s_s((((**p_78) ^= l_419) != 0xEB87E373L), (safe_mod_func_uint32_t_u_u(0x0A066165L, l_422[4])))) ^ ((safe_div_func_int8_t_s_s((safe_sub_func_int32_t_s_s((p_5135->g_384.x , (((*l_427) = nullptr) != &p_5135->g_156)), ((safe_unary_minus_func_int16_t_s(((make_uchar3(0xCFL, 1UL, 0x24L).x && (l_431 = (safe_mul_func_int64_t_s_s((-1L), ((0x418BE28BL <= l_419) & l_339[1]))))) || p_79))) ^ p_79))), 4UL)) == p_79))));
            l_432[0] = (l_435.f0 = (+(safe_lshift_func_uint16_t_u_s((l_435 , l_431), (make_uint4(l_436.z, l_436.z, l_436.z, l_436.z).w || l_431)))));
            (*l_427) = (((!(l_432[6] &= (p_5135->g_268.x |= (l_438 = p_79)))) , (**p_5135->g_325)) , &p_5135->g_158);
        }
        for (p_5135->g_403 = 29; (p_5135->g_403 != 9); p_5135->g_403 = safe_sub_func_int8_t_s_s(p_5135->g_403, 1))
        { /* block id: 243 */
            int32_t l_441 = 0x1ACEA57BL;
            __shared__ int32_t l_442;
            l_442 = (-1L);
            int32_t l_443 = (-1L);
            __shared__ int32_t l_444;
            l_444 = 0xD62B9C85L;
            int32_t **l_448 = &l_416;
            l_445--;
            (*l_448) = nullptr;
        }
    }
    for (l_445 = (-5); (l_445 != 57); l_445 = safe_add_func_uint8_t_u_u(l_445, 1))
    { /* block id: 251 */
        __shared__ int32_t l_478;
        l_478 = 1L;
        int32_t l_484 = 0x6D610D1FL;
        short3 l_488 = make_short3(0x8648L, (-6L), 0x8648L);
        uint16_t l_496 = 0x4BE0L;
        int32_t l_511 = 0x0F0A7633L;
        __shared__ int32_t l_512;
        l_512 = 0x1C808C52L;
        int32_t l_517[1];
        int32_t **l_526 = &l_416;
        int32_t ***l_525[3][2][5] = {{{&l_526, &l_526, &l_526, &l_526, &l_526}, {&l_526, &l_526, &l_526, &l_526, &l_526}}, {{&l_526, &l_526, &l_526, &l_526, &l_526}, {&l_526, &l_526, &l_526, &l_526, &l_526}}, {{&l_526, &l_526, &l_526, &l_526, &l_526}, {&l_526, &l_526, &l_526, &l_526, &l_526}}};
        int i, j, k;
        for (int i = 0; i < 1; i++)
            l_517[i] = 0x8D8CA01EL;
        for (p_5135->g_213 = 0; (p_5135->g_213 >= 42); p_5135->g_213++)
        { /* block id: 254 */
            ulong4 l_464 = make_ulong4(0xFC1AC1D178339FF6LL, 18446744073709551614UL, 0xFC1AC1D178339FF6LL, 18446744073709551614UL);
            int16_t *l_476 = nullptr;
            int16_t *l_477[10][9][2] = {{{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}, {{nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}, {nullptr, nullptr}}};
            uint64_t l_479[2][8] = {{0xC02D3E01946F3996LL, 0x553E0E994EA03C6BLL, 0x757CD0F41F11E865LL, 0x553E0E994EA03C6BLL, 0xC02D3E01946F3996LL, 0x553E0E994EA03C6BLL, 0x757CD0F41F11E865LL, 0x553E0E994EA03C6BLL}, {0xC02D3E01946F3996LL, 0x553E0E994EA03C6BLL, 0x757CD0F41F11E865LL, 0x553E0E994EA03C6BLL, 0xC02D3E01946F3996LL, 0x553E0E994EA03C6BLL, 0x757CD0F41F11E865LL, 0x553E0E994EA03C6BLL}};
            __shared__ int32_t l_485;
            l_485 = (-9L);
            int64_t *l_495 = nullptr;
            int32_t l_513 = 8L;
            int32_t l_514 = 0xCECD2546L;
            int32_t l_515 = 0x681F8693L;
            int3 l_516 = make_int3(0L, 0x49E4057DL, 0L);
            int64_t l_518 = (-7L);
            __shared__ int16_t l_519;
            l_519 = 1L;
            int16_t l_520 = 0x924BL;
            int i, j, k;
            if (((safe_mod(make_int4(0x7513BF5AL, 1L, 0x299A8C33L, (l_485 = (safe_add_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((((safe_rshift(make_char3(0x09L, (p_5135->g_384.x == (safe_add_func_int8_t_s_s((((make_ulong4(l_464.y, l_464.y, l_464.y, l_464.y).w > (((safe_lshift_func_uint64_t_u_u(l_464.x, ((safe_mul_func_int16_t_s_s(((*p_5135->g_157) = ((make_ushort1((p_5135->g_403 = p_79)).x , p_79) != p_79)), ((safe_rshift_func_int64_t_s_s(make_long3(p_5135->g_473.x, p_5135->g_473.x, p_5135->g_473.x).y, (safe_add_func_int16_t_s_s((l_478 = 0x3284L), l_479[1][4])))) <= (((safe_mod_func_int64_t_s_s((((0x9B7EL | (safe_rshift_func_uint64_t_u_u((make_uchar4(0xA2L, 1UL, 246UL, 0UL).x , p_79), l_484))) == 0x3C8E4E67L) >= p_79), (-1L))) , p_79) <= l_464.w)))) ^ 1L))) || 18446744073709551614UL) ^ p_79)) , &p_79) != &p_5135->g_106), p_79))), p_79), make_char3(8, 8, 8)))).x > p_5135->g_298.x), l_464.x)) , p_5135->g_106), l_484)))), make_int4(1L, 1L, 1L, 1L)))).w)
            { /* block id: 259 */
                p_77 = &hip_const_2;
            }
            else
            { /* block id: 261 */
                short4 l_499 = make_short4(0x0028L, 0x6327L, 0x0028L, 0x6327L);
                int32_t l_510 = 0x8EC63F4DL;
                int i;
                l_510 &= (l_485 |= (safe_add_func_int16_t_s_s(make_short2(l_488.y, l_488.y).x, (safe_add_func_int32_t_s_s((safe_mul_func_int16_t_s_s(p_79, 0UL)), (+((safe_div_func_uint16_t_u_u(((!(l_496 |= (p_5135->g_49 || (l_495 == nullptr)))) != (((make_short1(p_5135->g_497.y) & ((make_short1(p_5135->g_498.x) & make_short1(l_499.w))))).x == (((safe_sub_func_uint8_t_u_u(((safe_mod_func_int32_t_s_s((0x183EED06L | (safe_mod_func_int64_t_s_s(((safe_sub_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u((make_ushort4(p_5135->g_106, (p_5135->g_62.f0 && ((~p_79) > l_499.y)), 0x929BL, 0xC349L).y ^ p_79), hip_const_4[3][2][0])) , p_79), (*p_5135->g_158))) , 1L), l_499.z))), (**p_78))) != p_5135->g_497.x), l_499.y)) , p_79) != p_79))), l_488.y)) != p_5135->g_497.y)))))));
            }
            l_522--;
        }
        l_527 = &p_77;
    }
    for (l_107 = 0; (l_107 <= 11); l_107++)
    { /* block id: 272 */
        uint8_t *l_545[6];
        int32_t l_546 = (-1L);
        __shared__ union U1 *l_556;
        l_556 = nullptr;
        int32_t l_557 = (-6L);
        long4 l_569 = make_long4((-1L), 1L, (-1L), 1L);
        long2 l_575 = make_long2(0xDDCD4A417CF5E097LL, 1L);
        char1 l_587 = make_char1((-1L));
        __shared__ int32_t l_691;
        l_691 = (-2L);
        struct S0 ***l_840 = &p_5135->g_325;
        long1 l_845 = make_long1(0L);
        uint8_t ****l_880 = &l_714;
        int32_t *l_881 = nullptr;
        int32_t *l_882 = nullptr;
        int32_t *l_883 = nullptr;
        int16_t *l_884 = &l_826;
        __shared__ int32_t l_936;
        l_936 = (-6L);
        int32_t l_937 = 0xB5D5CAA7L;
        uint64_t l_938 = 8UL;
        struct S0 **l_976 = &p_5135->g_64;
        ushort1 l_1008 = make_ushort1(1UL);
        int32_t l_1064 = 0x597AF5D7L;
        int i;
        for (int i = 0; i < 6; i++)
            l_545[i] = &hip_const_1;
    }
    return (**l_873);
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S2 c_5136;
    struct S2* p_5135 = &c_5136;
    struct S2 c_5137 = {
        .g_8 = 0x600AL,
        .g_12 = 65530UL,
        .g_49 = 0x56D7CB4FL,
        .g_60 = 0xDFL,
        .g_62 = {-25336},
        .g_64 = &p_5135->g_62,
        .g_106 = 0x7AE02F2754ED04B0LL,
        .g_126 = make_uchar1(0x75L),
        .g_139 = {{3UL, 0xDE0336C129863923LL}, {3UL, 0xDE0336C129863923LL}, {3UL, 0xDE0336C129863923LL}, {3UL, 0xDE0336C129863923LL}, {3UL, 0xDE0336C129863923LL}, {3UL, 0xDE0336C129863923LL}, {3UL, 0xDE0336C129863923LL}},
        .g_156 = nullptr,
        .g_157 = &p_5135->g_8,
        .g_158 = &p_5135->g_8,
        .g_203 = (-2L),
        .g_213 = 1UL,
        .g_268 = make_char1((-4L)),
        .g_291 = 1L,
        .g_295 = 0xFA5FF65FL,
        .g_298 = make_long1(1L),
        .g_304 = 0x29D3L,
        .g_325 = &p_5135->g_64,
        .g_324 = {&p_5135->g_325, &p_5135->g_325, &p_5135->g_325},
        .g_328 = 0UL,
        .g_342 = &p_5135->g_156,
        .g_382 = 0L,
        .g_384 = make_int1(0xFFE447C7L),
        .g_400 = make_int2(0xC397C904L, 0xE68BA364L),
        .g_403 = 0x149CL,
        .g_473 = make_long1((-1L)),
        .g_497 = make_short3(1L, (-1L), 1L),
        .g_498 = make_short4(0x3972L, 0xEA88L, 0x3972L, 0xEA88L),
        .g_544 = make_char2(0xE0L, (-1L)),
        .g_566 = nullptr,
        .g_565 = {nullptr, &p_5135->g_566, nullptr, &p_5135->g_566, nullptr, &p_5135->g_566, nullptr},
        .g_689 = make_int4(0x58BCAD4BL, 0xDD1A980DL, 0x58BCAD4BL, 0xDD1A980DL),
        .g_702 = make_int3(0L, 0xD2884327L, 0L),
        .g_705 = make_char4(1L, 0x0AL, 1L, 0x0AL),
        .g_709 = &p_5135->g_324[1],
        .g_740 = make_int4((-1L), (-10L), (-1L), (-10L)),
        .g_741 = make_uchar3(0xD4L, 6UL, 0xD4L),
        .g_761 = {{{&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}}, {{&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}}, {{&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}}, {{&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}, {&hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1}}},
        .g_760 = &p_5135->g_761[3][3][4],
        .g_811 = make_long2((-1L), (-7L)),
        .g_854 = make_int3(0x728C5F93L, (-8L), 0x728C5F93L),
        .g_855 = make_int3((-1L), 0xCBC6017FL, (-1L)),
        .g_856 = make_int1(0x269AA1EFL),
        .g_895 = make_int1((-6L)),
        .g_906 = make_uint1(0xF6E08B4AL),
        .g_986 = 246UL,
        .g_990 = make_int4(0x5097E4DFL, 1L, 0x5097E4DFL, 1L),
        .g_1010 = make_ushort3(65533UL, 1UL, 65533UL),
        .g_1042 = nullptr,
        .g_1041 = &p_5135->g_1042,
        .g_1055 = make_uint1(0UL),
        .g_1092 = &p_5135->g_565[3],
        .g_1091 = {&p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092, &p_5135->g_1092},
        .g_1109 = 0x9B51L,
        .g_1231 = &hip_const_5,
        .g_1325 = make_short1(0L),
        .g_1355 = make_ushort2(65528UL, 0xEE33L),
        .g_1387 = make_ulong1(0x6003714FBF23A17DLL),
        .g_1410 = &p_5135->g_1231,
        .g_1429 = make_ulong3(18446744073709551606UL, 4UL, 18446744073709551606UL),
        .g_1431 = make_long4(0x1FC3ACBBB1E925E1LL, 3L, 0x1FC3ACBBB1E925E1LL, 3L),
        .g_1445 = make_short1(0x6970L),
        .g_1448 = make_short2((-1L), 0xEBBBL),
        .g_1461 = nullptr,
        .g_1469 = make_short1(0x4915L),
        .g_1480 = make_ulong2(0x7295D553DCDE49ACLL, 0x8872D397463B62AFLL),
        .g_1493 = make_int4((-1L), 0x439F83D0L, (-1L), 0x439F83D0L),
        .g_1525 = {nullptr, nullptr, &hip_const_2, nullptr, nullptr, &hip_const_2},
        .g_1532 = make_long4(0x740AC22A32C344FFLL, (-3L), 0x740AC22A32C344FFLL, (-3L)),
        .g_1541 = make_int3(0xE176BC56L, 0x94AE1DDEL, 0xE176BC56L),
        .g_1549 = &hip_const_6,
        .g_1548 = &p_5135->g_1549,
        .g_1567 = nullptr,
        .g_1580 = nullptr,
        .g_1579 = {&p_5135->g_1580, &p_5135->g_1580, &p_5135->g_1580, &p_5135->g_1580, &p_5135->g_1580, &p_5135->g_1580, &p_5135->g_1580, &p_5135->g_1580, &p_5135->g_1580},
        .g_1585 = make_uchar3(0xF3L, 0x2EL, 0xF3L),
        .g_1605 = make_char2((-8L), 0x1AL),
        .g_1624 = make_uint4(0x70A94836L, 0x551F4EB4L, 0x70A94836L, 0x551F4EB4L),
        .g_1672 = 1UL,
        .g_1681 = make_short2(0x3899L, 0xC900L),
        .g_1710 = 0x482A9B9853A8F767LL,
        .g_1712 = 1UL,
        .g_1738 = make_int1(0x1F8CFB33L),
        .g_1743 = 0UL,
        .g_1755 = make_int3((-1L), 0L, (-1L)),
        .g_1759 = make_char2((-1L), 0xCDL),
        .g_1767 = make_long2(0xDDC76945A23924C1LL, 0x85B6F0CC282A7F07LL),
        .g_1771 = make_long4(0xFA79B6B288E8801CLL, 4L, 0xFA79B6B288E8801CLL, 4L),
        .g_1814 = 0x5D78223FL,
        .g_1817 = 0xEE80L,
        .g_1820 = {0xEC57L, 65532UL, 0xEC57L, 65532UL, 0xEC57L, 65532UL, 0xEC57L, 65532UL},
        .g_1892 = make_long2(0x8D7EBC4D5916FF7DLL, 3L),
        .g_1926 = {8UL},
        .g_1974 = make_int4(5L, 3L, 5L, 3L),
        .g_2000 = make_int1(0x45A1B655L),
        .g_2048 = make_int3(3L, 1L, 3L),
        .g_2069 = nullptr,
        .g_2103 = 4294967291UL,
        .g_2164 = make_uchar1(9UL),
        .g_2199 = make_uint1(0x010AD6CBL),
        .g_2220 = make_long1(6L),
        .g_2256 = make_char4(0x52L, (-1L), 0x52L, (-1L)),
        .g_2325 = 0xB3F77DB8L,
        .g_2351 = make_uint4(18446744073709551613UL, 18446744073709551615UL, 18446744073709551613UL, 18446744073709551615UL),
        .g_2360 = make_char4(0x36L, 1L, 0x36L, 1L),
        .g_2397 = make_ushort4(5UL, 65535UL, 5UL, 65535UL),
        .g_2402 = make_short4((-10L), 0x699AL, (-10L), 0x699AL),
        .g_2403 = make_uint4(0UL, 0x28809CBBL, 0UL, 0x28809CBBL),
        .g_2411 = make_int3(0xFB8C05ADL, (-7L), 0xFB8C05ADL),
        .g_2424 = make_uint4(0x32D01C64L, 0x3F067AF8L, 0x32D01C64L, 0x3F067AF8L),
        .g_2432 = make_ushort4(65535UL, 0UL, 65535UL, 0UL),
        .g_2441 = 0x11E3AF00L,
        .g_2450 = make_short4(0L, (-1L), 0L, (-1L)),
        .g_2453 = make_uchar1(0x7EL),
        .g_2477 = make_ulong3(0x8B379CEAE66092A3LL, 5UL, 0x8B379CEAE66092A3LL),
        .g_2493 = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}},
        .g_2547 = make_char3(0x0CL, 0xD7L, 0x0CL),
        .g_2562 = (-1L),
        .g_2586 = 0xC295DD2FL,
        .g_2615 = 0xA97D3177L,
        .g_2651 = make_ushort2(65526UL, 1UL),
        .g_2699 = &p_5135->g_62,
        .g_2775 = {4294967292UL},
        .g_2792 = 0xA2L,
        .g_2814 = make_char1(1L),
        .g_2815 = make_char3(1L, 0L, 1L),
        .g_2843 = make_ulong3(0xB020433D28A968B4LL, 0x739029E1FF597012LL, 0xB020433D28A968B4LL),
        .g_2844 = make_ulong2(0xC8D25DE0B5882872LL, 1UL),
        .g_2845 = make_ulong2(0xDF8175276A6B09D4LL, 18446744073709551608UL),
        .g_2851 = make_ushort4(0xB14BL, 0xFD51L, 0xB14BL, 0xFD51L),
        .g_2859 = make_int2(0xAE4D1B53L, 0L),
        .g_2884 = make_ulong3(18446744073709551615UL, 18446744073709551610UL, 18446744073709551615UL),
        .g_2953 = make_char3(0x60L, 0xEFL, 0x60L),
        .g_2958 = make_ushort2(0x36DDL, 0xA286L),
        .g_2982 = make_int2(0L, 1L),
        .g_2992 = make_char4((-1L), 1L, (-1L), 1L),
        .g_2994 = make_short3(0x0E48L, 0x404FL, 0x0E48L),
        .g_3047 = make_int4((-5L), 0x995F5F74L, (-5L), 0x995F5F74L),
        .g_3048 = 0L,
        .g_3053 = 0x25L,
        .g_3067 = make_char1(5L),
        .g_3070 = &p_5135->g_1579[2],
        .g_3069 = &p_5135->g_3070,
        .g_3087 = make_int1(7L),
        .g_3088 = make_int1((-1L)),
        .g_3089 = make_uchar3(3UL, 0xC8L, 3UL),
        .g_3090 = {&p_5135->g_62},
        .g_3109 = make_ulong1(1UL),
        .g_3117 = make_short2(1L, 0x8C3BL),
        .g_3119 = &p_5135->g_213,
        .g_3118 = &p_5135->g_3119,
        .g_3125 = make_ushort4(0UL, 0xFB6CL, 0UL, 0xFB6CL),
        .g_3128 = make_short3((-1L), 0x54FAL, (-1L)),
        .g_3188 = make_uchar1(246UL),
        .g_3212 = make_long4((-1L), 0xF20FCF31A345A034LL, (-1L), 0xF20FCF31A345A034LL),
        .g_3219 = make_short2(0xAE5CL, 0L),
        .g_3220 = make_ushort3(0x2EF3L, 65531UL, 0x2EF3L),
        .g_3255 = &p_5135->g_342,
        .g_3254 = &p_5135->g_3255,
        .g_3279 = 0x69BBBC95L,
        .g_3289 = {7597},
        .g_3299 = make_uint4(0x73D579B8L, 0x8D490892L, 0x73D579B8L, 0x8D490892L),
        .g_3300 = make_char4(0x5BL, 0xEFL, 0x5BL, 0xEFL),
        .g_3312 = make_int2(0x578BFC5BL, 1L),
        .g_3352 = make_char3(0L, 1L, 0L),
        .g_3375 = make_ulong2(0xE69E47164E19D1B1LL, 18446744073709551615UL),
        .g_3380 = make_uint2(0xB7A0C448L, 0x1EB40532L),
        .g_3404 = make_ulong2(0xE5EC019EBF17DD14LL, 5UL),
        .g_3457 = make_uchar3(0xCFL, 0x0FL, 0xCFL),
        .g_3500 = make_long1(0x80C2E35C052867DCLL),
        .g_3542 = make_short2(0xD3AEL, 0L),
        .g_3590 = make_char4(0x02L, 0x39L, 0x02L, 0x39L),
        .g_3593 = make_uchar4(0x21L, 0x25L, 0x21L, 0x25L),
        .g_3630 = make_ulong2(0x96DE4B32DF3E0A31LL, 1UL),
        .g_3633 = make_char3(2L, (-9L), 2L),
        .g_3634 = make_char4(0xFEL, 0L, 0xFEL, 0L),
        .g_3644 = make_uint2(4294967295UL, 4UL),
        .g_3673 = make_uchar3(9UL, 255UL, 9UL),
        .g_3698 = make_short1(0xFF73L),
        .g_3721 = make_int4(0xA0155A2BL, 0x61FC9B2BL, 0xA0155A2BL, 0x61FC9B2BL),
        .g_3801 = 0xCDCD1B20L,
        .g_3840 = 0L,
        .g_3863 = make_uint3(0x003ED057L, 4294967295UL, 0x003ED057L),
        .g_3871 = make_ulong2(0x80ED437F2287CE34LL, 5UL),
        .g_3901 = make_short2(0x41D1L, (-1L)),
        .g_3923 = make_uint1(0x9C5B02E8L),
        .g_3936 = make_ulong4(0xCC00707D300DEA08LL, 0UL, 0xCC00707D300DEA08LL, 0UL),
        .g_3937 = {{{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}, {{{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}, {{-6756}, {-23601}, {29306}}}},
        .g_3966 = make_int2(1L, 0L),
        .g_3977 = {0xB1DAL, 0xB1DAL, 0xB1DAL, 0xB1DAL, 0xB1DAL, 0xB1DAL, 0xB1DAL},
        .g_3987 = make_uint3(1UL, 4294967291UL, 1UL),
        .g_3990 = make_int1((-4L)),
        .g_4024 = make_char2((-8L), 0xFBL),
        .g_4025 = make_char3(0xB9L, 0L, 0xB9L),
        .g_4074 = make_uint4(0x75281E22L, 0UL, 0x75281E22L, 0UL),
        .g_4130 = make_char1(0x09L),
        .g_4143 = 0L,
        .g_4156 = make_int3(0x60BE0434L, 0xC0581CD6L, 0x60BE0434L),
        .g_4163 = make_short3((-4L), 0xD2F6L, (-4L)),
        .g_4168 = make_uint1(0UL),
        .g_4170 = 1UL,
        .g_4180 = make_char1((-1L)),
        .g_4188 = make_long2(0xC57270991BCC6511LL, 0x006E94EDCED255F9LL),
        .g_4231 = (-6L),
        .g_4240 = make_char3(5L, 0x40L, 5L),
        .g_4245 = make_long2(0x7F5E0A2A4B97A823LL, 1L),
        .g_4252 = make_long3(1L, 0x7C2E35E614188632LL, 1L),
        .g_4256 = make_char3(0L, 0L, 0L),
        .g_4275 = make_short1(9L),
        .g_4280 = make_int4(0L, 1L, 0L, 1L),
        .g_4281 = make_char1(0L),
        .g_4302 = make_int1(0xA5E4CD5CL),
        .g_4327 = make_uchar2(1UL, 254UL),
        .g_4373 = make_char3(1L, (-1L), 1L),
        .g_4374 = make_char3(0xCBL, 0L, 0xCBL),
        .g_4420 = {1L, 1L, 5L, 1L, 1L, 5L, 1L, 1L, 5L},
        .g_4441 = make_uint2(0xC813D489L, 9UL),
        .g_4442 = make_uint2(0xAACD8E5DL, 0xAEE45B3EL),
        .g_4564 = make_uint1(0UL),
        .g_4599 = make_int4(4L, 7L, 4L, 7L),
        .g_4608 = make_short2((-5L), 0x7F44L),
        .g_4641 = make_uchar2(0x04L, 5UL),
        .g_4668 = {0xBF431AE4L, 0xBF431AE4L, 0xBF431AE4L, 0xBF431AE4L},
        .g_4670 = 0xC9C9L,
        .g_4684 = make_long2((-1L), 0xB5BA79D0EE1E2FE3LL),
        .g_4710 = 1L,
        .g_4712 = make_int2(0x3A993782L, 0x3425845FL),
        .g_4719 = make_long3(0x0BBB399CF19E78C9LL, (-1L), 0x0BBB399CF19E78C9LL),
        .g_4741 = make_uint4(4294967287UL, 0x389B49DBL, 4294967287UL, 0x389B49DBL),
        .g_4753 = make_char1((-4L)),
        .g_4836 = make_char2(0L, 0x0EL),
        .g_4847 = make_int4(3L, 1L, 3L, 1L),
        .g_4878 = make_int1((-1L)),
        .g_4954 = {0xA2264875L, 4294967293UL, 0xA2264875L, 4294967293UL},
        .g_4960 = make_uchar3(0UL, 0xDBL, 0UL),
        .g_4961 = make_uchar2(0UL, 254UL),
        .g_4985 = &p_5135->g_158,
        .g_4999 = make_uint4(0x972C7635L, 2UL, 0x972C7635L, 2UL),
        .g_5006 = make_short1(0x6580L),
        .g_5020 = make_long3(0x256FEE8F4626D157LL, (-1L), 0x256FEE8F4626D157LL),
        .g_5029 = make_ulong1(7UL),
        .g_5037 = make_long2((-1L), 0xE7336A838F52F3F1LL),
        .g_5068 = make_int3(0L, (-1L), 0L),
        .g_5077 = make_uint1(1UL),
        .g_5085 = make_long2(1L, 4L),
        .g_5090 = make_uint3(4294967289UL, 0x956CECFDL, 4294967289UL),
    };
    c_5136 = c_5137;

    // Execute core logic
    func_1(p_5135);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            for (int k = 0; k < 9; k++)
            {
                transparent_crc(hip_const_4[i][j][k], "hip_const_4[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(hip_const_5, "hip_const_5", print_hash_value);
    transparent_crc(p_5135->g_8, "p_5135->g_8", print_hash_value);
    transparent_crc(p_5135->g_12, "p_5135->g_12", print_hash_value);
    transparent_crc(p_5135->g_49, "p_5135->g_49", print_hash_value);
    transparent_crc(p_5135->g_60, "p_5135->g_60", print_hash_value);
    transparent_crc(p_5135->g_62.f0, "p_5135->g_62.f0", print_hash_value);
    transparent_crc(p_5135->g_106, "p_5135->g_106", print_hash_value);
    transparent_crc(p_5135->g_126.x, "p_5135->g_126.x", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            transparent_crc(p_5135->g_139[i][j], "p_5135->g_139[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_5135->g_203, "p_5135->g_203", print_hash_value);
    transparent_crc(p_5135->g_213, "p_5135->g_213", print_hash_value);
    transparent_crc(p_5135->g_268.x, "p_5135->g_268.x", print_hash_value);
    transparent_crc(p_5135->g_291, "p_5135->g_291", print_hash_value);
    transparent_crc(p_5135->g_295, "p_5135->g_295", print_hash_value);
    transparent_crc(p_5135->g_298.x, "p_5135->g_298.x", print_hash_value);
    transparent_crc(p_5135->g_304, "p_5135->g_304", print_hash_value);
    transparent_crc(p_5135->g_328, "p_5135->g_328", print_hash_value);
    transparent_crc(p_5135->g_382, "p_5135->g_382", print_hash_value);
    transparent_crc(p_5135->g_384.x, "p_5135->g_384.x", print_hash_value);
    transparent_crc(p_5135->g_400.x, "p_5135->g_400.x", print_hash_value);
    transparent_crc(p_5135->g_400.y, "p_5135->g_400.y", print_hash_value);
    transparent_crc(p_5135->g_403, "p_5135->g_403", print_hash_value);
    transparent_crc(p_5135->g_473.x, "p_5135->g_473.x", print_hash_value);
    transparent_crc(p_5135->g_497.x, "p_5135->g_497.x", print_hash_value);
    transparent_crc(p_5135->g_497.y, "p_5135->g_497.y", print_hash_value);
    transparent_crc(p_5135->g_497.z, "p_5135->g_497.z", print_hash_value);
    transparent_crc(p_5135->g_498.x, "p_5135->g_498.x", print_hash_value);
    transparent_crc(p_5135->g_498.y, "p_5135->g_498.y", print_hash_value);
    transparent_crc(p_5135->g_498.z, "p_5135->g_498.z", print_hash_value);
    transparent_crc(p_5135->g_498.w, "p_5135->g_498.w", print_hash_value);
    transparent_crc(p_5135->g_544.x, "p_5135->g_544.x", print_hash_value);
    transparent_crc(p_5135->g_544.y, "p_5135->g_544.y", print_hash_value);
    transparent_crc(p_5135->g_689.x, "p_5135->g_689.x", print_hash_value);
    transparent_crc(p_5135->g_689.y, "p_5135->g_689.y", print_hash_value);
    transparent_crc(p_5135->g_689.z, "p_5135->g_689.z", print_hash_value);
    transparent_crc(p_5135->g_689.w, "p_5135->g_689.w", print_hash_value);
    transparent_crc(p_5135->g_702.x, "p_5135->g_702.x", print_hash_value);
    transparent_crc(p_5135->g_702.y, "p_5135->g_702.y", print_hash_value);
    transparent_crc(p_5135->g_702.z, "p_5135->g_702.z", print_hash_value);
    transparent_crc(p_5135->g_705.x, "p_5135->g_705.x", print_hash_value);
    transparent_crc(p_5135->g_705.y, "p_5135->g_705.y", print_hash_value);
    transparent_crc(p_5135->g_705.z, "p_5135->g_705.z", print_hash_value);
    transparent_crc(p_5135->g_705.w, "p_5135->g_705.w", print_hash_value);
    transparent_crc(p_5135->g_740.x, "p_5135->g_740.x", print_hash_value);
    transparent_crc(p_5135->g_740.y, "p_5135->g_740.y", print_hash_value);
    transparent_crc(p_5135->g_740.z, "p_5135->g_740.z", print_hash_value);
    transparent_crc(p_5135->g_740.w, "p_5135->g_740.w", print_hash_value);
    transparent_crc(p_5135->g_741.x, "p_5135->g_741.x", print_hash_value);
    transparent_crc(p_5135->g_741.y, "p_5135->g_741.y", print_hash_value);
    transparent_crc(p_5135->g_741.z, "p_5135->g_741.z", print_hash_value);
    transparent_crc(p_5135->g_811.x, "p_5135->g_811.x", print_hash_value);
    transparent_crc(p_5135->g_811.y, "p_5135->g_811.y", print_hash_value);
    transparent_crc(p_5135->g_854.x, "p_5135->g_854.x", print_hash_value);
    transparent_crc(p_5135->g_854.y, "p_5135->g_854.y", print_hash_value);
    transparent_crc(p_5135->g_854.z, "p_5135->g_854.z", print_hash_value);
    transparent_crc(p_5135->g_855.x, "p_5135->g_855.x", print_hash_value);
    transparent_crc(p_5135->g_855.y, "p_5135->g_855.y", print_hash_value);
    transparent_crc(p_5135->g_855.z, "p_5135->g_855.z", print_hash_value);
    transparent_crc(p_5135->g_856.x, "p_5135->g_856.x", print_hash_value);
    transparent_crc(p_5135->g_895.x, "p_5135->g_895.x", print_hash_value);
    transparent_crc(p_5135->g_906.x, "p_5135->g_906.x", print_hash_value);
    transparent_crc(p_5135->g_986, "p_5135->g_986", print_hash_value);
    transparent_crc(p_5135->g_990.x, "p_5135->g_990.x", print_hash_value);
    transparent_crc(p_5135->g_990.y, "p_5135->g_990.y", print_hash_value);
    transparent_crc(p_5135->g_990.z, "p_5135->g_990.z", print_hash_value);
    transparent_crc(p_5135->g_990.w, "p_5135->g_990.w", print_hash_value);
    transparent_crc(p_5135->g_1010.x, "p_5135->g_1010.x", print_hash_value);
    transparent_crc(p_5135->g_1010.y, "p_5135->g_1010.y", print_hash_value);
    transparent_crc(p_5135->g_1010.z, "p_5135->g_1010.z", print_hash_value);
    transparent_crc(p_5135->g_1055.x, "p_5135->g_1055.x", print_hash_value);
    transparent_crc(p_5135->g_1109, "p_5135->g_1109", print_hash_value);
    transparent_crc(p_5135->g_1325.x, "p_5135->g_1325.x", print_hash_value);
    transparent_crc(p_5135->g_1355.x, "p_5135->g_1355.x", print_hash_value);
    transparent_crc(p_5135->g_1355.y, "p_5135->g_1355.y", print_hash_value);
    transparent_crc(p_5135->g_1387.x, "p_5135->g_1387.x", print_hash_value);
    transparent_crc(p_5135->g_1429.x, "p_5135->g_1429.x", print_hash_value);
    transparent_crc(p_5135->g_1429.y, "p_5135->g_1429.y", print_hash_value);
    transparent_crc(p_5135->g_1429.z, "p_5135->g_1429.z", print_hash_value);
    transparent_crc(p_5135->g_1431.x, "p_5135->g_1431.x", print_hash_value);
    transparent_crc(p_5135->g_1431.y, "p_5135->g_1431.y", print_hash_value);
    transparent_crc(p_5135->g_1431.z, "p_5135->g_1431.z", print_hash_value);
    transparent_crc(p_5135->g_1431.w, "p_5135->g_1431.w", print_hash_value);
    transparent_crc(p_5135->g_1445.x, "p_5135->g_1445.x", print_hash_value);
    transparent_crc(p_5135->g_1448.x, "p_5135->g_1448.x", print_hash_value);
    transparent_crc(p_5135->g_1448.y, "p_5135->g_1448.y", print_hash_value);
    transparent_crc(p_5135->g_1469.x, "p_5135->g_1469.x", print_hash_value);
    transparent_crc(p_5135->g_1480.x, "p_5135->g_1480.x", print_hash_value);
    transparent_crc(p_5135->g_1480.y, "p_5135->g_1480.y", print_hash_value);
    transparent_crc(p_5135->g_1493.x, "p_5135->g_1493.x", print_hash_value);
    transparent_crc(p_5135->g_1493.y, "p_5135->g_1493.y", print_hash_value);
    transparent_crc(p_5135->g_1493.z, "p_5135->g_1493.z", print_hash_value);
    transparent_crc(p_5135->g_1493.w, "p_5135->g_1493.w", print_hash_value);
    transparent_crc(p_5135->g_1532.x, "p_5135->g_1532.x", print_hash_value);
    transparent_crc(p_5135->g_1532.y, "p_5135->g_1532.y", print_hash_value);
    transparent_crc(p_5135->g_1532.z, "p_5135->g_1532.z", print_hash_value);
    transparent_crc(p_5135->g_1532.w, "p_5135->g_1532.w", print_hash_value);
    transparent_crc(p_5135->g_1541.x, "p_5135->g_1541.x", print_hash_value);
    transparent_crc(p_5135->g_1541.y, "p_5135->g_1541.y", print_hash_value);
    transparent_crc(p_5135->g_1541.z, "p_5135->g_1541.z", print_hash_value);
    transparent_crc(p_5135->g_1585.x, "p_5135->g_1585.x", print_hash_value);
    transparent_crc(p_5135->g_1585.y, "p_5135->g_1585.y", print_hash_value);
    transparent_crc(p_5135->g_1585.z, "p_5135->g_1585.z", print_hash_value);
    transparent_crc(p_5135->g_1605.x, "p_5135->g_1605.x", print_hash_value);
    transparent_crc(p_5135->g_1605.y, "p_5135->g_1605.y", print_hash_value);
    transparent_crc(p_5135->g_1624.x, "p_5135->g_1624.x", print_hash_value);
    transparent_crc(p_5135->g_1624.y, "p_5135->g_1624.y", print_hash_value);
    transparent_crc(p_5135->g_1624.z, "p_5135->g_1624.z", print_hash_value);
    transparent_crc(p_5135->g_1624.w, "p_5135->g_1624.w", print_hash_value);
    transparent_crc(p_5135->g_1672, "p_5135->g_1672", print_hash_value);
    transparent_crc(p_5135->g_1681.x, "p_5135->g_1681.x", print_hash_value);
    transparent_crc(p_5135->g_1681.y, "p_5135->g_1681.y", print_hash_value);
    transparent_crc(p_5135->g_1710, "p_5135->g_1710", print_hash_value);
    transparent_crc(p_5135->g_1712, "p_5135->g_1712", print_hash_value);
    transparent_crc(p_5135->g_1738.x, "p_5135->g_1738.x", print_hash_value);
    transparent_crc(p_5135->g_1743, "p_5135->g_1743", print_hash_value);
    transparent_crc(p_5135->g_1755.x, "p_5135->g_1755.x", print_hash_value);
    transparent_crc(p_5135->g_1755.y, "p_5135->g_1755.y", print_hash_value);
    transparent_crc(p_5135->g_1755.z, "p_5135->g_1755.z", print_hash_value);
    transparent_crc(p_5135->g_1759.x, "p_5135->g_1759.x", print_hash_value);
    transparent_crc(p_5135->g_1759.y, "p_5135->g_1759.y", print_hash_value);
    transparent_crc(p_5135->g_1767.x, "p_5135->g_1767.x", print_hash_value);
    transparent_crc(p_5135->g_1767.y, "p_5135->g_1767.y", print_hash_value);
    transparent_crc(p_5135->g_1771.x, "p_5135->g_1771.x", print_hash_value);
    transparent_crc(p_5135->g_1771.y, "p_5135->g_1771.y", print_hash_value);
    transparent_crc(p_5135->g_1771.z, "p_5135->g_1771.z", print_hash_value);
    transparent_crc(p_5135->g_1771.w, "p_5135->g_1771.w", print_hash_value);
    transparent_crc(p_5135->g_1814, "p_5135->g_1814", print_hash_value);
    transparent_crc(p_5135->g_1817, "p_5135->g_1817", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(p_5135->g_1820[i], "p_5135->g_1820[i]", print_hash_value);

    }
    transparent_crc(p_5135->g_1892.x, "p_5135->g_1892.x", print_hash_value);
    transparent_crc(p_5135->g_1892.y, "p_5135->g_1892.y", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        transparent_crc(p_5135->g_1926[i], "p_5135->g_1926[i]", print_hash_value);

    }
    transparent_crc(p_5135->g_1974.x, "p_5135->g_1974.x", print_hash_value);
    transparent_crc(p_5135->g_1974.y, "p_5135->g_1974.y", print_hash_value);
    transparent_crc(p_5135->g_1974.z, "p_5135->g_1974.z", print_hash_value);
    transparent_crc(p_5135->g_1974.w, "p_5135->g_1974.w", print_hash_value);
    transparent_crc(p_5135->g_2000.x, "p_5135->g_2000.x", print_hash_value);
    transparent_crc(p_5135->g_2048.x, "p_5135->g_2048.x", print_hash_value);
    transparent_crc(p_5135->g_2048.y, "p_5135->g_2048.y", print_hash_value);
    transparent_crc(p_5135->g_2048.z, "p_5135->g_2048.z", print_hash_value);
    transparent_crc(p_5135->g_2103, "p_5135->g_2103", print_hash_value);
    transparent_crc(p_5135->g_2164.x, "p_5135->g_2164.x", print_hash_value);
    transparent_crc(p_5135->g_2199.x, "p_5135->g_2199.x", print_hash_value);
    transparent_crc(p_5135->g_2220.x, "p_5135->g_2220.x", print_hash_value);
    transparent_crc(p_5135->g_2256.x, "p_5135->g_2256.x", print_hash_value);
    transparent_crc(p_5135->g_2256.y, "p_5135->g_2256.y", print_hash_value);
    transparent_crc(p_5135->g_2256.z, "p_5135->g_2256.z", print_hash_value);
    transparent_crc(p_5135->g_2256.w, "p_5135->g_2256.w", print_hash_value);
    transparent_crc(p_5135->g_2325, "p_5135->g_2325", print_hash_value);
    transparent_crc(p_5135->g_2351.x, "p_5135->g_2351.x", print_hash_value);
    transparent_crc(p_5135->g_2351.y, "p_5135->g_2351.y", print_hash_value);
    transparent_crc(p_5135->g_2351.z, "p_5135->g_2351.z", print_hash_value);
    transparent_crc(p_5135->g_2351.w, "p_5135->g_2351.w", print_hash_value);
    transparent_crc(p_5135->g_2360.x, "p_5135->g_2360.x", print_hash_value);
    transparent_crc(p_5135->g_2360.y, "p_5135->g_2360.y", print_hash_value);
    transparent_crc(p_5135->g_2360.z, "p_5135->g_2360.z", print_hash_value);
    transparent_crc(p_5135->g_2360.w, "p_5135->g_2360.w", print_hash_value);
    transparent_crc(p_5135->g_2397.x, "p_5135->g_2397.x", print_hash_value);
    transparent_crc(p_5135->g_2397.y, "p_5135->g_2397.y", print_hash_value);
    transparent_crc(p_5135->g_2397.z, "p_5135->g_2397.z", print_hash_value);
    transparent_crc(p_5135->g_2397.w, "p_5135->g_2397.w", print_hash_value);
    transparent_crc(p_5135->g_2402.x, "p_5135->g_2402.x", print_hash_value);
    transparent_crc(p_5135->g_2402.y, "p_5135->g_2402.y", print_hash_value);
    transparent_crc(p_5135->g_2402.z, "p_5135->g_2402.z", print_hash_value);
    transparent_crc(p_5135->g_2402.w, "p_5135->g_2402.w", print_hash_value);
    transparent_crc(p_5135->g_2403.x, "p_5135->g_2403.x", print_hash_value);
    transparent_crc(p_5135->g_2403.y, "p_5135->g_2403.y", print_hash_value);
    transparent_crc(p_5135->g_2403.z, "p_5135->g_2403.z", print_hash_value);
    transparent_crc(p_5135->g_2403.w, "p_5135->g_2403.w", print_hash_value);
    transparent_crc(p_5135->g_2411.x, "p_5135->g_2411.x", print_hash_value);
    transparent_crc(p_5135->g_2411.y, "p_5135->g_2411.y", print_hash_value);
    transparent_crc(p_5135->g_2411.z, "p_5135->g_2411.z", print_hash_value);
    transparent_crc(p_5135->g_2424.x, "p_5135->g_2424.x", print_hash_value);
    transparent_crc(p_5135->g_2424.y, "p_5135->g_2424.y", print_hash_value);
    transparent_crc(p_5135->g_2424.z, "p_5135->g_2424.z", print_hash_value);
    transparent_crc(p_5135->g_2424.w, "p_5135->g_2424.w", print_hash_value);
    transparent_crc(p_5135->g_2432.x, "p_5135->g_2432.x", print_hash_value);
    transparent_crc(p_5135->g_2432.y, "p_5135->g_2432.y", print_hash_value);
    transparent_crc(p_5135->g_2432.z, "p_5135->g_2432.z", print_hash_value);
    transparent_crc(p_5135->g_2432.w, "p_5135->g_2432.w", print_hash_value);
    transparent_crc(p_5135->g_2441, "p_5135->g_2441", print_hash_value);
    transparent_crc(p_5135->g_2450.x, "p_5135->g_2450.x", print_hash_value);
    transparent_crc(p_5135->g_2450.y, "p_5135->g_2450.y", print_hash_value);
    transparent_crc(p_5135->g_2450.z, "p_5135->g_2450.z", print_hash_value);
    transparent_crc(p_5135->g_2450.w, "p_5135->g_2450.w", print_hash_value);
    transparent_crc(p_5135->g_2453.x, "p_5135->g_2453.x", print_hash_value);
    transparent_crc(p_5135->g_2477.x, "p_5135->g_2477.x", print_hash_value);
    transparent_crc(p_5135->g_2477.y, "p_5135->g_2477.y", print_hash_value);
    transparent_crc(p_5135->g_2477.z, "p_5135->g_2477.z", print_hash_value);
    transparent_crc(p_5135->g_2547.x, "p_5135->g_2547.x", print_hash_value);
    transparent_crc(p_5135->g_2547.y, "p_5135->g_2547.y", print_hash_value);
    transparent_crc(p_5135->g_2547.z, "p_5135->g_2547.z", print_hash_value);
    transparent_crc(p_5135->g_2562, "p_5135->g_2562", print_hash_value);
    transparent_crc(p_5135->g_2586, "p_5135->g_2586", print_hash_value);
    transparent_crc(p_5135->g_2615, "p_5135->g_2615", print_hash_value);
    transparent_crc(p_5135->g_2651.x, "p_5135->g_2651.x", print_hash_value);
    transparent_crc(p_5135->g_2651.y, "p_5135->g_2651.y", print_hash_value);
    transparent_crc(p_5135->g_2775.f0, "p_5135->g_2775.f0", print_hash_value);
    transparent_crc(p_5135->g_2792, "p_5135->g_2792", print_hash_value);
    transparent_crc(p_5135->g_2814.x, "p_5135->g_2814.x", print_hash_value);
    transparent_crc(p_5135->g_2815.x, "p_5135->g_2815.x", print_hash_value);
    transparent_crc(p_5135->g_2815.y, "p_5135->g_2815.y", print_hash_value);
    transparent_crc(p_5135->g_2815.z, "p_5135->g_2815.z", print_hash_value);
    transparent_crc(p_5135->g_2843.x, "p_5135->g_2843.x", print_hash_value);
    transparent_crc(p_5135->g_2843.y, "p_5135->g_2843.y", print_hash_value);
    transparent_crc(p_5135->g_2843.z, "p_5135->g_2843.z", print_hash_value);
    transparent_crc(p_5135->g_2844.x, "p_5135->g_2844.x", print_hash_value);
    transparent_crc(p_5135->g_2844.y, "p_5135->g_2844.y", print_hash_value);
    transparent_crc(p_5135->g_2845.x, "p_5135->g_2845.x", print_hash_value);
    transparent_crc(p_5135->g_2845.y, "p_5135->g_2845.y", print_hash_value);
    transparent_crc(p_5135->g_2851.x, "p_5135->g_2851.x", print_hash_value);
    transparent_crc(p_5135->g_2851.y, "p_5135->g_2851.y", print_hash_value);
    transparent_crc(p_5135->g_2851.z, "p_5135->g_2851.z", print_hash_value);
    transparent_crc(p_5135->g_2851.w, "p_5135->g_2851.w", print_hash_value);
    transparent_crc(p_5135->g_2859.x, "p_5135->g_2859.x", print_hash_value);
    transparent_crc(p_5135->g_2859.y, "p_5135->g_2859.y", print_hash_value);
    transparent_crc(p_5135->g_2884.x, "p_5135->g_2884.x", print_hash_value);
    transparent_crc(p_5135->g_2884.y, "p_5135->g_2884.y", print_hash_value);
    transparent_crc(p_5135->g_2884.z, "p_5135->g_2884.z", print_hash_value);
    transparent_crc(p_5135->g_2953.x, "p_5135->g_2953.x", print_hash_value);
    transparent_crc(p_5135->g_2953.y, "p_5135->g_2953.y", print_hash_value);
    transparent_crc(p_5135->g_2953.z, "p_5135->g_2953.z", print_hash_value);
    transparent_crc(p_5135->g_2958.x, "p_5135->g_2958.x", print_hash_value);
    transparent_crc(p_5135->g_2958.y, "p_5135->g_2958.y", print_hash_value);
    transparent_crc(p_5135->g_2982.x, "p_5135->g_2982.x", print_hash_value);
    transparent_crc(p_5135->g_2982.y, "p_5135->g_2982.y", print_hash_value);
    transparent_crc(p_5135->g_2992.x, "p_5135->g_2992.x", print_hash_value);
    transparent_crc(p_5135->g_2992.y, "p_5135->g_2992.y", print_hash_value);
    transparent_crc(p_5135->g_2992.z, "p_5135->g_2992.z", print_hash_value);
    transparent_crc(p_5135->g_2992.w, "p_5135->g_2992.w", print_hash_value);
    transparent_crc(p_5135->g_2994.x, "p_5135->g_2994.x", print_hash_value);
    transparent_crc(p_5135->g_2994.y, "p_5135->g_2994.y", print_hash_value);
    transparent_crc(p_5135->g_2994.z, "p_5135->g_2994.z", print_hash_value);
    transparent_crc(p_5135->g_3047.x, "p_5135->g_3047.x", print_hash_value);
    transparent_crc(p_5135->g_3047.y, "p_5135->g_3047.y", print_hash_value);
    transparent_crc(p_5135->g_3047.z, "p_5135->g_3047.z", print_hash_value);
    transparent_crc(p_5135->g_3047.w, "p_5135->g_3047.w", print_hash_value);
    transparent_crc(p_5135->g_3048, "p_5135->g_3048", print_hash_value);
    transparent_crc(p_5135->g_3053, "p_5135->g_3053", print_hash_value);
    transparent_crc(p_5135->g_3067.x, "p_5135->g_3067.x", print_hash_value);
    transparent_crc(p_5135->g_3087.x, "p_5135->g_3087.x", print_hash_value);
    transparent_crc(p_5135->g_3088.x, "p_5135->g_3088.x", print_hash_value);
    transparent_crc(p_5135->g_3089.x, "p_5135->g_3089.x", print_hash_value);
    transparent_crc(p_5135->g_3089.y, "p_5135->g_3089.y", print_hash_value);
    transparent_crc(p_5135->g_3089.z, "p_5135->g_3089.z", print_hash_value);
    transparent_crc(p_5135->g_3109.x, "p_5135->g_3109.x", print_hash_value);
    transparent_crc(p_5135->g_3117.x, "p_5135->g_3117.x", print_hash_value);
    transparent_crc(p_5135->g_3117.y, "p_5135->g_3117.y", print_hash_value);
    transparent_crc(p_5135->g_3125.x, "p_5135->g_3125.x", print_hash_value);
    transparent_crc(p_5135->g_3125.y, "p_5135->g_3125.y", print_hash_value);
    transparent_crc(p_5135->g_3125.z, "p_5135->g_3125.z", print_hash_value);
    transparent_crc(p_5135->g_3125.w, "p_5135->g_3125.w", print_hash_value);
    transparent_crc(p_5135->g_3128.x, "p_5135->g_3128.x", print_hash_value);
    transparent_crc(p_5135->g_3128.y, "p_5135->g_3128.y", print_hash_value);
    transparent_crc(p_5135->g_3128.z, "p_5135->g_3128.z", print_hash_value);
    transparent_crc(p_5135->g_3188.x, "p_5135->g_3188.x", print_hash_value);
    transparent_crc(p_5135->g_3212.x, "p_5135->g_3212.x", print_hash_value);
    transparent_crc(p_5135->g_3212.y, "p_5135->g_3212.y", print_hash_value);
    transparent_crc(p_5135->g_3212.z, "p_5135->g_3212.z", print_hash_value);
    transparent_crc(p_5135->g_3212.w, "p_5135->g_3212.w", print_hash_value);
    transparent_crc(p_5135->g_3219.x, "p_5135->g_3219.x", print_hash_value);
    transparent_crc(p_5135->g_3219.y, "p_5135->g_3219.y", print_hash_value);
    transparent_crc(p_5135->g_3220.x, "p_5135->g_3220.x", print_hash_value);
    transparent_crc(p_5135->g_3220.y, "p_5135->g_3220.y", print_hash_value);
    transparent_crc(p_5135->g_3220.z, "p_5135->g_3220.z", print_hash_value);
    transparent_crc(p_5135->g_3279, "p_5135->g_3279", print_hash_value);
    transparent_crc(p_5135->g_3289.f0, "p_5135->g_3289.f0", print_hash_value);
    transparent_crc(p_5135->g_3299.x, "p_5135->g_3299.x", print_hash_value);
    transparent_crc(p_5135->g_3299.y, "p_5135->g_3299.y", print_hash_value);
    transparent_crc(p_5135->g_3299.z, "p_5135->g_3299.z", print_hash_value);
    transparent_crc(p_5135->g_3299.w, "p_5135->g_3299.w", print_hash_value);
    transparent_crc(p_5135->g_3300.x, "p_5135->g_3300.x", print_hash_value);
    transparent_crc(p_5135->g_3300.y, "p_5135->g_3300.y", print_hash_value);
    transparent_crc(p_5135->g_3300.z, "p_5135->g_3300.z", print_hash_value);
    transparent_crc(p_5135->g_3300.w, "p_5135->g_3300.w", print_hash_value);
    transparent_crc(p_5135->g_3312.x, "p_5135->g_3312.x", print_hash_value);
    transparent_crc(p_5135->g_3312.y, "p_5135->g_3312.y", print_hash_value);
    transparent_crc(p_5135->g_3352.x, "p_5135->g_3352.x", print_hash_value);
    transparent_crc(p_5135->g_3352.y, "p_5135->g_3352.y", print_hash_value);
    transparent_crc(p_5135->g_3352.z, "p_5135->g_3352.z", print_hash_value);
    transparent_crc(p_5135->g_3375.x, "p_5135->g_3375.x", print_hash_value);
    transparent_crc(p_5135->g_3375.y, "p_5135->g_3375.y", print_hash_value);
    transparent_crc(p_5135->g_3380.x, "p_5135->g_3380.x", print_hash_value);
    transparent_crc(p_5135->g_3380.y, "p_5135->g_3380.y", print_hash_value);
    transparent_crc(p_5135->g_3404.x, "p_5135->g_3404.x", print_hash_value);
    transparent_crc(p_5135->g_3404.y, "p_5135->g_3404.y", print_hash_value);
    transparent_crc(p_5135->g_3457.x, "p_5135->g_3457.x", print_hash_value);
    transparent_crc(p_5135->g_3457.y, "p_5135->g_3457.y", print_hash_value);
    transparent_crc(p_5135->g_3457.z, "p_5135->g_3457.z", print_hash_value);
    transparent_crc(p_5135->g_3500.x, "p_5135->g_3500.x", print_hash_value);
    transparent_crc(p_5135->g_3542.x, "p_5135->g_3542.x", print_hash_value);
    transparent_crc(p_5135->g_3542.y, "p_5135->g_3542.y", print_hash_value);
    transparent_crc(p_5135->g_3590.x, "p_5135->g_3590.x", print_hash_value);
    transparent_crc(p_5135->g_3590.y, "p_5135->g_3590.y", print_hash_value);
    transparent_crc(p_5135->g_3590.z, "p_5135->g_3590.z", print_hash_value);
    transparent_crc(p_5135->g_3590.w, "p_5135->g_3590.w", print_hash_value);
    transparent_crc(p_5135->g_3593.x, "p_5135->g_3593.x", print_hash_value);
    transparent_crc(p_5135->g_3593.y, "p_5135->g_3593.y", print_hash_value);
    transparent_crc(p_5135->g_3593.z, "p_5135->g_3593.z", print_hash_value);
    transparent_crc(p_5135->g_3593.w, "p_5135->g_3593.w", print_hash_value);
    transparent_crc(p_5135->g_3630.x, "p_5135->g_3630.x", print_hash_value);
    transparent_crc(p_5135->g_3630.y, "p_5135->g_3630.y", print_hash_value);
    transparent_crc(p_5135->g_3633.x, "p_5135->g_3633.x", print_hash_value);
    transparent_crc(p_5135->g_3633.y, "p_5135->g_3633.y", print_hash_value);
    transparent_crc(p_5135->g_3633.z, "p_5135->g_3633.z", print_hash_value);
    transparent_crc(p_5135->g_3634.x, "p_5135->g_3634.x", print_hash_value);
    transparent_crc(p_5135->g_3634.y, "p_5135->g_3634.y", print_hash_value);
    transparent_crc(p_5135->g_3634.z, "p_5135->g_3634.z", print_hash_value);
    transparent_crc(p_5135->g_3634.w, "p_5135->g_3634.w", print_hash_value);
    transparent_crc(p_5135->g_3644.x, "p_5135->g_3644.x", print_hash_value);
    transparent_crc(p_5135->g_3644.y, "p_5135->g_3644.y", print_hash_value);
    transparent_crc(p_5135->g_3673.x, "p_5135->g_3673.x", print_hash_value);
    transparent_crc(p_5135->g_3673.y, "p_5135->g_3673.y", print_hash_value);
    transparent_crc(p_5135->g_3673.z, "p_5135->g_3673.z", print_hash_value);
    transparent_crc(p_5135->g_3698.x, "p_5135->g_3698.x", print_hash_value);
    transparent_crc(p_5135->g_3721.x, "p_5135->g_3721.x", print_hash_value);
    transparent_crc(p_5135->g_3721.y, "p_5135->g_3721.y", print_hash_value);
    transparent_crc(p_5135->g_3721.z, "p_5135->g_3721.z", print_hash_value);
    transparent_crc(p_5135->g_3721.w, "p_5135->g_3721.w", print_hash_value);
    transparent_crc(p_5135->g_3801, "p_5135->g_3801", print_hash_value);
    transparent_crc(p_5135->g_3840, "p_5135->g_3840", print_hash_value);
    transparent_crc(p_5135->g_3863.x, "p_5135->g_3863.x", print_hash_value);
    transparent_crc(p_5135->g_3863.y, "p_5135->g_3863.y", print_hash_value);
    transparent_crc(p_5135->g_3863.z, "p_5135->g_3863.z", print_hash_value);
    transparent_crc(p_5135->g_3871.x, "p_5135->g_3871.x", print_hash_value);
    transparent_crc(p_5135->g_3871.y, "p_5135->g_3871.y", print_hash_value);
    transparent_crc(p_5135->g_3901.x, "p_5135->g_3901.x", print_hash_value);
    transparent_crc(p_5135->g_3901.y, "p_5135->g_3901.y", print_hash_value);
    transparent_crc(p_5135->g_3923.x, "p_5135->g_3923.x", print_hash_value);
    transparent_crc(p_5135->g_3936.x, "p_5135->g_3936.x", print_hash_value);
    transparent_crc(p_5135->g_3936.y, "p_5135->g_3936.y", print_hash_value);
    transparent_crc(p_5135->g_3936.z, "p_5135->g_3936.z", print_hash_value);
    transparent_crc(p_5135->g_3936.w, "p_5135->g_3936.w", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        for (int j = 0; j < 9; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_5135->g_3937[i][j][k].f0, "p_5135->g_3937[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_5135->g_3966.x, "p_5135->g_3966.x", print_hash_value);
    transparent_crc(p_5135->g_3966.y, "p_5135->g_3966.y", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        transparent_crc(p_5135->g_3977[i], "p_5135->g_3977[i]", print_hash_value);

    }
    transparent_crc(p_5135->g_3987.x, "p_5135->g_3987.x", print_hash_value);
    transparent_crc(p_5135->g_3987.y, "p_5135->g_3987.y", print_hash_value);
    transparent_crc(p_5135->g_3987.z, "p_5135->g_3987.z", print_hash_value);
    transparent_crc(p_5135->g_3990.x, "p_5135->g_3990.x", print_hash_value);
    transparent_crc(p_5135->g_4024.x, "p_5135->g_4024.x", print_hash_value);
    transparent_crc(p_5135->g_4024.y, "p_5135->g_4024.y", print_hash_value);
    transparent_crc(p_5135->g_4025.x, "p_5135->g_4025.x", print_hash_value);
    transparent_crc(p_5135->g_4025.y, "p_5135->g_4025.y", print_hash_value);
    transparent_crc(p_5135->g_4025.z, "p_5135->g_4025.z", print_hash_value);
    transparent_crc(p_5135->g_4074.x, "p_5135->g_4074.x", print_hash_value);
    transparent_crc(p_5135->g_4074.y, "p_5135->g_4074.y", print_hash_value);
    transparent_crc(p_5135->g_4074.z, "p_5135->g_4074.z", print_hash_value);
    transparent_crc(p_5135->g_4074.w, "p_5135->g_4074.w", print_hash_value);
    transparent_crc(p_5135->g_4130.x, "p_5135->g_4130.x", print_hash_value);
    transparent_crc(p_5135->g_4143, "p_5135->g_4143", print_hash_value);
    transparent_crc(p_5135->g_4156.x, "p_5135->g_4156.x", print_hash_value);
    transparent_crc(p_5135->g_4156.y, "p_5135->g_4156.y", print_hash_value);
    transparent_crc(p_5135->g_4156.z, "p_5135->g_4156.z", print_hash_value);
    transparent_crc(p_5135->g_4163.x, "p_5135->g_4163.x", print_hash_value);
    transparent_crc(p_5135->g_4163.y, "p_5135->g_4163.y", print_hash_value);
    transparent_crc(p_5135->g_4163.z, "p_5135->g_4163.z", print_hash_value);
    transparent_crc(p_5135->g_4168.x, "p_5135->g_4168.x", print_hash_value);
    transparent_crc(p_5135->g_4170, "p_5135->g_4170", print_hash_value);
    transparent_crc(p_5135->g_4180.x, "p_5135->g_4180.x", print_hash_value);
    transparent_crc(p_5135->g_4188.x, "p_5135->g_4188.x", print_hash_value);
    transparent_crc(p_5135->g_4188.y, "p_5135->g_4188.y", print_hash_value);
    transparent_crc(p_5135->g_4231, "p_5135->g_4231", print_hash_value);
    transparent_crc(p_5135->g_4240.x, "p_5135->g_4240.x", print_hash_value);
    transparent_crc(p_5135->g_4240.y, "p_5135->g_4240.y", print_hash_value);
    transparent_crc(p_5135->g_4240.z, "p_5135->g_4240.z", print_hash_value);
    transparent_crc(p_5135->g_4245.x, "p_5135->g_4245.x", print_hash_value);
    transparent_crc(p_5135->g_4245.y, "p_5135->g_4245.y", print_hash_value);
    transparent_crc(p_5135->g_4252.x, "p_5135->g_4252.x", print_hash_value);
    transparent_crc(p_5135->g_4252.y, "p_5135->g_4252.y", print_hash_value);
    transparent_crc(p_5135->g_4252.z, "p_5135->g_4252.z", print_hash_value);
    transparent_crc(p_5135->g_4256.x, "p_5135->g_4256.x", print_hash_value);
    transparent_crc(p_5135->g_4256.y, "p_5135->g_4256.y", print_hash_value);
    transparent_crc(p_5135->g_4256.z, "p_5135->g_4256.z", print_hash_value);
    transparent_crc(p_5135->g_4275.x, "p_5135->g_4275.x", print_hash_value);
    transparent_crc(p_5135->g_4280.x, "p_5135->g_4280.x", print_hash_value);
    transparent_crc(p_5135->g_4280.y, "p_5135->g_4280.y", print_hash_value);
    transparent_crc(p_5135->g_4280.z, "p_5135->g_4280.z", print_hash_value);
    transparent_crc(p_5135->g_4280.w, "p_5135->g_4280.w", print_hash_value);
    transparent_crc(p_5135->g_4281.x, "p_5135->g_4281.x", print_hash_value);
    transparent_crc(p_5135->g_4302.x, "p_5135->g_4302.x", print_hash_value);
    transparent_crc(p_5135->g_4327.x, "p_5135->g_4327.x", print_hash_value);
    transparent_crc(p_5135->g_4327.y, "p_5135->g_4327.y", print_hash_value);
    transparent_crc(p_5135->g_4373.x, "p_5135->g_4373.x", print_hash_value);
    transparent_crc(p_5135->g_4373.y, "p_5135->g_4373.y", print_hash_value);
    transparent_crc(p_5135->g_4373.z, "p_5135->g_4373.z", print_hash_value);
    transparent_crc(p_5135->g_4374.x, "p_5135->g_4374.x", print_hash_value);
    transparent_crc(p_5135->g_4374.y, "p_5135->g_4374.y", print_hash_value);
    transparent_crc(p_5135->g_4374.z, "p_5135->g_4374.z", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        transparent_crc(p_5135->g_4420[i], "p_5135->g_4420[i]", print_hash_value);

    }
    transparent_crc(p_5135->g_4441.x, "p_5135->g_4441.x", print_hash_value);
    transparent_crc(p_5135->g_4441.y, "p_5135->g_4441.y", print_hash_value);
    transparent_crc(p_5135->g_4442.x, "p_5135->g_4442.x", print_hash_value);
    transparent_crc(p_5135->g_4442.y, "p_5135->g_4442.y", print_hash_value);
    transparent_crc(p_5135->g_4564.x, "p_5135->g_4564.x", print_hash_value);
    transparent_crc(p_5135->g_4599.x, "p_5135->g_4599.x", print_hash_value);
    transparent_crc(p_5135->g_4599.y, "p_5135->g_4599.y", print_hash_value);
    transparent_crc(p_5135->g_4599.z, "p_5135->g_4599.z", print_hash_value);
    transparent_crc(p_5135->g_4599.w, "p_5135->g_4599.w", print_hash_value);
    transparent_crc(p_5135->g_4608.x, "p_5135->g_4608.x", print_hash_value);
    transparent_crc(p_5135->g_4608.y, "p_5135->g_4608.y", print_hash_value);
    transparent_crc(p_5135->g_4641.x, "p_5135->g_4641.x", print_hash_value);
    transparent_crc(p_5135->g_4641.y, "p_5135->g_4641.y", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        transparent_crc(p_5135->g_4668[i], "p_5135->g_4668[i]", print_hash_value);

    }
    transparent_crc(p_5135->g_4670, "p_5135->g_4670", print_hash_value);
    transparent_crc(p_5135->g_4684.x, "p_5135->g_4684.x", print_hash_value);
    transparent_crc(p_5135->g_4684.y, "p_5135->g_4684.y", print_hash_value);
    transparent_crc(p_5135->g_4710, "p_5135->g_4710", print_hash_value);
    transparent_crc(p_5135->g_4712.x, "p_5135->g_4712.x", print_hash_value);
    transparent_crc(p_5135->g_4712.y, "p_5135->g_4712.y", print_hash_value);
    transparent_crc(p_5135->g_4719.x, "p_5135->g_4719.x", print_hash_value);
    transparent_crc(p_5135->g_4719.y, "p_5135->g_4719.y", print_hash_value);
    transparent_crc(p_5135->g_4719.z, "p_5135->g_4719.z", print_hash_value);
    transparent_crc(p_5135->g_4741.x, "p_5135->g_4741.x", print_hash_value);
    transparent_crc(p_5135->g_4741.y, "p_5135->g_4741.y", print_hash_value);
    transparent_crc(p_5135->g_4741.z, "p_5135->g_4741.z", print_hash_value);
    transparent_crc(p_5135->g_4741.w, "p_5135->g_4741.w", print_hash_value);
    transparent_crc(p_5135->g_4753.x, "p_5135->g_4753.x", print_hash_value);
    transparent_crc(p_5135->g_4836.x, "p_5135->g_4836.x", print_hash_value);
    transparent_crc(p_5135->g_4836.y, "p_5135->g_4836.y", print_hash_value);
    transparent_crc(p_5135->g_4847.x, "p_5135->g_4847.x", print_hash_value);
    transparent_crc(p_5135->g_4847.y, "p_5135->g_4847.y", print_hash_value);
    transparent_crc(p_5135->g_4847.z, "p_5135->g_4847.z", print_hash_value);
    transparent_crc(p_5135->g_4847.w, "p_5135->g_4847.w", print_hash_value);
    transparent_crc(p_5135->g_4878.x, "p_5135->g_4878.x", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        transparent_crc(p_5135->g_4954[i], "p_5135->g_4954[i]", print_hash_value);

    }
    transparent_crc(p_5135->g_4960.x, "p_5135->g_4960.x", print_hash_value);
    transparent_crc(p_5135->g_4960.y, "p_5135->g_4960.y", print_hash_value);
    transparent_crc(p_5135->g_4960.z, "p_5135->g_4960.z", print_hash_value);
    transparent_crc(p_5135->g_4961.x, "p_5135->g_4961.x", print_hash_value);
    transparent_crc(p_5135->g_4961.y, "p_5135->g_4961.y", print_hash_value);
    transparent_crc(p_5135->g_4999.x, "p_5135->g_4999.x", print_hash_value);
    transparent_crc(p_5135->g_4999.y, "p_5135->g_4999.y", print_hash_value);
    transparent_crc(p_5135->g_4999.z, "p_5135->g_4999.z", print_hash_value);
    transparent_crc(p_5135->g_4999.w, "p_5135->g_4999.w", print_hash_value);
    transparent_crc(p_5135->g_5006.x, "p_5135->g_5006.x", print_hash_value);
    transparent_crc(p_5135->g_5020.x, "p_5135->g_5020.x", print_hash_value);
    transparent_crc(p_5135->g_5020.y, "p_5135->g_5020.y", print_hash_value);
    transparent_crc(p_5135->g_5020.z, "p_5135->g_5020.z", print_hash_value);
    transparent_crc(p_5135->g_5029.x, "p_5135->g_5029.x", print_hash_value);
    transparent_crc(p_5135->g_5037.x, "p_5135->g_5037.x", print_hash_value);
    transparent_crc(p_5135->g_5037.y, "p_5135->g_5037.y", print_hash_value);
    transparent_crc(p_5135->g_5068.x, "p_5135->g_5068.x", print_hash_value);
    transparent_crc(p_5135->g_5068.y, "p_5135->g_5068.y", print_hash_value);
    transparent_crc(p_5135->g_5068.z, "p_5135->g_5068.z", print_hash_value);
    transparent_crc(p_5135->g_5077.x, "p_5135->g_5077.x", print_hash_value);
    transparent_crc(p_5135->g_5085.x, "p_5135->g_5085.x", print_hash_value);
    transparent_crc(p_5135->g_5085.y, "p_5135->g_5085.y", print_hash_value);
    transparent_crc(p_5135->g_5090.x, "p_5135->g_5090.x", print_hash_value);
    transparent_crc(p_5135->g_5090.y, "p_5135->g_5090.y", print_hash_value);
    transparent_crc(p_5135->g_5090.z, "p_5135->g_5090.z", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

