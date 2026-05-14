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
// Seed: 4223352376

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
   int32_t  f1;
   uint32_t  f2;
};

union U1 {
   int64_t  f0;
   uint32_t  f1;
   uint64_t  f2;
   int32_t  f3;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint16_t hip_const_1;
__constant__ uint32_t hip_const_2;
__constant__ int32_t hip_const_3;
__constant__ int32_t hip_const_4;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint16_t host_hip_const_1 = 0x167FL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint32_t host_hip_const_2 = 0x62E08974L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        int32_t host_hip_const_3 = 1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int32_t host_hip_const_4 = 0x367F5ED9L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
}

struct S2 {
    union U1 g_6;
    ushort2 g_16;
    int16_t g_22;
    int32_t **g_48[1][9];
    int32_t *g_64[9];
    int32_t **g_63[1];
    uint3 g_80;
    ulong1 g_88;
    uint32_t g_103[2][8];
    uint32_t *g_102;
    int64_t g_106;
    uint64_t g_108;
    long1 g_112;
    uint8_t g_132;
    uint8_t g_134;
    struct S0 g_140;
    int32_t g_142[5];
    int2 g_196;
    long1 g_278;
    uchar2 g_311;
    uint64_t *g_329;
    uint32_t g_338;
    uchar3 g_343;
    uchar4 g_345;
    ushort1 g_353;
    int64_t **g_378;
    struct S0 g_396[4][7][9];
    char4 g_415;
    char4 g_423;
    short2 g_431;
    uint8_t *g_435;
    uint8_t **g_434;
    uint8_t ***g_433;
    int32_t *g_437;
    int4 g_460;
    uint16_t g_490;
    int4 g_500;
    uint64_t g_521;
    uint1 g_524;
    ushort2 g_546;
    ulong1 g_552;
    ulong4 g_556;
    char1 g_618;
    ushort3 g_645;
    int32_t g_667;
    ulong1 g_716;
    uint4 g_730;
    int32_t ***g_775;
    int32_t ****g_774[5][9][5];
    int64_t g_806;
    int32_t g_807;
    int2 g_857;
    long3 g_862;
    long1 g_911;
    long1 g_913;
    int32_t g_917;
    int64_t ***g_930;
    int64_t ****g_929[10][5];
    int64_t ****g_959;
    int64_t *****g_958;
    uint32_t *g_963;
    uint32_t **g_962;
    ulong1 g_977;
    uint8_t *g_992;
    long4 g_995;
    long2 g_1017;
    char2 g_1038;
    long1 g_1066;
    union U1 *g_1095;
    union U1 **g_1094;
    long3 g_1137;
    long3 g_1138;
    uchar2 g_1141;
    short3 g_1181;
    char4 g_1187;
    char2 g_1191;
    uchar4 g_1213;
    int8_t g_1239;
    uint3 g_1250;
    uchar2 g_1265;
    ulong1 g_1269;
    uchar2 g_1282;
    int4 g_1288;
    int4 g_1289;
    ushort2 g_1308;
    ushort3 g_1309;
    int2 g_1321;
    short1 g_1356;
    uchar2 g_1368;
    uchar3 g_1369;
    int3 g_1403;
    int4 g_1412;
    uint1 g_1446;
    int16_t g_1471[7][6][5];
    int16_t *g_1526;
    int16_t **g_1525;
    int16_t ***g_1524;
    int16_t ***g_1529;
    int64_t *g_1561;
    ulong4 g_1576;
    ulong3 g_1579;
    int2 g_1586;
    uint32_t **g_1626;
    uint32_t ***g_1625;
    uint8_t **g_1717;
    uint3 g_1720;
    uint16_t *g_1734[10];
    uint16_t **g_1733;
    uint2 g_1745;
    struct S0 *g_1759;
    struct S0 **g_1758;
    int1 g_1767;
    uint64_t g_1806;
    ulong1 g_1823;
    uint32_t g_1830;
    char1 g_1843;
    char4 g_1848;
    int32_t g_1903;
    int64_t g_1905;
    short1 g_1914;
    ulong3 g_1928;
    uint32_t ****g_1939;
    uint32_t *****g_1938;
    uint32_t *****g_1941;
    int32_t *g_1946;
    short4 g_2006;
    ushort1 g_2017;
    uchar1 g_2031;
    int16_t g_2047;
    ushort1 g_2098;
    uchar3 g_2130;
    long2 g_2142;
    long2 g_2146;
    short4 g_2173;
    uint16_t g_2176;
    int8_t g_2244[1][3];
    uint16_t g_2249;
    int3 g_2271;
    long3 g_2297;
    long4 g_2298;
    uint1 g_2312;
    int32_t **g_2318;
    int8_t **g_2404;
    int64_t g_2416;
    uchar2 g_2495;
    long4 g_2505;
    int3 g_2509;
    ulong3 g_2520;
    int64_t g_2531;
    uint4 g_2752;
    short4 g_2776;
    int3 g_2830;
    int64_t *g_2832;
    char3 g_2892;
    int8_t ***g_2917;
    char4 g_2943;
    int2 g_2960;
    long4 g_2976;
    ulong1 g_2988;
    ulong1 g_2991;
    uint3 g_2997;
    short2 g_3012;
    struct S0 g_3017;
    union U1 ***g_3036;
    union U1 ****g_3035;
    uchar1 g_3041;
    uint2 g_3067;
    short4 g_3078;
    short1 g_3082;
    short4 g_3104;
    uchar2 g_3122;
    uint3 g_3138;
    char4 g_3156;
    char4 g_3157;
    char1 g_3171;
    char2 g_3178;
    char4 g_3181;
    int1 g_3249;
    int16_t ****g_3270;
    int16_t *****g_3269;
    uchar3 g_3284;
    uchar2 g_3305;
    ushort4 g_3323;
    uint8_t g_3345;
    uchar3 g_3377;
    int16_t g_3378;
    uint16_t g_3382;
    int16_t g_3403;
    union U1 g_3550;
    int64_t g_3571[4];
    int8_t g_3573;
    ushort4 g_3585;
    uchar4 g_3625;
    ushort1 g_3662;
    ushort3 g_3665;
    int32_t *****g_3673[3];
    struct S0 ***g_3675;
    struct S0 ****g_3674;
    int1 g_3679;
    int4 g_3680;
    int3 g_3681;
    int32_t **g_3685;
    ushort3 g_3761;
    int32_t ***g_3791;
    short3 g_3805;
    int1 g_3810;
    uint8_t g_3877;
    long3 g_3941;
    long3 g_3942;
    long1 g_3943;
    uint2 g_3973;
    int1 g_3974;
    int1 g_4008;
    uint64_t g_4099;
    int64_t g_4107;
    uint32_t g_4111;
};


/* --- FORWARD DECLARATIONS --- */
__device__ int32_t  func_1(struct S2 * p_4112);
__device__ uint16_t  func_2(union U1  p_3, int8_t  p_4, uint32_t  p_5, struct S2 * p_4112);
__device__ int32_t  func_8(int8_t  p_9, int32_t  p_10, uint16_t  p_11, struct S2 * p_4112);
__device__ struct S0  func_14(uint32_t  p_15, struct S2 * p_4112);
__device__ uint8_t  func_28(int32_t ** p_29, struct S2 * p_4112);
__device__ union U1  func_31(struct S0  p_32, struct S0  p_33, uint8_t  p_34, int32_t * p_35, struct S2 * p_4112);
__device__ struct S0  func_36(int8_t  p_37, union U1  p_38, int32_t ** p_39, int32_t ** p_40, int32_t ** p_41, struct S2 * p_4112);
__device__ int32_t ** func_43(uint16_t  p_44, union U1  p_45, struct S2 * p_4112);
__device__ int32_t * func_53(int32_t ** p_54, int32_t ** p_55, struct S2 * p_4112);
__device__ int32_t ** func_56(int32_t ** p_57, int32_t ** p_58, uint8_t  p_59, struct S2 * p_4112);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_4112->g_6 hip_const_1 p_4112->g_6.f0 hip_const_2 p_4112->g_6.f2 p_4112->g_16 p_4112->g_22 p_4112->g_1759 p_4112->g_396 hip_const_4 p_4112->g_1561 p_4112->g_806 p_4112->g_329 p_4112->g_108 p_4112->g_3171 p_4112->g_433 p_4112->g_434 p_4112->g_3178 p_4112->g_3181 p_4112->g_490 p_4112->g_1758 p_4112->g_102 p_4112->g_103 p_4112->g_1938 p_4112->g_1939 p_4112->g_1625 p_4112->g_1626 p_4112->g_1946 p_4112->g_1903 p_4112->g_1095 p_4112->g_775 p_4112->g_435 p_4112->g_132 p_4112->g_1289 p_4112->g_1529 p_4112->g_1525 p_4112->g_1526 p_4112->g_1471 p_4112->g_2176 p_4112->g_1717 p_4112->g_992 p_4112->g_134 p_4112->g_3036 p_4112->g_1094 p_4112->g_3345 p_4112->g_3377 p_4112->g_3378 p_4112->g_3382 p_4112->g_3403 p_4112->g_3035 p_4112->g_667 p_4112->g_2531 p_4112->g_917 p_4112->g_2318 p_4112->g_3674 p_4112->g_3675 p_4112->g_140.f0 p_4112->g_3550.f0 p_4112->g_3941 p_4112->g_3942 p_4112->g_3943 p_4112->g_3877 p_4112->g_3973 p_4112->g_3974 p_4112->g_4008 p_4112->g_1191 p_4112->g_4099 p_4112->g_4107 p_4112->g_142 p_4112->g_1806 p_4112->g_4111
 * writes: p_4112->g_6.f3 p_4112->g_6.f2 p_4112->g_22 p_4112->g_806 p_4112->g_108 p_4112->g_490 p_4112->g_103 p_4112->g_1903 p_4112->g_6 p_4112->g_48 p_4112->g_1759 p_4112->g_396 p_4112->g_2176 p_4112->g_3017.f0 p_4112->g_807 p_4112->g_338 p_4112->g_132 p_4112->g_3017.f2 p_4112->g_1095 p_4112->g_3345 p_4112->g_134 p_4112->g_2249 p_4112->g_1471 p_4112->g_3382 p_4112->g_2531 p_4112->g_667 p_4112->g_1830 p_4112->g_2047 p_4112->g_917 p_4112->g_64 p_4112->g_1946 p_4112->g_3035 p_4112->g_1758 p_4112->g_140.f0 p_4112->g_3550.f0 p_4112->g_102 p_4112->g_1094 p_4112->g_437 p_4112->g_3877 p_4112->g_142 p_4112->g_4107 p_4112->g_1806
 */
__device__ int32_t  func_1(struct S2 * p_4112)
{ /* block id: 0 */
    int16_t l_7[9] = {(-6L), 0L, (-6L), 0L, (-6L), 0L, (-6L), 0L, (-6L)};
    struct S0 **l_3897[3];
    struct S0 ***l_3898 = &l_3897[1];
    struct S0 l_3899 = {3L,7L,0x92FA4121L};
    int32_t l_3900 = 0x5F0E641FL;
    uint16_t ***l_3908[8] = {&p_4112->g_1733, &p_4112->g_1733, nullptr, &p_4112->g_1733, &p_4112->g_1733, nullptr, &p_4112->g_1733, &p_4112->g_1733};
    int16_t l_3916 = (-1L);
    uint64_t l_3950 = 18446744073709551612UL;
    uint8_t *l_3970 = nullptr;
    int64_t l_3978 = 0x9EB8538F5785B4D1LL;
    int32_t l_3997 = 0x4E280691L;
    int3 l_4098 = make_int3((-2L), 0x6659BC57L, (-2L));
    int32_t l_4101 = 0xE17257AAL;
    int32_t l_4103 = 5L;
    int i;
    for (int i = 0; i < 3; i++)
        l_3897[i] = &p_4112->g_1759;
    if (make_int2(((func_2(p_4112->g_6, hip_const_1, ((p_4112->g_6.f0 < 0L) , l_7[7]), p_4112) , ((((*l_3898) = ((**p_4112->g_3674) = l_3897[2])) != nullptr) < (((*p_4112->g_1759) = l_3899) , l_3900))) == l_7[1]), l_3900).x)
    { /* block id: 1658 */
        uint64_t l_3917 = 18446744073709551615UL;
        int32_t l_3923 = 0x06AAE125L;
        uint64_t l_3924 = 18446744073709551610UL;
        union U1 **l_3929 = &p_4112->g_1095;
        int32_t *l_3946 = nullptr;
        int32_t l_3992 = 6L;
        int32_t l_3993 = (-1L);
        int32_t l_3995 = 0x8D84FCE9L;
        uint32_t l_4001 = 8UL;
        uint32_t ***l_4026 = nullptr;
        uint64_t l_4030 = 0x00EF4CBDED8063BELL;
        int32_t l_4072 = 0L;
        ushort1 l_4094 = make_ushort1(0x7AE3L);
        int i;
        for (p_4112->g_140.f0 = 11; (p_4112->g_140.f0 > 15); p_4112->g_140.f0 = safe_add_func_int32_t_s_s(p_4112->g_140.f0, 4))
        { /* block id: 1661 */
            int32_t l_3915 = 0L;
            int32_t l_3922 = 0x6FE6EBA9L;
            uint16_t *l_3938 = nullptr;
            uint32_t l_3958 = 0x6F635793L;
            int32_t **l_3961 = &l_3946;
            int32_t l_3998[9] = {0x8802B52BL, 0x84A8E7E0L, 0x8802B52BL, 0x84A8E7E0L, 0x8802B52BL, 0x84A8E7E0L, 0x8802B52BL, 0x84A8E7E0L, 0x8802B52BL};
            int i;
            for (p_4112->g_3550.f0 = 0; (p_4112->g_3550.f0 != (-16)); p_4112->g_3550.f0 = safe_sub_func_int16_t_s_s(p_4112->g_3550.f0, 4))
            { /* block id: 1664 */
                uint32_t *l_3907 = nullptr;
                uint16_t ****l_3909[3];
                int32_t l_3914 = 0xC069759BL;
                ushort2 l_3949 = make_ushort2(0x4E20L, 65535UL);
                ulong4 l_3966 = make_ulong4(0x09CDEA4940AB7C40LL, 18446744073709551615UL, 0x09CDEA4940AB7C40LL, 18446744073709551615UL);
                int2 l_3994 = make_int2(8L, 0xD4670622L);
                int i;
                for (int i = 0; i < 3; i++)
                    l_3909[i] = &l_3908[2];
                if ((l_3917 = (((0xEF073A72L < (0x3B3CFA6896726382LL ^ 0xE7B001756ACD5041LL)) <= (((***p_4112->g_1529) & make_ushort1((safe_lshift_func_uint16_t_u_u(((l_3916 = (((*p_4112->g_1561) = (l_3907 != ((**p_4112->g_1625) = (*p_4112->g_1626)))) & ((((((l_3908[4] = l_3908[4]) != &p_4112->g_1733) == (safe_lshift_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(l_3900, l_3914)), 29))) >= 0x03L) ^ l_3915) && l_3914))) && (*p_4112->g_329)), 13))).x) , 0xE1L)) == l_3900)))
                { /* block id: 1670 */
                    int32_t *l_3918 = nullptr;
                    int32_t *l_3919 = nullptr;
                    int32_t *l_3920 = &p_4112->g_142[3];
                    int32_t *l_3921[8][9] = {{&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}, {&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}, {&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}, {&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}, {&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}, {&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}, {&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}, {&p_4112->g_917, nullptr, &p_4112->g_667, &p_4112->g_667, &p_4112->g_142[2], &p_4112->g_142[0], nullptr, nullptr, &p_4112->g_667}};
                    int i, j;
                    l_3924--;
                }
                else
                { /* block id: 1672 */
                    union U1 **l_3928 = &p_4112->g_1095;
                    union U1 ***l_3927[10] = {&l_3928, &l_3928, &l_3928, &l_3928, &l_3928, &l_3928, &l_3928, &l_3928, &l_3928, &l_3928};
                    int32_t *l_3944 = nullptr;
                    int32_t **l_3945 = &p_4112->g_437;
                    int64_t *****l_3977 = &p_4112->g_929[7][2];
                    int32_t l_3996 = 0xFE6172FDL;
                    int32_t l_3999 = (-1L);
                    int32_t l_4000 = 5L;
                    int i;
                    l_3946 = ((((l_3929 = ((*p_4112->g_3036) = nullptr)) != nullptr) , (safe_add_func_int32_t_s_s((safe_rshift_func_uint64_t_u_s((~(safe_add_func_uint16_t_u_u(make_ushort3(0xD4C9L, 1UL, (((+(++(*p_4112->g_435))) < l_3914) | 0x92L)).z, (l_3938 != nullptr)))), 54)), (safe_add_func_uint64_t_u_u(0xCD5AC2F60C432E4ELL, ((make_long1(p_4112->g_3941.x) ^ ((make_long1(p_4112->g_3942.y) ^ make_long1(p_4112->g_3943.x))))).x))))) , ((*l_3945) = l_3944));
                    if ((((safe_mod(make_ushort1(l_3949.y), make_ushort1(0x5908L)))).x && l_3922))
                    { /* block id: 1678 */
                        uint64_t l_3953[9][1] = {{18446744073709551615UL}, {18446744073709551615UL}, {18446744073709551615UL}, {18446744073709551615UL}, {18446744073709551615UL}, {18446744073709551615UL}, {18446744073709551615UL}, {18446744073709551615UL}, {18446744073709551615UL}};
                        uint32_t *l_3954 = &p_4112->g_6.f1;
                        int i, j;
                        if (l_3950)
                            break;
                        (***l_3898) = func_14(((*l_3954) = (+(safe_add_func_uint64_t_u_u(0xEB3390232844CD2DLL, l_3953[0][0])))), p_4112);
                        if (l_3914)
                            break;
                    }
                    else
                    { /* block id: 1683 */
                        int32_t *l_3955 = &l_3923;
                        int32_t *l_3956 = &hip_const_4;
                        int32_t *l_3957[3];
                        int i;
                        for (int i = 0; i < 3; i++)
                            l_3957[i] = nullptr;
                        l_3958++;
                        (*l_3961) = func_53(l_3961, (l_3945 = &l_3955), p_4112);
                    }
                    for (p_4112->g_3877 = (-27); (p_4112->g_3877 >= 34); ++p_4112->g_3877)
                    { /* block id: 1690 */
                        uint64_t l_3969 = 5UL;
                        int32_t *l_3979 = &p_4112->g_142[0];
                        int32_t *l_3980 = nullptr;
                        int32_t *l_3981 = &hip_const_4;
                        int32_t *l_3982 = &p_4112->g_1903;
                        int32_t *l_3983 = &l_3922;
                        int32_t *l_3984 = &p_4112->g_1903;
                        int32_t *l_3985 = nullptr;
                        int32_t *l_3986 = nullptr;
                        int32_t *l_3987 = &p_4112->g_6.f3;
                        int32_t *l_3988 = &l_3914;
                        int32_t *l_3989 = nullptr;
                        int32_t *l_3990 = nullptr;
                        int32_t *l_3991[10][10] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, &p_4112->g_1903, nullptr, &p_4112->g_1903}};
                        int i, j;
                        (*l_3979) = (safe_add_func_uint64_t_u_u(make_ulong4(l_3966.w, l_3966.w, l_3966.w, l_3966.w).w, (((make_long3((*p_4112->g_1561), 1L, 2L).x > (*p_4112->g_1561)) > ((safe_sub_func_uint8_t_u_u(l_3899.f2, l_3969)) & l_3966.w)) ^ (l_3970 == (((*p_4112->g_1946) = ((make_int3((((safe_mul_func_uint32_t_u_u(make_uint3(p_4112->g_3973.x, p_4112->g_3973.x, p_4112->g_3973.x).x, make_int1(p_4112->g_3974.x).x)) || ((safe_rshift_func_uint32_t_u_u(make_uint4((*p_4112->g_102), ((nullptr == l_3977) < l_3899.f1), 0x87702C39L, 0x50F7B868L).z, 2)) > l_3969)) , (-2L)), l_3978, 1L) & make_int3(0x5A488950L, 0x5A488950L, 0x5A488950L))).y) , (*p_4112->g_434))))));
                        if (l_3899.f2)
                            continue;
                        --l_4001;
                    }
                    return l_3966.y;
                }
                for (p_4112->g_1903 = 0; (p_4112->g_1903 == (-19)); p_4112->g_1903 = safe_sub_func_uint8_t_u_u(p_4112->g_1903, 1))
                { /* block id: 1700 */
                    int16_t l_4009 = (-10L);
                    l_3900 ^= l_3914;
                    if (l_3899.f1)
                        continue;
                    for (l_3900 = (-21); (l_3900 <= (-13)); l_3900++)
                    { /* block id: 1705 */
                        l_4009 = make_int4(p_4112->g_4008.x, p_4112->g_4008.x, p_4112->g_4008.x, p_4112->g_4008.x).x;
                    }
                    if (l_3899.f2)
                        break;
                }
            }
            return l_7[7];
        }
        for (l_3978 = 0; (l_3978 < 8); l_3978 = safe_add_func_uint64_t_u_u(l_3978, 5))
        { /* block id: 1715 */
            uint16_t l_4016 = 0xDEECL;
            struct S0 l_4027 = {0x93L,4L,0x9C653C5AL};
            int32_t *l_4036 = &p_4112->g_142[1];
            int64_t *****l_4046[2];
            int32_t l_4071 = (-4L);
            int32_t l_4102 = 0xECBD3E36L;
            int i;
            for (int i = 0; i < 2; i++)
                l_4046[i] = &p_4112->g_959;
            for (l_3900 = 0; (l_3900 >= 0); l_3900 -= 1)
            { /* block id: 1718 */
                struct S0 *****l_4025 = &p_4112->g_3674;
                int64_t *****l_4047[2];
                union U1 *l_4049 = &p_4112->g_3550;
                int64_t ***l_4052 = &p_4112->g_378;
                uint32_t l_4053 = 1UL;
                int32_t l_4068 = 0x28CB4CD1L;
                int32_t l_4070 = (-1L);
                uint16_t **l_4079 = nullptr;
                ushort4 l_4095 = make_ushort4(6UL, 9UL, 6UL, 9UL);
                int i, j;
                for (int i = 0; i < 2; i++)
                    l_4047[i] = &p_4112->g_929[4][0];
                (*p_4112->g_1946) = ((safe_div_func_uint16_t_u_u((&l_3970 == &l_3970), (18446744073709551609UL | (nullptr != (*p_4112->g_3675))))) >= (((((safe_add_func_int32_t_s_s(l_4016, l_3997)) , (safe_div_func_uint16_t_u_u(0x1D36L, (safe_mul_func_int8_t_s_s((safe_mul_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((make_uint4(0UL, 0x76DE14C2L, ((*p_4112->g_1526) ^ (***p_4112->g_1529)), 4294967295UL).x , nullptr) != l_4025), (**p_4112->g_434))), (*p_4112->g_329))), l_3950))))) , nullptr) != l_4026) != p_4112->g_1191.x));
                for (p_4112->g_3877 = 0; (p_4112->g_3877 <= 0); p_4112->g_3877 += 1)
                { /* block id: 1722 */
                    int64_t *****l_4048 = nullptr;
                    int32_t *l_4054 = &p_4112->g_917;
                    int32_t *l_4055 = nullptr;
                    int32_t *l_4056 = nullptr;
                    int32_t *l_4057 = nullptr;
                    int32_t *l_4058 = &p_4112->g_917;
                    int32_t *l_4059 = nullptr;
                    int32_t *l_4060 = nullptr;
                    int32_t *l_4061 = nullptr;
                    int32_t *l_4062 = &hip_const_4;
                    int32_t *l_4063 = &p_4112->g_3550.f3;
                    int32_t *l_4064 = &l_3923;
                    int32_t *l_4065 = nullptr;
                    int32_t *l_4066 = &l_3997;
                    int32_t *l_4067[3];
                    int64_t l_4069 = 0x74073E104DAE2AD4LL;
                    int8_t l_4073 = (-1L);
                    uint64_t l_4074 = 4UL;
                    int i, j, k;
                    for (int i = 0; i < 3; i++)
                        l_4067[i] = nullptr;
                    if ((l_4027 , ((safe_lshift_func_uint8_t_u_s(p_4112->g_1471[(l_3900 + 6)][l_3900][(p_4112->g_3877 + 1)], 3)) & 0xBFB466258AE317C8LL)))
                    { /* block id: 1723 */
                        int i, j, k;
                        ++l_4030;
                        (*p_4112->g_1946) = (safe_rshift_func_int8_t_s_s(p_4112->g_1471[(p_4112->g_3877 + 5)][p_4112->g_3877][(p_4112->g_3877 + 4)], 2));
                    }
                    else
                    { /* block id: 1726 */
                        int16_t l_4035 = 0L;
                        int32_t *l_4037 = &l_3995;
                        if (l_4035)
                            break;
                        (**p_4112->g_1758) = (***p_4112->g_3675);
                        l_4037 = l_4036;
                    }
                    if (l_7[7])
                        break;
                    (*p_4112->g_1946) &= (safe_mul_func_int32_t_s_s(((safe_lshift(((safe_lshift(make_int3(1L, make_int2(((*l_4036) = (0L & ((l_4047[1] = l_4046[0]) != (l_4048 = &p_4112->g_929[4][0])))), (nullptr == l_4049)).x, 9L), make_int3(32, 32, 32)))), ((safe_rshift(((make_int3(8L, (((nullptr != l_4052) <= l_3997) >= ((l_4053 , (-1L)) <= (**p_4112->g_1525))), 1L) ^ make_int3((-1L), (-1L), (-1L)))), make_int3(32, 32, 32))))))).z, p_4112->g_1471[(l_3900 + 6)][l_3900][(p_4112->g_3877 + 1)]));
                    --l_4074;
                }
                if ((safe_rshift_func_uint32_t_u_s(((l_7[5] | (l_4079 == nullptr)) | (l_3997 = (safe_lshift_func_int16_t_s_u(((*p_4112->g_1526) = (safe_rshift_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mul_func_int32_t_s_s((safe_add_func_uint16_t_u_u(((*l_4036) = ((safe_sub_func_uint32_t_u_u((&p_4112->g_1094 != nullptr), 0x5AD1F86BL)) && (0x4CEAL && ((((safe_div(make_ushort4(l_4094.x, l_4094.x, l_4094.x, l_4094.x), make_ushort4(l_4095.x, l_4095.x, l_4095.x, l_4095.x)))) & make_ushort4((+(((+(safe_div_func_int16_t_s_s((*p_4112->g_1526), (*p_4112->g_1526)))) != (*p_4112->g_329)) >= (-1L))), l_3993, 65535UL, 65527UL))).y))), l_3997)), l_3899.f1)) | 8L), l_4098.x)), (**p_4112->g_1626)))), p_4112->g_4099)))), l_4095.z)))
                { /* block id: 1741 */
                    int32_t *l_4100[9] = {&l_3993, &l_3992, &l_3993, &l_3992, &l_3993, &l_3992, &l_3993, &l_3992, &l_3993};
                    uint8_t l_4104 = 0xB5L;
                    int i;
                    (*p_4112->g_1946) |= ((*l_4036) = 0xF7138E33L);
                    ++l_4104;
                    p_4112->g_4107 ^= (-7L);
                    return (*l_4036);
                }
                else
                { /* block id: 1747 */
                    for (p_4112->g_1806 = 24; (p_4112->g_1806 >= 35); p_4112->g_1806 = safe_add_func_int64_t_s_s(p_4112->g_1806, 4))
                    { /* block id: 1750 */
                        if (l_4103)
                            break;
                    }
                    (*p_4112->g_1946) &= (*l_4036);
                    for (p_4112->g_667 = 0; (p_4112->g_667 <= 1); p_4112->g_667 += 1)
                    { /* block id: 1756 */
                        int64_t l_4110 = (-1L);
                        return l_4110;
                    }
                }
            }
        }
        return p_4112->g_4111;
    }
    else
    { /* block id: 1763 */
        return (*p_4112->g_1946);
    }
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_2 hip_const_1 p_4112->g_6.f2 p_4112->g_16 p_4112->g_22 p_4112->g_1759 p_4112->g_396 hip_const_4 p_4112->g_1561 p_4112->g_806 p_4112->g_329 p_4112->g_108 p_4112->g_3171 p_4112->g_433 p_4112->g_434 p_4112->g_3178 p_4112->g_3181 p_4112->g_490 p_4112->g_1758 p_4112->g_102 p_4112->g_103 p_4112->g_1938 p_4112->g_1939 p_4112->g_1625 p_4112->g_1626 p_4112->g_1946 p_4112->g_1903 p_4112->g_1095 p_4112->g_6 p_4112->g_775 p_4112->g_435 p_4112->g_132 p_4112->g_1289 p_4112->g_1529 p_4112->g_1525 p_4112->g_1526 p_4112->g_1471 p_4112->g_6.f0 p_4112->g_2176 p_4112->g_1717 p_4112->g_992 p_4112->g_134 p_4112->g_3036 p_4112->g_1094 p_4112->g_3345 p_4112->g_3377 p_4112->g_3378 p_4112->g_3382 p_4112->g_3403 p_4112->g_3035 p_4112->g_917 p_4112->g_2318 p_4112->g_667 p_4112->g_2531
 * writes: p_4112->g_6.f3 p_4112->g_6.f2 p_4112->g_22 p_4112->g_806 p_4112->g_108 p_4112->g_490 p_4112->g_103 p_4112->g_1903 p_4112->g_6 p_4112->g_48 p_4112->g_1759 p_4112->g_396 p_4112->g_2176 p_4112->g_3017.f0 p_4112->g_807 p_4112->g_338 p_4112->g_132 p_4112->g_3017.f2 p_4112->g_1095 p_4112->g_3345 p_4112->g_134 p_4112->g_2249 p_4112->g_1471 p_4112->g_3382 p_4112->g_2531 p_4112->g_667 p_4112->g_1830 p_4112->g_2047 p_4112->g_917 p_4112->g_64 p_4112->g_1946 p_4112->g_3035
 */
__device__ uint16_t  func_2(union U1  p_3, int8_t  p_4, uint32_t  p_5, struct S2 * p_4112)
{ /* block id: 1 */
    int32_t l_12 = 0xC3DC99CDL;
    int16_t **l_3426 = &p_4112->g_1526;
    int32_t l_3428 = 0x62B40B8CL;
    uint32_t l_3457[1][3];
    union U1 *l_3462 = nullptr;
    int32_t l_3477 = 0x8FF6EEE8L;
    int32_t l_3482 = 3L;
    int32_t l_3483[6][1] = {{4L}, {4L}, {4L}, {4L}, {4L}, {4L}};
    uint32_t l_3513 = 4294967295UL;
    uint32_t l_3533 = 18446744073709551615UL;
    int32_t *l_3555 = nullptr;
    int64_t l_3572 = 0L;
    uint8_t l_3574 = 255UL;
    uint4 l_3588 = make_uint4(0x50AFDA2FL, 4294967295UL, 0x50AFDA2FL, 4294967295UL);
    uint16_t ***l_3683 = nullptr;
    uint16_t ****l_3682[6][5] = {{nullptr, nullptr, &l_3683, nullptr, nullptr}, {nullptr, nullptr, &l_3683, nullptr, nullptr}, {nullptr, nullptr, &l_3683, nullptr, nullptr}, {nullptr, nullptr, &l_3683, nullptr, nullptr}, {nullptr, nullptr, &l_3683, nullptr, nullptr}, {nullptr, nullptr, &l_3683, nullptr, nullptr}};
    ulong2 l_3696 = make_ulong2(0x86028B1F526E0E5ALL, 0x9CCB45F24A8DEC3ELL);
    int32_t **l_3724 = &l_3555;
    int64_t *****l_3728 = &p_4112->g_929[4][0];
    int32_t l_3745[9] = {1L, 0xF56782A2L, 1L, 0xF56782A2L, 1L, 0xF56782A2L, 1L, 0xF56782A2L, 1L};
    uint32_t l_3765 = 0x3ABC2F54L;
    int2 l_3786 = make_int2(5L, (-6L));
    int32_t ***l_3788 = nullptr;
    int32_t l_3842 = 0x743AB86FL;
    int64_t l_3853 = 1L;
    int i, j;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 3; j++)
            l_3457[i][j] = 0xDC83CE19L;
    }
    (*p_4112->g_1946) = func_8(hip_const_2, hip_const_1, l_12, p_4112);
lbl_3714:
    (***p_4112->g_3035) = &p_3;
    for (p_4112->g_667 = (-7); (p_4112->g_667 <= 23); p_4112->g_667 = safe_add_func_uint8_t_u_u(p_4112->g_667, 1))
    { /* block id: 1418 */
        int8_t l_3416 = (-6L);
        uint8_t ****l_3423 = nullptr;
        int8_t *l_3440 = &p_4112->g_2244[0][1];
        int8_t **l_3439 = &l_3440;
        int32_t ***l_3444 = &p_4112->g_63[0];
        struct S0 ***l_3447 = &p_4112->g_1758;
        int32_t **l_3452 = &p_4112->g_437;
        int32_t l_3476 = 0x4B08A41FL;
        int32_t l_3481[5];
        ushort4 l_3520 = make_ushort4(65527UL, 0xF6E8L, 65527UL, 0xF6E8L);
        ushort4 l_3521 = make_ushort4(0x34E7L, 65535UL, 0x34E7L, 65535UL);
        uint32_t l_3551 = 8UL;
        int i;
        for (int i = 0; i < 5; i++)
            l_3481[i] = 0xA90D4DF6L;
    }
    if (p_4)
    { /* block id: 1507 */
        uint16_t l_3578 = 0x4CC6L;
        int32_t l_3595 = 2L;
        short1 l_3607 = make_short1(7L);
        struct S0 l_3677[5] = {{8L,0x361AE830L,18446744073709551615UL}, {0x51L,1L,1UL}, {8L,0x361AE830L,18446744073709551615UL}, {0x51L,1L,1UL}, {8L,0x361AE830L,18446744073709551615UL}};
        int32_t **l_3721 = &p_4112->g_1946;
        union U1 l_3723 = {-1L};
        int i;
lbl_3715:
        l_3578--;
        for (p_4112->g_2531 = 0; (p_4112->g_2531 != (-23)); --p_4112->g_2531)
        { /* block id: 1511 */
            union U1 **l_3589 = &l_3462;
            uint32_t ***l_3614 = &p_4112->g_962;
            int32_t l_3626 = 2L;
            int32_t l_3631 = 0x0EF702F2L;
            struct S0 *l_3645[1];
            int32_t *****l_3672 = &p_4112->g_774[3][8][3];
            uint16_t ****l_3686 = &l_3683;
            ulong3 l_3693 = make_ulong3(0x526E6F4B2CBB07DCLL, 18446744073709551608UL, 0x526E6F4B2CBB07DCLL);
            int3 l_3697 = make_int3(0L, (-10L), 0L);
            int2 l_3712 = make_int2(8L, 0x9A528D81L);
            int i;
            for (int i = 0; i < 1; i++)
                l_3645[i] = &p_4112->g_3017;
            for (p_4112->g_1830 = (-8); (p_4112->g_1830 != 27); p_4112->g_1830 = safe_add_func_uint16_t_u_u(p_4112->g_1830, 5))
            { /* block id: 1514 */
                uint16_t *l_3594 = nullptr;
                uint16_t *l_3596 = &p_4112->g_3382;
                int16_t *l_3597 = nullptr;
                int16_t *l_3598 = nullptr;
                int16_t *l_3599 = &p_4112->g_22;
                int32_t l_3600 = 0x3D7CD2FFL;
                char4 l_3638 = make_char4(0xAAL, 0x19L, 0xAAL, 0x19L);
                union U1 l_3661[8] = {{0x29F9DC92A9CC40BDLL}, {-1L}, {0x29F9DC92A9CC40BDLL}, {-1L}, {0x29F9DC92A9CC40BDLL}, {-1L}, {0x29F9DC92A9CC40BDLL}, {-1L}};
                int i;
            }
            if ((safe_sub_func_uint16_t_u_u(p_3.f0, 0x9151L)))
            { /* block id: 1546 */
                uint1 l_3698 = make_uint1(0xF00B50D3L);
                struct S0 l_3711 = {-5L,0L,0xF6B2221CL};
                int32_t l_3713 = 0x3CEBF54FL;
                uint64_t **l_3717 = nullptr;
                int i;
                for (p_4112->g_2047 = 0; (p_4112->g_2047 == (-25)); p_4112->g_2047 = safe_sub_func_int32_t_s_s(p_4112->g_2047, 8))
                { /* block id: 1549 */
                    uint16_t l_3705 = 0xC1F9L;
                    (**p_4112->g_1758) = func_14(p_3.f0, p_4112);
                    if ((((((make_int2((safe_add_func_uint64_t_u_u(make_ulong3(l_3693.x, l_3693.x, l_3693.x).y, (((((safe_add(make_ulong1(l_3696.y), ((make_ulong1(make_ulong3((p_3.f0 != p_3.f0), (((make_int2(l_3697.x, l_3697.x).y , (make_uint3(l_3698.x, l_3698.x, l_3698.x).z , (-8L))) != 0xFF54L) | (safe_add_func_int8_t_s_s((safe_add_func_uint8_t_u_u((p_5 <= (0xDC1BL | (safe_lshift_func_uint64_t_u_u((~((l_3705 < ((safe_add_func_uint32_t_u_u(((-7L) != (~p_3.f0)), 0xCCA43879L)) ^ l_3607.x)) <= 1UL)), (*p_4112->g_329))))), p_5)), l_3677[3].f1))), 0xD14477C670D08E99LL).y) ^ make_ulong1(0xFCA100BDE55F1E79LL)))))).x | p_3.f0) , p_5) > l_3698.x))), p_3.f0) ^ make_int2(0L, 0L))) ^ make_int2(4L, 4L))).y , p_5))
                    { /* block id: 1551 */
                        uint32_t *l_3708 = &p_4112->g_3550.f1;
                        uint32_t *l_3709[2][10][2] = {{{&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}}, {{&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}, {&p_4112->g_396[0][1][1].f2, nullptr}}};
                        int32_t l_3710 = 8L;
                        int i, j, k;
                        l_3711 = func_14((l_3710 &= p_5), p_4112);
                        l_3713 &= make_int2(l_3712.x, l_3712.x).y;
                        if (p_4112->g_3382)
                            goto lbl_3714;
                    }
                    else
                    { /* block id: 1556 */
                        uint64_t **l_3716 = &p_4112->g_329;
                        if (p_4112->g_22)
                            goto lbl_3715;
                        l_3717 = l_3716;
                        if (p_4)
                            break;
                    }
                }
            }
            else
            { /* block id: 1562 */
                uint64_t l_3720 = 18446744073709551613UL;
                int32_t **l_3722 = &p_4112->g_64[2];
                (*l_3722) = func_53(((safe_mod_func_int8_t_s_s(l_3720, 0x9AL)) , func_56(l_3721, l_3722, (**l_3721), p_4112)), func_43((**l_3721), l_3723, p_4112), p_4112);
            }
            (*l_3721) = func_53(&l_3555, l_3724, p_4112);
            if (p_4)
                break;
        }
        if ((**l_3721))
        { /* block id: 1568 */
            uint32_t l_3725 = 4294967295UL;
            l_3725 &= (p_3.f3 = ((**l_3721) |= p_3.f0));
        }
        else
        { /* block id: 1572 */
            uint32_t l_3726[8] = {6UL, 6UL, 0xF4B8CDE0L, 6UL, 6UL, 0xF4B8CDE0L, 6UL, 6UL};
            int i;
            (*p_4112->g_1946) |= (l_3726[1] && make_uint3(0UL, 4294967294UL, 4294967294UL).z);
        }
        (*p_4112->g_1946) = ((****p_4112->g_1939) , p_5);
    }
    else
    { /* block id: 1576 */
        int64_t *****l_3727 = nullptr;
        int32_t l_3748 = (-7L);
        int32_t l_3749 = (-1L);
        int32_t l_3750 = 0x237F6DB7L;
        uint8_t ****l_3762 = nullptr;
        uchar1 l_3775 = make_uchar1(0UL);
        int16_t *****l_3783 = &p_4112->g_3270;
        struct S0 l_3787 = {0xAAL,1L,0xA68CADEEL};
        int32_t *l_3816[2][6] = {{&l_12, nullptr, &l_12, nullptr, &l_12, nullptr}, {&l_12, nullptr, &l_12, nullptr, &l_12, nullptr}};
        int32_t **l_3815 = &l_3816[0][1];
        uchar1 l_3822 = make_uchar1(0xD7L);
        uchar2 l_3823 = make_uchar2(1UL, 2UL);
        int32_t **l_3829 = &p_4112->g_64[0];
        uint8_t *l_3832 = nullptr;
        int32_t l_3855 = 0x964A50F9L;
        int32_t l_3860 = 1L;
        int32_t l_3861 = 0x0A350228L;
        int32_t l_3862 = 0x267190D0L;
        int32_t l_3863 = 0x2D668D94L;
        int32_t l_3864 = 0x0EEFDFBFL;
        int32_t l_3865 = (-1L);
        int32_t l_3867 = (-5L);
        int32_t l_3868 = (-1L);
        uint32_t l_3871 = 0xC595F888L;
        int32_t **l_3880 = &p_4112->g_1946;
        union U1 *****l_3887 = &p_4112->g_3035;
        int32_t *l_3888 = nullptr;
        int32_t *l_3889 = &l_3428;
        int32_t *l_3890 = &l_3865;
        int32_t *l_3891 = &l_3482;
        int32_t *l_3892 = nullptr;
        int32_t *l_3893[3];
        uint16_t l_3894[7][7][5] = {{{0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}}, {{0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}}, {{0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}}, {{0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}}, {{0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}}, {{0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}}, {{0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}, {0x5658L, 0x9962L, 0xCC9AL, 0xC7DFL, 0xD600L}}};
        int i, j, k;
        for (int i = 0; i < 3; i++)
            l_3893[i] = &l_3477;
        l_3728 = l_3727;
        for (p_4112->g_22 = 0; (p_4112->g_22 == (-13)); --p_4112->g_22)
        { /* block id: 1580 */
            uint8_t ****l_3738 = &p_4112->g_433;
            int32_t l_3739 = 0xADCA2749L;
            ulong4 l_3742 = make_ulong4(18446744073709551608UL, 0x1EA7308894FC4B50LL, 18446744073709551608UL, 0x1EA7308894FC4B50LL);
            int32_t l_3747 = 1L;
            uint32_t l_3785 = 0x04B49884L;
            uchar1 l_3824 = make_uchar1(255UL);
            struct S0 l_3827 = {-4L,1L,0x5A058FE3L};
            int16_t *l_3833 = nullptr;
            int32_t l_3851 = 0x1C5279A3L;
            int32_t l_3852 = 0xB4B6F7C4L;
            int32_t l_3854 = 2L;
            int32_t l_3856 = (-5L);
            int32_t l_3857 = 0x7059C6B9L;
            int32_t l_3858 = (-1L);
            int16_t l_3859 = 0x3D71L;
            int32_t l_3866 = (-4L);
            int32_t l_3869 = 1L;
            int32_t l_3870[10] = {0x239289C3L, 0x79803F18L, 0x239289C3L, 0x79803F18L, 0x239289C3L, 0x79803F18L, 0x239289C3L, 0x79803F18L, 0x239289C3L, 0x79803F18L};
            int32_t *l_3874 = &p_4112->g_917;
            int32_t *l_3875 = &p_4112->g_142[0];
            int32_t *l_3876[6];
            int i;
            for (int i = 0; i < 6; i++)
                l_3876[i] = &l_3748;
        }
        (*l_3724) = func_53(func_56((l_3880 = func_43(p_3.f0, (**p_4112->g_1094), p_4112)), &l_3555, (*p_4112->g_435), p_4112), func_56(func_56(&l_3555, &l_3555, ((*p_4112->g_992) &= (safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u((((*l_3887) = ((safe_add_func_uint32_t_u_u((*p_4112->g_102), l_3457[0][2])) , nullptr)) != &p_4112->g_3036), 0xBE18B975L)), 14))), p_4112), &l_3555, (***p_4112->g_433), p_4112), p_4112);
        l_3894[2][4][3]++;
    }
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_4112->g_16 p_4112->g_22 p_4112->g_1759 p_4112->g_396 p_4112->g_1946 p_4112->g_1903 p_4112->g_1758 p_4112->g_435 p_4112->g_132 p_4112->g_1289 p_4112->g_1561 p_4112->g_806 p_4112->g_1529 p_4112->g_1525 p_4112->g_1526 p_4112->g_1471 p_4112->g_6.f0 p_4112->g_2176 p_4112->g_329 p_4112->g_108 p_4112->g_1717 p_4112->g_992 p_4112->g_134 p_4112->g_3036 p_4112->g_1094 p_4112->g_1625 p_4112->g_1626 p_4112->g_102 p_4112->g_103 p_4112->g_3345 p_4112->g_3377 p_4112->g_3378 p_4112->g_3382 p_4112->g_434 p_4112->g_433 p_4112->g_3403 p_4112->g_6.f2 hip_const_4 p_4112->g_3171 p_4112->g_3178 p_4112->g_3181 p_4112->g_490 p_4112->g_1938 p_4112->g_1939 p_4112->g_1095 p_4112->g_6 p_4112->g_775
 * writes: p_4112->g_6.f3 p_4112->g_6.f2 p_4112->g_22 p_4112->g_1903 p_4112->g_396 p_4112->g_2176 p_4112->g_6.f0 p_4112->g_3017.f0 p_4112->g_1759 p_4112->g_807 p_4112->g_338 p_4112->g_132 p_4112->g_806 p_4112->g_3017.f2 p_4112->g_1095 p_4112->g_3345 p_4112->g_134 p_4112->g_2249 p_4112->g_1471 p_4112->g_3382 p_4112->g_103 p_4112->g_2531 p_4112->g_108 p_4112->g_490 p_4112->g_6 p_4112->g_48
 */
__device__ int32_t  func_8(int8_t  p_9, int32_t  p_10, uint16_t  p_11, struct S2 * p_4112)
{ /* block id: 2 */
    int32_t l_13 = 0L;
    struct S0 *l_3206 = &p_4112->g_396[0][1][1];
    int32_t *l_3219[9][6][3] = {{{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}, {{nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}, {nullptr, nullptr, &p_4112->g_142[0]}}};
    int64_t **l_3222 = &p_4112->g_2832;
    struct S0 ***l_3226 = &p_4112->g_1758;
    uint32_t l_3244 = 0x5BD32465L;
    uint32_t ***l_3273 = &p_4112->g_1626;
    union U1 *l_3296 = &p_4112->g_6;
    int8_t *l_3302 = &p_4112->g_140.f0;
    int8_t **l_3301 = &l_3302;
    int64_t l_3306 = 0L;
    int64_t l_3322 = 0L;
    uint64_t l_3326 = 0x2EDED7F5F6292708LL;
    int16_t l_3335 = 0L;
    uint64_t l_3338 = 18446744073709551615UL;
    int2 l_3341 = make_int2(0xB6B4B3FCL, (-1L));
    char2 l_3343 = make_char2((-1L), (-2L));
    ulong4 l_3365 = make_ulong4(0x053FC6B8560B53C1LL, 0xE7BB2D01FADEA91ALL, 0x053FC6B8560B53C1LL, 0xE7BB2D01FADEA91ALL);
    uint16_t *l_3379 = nullptr;
    uint16_t *l_3380 = &p_4112->g_2249;
    int16_t *l_3381[7];
    uint8_t l_3383 = 0x01L;
    struct S0 ***l_3387 = &p_4112->g_1758;
    int8_t l_3396 = 0L;
    int64_t l_3405 = 0xDE01071D2B124C91LL;
    uint32_t *****l_3411 = nullptr;
    int2 l_3412 = make_int2(0x73BEED81L, 0L);
    int i, j, k;
    for (int i = 0; i < 7; i++)
        l_3381[i] = nullptr;
lbl_3310:
    p_4112->g_6.f3 = l_13;
    (*l_3206) = func_14(p_11, p_4112);
    if ((0x23EEBB00L >= (safe_add_func_uint16_t_u_u((l_13 & ((*p_4112->g_1758) == l_3206)), ((safe_lshift_func_uint16_t_u_s((safe_sub_func_int8_t_s_s((safe_div_func_uint8_t_u_u((make_ulong2((safe_mul_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u(make_uint1(p_11).x, 0xED9ED402L)) , (l_3219[3][2][0] != ((((**p_4112->g_1626) |= (safe_lshift_func_int64_t_s_u(((l_3222 != l_3222) | 0xCDL), (*p_4112->g_329)))) , 1UL) , nullptr))), 4294967291UL)), p_10).x < p_11), (*p_4112->g_435))), p_4112->g_1289.z)), 15)) == p_11)))))
    { /* block id: 1288 */
        int32_t **l_3228 = &p_4112->g_1946;
        int32_t l_3229 = 0x874CADDFL;
        int32_t l_3238 = 7L;
        int32_t l_3240 = 0xF289110FL;
        long4 l_3264 = make_long4((-10L), 0x1121276B961DF772LL, (-10L), 0x1121276B961DF772LL);
        uint32_t ***l_3289 = &p_4112->g_962;
        uint32_t l_3291 = 0xF1D3A7C2L;
        int32_t l_3329 = (-1L);
        int32_t l_3330 = 0x604FA339L;
        int32_t l_3332 = 1L;
        int32_t l_3333[7] = {1L, 1L, (-3L), 1L, 1L, (-3L), 1L};
        int8_t l_3344 = 0x99L;
        int i;
        for (p_10 = 1; (p_10 <= 4); p_10 += 1)
        { /* block id: 1291 */
            int4 l_3223 = make_int4((-7L), (-1L), (-7L), (-1L));
            int32_t **l_3227 = &p_4112->g_1946;
            uint16_t ***l_3290 = &p_4112->g_1733;
            ushort4 l_3313 = make_ushort4(1UL, 0x0E5FL, 1UL, 0x0E5FL);
            int16_t ****l_3315 = &p_4112->g_1529;
            int16_t *****l_3314 = &l_3315;
            uint16_t *l_3327 = nullptr;
            uint16_t *l_3328[10] = {nullptr, &p_4112->g_490, nullptr, &p_4112->g_490, nullptr, &p_4112->g_490, nullptr, &p_4112->g_490, nullptr, &p_4112->g_490};
            int32_t l_3331 = (-1L);
            int32_t l_3334 = 0xCF06F385L;
            int16_t l_3336[9] = {0x6856L, (-5L), 0x6856L, (-5L), 0x6856L, (-5L), 0x6856L, (-5L), 0x6856L};
            int32_t l_3337[9] = {0x74A55526L, 0xF70368F8L, 0x74A55526L, 0xF70368F8L, 0x74A55526L, 0xF70368F8L, 0x74A55526L, 0xF70368F8L, 0x74A55526L};
            int i;
            if ((make_int2(l_3223.z, l_3223.z).y ^ (&p_4112->g_1758 == ((safe_lshift_func_int64_t_s_u((((*p_4112->g_1561) , &p_4112->g_1525) == nullptr), 4)) , l_3226))))
            { /* block id: 1292 */
                int16_t l_3230 = 0x1BB6L;
                int32_t l_3234 = (-1L);
                int32_t l_3236 = (-10L);
                int32_t l_3239 = 0xD56EBDC2L;
                int32_t l_3242 = 0x31A89CB3L;
                int32_t l_3243[1][8][2] = {{{0xD5C626AFL, 0xA6451735L}, {0xD5C626AFL, 0xA6451735L}, {0xD5C626AFL, 0xA6451735L}, {0xD5C626AFL, 0xA6451735L}, {0xD5C626AFL, 0xA6451735L}, {0xD5C626AFL, 0xA6451735L}, {0xD5C626AFL, 0xA6451735L}, {0xD5C626AFL, 0xA6451735L}}};
                ushort2 l_3263 = make_ushort2(0x8EF3L, 65528UL);
                int16_t ****l_3268[4] = {nullptr, &p_4112->g_1529, nullptr, &p_4112->g_1529};
                int16_t *****l_3267 = &l_3268[1];
                int i, j, k;
                for (p_4112->g_2176 = 0; (p_4112->g_2176 <= 2); p_4112->g_2176 += 1)
                { /* block id: 1295 */
                    uint16_t l_3231 = 65532UL;
                    int32_t l_3235 = 0x0762F1A8L;
                    int32_t l_3237 = 6L;
                    int32_t l_3241 = 0L;
                    for (p_4112->g_6.f0 = 2; (p_4112->g_6.f0 >= 0); p_4112->g_6.f0 -= 1)
                    { /* block id: 1298 */
                        int i, j, k;
                        l_3219[(p_4112->g_6.f0 + 5)][(p_10 + 1)][p_4112->g_6.f0] = func_53(l_3227, l_3228, p_4112);
                        l_3219[(p_4112->g_6.f0 + 5)][(p_4112->g_6.f0 + 1)][p_4112->g_2176] = l_3219[(p_4112->g_2176 + 6)][(p_4112->g_2176 + 2)][p_4112->g_2176];
                        if (p_4112->g_1471[(p_4112->g_6.f0 + 2)][(p_4112->g_2176 + 1)][(p_4112->g_2176 + 2)])
                            break;
                    }
                    --l_3231;
                    --l_3244;
                    for (p_4112->g_3017.f0 = 0; (p_4112->g_3017.f0 <= 4); p_4112->g_3017.f0 += 1)
                    { /* block id: 1307 */
                        int i, j, k;
                        (*p_4112->g_1758) = (*p_4112->g_1758);
                        return p_4112->g_1471[p_4112->g_2176][p_4112->g_2176][(p_4112->g_2176 + 2)];
                    }
                }
                for (p_4112->g_807 = 0; (p_4112->g_807 <= 4); p_4112->g_807 += 1)
                { /* block id: 1314 */
                    int32_t l_3257 = (-3L);
                    int32_t l_3258 = 0xFAE5B788L;
                    int16_t *****l_3271[2];
                    int2 l_3272 = make_int2(0xE54518D5L, 0L);
                    int i;
                    for (int i = 0; i < 2; i++)
                        l_3271[i] = &p_4112->g_3270;
                    for (p_4112->g_338 = 0; (p_4112->g_338 <= 4); p_4112->g_338 += 1)
                    { /* block id: 1317 */
                        int1 l_3250 = make_int1(0xFD93EC19L);
                        int i;
                        l_3229 |= (safe_add_func_uint8_t_u_u(((**p_4112->g_1717) &= (((((((make_int3((-2L), (-1L), 0x4903578AL) ^ make_int3(0x69EFFBEAL, (-1L), 0xEBAFE44CL))) ^ make_int3(p_4112->g_3249.x, p_4112->g_3249.x, p_4112->g_3249.x))) ^ make_int3(l_3250.x, l_3250.x, l_3250.x))).x , (safe_div_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u((safe_div_func_int8_t_s_s((l_3258 ^= l_3257), (safe_rshift_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(((*p_4112->g_329) < (make_int2((-1L), 0xCC9999ACL).x , (*p_4112->g_329))), make_ushort4(l_3263.y, l_3263.y, l_3263.y, l_3263.y).z)), (make_long4(l_3264.w, l_3264.w, l_3264.w, l_3264.w).y <= ((((safe_mul(make_char2(l_3257, (-2L)), make_char2((l_3236 & l_3250.x), ((l_3272.y = ((p_4112->g_3269 = l_3267) == l_3271[1])) != (nullptr == l_3273)))))).y | 0xECL) < 0x6BL)))))), 0x4FC57DC6L)) < 1UL), (**l_3227))))), p_9));
                        return p_10;
                    }
                    (**l_3227) = 7L;
                    return p_9;
                }
                if ((safe_lshift_func_int32_t_s_s(((((safe_add_func_uint64_t_u_u(1UL, (safe_lshift_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((**l_3228), 1UL)), 1)))) , 5UL) & (safe_mul_func_int16_t_s_s((((*p_4112->g_992) , make_uchar2(p_4112->g_3284.x, p_4112->g_3284.x).y) == (safe_add_func_int64_t_s_s(make_long2(((*p_4112->g_1561) &= ((((**l_3227) ^ (l_3289 == &p_4112->g_962)) , l_3290) != l_3290)), 0x8FBBDAC868AA1FAFLL).x, 1UL))), p_9))) != p_10), 10)))
                { /* block id: 1329 */
                    return (**l_3228);
                }
                else
                { /* block id: 1331 */
                    if (l_3291)
                        break;
                    if (p_10)
                        break;
                }
                for (p_4112->g_806 = 0; (p_4112->g_806 <= 4); p_4112->g_806 += 1)
                { /* block id: 1337 */
                    uint32_t l_3292 = 0x06B48AE5L;
                    l_3229 &= (**l_3227);
                    ++l_3292;
                    for (p_4112->g_807 = 4; (p_4112->g_807 >= 0); p_4112->g_807 -= 1)
                    { /* block id: 1342 */
                        union U1 *l_3295 = &p_4112->g_6;
                        l_3296 = l_3295;
                        l_3239 = p_11;
                    }
                }
            }
            else
            { /* block id: 1347 */
                int16_t ****l_3307 = &p_4112->g_1529;
                int32_t l_3309 = 0L;
                for (p_4112->g_3017.f2 = 1; (p_4112->g_3017.f2 <= 8); p_4112->g_3017.f2 += 1)
                { /* block id: 1350 */
                    int8_t **l_3308 = &l_3302;
                    int i;
                    l_3309 = ((safe_lshift_func_int8_t_s_s(1L, (((safe_div(((make_ushort3((p_11 = (nullptr != p_4112->g_64[p_10])), 0UL, ((7UL == (l_3301 != (((p_11 ^ (safe_sub_func_uint8_t_u_u(make_uchar2(p_4112->g_3305.x, p_4112->g_3305.x).x, ((**l_3301) |= l_3306)))) == ((**l_3228) = ((l_3307 == nullptr) , 0x5AA0D935L))) , l_3308))) != p_11)) ^ make_ushort3(0x79C5L, 0x79C5L, 0x79C5L))), make_ushort3(0xD3B2L, 0xD3B2L, 0xD3B2L)))).y , (-2L)))) , (**l_3227));
                    for (p_4112->g_1903 = 3; (p_4112->g_1903 <= 8); p_4112->g_1903 += 1)
                    { /* block id: 1357 */
                        int i, j, k;
                        if (p_4112->g_2176)
                            goto lbl_3310;
                        l_3309 = 0xA64388DFL;
                        (**p_4112->g_3036) = nullptr;
                    }
                }
            }
            (**l_3228) = ((((**l_3228) >= (safe_div_func_uint32_t_u_u((***p_4112->g_1625), (-1L)))) != make_ushort4(l_3313.w, l_3313.w, l_3313.w, l_3313.w).w) != make_uchar1((make_int3((-1L), make_int1(p_9).x, (((((*p_4112->g_3269) = nullptr) != ((*l_3314) = &p_4112->g_1524)) & (safe_div_func_int32_t_s_s(((l_3240 = (safe_mod_func_int16_t_s_s(((((((safe_sub(((safe_unary_minus(make_short4(0x51D6L, (l_3322 , ((l_3238 = (p_11 |= (make_ushort3(p_4112->g_3323.z, p_4112->g_3323.z, p_4112->g_3323.z).x > (((p_10 , ((safe_div_func_int32_t_s_s(0L, l_3326)) && 6UL)) | (***p_4112->g_1625)) <= (*p_4112->g_1561))))) & (**l_3227))), 0x3B35L, p_9)))), make_short4(0xA0EFL, 0xA0EFL, 0xA0EFL, 0xA0EFL)))) | make_short4(0x4C02L, 0x4C02L, 0x4C02L, 0x4C02L))) ^ make_short4(9L, 9L, 9L, 9L))).x, p_10))) , 0xFEC7CFC7L), (**l_3228)))) , p_11)).z & p_10)).x);
            l_3338++;
            for (p_4112->g_3017.f2 = 0; (p_4112->g_3017.f2 <= 4); p_4112->g_3017.f2 += 1)
            { /* block id: 1373 */
                struct S0 l_3342 = {-8L,-1L,18446744073709551615UL};
                (**l_3228) = make_int1(l_3341.y).x;
                for (p_4112->g_6.f3 = 4; (p_4112->g_6.f3 >= 0); p_4112->g_6.f3 -= 1)
                { /* block id: 1377 */
                    (*l_3206) = l_3342;
                }
            }
        }
        --p_4112->g_3345;
    }
    else
    { /* block id: 1383 */
        int16_t l_3348[7];
        int i;
        for (int i = 0; i < 7; i++)
            l_3348[i] = 0x2A87L;
        (*p_4112->g_1946) = l_3348[6];
        p_10 ^= p_11;
    }
    if ((((**p_4112->g_1626) = (safe_add_func_uint16_t_u_u((((p_11 <= ((*p_4112->g_1758) != (**l_3226))) == ((((*p_4112->g_329) < ((*p_4112->g_1561) = 4L)) | ((*p_4112->g_435) = (safe_div_func_uint8_t_u_u((((((*p_4112->g_1946) ^= ((safe_mod_func_int64_t_s_s(((*l_3206) , (l_3383 ^= (safe_div_func_uint32_t_u_u(((p_4112->g_3382 |= (safe_add_func_int16_t_s_s(((**p_4112->g_1525) = (~(safe_add_func_uint64_t_u_u(18446744073709551615UL, ((((safe_div(((make_ulong1(l_3365.y) ^ make_ulong1((safe_mul_func_int32_t_s_s((safe_div_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_uint16_t_u(((*l_3380) = (((*p_4112->g_992) = ((safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s(((make_uchar1(p_4112->g_3377.y).x , nullptr) != nullptr), 0)), p_4112->g_3378)) < p_11)) & 0x76L)))), p_11)) <= 0xDCL), 255UL)), p_9))))), make_ulong1(18446744073709551615UL)))) | make_ulong1(0xD563EC0E6E029866LL))).x)))), (-4L)))) ^ 0x48FFL), (-2L))))), (*p_4112->g_329))) <= 0L)) , p_11) >= p_10) , (**p_4112->g_434)), p_9)))) >= p_9)) , p_11), p_9))) <= 0x25CEA18AL))
    { /* block id: 1396 */
        struct S0 ****l_3386 = &l_3226;
        int2 l_3392 = make_int2(0xA4F332C6L, 4L);
        int32_t l_3393 = (-1L);
        int64_t ***l_3401 = &l_3222;
        int64_t *l_3404 = &p_4112->g_2531;
        int i;
        (*p_4112->g_1946) = ((((safe_mul_func_uint8_t_u_u(((***p_4112->g_433) = (((*l_3386) = l_3226) == (l_3387 = nullptr))), ((p_10 && (p_10 == (safe_mod_func_uint32_t_u_u(p_10, (safe_add_func_uint8_t_u_u(((make_ushort1(0xE829L).x >= (8L || make_int2(l_3392.x, l_3392.x).y)) , p_10), ((((((l_3393 = p_10) & ((**p_4112->g_1626) = ((safe_add_func_int16_t_s_s((***p_4112->g_1529), p_10)) ^ l_3392.x))) < p_9) , l_3393) , p_11) == 0x2E8FL))))))) != l_3392.y))) ^ p_11) , l_3396) >= p_11);
        (*p_4112->g_1946) |= (l_3392.x = (l_3405 = ((((safe_lshift_func_uint32_t_u_s((((safe_add_func_uint32_t_u_u((nullptr == &p_4112->g_1733), 0x921B3485L)) , l_3401) != &l_3222), (safe_unary_minus_func_int64_t_s(((*l_3404) = ((*p_4112->g_1561) = p_4112->g_3403)))))) , (*p_4112->g_433)) == nullptr) & l_3392.y)));
    }
    else
    { /* block id: 1408 */
        uchar3 l_3410 = make_uchar3(0x4DL, 246UL, 0x4DL);
        int i;
        (*p_4112->g_1946) = (safe_mul_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((&p_4112->g_329 == nullptr), make_uchar2(make_uchar3(l_3410.z, l_3410.z, l_3410.z).y, 250UL).x)) != l_3410.z), (&p_4112->g_1939 != (l_3411 = l_3411))));
        return l_3410.y;
    }
    return l_3412.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_4112->g_6.f2 p_4112->g_16 p_4112->g_22 p_4112->g_1759 p_4112->g_396 hip_const_4 p_4112->g_1561 p_4112->g_806 p_4112->g_329 p_4112->g_108 p_4112->g_3171 p_4112->g_433 p_4112->g_434 p_4112->g_3178 p_4112->g_3181 p_4112->g_490 p_4112->g_1758 p_4112->g_102 p_4112->g_103 p_4112->g_1938 p_4112->g_1939 p_4112->g_1625 p_4112->g_1626 p_4112->g_1946 p_4112->g_1903 p_4112->g_1095 p_4112->g_6 p_4112->g_775 p_4112->g_917
 * writes: p_4112->g_6.f2 p_4112->g_22 p_4112->g_806 p_4112->g_108 p_4112->g_490 p_4112->g_103 p_4112->g_1903 p_4112->g_6 p_4112->g_48 p_4112->g_1759 p_4112->g_917
 */
__device__ struct S0  func_14(uint32_t  p_15, struct S2 * p_4112)
{ /* block id: 4 */
    uint8_t l_17[9][6][4] = {{{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}, {{0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}, {0xD1L, 0UL, 7UL, 7UL}}};
    int32_t *l_18 = &hip_const_4;
    int8_t l_21 = 0L;
    int32_t **l_30 = &l_18;
    struct S0 l_51[10] = {{1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}, {1L,0L,0x5BCD5918L}};
    long1 l_2963 = make_long1((-1L));
    int32_t l_2966 = (-3L);
    int16_t ****l_2970[5] = {&p_4112->g_1529, nullptr, &p_4112->g_1529, nullptr, &p_4112->g_1529};
    int16_t *****l_2969 = &l_2970[2];
    long1 l_2974 = make_long1((-9L));
    uint1 l_3003 = make_uint1(4294967292UL);
    uint32_t ****l_3034[5][10] = {{&p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, nullptr}, {&p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, nullptr}, {&p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, nullptr}, {&p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, nullptr}, {&p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, &p_4112->g_1625, nullptr, &p_4112->g_1625, &p_4112->g_1625, nullptr}};
    union U1 l_3050[6][9][3] = {{{{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}}, {{{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}}, {{{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}}, {{{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}}, {{{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}}, {{{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}, {{1L}, {0x2586FBE7D5ED7488LL}, {-1L}}}};
    uint64_t l_3062[5][4][4] = {{{0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}}, {{0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}}, {{0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}}, {{0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}}, {{0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}, {0x5E46C45D673C5A4BLL, 0x8EB5820B859FDC90LL, 0x4C24AF51D968F20BLL, 18446744073709551609UL}}};
    int32_t l_3074 = 0x85868088L;
    short4 l_3077 = make_short4(0x3C56L, 0xD4EAL, 0x3C56L, 0xD4EAL);
    short1 l_3105 = make_short1(0x5676L);
    int32_t *l_3113 = &p_4112->g_807;
    uint8_t ****l_3145 = &p_4112->g_433;
    uint16_t l_3151 = 65535UL;
    struct S0 **l_3154[9] = {&p_4112->g_1759, &p_4112->g_1759, &p_4112->g_1759, &p_4112->g_1759, &p_4112->g_1759, &p_4112->g_1759, &p_4112->g_1759, &p_4112->g_1759, &p_4112->g_1759};
    uchar1 l_3168 = make_uchar1(0x6EL);
    int8_t *l_3172 = nullptr;
    int8_t *l_3173[10] = {nullptr, nullptr, &p_4112->g_140.f0, nullptr, nullptr, &p_4112->g_140.f0, nullptr, nullptr, &p_4112->g_140.f0, nullptr};
    union U1 *l_3182 = &l_3050[3][5][2];
    uint16_t *l_3183 = &p_4112->g_490;
    ulong4 l_3196 = make_ulong4(0UL, 18446744073709551607UL, 0UL, 18446744073709551607UL);
    ulong4 l_3197 = make_ulong4(18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
    ulong4 l_3198 = make_ulong4(0x8B951BB1482A5DEELL, 1UL, 0x8B951BB1482A5DEELL, 1UL);
    ulong4 l_3199 = make_ulong4(18446744073709551615UL, 0x5E31D3AFDFFC057ELL, 18446744073709551615UL, 0x5E31D3AFDFFC057ELL);
    ulong1 l_3200 = make_ulong1(0x3B75159D4288AAB0LL);
    union U1 l_3201 = {0x5EF3B31902322CD9LL};
    int32_t ***l_3202[7][3][4] = {{{&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}}, {{&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}}, {{&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}}, {{&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}}, {{&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}}, {{&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}}, {{&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}, {&p_4112->g_63[0], &p_4112->g_63[0], &l_30, nullptr}}};
    int32_t **l_3203[6][5] = {{&l_18, nullptr, &p_4112->g_64[1], &p_4112->g_64[1], nullptr}, {&l_18, nullptr, &p_4112->g_64[1], &p_4112->g_64[1], nullptr}, {&l_18, nullptr, &p_4112->g_64[1], &p_4112->g_64[1], nullptr}, {&l_18, nullptr, &p_4112->g_64[1], &p_4112->g_64[1], nullptr}, {&l_18, nullptr, &p_4112->g_64[1], &p_4112->g_64[1], nullptr}, {&l_18, nullptr, &p_4112->g_64[1], &p_4112->g_64[1], nullptr}};
    int32_t **l_3204 = &p_4112->g_1946;
    int32_t **l_3205[7] = {&p_4112->g_64[8], &p_4112->g_64[8], &p_4112->g_437, &p_4112->g_64[8], &p_4112->g_64[8], &p_4112->g_437, &p_4112->g_64[8]};
    int i, j, k;
    for (p_4112->g_6.f2 = 0; (p_4112->g_6.f2 <= 3); p_4112->g_6.f2 += 1)
    { /* block id: 7 */
        int32_t **l_19[7] = {&l_18, &l_18, &l_18, &l_18, &l_18, &l_18, &l_18};
        int64_t l_20 = 7L;
        union U1 l_52 = {9L};
        int16_t *****l_2971 = &l_2970[2];
        long4 l_2975 = make_long4((-8L), 0xC240BCA5E39F47C8LL, (-8L), 0xC240BCA5E39F47C8LL);
        int32_t ****l_2998 = &p_4112->g_775;
        int8_t *l_2999 = &p_4112->g_396[0][1][1].f0;
        int32_t l_3000 = 0xC21726AFL;
        struct S0 l_3028 = {-5L,-1L,0x3CF26610L};
        long2 l_3068 = make_long2(0x720778A127654670LL, 0x6A51B76B1C979FD7LL);
        int16_t l_3071[5][4] = {{0L, 0x2EDAL, 0L, 0x2EDAL}, {0L, 0x2EDAL, 0L, 0x2EDAL}, {0L, 0x2EDAL, 0L, 0x2EDAL}, {0L, 0x2EDAL, 0L, 0x2EDAL}, {0L, 0x2EDAL, 0L, 0x2EDAL}};
        uint64_t l_3072 = 18446744073709551615UL;
        uint32_t *l_3081 = &p_4112->g_3017.f2;
        int3 l_3088 = make_int3(0xE133341DL, 0xB178FC2FL, 0xE133341DL);
        char2 l_3128 = make_char2((-1L), 0x8CL);
        union U1 **l_3146 = &p_4112->g_1095;
        int i, j;
        if (p_4112->g_16.x)
            break;
        l_18 = l_18;
        l_20 = 0xEB6652F0L;
        p_4112->g_22 |= l_21;
        for (l_20 = 0; (l_20 <= 3); l_20 += 1)
        { /* block id: 14 */
            uint32_t l_23[5] = {18446744073709551615UL, 18446744073709551612UL, 18446744073709551615UL, 18446744073709551612UL, 18446744073709551615UL};
            union U1 l_42 = {0xC79A83ADAB8F5B6ELL};
            int32_t *l_2965[8];
            int1 l_2981 = make_int1(9L);
            uint64_t l_3002 = 18446744073709551615UL;
            struct S0 *l_3029[3];
            uchar1 l_3042 = make_uchar1(255UL);
            uint64_t l_3049 = 0x53D2A057A45FC80DLL;
            int3 l_3142 = make_int3(1L, 0xA9CF34B5L, 1L);
            int i;
            for (int i = 0; i < 8; i++)
                l_2965[i] = &p_4112->g_142[0];
            for (int i = 0; i < 3; i++)
                l_3029[i] = &l_51[1];
            for (p_4112->g_22 = 0; (p_4112->g_22 <= 3); p_4112->g_22 += 1)
            { /* block id: 17 */
                int32_t **l_2319[10] = {&p_4112->g_64[3], &l_18, &p_4112->g_64[3], &l_18, &p_4112->g_64[3], &l_18, &p_4112->g_64[3], &l_18, &p_4112->g_64[3], &l_18};
                ulong4 l_2992 = make_ulong4(0x2DAC9DBE1D951CE9LL, 0x942AD963849F0023LL, 0x2DAC9DBE1D951CE9LL, 0x942AD963849F0023LL);
                short3 l_3013 = make_short3((-1L), 0x9886L, (-1L));
                short4 l_3014 = make_short4(1L, 1L, 1L, 1L);
                char4 l_3020 = make_char4(0x6EL, 0xD0L, 0x6EL, 0xD0L);
                union U1 l_3025 = {-10L};
                union U1 *l_3026 = &l_3025;
                struct S0 l_3027 = {-7L,0xF06EF749L,0xF132858BL};
                int i, j, k;
                ++l_23[3];
            }
            l_3029[0] = (((p_15 <= 0UL) , ((*p_4112->g_1759) , 1L)) , l_3029[2]);
        }
    }
    (*l_30) = (*l_30);
    (*p_4112->g_1946) ^= ((make_int3((safe_add_func_uint8_t_u_u(((safe_rshift_func_int64_t_s_u(((((*p_4112->g_1561) ^= (*l_18)) && ((*p_4112->g_329) &= 18446744073709551613UL)) != (safe_sub_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((**l_30), make_uchar1(l_3168.x).x)), (safe_add_func_int8_t_s_s((l_2966 = make_char4(p_4112->g_3171.x, p_4112->g_3171.x, p_4112->g_3171.x, p_4112->g_3171.x).y), (-1L))))), (safe_rshift_func_uint8_t_u_u((nullptr == (**l_3145)), 0))))), (((*****p_4112->g_1938) = (safe_mod_func_int8_t_s_s((!((make_char3(p_4112->g_3178.y, p_4112->g_3178.y, p_4112->g_3178.y) ^ ((((safe_lshift(make_char3(0x5AL, 1L, 0xF3L), make_char3(p_4112->g_3181.w, p_4112->g_3181.w, p_4112->g_3181.w)))) | make_char3((-7L), 5L, ((make_uchar3((((l_3182 = &l_3050[3][5][2]) == nullptr) && (((((*l_3183) |= ((((*l_3182) , (*l_18)) && (*l_18)) >= 8UL)) , (**p_4112->g_1758)) , (*l_18)) == (*p_4112->g_102))), 5UL, 0x75L).y || (*l_18)) && p_15)))))).x), p_15))) != 4294967293UL))) > p_15), 5L)), (-1L), (-1L)) & make_int3(8L, 8L, 8L))).z;
    (**l_3204) &= (safe_sub_func_int32_t_s_s((safe_mul_func_int16_t_s_s((((make_ushort3((func_36((safe_div_func_int64_t_s_s((&p_4112->g_434 != ((*l_3182) , &p_4112->g_1717)), ((((safe_div(((((safe_mul(((safe_lshift(((make_ulong1(l_3196.y) & make_ulong1(l_3197.y))), make_ulong1(64)))), make_ulong1(0x151968A54C3900ECLL)))) ^ make_ulong1(l_3198.w))), make_ulong1(l_3199.w)))) & ((~make_ulong1(l_3200.x))))).x)), (l_3201 = ((*p_4112->g_1095) = (*p_4112->g_1095))), (l_3203[4][0] = ((*p_4112->g_775) = nullptr)), l_3204, l_3205[1], p_4112) , (*l_18)), 0xCE01L, 9UL) ^ make_ushort3(0x9DBEL, 0x9DBEL, 0x9DBEL))).z >= (-4L)), 1UL)), 0x88BA7940L));
    return (*p_4112->g_1759);
}


/* ------------------------------------------ */
/* 
 * reads : hip_const_4
 * writes:
 */
__device__ uint8_t  func_28(int32_t ** p_29, struct S2 * p_4112)
{ /* block id: 19 */
    return hip_const_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_4112->g_16 p_4112->g_1017 hip_const_4 p_4112->g_1094 p_4112->g_1095 p_4112->g_343 p_4112->g_1625 p_4112->g_1626 p_4112->g_102 p_4112->g_103 p_4112->g_1946 p_4112->g_329 p_4112->g_108 p_4112->g_521 p_4112->g_1529 p_4112->g_1525 p_4112->g_1526 p_4112->g_1471 p_4112->g_1939 p_4112->g_345 p_4112->g_1903 p_4112->g_2404 p_4112->g_434 p_4112->g_435 p_4112->g_196 p_4112->g_962 p_4112->g_2416 p_4112->g_775 p_4112->g_48 p_4112->g_2318 p_4112->g_1758 p_4112->g_1759 p_4112->g_433 p_4112->g_132 p_4112->g_2244 p_4112->g_1561 p_4112->g_806 p_4112->g_6 p_4112->g_2495 p_4112->g_2505 p_4112->g_2509 p_4112->g_1717 p_4112->g_2520 p_4112->g_2531 p_4112->g_958 p_4112->g_992 p_4112->g_134 p_4112->g_1830 p_4112->g_1905 p_4112->g_1321 p_4112->g_1734 p_4112->g_2047 p_4112->g_917 p_4112->g_396 p_4112->g_140 p_4112->g_1239
 * writes: p_4112->g_1903 p_4112->g_108 p_4112->g_521 p_4112->g_132 p_4112->g_963 p_4112->g_807 p_4112->g_1759 p_4112->g_2244 p_4112->g_806 p_4112->g_103 p_4112->g_962 p_4112->g_774 p_4112->g_959 p_4112->g_1471 p_4112->g_435 p_4112->g_134 p_4112->g_1830 p_4112->g_1905 p_4112->g_2416 p_4112->g_1806 p_4112->g_1734 p_4112->g_1946 p_4112->g_917 p_4112->g_2047 p_4112->g_1239 p_4112->g_396 p_4112->g_140 p_4112->g_1625
 */
__device__ union U1  func_31(struct S0  p_32, struct S0  p_33, uint8_t  p_34, int32_t * p_35, struct S2 * p_4112)
{ /* block id: 886 */
    int32_t *l_2347 = nullptr;
    short3 l_2350 = make_short3(0x8A7BL, 0x5B40L, 0x8A7BL);
    int3 l_2357 = make_int3((-1L), 0x4EBDA6E6L, (-1L));
    uint16_t **l_2358 = &p_4112->g_1734[1];
    uint16_t l_2359 = 0xC99FL;
    char1 l_2365 = make_char1(0x82L);
    char4 l_2382 = make_char4(0L, 2L, 0L, 2L);
    uint32_t *l_2410 = nullptr;
    union U1 l_2426 = {0xDE04F9B5E1317123LL};
    uint8_t ***l_2432 = &p_4112->g_1717;
    int16_t l_2444 = 0x4A1DL;
    int16_t l_2459 = 0x5119L;
    int32_t l_2473 = 0xE1A659BDL;
    struct S0 ***l_2484 = &p_4112->g_1758;
    uint32_t l_2526[2];
    uint32_t *****l_2530 = nullptr;
    int3 l_2600 = make_int3(1L, 0xD8A11C92L, 1L);
    int32_t l_2635 = 0xC276D3E3L;
    uint16_t l_2640 = 65534UL;
    short1 l_2705 = make_short1(0x10F3L);
    int16_t ***l_2708 = &p_4112->g_1525;
    int32_t ***l_2739 = &p_4112->g_2318;
    char2 l_2744 = make_char2(0xEBL, 0L);
    ulong2 l_2762 = make_ulong2(5UL, 0x344CA09803F02F30LL);
    int64_t l_2804 = 3L;
    int32_t l_2835[4] = {0x2B978261L, 1L, 0x2B978261L, 1L};
    ushort3 l_2841 = make_ushort3(1UL, 0x0CE4L, 1UL);
    int3 l_2847 = make_int3(1L, 2L, 1L);
    ushort2 l_2852 = make_ushort2(65535UL, 0xC506L);
    int i;
    for (int i = 0; i < 2; i++)
        l_2526[i] = 0x0C2F8EFBL;
    if ((safe_mod_func_uint32_t_u_u(((safe_sub_func_uint8_t_u_u((safe_rshift_func_uint32_t_u_u(make_uint4(1UL, 0x673BE5A6L, (((safe_mod(((safe_mod(make_int1(((((safe_add_func_int64_t_s_s(make_long3((safe_mul_func_int32_t_s_s(((((((safe_sub_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((+p_34), (p_35 != (l_2347 = p_35)))), (safe_sub_func_int16_t_s_s(make_short3(l_2350.z, l_2350.z, l_2350.z).z, (safe_sub_func_uint16_t_u_u((make_ushort1(8UL).x <= (safe_rshift_func_int8_t_s_s(((l_2350.z > (((+((((safe_sub_func_uint32_t_u_u((~(p_4112->g_16.y == 255UL)), ((p_32.f0 > (((+make_int2(l_2357.z, l_2357.z).x) == l_2357.z) <= p_4112->g_1017.y)) != (*p_35)))) > p_32.f2) | l_2350.y) == (*p_35))) , (*p_4112->g_1094)) == (*p_4112->g_1094))) && l_2350.y), p_4112->g_343.x))), 0x6AF0L)))))) , l_2358) == l_2358) <= l_2357.z) , p_34) | l_2357.y), (*p_35))), p_32.f0, (-1L)).x, 0xB6AA830336649BB5LL)) && l_2359) & p_34) && 0x37L)), make_int1(1L)))), make_int1((-10L))))).x , 1UL), 4294967295UL).z, 10)), 0UL)) ^ l_2357.x), (***p_4112->g_1625))))
    { /* block id: 888 */
        uint32_t l_2364 = 4294967291UL;
        short2 l_2383 = make_short2(7L, 0x87F6L);
        int32_t l_2400 = 0xFE166F3FL;
        uint64_t l_2402 = 0x01FA66364D4E38B2LL;
        int i;
        (*p_4112->g_1946) = (safe_add_func_uint8_t_u_u(((*l_2347) < (safe_rshift_func_uint32_t_u_u(l_2364, 23))), ((make_char3(0x69L, 0L, (-1L)) ^ make_char3(l_2365.x, l_2365.x, l_2365.x))).z));
        for (p_33.f2 = 21; (p_33.f2 > 47); p_33.f2 = safe_add_func_int16_t_s_s(p_33.f2, 1))
        { /* block id: 892 */
            uint64_t *l_2370 = &p_4112->g_521;
            int32_t l_2381 = 0x934107CFL;
            uint16_t *l_2398 = nullptr;
            uint16_t *l_2399[8] = {nullptr, &l_2359, nullptr, &l_2359, nullptr, &l_2359, nullptr, &l_2359};
            int32_t l_2401 = (-1L);
            uint32_t l_2403 = 0xA4CD6207L;
            int8_t **l_2405 = nullptr;
            int i;
            l_2357.x = (((*l_2370) &= (--(*p_4112->g_329))) >= ((((**p_4112->g_434) = (safe_lshift_func_uint16_t_u_s(((p_33.f1 | ((((safe_lshift_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u((!((safe_lshift_func_uint32_t_u_s(((((safe_rshift_func_int32_t_s_u(l_2381, 28)) > make_char4(l_2382.w, l_2382.w, l_2382.w, l_2382.w).y) != (make_short3(l_2383.y, l_2383.y, l_2383.y).z && (safe_mod_func_uint16_t_u_u(p_33.f0, (l_2401 = ((safe_mul_func_int16_t_s_s((***p_4112->g_1529), (+(p_33.f0 , ((safe_add(make_short1((safe_lshift_func_uint8_t_u_s(((((l_2400 = (((safe_sub_func_int16_t_s_s((safe_add_func_int64_t_s_s((safe_mod_func_int8_t_s_s(0L, 0x93L)), (p_33.f1 , (*l_2347)))), (*l_2347))) > l_2381) && l_2383.y)) , (****p_4112->g_1939)) >= (*p_35)) ^ l_2381), p_4112->g_345.z))), make_short1(0x2450L)))).x)))) | 0x023C8CE761DF434FLL)))))) == 0xF5L), (*p_4112->g_1946))) & l_2402)), l_2381)) <= 8L), l_2403)) > (*l_2347)) , p_4112->g_2404) == l_2405)) != p_32.f1), 10))) , p_4112->g_196.y) & 0x84DD7F61F2AFB97FLL));
        }
    }
    else
    { /* block id: 900 */
        uint32_t *l_2413[10][4][2] = {{{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}, {{&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}, {&p_4112->g_140.f2, nullptr}}};
        int32_t l_2425 = 0xDF77804DL;
        short2 l_2433 = make_short2(0L, 0x757AL);
        int32_t l_2455 = 4L;
        int32_t l_2462 = 0x1D30029DL;
        int32_t l_2463[7] = {(-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L)};
        int3 l_2506 = make_int3(0x8EC0357CL, 0L, 0x8EC0357CL);
        ulong4 l_2521 = make_ulong4(0xEDB9EF3C599D37EELL, 1UL, 0xEDB9EF3C599D37EELL, 1UL);
        ushort1 l_2532 = make_ushort1(0UL);
        int64_t ****l_2542 = &p_4112->g_930;
        uint32_t *l_2558 = nullptr;
        uint16_t *l_2589 = nullptr;
        int32_t l_2590[6] = {(-1L), 0xC7B9475DL, (-1L), 0xC7B9475DL, (-1L), 0xC7B9475DL};
        int16_t *l_2595 = &l_2444;
        struct S0 *l_2601 = &p_4112->g_140;
        union U1 *l_2650 = &l_2426;
        int i, j, k;
        if (make_int1(0x3EF125F8L).x)
        { /* block id: 901 */
            uint32_t l_2414 = 4294967295UL;
            uint32_t *l_2415 = &p_4112->g_396[0][1][1].f2;
            int32_t *l_2417 = &p_4112->g_807;
            char1 l_2422 = make_char1(0x71L);
            union U1 l_2423 = {2L};
            int32_t **l_2424[7];
            int8_t *l_2439 = nullptr;
            int8_t **l_2438 = &l_2439;
            int32_t l_2467 = (-4L);
            int32_t l_2468 = 0xE3CF883BL;
            int8_t l_2477 = 0xEEL;
            uint1 l_2479 = make_uint1(0x7BB0A202L);
            ulong2 l_2519 = make_ulong2(0x0FC257499A0A1ECBLL, 18446744073709551609UL);
            short1 l_2554 = make_short1((-3L));
            int1 l_2562 = make_int1((-3L));
            int32_t l_2564 = (-1L);
            int i;
            for (int i = 0; i < 7; i++)
                l_2424[i] = nullptr;
            (*p_4112->g_1946) = ((safe_sub_func_int32_t_s_s((safe_div_func_int8_t_s_s((((*p_4112->g_962) = l_2410) != l_2410), 247UL)), (((p_32 , p_32.f2) > ((safe_sub_func_uint32_t_u_u((((((*l_2347) , l_2413[7][0][0]) == (l_2414 , l_2415)) , &p_4112->g_1734[0]) != nullptr), p_4112->g_2416)) || p_32.f1)) && 0xE07F86F5L))) == p_32.f1);
            if ((((*l_2417) = p_4112->g_1903) , (make_uchar3((safe_mod_func_uint8_t_u_u((make_char1(l_2422.x).x >= (func_36(p_32.f1, l_2423, func_56(l_2424[3], (*p_4112->g_775), l_2425, p_4112), func_43(p_32.f0, l_2426, p_4112), &l_2347, p_4112) , p_33.f0)), p_32.f1)), 0x3CL, p_32.f0).x && 0L)))
            { /* block id: 905 */
                int8_t *l_2442 = &p_4112->g_2244[0][0];
                int32_t l_2443 = 1L;
                int32_t l_2456 = 0x21C5B525L;
                int32_t l_2457 = 0x881C45F1L;
                int32_t l_2460 = 1L;
                int64_t l_2461 = 0xBD32032673D7B251LL;
                int32_t l_2464 = 0x07D9EED0L;
                int32_t l_2466 = (-3L);
                int32_t l_2469 = (-5L);
                int32_t l_2470 = (-1L);
                int32_t l_2471 = 1L;
                int32_t l_2472 = 0xF30A4794L;
                int32_t l_2474 = 0xED07403EL;
                int32_t l_2475 = 0x16709FCBL;
                int4 l_2476 = make_int4(0L, 1L, 0L, 1L);
                uint32_t *l_2553 = &p_4112->g_396[0][1][1].f2;
                int1 l_2568 = make_int1((-6L));
                int i;
                (*p_4112->g_1946) = ((p_34 >= make_short4((((*p_4112->g_1561) &= (make_uint2(0x3A0A5DD5L, (p_33.f1 < make_long4((l_2443 = ((((*l_2442) |= (((safe_add_func_uint64_t_u_u((l_2426 , ((~((safe_unary_minus_func_uint16_t_u((((safe_mul_func_uint64_t_u_u((make_long1((-5L)).x > ((nullptr == l_2432) == make_short2(l_2433.y, l_2433.y).y)), ((*p_4112->g_329) = make_ulong3(((safe_mod_func_int64_t_s_s(((safe_lshift_func_int32_t_s_s((*p_35), (nullptr != l_2438))) >= (((safe_rshift_func_uint32_t_u_u(p_32.f2, 26)) , nullptr) != nullptr)), p_33.f0)) || (***p_4112->g_1529)), (*p_4112->g_329), 0x32E1A8BB5150D86BLL).z))) <= (***p_4112->g_433)) < (-10L)))) == (*l_2347))) , (*l_2347))), 8UL)) > (*l_2347)) , 0x02L)) == 2L) | 0x583EL)), 0L, 0x360E40E50E86DD63LL, p_33.f0).w)).y && l_2425)) >= l_2433.y), (*p_4112->g_1526), 0xEF9BL, l_2444).y) , l_2433.y);
                if ((safe_sub_func_int16_t_s_s((((****p_4112->g_1939) = l_2425) & (safe_lshift_func_int16_t_s_u((nullptr == &p_4112->g_959), (safe_lshift_func_int64_t_s_u((-8L), p_32.f2))))), (safe_mod_func_int16_t_s_s((*l_2347), 0xA56DL)))))
                { /* block id: 912 */
                    int64_t l_2453 = 1L;
                    int1 l_2454 = make_int1(0xA5090A94L);
                    int32_t l_2458 = 0x4765E652L;
                    int8_t l_2465 = 0x7BL;
                    int64_t l_2478 = (-1L);
                    int i;
                    l_2479.x--;
                    return l_2426;
                }
                else
                { /* block id: 915 */
                    int32_t l_2507[9] = {0x758B1278L, 8L, 0x758B1278L, 8L, 0x758B1278L, 8L, 0x758B1278L, 8L, 0x758B1278L};
                    uint32_t *****l_2529 = &p_4112->g_1939;
                    int i;
                    if (((p_4112->g_2404 != p_4112->g_2404) < ((*p_4112->g_329)++)))
                    { /* block id: 917 */
                        uint32_t ***l_2502 = &p_4112->g_962;
                        int32_t l_2508[7] = {2L, 0xDF0ED38BL, 2L, 0xDF0ED38BL, 2L, 0xDF0ED38BL, 2L};
                        int32_t l_2512 = 0x7ABDFE04L;
                        int i;
                        l_2484 = &p_4112->g_1758;
                        l_2471 = (safe_rshift_func_uint32_t_u_u(make_uint3((safe_lshift_func_int16_t_s_s((((l_2470 = (safe_mod_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(0x8980D456L, (nullptr == &p_4112->g_963))) == ((*p_4112->g_1095) , (((safe_rshift(((((make_uchar2(p_4112->g_2495.y, p_4112->g_2495.y) ^ ((make_uchar2(0x9BL, ((safe_mul_func_uint8_t_u_u(p_33.f0, (safe_lshift_func_int32_t_s_s((safe_mul_func_int32_t_s_s(((*p_4112->g_1946) = (((*l_2502) = nullptr) == &l_2415)), (safe_div_func_uint64_t_u_u((make_long4(p_4112->g_2505.y, p_4112->g_2505.y, p_4112->g_2505.y, p_4112->g_2505.y).z != (l_2512 = ((*p_4112->g_329) &= ((((l_2508[4] = (l_2507[3] = make_int3(l_2506.y, l_2506.y, l_2506.y).x)) & make_int1(p_4112->g_2509.y).x) || ((+(safe_mod_func_int64_t_s_s(p_33.f1, l_2457))) > 9UL)) ^ p_33.f1)))), (*l_2347))))), (*p_35))))) | 0x2203BFC40D4BCCC0LL)) | make_uchar2(0x43L, 0x43L))))) | make_uchar2(0UL, 0UL))), make_uchar2(0xA0L, 0xA0L)))).y & p_33.f2))), 0x2930L))) ^ p_33.f0) <= (**p_4112->g_1717)), l_2474)), 4294967295UL, 0UL).x, (***p_4112->g_1625)));
                    }
                    else
                    { /* block id: 927 */
                        (*p_4112->g_1946) |= ((safe_lshift_func_int16_t_s_s(make_short4(0x30B7L, ((safe_add_func_uint64_t_u_u(make_ulong4(((((safe_sub(((make_ulong1(0UL) ^ make_ulong1(l_2519.x))), make_ulong1(p_4112->g_2520.y)))) ^ ((make_ulong1(0xE33BADA0D975DAF9LL) ^ make_ulong1(l_2521.z))))).x, 5UL, make_ulong2(0xA701E565F01F4D64LL, 1UL).x, (*p_4112->g_329)).z, 3UL)) , (safe_rshift_func_int64_t_s_s((((l_2526[0] >= (((p_32.f0 >= ((p_33 , ((safe_rshift_func_int8_t_s_s(p_33.f2, ((l_2529 = &p_4112->g_1939) != l_2530))) != (**p_4112->g_1525))) == l_2464)) != p_32.f2) == 4294967287UL)) < 0xED78A951C2C613BELL) != 0x2190D265L), p_4112->g_2531))), 6L, 0xAF6BL).w, l_2507[3])) , l_2433.x);
                    }
                }
                ++l_2532.x;
                for (l_2426.f2 = (-12); (l_2426.f2 < 11); ++l_2426.f2)
                { /* block id: 935 */
                    int32_t *l_2563[4][4] = {{&l_2425, &p_4112->g_142[0], &l_2474, &p_4112->g_142[0]}, {&l_2425, &p_4112->g_142[0], &l_2474, &p_4112->g_142[0]}, {&l_2425, &p_4112->g_142[0], &l_2474, &p_4112->g_142[0]}, {&l_2425, &p_4112->g_142[0], &l_2474, &p_4112->g_142[0]}};
                    int i, j;
                    for (l_2456 = 2; (l_2456 <= (-22)); l_2456--)
                    { /* block id: 938 */
                        int32_t *****l_2539 = nullptr;
                        uint8_t *l_2557 = nullptr;
                        p_4112->g_774[1][2][4] = &p_4112->g_775;
                        (*p_4112->g_1946) ^= (safe_mod_func_int64_t_s_s(((l_2542 == ((*p_4112->g_958) = l_2542)) || (safe_mod_func_int32_t_s_s((safe_mod_func_int8_t_s_s(((*l_2442) = (safe_div_func_uint64_t_u_u((safe_sub_func_int16_t_s_s(((safe_sub_func_int64_t_s_s(((nullptr == l_2553) , (0L | ((*p_4112->g_1526) = make_short4(l_2554.x, l_2554.x, l_2554.x, l_2554.x).x))), ((*p_4112->g_329) = ((*p_4112->g_1095) , (safe_sub_func_uint16_t_u_u(((***p_4112->g_1939) == (((*l_2417) = ((p_33.f1 && ((*p_4112->g_992) |= ((((**p_4112->g_433) = l_2557) != l_2557) < l_2471))) < l_2455)) , l_2558)), l_2443)))))) | p_32.f1), l_2463[1])), p_33.f2))), p_32.f1)), 0x082A1820L))), 0x41ECDC8FF1B8A33ELL));
                    }
                    for (p_4112->g_1830 = 0; (p_4112->g_1830 < 16); p_4112->g_1830 = safe_add_func_int32_t_s_s(p_4112->g_1830, 9))
                    { /* block id: 951 */
                        uint16_t l_2561 = 65535UL;
                        (*p_4112->g_1946) &= ((make_int1((l_2561 || 0x1251A274L)) & make_int1(l_2562.x))).x;
                    }
                    if (((*p_4112->g_1946) = (*p_35)))
                    { /* block id: 955 */
                        l_2563[0][3] = p_35;
                    }
                    else
                    { /* block id: 957 */
                        uint8_t l_2565 = 0x6BL;
                        --l_2565;
                        (*p_4112->g_1946) = make_int3(l_2568.x, l_2568.x, l_2568.x).y;
                    }
                }
            }
            else
            { /* block id: 962 */
                for (p_4112->g_1905 = 0; (p_4112->g_1905 >= (-2)); p_4112->g_1905--)
                { /* block id: 965 */
                    int32_t l_2571 = 0x37F2A329L;
                    if ((*l_2347))
                        break;
                    for (l_2459 = 0; l_2459 < 10; l_2459 += 1)
                    {
                        for (p_4112->g_2416 = 0; p_4112->g_2416 < 4; p_4112->g_2416 += 1)
                        {
                            for (p_4112->g_1806 = 0; p_4112->g_1806 < 2; p_4112->g_1806 += 1)
                            {
                                l_2413[l_2459][p_4112->g_2416][p_4112->g_1806] = &p_4112->g_140.f2;
                            }
                        }
                    }
                    l_2571 &= ((*p_4112->g_1946) = l_2532.x);
                }
            }
        }
        else
        { /* block id: 972 */
            uint4 l_2578 = make_uint4(0UL, 4294967287UL, 0UL, 4294967287UL);
            int32_t l_2585[4];
            int32_t l_2588 = (-1L);
            uint16_t *l_2591 = nullptr;
            uint16_t *l_2592[6];
            uint64_t *l_2593 = nullptr;
            uint64_t *l_2594 = &p_4112->g_521;
            int32_t l_2596 = 0x573F6B7DL;
            union U1 l_2602 = {-1L};
            int64_t l_2628 = 0x71ED37821D49234ALL;
            int32_t l_2632 = 0x7BB8A1E8L;
            int32_t l_2633[1][9] = {{(-10L), 0x36D275C9L, (-10L), 0x36D275C9L, (-10L), 0x36D275C9L, (-10L), 0x36D275C9L, (-10L)}};
            uint32_t *****l_2648 = nullptr;
            uint32_t *****l_2649[7][6] = {{&p_4112->g_1939, &p_4112->g_1939, nullptr, &p_4112->g_1939, &p_4112->g_1939, &p_4112->g_1939}, {&p_4112->g_1939, &p_4112->g_1939, nullptr, &p_4112->g_1939, &p_4112->g_1939, &p_4112->g_1939}, {&p_4112->g_1939, &p_4112->g_1939, nullptr, &p_4112->g_1939, &p_4112->g_1939, &p_4112->g_1939}, {&p_4112->g_1939, &p_4112->g_1939, nullptr, &p_4112->g_1939, &p_4112->g_1939, &p_4112->g_1939}, {&p_4112->g_1939, &p_4112->g_1939, nullptr, &p_4112->g_1939, &p_4112->g_1939, &p_4112->g_1939}, {&p_4112->g_1939, &p_4112->g_1939, nullptr, &p_4112->g_1939, &p_4112->g_1939, &p_4112->g_1939}, {&p_4112->g_1939, &p_4112->g_1939, nullptr, &p_4112->g_1939, &p_4112->g_1939, &p_4112->g_1939}};
            int i, j;
            for (int i = 0; i < 4; i++)
                l_2585[i] = (-1L);
            for (int i = 0; i < 6; i++)
                l_2592[i] = nullptr;
            (*p_4112->g_1946) &= (((*l_2594) = ((*p_4112->g_329) = (make_long1(0xF55B890EE55B4E41LL).x != ((((safe_mod_func_uint64_t_u_u(((0UL != p_32.f1) || (l_2506.z = (((safe_div(((safe_mod(make_uint3(l_2578.w, l_2578.w, l_2578.w), make_uint3(4294967294UL, 4294967295UL, 1UL)))), make_uint3(4UL, (make_short2(((((safe_lshift_func_int8_t_s_s(p_4112->g_1321.y, 4)) , (safe_div_func_int16_t_s_s((((((make_short1(0L) ^ make_short1((***p_4112->g_1529)))).x < ((safe_div_func_int8_t_s_s(((((((*l_2358) = (*l_2358)) == (((l_2585[1] |= l_2578.x) < (safe_rshift_func_int32_t_s_s((l_2588 = l_2506.x), 28))) , l_2589)) != l_2590[4]) | l_2433.y) <= l_2578.x), 0x89L)) , 65527UL)) && p_32.f2) , l_2585[1]), p_33.f2))) < (*p_4112->g_1561)) != (-1L)), 0xFEB9L).x , l_2521.x), l_2578.y)))).z >= 0x50141C24L))), 0x446F62ADCCF96209LL)) , nullptr) != nullptr) != 0x4BL)))) == p_32.f2);
            l_2596 ^= ((**p_4112->g_1529) == ((!p_33.f1) , (l_2588 , l_2595)));
            for (l_2459 = 0; (l_2459 < 1); l_2459 = safe_add_func_int32_t_s_s(l_2459, 3))
            { /* block id: 983 */
                int32_t **l_2599 = &p_4112->g_1946;
                union U1 **l_2606 = &p_4112->g_1095;
                int32_t l_2625 = 0L;
                int32_t l_2626 = 1L;
                int32_t l_2627 = (-9L);
                int32_t l_2629 = 0L;
                int32_t l_2630 = 0xD5B499F1L;
                int32_t l_2631 = 0xDC441F28L;
                int32_t l_2634 = 1L;
                int32_t l_2636 = 0x968610F3L;
                int32_t l_2637 = 1L;
                int16_t l_2638 = 0xEEEAL;
                int32_t l_2639[8][1][9];
                int i, j, k;
                for (int i = 0; i < 8; i++)
                {
                    for (int j = 0; j < 1; j++)
                    {
                        for (int k = 0; k < 9; k++)
                            l_2639[i][j][k] = 0L;
                    }
                }
                (*l_2599) = l_2347;
                if (make_int3(l_2600.z, l_2600.z, l_2600.z).y)
                { /* block id: 985 */
                    (**l_2484) = l_2601;
                }
                else
                { /* block id: 987 */
                    int2 l_2605 = make_int2(0x186ABA45L, 0xFA1308E1L);
                    union U1 l_2643 = {-3L};
                    int i;
                    for (p_4112->g_134 = 0; (p_4112->g_134 <= 4); p_4112->g_134 += 1)
                    { /* block id: 990 */
                        return l_2602;
                    }
                    for (p_4112->g_917 = 0; (p_4112->g_917 >= 22); p_4112->g_917++)
                    { /* block id: 995 */
                        int8_t *l_2613 = &p_4112->g_2244[0][0];
                        int32_t l_2616 = 0xA7C8EB61L;
                        int32_t *l_2617 = nullptr;
                        int32_t *l_2618 = &l_2463[5];
                        int32_t *l_2619 = &p_4112->g_1903;
                        int32_t *l_2620 = nullptr;
                        int32_t *l_2621 = &p_4112->g_142[0];
                        int32_t *l_2622 = &l_2425;
                        int32_t *l_2623 = &l_2616;
                        int32_t *l_2624[8][6] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                        int i, j;
                        l_2616 &= ((make_int2(l_2605.x, l_2605.x) ^ make_int2(((nullptr == l_2606) < (safe_add_func_int32_t_s_s(l_2463[2], (safe_div_func_uint32_t_u_u(((safe_rshift_func_uint32_t_u_u((1UL <= (((*l_2613) = (((*p_4112->g_1625) != nullptr) == (**p_4112->g_1626))) > ((make_uchar1((**p_4112->g_1717)) | ((safe_sub(((((make_uchar1((**p_4112->g_434)) ^ make_uchar1(255UL))) ^ make_uchar1(246UL))), make_uchar1(1UL)))))).x)), 27)) , p_33.f2), (**l_2599)))))), (*p_4112->g_1946)))).y;
                        --l_2640;
                        if (l_2532.x)
                            continue;
                        return l_2643;
                    }
                }
            }
            for (p_4112->g_2047 = 4; (p_4112->g_2047 >= 0); p_4112->g_2047 -= 1)
            { /* block id: 1006 */
                int2 l_2644 = make_int2(0xCCF10E82L, (-1L));
                int32_t *l_2645 = &p_4112->g_917;
                int32_t **l_2688 = &p_4112->g_1946;
                uint16_t ***l_2691 = &l_2358;
                int32_t l_2692[2];
                int i;
                for (int i = 0; i < 2; i++)
                    l_2692[i] = 0xB0E794C3L;
                (*l_2645) |= make_int3(l_2644.y, l_2644.y, l_2644.y).x;
                for (p_4112->g_1239 = 1; (p_4112->g_1239 <= 4); p_4112->g_1239 += 1)
                { /* block id: 1010 */
                    int32_t *l_2662 = &l_2462;
                    int32_t l_2693[4][1];
                    uint32_t l_2694 = 3UL;
                    uint64_t l_2701 = 0x23FC1CCB03019E6FLL;
                    int i, j;
                    for (int i = 0; i < 4; i++)
                    {
                        for (int j = 0; j < 1; j++)
                            l_2693[i][j] = 0L;
                    }
                    for (l_2632 = 4; (l_2632 >= 0); l_2632 -= 1)
                    { /* block id: 1013 */
                        union U1 *l_2651 = &l_2426;
                        uint32_t ***l_2660 = &p_4112->g_1626;
                        int32_t *l_2661 = nullptr;
                        int32_t l_2687 = (-7L);
                        uint16_t ***l_2690 = &p_4112->g_1733;
                        uint16_t ****l_2689 = &l_2690;
                        int i, j, k;
                        (*p_4112->g_1759) = (*p_4112->g_1759);
                        (*l_2645) = ((((((safe_mod(make_short2(1L, (l_2648 == (l_2530 = (l_2649[3][1] = l_2530)))), make_short2(1L, 8L)))) ^ make_short2(0x3358L, 0x395BL))).x != (l_2650 != l_2651)) || ((safe_add_func_uint32_t_u_u((((-1L) & l_2455) && ((safe_add_func_uint16_t_u_u(1UL, ((safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s((l_2660 != ((*p_4112->g_1939) = nullptr)), 2)), (*p_4112->g_992))) == 0xEFL))) , (*l_2347))), 0x48EEDB98L)) , p_32.f2));
                        l_2662 = l_2661;
                        l_2357.z = (l_2693[3][0] = (safe_lshift_func_int64_t_s_s(make_long1(((*p_4112->g_329) | ((safe_add_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((((*l_2594) |= (safe_lshift_func_uint64_t_u_u((((safe_lshift_func_uint16_t_u_s((p_33.f2 > (*l_2347)), 3)) , p_32.f2) , p_33.f2), 44))) ^ (p_4112->g_1576.z--)), (((safe_div_func_uint16_t_u_u(((*l_2645) ^= (safe_add_func_int16_t_s_s(((((((((*p_35) ^ (l_2692[1] &= (safe_mul_func_uint64_t_u_u(p_33.f2, ((safe_add_func_uint64_t_u_u((*p_4112->g_329), (safe_mul_func_int8_t_s_s((((l_2691 = ((*l_2689) = (func_36((safe_sub_func_int16_t_s_s(((**p_4112->g_1094) , l_2687), p_32.f2)), l_2426, (*p_4112->g_775), (*p_4112->g_775), l_2688, p_4112) , nullptr))) != nullptr) <= p_32.f2), p_33.f1)))) != p_32.f2))))) > p_33.f1) > l_2578.w) & 0x37951B81L) , (**l_2688)) , (*p_4112->g_1094)) == (*p_4112->g_1094)), p_32.f2))), 0x367EL)) & l_2585[1]) == (*p_4112->g_992)))), (***p_4112->g_1524))) <= (*p_35)))).x, p_33.f2)));
                    }
                    l_2694--;
                    for (p_33.f0 = 3; (p_33.f0 >= 1); p_33.f0 -= 1)
                    { /* block id: 1032 */
                        int32_t *l_2697 = &p_4112->g_1903;
                        int32_t *l_2698 = &l_2596;
                        int32_t *l_2699 = nullptr;
                        int32_t *l_2700[4][4][1] = {{{&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}}, {{&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}}, {{&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}}, {{&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}, {&p_4112->g_142[2]}}};
                        int i, j, k;
                        --l_2701;
                        return (**p_4112->g_1094);
                    }
                }
            }
        }
    }
    for (p_4112->g_1239 = 0; (p_4112->g_1239 <= 4); p_4112->g_1239 += 1)
    { /* block id: 1042 */
        int16_t l_2709 = (-3L);
        short1 l_2715 = make_short1(0xD123L);
        int32_t l_2734[2];
        int32_t l_2745[9][7] = {{0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}, {0x77D260ECL, 0x7DBB42C6L, 0x28256F84L, 0x7DBB42C6L, 0x77D260ECL, 0xAC365786L, (-9L)}};
        int16_t ***l_2753 = &p_4112->g_1525;
        uint64_t l_2777 = 0xA04614E0E70BAA72LL;
        ulong2 l_2782 = make_ulong2(0UL, 1UL);
        int4 l_2818 = make_int4(0x263BABCCL, 0xC46C435BL, 0x263BABCCL, 0xC46C435BL);
        struct S0 *l_2821 = nullptr;
        int8_t l_2824 = (-1L);
        int64_t *l_2831 = &p_4112->g_2416;
        int2 l_2833 = make_int2(0xF9155D58L, (-7L));
        union U1 *l_2834 = nullptr;
        uint1 l_2857 = make_uint1(0UL);
        union U1 l_2911 = {0L};
        int32_t **l_2912 = &l_2347;
        int8_t ***l_2916 = &p_4112->g_2404;
        int i, j;
        for (int i = 0; i < 2; i++)
            l_2734[i] = 1L;
    }
    return l_2426;
}


/* ------------------------------------------ */
/* 
 * reads : p_4112->g_1758 p_4112->g_1759
 * writes: p_4112->g_1759
 */
__device__ struct S0  func_36(int8_t  p_37, union U1  p_38, int32_t ** p_39, int32_t ** p_40, int32_t ** p_41, struct S2 * p_4112)
{ /* block id: 882 */
    int64_t l_2320 = 0xD444F27946B75529LL;
    int32_t *l_2321 = nullptr;
    int32_t *l_2322 = &p_4112->g_917;
    int32_t *l_2323[7] = {&p_4112->g_142[0], &p_4112->g_142[0], nullptr, &p_4112->g_142[0], &p_4112->g_142[0], nullptr, &p_4112->g_142[0]};
    int32_t l_2324 = 0xC4808703L;
    uint64_t l_2325[7] = {1UL, 18446744073709551609UL, 1UL, 18446744073709551609UL, 1UL, 18446744073709551609UL, 1UL};
    struct S0 l_2328 = {5L,2L,0x3881D971L};
    int i;
    --l_2325[1];
    (*p_4112->g_1758) = (*p_4112->g_1758);
    return l_2328;
}


/* ------------------------------------------ */
/* 
 * reads : p_4112->g_2318
 * writes:
 */
__device__ int32_t ** func_43(uint16_t  p_44, union U1  p_45, struct S2 * p_4112)
{ /* block id: 21 */
    int32_t ***l_69 = nullptr;
    int32_t **l_1957[9] = {nullptr, nullptr, &p_4112->g_64[1], nullptr, nullptr, &p_4112->g_64[1], nullptr, nullptr, &p_4112->g_64[1]};
    ushort1 l_1999 = make_ushort1(0UL);
    int16_t ***l_2032 = &p_4112->g_1525;
    uint64_t l_2052 = 0x711508E36A5A3332LL;
    short2 l_2085 = make_short2(0xE051L, 1L);
    short4 l_2086 = make_short4(0L, (-1L), 0L, (-1L));
    ushort1 l_2099 = make_ushort1(65535UL);
    uint32_t ****l_2107 = &p_4112->g_1625;
    uint32_t l_2123 = 0UL;
    ushort3 l_2137 = make_ushort3(65535UL, 0x5738L, 65535UL);
    long3 l_2143 = make_long3(0xF28E5889C0A0288DLL, 9L, 0xF28E5889C0A0288DLL);
    short2 l_2170 = make_short2(9L, (-8L));
    union U1 **l_2180 = &p_4112->g_1095;
    int4 l_2200 = make_int4(1L, (-6L), 1L, (-6L));
    int32_t l_2275 = 0x254C0656L;
    int64_t l_2279 = 0x888A41A7936A0DADLL;
    int64_t l_2280 = 0x9C4AAAC702BE36A0LL;
    uint32_t l_2281 = 4294967295UL;
    int i;
    return p_4112->g_2318;
}


/* ------------------------------------------ */
/* 
 * reads : p_4112->g_1946 p_4112->g_1759 p_4112->g_396 p_4112->g_1561 p_4112->g_806 p_4112->g_434 p_4112->g_435 p_4112->g_1138 p_4112->g_1038 p_4112->g_1529 p_4112->g_1525 p_4112->g_1526 p_4112->g_1471 p_4112->g_1524 p_4112->g_963 hip_const_2 p_4112->g_1903 p_4112->g_917
 * writes: p_4112->g_1903 p_4112->g_396 p_4112->g_806 p_4112->g_132 p_4112->g_917
 */
__device__ int32_t * func_53(int32_t ** p_54, int32_t ** p_55, struct S2 * p_4112)
{ /* block id: 736 */
    int64_t l_1958[1];
    int32_t l_1959[9] = {9L, 0x705826A1L, 9L, 0x705826A1L, 9L, 0x705826A1L, 9L, 0x705826A1L, 9L};
    long4 l_1970 = make_long4(0xB6D71226635AE45BLL, 3L, 0xB6D71226635AE45BLL, 3L);
    union U1 l_1971 = {0x694DCDECD84E8CEDLL};
    int8_t *l_1972 = &p_4112->g_1239;
    int8_t *l_1974 = nullptr;
    int8_t **l_1973 = &l_1974;
    int16_t l_1975[7];
    ushort3 l_1976 = make_ushort3(0UL, 0x2897L, 0UL);
    uchar3 l_1977 = make_uchar3(0x38L, 0x3DL, 0x38L);
    union U1 **l_1980[1][5][10] = {{{&p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, nullptr, &p_4112->g_1095, nullptr, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095}, {&p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, nullptr, &p_4112->g_1095, nullptr, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095}, {&p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, nullptr, &p_4112->g_1095, nullptr, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095}, {&p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, nullptr, &p_4112->g_1095, nullptr, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095}, {&p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, nullptr, &p_4112->g_1095, nullptr, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095, &p_4112->g_1095}}};
    int64_t *****l_1981 = &p_4112->g_959;
    int64_t *****l_1982 = &p_4112->g_929[4][0];
    uint32_t *l_1983 = &p_4112->g_103[1][1];
    int32_t l_1984 = (-1L);
    int64_t l_1985 = 1L;
    int32_t l_1986 = (-1L);
    uint32_t l_1987 = 4294967294UL;
    int32_t *l_1988 = &l_1984;
    int32_t *l_1989 = &p_4112->g_917;
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_1958[i] = 0xBE60C62E70A77F8ELL;
    for (int i = 0; i < 7; i++)
        l_1975[i] = 1L;
    l_1959[3] &= (!l_1958[0]);
    (*p_4112->g_1946) = 0x4A35671BL;
    (*p_4112->g_1759) = (*p_4112->g_1759);
    (*p_4112->g_1946) &= (l_1987 |= (safe_rshift_func_int16_t_s_s((l_1958[0] || ((((safe_sub_func_uint16_t_u_u((((safe_sub_func_uint8_t_u_u(make_uchar1(((~(l_1986 = make_uint3(18446744073709551615UL, (((make_uchar1(((**p_4112->g_434) = (safe_rshift_func_uint8_t_u_s((safe_lshift_func_int64_t_s_s(((*p_4112->g_1561) |= make_long1(l_1970.z).x), 37)), (l_1971 , (l_1972 != ((*l_1973) = l_1972))))))).x <= ((((l_1975[6] && ((((((make_ushort1(l_1976.x).x <= (l_1959[0] | make_uchar1(l_1977.y).x)) <= ((((safe_sub_func_int8_t_s_s(make_char2((make_ulong3(0x6E2CB0DAA4B35DEDLL, 0xBEF711E883802A89LL, 0x8B5D1EFB1E84777FLL).x <= (((l_1981 = (make_int2((l_1980[0][4][4] == l_1980[0][2][6]), 0x847E2376L).y , l_1981)) != l_1982) < p_4112->g_1138.y)), 0x09L).x, p_4112->g_1038.y)) > (***p_4112->g_1529)) , nullptr) != l_1983)) == l_1984) || (-1L)) & 0x66958D51L) , 0x7395EC05L)) > l_1958[0]) ^ 0x80L) < l_1985)) , (***p_4112->g_1524)) & l_1975[6]), (*p_4112->g_963)).y)) , 0x9CL)).x, l_1971.f0)) & (***p_4112->g_1529)) ^ l_1976.y), l_1976.x)) && 255UL) <= 0x633CEB34L) , 4294967295UL)), l_1977.x)));
    return l_1989;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ int32_t ** func_56(int32_t ** p_57, int32_t ** p_58, uint8_t  p_59, struct S2 * p_4112)
{ /* block id: 25 */
    int16_t l_70[4][4] = {{1L, 0xC218L, 1L, 0xC218L}, {1L, 0xC218L, 1L, 0xC218L}, {1L, 0xC218L, 1L, 0xC218L}, {1L, 0xC218L, 1L, 0xC218L}};
    int32_t ***l_81 = &p_4112->g_48[0][0];
    struct S0 l_139 = {-1L,0x390C49C4L,2UL};
    uint32_t l_141 = 0x45DBAEAEL;
    int64_t *l_159 = nullptr;
    int2 l_172 = make_int2(0x1C83726DL, 1L);
    uchar2 l_210 = make_uchar2(0xD6L, 0x19L);
    uint16_t l_283 = 1UL;
    uchar1 l_292 = make_uchar1(0x8EL);
    short4 l_326 = make_short4(0L, (-1L), 0L, (-1L));
    uint64_t *l_330 = &p_4112->g_108;
    uchar2 l_344 = make_uchar2(249UL, 6UL);
    int4 l_354 = make_int4(0xD94092DDL, 2L, 0xD94092DDL, 2L);
    int64_t **l_379 = &l_159;
    int32_t l_387 = 0x5DE98533L;
    uint16_t l_391[7] = {6UL, 0UL, 6UL, 0UL, 6UL, 0UL, 6UL};
    union U1 l_401 = {1L};
    ulong1 l_408 = make_ulong1(0x74CCCD61FAC696D2LL);
    int1 l_409 = make_int1((-7L));
    uchar2 l_414 = make_uchar2(2UL, 0x38L);
    ulong3 l_418 = make_ulong3(6UL, 0x1CAB270CE44594A0LL, 6UL);
    int64_t l_503 = 0L;
    int16_t *l_507 = &l_70[2][2];
    int16_t **l_506 = &l_507;
    uint32_t *l_549 = &hip_const_2;
    int64_t l_566 = 0x58371FA1E8CE01D9LL;
    int8_t l_581 = 0xFEL;
    uint2 l_698 = make_uint2(4294967291UL, 4294967293UL);
    ushort2 l_710 = make_ushort2(0x8556L, 0UL);
    long1 l_771 = make_long1((-1L));
    uint16_t l_802 = 0x46BEL;
    uchar3 l_834 = make_uchar3(0UL, 8UL, 0UL);
    int32_t **l_884 = nullptr;
    long4 l_910 = make_long4(6L, 5L, 6L, 5L);
    int64_t ***l_928 = &p_4112->g_378;
    int64_t ****l_927 = &l_928;
    int64_t ****l_957 = nullptr;
    int64_t *****l_956 = &l_957;
    uint8_t ***l_1022 = &p_4112->g_434;
    long1 l_1053 = make_long1(0xF9972803B25FA9F5LL);
    uint32_t l_1073 = 1UL;
    uchar4 l_1106 = make_uchar4(1UL, 2UL, 1UL, 2UL);
    long2 l_1139 = make_long2((-1L), 1L);
    uint32_t l_1150 = 4294967295UL;
    uint32_t l_1193[10] = {0x2FCC86A6L, 0x2FCC86A6L, 0x95E32BE5L, 0x2FCC86A6L, 0x2FCC86A6L, 0x95E32BE5L, 0x2FCC86A6L, 0x2FCC86A6L, 0x95E32BE5L, 0x2FCC86A6L};
    int16_t l_1195[2][3][10] = {{{0x365DL, 0L, 4L, 0xBA8FL, 0L, 0xCA63L, 0L, 0xBA8FL, 4L, 0L}, {0x365DL, 0L, 4L, 0xBA8FL, 0L, 0xCA63L, 0L, 0xBA8FL, 4L, 0L}, {0x365DL, 0L, 4L, 0xBA8FL, 0L, 0xCA63L, 0L, 0xBA8FL, 4L, 0L}}, {{0x365DL, 0L, 4L, 0xBA8FL, 0L, 0xCA63L, 0L, 0xBA8FL, 4L, 0L}, {0x365DL, 0L, 4L, 0xBA8FL, 0L, 0xCA63L, 0L, 0xBA8FL, 4L, 0L}, {0x365DL, 0L, 4L, 0xBA8FL, 0L, 0xCA63L, 0L, 0xBA8FL, 4L, 0L}}};
    int64_t *l_1197 = nullptr;
    uint32_t l_1205 = 4294967293UL;
    ushort1 l_1268 = make_ushort1(0UL);
    int8_t l_1317 = 0x39L;
    long4 l_1344 = make_long4(0x5FAB9EEF938D03B2LL, 1L, 0x5FAB9EEF938D03B2LL, 1L);
    int8_t l_1352 = 0x11L;
    uchar3 l_1406 = make_uchar3(250UL, 3UL, 250UL);
    int3 l_1415 = make_int3(0L, 0x3D2939D8L, 0L);
    int32_t l_1470 = 0x7F51409AL;
    int32_t l_1472 = 0x6E07D969L;
    int32_t **l_1492[6][10] = {{&p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437}, {&p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437}, {&p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437}, {&p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437}, {&p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437}, {&p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437, &p_4112->g_64[1], &p_4112->g_437}};
    uchar2 l_1500 = make_uchar2(0x08L, 0x65L);
    long2 l_1516 = make_long2(0x2C689FDD51B29EB6LL, 1L);
    uint32_t l_1567[7];
    union U1 **l_1644 = &p_4112->g_1095;
    uint64_t *l_1655 = nullptr;
    int1 l_1669 = make_int1(0xD01F821CL);
    int32_t l_1728 = 0xF76E4468L;
    uint16_t l_1807 = 65532UL;
    int8_t l_1829 = 0x2CL;
    int8_t l_1866 = 0xDBL;
    int1 l_1868 = make_int1(0xE30D7D1AL);
    uint8_t *l_1869 = nullptr;
    uint32_t **l_1889 = nullptr;
    uint16_t l_1892 = 65535UL;
    uint32_t ***l_1913 = &p_4112->g_1626;
    uint16_t l_1933 = 0x9BF5L;
    uint8_t l_1934 = 0x76L;
    int32_t **l_1944 = &p_4112->g_64[5];
    int i, j, k;
    for (int i = 0; i < 7; i++)
        l_1567[i] = 0x7B90CC66L;
    l_70[2][2] ^= 0x4DC47558L;
    return p_57;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S2 c_4113;
    struct S2* p_4112 = &c_4113;
    struct S2 c_4114 = {
        .g_6 = {4L},
        .g_16 = make_ushort2(0x0863L, 7UL),
        .g_22 = 1L,
        .g_48 = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}},
        .g_64 = {&hip_const_4, &hip_const_4, &hip_const_4, &hip_const_4, &hip_const_4, &hip_const_4, &hip_const_4, &hip_const_4, &hip_const_4},
        .g_63 = {&p_4112->g_64[1]},
        .g_80 = make_uint3(0x5A1CDA01L, 0x852BC533L, 0x5A1CDA01L),
        .g_88 = make_ulong1(18446744073709551611UL),
        .g_103 = {{4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL}, {4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL}},
        .g_102 = &p_4112->g_103[0][6],
        .g_106 = 0L,
        .g_108 = 8UL,
        .g_112 = make_long1(0x9AF8E2B3D635D9A7LL),
        .g_132 = 0xA7L,
        .g_134 = 255UL,
        .g_140 = {0x18L,0x9CC9C010L,7UL},
        .g_142 = {1L, 1L, 1L, 1L, 1L},
        .g_196 = make_int2((-1L), 4L),
        .g_278 = make_long1(0L),
        .g_311 = make_uchar2(0x7CL, 5UL),
        .g_329 = &p_4112->g_108,
        .g_338 = 4294967293UL,
        .g_343 = make_uchar3(8UL, 255UL, 8UL),
        .g_345 = make_uchar4(0x5DL, 6UL, 0x5DL, 6UL),
        .g_353 = make_ushort1(7UL),
        .g_378 = nullptr,
        .g_396 = {{{{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}}, {{{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}}, {{{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}}, {{{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}, {{0L,1L,0UL}, {9L,9L,0xC17438A5L}, {0xC8L,-7L,0x2C7F3EB5L}, {1L,0x67EDE7A5L,18446744073709551615UL}, {9L,9L,0xC17438A5L}, {-10L,-2L,18446744073709551615UL}, {-8L,-5L,2UL}, {0L,-1L,18446744073709551615UL}, {0L,0xCBE8DE9CL,0xCC93BDCDL}}}},
        .g_415 = make_char4(9L, (-5L), 9L, (-5L)),
        .g_423 = make_char4(0x11L, 4L, 0x11L, 4L),
        .g_431 = make_short2(0x1A11L, 0x5231L),
        .g_435 = &p_4112->g_132,
        .g_434 = &p_4112->g_435,
        .g_433 = &p_4112->g_434,
        .g_437 = nullptr,
        .g_460 = make_int4((-1L), 0x2683E8A6L, (-1L), 0x2683E8A6L),
        .g_490 = 65533UL,
        .g_500 = make_int4(0x31299FD8L, 0L, 0x31299FD8L, 0L),
        .g_521 = 0UL,
        .g_524 = make_uint1(4294967291UL),
        .g_546 = make_ushort2(65535UL, 0UL),
        .g_552 = make_ulong1(5UL),
        .g_556 = make_ulong4(0x2656E27BA8782FEBLL, 18446744073709551615UL, 0x2656E27BA8782FEBLL, 18446744073709551615UL),
        .g_618 = make_char1(0xA2L),
        .g_645 = make_ushort3(65533UL, 0xF838L, 65533UL),
        .g_667 = 0x5E395B89L,
        .g_716 = make_ulong1(0x7C4A829ACF950E04LL),
        .g_730 = make_uint4(5UL, 18446744073709551615UL, 5UL, 18446744073709551615UL),
        .g_775 = &p_4112->g_48[0][5],
        .g_774 = {{{&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}}, {{&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}}, {{&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}}, {{&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}}, {{&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}, {&p_4112->g_775, nullptr, nullptr, nullptr, &p_4112->g_775}}},
        .g_806 = 0x2F053604484A7F8DLL,
        .g_807 = 0L,
        .g_857 = make_int2(1L, 0x5BC73A08L),
        .g_862 = make_long3(0x1521855F673D51C2LL, 0x3833D904C9C63364LL, 0x1521855F673D51C2LL),
        .g_911 = make_long1(0x85ED74D908658B2ALL),
        .g_913 = make_long1((-1L)),
        .g_917 = 0x35C4FC67L,
        .g_930 = &p_4112->g_378,
        .g_929 = {{&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}, {&p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930, &p_4112->g_930}},
        .g_959 = nullptr,
        .g_958 = &p_4112->g_959,
        .g_963 = &hip_const_2,
        .g_962 = &p_4112->g_963,
        .g_977 = make_ulong1(0xDA6B2E932630959CLL),
        .g_992 = &p_4112->g_134,
        .g_995 = make_long4(0x531143D3A29DDFE2LL, 0x211BFE4A32B949F5LL, 0x531143D3A29DDFE2LL, 0x211BFE4A32B949F5LL),
        .g_1017 = make_long2(0x15A346DA97E711A0LL, 9L),
        .g_1038 = make_char2((-1L), 1L),
        .g_1066 = make_long1(0xE8365EA7A40FC4E7LL),
        .g_1095 = &p_4112->g_6,
        .g_1094 = &p_4112->g_1095,
        .g_1137 = make_long3(2L, (-3L), 2L),
        .g_1138 = make_long3(8L, 0L, 8L),
        .g_1141 = make_uchar2(255UL, 0x8EL),
        .g_1181 = make_short3(0x35BEL, 0x94FBL, 0x35BEL),
        .g_1187 = make_char4(0xBAL, (-1L), 0xBAL, (-1L)),
        .g_1191 = make_char2(0x79L, 0x2EL),
        .g_1213 = make_uchar4(0x32L, 0xE3L, 0x32L, 0xE3L),
        .g_1239 = 0x62L,
        .g_1250 = make_uint3(4294967288UL, 0x2D88365AL, 4294967288UL),
        .g_1265 = make_uchar2(255UL, 255UL),
        .g_1269 = make_ulong1(0x34A034C1887E8CE2LL),
        .g_1282 = make_uchar2(0xF9L, 0x9AL),
        .g_1288 = make_int4((-1L), (-7L), (-1L), (-7L)),
        .g_1289 = make_int4(0L, (-4L), 0L, (-4L)),
        .g_1308 = make_ushort2(8UL, 0x7AABL),
        .g_1309 = make_ushort3(8UL, 0x5CD5L, 8UL),
        .g_1321 = make_int2((-3L), 0xEC3D652BL),
        .g_1356 = make_short1(0xE4BEL),
        .g_1368 = make_uchar2(9UL, 252UL),
        .g_1369 = make_uchar3(0x52L, 0x92L, 0x52L),
        .g_1403 = make_int3(0xF8FEDC51L, 1L, 0xF8FEDC51L),
        .g_1412 = make_int4((-1L), 0L, (-1L), 0L),
        .g_1446 = make_uint1(1UL),
        .g_1471 = {{{0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}}, {{0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}}, {{0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}}, {{0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}}, {{0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}}, {{0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}}, {{0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}, {0L, 0x8BADL, (-4L), 5L, 0L}}},
        .g_1526 = &p_4112->g_1471[4][2][4],
        .g_1525 = &p_4112->g_1526,
        .g_1524 = &p_4112->g_1525,
        .g_1529 = &p_4112->g_1525,
        .g_1561 = &p_4112->g_806,
        .g_1576 = make_ulong4(18446744073709551615UL, 0xC189D9FDDDE713CALL, 18446744073709551615UL, 0xC189D9FDDDE713CALL),
        .g_1579 = make_ulong3(3UL, 7UL, 3UL),
        .g_1586 = make_int2(0x3C1B20FCL, 0xA7C8AE6FL),
        .g_1626 = &p_4112->g_102,
        .g_1625 = &p_4112->g_1626,
        .g_1717 = &p_4112->g_435,
        .g_1720 = make_uint3(0x581AC5A3L, 0x967814A9L, 0x581AC5A3L),
        .g_1734 = {&hip_const_1, &hip_const_1, nullptr, &hip_const_1, &hip_const_1, nullptr, &hip_const_1, &hip_const_1, nullptr, &hip_const_1},
        .g_1733 = &p_4112->g_1734[8],
        .g_1745 = make_uint2(0x42D52F09L, 4294967295UL),
        .g_1759 = &p_4112->g_396[2][4][8],
        .g_1758 = &p_4112->g_1759,
        .g_1767 = make_int1(0xE75331E3L),
        .g_1806 = 18446744073709551615UL,
        .g_1823 = make_ulong1(0UL),
        .g_1830 = 0xE88510AEL,
        .g_1843 = make_char1((-1L)),
        .g_1848 = make_char4(0x7FL, (-1L), 0x7FL, (-1L)),
        .g_1903 = 1L,
        .g_1905 = (-2L),
        .g_1914 = make_short1(0x19F2L),
        .g_1928 = make_ulong3(0x0205D170DA48ED95LL, 8UL, 0x0205D170DA48ED95LL),
        .g_1939 = &p_4112->g_1625,
        .g_1938 = &p_4112->g_1939,
        .g_1941 = nullptr,
        .g_1946 = &p_4112->g_1903,
        .g_2006 = make_short4((-4L), 0x2341L, (-4L), 0x2341L),
        .g_2017 = make_ushort1(0xDD34L),
        .g_2031 = make_uchar1(0x8DL),
        .g_2047 = (-7L),
        .g_2098 = make_ushort1(0x0354L),
        .g_2130 = make_uchar3(0UL, 0x2EL, 0UL),
        .g_2142 = make_long2(0xA13A6905ADC40571LL, (-6L)),
        .g_2146 = make_long2(0L, 8L),
        .g_2173 = make_short4(1L, 0L, 1L, 0L),
        .g_2176 = 0xC579L,
        .g_2244 = {{0L, 0L, 0L}},
        .g_2249 = 65535UL,
        .g_2271 = make_int3(0x6D6C801AL, 0x4548417AL, 0x6D6C801AL),
        .g_2297 = make_long3((-1L), 2L, (-1L)),
        .g_2298 = make_long4(0L, 0x2D8A93EE1F98F9E4LL, 0L, 0x2D8A93EE1F98F9E4LL),
        .g_2312 = make_uint1(0xF3F6C31DL),
        .g_2318 = nullptr,
        .g_2404 = nullptr,
        .g_2416 = 0xC71FA27931A2AD7CLL,
        .g_2495 = make_uchar2(0xACL, 9UL),
        .g_2505 = make_long4(1L, (-10L), 1L, (-10L)),
        .g_2509 = make_int3(0x2E0F217FL, 0x47C27D46L, 0x2E0F217FL),
        .g_2520 = make_ulong3(0UL, 1UL, 0UL),
        .g_2531 = 0xE25C5974981D2BFCLL,
        .g_2752 = make_uint4(4294967286UL, 0UL, 4294967286UL, 0UL),
        .g_2776 = make_short4(0x3CC7L, (-1L), 0x3CC7L, (-1L)),
        .g_2830 = make_int3(0x12D864FEL, 0L, 0x12D864FEL),
        .g_2832 = nullptr,
        .g_2892 = make_char3(7L, (-6L), 7L),
        .g_2917 = &p_4112->g_2404,
        .g_2943 = make_char4((-1L), (-1L), (-1L), (-1L)),
        .g_2960 = make_int2(0x90A4A615L, 1L),
        .g_2976 = make_long4(0x593587B4016FACBALL, (-1L), 0x593587B4016FACBALL, (-1L)),
        .g_2988 = make_ulong1(0xD2064F186F196508LL),
        .g_2991 = make_ulong1(18446744073709551610UL),
        .g_2997 = make_uint3(1UL, 4294967295UL, 1UL),
        .g_3012 = make_short2(0xA2DEL, 0x6145L),
        .g_3017 = {8L,0xE9C83BF4L,2UL},
        .g_3036 = &p_4112->g_1094,
        .g_3035 = &p_4112->g_3036,
        .g_3041 = make_uchar1(0xDDL),
        .g_3067 = make_uint2(0x784FBA82L, 7UL),
        .g_3078 = make_short4(6L, 0x7222L, 6L, 0x7222L),
        .g_3082 = make_short1(0L),
        .g_3104 = make_short4((-7L), (-6L), (-7L), (-6L)),
        .g_3122 = make_uchar2(255UL, 255UL),
        .g_3138 = make_uint3(0xD091B1DEL, 0x4FDBB63DL, 0xD091B1DEL),
        .g_3156 = make_char4(0xC5L, 0x6FL, 0xC5L, 0x6FL),
        .g_3157 = make_char4((-5L), 4L, (-5L), 4L),
        .g_3171 = make_char1(1L),
        .g_3178 = make_char2(0xD4L, 0x6DL),
        .g_3181 = make_char4(0x4EL, 0xE3L, 0x4EL, 0xE3L),
        .g_3249 = make_int1(2L),
        .g_3270 = &p_4112->g_1524,
        .g_3269 = &p_4112->g_3270,
        .g_3284 = make_uchar3(252UL, 0x5CL, 252UL),
        .g_3305 = make_uchar2(0x4DL, 0x04L),
        .g_3323 = make_ushort4(0x8E1FL, 0x994FL, 0x8E1FL, 0x994FL),
        .g_3345 = 0UL,
        .g_3377 = make_uchar3(252UL, 0xFCL, 252UL),
        .g_3378 = (-10L),
        .g_3382 = 0xD769L,
        .g_3403 = (-1L),
        .g_3550 = {-1L},
        .g_3571 = {0xEF85132B258B4914LL, 0xEF85132B258B4914LL, 0xEF85132B258B4914LL, 0xEF85132B258B4914LL},
        .g_3573 = 0xF9L,
        .g_3585 = make_ushort4(65529UL, 65535UL, 65529UL, 65535UL),
        .g_3625 = make_uchar4(255UL, 0UL, 255UL, 0UL),
        .g_3662 = make_ushort1(0x52A5L),
        .g_3665 = make_ushort3(4UL, 0x45FFL, 4UL),
        .g_3673 = {&p_4112->g_774[1][0][2], &p_4112->g_774[1][0][2], &p_4112->g_774[1][0][2]},
        .g_3675 = &p_4112->g_1758,
        .g_3674 = &p_4112->g_3675,
        .g_3679 = make_int1(0x4AFBDAF2L),
        .g_3680 = make_int4((-1L), (-1L), (-1L), (-1L)),
        .g_3681 = make_int3(1L, 0x5896856AL, 1L),
        .g_3685 = nullptr,
        .g_3761 = make_ushort3(0xA719L, 0xD8B2L, 0xA719L),
        .g_3791 = nullptr,
        .g_3805 = make_short3(0L, 0x163AL, 0L),
        .g_3810 = make_int1(0xDE5A5934L),
        .g_3877 = 1UL,
        .g_3941 = make_long3(0x123ABABE1B10806CLL, (-1L), 0x123ABABE1B10806CLL),
        .g_3942 = make_long3(7L, 0xAB852F30FE9941F0LL, 7L),
        .g_3943 = make_long1((-1L)),
        .g_3973 = make_uint2(0x175D6724L, 4294967295UL),
        .g_3974 = make_int1(0L),
        .g_4008 = make_int1((-1L)),
        .g_4099 = 18446744073709551615UL,
        .g_4107 = 0x99BB70717E5F305ELL,
        .g_4111 = 4294967290UL,
    };
    c_4113 = c_4114;

    // Execute core logic
    func_1(p_4112);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(p_4112->g_16.x, "p_4112->g_16.x", print_hash_value);
    transparent_crc(p_4112->g_16.y, "p_4112->g_16.y", print_hash_value);
    transparent_crc(p_4112->g_22, "p_4112->g_22", print_hash_value);
    transparent_crc(p_4112->g_80.x, "p_4112->g_80.x", print_hash_value);
    transparent_crc(p_4112->g_80.y, "p_4112->g_80.y", print_hash_value);
    transparent_crc(p_4112->g_80.z, "p_4112->g_80.z", print_hash_value);
    transparent_crc(p_4112->g_88.x, "p_4112->g_88.x", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            transparent_crc(p_4112->g_103[i][j], "p_4112->g_103[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4112->g_106, "p_4112->g_106", print_hash_value);
    transparent_crc(p_4112->g_108, "p_4112->g_108", print_hash_value);
    transparent_crc(p_4112->g_112.x, "p_4112->g_112.x", print_hash_value);
    transparent_crc(p_4112->g_132, "p_4112->g_132", print_hash_value);
    transparent_crc(p_4112->g_134, "p_4112->g_134", print_hash_value);
    transparent_crc(p_4112->g_140.f0, "p_4112->g_140.f0", print_hash_value);
    transparent_crc(p_4112->g_140.f1, "p_4112->g_140.f1", print_hash_value);
    transparent_crc(p_4112->g_140.f2, "p_4112->g_140.f2", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        transparent_crc(p_4112->g_142[i], "p_4112->g_142[i]", print_hash_value);

    }
    transparent_crc(p_4112->g_196.x, "p_4112->g_196.x", print_hash_value);
    transparent_crc(p_4112->g_196.y, "p_4112->g_196.y", print_hash_value);
    transparent_crc(p_4112->g_278.x, "p_4112->g_278.x", print_hash_value);
    transparent_crc(p_4112->g_311.x, "p_4112->g_311.x", print_hash_value);
    transparent_crc(p_4112->g_311.y, "p_4112->g_311.y", print_hash_value);
    transparent_crc(p_4112->g_338, "p_4112->g_338", print_hash_value);
    transparent_crc(p_4112->g_343.x, "p_4112->g_343.x", print_hash_value);
    transparent_crc(p_4112->g_343.y, "p_4112->g_343.y", print_hash_value);
    transparent_crc(p_4112->g_343.z, "p_4112->g_343.z", print_hash_value);
    transparent_crc(p_4112->g_345.x, "p_4112->g_345.x", print_hash_value);
    transparent_crc(p_4112->g_345.y, "p_4112->g_345.y", print_hash_value);
    transparent_crc(p_4112->g_345.z, "p_4112->g_345.z", print_hash_value);
    transparent_crc(p_4112->g_345.w, "p_4112->g_345.w", print_hash_value);
    transparent_crc(p_4112->g_353.x, "p_4112->g_353.x", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 7; j++)
        {
            for (int k = 0; k < 9; k++)
            {
                transparent_crc(p_4112->g_396[i][j][k].f0, "p_4112->g_396[i][j][k].f0", print_hash_value);
                transparent_crc(p_4112->g_396[i][j][k].f1, "p_4112->g_396[i][j][k].f1", print_hash_value);
                transparent_crc(p_4112->g_396[i][j][k].f2, "p_4112->g_396[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_4112->g_415.x, "p_4112->g_415.x", print_hash_value);
    transparent_crc(p_4112->g_415.y, "p_4112->g_415.y", print_hash_value);
    transparent_crc(p_4112->g_415.z, "p_4112->g_415.z", print_hash_value);
    transparent_crc(p_4112->g_415.w, "p_4112->g_415.w", print_hash_value);
    transparent_crc(p_4112->g_423.x, "p_4112->g_423.x", print_hash_value);
    transparent_crc(p_4112->g_423.y, "p_4112->g_423.y", print_hash_value);
    transparent_crc(p_4112->g_423.z, "p_4112->g_423.z", print_hash_value);
    transparent_crc(p_4112->g_423.w, "p_4112->g_423.w", print_hash_value);
    transparent_crc(p_4112->g_431.x, "p_4112->g_431.x", print_hash_value);
    transparent_crc(p_4112->g_431.y, "p_4112->g_431.y", print_hash_value);
    transparent_crc(p_4112->g_460.x, "p_4112->g_460.x", print_hash_value);
    transparent_crc(p_4112->g_460.y, "p_4112->g_460.y", print_hash_value);
    transparent_crc(p_4112->g_460.z, "p_4112->g_460.z", print_hash_value);
    transparent_crc(p_4112->g_460.w, "p_4112->g_460.w", print_hash_value);
    transparent_crc(p_4112->g_490, "p_4112->g_490", print_hash_value);
    transparent_crc(p_4112->g_500.x, "p_4112->g_500.x", print_hash_value);
    transparent_crc(p_4112->g_500.y, "p_4112->g_500.y", print_hash_value);
    transparent_crc(p_4112->g_500.z, "p_4112->g_500.z", print_hash_value);
    transparent_crc(p_4112->g_500.w, "p_4112->g_500.w", print_hash_value);
    transparent_crc(p_4112->g_521, "p_4112->g_521", print_hash_value);
    transparent_crc(p_4112->g_524.x, "p_4112->g_524.x", print_hash_value);
    transparent_crc(p_4112->g_546.x, "p_4112->g_546.x", print_hash_value);
    transparent_crc(p_4112->g_546.y, "p_4112->g_546.y", print_hash_value);
    transparent_crc(p_4112->g_552.x, "p_4112->g_552.x", print_hash_value);
    transparent_crc(p_4112->g_556.x, "p_4112->g_556.x", print_hash_value);
    transparent_crc(p_4112->g_556.y, "p_4112->g_556.y", print_hash_value);
    transparent_crc(p_4112->g_556.z, "p_4112->g_556.z", print_hash_value);
    transparent_crc(p_4112->g_556.w, "p_4112->g_556.w", print_hash_value);
    transparent_crc(p_4112->g_618.x, "p_4112->g_618.x", print_hash_value);
    transparent_crc(p_4112->g_645.x, "p_4112->g_645.x", print_hash_value);
    transparent_crc(p_4112->g_645.y, "p_4112->g_645.y", print_hash_value);
    transparent_crc(p_4112->g_645.z, "p_4112->g_645.z", print_hash_value);
    transparent_crc(p_4112->g_667, "p_4112->g_667", print_hash_value);
    transparent_crc(p_4112->g_716.x, "p_4112->g_716.x", print_hash_value);
    transparent_crc(p_4112->g_730.x, "p_4112->g_730.x", print_hash_value);
    transparent_crc(p_4112->g_730.y, "p_4112->g_730.y", print_hash_value);
    transparent_crc(p_4112->g_730.z, "p_4112->g_730.z", print_hash_value);
    transparent_crc(p_4112->g_730.w, "p_4112->g_730.w", print_hash_value);
    transparent_crc(p_4112->g_806, "p_4112->g_806", print_hash_value);
    transparent_crc(p_4112->g_807, "p_4112->g_807", print_hash_value);
    transparent_crc(p_4112->g_857.x, "p_4112->g_857.x", print_hash_value);
    transparent_crc(p_4112->g_857.y, "p_4112->g_857.y", print_hash_value);
    transparent_crc(p_4112->g_862.x, "p_4112->g_862.x", print_hash_value);
    transparent_crc(p_4112->g_862.y, "p_4112->g_862.y", print_hash_value);
    transparent_crc(p_4112->g_862.z, "p_4112->g_862.z", print_hash_value);
    transparent_crc(p_4112->g_911.x, "p_4112->g_911.x", print_hash_value);
    transparent_crc(p_4112->g_913.x, "p_4112->g_913.x", print_hash_value);
    transparent_crc(p_4112->g_917, "p_4112->g_917", print_hash_value);
    transparent_crc(p_4112->g_977.x, "p_4112->g_977.x", print_hash_value);
    transparent_crc(p_4112->g_995.x, "p_4112->g_995.x", print_hash_value);
    transparent_crc(p_4112->g_995.y, "p_4112->g_995.y", print_hash_value);
    transparent_crc(p_4112->g_995.z, "p_4112->g_995.z", print_hash_value);
    transparent_crc(p_4112->g_995.w, "p_4112->g_995.w", print_hash_value);
    transparent_crc(p_4112->g_1017.x, "p_4112->g_1017.x", print_hash_value);
    transparent_crc(p_4112->g_1017.y, "p_4112->g_1017.y", print_hash_value);
    transparent_crc(p_4112->g_1038.x, "p_4112->g_1038.x", print_hash_value);
    transparent_crc(p_4112->g_1038.y, "p_4112->g_1038.y", print_hash_value);
    transparent_crc(p_4112->g_1066.x, "p_4112->g_1066.x", print_hash_value);
    transparent_crc(p_4112->g_1137.x, "p_4112->g_1137.x", print_hash_value);
    transparent_crc(p_4112->g_1137.y, "p_4112->g_1137.y", print_hash_value);
    transparent_crc(p_4112->g_1137.z, "p_4112->g_1137.z", print_hash_value);
    transparent_crc(p_4112->g_1138.x, "p_4112->g_1138.x", print_hash_value);
    transparent_crc(p_4112->g_1138.y, "p_4112->g_1138.y", print_hash_value);
    transparent_crc(p_4112->g_1138.z, "p_4112->g_1138.z", print_hash_value);
    transparent_crc(p_4112->g_1141.x, "p_4112->g_1141.x", print_hash_value);
    transparent_crc(p_4112->g_1141.y, "p_4112->g_1141.y", print_hash_value);
    transparent_crc(p_4112->g_1181.x, "p_4112->g_1181.x", print_hash_value);
    transparent_crc(p_4112->g_1181.y, "p_4112->g_1181.y", print_hash_value);
    transparent_crc(p_4112->g_1181.z, "p_4112->g_1181.z", print_hash_value);
    transparent_crc(p_4112->g_1187.x, "p_4112->g_1187.x", print_hash_value);
    transparent_crc(p_4112->g_1187.y, "p_4112->g_1187.y", print_hash_value);
    transparent_crc(p_4112->g_1187.z, "p_4112->g_1187.z", print_hash_value);
    transparent_crc(p_4112->g_1187.w, "p_4112->g_1187.w", print_hash_value);
    transparent_crc(p_4112->g_1191.x, "p_4112->g_1191.x", print_hash_value);
    transparent_crc(p_4112->g_1191.y, "p_4112->g_1191.y", print_hash_value);
    transparent_crc(p_4112->g_1213.x, "p_4112->g_1213.x", print_hash_value);
    transparent_crc(p_4112->g_1213.y, "p_4112->g_1213.y", print_hash_value);
    transparent_crc(p_4112->g_1213.z, "p_4112->g_1213.z", print_hash_value);
    transparent_crc(p_4112->g_1213.w, "p_4112->g_1213.w", print_hash_value);
    transparent_crc(p_4112->g_1239, "p_4112->g_1239", print_hash_value);
    transparent_crc(p_4112->g_1250.x, "p_4112->g_1250.x", print_hash_value);
    transparent_crc(p_4112->g_1250.y, "p_4112->g_1250.y", print_hash_value);
    transparent_crc(p_4112->g_1250.z, "p_4112->g_1250.z", print_hash_value);
    transparent_crc(p_4112->g_1265.x, "p_4112->g_1265.x", print_hash_value);
    transparent_crc(p_4112->g_1265.y, "p_4112->g_1265.y", print_hash_value);
    transparent_crc(p_4112->g_1269.x, "p_4112->g_1269.x", print_hash_value);
    transparent_crc(p_4112->g_1282.x, "p_4112->g_1282.x", print_hash_value);
    transparent_crc(p_4112->g_1282.y, "p_4112->g_1282.y", print_hash_value);
    transparent_crc(p_4112->g_1288.x, "p_4112->g_1288.x", print_hash_value);
    transparent_crc(p_4112->g_1288.y, "p_4112->g_1288.y", print_hash_value);
    transparent_crc(p_4112->g_1288.z, "p_4112->g_1288.z", print_hash_value);
    transparent_crc(p_4112->g_1288.w, "p_4112->g_1288.w", print_hash_value);
    transparent_crc(p_4112->g_1289.x, "p_4112->g_1289.x", print_hash_value);
    transparent_crc(p_4112->g_1289.y, "p_4112->g_1289.y", print_hash_value);
    transparent_crc(p_4112->g_1289.z, "p_4112->g_1289.z", print_hash_value);
    transparent_crc(p_4112->g_1289.w, "p_4112->g_1289.w", print_hash_value);
    transparent_crc(p_4112->g_1308.x, "p_4112->g_1308.x", print_hash_value);
    transparent_crc(p_4112->g_1308.y, "p_4112->g_1308.y", print_hash_value);
    transparent_crc(p_4112->g_1309.x, "p_4112->g_1309.x", print_hash_value);
    transparent_crc(p_4112->g_1309.y, "p_4112->g_1309.y", print_hash_value);
    transparent_crc(p_4112->g_1309.z, "p_4112->g_1309.z", print_hash_value);
    transparent_crc(p_4112->g_1321.x, "p_4112->g_1321.x", print_hash_value);
    transparent_crc(p_4112->g_1321.y, "p_4112->g_1321.y", print_hash_value);
    transparent_crc(p_4112->g_1356.x, "p_4112->g_1356.x", print_hash_value);
    transparent_crc(p_4112->g_1368.x, "p_4112->g_1368.x", print_hash_value);
    transparent_crc(p_4112->g_1368.y, "p_4112->g_1368.y", print_hash_value);
    transparent_crc(p_4112->g_1369.x, "p_4112->g_1369.x", print_hash_value);
    transparent_crc(p_4112->g_1369.y, "p_4112->g_1369.y", print_hash_value);
    transparent_crc(p_4112->g_1369.z, "p_4112->g_1369.z", print_hash_value);
    transparent_crc(p_4112->g_1403.x, "p_4112->g_1403.x", print_hash_value);
    transparent_crc(p_4112->g_1403.y, "p_4112->g_1403.y", print_hash_value);
    transparent_crc(p_4112->g_1403.z, "p_4112->g_1403.z", print_hash_value);
    transparent_crc(p_4112->g_1412.x, "p_4112->g_1412.x", print_hash_value);
    transparent_crc(p_4112->g_1412.y, "p_4112->g_1412.y", print_hash_value);
    transparent_crc(p_4112->g_1412.z, "p_4112->g_1412.z", print_hash_value);
    transparent_crc(p_4112->g_1412.w, "p_4112->g_1412.w", print_hash_value);
    transparent_crc(p_4112->g_1446.x, "p_4112->g_1446.x", print_hash_value);
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                transparent_crc(p_4112->g_1471[i][j][k], "p_4112->g_1471[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_4112->g_1576.x, "p_4112->g_1576.x", print_hash_value);
    transparent_crc(p_4112->g_1576.y, "p_4112->g_1576.y", print_hash_value);
    transparent_crc(p_4112->g_1576.z, "p_4112->g_1576.z", print_hash_value);
    transparent_crc(p_4112->g_1576.w, "p_4112->g_1576.w", print_hash_value);
    transparent_crc(p_4112->g_1579.x, "p_4112->g_1579.x", print_hash_value);
    transparent_crc(p_4112->g_1579.y, "p_4112->g_1579.y", print_hash_value);
    transparent_crc(p_4112->g_1579.z, "p_4112->g_1579.z", print_hash_value);
    transparent_crc(p_4112->g_1586.x, "p_4112->g_1586.x", print_hash_value);
    transparent_crc(p_4112->g_1586.y, "p_4112->g_1586.y", print_hash_value);
    transparent_crc(p_4112->g_1720.x, "p_4112->g_1720.x", print_hash_value);
    transparent_crc(p_4112->g_1720.y, "p_4112->g_1720.y", print_hash_value);
    transparent_crc(p_4112->g_1720.z, "p_4112->g_1720.z", print_hash_value);
    transparent_crc(p_4112->g_1745.x, "p_4112->g_1745.x", print_hash_value);
    transparent_crc(p_4112->g_1745.y, "p_4112->g_1745.y", print_hash_value);
    transparent_crc(p_4112->g_1767.x, "p_4112->g_1767.x", print_hash_value);
    transparent_crc(p_4112->g_1806, "p_4112->g_1806", print_hash_value);
    transparent_crc(p_4112->g_1823.x, "p_4112->g_1823.x", print_hash_value);
    transparent_crc(p_4112->g_1830, "p_4112->g_1830", print_hash_value);
    transparent_crc(p_4112->g_1843.x, "p_4112->g_1843.x", print_hash_value);
    transparent_crc(p_4112->g_1848.x, "p_4112->g_1848.x", print_hash_value);
    transparent_crc(p_4112->g_1848.y, "p_4112->g_1848.y", print_hash_value);
    transparent_crc(p_4112->g_1848.z, "p_4112->g_1848.z", print_hash_value);
    transparent_crc(p_4112->g_1848.w, "p_4112->g_1848.w", print_hash_value);
    transparent_crc(p_4112->g_1903, "p_4112->g_1903", print_hash_value);
    transparent_crc(p_4112->g_1905, "p_4112->g_1905", print_hash_value);
    transparent_crc(p_4112->g_1914.x, "p_4112->g_1914.x", print_hash_value);
    transparent_crc(p_4112->g_1928.x, "p_4112->g_1928.x", print_hash_value);
    transparent_crc(p_4112->g_1928.y, "p_4112->g_1928.y", print_hash_value);
    transparent_crc(p_4112->g_1928.z, "p_4112->g_1928.z", print_hash_value);
    transparent_crc(p_4112->g_2006.x, "p_4112->g_2006.x", print_hash_value);
    transparent_crc(p_4112->g_2006.y, "p_4112->g_2006.y", print_hash_value);
    transparent_crc(p_4112->g_2006.z, "p_4112->g_2006.z", print_hash_value);
    transparent_crc(p_4112->g_2006.w, "p_4112->g_2006.w", print_hash_value);
    transparent_crc(p_4112->g_2017.x, "p_4112->g_2017.x", print_hash_value);
    transparent_crc(p_4112->g_2031.x, "p_4112->g_2031.x", print_hash_value);
    transparent_crc(p_4112->g_2047, "p_4112->g_2047", print_hash_value);
    transparent_crc(p_4112->g_2098.x, "p_4112->g_2098.x", print_hash_value);
    transparent_crc(p_4112->g_2130.x, "p_4112->g_2130.x", print_hash_value);
    transparent_crc(p_4112->g_2130.y, "p_4112->g_2130.y", print_hash_value);
    transparent_crc(p_4112->g_2130.z, "p_4112->g_2130.z", print_hash_value);
    transparent_crc(p_4112->g_2142.x, "p_4112->g_2142.x", print_hash_value);
    transparent_crc(p_4112->g_2142.y, "p_4112->g_2142.y", print_hash_value);
    transparent_crc(p_4112->g_2146.x, "p_4112->g_2146.x", print_hash_value);
    transparent_crc(p_4112->g_2146.y, "p_4112->g_2146.y", print_hash_value);
    transparent_crc(p_4112->g_2173.x, "p_4112->g_2173.x", print_hash_value);
    transparent_crc(p_4112->g_2173.y, "p_4112->g_2173.y", print_hash_value);
    transparent_crc(p_4112->g_2173.z, "p_4112->g_2173.z", print_hash_value);
    transparent_crc(p_4112->g_2173.w, "p_4112->g_2173.w", print_hash_value);
    transparent_crc(p_4112->g_2176, "p_4112->g_2176", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            transparent_crc(p_4112->g_2244[i][j], "p_4112->g_2244[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4112->g_2249, "p_4112->g_2249", print_hash_value);
    transparent_crc(p_4112->g_2271.x, "p_4112->g_2271.x", print_hash_value);
    transparent_crc(p_4112->g_2271.y, "p_4112->g_2271.y", print_hash_value);
    transparent_crc(p_4112->g_2271.z, "p_4112->g_2271.z", print_hash_value);
    transparent_crc(p_4112->g_2297.x, "p_4112->g_2297.x", print_hash_value);
    transparent_crc(p_4112->g_2297.y, "p_4112->g_2297.y", print_hash_value);
    transparent_crc(p_4112->g_2297.z, "p_4112->g_2297.z", print_hash_value);
    transparent_crc(p_4112->g_2298.x, "p_4112->g_2298.x", print_hash_value);
    transparent_crc(p_4112->g_2298.y, "p_4112->g_2298.y", print_hash_value);
    transparent_crc(p_4112->g_2298.z, "p_4112->g_2298.z", print_hash_value);
    transparent_crc(p_4112->g_2298.w, "p_4112->g_2298.w", print_hash_value);
    transparent_crc(p_4112->g_2312.x, "p_4112->g_2312.x", print_hash_value);
    transparent_crc(p_4112->g_2416, "p_4112->g_2416", print_hash_value);
    transparent_crc(p_4112->g_2495.x, "p_4112->g_2495.x", print_hash_value);
    transparent_crc(p_4112->g_2495.y, "p_4112->g_2495.y", print_hash_value);
    transparent_crc(p_4112->g_2505.x, "p_4112->g_2505.x", print_hash_value);
    transparent_crc(p_4112->g_2505.y, "p_4112->g_2505.y", print_hash_value);
    transparent_crc(p_4112->g_2505.z, "p_4112->g_2505.z", print_hash_value);
    transparent_crc(p_4112->g_2505.w, "p_4112->g_2505.w", print_hash_value);
    transparent_crc(p_4112->g_2509.x, "p_4112->g_2509.x", print_hash_value);
    transparent_crc(p_4112->g_2509.y, "p_4112->g_2509.y", print_hash_value);
    transparent_crc(p_4112->g_2509.z, "p_4112->g_2509.z", print_hash_value);
    transparent_crc(p_4112->g_2520.x, "p_4112->g_2520.x", print_hash_value);
    transparent_crc(p_4112->g_2520.y, "p_4112->g_2520.y", print_hash_value);
    transparent_crc(p_4112->g_2520.z, "p_4112->g_2520.z", print_hash_value);
    transparent_crc(p_4112->g_2531, "p_4112->g_2531", print_hash_value);
    transparent_crc(p_4112->g_2752.x, "p_4112->g_2752.x", print_hash_value);
    transparent_crc(p_4112->g_2752.y, "p_4112->g_2752.y", print_hash_value);
    transparent_crc(p_4112->g_2752.z, "p_4112->g_2752.z", print_hash_value);
    transparent_crc(p_4112->g_2752.w, "p_4112->g_2752.w", print_hash_value);
    transparent_crc(p_4112->g_2776.x, "p_4112->g_2776.x", print_hash_value);
    transparent_crc(p_4112->g_2776.y, "p_4112->g_2776.y", print_hash_value);
    transparent_crc(p_4112->g_2776.z, "p_4112->g_2776.z", print_hash_value);
    transparent_crc(p_4112->g_2776.w, "p_4112->g_2776.w", print_hash_value);
    transparent_crc(p_4112->g_2830.x, "p_4112->g_2830.x", print_hash_value);
    transparent_crc(p_4112->g_2830.y, "p_4112->g_2830.y", print_hash_value);
    transparent_crc(p_4112->g_2830.z, "p_4112->g_2830.z", print_hash_value);
    transparent_crc(p_4112->g_2892.x, "p_4112->g_2892.x", print_hash_value);
    transparent_crc(p_4112->g_2892.y, "p_4112->g_2892.y", print_hash_value);
    transparent_crc(p_4112->g_2892.z, "p_4112->g_2892.z", print_hash_value);
    transparent_crc(p_4112->g_2943.x, "p_4112->g_2943.x", print_hash_value);
    transparent_crc(p_4112->g_2943.y, "p_4112->g_2943.y", print_hash_value);
    transparent_crc(p_4112->g_2943.z, "p_4112->g_2943.z", print_hash_value);
    transparent_crc(p_4112->g_2943.w, "p_4112->g_2943.w", print_hash_value);
    transparent_crc(p_4112->g_2960.x, "p_4112->g_2960.x", print_hash_value);
    transparent_crc(p_4112->g_2960.y, "p_4112->g_2960.y", print_hash_value);
    transparent_crc(p_4112->g_2976.x, "p_4112->g_2976.x", print_hash_value);
    transparent_crc(p_4112->g_2976.y, "p_4112->g_2976.y", print_hash_value);
    transparent_crc(p_4112->g_2976.z, "p_4112->g_2976.z", print_hash_value);
    transparent_crc(p_4112->g_2976.w, "p_4112->g_2976.w", print_hash_value);
    transparent_crc(p_4112->g_2988.x, "p_4112->g_2988.x", print_hash_value);
    transparent_crc(p_4112->g_2991.x, "p_4112->g_2991.x", print_hash_value);
    transparent_crc(p_4112->g_2997.x, "p_4112->g_2997.x", print_hash_value);
    transparent_crc(p_4112->g_2997.y, "p_4112->g_2997.y", print_hash_value);
    transparent_crc(p_4112->g_2997.z, "p_4112->g_2997.z", print_hash_value);
    transparent_crc(p_4112->g_3012.x, "p_4112->g_3012.x", print_hash_value);
    transparent_crc(p_4112->g_3012.y, "p_4112->g_3012.y", print_hash_value);
    transparent_crc(p_4112->g_3017.f0, "p_4112->g_3017.f0", print_hash_value);
    transparent_crc(p_4112->g_3017.f1, "p_4112->g_3017.f1", print_hash_value);
    transparent_crc(p_4112->g_3017.f2, "p_4112->g_3017.f2", print_hash_value);
    transparent_crc(p_4112->g_3041.x, "p_4112->g_3041.x", print_hash_value);
    transparent_crc(p_4112->g_3067.x, "p_4112->g_3067.x", print_hash_value);
    transparent_crc(p_4112->g_3067.y, "p_4112->g_3067.y", print_hash_value);
    transparent_crc(p_4112->g_3078.x, "p_4112->g_3078.x", print_hash_value);
    transparent_crc(p_4112->g_3078.y, "p_4112->g_3078.y", print_hash_value);
    transparent_crc(p_4112->g_3078.z, "p_4112->g_3078.z", print_hash_value);
    transparent_crc(p_4112->g_3078.w, "p_4112->g_3078.w", print_hash_value);
    transparent_crc(p_4112->g_3082.x, "p_4112->g_3082.x", print_hash_value);
    transparent_crc(p_4112->g_3104.x, "p_4112->g_3104.x", print_hash_value);
    transparent_crc(p_4112->g_3104.y, "p_4112->g_3104.y", print_hash_value);
    transparent_crc(p_4112->g_3104.z, "p_4112->g_3104.z", print_hash_value);
    transparent_crc(p_4112->g_3104.w, "p_4112->g_3104.w", print_hash_value);
    transparent_crc(p_4112->g_3122.x, "p_4112->g_3122.x", print_hash_value);
    transparent_crc(p_4112->g_3122.y, "p_4112->g_3122.y", print_hash_value);
    transparent_crc(p_4112->g_3138.x, "p_4112->g_3138.x", print_hash_value);
    transparent_crc(p_4112->g_3138.y, "p_4112->g_3138.y", print_hash_value);
    transparent_crc(p_4112->g_3138.z, "p_4112->g_3138.z", print_hash_value);
    transparent_crc(p_4112->g_3156.x, "p_4112->g_3156.x", print_hash_value);
    transparent_crc(p_4112->g_3156.y, "p_4112->g_3156.y", print_hash_value);
    transparent_crc(p_4112->g_3156.z, "p_4112->g_3156.z", print_hash_value);
    transparent_crc(p_4112->g_3156.w, "p_4112->g_3156.w", print_hash_value);
    transparent_crc(p_4112->g_3157.x, "p_4112->g_3157.x", print_hash_value);
    transparent_crc(p_4112->g_3157.y, "p_4112->g_3157.y", print_hash_value);
    transparent_crc(p_4112->g_3157.z, "p_4112->g_3157.z", print_hash_value);
    transparent_crc(p_4112->g_3157.w, "p_4112->g_3157.w", print_hash_value);
    transparent_crc(p_4112->g_3171.x, "p_4112->g_3171.x", print_hash_value);
    transparent_crc(p_4112->g_3178.x, "p_4112->g_3178.x", print_hash_value);
    transparent_crc(p_4112->g_3178.y, "p_4112->g_3178.y", print_hash_value);
    transparent_crc(p_4112->g_3181.x, "p_4112->g_3181.x", print_hash_value);
    transparent_crc(p_4112->g_3181.y, "p_4112->g_3181.y", print_hash_value);
    transparent_crc(p_4112->g_3181.z, "p_4112->g_3181.z", print_hash_value);
    transparent_crc(p_4112->g_3181.w, "p_4112->g_3181.w", print_hash_value);
    transparent_crc(p_4112->g_3249.x, "p_4112->g_3249.x", print_hash_value);
    transparent_crc(p_4112->g_3284.x, "p_4112->g_3284.x", print_hash_value);
    transparent_crc(p_4112->g_3284.y, "p_4112->g_3284.y", print_hash_value);
    transparent_crc(p_4112->g_3284.z, "p_4112->g_3284.z", print_hash_value);
    transparent_crc(p_4112->g_3305.x, "p_4112->g_3305.x", print_hash_value);
    transparent_crc(p_4112->g_3305.y, "p_4112->g_3305.y", print_hash_value);
    transparent_crc(p_4112->g_3323.x, "p_4112->g_3323.x", print_hash_value);
    transparent_crc(p_4112->g_3323.y, "p_4112->g_3323.y", print_hash_value);
    transparent_crc(p_4112->g_3323.z, "p_4112->g_3323.z", print_hash_value);
    transparent_crc(p_4112->g_3323.w, "p_4112->g_3323.w", print_hash_value);
    transparent_crc(p_4112->g_3345, "p_4112->g_3345", print_hash_value);
    transparent_crc(p_4112->g_3377.x, "p_4112->g_3377.x", print_hash_value);
    transparent_crc(p_4112->g_3377.y, "p_4112->g_3377.y", print_hash_value);
    transparent_crc(p_4112->g_3377.z, "p_4112->g_3377.z", print_hash_value);
    transparent_crc(p_4112->g_3378, "p_4112->g_3378", print_hash_value);
    transparent_crc(p_4112->g_3382, "p_4112->g_3382", print_hash_value);
    transparent_crc(p_4112->g_3403, "p_4112->g_3403", print_hash_value);
    transparent_crc(p_4112->g_3550.f0, "p_4112->g_3550.f0", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        transparent_crc(p_4112->g_3571[i], "p_4112->g_3571[i]", print_hash_value);

    }
    transparent_crc(p_4112->g_3573, "p_4112->g_3573", print_hash_value);
    transparent_crc(p_4112->g_3585.x, "p_4112->g_3585.x", print_hash_value);
    transparent_crc(p_4112->g_3585.y, "p_4112->g_3585.y", print_hash_value);
    transparent_crc(p_4112->g_3585.z, "p_4112->g_3585.z", print_hash_value);
    transparent_crc(p_4112->g_3585.w, "p_4112->g_3585.w", print_hash_value);
    transparent_crc(p_4112->g_3625.x, "p_4112->g_3625.x", print_hash_value);
    transparent_crc(p_4112->g_3625.y, "p_4112->g_3625.y", print_hash_value);
    transparent_crc(p_4112->g_3625.z, "p_4112->g_3625.z", print_hash_value);
    transparent_crc(p_4112->g_3625.w, "p_4112->g_3625.w", print_hash_value);
    transparent_crc(p_4112->g_3662.x, "p_4112->g_3662.x", print_hash_value);
    transparent_crc(p_4112->g_3665.x, "p_4112->g_3665.x", print_hash_value);
    transparent_crc(p_4112->g_3665.y, "p_4112->g_3665.y", print_hash_value);
    transparent_crc(p_4112->g_3665.z, "p_4112->g_3665.z", print_hash_value);
    transparent_crc(p_4112->g_3679.x, "p_4112->g_3679.x", print_hash_value);
    transparent_crc(p_4112->g_3680.x, "p_4112->g_3680.x", print_hash_value);
    transparent_crc(p_4112->g_3680.y, "p_4112->g_3680.y", print_hash_value);
    transparent_crc(p_4112->g_3680.z, "p_4112->g_3680.z", print_hash_value);
    transparent_crc(p_4112->g_3680.w, "p_4112->g_3680.w", print_hash_value);
    transparent_crc(p_4112->g_3681.x, "p_4112->g_3681.x", print_hash_value);
    transparent_crc(p_4112->g_3681.y, "p_4112->g_3681.y", print_hash_value);
    transparent_crc(p_4112->g_3681.z, "p_4112->g_3681.z", print_hash_value);
    transparent_crc(p_4112->g_3761.x, "p_4112->g_3761.x", print_hash_value);
    transparent_crc(p_4112->g_3761.y, "p_4112->g_3761.y", print_hash_value);
    transparent_crc(p_4112->g_3761.z, "p_4112->g_3761.z", print_hash_value);
    transparent_crc(p_4112->g_3805.x, "p_4112->g_3805.x", print_hash_value);
    transparent_crc(p_4112->g_3805.y, "p_4112->g_3805.y", print_hash_value);
    transparent_crc(p_4112->g_3805.z, "p_4112->g_3805.z", print_hash_value);
    transparent_crc(p_4112->g_3810.x, "p_4112->g_3810.x", print_hash_value);
    transparent_crc(p_4112->g_3877, "p_4112->g_3877", print_hash_value);
    transparent_crc(p_4112->g_3941.x, "p_4112->g_3941.x", print_hash_value);
    transparent_crc(p_4112->g_3941.y, "p_4112->g_3941.y", print_hash_value);
    transparent_crc(p_4112->g_3941.z, "p_4112->g_3941.z", print_hash_value);
    transparent_crc(p_4112->g_3942.x, "p_4112->g_3942.x", print_hash_value);
    transparent_crc(p_4112->g_3942.y, "p_4112->g_3942.y", print_hash_value);
    transparent_crc(p_4112->g_3942.z, "p_4112->g_3942.z", print_hash_value);
    transparent_crc(p_4112->g_3943.x, "p_4112->g_3943.x", print_hash_value);
    transparent_crc(p_4112->g_3973.x, "p_4112->g_3973.x", print_hash_value);
    transparent_crc(p_4112->g_3973.y, "p_4112->g_3973.y", print_hash_value);
    transparent_crc(p_4112->g_3974.x, "p_4112->g_3974.x", print_hash_value);
    transparent_crc(p_4112->g_4008.x, "p_4112->g_4008.x", print_hash_value);
    transparent_crc(p_4112->g_4099, "p_4112->g_4099", print_hash_value);
    transparent_crc(p_4112->g_4107, "p_4112->g_4107", print_hash_value);
    transparent_crc(p_4112->g_4111, "p_4112->g_4111", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

