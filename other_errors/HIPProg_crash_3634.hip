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
// Seed: 3734241688

/* --- Struct/Union Declarations --- */
union U0 {
   int16_t  f0;
   int8_t  f1;
};

union U1 {
   uint8_t  f0;
   int64_t  f1;
   uint32_t  f2;
   int16_t  f3;
   int8_t  f4;
};

union U2 {
   int8_t  f0;
   unsigned f1 : 18;
   int8_t  f2;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint32_t hip_const_1;
__constant__ uint32_t hip_const_2[8];
__constant__ int8_t hip_const_3[8];
__constant__ int32_t hip_const_4;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint32_t host_hip_const_1 = 0xE08974B6L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint32_t host_hip_const_2[8] = {1UL, 0x756A3367L, 1UL, 0x756A3367L, 1UL, 0x756A3367L, 1UL, 0x756A3367L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        int8_t host_hip_const_3[8] = {(-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L), (-1L)};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int32_t host_hip_const_4 = 0xBA095A97L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
}

struct S3 {
    union U2 g_8;
    char4 g_34;
    uint2 g_38;
    uint2 g_39;
    union U1 g_66[3];
    short3 g_71;
    short3 g_72;
    union U0 g_80;
    uint16_t g_88;
    int32_t g_90;
    uint16_t g_91;
    ulong3 g_104;
    int8_t g_118;
    int3 g_122;
    uint8_t g_136;
    uint8_t *g_137[2];
    int2 g_144;
    union U0 *g_162;
    union U0 **g_161;
    uint8_t g_163;
    uint32_t g_164;
    int32_t *g_175;
    short3 g_192;
    ushort1 g_212;
    uint32_t g_234[2];
    char2 g_235;
    uint8_t g_236;
    int4 g_239;
    long1 g_246;
    int32_t g_273[10][4][6];
    int4 g_284;
    short3 g_311;
    union U0 ***g_319;
    union U0 ****g_318;
    ushort2 g_344;
    ushort1 g_345;
    int32_t **g_372;
    int32_t ***g_371;
    uchar3 g_375;
    uint2 g_405;
    short4 g_413;
    long3 g_504;
    int8_t g_535;
    int32_t **g_539;
    uint2 g_566;
    int8_t *g_575;
    int8_t **g_574;
    long3 g_663;
    uint32_t g_664[6];
    int16_t g_670;
    uint64_t *g_693;
    uint64_t **g_692;
    uint4 g_749;
    uint4 g_750;
    ulong4 g_760;
    int1 g_763;
    uchar4 g_814;
    char2 g_843;
    uint64_t **g_857;
    uint64_t ***g_856;
    int16_t *g_868[10];
    int16_t **g_867[5];
    long2 g_875;
    long2 g_881;
    long4 g_906;
    int3 g_912;
    uchar4 g_927;
    ulong4 g_957;
    ulong2 g_959;
    short2 g_987;
    int4 g_1026;
    ulong2 g_1031;
    short2 g_1055;
    uint4 g_1091;
    int1 g_1121;
    char1 g_1156;
    char4 g_1157;
    char1 g_1158;
    uint64_t g_1167;
    ushort1 g_1187;
    union U0 g_1197[9];
    union U0 *g_1196;
    int2 g_1210;
    uint4 g_1236;
    char3 g_1267;
    int32_t ****g_1274;
    int32_t *****g_1273;
    uint64_t ****g_1317[1][7][7];
    uint64_t *****g_1316;
    uchar2 g_1368;
    ulong3 g_1425;
    uint4 g_1473;
    uint32_t g_1491;
    uchar3 g_1528;
    ushort1 g_1556;
    uchar1 g_1560;
    uint4 g_1576;
    ulong1 g_1644;
    uchar2 g_1675;
    char2 g_1677;
    short4 g_1725;
    int64_t *g_1736;
    uint4 g_1813;
    int1 g_1862;
    uint3 g_1917;
    uint32_t *g_1937[2];
    uint32_t **g_1936;
    uchar4 g_1953;
    uchar1 g_1954;
    ulong2 g_1998;
    uint32_t *g_2020;
    union U1 g_2023;
    uint3 g_2024;
    int32_t g_2056;
    char4 g_2069;
    union U1 *g_2108;
    ushort1 g_2139;
    short2 g_2167;
    uint1 g_2198;
    uint4 g_2199;
    int8_t g_2214[2];
    ushort1 g_2230;
    short3 g_2243;
    int8_t ***g_2309;
    int8_t ****g_2308;
    short1 g_2320;
    short3 g_2324;
    uint64_t g_2422;
    uint1 g_2478;
    char1 g_2499;
    char2 g_2500;
    char4 g_2501;
    int2 g_2515;
    int4 g_2519;
    int4 g_2536;
    int16_t ***g_2544[3][9][2];
    int16_t ****g_2543;
    int16_t ****g_2546[2][6];
    uint2 g_2571;
    int32_t g_2592;
    ulong4 g_2676;
    ulong1 g_2683;
    long1 g_2685;
    int1 g_2736;
    int16_t g_2755[10][6][3];
    short2 g_2765;
    char1 g_2779;
    union U1 ***g_2798;
    uint8_t **g_2807;
    uint1 g_2821;
    long3 g_2829;
    uint64_t g_2833;
    union U2 *g_2973;
    union U2 **g_2972[5];
    uint32_t **g_3008;
    uint32_t *g_3022;
    uchar2 g_3033;
    union U0 **g_3038[1][1];
    int3 g_3093;
    union U0 *****g_3126;
    uint3 g_3141;
    uint1 g_3145;
    uint1 g_3146;
    uint2 g_3147;
    int32_t *g_3176[9][1];
    char3 g_3183;
    ushort4 g_3188;
    uint32_t g_3194[5];
    ushort4 g_3228;
    union U0 ***g_3230;
    long2 g_3248;
    ulong1 g_3288;
    int3 g_3313;
    int1 g_3325;
    uint16_t g_3343;
    union U1 *g_3403[6][8][5];
    union U1 **g_3402;
    uint8_t *g_3427;
    uint64_t g_3455;
    ushort2 g_3498;
    ushort2 g_3499;
    ushort4 g_3501;
    int64_t **g_3514;
    int64_t ***g_3513;
    uint2 g_3528;
    uint1 g_3529;
    ulong2 g_3533;
    ulong4 g_3534;
    uint32_t g_3558;
    uint16_t g_3560[10];
    int16_t g_3570[2];
    char1 g_3616;
    ulong1 g_3654;
    union U2 **g_3707;
    ushort4 g_3722;
    int2 g_3724;
    uint4 g_3725;
    uint32_t ***g_3733;
    uint32_t ****g_3732;
    int8_t *****g_3738;
    uint4 g_3783;
    uint2 g_3825;
    char4 g_3874;
    uint8_t g_3891[3];
    int16_t g_3903;
    ulong4 g_3914;
    ushort1 g_3920;
    uint32_t g_3921;
    uint3 g_3970;
    long3 g_3981;
    long3 g_3986;
    short4 g_4008;
    uint64_t g_4095;
    int32_t g_4096;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S3 * p_4099);
__device__ int32_t  func_2(union U2  p_3, int64_t  p_4, int64_t  p_5, int32_t  p_6, int64_t  p_7, struct S3 * p_4099);
__device__ union U0  func_9(union U0  p_10, int32_t  p_11, struct S3 * p_4099);
__device__ union U0  func_13(uint32_t  p_14, union U2  p_15, int64_t  p_16, struct S3 * p_4099);
__device__ uint8_t  func_19(int32_t  p_20, uint32_t  p_21, union U2  p_22, uint32_t  p_23, struct S3 * p_4099);
__device__ uint8_t  func_24(int8_t  p_25, struct S3 * p_4099);
__device__ int64_t  func_42(union U1  p_43, struct S3 * p_4099);
__device__ union U1  func_44(uint16_t  p_45, uint16_t  p_46, int64_t  p_47, int16_t  p_48, int16_t  p_49, struct S3 * p_4099);
__device__ int16_t  func_54(int16_t  p_55, union U2  p_56, union U0  p_57, struct S3 * p_4099);
__device__ union U2  func_58(uint32_t  p_59, union U1  p_60, uint64_t  p_61, struct S3 * p_4099);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_4099->g_8 hip_const_3 hip_const_4 p_4099->g_34 p_4099->g_38 p_4099->g_39 hip_const_1 p_4099->g_66 p_4099->g_66.f0 p_4099->g_71 p_4099->g_72 p_4099->g_80 hip_const_2 p_4099->g_8.f0 p_4099->g_90 p_4099->g_239 p_4099->g_405 p_4099->g_246 p_4099->g_122 p_4099->g_843 p_4099->g_344 p_4099->g_856 p_4099->g_750 p_4099->g_566 p_4099->g_867 p_4099->g_875 p_4099->g_881 p_4099->g_906 p_4099->g_912 p_4099->g_371 p_4099->g_372 p_4099->g_175 p_4099->g_957 p_4099->g_959 p_4099->g_857 p_4099->g_574 p_4099->g_575 p_4099->g_212 p_4099->g_987 p_4099->g_80.f0 p_4099->g_760 p_4099->g_318 p_4099->g_319 p_4099->g_161 p_4099->g_162 p_4099->g_663 p_4099->g_163 p_4099->g_1273 p_4099->g_80.f1 p_4099->g_1156 p_4099->g_1528 p_4099->g_91 p_4099->g_535 p_4099->g_164 p_4099->g_1274 p_4099->g_2139 p_4099->g_2108 p_4099->g_2167 p_4099->g_1556 p_4099->g_2023.f0 p_4099->g_2198 p_4099->g_2199 p_4099->g_2214 p_4099->g_88 p_4099->g_763 p_4099->g_2230 p_4099->g_2020 p_4099->g_664 p_4099->g_2243 p_4099->g_1210 p_4099->g_1031 p_4099->g_2320 p_4099->g_2324 p_4099->g_1917 p_4099->g_2308 p_4099->g_539 p_4099->g_118 p_4099->g_1576 p_4099->g_2422 p_4099->g_2478 p_4099->g_1196 p_4099->g_1197 p_4099->g_2499 p_4099->g_2500 p_4099->g_2501 p_4099->g_2515 p_4099->g_2519 p_4099->g_2023.f4 p_4099->g_2543 p_4099->g_2755 p_4099->g_2765 p_4099->g_1725 p_4099->g_2779 p_4099->g_2024 p_4099->g_814 p_4099->g_3145 p_4099->g_345 p_4099->g_2807 p_4099->g_137 p_4099->g_3343 p_4099->g_2833 p_4099->g_236 p_4099->g_2069 p_4099->g_2571 p_4099->g_2056 p_4099->g_3455 p_4099->g_3194 p_4099->g_136 p_4099->g_1954 p_4099->g_3498 p_4099->g_3499 p_4099->g_3501 p_4099->g_3288 p_4099->g_3514 p_4099->g_1736 p_4099->g_3722 p_4099->g_3724 p_4099->g_3725 p_4099->g_1560 p_4099->g_3732 p_4099->g_2972 p_4099->g_1953 p_4099->g_3783 p_4099->g_1187 p_4099->g_670 p_4099->g_4008 p_4099->g_1677 p_4099->g_1197.f0 p_4099->g_1936 p_4099->g_1937 p_4099->g_1675 p_4099->g_504 p_4099->g_3738 p_4099->g_4095
 * writes: p_4099->g_88 p_4099->g_66.f1 p_4099->g_90 p_4099->g_91 p_4099->g_239 p_4099->g_66.f3 p_4099->g_692 p_4099->g_175 p_4099->g_80.f0 p_4099->g_912 p_4099->g_664 p_4099->g_535 p_4099->g_163 p_4099->g_1273 p_4099->g_80.f1 p_4099->g_1156 p_4099->g_118 p_4099->g_2108 p_4099->g_164 p_4099->g_574 p_4099->g_1556 p_4099->g_122 p_4099->g_1026 p_4099->g_2023.f0 p_4099->g_1274 p_4099->g_763 p_4099->g_857 p_4099->g_575 p_4099->g_1210 p_4099->g_2308 p_4099->g_2309 p_4099->g_212 p_4099->g_137 p_4099->g_868 p_4099->g_2515 p_4099->g_2023.f4 p_4099->g_2546 p_4099->g_2755 p_4099->g_2422 p_4099->g_2139 p_4099->g_2023.f2 p_4099->g_136 p_4099->g_2833 p_4099->g_3402 p_4099->g_236 p_4099->g_162 p_4099->g_3427 p_4099->g_34 p_4099->g_66.f4 p_4099->g_3194 p_4099->g_2056 p_4099->g_8.f0 p_4099->g_372 p_4099->g_2972 p_4099->g_3707 p_4099->g_3738 p_4099->g_1197.f0 p_4099->g_1187 p_4099->g_670 p_4099->g_2798 p_4099->g_246 p_4099->g_1677 p_4099->g_1936 p_4099->g_3403 p_4099->g_2023 p_4099->g_2973 p_4099->g_4096
 */
__device__ uint32_t  func_1(struct S3 * p_4099)
{ /* block id: 0 */
    __shared__ uint16_t l_12;
    l_12 = 0x823AL;
    __shared__ char4 l_37;
    l_37 = make_char4(0xA7L, 0x74L, 0xA7L, 0x74L);
    union U0 l_277 = {6L};
    union U2 l_1846 = {0xF0L};
    int32_t l_3430 = 0L;
    int32_t l_3436 = 0x6969E96CL;
    __shared__ uint32_t l_3437;
    l_3437 = 0xD9A830F1L;
    int8_t l_3444 = 0L;
    int32_t ****l_3449[4];
    int8_t l_3452 = 0x0DL;
    uint16_t l_3453 = 0x80ECL;
    int8_t l_3454 = 0xACL;
    int32_t *l_3462[3][1];
    int16_t ***l_3466 = nullptr;
    int8_t l_3477 = 0xF4L;
    int64_t l_3508 = (-1L);
    int64_t ***l_3516[2][3][4] = {{{&p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514}, {&p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514}, {&p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514}}, {{&p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514}, {&p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514}, {&p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514, &p_4099->g_3514}}};
    uint1 l_3530 = make_uint1(4294967286UL);
    int16_t l_3537 = (-9L);
    __shared__ uint64_t l_3580;
    l_3580 = 0x546EA2C2CABF7432LL;
    uint64_t l_3685 = 0x86C1B938308A2CE6LL;
    int8_t *****l_3737[10];
    __shared__ uint8_t l_3748;
    l_3748 = 7UL;
    // attempting a hip shared for loop
    __shared__ int32_t l_3753[9];
    for (int i = 0; i < 9; i++)
        l_3753[i] = 0x2D2A07E5L;
    int16_t l_3757 = 0L;
    __shared__ uint8_t l_3760;
    l_3760 = 0x55L;
    int64_t l_3764[9][1][10] = {{{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}, {{0xE778932A1B8BC197LL, 0x13A7164173A46A3ALL, 0x9CDC2C323A422A1BLL, 0x7EEA4D064A395DEFLL, 0L, 0xEE65999DEDE0EA05LL, 0xEE65999DEDE0EA05LL, 0L, 0x7EEA4D064A395DEFLL, 0x9CDC2C323A422A1BLL}}};
    int4 l_3768 = make_int4(0xC6B7F81CL, 0L, 0xC6B7F81CL, 0L);
    uint64_t *****l_3790 = &p_4099->g_1317[0][4][1];
    uint32_t l_3795 = 0x252EF558L;
    __shared__ int16_t l_3796;
    l_3796 = 0x40ABL;
    uint16_t l_3826 = 0x49F0L;
    uint64_t l_3837 = 0xB6A0BF4D67362589LL;
    uint32_t l_3905 = 0x1F2C31C1L;
    int8_t l_4055 = 0xF8L;
    union U2 *l_4070 = &p_4099->g_8;
    __shared__ int32_t l_4086;
    l_4086 = 0xED876081L;
    uint8_t ***l_4090 = &p_4099->g_2807;
    __shared__ uint8_t ****l_4089;
    l_4089 = &l_4090;
    uint32_t l_4091 = 0xFA9CBBBDL;
    uint32_t l_4092 = 0x7410397DL;
    uint64_t l_4093 = 5UL;
    __shared__ int32_t l_4094;
    l_4094 = 0x317BB256L;
    uint32_t l_4097 = 0xAA0AEBFBL;
    uint8_t l_4098 = 0x41L;
    int i, j, k;
    for (int i = 0; i < 4; i++)
        l_3449[i] = &p_4099->g_371;
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 1; j++)
            l_3462[i][j] = nullptr;
    }
    for (int i = 0; i < 10; i++)
        l_3737[i] = &p_4099->g_2308;
    if (func_2(p_4099->g_8, hip_const_3[4], (func_9(((l_12 = hip_const_4) , func_13((safe_lshift_func_int16_t_s_u((((func_19((func_24((p_4099->g_1156.x &= (safe_div_func_int8_t_s_s(((safe_mul(((safe_div(make_char4(((safe_sub(make_char2(p_4099->g_34.x, p_4099->g_34.x), ((safe_mul(((make_char2(l_37.x, l_37.x) ^ make_char2(0x26L, (((make_uint1(p_4099->g_38.y) ^ make_uint1(p_4099->g_39.x))).x & ((safe_div_func_int64_t_s_s(func_42(func_44((make_char1((((safe_rshift_func_uint64_t_u_s(0xEC53A21B78CD908FLL, (((safe_sub_func_uint16_t_u_u(((1UL < p_4099->g_34.z) && ((((((~(p_4099->g_66[1].f3 = func_54(p_4099->g_38.x, func_58(((safe_add_func_int8_t_s_s((safe_lshift_func_uint32_t_u_u((l_37.y == ((l_37.x & 0L) == p_4099->g_34.z)), p_4099->g_34.y)), l_12)) > hip_const_1), p_4099->g_66[1], l_37.w, p_4099), l_277, p_4099))) , l_37.w) && 253UL) || hip_const_2[4]) || l_37.w) == l_12)), 0x9C79L)) , l_37.w) != p_4099->g_405.x))) > l_12) || p_4099->g_246.x)).x > l_12), p_4099->g_72.z, p_4099->g_122.x, p_4099->g_72.y, l_277.f0, p_4099), p_4099), 0xDA0E86ABE207E456LL)) < 0x55DD9DBFL))))), make_char2(0L, 0L))))))).x, (*p_4099->g_575), l_37.y, (-1L)), make_char4(0x45L, 0x45L, 0x45L, 0x45L)))), make_char4(0L, 0L, 0L, 0L)))).z, (**p_4099->g_574)))), p_4099) && (*p_4099->g_575)), l_37.z, l_1846, p_4099->g_1528.y, p_4099) == (**p_4099->g_574)) & p_4099->g_875.x) ^ 0xFFL), l_12)), p_4099->g_8, l_37.x, p_4099)), l_277.f0, p_4099) , l_12), p_4099->g_814.w, p_4099->g_3145.x, p_4099))
    { /* block id: 1574 */
        int32_t *l_3431 = nullptr;
        int32_t *l_3432 = nullptr;
        int32_t *l_3433 = &p_4099->g_2056;
        int32_t *l_3434 = nullptr;
        int32_t *l_3435[6] = {&p_4099->g_90, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90};
        int8_t *l_3440 = &p_4099->g_66[1].f4;
        int8_t *l_3441[5][8][6] = {{{nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}}, {{nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}}, {{nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}}, {{nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}}, {{nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}, {nullptr, &p_4099->g_118, &hip_const_3[3], &p_4099->g_118, nullptr, nullptr}}};
        __shared__ uint8_t l_3470;
        l_3470 = 0xC5L;
        int8_t l_3476 = 3L;
        int16_t l_3483 = 9L;
        __shared__ ushort4 l_3500;
        l_3500 = make_ushort4(1UL, 0x5103L, 1UL, 0x5103L);
        int32_t l_3511 = 0xA41B38AEL;
        __shared__ long4 l_3512;
        l_3512 = make_long4(1L, 0L, 1L, 0L);
        uint8_t l_3519[3][8] = {{6UL, 0xDCL, 6UL, 0xDCL, 6UL, 0xDCL, 6UL, 0xDCL}, {6UL, 0xDCL, 6UL, 0xDCL, 6UL, 0xDCL, 6UL, 0xDCL}, {6UL, 0xDCL, 6UL, 0xDCL, 6UL, 0xDCL, 6UL, 0xDCL}};
        union U0 l_3551 = {-9L};
        __shared__ int2 l_3568;
        l_3568 = make_int2(0xBE4E106FL, (-1L));
        int16_t l_3634 = 0x43D5L;
        int32_t l_3644 = 0L;
        uint64_t l_3648 = 0x5CD6141454BE3385LL;
        union U2 *l_3665 = &p_4099->g_8;
        int16_t l_3698 = 0x2083L;
        union U2 **l_3705 = &p_4099->g_2973;
        // attempting a hip shared for loop
        __shared__ int64_t l_3708[2];
        for (int i = 0; i < 2; i++)
            l_3708[i] = 6L;
        uint16_t l_3726 = 5UL;
        __shared__ union U1 l_3736;
        l_3736 = {0xCBL};
        int32_t *****l_3740 = nullptr;
        int i, j, k;
        for (int i = 0; i < 2; i++)
            l_3708[i] = 6L;
        l_3437--;
        if (((make_short2(0x8998L, 0x98E5L).y && (((*l_3440) = ((l_3430 &= (p_4099->g_34.y ^= l_37.z)) > (safe_mod_func_uint64_t_u_u(((l_3444 | (safe_lshift_func_int32_t_s_u((safe_lshift_func_int16_t_s_s((nullptr == l_3449[2]), (((**p_4099->g_2807) = (p_4099->g_2069.w || ((-1L) && (-1L)))) ^ ((((safe_lshift_func_int32_t_s_s((l_3452 ^ l_3453), 13)) != p_4099->g_2571.y) >= 0xACF1L) , (*p_4099->g_575))))), l_3454))) >= (*l_3433)), (*l_3433))))) != p_4099->g_3455)) ^ 0x0A5AE12EA524B17ELL))
        { /* block id: 1580 */
            uint32_t l_3465 = 18446744073709551614UL;
            __shared__ ushort3 l_3469;
            l_3469 = make_ushort3(6UL, 65533UL, 6UL);
            union U0 l_3471 = {1L};
            uint32_t *l_3472 = nullptr;
            uint32_t *l_3473 = &p_4099->g_2023.f2;
            __shared__ uint32_t *l_3474;
            l_3474 = nullptr;
            uint32_t *l_3475 = &p_4099->g_3194[3];
            int16_t *l_3478 = nullptr;
            int16_t *l_3479 = nullptr;
            __shared__ int16_t *l_3480;
            l_3480 = nullptr;
            __shared__ int16_t *l_3481;
            l_3481 = nullptr;
            int16_t *l_3482[9] = {&p_4099->g_1197[5].f0, nullptr, &p_4099->g_1197[5].f0, nullptr, &p_4099->g_1197[5].f0, nullptr, &p_4099->g_1197[5].f0, nullptr, &p_4099->g_1197[5].f0};
            int32_t l_3484 = 6L;
            int i;
            l_3484 = (safe_rshift_func_uint16_t_u_s(make_ushort4(0x4D6FL, (safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((l_3483 &= ((nullptr == l_3462[0][0]) & ((((make_int4(0L, 0L, ((safe_rshift_func_int32_t_s_s(l_3465, (!(nullptr == l_3466)))) >= ((l_3476 ^= ((*l_3433) = ((safe_lshift_func_int32_t_s_s(((18446744073709551612UL != l_3465) | make_ushort3(l_3469.z, l_3469.z, l_3469.z).x), 31)) | (l_3470 == ((make_uint1(((*l_3475) |= (func_9(l_3471, l_3469.z, p_4099) , 4294967295UL))) | make_uint1(4294967287UL))).x)))) >= l_3465)), (-8L)).x != 8UL) & l_3465) == 0UL) > l_3477))) == 0L), 0x3AL)), (**p_4099->g_2807))), 0UL, p_4099->g_1725.z).w, l_3469.y));
        }
        else
        { /* block id: 1586 */
            __shared__ long4 l_3491;
            l_3491 = make_long4(0x9D26D99E8A1AAA12LL, (-6L), 0x9D26D99E8A1AAA12LL, (-6L));
            __shared__ int64_t l_3492;
            l_3492 = 0x38B8DD50FD98BFE2LL;
            __shared__ ushort3 l_3497;
            l_3497 = make_ushort3(0x21A5L, 0xC73BL, 0x21A5L);
            uint64_t **l_3504 = &p_4099->g_693;
            uint64_t ***l_3505 = &l_3504;
            int8_t l_3506 = 8L;
            uint8_t l_3507[3];
            int64_t ****l_3515 = &p_4099->g_3513;
            __shared__ int32_t l_3538;
            l_3538 = 1L;
            int32_t l_3573 = 0x789F646CL;
            int32_t l_3575 = 0L;
            uint16_t l_3576 = 65528UL;
            uint16_t *l_3584 = &p_4099->g_91;
            __shared__ uint16_t **l_3583;
            l_3583 = &l_3584;
            uint4 l_3603 = make_uint4(4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL);
            uint64_t l_3635[2];
            int32_t l_3684[6][1][8] = {{{0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L)}}, {{0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L)}}, {{0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L)}}, {{0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L)}}, {{0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L)}}, {{0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L), 0x4597DB14L, (-3L)}}};
            uchar2 l_3692 = make_uchar2(246UL, 0x23L);
            __shared__ char4 l_3723;
            l_3723 = make_char4((-6L), 0xCDL, (-6L), 0xCDL);
            uint16_t l_3756[10][10] = {{65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}, {65535UL, 0xCE77L, 0xF5D8L, 1UL, 9UL, 1UL, 0UL, 0xD488L, 0xEAFDL, 0xC8E3L}};
            uint32_t l_3765 = 0x7A7460DBL;
            int i, j, k;
            for (int i = 0; i < 3; i++)
                l_3507[i] = 253UL;
            for (int i = 0; i < 2; i++)
                l_3635[i] = 0UL;
            l_3508 ^= make_int4(((safe_add_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(p_4099->g_1954.x, (1UL && (safe_mul_func_int64_t_s_s(1L, ((make_long3(l_3491.x, l_3491.x, l_3491.x) & make_long3(make_long4(0xE688FF0B4F352AADLL, (l_3491.x ^ ((l_3492 & ((((safe_mod(((((safe_add(make_ushort2(l_3497.x, l_3497.x), make_ushort2(p_4099->g_3498.x, p_4099->g_3498.x)))) & make_ushort2(p_4099->g_3499.y, p_4099->g_3499.y))), make_ushort2(l_3500.x, l_3500.x)))) ^ make_ushort2(p_4099->g_3501.y, p_4099->g_3501.y))).x) | ((*l_3433) = ((safe_add_func_int64_t_s_s(((*p_4099->g_856) == ((*l_3505) = l_3504)), l_3497.x)) >= (**p_4099->g_2807))))), 0x639792C5CF5260BBLL, 0x706F73C81C1E56C3LL).w, l_3506, 0x6B47F3D2019615F9LL))).z))))), l_3507[0])) && 7L), l_3497.x, (*l_3433), 0xA68C7A64L).w;
lbl_3763:
            if ((l_3538 ^= ((safe_lshift_func_uint64_t_u_s(l_3511, 9)) != ((make_long2(l_3512.w, l_3512.w).x | make_ulong2(((((*l_3515) = (make_uint1(0UL).x , p_4099->g_3513)) == l_3516[0][2][0]) && (safe_sub_func_int8_t_s_s(9L, (l_3519[1][7] == ((l_3497.z & ((safe_mul(((safe_mod(((safe_mod(make_uint1(0xB45A8BD4L), ((safe_add(make_uint1(p_4099->g_3528.x), make_uint1(p_4099->g_3529.x))))))), make_uint1(l_3530.x)))), make_uint1(3UL)))).x) <= (*l_3433)))))), 0x9505AA5BBA217E51LL).y) > ((safe_div_func_int32_t_s_s(((((((make_ulong1(p_4099->g_3533.y) ^ make_ulong1(p_4099->g_3534.z))).x , 0xBBD0L) <= (safe_rshift_func_int16_t_s_u(l_3537, p_4099->g_3288.x))) >= 0x96B0L) , 0x27D6BC24L), l_3491.y)) | 0x55174FDFL)))))
            { /* block id: 1592 */
                __shared__ uint16_t l_3543;
                l_3543 = 1UL;
                int32_t l_3562[6] = {0L, 0L, (-1L), 0L, 0L, (-1L)};
                uint8_t l_3563[7];
                __shared__ int32_t l_3599;
                l_3599 = (-1L);
                __shared__ uint16_t l_3604;
                l_3604 = 0x62F7L;
                ushort2 l_3625 = make_ushort2(7UL, 65530UL);
                uchar1 l_3628 = make_uchar1(0UL);
                union U0 **l_3629 = &p_4099->g_162;
                __shared__ int32_t l_3630;
                l_3630 = 0x2B124C91L;
                uint8_t l_3631 = 0x66L;
                uint32_t l_3632 = 4294967286UL;
                uint64_t *l_3633 = &p_4099->g_1167;
                uint32_t ***l_3637 = nullptr;
                uint32_t ****l_3636 = &l_3637;
                uint64_t l_3638 = 0xB5C9429CAD52DBD6LL;
                int32_t l_3639[8][4] = {{7L, 0L, 7L, 0L}, {7L, 0L, 7L, 0L}, {7L, 0L, 7L, 0L}, {7L, 0L, 7L, 0L}, {7L, 0L, 7L, 0L}, {7L, 0L, 7L, 0L}, {7L, 0L, 7L, 0L}, {7L, 0L, 7L, 0L}};
                int8_t l_3640 = (-2L);
                int8_t l_3641 = 1L;
                int16_t l_3642 = (-1L);
                uint32_t l_3643 = 0x9036414AL;
                int32_t l_3645 = 0x82E34CCAL;
                int32_t l_3646 = 0x2CFD8280L;
                int64_t l_3647 = 0x24A1485916AA95A9LL;
                uint8_t l_3649 = 2UL;
                __shared__ uint16_t l_3651;
                l_3651 = 65535UL;
                union U2 *l_3666 = nullptr;
                __shared__ char1 l_3667;
                l_3667 = make_char1(0xBEL);
                uint8_t l_3677 = 0x94L;
                int32_t l_3678 = 0x236AA9CFL;
                uint32_t l_3679 = 0x5367F6B0L;
                int32_t l_3680 = 5L;
                int64_t l_3683[2];
                union U2 ***l_3706 = &p_4099->g_2972[3];
                int8_t l_3755 = 0L;
                int i, j;
                for (int i = 0; i < 7; i++)
                    l_3563[i] = 0UL;
                for (int i = 0; i < 2; i++)
                    l_3683[i] = 0x07814E99E3B8823DLL;
                for (l_3453 = 0; (l_3453 == 9); l_3453 = safe_add_func_uint8_t_u_u(l_3453, 9))
                { /* block id: 1595 */
                    int32_t l_3541 = 0x9D417AC9L;
                    int32_t l_3542 = 1L;
                    __shared__ uint32_t l_3552;
                    l_3552 = 0x87139D68L;
                    union U2 l_3561 = {0x6EL};
                    int32_t l_3569 = 0x4833E0D8L;
                    int32_t l_3571 = 8L;
                    int32_t l_3572 = 0x3A47A8C7L;
                    __shared__ int32_t l_3574;
                    l_3574 = 0xF3A6AD2BL;
                    (*l_3433) = l_3507[0];
                    l_3543--;
                    for (p_4099->g_8.f0 = 0; (p_4099->g_8.f0 != 22); p_4099->g_8.f0++)
                    { /* block id: 1600 */
                        __shared__ uint8_t l_3548;
                        l_3548 = 2UL;
                        uint32_t l_3559 = 0xD8A3B9CDL;
                        l_3562[5] ^= (l_3548 >= (0UL == make_uint1((l_3492 , (((*l_3433) &= ((safe_add_func_uint16_t_u_u(l_3497.y, ((func_9(l_3551, l_3552, p_4099) , (((l_3497.y ^ ((safe_unary_minus_func_uint8_t_u((safe_mul_func_uint32_t_u_u(((safe_add_func_int8_t_s_s(((0xCAL || 0xE2L) & 0xC019A069L), l_3543)) && p_4099->g_3558), l_3559)))) > p_4099->g_3560[6])) ^ l_3548) , l_3561)) , l_3541))) | l_3559)) <= l_3543))).x));
                        l_3563[6]++;
                        if (l_3559)
                            continue;
                        l_3542 = (safe_mod_func_int32_t_s_s(((*l_3433) = l_3507[0]), make_int2(l_3568.x, l_3568.x).x));
                    }
                    --l_3576;
                }
                (*p_4099->g_372) = &l_3562[0];
                if (make_int4((*p_4099->g_175), (**p_4099->g_372), (-1L), (-3L)).x)
                { /* block id: 1611 */
                    uint32_t *l_3579[1][10][8] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                    int i, j, k;
                    (*p_4099->g_175) = ((l_3543 & (****p_4099->g_1274)) || (l_3580++));
                    if (l_3476)
                        goto lbl_3585;
                }
                else
                { /* block id: 1614 */
                    if (make_int2(l_3563[1], (***p_4099->g_371)).x)
                    { /* block id: 1615 */
lbl_3585:
                        (***p_4099->g_371) = (nullptr == l_3583);
                        (*l_3433) = (((make_ulong4((safe_mul_func_int32_t_s_s((safe_mod_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u((((((safe_div_func_uint16_t_u_u(((((safe_mod_func_uint8_t_u_u(((safe_add_func_int32_t_s_s((((safe_unary_minus_func_uint8_t_u(l_3599)) >= (safe_unary_minus_func_int8_t_s(((safe_rshift_func_uint64_t_u_s((make_uint3(l_3603.w, l_3603.w, l_3603.w).y > l_3604), 61)) , (l_3639[3][1] = (p_4099->g_235.x = (((((safe_div_func_int32_t_s_s((safe_unary_minus_func_int32_t_s((***p_4099->g_371))), (safe_mul_func_uint64_t_u_u(0xB52121716B6ADD2ELL, (l_3492 == ((make_ulong2(0xC6697B58ED81734CLL, (safe_sub_func_uint64_t_u_u(((*l_3633) &= (safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s(((*l_3440) = 0x80L), make_char4(p_4099->g_3616.x, p_4099->g_3616.x, p_4099->g_3616.x, p_4099->g_3616.x).x)), (safe_div_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s(((0x999902EAB4E013F2LL || 18446744073709551609UL) ^ make_ulong3(5UL, ((safe_rshift_func_uint8_t_u_s((~((make_ushort4(l_3625.y, l_3625.y, l_3625.y, l_3625.y).w ^ (safe_rshift_func_int64_t_s_s((((make_uchar2(l_3628.x, l_3628.x).y , (l_3629 == nullptr)) , 0xFED366B623827983LL) && 7L), l_3630))) > 0x181665E0L)), l_3631)) >= (**p_4099->g_2807)), l_3604).z), 253UL)) || l_3632), (**p_4099->g_2807))), l_3497.x))))), l_3634))).y == l_3635[0]) || l_3632)))))) , nullptr) == l_3636) != l_3638) >= p_4099->g_311.x))))))) < 0xC0377350L), l_3640)) ^ (*p_4099->g_575)), (**p_4099->g_2807))) <= (***p_4099->g_371)) > 2UL) | l_3628.x), p_4099->g_311.y)) < l_3641) , l_3642) , l_3643) && l_3644), 9L)) , l_3645), 0xA9E5370DE612A070LL)), l_3646)), 0xA99027E9D785869ALL, 18446744073709551613UL, 0x56D1DA9DB1197ECBLL).w || l_3647) < 0xB2BF600C539A5530LL) || l_3648);
                        (*l_3433) |= (l_3649 = ((**p_4099->g_539) = l_3632));
                    }
                    else
                    { /* block id: 1626 */
                        int32_t *l_3650 = &l_3562[5];
                        ulong4 l_3660 = make_ulong4(8UL, 0xF8E17AAAFD065C9DLL, 8UL, 0xF8E17AAAFD065C9DLL);
                        union U2 **l_3663 = nullptr;
                        union U2 **l_3664[9][3][9] = {{{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}, {{&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}, {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973}}};
                        uint8_t l_3681[2][8] = {{249UL, 249UL, 0xACL, 249UL, 249UL, 0xACL, 249UL, 249UL}, {249UL, 249UL, 0xACL, 249UL, 249UL, 0xACL, 249UL, 249UL}};
                        int32_t *l_3682 = &l_3645;
                        int i, j, k;
                        (*p_4099->g_372) = (l_3650 = (****p_4099->g_1273));
                        (****p_4099->g_1274) &= make_int4(5L, (-1L), 6L, (-6L)).y;
                        (**p_4099->g_539) = (((make_long1(l_3651) ^ make_long1(0xDBC5A0A8497B7C60LL))).x != (~((safe_lshift_func_uint64_t_u_s(make_ulong4(make_ulong4(p_4099->g_3654.x, p_4099->g_3654.x, p_4099->g_3654.x, p_4099->g_3654.x).y, (0L != (safe_rshift_func_int64_t_s_s((0x7A6BL <= ((safe_unary_minus_func_uint64_t_u((make_char1(0x5FL).x , ((((~((((safe_lshift(((make_ulong2(l_3660.z, l_3660.z) | make_ulong2((safe_lshift_func_int8_t_s_s(make_char2(0x2EL, (((((((l_3665 = nullptr) != l_3666) > (~make_char1(l_3667.x).x)) && (((!((((safe_sub(make_short2(((safe_sub_func_int32_t_s_s(((safe_div_func_uint16_t_u_u(p_4099->g_1031.y, (safe_add_func_uint8_t_u_u(((0xFF6EEE8EA88972A5LL < ((*l_3433) = (safe_unary_minus_func_uint16_t_u((l_3677 , 0UL))))) | l_3543), (*p_4099->g_575))))) == 1UL), l_3678)) >= 0x5CL), 1L), make_short2(0x6AB3L, 0x6AB3L)))).y < (*l_3650)) || 0x4CC4786BL)) == l_3573) <= p_4099->g_34.x)) == l_3635[1]) , (-4L)) >= l_3679)).x, l_3680)), l_3507[1]))), make_ulong2(0xA9569E2DCA83EE47LL, 0xA9569E2DCA83EE47LL)))) | make_ulong2(0xE6F25DCC32BC1D89LL, 0xE6F25DCC32BC1D89LL))))) | make_ulong2(0x7DD0D944DB031DD3LL, 0x7DD0D944DB031DD3LL))).y))) <= (*l_3650))), 30))), l_3603.w, 0x91E20E82DD2691ADLL).z, l_3681[1][5])) <= 0xED26L)));
                        (**p_4099->g_371) = l_3682;
                        if (l_277.f0)
                            goto lbl_3763;
                    }
                    l_3685--;
                    for (p_4099->g_535 = 24; (p_4099->g_535 < (-27)); p_4099->g_535--)
                    { /* block id: 1638 */
                        uint8_t l_3693 = 254UL;
                        l_3538 = make_int2(l_3678, ((((*p_4099->g_2108) , nullptr) == ((***p_4099->g_1273) = nullptr)) <= ((safe_add(make_uchar3(l_3692.y, l_3692.y, l_3692.y), make_uchar3(3UL, 1UL, make_uchar4(0x53L, 1UL, l_3693, ((0x3AF9471E4B83D750LL | (safe_div_func_uint64_t_u_u(((((*l_3629) = nullptr) == ((+(safe_lshift_func_int32_t_s_u(l_3698, 22))) , &l_3551)) < l_3693), l_3497.x))) >= l_3497.y)).z)))).y)).x;
                        return l_3630;
                    }
                }
                if (((((safe_mod(make_uchar4(l_3683[0], (safe_add_func_int64_t_s_s(l_3497.y, p_4099->g_72.x)), ((**p_4099->g_2807) = (((***p_4099->g_371) = (safe_mul_func_int8_t_s_s(l_3563[6], 0x0BL))) , make_uchar2((l_3639[3][1] || ((((*l_3706) = l_3705) != (p_4099->g_3707 = &p_4099->g_2973)) && (***p_4099->g_371))), 0x16L).y)), 0x24L), make_uchar4(255UL, 255UL, 255UL, 255UL)))).y == l_3708[1]) != 0L))
                { /* block id: 1649 */
                    int8_t l_3727 = 0xF8L;
                    int32_t l_3739 = 0x8237286BL;
                    if (((+(safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s(1L, ((safe_div(((make_uchar3((l_3628.x >= 0x4F2EL), (*l_3433), 0xB1L) & ((safe_sub(make_uchar3(((safe_unary_minus_func_uint16_t_u((((*p_4099->g_3514) == (((l_3726 = ((safe_add_func_int64_t_s_s(l_3651, ((((safe_sub(make_ushort3(p_4099->g_3722.z, p_4099->g_3722.z, p_4099->g_3722.z), make_ushort3(l_3723.x, 0x25C2L, ((make_int3(p_4099->g_3724.x, p_4099->g_3724.x, p_4099->g_3724.x).y , (l_1846 , make_uint1(make_uint1(p_4099->g_3725.z).x).x)) & (***p_4099->g_371)))))).z <= p_4099->g_1560.x) || 1UL))) || l_3497.y)) < l_3563[0]) , (*p_4099->g_3514))) & l_3723.x))) | l_3727), 1UL, l_3727), make_uchar3(1UL, 1UL, 1UL)))))), make_uchar3(255UL, 255UL, 255UL)))).y)), 0xFE9FF898725E7993LL))) < l_3562[5]))
                    { /* block id: 1651 */
                        uint32_t l_3743 = 0UL;
                        union U0 *****l_3754 = &p_4099->g_318;
                        (*l_3433) = ((~(l_3739 &= (safe_mul_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((nullptr != p_4099->g_3732), (safe_mul_func_int8_t_s_s((*p_4099->g_575), (nullptr == (*l_3706)))))), ((**p_4099->g_539) = ((p_4099->g_3738 = (((18446744073709551612UL ^ l_3680) >= (l_3736 , make_uint1(0x586750C9L).x)) , l_3737[2])) == &p_4099->g_2308)))))) || 4294967295UL);
                        (**p_4099->g_372) &= (l_3740 != ((safe_rshift_func_uint64_t_u_s(l_3743, (safe_div_func_int64_t_s_s(((safe_mul_func_uint64_t_u_u(l_3748, (0UL > ((make_ushort4(0x79CAL, make_ushort3(0xB751L, 0xC692L, 0x23E1L).y, (0xB2L & (((safe_mod_func_int16_t_s_s((l_3573 = make_short4((safe_add_func_uint8_t_u_u(((-7L) <= l_3753[3]), (nullptr == l_3754))), 0x3116L, 1L, l_3575).y), p_4099->g_1953.y)) , l_3755) , l_3743)), p_4099->g_38.y) | make_ushort4(1UL, 1UL, 1UL, 1UL))).x))) >= l_3683[0]), l_3756[5][4])))) , &p_4099->g_1274));
                    }
                    else
                    { /* block id: 1658 */
                        return l_3757;
                    }
                }
                else
                { /* block id: 1661 */
                    (***p_4099->g_371) ^= (+0x3F2D5AE7L);
                    (*p_4099->g_372) = (*p_4099->g_539);
                }
            }
            else
            { /* block id: 1665 */
                int16_t l_3758 = (-1L);
                int2 l_3759 = make_int2(0x467864B7L, 0L);
                int i;
                l_3760--;
            }
            l_3765--;
        }
        for (l_3736.f2 = 1; (l_3736.f2 <= 5); l_3736.f2 += 1)
        { /* block id: 1673 */
            uint8_t l_3776[2];
            uint32_t *l_3786 = nullptr;
            uint32_t *l_3787 = nullptr;
            __shared__ uint32_t *l_3788;
            l_3788 = &hip_const_2[5];
            uint32_t *l_3789[7];
            __shared__ int16_t *l_3791;
            l_3791 = &p_4099->g_1197[5].f0;
            uint64_t *l_3792 = nullptr;
            uint64_t *l_3793 = nullptr;
            __shared__ uint64_t *l_3794;
            l_3794 = &l_3648;
            int32_t l_3797 = 0L;
            int i;
            for (int i = 0; i < 2; i++)
                l_3776[i] = 0x5FL;
            for (int i = 0; i < 7; i++)
                l_3789[i] = nullptr;
            l_3797 = ((make_int1(l_3768.w) ^ make_int1((safe_lshift_func_uint8_t_u_s((((safe_unary_minus_func_uint8_t_u((safe_add_func_int64_t_s_s((safe_add_func_int16_t_s_s((l_3776[0] & ((p_4099->g_1187.x |= (safe_sub_func_uint32_t_u_u((safe_rshift_func_uint64_t_u_s(((*l_3794) = (safe_mul_func_int32_t_s_s(0L, (make_uint4(make_uint2(p_4099->g_3783.w, p_4099->g_3783.w).x, 0xB25091E7L, (((safe_lshift_func_uint32_t_u_u(((*l_3433) ^= (0x97B13DDB3EEA538DLL < 0x8A7F5782915D213BLL)), 26)) && (l_3776[1] == (l_3776[0] == (make_short3(0x9F73L, ((*l_3791) = (&p_4099->g_1317[0][0][2] != l_3790)), 0L).y && p_4099->g_345.x)))) != (-4L)), 6UL).z >= l_3776[0])))), 53)), 0x2F677615L))) > 9L)), l_3795)), p_4099->g_2320.x)))) & p_4099->g_2167.y) & 1UL), l_3796))))).x;
        }
    }
    else
    { /* block id: 1680 */
        int2 l_3798 = make_int2(0x55F6B382L, 0x23FF9E34L);
        int16_t ***l_3821[5];
        __shared__ uint32_t l_3847;
        l_3847 = 4294967292UL;
        int16_t l_3851[7][4][3] = {{{1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}}, {{1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}}, {{1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}}, {{1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}}, {{1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}}, {{1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}}, {{1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}, {1L, 1L, 0L}}};
        int32_t *l_3856 = &l_3436;
        ulong3 l_3913 = make_ulong3(0x4A6D1CBA719EED8BLL, 0UL, 0x4A6D1CBA719EED8BLL);
        union U1 l_3915 = {0x17L};
        union U2 l_3973 = {-1L};
        uint64_t ****l_3975 = &p_4099->g_856;
        uint8_t ***l_3989 = &p_4099->g_2807;
        int32_t l_3990 = 1L;
        __shared__ int1 l_3993;
        l_3993 = make_int1(1L);
        // attempting a hip shared for loop
        __shared__ uint16_t l_4048[8];
        for (int i = 0; i < 8; i++)
            l_4048[i] = 0xC072L;
        union U2 **l_4071 = &p_4099->g_2973;
        int i, j, k;
        for (int i = 0; i < 5; i++)
            l_3821[i] = &p_4099->g_867[4];
        for (p_4099->g_670 = 0; (p_4099->g_670 <= 1); p_4099->g_670 += 1)
        { /* block id: 1683 */
            uint16_t l_3808[1][5][8] = {{{0xC6ECL, 0xC6ECL, 1UL, 0x893DL, 4UL, 0x893DL, 1UL, 0xC6ECL}, {0xC6ECL, 0xC6ECL, 1UL, 0x893DL, 4UL, 0x893DL, 1UL, 0xC6ECL}, {0xC6ECL, 0xC6ECL, 1UL, 0x893DL, 4UL, 0x893DL, 1UL, 0xC6ECL}, {0xC6ECL, 0xC6ECL, 1UL, 0x893DL, 4UL, 0x893DL, 1UL, 0xC6ECL}, {0xC6ECL, 0xC6ECL, 1UL, 0x893DL, 4UL, 0x893DL, 1UL, 0xC6ECL}}};
            int32_t l_3820 = 0x14402D3CL;
            uint32_t l_3822[5][5] = {{0x1487B3E5L, 1UL, 0x79A02EDBL, 1UL, 0x1487B3E5L}, {0x1487B3E5L, 1UL, 0x79A02EDBL, 1UL, 0x1487B3E5L}, {0x1487B3E5L, 1UL, 0x79A02EDBL, 1UL, 0x1487B3E5L}, {0x1487B3E5L, 1UL, 0x79A02EDBL, 1UL, 0x1487B3E5L}, {0x1487B3E5L, 1UL, 0x79A02EDBL, 1UL, 0x1487B3E5L}};
            __shared__ int32_t l_3841;
            l_3841 = 0xF20052A7L;
            int32_t l_3843 = 0x5D013DC9L;
            int32_t l_3846 = 0x194CED69L;
            union U1 ***l_3854 = &p_4099->g_3402;
            union U2 ***l_3860 = &p_4099->g_2972[0];
            char3 l_3881 = make_char3(0x9BL, 0x8FL, 0x9BL);
            uint32_t l_3908 = 1UL;
            int32_t **l_3916 = &l_3462[1][0];
            int32_t l_3941[4] = {0xCAD7D205L, 0xB8904D5FL, 0xCAD7D205L, 0xB8904D5FL};
            uint64_t ****l_3974 = &p_4099->g_856;
            int8_t *****l_3976 = &p_4099->g_2308;
            char2 l_4012 = make_char2((-6L), (-1L));
            union U1 **l_4056 = &p_4099->g_2108;
            int32_t l_4069 = (-1L);
            int i, j, k;
            if (make_int3(l_3798.x, l_3798.x, l_3798.x).z)
            { /* block id: 1684 */
                uint32_t l_3805[4] = {0xA1873664L, 0UL, 0xA1873664L, 0UL};
                int16_t l_3819[1][2];
                int32_t l_3827 = 0xE264A91AL;
                __shared__ int32_t l_3829;
                l_3829 = 0x1029F9DCL;
                __shared__ int32_t l_3833;
                l_3833 = 0xB8A7876DL;
                __shared__ int32_t l_3835;
                l_3835 = 0x66C82A8BL;
                int32_t l_3836[3][9][1] = {{{0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}, {0L}}};
                int i, j, k;
                for (int i = 0; i < 1; i++)
                {
                    for (int j = 0; j < 2; j++)
                        l_3819[i][j] = 1L;
                }
                for (l_3580 = 0; (l_3580 <= 1); l_3580 += 1)
                { /* block id: 1687 */
                    int32_t l_3830 = 1L;
                    __shared__ int32_t l_3832;
                    l_3832 = 0x2C557175L;
                    int32_t l_3834 = 0x3AB3B1ABL;
                    int i, j;
                    l_3820 = ((safe_rshift_func_uint32_t_u_u(((safe_lshift_func_uint32_t_u_s((p_4099->g_664[p_4099->g_670] | (l_3798.x && (safe_add_func_int64_t_s_s(6L, (make_long3(l_3805[0], (safe_rshift_func_int16_t_s_s((l_3808[0][4][7] != ((safe_mul_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint32_t_u_s(4294967286UL, 9)), (((*p_4099->g_2108) , ((safe_add_func_int8_t_s_s(((make_short2((-1L), 2L).x <= (l_3798.x < (safe_mul_func_uint64_t_u_u(l_3805[1], l_3808[0][0][5])))) & l_3798.y), p_4099->g_664[p_4099->g_670])) <= l_3808[0][4][2])) >= 0UL))), 1UL)) != l_3798.y)), 8)), 0x6E7BF20CC0F40537LL).z < 8UL))))), 0)) != l_3819[0][1]), p_4099->g_664[p_4099->g_670])) > p_4099->g_664[p_4099->g_670]);
                    l_3822[1][2] = (nullptr == l_3821[2]);
                    l_3820 ^= (safe_lshift_func_uint32_t_u_u(make_uint4(0x001590BCL, 0x23290A2FL, 3UL, (make_uint3(p_4099->g_3825.y, p_4099->g_3825.y, p_4099->g_3825.y).y < l_3826)).w, 13));
                    if (l_3805[3])
                        break;
                    for (l_3748 = 0; (l_3748 <= 0); l_3748 += 1)
                    { /* block id: 1694 */
                        int32_t l_3828[7][3][3] = {{{0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}}, {{0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}}, {{0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}}, {{0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}}, {{0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}}, {{0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}}, {{0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}, {0x119A982FL, 0L, 0xA4327121L}}};
                        int32_t l_3831 = 0x1B36D8CDL;
                        int i, j, k;
                        l_3837++;
                    }
                }
            }
            else
            { /* block id: 1698 */
                int32_t l_3840 = 0x8B658DFEL;
                int32_t l_3842 = 0x0C369FC8L;
                int32_t l_3844 = 6L;
                __shared__ int32_t l_3845;
                l_3845 = (-2L);
                --l_3847;
                for (l_3748 = 0; (l_3748 <= 5); l_3748 += 1)
                { /* block id: 1702 */
                    __shared__ int64_t l_3850;
                    l_3850 = (-1L);
                    l_3851[3][2][2] = l_3850;
                }
            }
            for (p_4099->g_2056 = 0; (p_4099->g_2056 <= 0); p_4099->g_2056 += 1)
            { /* block id: 1708 */
                int32_t *l_3852 = nullptr;
                int32_t l_3863 = 0x184839CDL;
                int32_t ***l_3917 = &l_3916;
                ulong2 l_3928 = make_ulong2(0x3B0EDFEDDD6C48FCLL, 1UL);
                int32_t l_3943 = 0x416A2516L;
                int32_t l_3945 = 0xAF6576A8L;
                int32_t l_3946 = 2L;
                uint64_t l_3949 = 0UL;
                uint8_t **l_3955 = &p_4099->g_137[0];
                uint16_t l_3962 = 0UL;
                int i, j;
                for (p_4099->g_80.f1 = 1; (p_4099->g_80.f1 <= 5); p_4099->g_80.f1 += 1)
                { /* block id: 1711 */
                    uint32_t l_3853 = 0xEF93D842L;
                    union U1 ****l_3855 = &l_3854;
                    int32_t l_3887 = (-1L);
                    int32_t l_3888 = 0xF77A3280L;
                    int32_t l_3889 = 0x674C67CDL;
                    for (p_4099->g_90 = 4; (p_4099->g_90 >= 0); p_4099->g_90 -= 1)
                    { /* block id: 1714 */
                        (*p_4099->g_372) = l_3852;
                        if (l_3853)
                            continue;
                    }
                    if ((((*l_3855) = l_3854) != (p_4099->g_2798 = &p_4099->g_3402)))
                    { /* block id: 1720 */
                        union U2 ****l_3857 = nullptr;
                        union U2 ***l_3859 = &p_4099->g_3707;
                        union U2 ****l_3858[10] = {nullptr, &l_3859, nullptr, &l_3859, nullptr, &l_3859, nullptr, &l_3859, nullptr, &l_3859};
                        uint32_t *l_3879 = nullptr;
                        __shared__ uint32_t *l_3880;
                        l_3880 = &p_4099->g_3558;
                        uint64_t *l_3886[3][1][6] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
                        __shared__ int32_t l_3890;
                        l_3890 = 3L;
                        uint16_t *l_3896 = nullptr;
                        uint16_t *l_3897 = nullptr;
                        uint16_t *l_3898 = &p_4099->g_91;
                        __shared__ int32_t l_3904;
                        l_3904 = (-1L);
                        int i, j, k;
                        l_3798.x = (-5L);
                        (*p_4099->g_372) = l_3856;
                        (****p_4099->g_1274) = ((l_3860 = nullptr) == &p_4099->g_3707);
                        l_3841 &= (l_3798.y &= ((safe_mul_func_int16_t_s_s(0x9166L, (l_3863 < (safe_rshift_func_int32_t_s_u(((safe_add_func_uint8_t_u_u(make_uchar1(0x55L).x, (((l_3820 = (safe_rshift_func_uint8_t_u_s((((l_3904 = (safe_rshift_func_uint64_t_u_u((safe_add_func_int8_t_s_s(make_char2(p_4099->g_3874.y, p_4099->g_3874.y).y, (((safe_add_func_uint32_t_u_u(make_uint3(4294967295UL, ((*l_3880) = (safe_lshift_func_int64_t_s_s(l_3853, 17))), 3UL).x, (((make_char2(((****p_4099->g_1274) ^ l_3843), (-1L)) | ((make_char2(l_3881.x, l_3881.x) ^ ((safe_mod(make_char2((safe_sub_func_uint64_t_u_u((++p_4099->g_3891[2]), ((make_long1(0x7308894FC4B509D2LL) ^ make_long1((make_int2(((((safe_rshift_func_uint16_t_u_u(((*l_3898) = make_ushort1(p_4099->g_957.x).x), 10)) , (l_3890 = (safe_mod_func_uint8_t_u_u((0x69L == l_3808[0][2][1]), ((((safe_sub_func_int64_t_s_s(make_long4(l_3822[4][0], 0x945D926B49531716LL, 0x5CCC9C312813191ALL, 0x196858FE8C6C0990LL).x, p_4099->g_3903)) & l_3888) > 0xC4F841F90FC6A2C5LL) | (**p_4099->g_2807)))))) || l_3890) && l_3843), 0xC2E20784L).y , l_3822[3][4])))).x)), 0xDCL), make_char2((-8L), (-8L))))))))).x < (*p_4099->g_575)))) >= 252UL) , (**p_4099->g_2807)))), l_3904))) ^ (*l_3856)) , l_3887), 5))) <= 1L) | 1L))) > (*l_3856)), l_3905))))) | 0x43L));
                    }
                    else
                    { /* block id: 1733 */
                        int32_t l_3906 = 0xF34996A7L;
                        int32_t l_3907 = 1L;
                        (*p_4099->g_539) = &l_3846;
                        ++l_3908;
                        l_3888 ^= (safe_lshift_func_uint64_t_u_u((l_3841 , make_ulong1(l_3913.y).x), make_ulong4(p_4099->g_3914.y, p_4099->g_3914.y, p_4099->g_3914.y, p_4099->g_3914.y).z));
                        return l_3888;
                    }
                    return l_3888;
                }
                (*l_3917) = (l_3915 , l_3916);
                l_3941[1] ^= (((safe_mul(((make_ushort1(p_4099->g_3920.x) | make_ushort1((p_4099->g_3921 && (safe_mod_func_int32_t_s_s((safe_div_func_uint8_t_u_u((((safe_div_func_uint8_t_u_u(((l_3843 = 0x9BE58696F57DD1D7LL) != make_ulong2(l_3928.x, l_3928.x).y), ((safe_mul(make_uchar1((safe_rshift_func_uint32_t_u_s(l_3808[0][3][2], 22))), make_uchar1((safe_mul_func_int8_t_s_s((~(safe_lshift_func_uint32_t_u_s(((*l_3856) && ((l_277 , &p_4099->g_1936) != nullptr)), (l_3841 = l_3808[0][4][7])))), (l_3820 = ((**p_4099->g_2807) = (safe_rshift_func_int64_t_s_u(((((safe_mod_func_uint8_t_u_u(((((4UL == (*l_3856)) , 0xB651L) != 0xF3B4L) == l_3822[1][2]), (*p_4099->g_575))) ^ (*l_3856)) | l_3846) > (*l_3856)), 44)))))))))).x)) == 0x28L) >= (*l_3856)), l_3881.y)), 0x5EB8957FL)))))), make_ushort1(0xD290L)))).x , (*l_3856));
                for (l_3580 = 0; (l_3580 <= 4); l_3580 += 1)
                { /* block id: 1749 */
                    int32_t l_3942 = 0xC182AA02L;
                    int32_t l_3944 = 0L;
                    int32_t l_3947 = 0x8C0A5BB4L;
                    int32_t l_3948 = 0x8A91B30CL;
                    union U1 **l_3952[1][2];
                    // attempting a hip shared for loop
                    __shared__ uint16_t *l_3965[5];
                    for (int i = 0; i < 5; i++)
                        l_3965[i] = nullptr;
                    int i, j, k;
                    for (int i = 0; i < 1; i++)
                    {
                        for (int j = 0; j < 2; j++)
                            l_3952[i][j] = nullptr;
                    }
                    l_3949--;
                    p_4099->g_2108 = nullptr;
                    l_3944 = (safe_rshift_func_uint32_t_u_s(make_uint2(((nullptr == l_3955) | ((*l_3856) = (safe_rshift_func_int8_t_s_s((p_4099->g_34.z = (safe_div_func_uint16_t_u_u(p_4099->g_2243.x, (safe_mod_func_uint32_t_u_u(l_3962, (safe_add_func_uint16_t_u_u((p_4099->g_2230.x &= p_4099->g_1121.x), ((0x0F2C7C58EB7E2409LL || (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((make_uint3(p_4099->g_3970.y, p_4099->g_3970.y, p_4099->g_3970.y).y , ((safe_lshift_func_uint8_t_u_u(((4294967288UL && 0x70F43BC9L) > ((l_3973 , l_3974) == l_3975)), 6)) , 65535UL)), l_3948)), 3))) >= 0x42L)))))))), 1)))), l_3841).y, 9));
                    l_3737[2] = l_3976;
                }
            }
            l_3990 &= (l_3798.y |= (safe_mod_func_int8_t_s_s((*l_3856), ((safe_lshift_func_int64_t_s_s(make_long1(p_4099->g_3981.y).x, (p_4099->g_246.x = 1L))) || (p_4099->g_1677.x = make_char4((&p_4099->g_2973 == ((*l_3860) = &p_4099->g_2973)), 0L, (0xE74FL < ((make_short3(((safe_add_func_int16_t_s_s(0x07AEL, (safe_rshift_func_int64_t_s_u(make_long3(p_4099->g_3986.x, p_4099->g_3986.x, p_4099->g_3986.x).z, ((make_ushort2(((safe_mul_func_uint64_t_u_u((*l_3856), 0x17657639D9810720LL)) , ((nullptr == l_3989) & (*p_4099->g_575))), l_3941[3]).x != p_4099->g_234[0]) | (*l_3856)))))) , 1L), 8L, 0L) & make_short3((-1L), (-1L), (-1L)))).y), (*l_3856)).y)))));
            for (l_3915.f0 = 0; (l_3915.f0 <= 5); l_3915.f0 += 1)
            { /* block id: 1766 */
                int32_t l_3992 = 0x57B044B8L;
                for (l_3846 = 5; (l_3846 >= 1); l_3846 -= 1)
                { /* block id: 1769 */
                    union U0 l_3991 = {0xED60L};
                    (****p_4099->g_1273) = (l_3991 , &l_3820);
                }
                for (p_4099->g_535 = 0; (p_4099->g_535 <= 0); p_4099->g_535 += 1)
                { /* block id: 1774 */
                    int i, j, k;
                    (*p_4099->g_539) = &l_3990;
                    if (p_4099->g_2755[(l_3915.f0 + 3)][(p_4099->g_670 + 4)][(p_4099->g_535 + 1)])
                        continue;
                    return p_4099->g_2755[(p_4099->g_535 + 4)][l_3915.f0][(p_4099->g_670 + 1)];
                }
                if (l_3992)
                    continue;
            }
            for (l_3843 = 0; (l_3843 >= 0); l_3843 -= 1)
            { /* block id: 1783 */
                __shared__ int32_t l_4015;
                l_4015 = 0L;
                ushort2 l_4018 = make_ushort2(0x7C45L, 65535UL);
                __shared__ union U1 *l_4050;
                l_4050 = &l_3915;
                int i;
                if (make_int3(l_3993.x, l_3993.x, l_3993.x).y)
                { /* block id: 1784 */
                    __shared__ uint32_t **l_3996;
                    l_3996 = &p_4099->g_1937[0];
                    uint32_t ***l_3997 = &p_4099->g_1936;
                    int32_t l_4009 = (-10L);
                    short3 l_4027 = make_short3(0x1765L, 0xB9FFL, 0x1765L);
                    uint32_t l_4046[9][7][4] = {{{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}, {{18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}, {18446744073709551612UL, 0x855E262EL, 0x06AFF0A7L, 2UL}}};
                    uint16_t *l_4047 = &l_3808[0][0][5];
                    int i, j, k;
                    l_4015 = ((p_4099->g_2324.z != (((((safe_rshift_func_uint8_t_u_u(0UL, 5)) , &p_4099->g_1937[0]) != ((*l_3997) = l_3996)) || make_int3((((*l_3856) |= make_ushort4(0x39B7L, 0xB08BL, 0x8886L, 0x243CL).x) ^ ((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((safe_div_func_uint32_t_u_u((0L <= ((safe_rshift_func_int16_t_s_s(make_short3(p_4099->g_4008.z, p_4099->g_4008.z, p_4099->g_4008.z).y, 14)) & ((l_3846 ^= l_3841) == l_4009))), (safe_mul_func_int8_t_s_s(make_char1(l_4012.y).x, (safe_rshift_func_uint16_t_u_u(p_4099->g_1677.x, 10)))))), 4)), 13)) , ((~make_ushort4(0xBA5AL, 1UL, 0x1B91L, 0xD956L))).y)), ((((0x7EDAB82AL ^ l_4009) < 0xF60E7FDFL) ^ l_4009) == l_3941[1]), (*l_3856)).x) , l_4009)) | p_4099->g_1197[5].f0);
                    if ((*l_3856))
                        continue;
                    l_4048[1] ^= ((safe_mod_func_uint16_t_u_u((!((*l_3856) ^ make_ushort2(l_4018.y, l_4018.y).y)), (safe_div_func_uint16_t_u_u(((*l_4047) = (safe_lshift_func_int64_t_s_u((+(safe_add_func_uint8_t_u_u(((l_4046[6][5][3] = ((safe_div(((make_short1(((l_4009 , (*p_4099->g_1936)) == (*p_4099->g_1936))) & ((((make_short1(l_4027.y) ^ ((safe_lshift(((safe_div(make_short1((0x2F38L == (safe_mul_func_int32_t_s_s((safe_add_func_int32_t_s_s((safe_rshift_func_int64_t_s_u((l_4015 ^= l_3808[0][4][7]), 61)), (l_4027.z , (safe_mod_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(make_ushort3(0xBAD5L, 0xD71CL, (safe_lshift_func_int64_t_s_u((safe_mul_func_int16_t_s_s((*l_3856), 1UL)), 25))).x, 1UL)), 0x93L))))), l_4018.y)))), make_short1(0x86A9L)))), make_short1(16)))))) ^ make_short1((-8L)))))), make_short1(0x8830L)))).x) >= l_4009), (*l_3856)))), l_4009))), p_4099->g_1675.y)))) < l_3822[3][1]);
                }
                else
                { /* block id: 1794 */
                    union U1 *l_4049 = &p_4099->g_2023;
                    union U1 **l_4051 = nullptr;
                    uint16_t *l_4052 = nullptr;
                    uint16_t *l_4053 = nullptr;
                    int32_t l_4054 = 0x454DB5F7L;
                    if (((*l_3856) = ((l_4049 != (p_4099->g_3403[0][7][4] = (l_4050 = nullptr))) == (((*l_3854) = (l_3915 , nullptr)) != l_4056))))
                    { /* block id: 1801 */
                        int32_t l_4059 = 0x61C98A94L;
                        uchar2 l_4060 = make_uchar2(0x1AL, 0x59L);
                        int i;
                        (*l_3856) &= (safe_add_func_int64_t_s_s(((func_58(l_4059, ((*l_4049) = ((l_3941[1] = l_4060.y) , l_3915)), (safe_rshift_func_int32_t_s_u(0xC499ACE2L, (safe_mod_func_int16_t_s_s(((safe_div_func_int32_t_s_s((safe_add_func_int16_t_s_s(l_4060.x, ((1L < (&p_4099->g_66[1] == nullptr)) < (l_4015 < l_3808[0][1][1])))), l_3843)) < l_4060.y), p_4099->g_504.z)))), p_4099) , 0x6DA88C1CL) == 1L), l_4054));
                    }
                    else
                    { /* block id: 1805 */
                        l_4054 = (1L ^ 8L);
                        if (l_3822[1][2])
                            continue;
                        (*l_3856) ^= l_4018.y;
                    }
                }
                return l_4069;
            }
        }
        (*l_4071) = l_4070;
    }
    for (l_12 = (-8); (l_12 <= 49); l_12++)
    { /* block id: 1818 */
        int16_t l_4074 = 0L;
        if (l_4074)
            break;
    }
    l_4097 &= (p_4099->g_4096 = (safe_unary_minus_func_int32_t_s((safe_lshift_func_int64_t_s_s(((safe_div_func_int64_t_s_s((0xA6896726382483E7LL ^ ((*p_4099->g_3738) != (*p_4099->g_3738))), (safe_rshift_func_int32_t_s_s((((safe_sub_func_int8_t_s_s(((**p_4099->g_2807) >= (**p_4099->g_2807)), (*p_4099->g_575))) ^ l_4086) || (!(safe_mul_func_int32_t_s_s(((((*l_4089) = &p_4099->g_2807) == nullptr) && l_4091), l_4092)))), l_4093)))) , l_4094), p_4099->g_4095)))));
    return l_4098;
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_91 p_4099->g_345 p_4099->g_2139 p_4099->g_2807 p_4099->g_137 p_4099->g_3343 p_4099->g_1273 p_4099->g_1274 p_4099->g_371 p_4099->g_372 p_4099->g_539 p_4099->g_175 p_4099->g_1210 p_4099->g_1556 p_4099->g_575 hip_const_3 p_4099->g_2214 p_4099->g_2833 p_4099->g_66 p_4099->g_2108 p_4099->g_664 p_4099->g_2422 p_4099->g_236 p_4099->g_161
 * writes: p_4099->g_91 p_4099->g_2422 p_4099->g_2139 p_4099->g_2023.f2 p_4099->g_136 p_4099->g_2023.f4 p_4099->g_175 p_4099->g_88 p_4099->g_2833 p_4099->g_3402 p_4099->g_236 p_4099->g_162 p_4099->g_3427
 */
__device__ int32_t  func_2(union U2  p_3, int64_t  p_4, int64_t  p_5, int32_t  p_6, int64_t  p_7, struct S3 * p_4099)
{ /* block id: 1477 */
    uint32_t ***l_3237 = &p_4099->g_3008;
    union U0 l_3244 = {0L};
    __shared__ long4 l_3252;
    l_3252 = make_long4(0x6199AF8FEFD8503ALL, 0x79D0724351C8AF31LL, 0x6199AF8FEFD8503ALL, 0x79D0724351C8AF31LL);
    long2 l_3253 = make_long2(0x20C6BC4491951F5CLL, (-5L));
    int32_t l_3262 = (-1L);
    int32_t l_3271 = 0x9DEF85A5L;
    int32_t l_3275 = 0x3143C1C5L;
    int32_t l_3276 = 0xEC8B8518L;
    int32_t l_3277 = 0x3957B963L;
    int32_t l_3278 = 0L;
    int32_t l_3280 = 0xC61DA426L;
    int32_t l_3281 = 0xE7416895L;
    int32_t l_3282 = 1L;
    int4 l_3364 = make_int4(0xB990AC3DL, 1L, 0xB990AC3DL, 1L);
    char4 l_3371 = make_char4((-1L), (-7L), (-1L), (-7L));
    union U1 **l_3401[4][10] = {{&p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108}, {&p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108}, {&p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108}, {&p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108}};
    short1 l_3429 = make_short1(0L);
    int i, j;
    for (p_4099->g_91 = 5; (p_4099->g_91 > 56); p_4099->g_91 = safe_add_func_int64_t_s_s(p_4099->g_91, 3))
    { /* block id: 1480 */
        // attempting a hip shared for loop
        __shared__ uint8_t l_3234[6];
        for (int i = 0; i < 6; i++)
            l_3234[i] = 255UL;
        union U2 l_3245 = {0x89L};
        __shared__ int32_t l_3263;
        l_3263 = 0x2FB7C679L;
        __shared__ int8_t l_3266;
        l_3266 = (-1L);
        int32_t l_3268 = 0xA36568FCL;
        int32_t l_3269 = (-1L);
        __shared__ int32_t l_3270;
        l_3270 = 0xBCCDE108L;
        int32_t l_3272 = 4L;
        __shared__ int32_t l_3273;
        l_3273 = 2L;
        __shared__ int32_t l_3274;
        l_3274 = 0x8D9C1781L;
        // attempting a hip shared for loop
        __shared__ int32_t l_3279[9];
        for (int i = 0; i < 9; i++)
            l_3279[i] = 0x96D82A6AL;
        __shared__ uint64_t l_3283;
        l_3283 = 1UL;
        uint32_t l_3301 = 0x590AEAA4L;
        __shared__ int1 l_3312;
        l_3312 = make_int1(4L);
        __shared__ uint16_t l_3342;
        l_3342 = 0x5037L;
        uint64_t l_3377 = 0xD51AF256B28E0791LL;
        int16_t l_3386 = 0L;
        union U1 **l_3396 = &p_4099->g_2108;
        int i;
        for (int i = 0; i < 6; i++)
            l_3234[i] = 255UL;
        if (l_3234[5])
        { /* block id: 1481 */
            uint32_t ***l_3239[1];
            uint32_t ****l_3238 = &l_3239[0];
            int32_t l_3259 = (-1L);
            int32_t l_3260 = (-5L);
            int32_t l_3264 = (-1L);
            int32_t l_3265 = 0x319AD036L;
            int32_t l_3267[2][6][5] = {{{0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}}, {{0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}, {0xE1526181L, (-3L), 0x4D878F50L, 0x5F292274L, 0x5BDCAC4EL}}};
            int i, j, k;
            for (int i = 0; i < 1; i++)
                l_3239[i] = &p_4099->g_3008;
            if ((4294967295UL || (l_3237 != ((*l_3238) = &p_4099->g_3008))))
            { /* block id: 1483 */
                long1 l_3249 = make_long1(0x158C549628D2E95ELL);
                int32_t l_3258 = 0xD899451AL;
                int32_t *l_3261[10][7] = {{&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}, {&p_4099->g_2592, nullptr, &p_4099->g_2592, nullptr, &l_3258, nullptr, nullptr}};
                int i, j;
                if (p_7)
                    break;
                l_3260 ^= ((((-1L) != p_6) & (p_6 ^ (((make_uint2((p_6 & (safe_div_func_int32_t_s_s((((make_uint4((((p_4 , l_3234[5]) , make_long1(((safe_lshift_func_int16_t_s_u(((func_9(func_9(func_9(l_3244, (l_3258 ^= (l_3245 , (!(safe_rshift_func_int64_t_s_u(((((make_long2(p_4099->g_3248.y, p_4099->g_3248.y) ^ make_long2(l_3249.x, l_3249.x))) ^ make_long2(((((safe_add(make_long4(l_3252.x, l_3252.x, l_3252.x, l_3252.x), make_long4(l_3253.x, l_3253.x, l_3253.x, l_3253.x)))) & ((safe_lshift(((safe_div(make_long4(0L, 2L, 0xC163599400832F87LL, (-1L)), make_long4(0L, 0L, 0L, 0L)))), make_long4(64, 64, 64, 64)))))).y, 0xA7ECB19C158270DFLL))).x, 27))))), p_4099), p_3.f0, p_4099), p_4, p_4099) , l_3259) ^ 3L), 11)) , p_4099->g_1560.x)).x) ^ 0x01D4F05FC4082446LL), l_3259, 0x4A92B681L, p_3.f0) ^ make_uint4(4294967289UL, 4294967289UL, 4294967289UL, 4294967289UL))).w | p_4), l_3259))), l_3259) ^ make_uint2(4294967292UL, 4294967292UL))).y != l_3252.x))) & p_4099->g_345.x);
                ++l_3283;
            }
            else
            { /* block id: 1488 */
                __shared__ int4 l_3314;
                l_3314 = make_int4(0x3ACAA86DL, 0xBBE0D471L, 0x3ACAA86DL, 0xBBE0D471L);
                uint32_t ****l_3329 = &l_3237;
                __shared__ int1 l_3335;
                l_3335 = make_int1(0x55E23B93L);
                int32_t *l_3345 = &l_3272;
                int32_t *l_3346 = &l_3275;
                int32_t *l_3347 = &l_3282;
                int32_t *l_3348 = nullptr;
                int32_t *l_3349[6];
                uint16_t l_3350 = 65528UL;
                int i;
                for (int i = 0; i < 6; i++)
                    l_3349[i] = &l_3259;
                if (((safe_mul_func_uint64_t_u_u(make_ulong3(p_4099->g_3288.x, p_4099->g_3288.x, p_4099->g_3288.x).y, (safe_mod_func_uint64_t_u_u(18446744073709551615UL, p_6)))) > l_3260))
                { /* block id: 1489 */
                    uint32_t l_3319 = 0xEBAFE44CL;
                    for (p_4099->g_2422 = 0; (p_4099->g_2422 == 24); ++p_4099->g_2422)
                    { /* block id: 1492 */
                        int16_t *l_3304[3][5];
                        int32_t l_3305 = (-1L);
                        uint16_t *l_3320 = nullptr;
                        // attempting a hip shared for loop
                        __shared__ uint16_t *l_3321[9][4];
                        for (int i = 0; i < 9; i++)
                        {
                            for (int j = 0; j < 4; j++)
                                l_3321[i][j] = &p_4099->g_88;
                        }
                        int32_t *l_3322 = nullptr;
                        int32_t *l_3323 = nullptr;
                        int32_t *l_3324 = &l_3260;
                        uint32_t *****l_3328[7];
                        __shared__ int32_t *l_3332;
                        l_3332 = &l_3275;
                        int i, j;
                        for (int i = 0; i < 3; i++)
                        {
                            for (int j = 0; j < 5; j++)
                                l_3304[i][j] = nullptr;
                        }
                        for (int i = 0; i < 7; i++)
                            l_3328[i] = &l_3238;
                        (*l_3324) = (l_3275 = (safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_s((l_3263 &= (safe_mod_func_uint64_t_u_u((((l_3262 & (l_3301 != (((((safe_rshift_func_int8_t_s_u((make_int3(p_4, 0x2307E27BL, 0x383A9AD5L).y && (nullptr != l_3304[1][4])), l_3305)) == ((safe_add_func_int32_t_s_s(((safe_div(((((((safe_mul(make_int3(l_3312.x, l_3312.x, l_3312.x), make_int3(p_4099->g_3313.z, p_4099->g_3313.z, p_4099->g_3313.z)))) & make_int3(l_3314.z, l_3314.z, l_3314.z))) ^ make_int3((safe_rshift_func_int32_t_s_u((safe_sub_func_int64_t_s_s(p_6, make_ulong2(2UL, 18446744073709551615UL).x)), 14)), l_3319, p_5))), make_int3(0L, 0L, 0L)))).x, 0x1983643DL)) , l_3259)) | p_5) >= (-10L)) == p_5))) && p_7) , p_4), 9L))), l_3305)), p_6)));
                        l_3267[1][5][1] &= make_int4(p_4099->g_3325.x, p_4099->g_3325.x, p_4099->g_3325.x, p_4099->g_3325.x).x;
                        (*l_3332) = (((p_4099->g_2139.x ^= (((make_uchar4(0x2EL, p_7, (safe_div_func_int64_t_s_s(((l_3329 = &l_3239[0]) == nullptr), ((***p_4099->g_3230) , 0x20FC79AA8F403773LL))), 8UL).x == (((*l_3324) = (((l_3259 & make_uint2(4294967295UL, ((p_4099->g_1187.x = (safe_sub_func_int16_t_s_s(make_short2((-1L), 0L).x, (3L & p_7)))) > (!p_4099->g_1156.x))).y) >= l_3262) < p_3.f0)) < (-7L))) ^ l_3262) ^ 255UL)) == 0x7743L) , l_3275);
                    }
                }
                else
                { /* block id: 1503 */
                    uint8_t *l_3341 = nullptr;
                    int32_t *l_3344[1];
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_3344[i] = &l_3267[0][2][2];
                    for (p_4099->g_2023.f2 = (-29); (p_4099->g_2023.f2 >= 36); p_4099->g_2023.f2++)
                    { /* block id: 1506 */
                        l_3276 = make_int2(l_3335.x, l_3335.x).y;
                        l_3342 ^= (safe_mul_func_uint32_t_u_u(0x2E22231BL, (((**p_4099->g_2807) = ((safe_add_func_uint8_t_u_u((((-1L) == 0x6602L) || p_5), (safe_unary_minus_func_int64_t_s((p_7 ^ (nullptr != l_3341)))))) <= make_ushort2(7UL, 0xE1F1L).x)) >= 0x76L)));
                    }
                    l_3260 = p_4;
                    l_3276 |= p_4099->g_3343;
                }
                ++l_3350;
                for (p_4099->g_2023.f4 = (-24); (p_4099->g_2023.f4 < 17); p_4099->g_2023.f4++)
                { /* block id: 1517 */
                    int64_t l_3355 = 3L;
                    (*l_3346) |= p_5;
                    return l_3355;
                }
            }
        }
        else
        { /* block id: 1522 */
            int32_t *l_3356 = &l_3275;
            int32_t l_3384 = 0x1B2CB40EL;
            int32_t l_3385 = (-9L);
            __shared__ uint8_t **l_3425;
            l_3425 = nullptr;
            uint8_t **l_3426 = nullptr;
            (****p_4099->g_1273) = l_3356;
            for (p_4099->g_88 = (-18); (p_4099->g_88 >= 26); p_4099->g_88 = safe_add_func_uint8_t_u_u(p_4099->g_88, 1))
            { /* block id: 1526 */
                int2 l_3359 = make_int2(0x830267EFL, 0xED942428L);
                __shared__ uint8_t l_3376;
                l_3376 = 3UL;
                __shared__ int32_t l_3378;
                l_3378 = 0x7AA13E0EL;
                int32_t *l_3408 = &l_3282;
                int i;
                (**p_4099->g_539) = make_int1(l_3359.x).x;
                l_3378 &= (((0xBAL > (4L & (0L < (safe_mul_func_int16_t_s_s(((((safe_add_func_uint32_t_u_u((*l_3356), make_int2(l_3364.x, l_3364.x).y)) > ((safe_add_func_int32_t_s_s((safe_mul_func_int64_t_s_s((0xFBL < (p_3.f0 = ((safe_rshift_func_uint16_t_u_u(65527UL, (((p_4099->g_1210.x || ((make_char2(l_3371.x, l_3371.x).y == (safe_sub_func_uint8_t_u_u(l_3266, (l_3376 = (safe_lshift_func_uint16_t_u_s(65527UL, l_3359.x)))))) >= l_3359.x)) && l_3377) , p_4099->g_1556.x))) == 0x1C5FL))), p_6)), p_5)) < (*p_4099->g_575))) < p_4) > p_5), (-1L)))))) == (-1L)) , 0L);
                for (p_4099->g_2833 = 0; (p_4099->g_2833 <= 1); p_4099->g_2833 += 1)
                { /* block id: 1533 */
                    uint32_t l_3387 = 0x9CBBB69DL;
                    uint64_t *****l_3416[5];
                    int i;
                    for (int i = 0; i < 5; i++)
                        l_3416[i] = &p_4099->g_1317[0][0][4];
                    for (p_4099->g_2422 = 0; (p_4099->g_2422 <= 8); p_4099->g_2422 += 1)
                    { /* block id: 1536 */
                        int32_t *l_3379 = &l_3278;
                        int32_t l_3380 = (-3L);
                        int32_t *l_3381 = nullptr;
                        int32_t *l_3382 = &l_3281;
                        int32_t *l_3383[1][7][4] = {{{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}};
                        uint32_t *l_3404 = &p_4099->g_2023.f2;
                        uint32_t *l_3405 = nullptr;
                        uint32_t *l_3406[2];
                        int32_t l_3407[5] = {0x995F51DFL, (-1L), 0x995F51DFL, (-1L), 0x995F51DFL};
                        int i, j, k;
                        for (int i = 0; i < 2; i++)
                            l_3406[i] = nullptr;
                        l_3387++;
                        (*l_3356) = (~(safe_sub_func_int8_t_s_s(((safe_div_func_uint16_t_u_u((safe_rshift_func_int32_t_s_s((p_4099->g_66[(p_4099->g_2833 + 1)] , (((((((make_char2(1L, 0xC1L) ^ make_char2(0x75L, 0x42L))).x , (*p_4099->g_2108)) , 0x1E11L) >= ((l_3407[2] ^= (l_3396 == ((safe_mul_func_uint16_t_u_u((safe_lshift_func_int64_t_s_s((0x03EAAAC0L || p_4099->g_664[(p_4099->g_2833 + 4)]), 25)), l_3279[p_4099->g_2422])) , (p_4099->g_3402 = l_3401[1][6])))) == 0x19A96AFAL)) | p_6) | l_3270)), p_3.f0)), 0xD5B2L)) > (*l_3356)), (*p_4099->g_575))));
                        (****p_4099->g_1273) = l_3408;
                    }
                    for (l_3262 = 1; (l_3262 >= 0); l_3262 -= 1)
                    { /* block id: 1545 */
                        int64_t *l_3415[3][9] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
                        union U2 l_3417[5] = {{0x74L}, {1L}, {0x74L}, {1L}, {0x74L}};
                        int32_t *l_3418 = &p_4099->g_273[1][3][3];
                        int i, j;
                        l_3277 ^= make_int1((p_4099->g_664[(p_4099->g_2833 + 3)] <= make_uchar3(((make_char2(((safe_sub_func_int16_t_s_s((safe_sub_func_int16_t_s_s((((l_3263 = l_3234[(p_4099->g_2833 + 2)]) <= make_long3(0xB06F77DA7CFBA7D7LL, 0xB269B02896185426LL, (nullptr == l_3416[4])).x) != (p_4099->g_3194[(p_4099->g_2833 + 2)] , (((((l_3417[3] , (((make_short3(p_5, (-1L), (-1L)) & ((make_short3(((((((*l_3418) &= (((l_3244 , 5L) != p_4099->g_144.y) == p_4099->g_760.z)) , l_3268) , (*p_4099->g_3008)) == nullptr) , p_6), 1L, 0x34C8L) ^ make_short3(1L, 1L, 1L))))).z , p_4099->g_413.y)) ^ 0x9A5AL) != l_3234[(p_4099->g_2833 + 2)]) > 0x9B2E4145C1747346LL) < (*l_3356)))), l_3278)), 65531UL)) == p_4099->g_664[(p_4099->g_2833 + 3)]), 0xE4L).y , nullptr) != nullptr), p_7, 0UL).z)).x;
                    }
                    for (p_4099->g_236 = 0; (p_4099->g_236 <= 1); p_4099->g_236 += 1)
                    { /* block id: 1552 */
                        int i;
                        return p_4099->g_664[(p_4099->g_236 + 4)];
                    }
                    (*p_4099->g_161) = nullptr;
                    for (l_3278 = 5; (l_3278 >= 0); l_3278 -= 1)
                    { /* block id: 1558 */
                        int i;
                        return p_4099->g_664[l_3278];
                    }
                }
            }
            (*l_3356) |= ((safe_mul_func_int64_t_s_s((safe_add_func_int16_t_s_s(l_3252.y, (safe_add_func_int64_t_s_s((l_3364.y = (((*p_4099->g_539) = (*p_4099->g_372)) != &l_3384)), ((*p_4099->g_2807) != (p_4099->g_3427 = nullptr)))))), (-1L))) > p_6);
            if ((**p_4099->g_372))
                break;
        }
        (*p_4099->g_539) = &l_3269;
        (****p_4099->g_1274) = (safe_unary_minus_func_int64_t_s(((l_3279[7] |= make_short4(l_3429.x, l_3429.x, l_3429.x, l_3429.x).y) && 1L)));
    }
    return l_3429.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_2779 p_4099->g_2024
 * writes: p_4099->g_2023.f0 p_4099->g_88
 */
__device__ union U0  func_9(union U0  p_10, int32_t  p_11, struct S3 * p_4099)
{ /* block id: 1298 */
    uint8_t l_2782 = 255UL;
    uint32_t **l_2789 = &p_4099->g_1937[0];
    uint8_t *l_2790 = &p_4099->g_2023.f0;
    uint16_t *l_2791 = nullptr;
    uint16_t *l_2792 = &p_4099->g_88;
    __shared__ int32_t l_2793;
    l_2793 = 0x748881CDL;
    union U1 *l_2850 = &p_4099->g_66[0];
    int32_t l_2875 = 0xD837951BL;
    int32_t l_2876 = (-2L);
    int32_t l_2877 = 0x8AEB47ACL;
    int32_t l_2880[4];
    int8_t l_2886[2];
    int8_t l_2909 = (-2L);
    int64_t **l_2917[4][10] = {{&p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {&p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {&p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {&p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}};
    // attempting a hip shared for loop
    __shared__ int64_t ***l_2916[4];
    for (int i = 0; i < 4; i++)
        l_2916[i] = &l_2917[0][1];
    int64_t ****l_2915 = &l_2916[0];
    int8_t l_2927 = 0L;
    uint16_t l_2930 = 65530UL;
    __shared__ uchar1 l_2943;
    l_2943 = make_uchar1(255UL);
    int16_t *l_2948 = nullptr;
    uint8_t l_2996 = 0xC3L;
    // attempting a hip shared for loop
    __shared__ union U0 ****l_3012[1][3];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 3; j++)
            l_3012[i][j] = nullptr;
    }
    ulong1 l_3027 = make_ulong1(18446744073709551615UL);
    __shared__ uint32_t l_3030;
    l_3030 = 18446744073709551610UL;
    __shared__ int64_t l_3070;
    l_3070 = 0xC558B44810237D4DLL;
    int8_t l_3078 = 0xC5L;
    int16_t l_3080 = 9L;
    uint32_t l_3084 = 0x825EE67EL;
    union U2 **l_3087 = &p_4099->g_2973;
    union U0 l_3113 = {0x2661L};
    union U0 *****l_3119[3][10][6] = {{{&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}}, {{&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}}, {{&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}, {&p_4099->g_318, &p_4099->g_318, &p_4099->g_318, nullptr, &p_4099->g_318, &p_4099->g_318}}};
    __shared__ uchar4 l_3198;
    l_3198 = make_uchar4(0xCDL, 253UL, 0xCDL, 253UL);
    int i, j, k;
    for (int i = 0; i < 4; i++)
        l_2880[i] = 0x8658223EL;
    for (int i = 0; i < 2; i++)
        l_2886[i] = 2L;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 3; j++)
            l_3012[i][j] = nullptr;
    }
    if (((~make_int2((safe_rshift_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u(((l_2793 |= (0x9F98F6AAFBA76913LL >= (((safe_rshift_func_int8_t_s_u(make_char2(p_4099->g_2779.x, p_4099->g_2779.x).y, (p_11 || (safe_add_func_int8_t_s_s((nullptr != &p_4099->g_319), ((l_2782 < ((make_int2(0x44330A1FL, 0x81C41169L) ^ ((safe_add(make_int2(0xBAFC3F7EL, 0x58BB6C3DL), make_int2(0x5C4B10DBL, 0x26395C8BL)))))).x) ^ ((*l_2792) = (safe_lshift_func_uint8_t_u_u(((*l_2790) = ((safe_div_func_int8_t_s_s((l_2782 | (p_4099->g_2024.z , (&p_4099->g_1937[1] == l_2789))), p_11)) > 1UL)), p_11))))))))) != p_11) <= 3L))) != l_2782), 1)), p_11)), 3L))).x)
    { /* block id: 1302 */
        uint8_t **l_2804 = &p_4099->g_137[0];
        int32_t l_2808 = 1L;
        __shared__ int32_t **l_2811;
        l_2811 = &p_4099->g_175;
        int32_t l_2868 = 4L;
        int32_t l_2869 = 8L;
        int32_t l_2870 = (-1L);
        __shared__ int32_t l_2878;
        l_2878 = 0x71FBC530L;
        int32_t l_2881 = 0x279A42F7L;
        int32_t l_2883 = (-1L);
        int32_t l_2887 = 0x9176C32FL;
        int8_t l_2906 = (-1L);
        int32_t l_2908 = 0L;
        __shared__ int32_t l_2928;
        l_2928 = 9L;
        int32_t l_2929[8][3] = {{0L, 0x9298C720L, 7L}, {0L, 0x9298C720L, 7L}, {0L, 0x9298C720L, 7L}, {0L, 0x9298C720L, 7L}, {0L, 0x9298C720L, 7L}, {0L, 0x9298C720L, 7L}, {0L, 0x9298C720L, 7L}, {0L, 0x9298C720L, 7L}};
        __shared__ int32_t *l_2933;
        l_2933 = &l_2869;
        __shared__ union U2 l_2955;
        l_2955 = {-1L};
        __shared__ int32_t *****l_2984;
        l_2984 = &p_4099->g_1274;
        __shared__ uint32_t l_3001;
        l_3001 = 0xF62B0A8EL;
        uint32_t **l_3004 = &p_4099->g_2020;
        uint16_t l_3023 = 0xB832L;
        uint32_t l_3081 = 0UL;
        uint2 l_3088 = make_uint2(1UL, 0x6FCDC95BL);
        ushort2 l_3101 = make_ushort2(0x19E8L, 0x702DL);
        union U1 **l_3124[8][1][7] = {{{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}, {{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}, {{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}, {{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}, {{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}, {{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}, {{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}, {{&p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, &p_4099->g_2108, nullptr, &p_4099->g_2108}}};
        union U1 ***l_3123 = &l_3124[5][0][1];
        uint2 l_3138 = make_uint2(9UL, 1UL);
        uint64_t l_3180 = 7UL;
        int64_t l_3195 = (-3L);
        // attempting a hip shared for loop
        __shared__ int16_t ***l_3207[7][1][3];
        for (int i = 0; i < 7; i++)
        {
            for (int j = 0; j < 1; j++)
            {
                for (int k = 0; k < 3; k++)
                    l_3207[i][j][k] = nullptr;
            }
        }
        __shared__ union U0 ***l_3229;
        l_3229 = &p_4099->g_3038[0][0];
        int i, j, k;
        for (l_2782 = 0; (l_2782 > 58); ++l_2782)
        { /* block id: 1305 */
            int16_t *l_2799[7];
            uint8_t **l_2806[10][9][2] = {{{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}, {{&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}, {&l_2790, nullptr}}};
            uint8_t ***l_2805[6][4] = {{&l_2806[3][4][0], &l_2804, &l_2806[3][4][0], &l_2806[3][4][0]}, {&l_2806[3][4][0], &l_2804, &l_2806[3][4][0], &l_2806[3][4][0]}, {&l_2806[3][4][0], &l_2804, &l_2806[3][4][0], &l_2806[3][4][0]}, {&l_2806[3][4][0], &l_2804, &l_2806[3][4][0], &l_2806[3][4][0]}, {&l_2806[3][4][0], &l_2804, &l_2806[3][4][0], &l_2806[3][4][0]}, {&l_2806[3][4][0], &l_2804, &l_2806[3][4][0], &l_2806[3][4][0]}};
            int32_t l_2809 = 0x81436D27L;
            __shared__ int32_t l_2820;
            l_2820 = 0x8CEF562CL;
            uint32_t ***l_2830 = &l_2789;
            __shared__ int32_t l_2841;
            l_2841 = 0xBE3D05F9L;
            __shared__ uint16_t l_2846;
            l_2846 = 0x1CFCL;
            int32_t l_2872[7][8][4] = {{{0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}}, {{0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}}, {{0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}}, {{0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}}, {{0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}}, {{0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}}, {{0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}, {0L, 1L, 3L, 0L}}};
            uint64_t l_2911 = 18446744073709551615UL;
            int i, j, k;
            for (int i = 0; i < 7; i++)
                l_2799[i] = nullptr;
        }
        (*l_2933) = 0xBCF1EC8AL;
    }
    else
    { /* block id: 1469 */
        union U0 l_3231 = {0L};
        for (p_10.f0 = 4; (p_10.f0 >= 0); p_10.f0 -= 1)
        { /* block id: 1472 */
            return l_3231;
        }
    }
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_34 p_4099->g_867 p_4099->g_8 p_4099->g_371 p_4099->g_372 p_4099->g_175 p_4099->g_66 p_4099->g_239 p_4099->g_856 p_4099->g_857 p_4099->g_574 p_4099->g_575 p_4099->g_2214 hip_const_3 p_4099->g_72 p_4099->g_760 p_4099->g_318 p_4099->g_319 p_4099->g_161 p_4099->g_162 p_4099->g_80 p_4099->g_959 p_4099->g_663 p_4099->g_1274 p_4099->g_122 p_4099->g_2108 p_4099->g_1556 p_4099->g_1273 p_4099->g_763 p_4099->g_2020 p_4099->g_664 p_4099->g_1210 p_4099->g_1031 p_4099->g_1917 p_4099->g_2308 p_4099->g_212 p_4099->g_539 p_4099->g_1576 p_4099->g_164 p_4099->g_2422 p_4099->g_2199 p_4099->g_163 p_4099->g_1196 p_4099->g_1197 p_4099->g_2023.f4 p_4099->g_2543 p_4099->g_2755 p_4099->g_2765 p_4099->g_1725 p_4099->g_535 p_4099->g_2139 p_4099->g_90 p_4099->g_2167 p_4099->g_2023.f0 p_4099->g_2198 p_4099->g_88 p_4099->g_2230 p_4099->g_2243 p_4099->g_80.f1 p_4099->g_2320 p_4099->g_2324 p_4099->g_118 p_4099->g_39 p_4099->g_566 p_4099->g_2478 p_4099->g_2499 p_4099->g_2500 p_4099->g_2501 p_4099->g_2515 p_4099->g_2519 p_4099->g_80.f0
 * writes: p_4099->g_535 p_4099->g_2108 p_4099->g_90 p_4099->g_91 p_4099->g_175 p_4099->g_239 p_4099->g_80.f0 p_4099->g_912 p_4099->g_664 p_4099->g_164 p_4099->g_574 p_4099->g_1556 p_4099->g_122 p_4099->g_1026 p_4099->g_2023.f0 p_4099->g_1274 p_4099->g_88 p_4099->g_763 p_4099->g_857 p_4099->g_575 p_4099->g_80.f1 p_4099->g_1210 p_4099->g_2308 p_4099->g_2309 p_4099->g_212 p_4099->g_118 p_4099->g_137 p_4099->g_868 p_4099->g_2515 p_4099->g_2023.f4 p_4099->g_2546 p_4099->g_2755
 */
__device__ union U0  func_13(uint32_t  p_14, union U2  p_15, int64_t  p_16, struct S3 * p_4099)
{ /* block id: 806 */
    uint8_t l_1851 = 0x44L;
    int32_t **l_1866[10] = {&p_4099->g_175, &p_4099->g_175, &p_4099->g_175, &p_4099->g_175, &p_4099->g_175, &p_4099->g_175, &p_4099->g_175, &p_4099->g_175, &p_4099->g_175, &p_4099->g_175};
    int8_t **l_1909 = &p_4099->g_575;
    int4 l_1948 = make_int4((-1L), (-9L), (-1L), (-9L));
    union U0 l_1967 = {0x4770L};
    union U1 l_2021[4][4][1] = {{{{0UL}}, {{0UL}}, {{0UL}}, {{0UL}}}, {{{0UL}}, {{0UL}}, {{0UL}}, {{0UL}}}, {{{0UL}}, {{0UL}}, {{0UL}}, {{0UL}}}, {{{0UL}}, {{0UL}}, {{0UL}}, {{0UL}}}};
    __shared__ char4 l_2068;
    l_2068 = make_char4((-1L), (-9L), (-1L), (-9L));
    // attempting a hip shared for loop
    __shared__ uint8_t l_2109[3];
    for (int i = 0; i < 3; i++)
        l_2109[i] = 248UL;
    int64_t l_2112 = 0L;
    int32_t ****l_2113 = &p_4099->g_371;
    int2 l_2115 = make_int2(0x27C42AB8L, 0x03330820L);
    __shared__ union U0 ***l_2124;
    l_2124 = &p_4099->g_161;
    uint16_t l_2155[6] = {0xC5A4L, 0xC5A4L, 65532UL, 0xC5A4L, 0xC5A4L, 65532UL};
    __shared__ char4 l_2197;
    l_2197 = make_char4(0x13L, 0xB0L, 0x13L, 0xB0L);
    __shared__ long1 l_2210;
    l_2210 = make_long1(0xCECF6D837F4BC907LL);
    union U0 *****l_2213[7][3][6] = {{{nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}}, {{nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}}, {{nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}}, {{nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}}, {{nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}}, {{nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}}, {{nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}, {nullptr, &p_4099->g_318, nullptr, &p_4099->g_318, nullptr, &p_4099->g_318}}};
    __shared__ union U0 l_2219;
    l_2219 = {0xD447L};
    __shared__ short2 l_2238;
    l_2238 = make_short2(0xC6FFL, 0L);
    union U1 l_2270 = {0xE6L};
    int1 l_2276 = make_int1((-1L));
    int16_t l_2290 = 0L;
    __shared__ int3 l_2314;
    l_2314 = make_int3(0xCD06F54FL, 0x5129C580L, 0xCD06F54FL);
    int8_t ****l_2315 = &p_4099->g_2309;
    int32_t l_2358[4][10][6] = {{{0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}}, {{0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}}, {{0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}}, {{0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}, {0x12357A72L, 1L, 0L, 0L, 5L, 0xAF32318AL}}};
    int8_t l_2360 = 0x5AL;
    int3 l_2361 = make_int3((-6L), 0xE4A67CE8L, (-6L));
    uint16_t l_2443 = 0x3B2EL;
    union U2 *l_2457 = &p_4099->g_8;
    __shared__ uint64_t l_2466;
    l_2466 = 0x7E20DB9CFDB0042CLL;
    short3 l_2468 = make_short3(0xE5A6L, 0x5C89L, 0xE5A6L);
    char4 l_2481 = make_char4(6L, 5L, 6L, 5L);
    int16_t l_2529 = (-5L);
    int32_t l_2649 = 0xBFA77593L;
    ulong4 l_2684 = make_ulong4(0xBDF371AE9DED8D35LL, 0UL, 0xBDF371AE9DED8D35LL, 0UL);
    int32_t l_2709 = 1L;
    uint16_t l_2710[2];
    int32_t **l_2724 = &p_4099->g_175;
    __shared__ int16_t ****l_2727;
    l_2727 = nullptr;
    // attempting a hip shared for loop
    __shared__ uint32_t *l_2754[1][1][5];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            for (int k = 0; k < 5; k++)
                l_2754[i][j][k] = &hip_const_1;
        }
    }
    ushort2 l_2762 = make_ushort2(0UL, 1UL);
    int16_t l_2772[1];
    int i, j, k;
    for (int i = 0; i < 3; i++)
        l_2109[i] = 248UL;
    for (int i = 0; i < 2; i++)
        l_2710[i] = 0x8C8BL;
    for (int i = 0; i < 1; i++)
        l_2772[i] = (-1L);
lbl_2387:
    if (p_16)
    { /* block id: 807 */
        int32_t l_1850 = (-9L);
        int16_t l_1858 = 0xC088L;
        int2 l_1861 = make_int2(1L, 0x88E17929L);
        union U0 ***l_1886[10] = {nullptr, &p_4099->g_161, nullptr, nullptr, &p_4099->g_161, nullptr, &p_4099->g_161, nullptr, nullptr, &p_4099->g_161};
        __shared__ int8_t **l_1907;
        l_1907 = &p_4099->g_575;
        uint64_t **l_1922[8] = {nullptr, &p_4099->g_693, nullptr, &p_4099->g_693, nullptr, &p_4099->g_693, nullptr, &p_4099->g_693};
        __shared__ ulong2 l_1935;
        l_1935 = make_ulong2(0xC7770FD19086DFAELL, 0x68407B66DB36570CLL);
        uint32_t ***l_1999 = nullptr;
        union U1 *l_2016 = nullptr;
        int32_t l_2034 = 0x81B4DE4DL;
        uint64_t *****l_2096 = &p_4099->g_1317[0][0][0];
        uint64_t *****l_2097 = &p_4099->g_1317[0][4][6];
        uint64_t l_2104 = 1UL;
        int i;
        l_1851++;
        for (p_4099->g_535 = 0; (p_4099->g_535 > (-26)); p_4099->g_535--)
        { /* block id: 811 */
            uint32_t l_1884 = 0xF5A4B3DBL;
            int32_t l_1912 = 0x3AE3C2AEL;
            int32_t l_1913 = (-1L);
            char3 l_1925 = make_char3(0xD2L, (-1L), 0xD2L);
            __shared__ int8_t ***l_1960;
            l_1960 = &p_4099->g_574;
            int8_t ***l_1961 = nullptr;
            __shared__ uchar1 l_1990;
            l_1990 = make_uchar1(246UL);
            __shared__ uint32_t ***l_2001;
            l_2001 = nullptr;
            int16_t l_2002 = 1L;
            short4 l_2011 = make_short4((-6L), 0x9B9BL, (-6L), 0x9B9BL);
            int32_t l_2033 = 6L;
            // attempting a hip shared for loop
            __shared__ int32_t l_2048[9];
            for (int i = 0; i < 9; i++)
                l_2048[i] = 0xCDF3E457L;
            int64_t l_2054 = (-8L);
            int i;
            for (int i = 0; i < 9; i++)
                l_2048[i] = 0xCDF3E457L;
        }
    }
    else
    { /* block id: 933 */
        union U1 *l_2107 = &p_4099->g_66[1];
        union U1 **l_2106[10][6] = {{&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}, {&l_2107, &l_2107, &l_2107, &l_2107, &l_2107, &l_2107}};
        int i, j;
        p_4099->g_2108 = &p_4099->g_66[1];
    }
    if (((func_44(p_15.f0, p_15.f0, ((l_2109[1] >= p_14) , (p_14 >= (safe_div_func_uint16_t_u_u((0x6CL < ((((((make_char3(0x07L, (((p_16 != 0L) , p_16) || p_14), p_14) & make_char3(0xAFL, 0xAFL, 0xAFL))) | make_char3((-3L), (-3L), (-3L)))) ^ make_char3((-5L), (-5L), (-5L)))).y), 1L)))), l_2112, p_14, p_4099) , l_2113) != nullptr))
    { /* block id: 936 */
        uint32_t l_2114 = 1UL;
        union U0 l_2116 = {9L};
        int8_t **l_2138 = &p_4099->g_575;
        // attempting a hip shared for loop
        __shared__ int32_t *l_2145[3][2];
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 2; j++)
                l_2145[i][j] = nullptr;
        }
        int32_t l_2174 = (-9L);
        long2 l_2185 = make_long2(0x2C30E1B4FE8801D5LL, 0x6711191969914B83LL);
        uint16_t *l_2186[3];
        int i, j;
        for (int i = 0; i < 3; i++)
            l_2186[i] = &l_2155[1];
        l_2114 |= p_15.f0;
        if (((make_int1(1L) ^ make_int1(l_2115.y))).x)
        { /* block id: 938 */
            return l_2116;
        }
        else
        { /* block id: 940 */
            short3 l_2125 = make_short3(1L, 0xB68FL, 1L);
            union U0 ****l_2126[2][6][3] = {{{&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}}, {{&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}, {&p_4099->g_319, &p_4099->g_319, &p_4099->g_319}}};
            int32_t *l_2130 = nullptr;
            int32_t *l_2131 = nullptr;
            int32_t l_2175 = (-1L);
            __shared__ int32_t l_2176;
            l_2176 = 4L;
            int8_t ***l_2182 = nullptr;
            __shared__ int8_t ****l_2181;
            l_2181 = &l_2182;
            int8_t *****l_2180 = &l_2181;
            int i, j, k;
            for (p_4099->g_164 = 0; (p_4099->g_164 != 0); p_4099->g_164 = safe_add_func_uint64_t_u_u(p_4099->g_164, 9))
            { /* block id: 943 */
                union U0 ***l_2123 = &p_4099->g_161;
                int8_t **l_2136[10] = {nullptr, nullptr, &p_4099->g_575, &p_4099->g_575, nullptr, nullptr, nullptr, &p_4099->g_575, &p_4099->g_575, nullptr};
                char3 l_2154 = make_char3(0xCCL, (-1L), 0xCCL);
                int32_t l_2172 = (-9L);
                uchar2 l_2177 = make_uchar2(0x7EL, 0xA8L);
                int8_t ****l_2184 = nullptr;
                int8_t *****l_2183 = &l_2184;
                int i;
                for (l_1967.f0 = 21; (l_1967.f0 != (-21)); l_1967.f0 = safe_sub_func_uint8_t_u_u(l_1967.f0, 6))
                { /* block id: 946 */
                    union U0 *****l_2127[10][6][3] = {{{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}, {{&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}, {&l_2126[1][0][2], nullptr, &l_2126[0][0][1]}}};
                    union U0 ****l_2128[10] = {&p_4099->g_319, &l_2123, &p_4099->g_319, &l_2123, &p_4099->g_319, &l_2123, &p_4099->g_319, &l_2123, &p_4099->g_319, &l_2123};
                    int32_t l_2129 = 5L;
                    int i, j, k;
                    l_2129 |= (((make_ulong1(0UL).x || (safe_mod_func_int16_t_s_s((l_2123 != l_2124), ((make_short2(l_2125.x, l_2125.x) ^ make_short2(3L, 0L))).x))) , (l_2128[1] = l_2126[0][3][1])) != &p_4099->g_319);
                    if (l_2114)
                        continue;
                    l_2131 = ((***p_4099->g_1274) = l_2130);
                }
                for (p_15.f2 = 25; (p_15.f2 == 13); p_15.f2 = safe_sub_func_uint8_t_u_u(p_15.f2, 9))
                { /* block id: 955 */
                    int64_t l_2141 = (-1L);
                    __shared__ int32_t l_2173;
                    l_2173 = 0x3D992ADBL;
                    for (p_14 = 18; (p_14 == 46); p_14++)
                    { /* block id: 958 */
                        int8_t ***l_2137[5][3] = {{&l_2136[9], &l_2136[6], &l_2136[9]}, {&l_2136[9], &l_2136[6], &l_2136[9]}, {&l_2136[9], &l_2136[6], &l_2136[9]}, {&l_2136[9], &l_2136[6], &l_2136[9]}, {&l_2136[9], &l_2136[6], &l_2136[9]}};
                        uint16_t *l_2140 = nullptr;
                        int32_t l_2142 = 1L;
                        int i, j;
                        p_4099->g_574 = (l_2138 = l_2136[9]);
                        l_2142 ^= (p_16 || ((p_4099->g_1556.x = make_ushort2(p_4099->g_2139.x, p_4099->g_2139.x).y) , l_2141));
                        if (p_16)
                            break;
                        if (l_2142)
                            break;
                    }
                    for (p_4099->g_90 = (-18); (p_4099->g_90 <= (-16)); p_4099->g_90 = safe_add_func_uint32_t_u_u(p_4099->g_90, 3))
                    { /* block id: 968 */
                        l_2145[1][0] = l_2131;
                        p_4099->g_122.x &= 0xB30010F9L;
                        if (p_15.f2)
                            continue;
                        if (p_16)
                            continue;
                    }
                    for (l_1851 = 0; (l_1851 <= 4); l_1851 += 1)
                    { /* block id: 976 */
                        // attempting a hip shared for loop
                        __shared__ uint8_t *l_2150[8][3];
                        for (int i = 0; i < 8; i++)
                        {
                            for (int j = 0; j < 3; j++)
                                l_2150[i][j] = nullptr;
                        }
                        uint16_t l_2151 = 0x8ABDL;
                        int32_t l_2158 = 0x675CD246L;
                        uint32_t *l_2170[10][5] = {{&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}, {&hip_const_1, &hip_const_2[4], &hip_const_2[4], &hip_const_2[4], &hip_const_1}};
                        uint4 l_2171 = make_uint4(6UL, 0UL, 6UL, 0UL);
                        int i, j;
                        l_2173 = (l_2172 &= ((~0x0A4CD588L) ^ (safe_div_func_int16_t_s_s(((safe_div_func_uint64_t_u_u((((l_2151++) > l_2154.y) && (l_2155[4] , (l_2171.z = (((safe_sub_func_int16_t_s_s((~(((l_2158 = (1L ^ p_14)) < ((*p_4099->g_2108) , (safe_mul_func_uint32_t_u_u((safe_rshift_func_int64_t_s_s(0xF463F96C1B6E958ALL, (((((~make_ushort4(65535UL, (safe_add_func_int16_t_s_s(make_short4(((safe_rshift(make_short2(p_4099->g_2167.y, p_4099->g_2167.y), make_short2((safe_lshift_func_int8_t_s_u((65535UL >= p_16), 4)), l_2151)))).x, 9L, (-1L), (-3L)).w, 0xEC14L)), 0x6089L, l_2141))).z && p_16) != p_16) > p_16))), p_15.f2)))) <= 0UL)), p_16)) , p_14) , l_2141)))), p_14)) >= 0xD9AC793780AF7037LL), (-5L)))));
                    }
                }
                --l_2177.x;
                l_2183 = l_2180;
            }
        }
        p_4099->g_1026.z = (0L < (p_4099->g_1556.x ^= (p_14 < make_long1(l_2185.y).x)));
        for (p_4099->g_2023.f0 = 0; (p_4099->g_2023.f0 == 39); ++p_4099->g_2023.f0)
        { /* block id: 992 */
            int32_t ****l_2205 = &p_4099->g_371;
            int32_t *****l_2204 = &l_2205;
            __shared__ int64_t *l_2215;
            l_2215 = &l_2112;
            __shared__ int32_t l_2216;
            l_2216 = 0xEC2A538FL;
            l_2216 ^= (safe_mul_func_int8_t_s_s((safe_add_func_int16_t_s_s((((*l_2215) = ((+(safe_mod_func_uint32_t_u_u(((((safe_add(make_uint2((p_16 || make_char1(l_2197.z).x), 0x4C531A16L), make_uint2(p_4099->g_2198.x, p_4099->g_2198.x)))) ^ make_uint2(p_4099->g_2199.y, p_4099->g_2199.y))).x, (safe_sub_func_int32_t_s_s((safe_div_func_int32_t_s_s((((((*p_4099->g_1273) = ((*p_4099->g_162) , l_2113)) == ((*l_2204) = &p_4099->g_371)) | (safe_mod_func_int64_t_s_s((safe_add_func_uint32_t_u_u((make_long2(l_2210.x, l_2210.x).y && (safe_lshift_func_int32_t_s_s(p_16, (p_14 <= (~((nullptr == l_2213[6][1][0]) > 1L)))))), p_14)), p_16))) , (-10L)), p_16)), 0xBFC398A9L))))) , p_4099->g_2214[1])) , p_16), 0xD0FBL)), p_14));
            for (p_4099->g_88 = 0; (p_4099->g_88 <= 28); p_4099->g_88 = safe_add_func_uint16_t_u_u(p_4099->g_88, 9))
            { /* block id: 999 */
                return l_2219;
            }
        }
    }
    else
    { /* block id: 1003 */
        uint32_t l_2220 = 0x5206E8D9L;
        uint8_t *l_2223 = nullptr;
        uint8_t *l_2224 = nullptr;
        uint8_t *l_2225 = nullptr;
        __shared__ uint8_t *l_2226;
        l_2226 = nullptr;
        __shared__ uint8_t *l_2227;
        l_2227 = &l_1851;
        __shared__ int32_t l_2242;
        l_2242 = 7L;
        short4 l_2244 = make_short4(5L, 0x74A7L, 5L, 0x74A7L);
        uint32_t **l_2248 = nullptr;
        int3 l_2254 = make_int3(0x9A27E171L, 0x5BF747E8L, 0x9A27E171L);
        union U0 l_2264 = {0x94CDL};
        __shared__ short2 l_2318;
        l_2318 = make_short2((-8L), 1L);
        uint8_t l_2335 = 0xDAL;
        __shared__ int16_t l_2371;
        l_2371 = (-6L);
        uchar4 l_2415 = make_uchar4(0UL, 7UL, 0UL, 7UL);
        int32_t l_2419 = 0x49CE58B0L;
        int8_t ****l_2425 = &p_4099->g_2309;
        ulong1 l_2465 = make_ulong1(0x5B2F04A5909776EFLL);
        ushort4 l_2467 = make_ushort4(65530UL, 5UL, 65530UL, 5UL);
        union U1 *l_2477 = &l_2021[2][0][0];
        uint32_t **l_2537 = &p_4099->g_2020;
        __shared__ long1 l_2542;
        l_2542 = make_long1(1L);
        uchar3 l_2561 = make_uchar3(0UL, 0x19L, 0UL);
        int32_t l_2595 = 0xF79D6B2EL;
        uint64_t l_2596 = 7UL;
        uint1 l_2627 = make_uint1(0x1F184520L);
        int32_t *l_2654 = nullptr;
        __shared__ uint16_t *l_2704;
        l_2704 = &l_2155[3];
        long4 l_2753 = make_long4((-1L), 0x115FFB1BA91FA2ADLL, (-1L), 0x115FFB1BA91FA2ADLL);
        int i;
        p_4099->g_763.x &= l_2220;
        if ((safe_mod_func_uint8_t_u_u(((*l_2227) ^= p_16), (safe_mul_func_uint16_t_u_u(hip_const_3[3], make_ushort2(p_4099->g_2230.x, p_4099->g_2230.x).y)))))
        { /* block id: 1006 */
            ushort2 l_2233 = make_ushort2(0xF23DL, 0x5988L);
            int32_t l_2239[8][4][3] = {{{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}, {{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}, {{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}, {{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}, {{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}, {{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}, {{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}, {{0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}, {0x22CAC7F9L, 0x9256BBA6L, 0x87DCBC0FL}}};
            int16_t *l_2240 = nullptr;
            int16_t *l_2241[9];
            int8_t *l_2245 = &p_4099->g_2214[1];
            uint32_t **l_2247 = &p_4099->g_2020;
            uint32_t ***l_2246 = &l_2247;
            uint1 l_2251 = make_uint1(4294967295UL);
            int2 l_2255 = make_int2(0xA956B6C8L, 0x80907EC1L);
            union U1 **l_2263 = &p_4099->g_2108;
            union U1 ***l_2262 = &l_2263;
            int32_t ***l_2281 = &l_1866[3];
            __shared__ int8_t ***l_2347;
            l_2347 = &p_4099->g_574;
            uint32_t l_2366 = 0x91EFD398L;
            ushort1 l_2382 = make_ushort1(0x5CF0L);
            union U0 l_2386 = {2L};
            int i, j, k;
            for (int i = 0; i < 9; i++)
                l_2241[i] = &p_4099->g_2023.f3;
            (*p_4099->g_856) = nullptr;
            if ((safe_mul_func_uint16_t_u_u(make_ushort4(l_2233.y, l_2233.y, l_2233.y, l_2233.y).w, ((*p_4099->g_2020) , ((p_16 &= (((safe_rshift_func_uint32_t_u_s((safe_rshift_func_int16_t_s_u(((((make_short4(l_2238.x, l_2238.x, l_2238.x, l_2238.x) & make_short4((l_2239[5][2][1] = (nullptr != (*l_1909))), ((253UL >= (*p_4099->g_575)) , (l_2242 = make_short3(1L, 0xC9A3L, 0x6589L).z)), (p_14 < make_short4(p_4099->g_2243.x, p_4099->g_2243.x, p_4099->g_2243.x, p_4099->g_2243.x).y), 0x83E3L))) ^ ((safe_unary_minus(make_short4(l_2244.x, l_2244.x, l_2244.x, l_2244.x)))))).w, 3)), 16)) , ((*l_1909) = l_2245)) != ((((*l_2246) = &p_4099->g_2020) == l_2248) , nullptr))) , 65530UL)))))
            { /* block id: 1013 */
                int2 l_2257 = make_int2(0x33C0242BL, 6L);
                union U1 ****l_2261 = nullptr;
                __shared__ int32_t *l_2265;
                l_2265 = nullptr;
                __shared__ union U0 ****l_2297;
                l_2297 = &p_4099->g_319;
                int8_t ***l_2307 = &p_4099->g_574;
                int i;
                for (p_4099->g_80.f1 = (-15); (p_4099->g_80.f1 != 25); p_4099->g_80.f1 = safe_add_func_int64_t_s_s(p_4099->g_80.f1, 1))
                { /* block id: 1016 */
                    __shared__ int3 l_2256;
                    l_2256 = make_int3(0xE1530D80L, 3L, 0xE1530D80L);
                    union U1 *l_2258 = &p_4099->g_66[1];
                    union U1 **l_2259 = nullptr;
                    union U1 **l_2260 = &l_2258;
                    int i;
                    p_4099->g_1210.x &= (make_uint1(l_2251.x).x != ((safe_add(make_int2(((((make_int1(l_2254.x) | make_int1(l_2255.x))) ^ make_int1(0L))).x, ((make_int1(l_2256.x) ^ make_int1((-1L)))).x), ((safe_unary_minus(make_int2(l_2257.y, l_2257.y))))))).y);
                    l_2254.x = 0L;
                    (*l_2260) = (p_4099->g_2108 = l_2258);
                }
                l_2262 = nullptr;
                for (l_2220 = 0; (l_2220 <= 2); l_2220 += 1)
                { /* block id: 1025 */
                    __shared__ int32_t l_2316;
                    l_2316 = 1L;
                    uint32_t *l_2319[9] = {nullptr, nullptr, &p_4099->g_164, nullptr, nullptr, &p_4099->g_164, nullptr, nullptr, &p_4099->g_164};
                    union U1 ***l_2321 = &l_2263;
                    int8_t *****l_2325 = &l_2315;
                    __shared__ union U0 l_2341;
                    l_2341 = {-7L};
                    int i;
                    if ((~(l_2264 , l_2109[l_2220])))
                    { /* block id: 1026 */
                        int64_t l_2271 = 1L;
                        __shared__ uint32_t *l_2284;
                        l_2284 = nullptr;
                        __shared__ uint32_t *l_2285;
                        l_2285 = &hip_const_2[3];
                        uint32_t *l_2286 = nullptr;
                        uint32_t *l_2287 = nullptr;
                        uint32_t *l_2288 = &hip_const_2[4];
                        uint32_t *l_2289[3][8] = {{nullptr, &hip_const_1, nullptr, nullptr, &hip_const_1, nullptr, &hip_const_1, nullptr}, {nullptr, &hip_const_1, nullptr, nullptr, &hip_const_1, nullptr, &hip_const_1, nullptr}, {nullptr, &hip_const_1, nullptr, nullptr, &hip_const_1, nullptr, &hip_const_1, nullptr}};
                        int i, j;
                        (**p_4099->g_371) = l_2265;
                        l_2254.z ^= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((func_58(l_2109[l_2220], l_2270, l_2271, p_4099) , ((safe_mod(((make_ulong3(1UL, p_14, (safe_mul_func_int32_t_s_s(make_int4(l_2276.x, l_2276.x, l_2276.x, l_2276.x).z, (((*p_4099->g_575) , (((safe_mod_func_uint16_t_u_u((nullptr == (*p_4099->g_318)), ((nullptr == &p_4099->g_1936) & l_2242))) > l_2271) == l_2271)) | l_2257.y)))) ^ make_ulong3(18446744073709551606UL, 18446744073709551606UL, 18446744073709551606UL))), make_ulong3(0x3915E5722D4C829ALL, 0x3915E5722D4C829ALL, 0x3915E5722D4C829ALL)))).x) ^ p_16), p_4099->g_1031.x)), (**p_4099->g_574)));
                        l_2254.y = (safe_add_func_uint32_t_u_u((&l_1909 == ((((l_2270 , l_2281) == (**p_4099->g_1273)) > p_15.f0) , nullptr)), (safe_mod_func_uint32_t_u_u((p_14--), (safe_rshift_func_int8_t_s_s(((safe_add_func_uint64_t_u_u(((l_2297 != nullptr) , ((safe_unary_minus_func_uint16_t_u(((-1L) && l_2254.y))) | 0x5BBDL)), 1L)) , 0xA4L), (*p_4099->g_575)))))));
                    }
                    else
                    { /* block id: 1031 */
                        __shared__ uint32_t l_2317;
                        l_2317 = 1UL;
                        int i;
                        p_4099->g_912.x = ((make_int3((safe_rshift_func_int32_t_s_s((func_58(p_16, func_44((((l_2220 <= p_15.f0) & (((safe_sub_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((l_2242 = 0xE2F4L), (safe_mod_func_int16_t_s_s(((nullptr != l_2307) > ((make_char2(0xD8L, ((nullptr != p_4099->g_2308) && (safe_mul_func_int8_t_s_s(((~(make_int4(0L, ((safe_mod(((make_int4(l_2314.y, l_2314.y, l_2314.y, l_2314.y) | make_int4((l_2316 = ((p_4099->g_8 , &p_4099->g_2309) == l_2315)), 0x999D3D35L, 1L, p_16))), make_int4(1L, 1L, 1L, 1L)))).w, 0x7DC69299L, 0x717A66B5L).x <= l_2109[l_2220])) > l_2317), p_16)))) ^ make_char2(0x61L, 0x61L))).y), l_2109[l_2220])))), p_14)) == p_15.f0) <= (-2L))) & 0x9025BBCAL), p_4099->g_2243.x, p_4099->g_1954.x, p_16, l_2109[l_2220], p_4099), p_16, p_4099) , l_2109[l_2220]), l_2109[l_2220])), (-1L), p_14) | make_int3(0xBB6B7A1EL, 0xBB6B7A1EL, 0xBB6B7A1EL))).x;
                        if (l_2318.x)
                            break;
                    }
                    if (p_15.f0)
                        break;
                    if (((l_2316 = p_14) , ((make_short3(p_4099->g_2320.x, p_4099->g_2320.x, p_4099->g_2320.x).y < (l_2321 == nullptr)) ^ (safe_mul_func_int64_t_s_s(p_16, ((l_2316 ^= (p_14 ^= (make_short4(make_short3(p_4099->g_2324.z, p_4099->g_2324.z, p_4099->g_2324.z).z, 0L, (l_2254.z = (nullptr != (*l_2321))), p_16).w >= (((*l_2325) = (p_4099->g_2308 = &p_4099->g_2309)) == nullptr)))) | 0x016767FCL))))))
                    { /* block id: 1044 */
                        uint8_t l_2328 = 255UL;
                        // attempting a hip shared for loop
                        __shared__ uint32_t l_2336[4][1][4];
                        for (int i = 0; i < 4; i++)
                        {
                            for (int j = 0; j < 1; j++)
                            {
                                for (int k = 0; k < 4; k++)
                                    l_2336[i][j][k] = 1UL;
                            }
                        }
                        int i, j, k;
                        (****p_4099->g_1273) = l_2265;
                        l_2328 &= (safe_add_func_int64_t_s_s(p_4099->g_1917.z, 0xC014E5AE4A2DB491LL));
                        l_2254.y = (p_4099->g_1026.z = (safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_uint32_t_u_u(l_2316, l_2335)), p_16)), (&p_4099->g_2023 == &p_4099->g_66[1]))));
                        l_2336[2][0][2]--;
                    }
                    else
                    { /* block id: 1050 */
                        uint8_t **l_2342[1];
                        uint16_t *l_2350 = nullptr;
                        uint16_t *l_2351 = nullptr;
                        int32_t *l_2359 = nullptr;
                        int i;
                        for (int i = 0; i < 1; i++)
                            l_2342[i] = &l_2225;
                        l_2316 = ((safe_sub_func_int64_t_s_s(0x8654187F4F67BE84LL, ((l_2341 , nullptr) != (l_2224 = (l_2341 , nullptr))))) ^ (safe_mul_func_uint16_t_u_u(p_14, (safe_add_func_uint16_t_u_u((((*p_4099->g_2308) = l_2347) != (((((~(safe_div_func_uint16_t_u_u((p_4099->g_212.x++), (safe_mod_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u(p_15.f0, l_2358[0][1][1])), p_16))))) , (-1L)) | l_2318.x) >= p_15.f0) , &p_4099->g_574)), p_15.f0)))));
                        (*p_4099->g_539) = l_2359;
                    }
                    for (p_4099->g_118 = 7; (p_4099->g_118 >= 0); p_4099->g_118 -= 1)
                    { /* block id: 1059 */
                        int i;
                        l_2360 ^= l_2155[l_2220];
                    }
                }
            }
            else
            { /* block id: 1063 */
                uint64_t l_2362 = 0x6162F9A6042219B9LL;
                int32_t l_2364 = 0x33141A45L;
                int32_t l_2365 = 0x1EB1C584L;
                __shared__ ushort3 l_2374;
                l_2374 = make_ushort3(1UL, 65526UL, 1UL);
                int32_t l_2392 = 0xE2A110CEL;
                int64_t **l_2396[5][5][6] = {{{nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}}, {{nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}}, {{nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}}, {{nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}}, {{nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}, {nullptr, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736, &p_4099->g_1736}}};
                int i, j, k;
                l_2362 = make_int4(l_2361.x, l_2361.x, l_2361.x, l_2361.x).w;
                if ((l_2362 , ((-1L) < 4294967288UL)))
                { /* block id: 1065 */
                    int32_t l_2363 = 1L;
                    __shared__ uint16_t *l_2375;
                    l_2375 = &p_4099->g_88;
                    int16_t l_2383 = 1L;
                    l_2366--;
                    p_4099->g_122.z ^= (safe_div_func_int8_t_s_s(((((p_15.f0 & l_2371) & p_4099->g_1576.w) , (safe_lshift_func_int32_t_s_s(((make_int4(0xA1237243L, (((*l_2375) = make_ushort2(l_2374.z, l_2374.z).x) > (func_44((safe_lshift_func_uint64_t_u_s(0x13E5463DDB538226LL, 6)), ((safe_rshift_func_int8_t_s_s((safe_div_func_int16_t_s_s(p_14, make_ushort4(l_2382.x, l_2382.x, l_2382.x, l_2382.x).z)), 4)) && (l_2383 && ((p_14 > ((((((safe_mod_func_int64_t_s_s((((0UL != ((p_15.f0 > l_2383) || p_14)) | 1UL) & p_14), l_2374.z)) > p_14) , l_2374.z) > 0xE3EF5107L) , &p_4099->g_2020) != &p_4099->g_2020)) & p_16))), p_15.f0, p_14, l_2220, p_4099) , p_4099->g_39.x)), l_2254.z, p_15.f0) ^ make_int4(0x36A00070L, 0x36A00070L, 0x36A00070L, 0x36A00070L))).y, 26))) == 0xC7B1L), 0xFEL));
                }
                else
                { /* block id: 1069 */
                    return l_2386;
                }
                for (l_2270.f1 = 0; (l_2270.f1 <= 2); l_2270.f1 += 1)
                { /* block id: 1074 */
                    int32_t *l_2388 = nullptr;
                    __shared__ int32_t l_2389;
                    l_2389 = 1L;
                    int32_t l_2390 = (-2L);
                    int32_t l_2391 = 5L;
                    if (l_2244.w)
                        break;
                    for (p_4099->g_164 = 0; (p_4099->g_164 <= 2); p_4099->g_164 += 1)
                    { /* block id: 1078 */
                        return (*p_4099->g_162);
                    }
                    if (l_2335)
                        goto lbl_2387;
                    (*p_4099->g_372) = l_2388;
                    for (l_2360 = 2; (l_2360 >= 0); l_2360 -= 1)
                    { /* block id: 1085 */
                        uint64_t l_2393 = 0x4F36FA26F6E9E436LL;
                        l_2393--;
                        l_2396[4][2][3] = &p_4099->g_1736;
                    }
                }
            }
            for (l_2264.f0 = 15; (l_2264.f0 <= 10); l_2264.f0--)
            { /* block id: 1093 */
                for (l_2270.f0 = 0; (l_2270.f0 <= 5); l_2270.f0 += 1)
                { /* block id: 1096 */
                    for (l_2242 = 0; l_2242 < 2; l_2242 += 1)
                    {
                        p_4099->g_137[l_2242] = &p_4099->g_136;
                    }
                }
            }
        }
        else
        { /* block id: 1100 */
            int16_t l_2399 = 1L;
            int8_t **l_2400 = nullptr;
            __shared__ int32_t l_2424;
            l_2424 = 0x5CCE1E05L;
            int32_t l_2448 = (-4L);
            __shared__ int32_t l_2450;
            l_2450 = 0xDEF6069BL;
            int2 l_2473 = make_int2(0xB0089DA9L, 0xD8508A15L);
            __shared__ uint64_t **l_2492;
            l_2492 = &p_4099->g_693;
            uint16_t l_2506 = 0xA792L;
            uint16_t l_2531 = 0x41F1L;
            int i;
            l_2399 = 0x048D25AAL;
lbl_2534:
            if (((l_2335 , 0xCAE7L) | (nullptr != l_2400)))
            { /* block id: 1102 */
                int32_t l_2401 = 0x82BD6559L;
                int16_t **l_2408 = &p_4099->g_868[4];
                int1 l_2418 = make_int1(0xC8841641L);
                uint64_t l_2420 = 18446744073709551615UL;
                int32_t l_2421 = (-1L);
                __shared__ int32_t l_2423;
                l_2423 = (-3L);
                int8_t *****l_2426 = &l_2425;
                int i;
                l_2423 &= (l_2401 ^ ((safe_lshift_func_uint64_t_u_s((l_2421 = (((safe_add_func_int64_t_s_s((safe_mod_func_int8_t_s_s((((*l_2408) = (l_2401 , &l_2371)) != nullptr), ((safe_mul_func_int16_t_s_s((((l_2242 > (l_2418.x = (safe_mul_func_int32_t_s_s((~(((safe_div_func_int16_t_s_s(0x1BB6L, (make_uchar3(l_2415.x, l_2415.x, l_2415.x).y || ((safe_div_func_int64_t_s_s((0x5180541AL < (l_2254.y = ((make_int3(l_2418.x, l_2418.x, l_2418.x) ^ make_int3(5L, 0x3169D198L, 0x6FD6A88EL))).z)), (0x9AC47F8291404066LL ^ ((p_15.f0 ^ p_15.f0) && 0x15778BE0F53E9059LL)))) >= l_2242)))) < l_2401) , 0x7BF8ACB5L)), 4294967289UL)))) & l_2401) & 0xE1F98F9E421F80CELL), l_2399)) ^ p_15.f0))), l_2244.w)) ^ l_2419) != l_2420)), 46)) || p_4099->g_2422));
                l_2424 |= 0x6C31D059L;
                l_2424 = p_14;
                (*l_2426) = l_2425;
            }
            else
            { /* block id: 1111 */
                __shared__ uint64_t l_2446;
                l_2446 = 8UL;
                int32_t l_2451[5] = {1L, 0x3DFE9641L, 1L, 0x3DFE9641L, 1L};
                int32_t l_2452 = 0xB4029731L;
                // attempting a hip shared for loop
                __shared__ uint32_t l_2454[1][2][1];
                for (int i = 0; i < 1; i++)
                {
                    for (int j = 0; j < 2; j++)
                    {
                        for (int k = 0; k < 1; k++)
                            l_2454[i][j][k] = 0UL;
                    }
                }
                union U2 **l_2458 = &l_2457;
                int16_t *l_2476[10] = {&l_2290, &l_2290, &p_4099->g_66[1].f3, &l_2290, &l_2290, &p_4099->g_66[1].f3, &l_2290, &l_2290, &p_4099->g_66[1].f3, &l_2290};
                int32_t l_2493 = 0xCE328B83L;
                int32_t ****l_2497 = &p_4099->g_371;
                __shared__ char3 l_2498;
                l_2498 = make_char3(0x5DL, 0x83L, 0x5DL);
                int32_t l_2521 = 3L;
                ulong1 l_2522 = make_ulong1(18446744073709551613UL);
                __shared__ int32_t l_2530;
                l_2530 = 0x234BB80CL;
                int i, j, k;
                for (int i = 0; i < 1; i++)
                {
                    for (int j = 0; j < 2; j++)
                    {
                        for (int k = 0; k < 1; k++)
                            l_2454[i][j][k] = 0UL;
                    }
                }
                for (l_2424 = 11; (l_2424 != (-15)); l_2424--)
                { /* block id: 1114 */
                    int16_t *l_2447 = &l_2290;
                    int32_t l_2449 = 6L;
                    int32_t l_2453 = 0x8C3FDD73L;
                    l_2254.z = ((safe_sub(make_int3(0x6D9A635DL, make_int3((((safe_mod_func_int8_t_s_s((safe_sub_func_int16_t_s_s((l_2399 , ((*l_2447) ^= (safe_rshift_func_uint8_t_u_s((((((safe_mod_func_int16_t_s_s(make_short4((safe_mod_func_uint32_t_u_u(((safe_add_func_uint64_t_u_u(l_2244.z, l_2443)) & (-8L)), (safe_add_func_uint64_t_u_u((make_char1(1L).x >= (0x414444B5L != (0x6DL < p_16))), p_4099->g_566.y)))), p_15.f0, 1L, 0x6BB0L).x, 0x4B36L)) > 65535UL) && (**p_4099->g_574)) , 0x71B2F2E5L) , l_2446), p_14)))), l_2244.x)), (-5L))) && 0UL) , (-2L)), 7L, 0xA4559D86L).z, 2L), make_int3(0xD40EB131L, 0xD40EB131L, 0xD40EB131L)))).y;
                    l_2454[0][1][0]++;
                }
                (*l_2458) = (p_4099->g_2199.y , l_2457);
                if (((safe_lshift_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_u((~l_2371), 7)) && make_ulong1(l_2465.x).x), l_2466)), 27)) < (make_ushort2(l_2467.x, l_2467.x).y || (l_2424 = ((make_short3(l_2468.y, l_2468.y, l_2468.y) ^ make_short3((safe_mul_func_uint8_t_u_u(((safe_mul_func_int32_t_s_s(p_14, p_15.f0)) , ((*l_2227) = (p_15.f0 <= (0x53L != (make_int4(l_2473.y, l_2473.y, l_2473.y, l_2473.y).x == ((safe_sub_func_uint16_t_u_u(((((l_2452 = (l_2454[0][0][0] >= (l_2213[4][0][4] == ((p_14 <= p_15.f0) , &p_4099->g_318)))) , 7L) < (**p_4099->g_574)) , p_16), p_14)) >= l_2446)))))), p_14)), 0x011EL, 0x5E4DL))).y))))
                { /* block id: 1123 */
                    int32_t l_2494[5][5] = {{0L, 0x7EA6FDBDL, 0L, 0xDDF4E613L, 0xDDF4E613L}, {0L, 0x7EA6FDBDL, 0L, 0xDDF4E613L, 0xDDF4E613L}, {0L, 0x7EA6FDBDL, 0L, 0xDDF4E613L, 0xDDF4E613L}, {0L, 0x7EA6FDBDL, 0L, 0xDDF4E613L, 0xDDF4E613L}, {0L, 0x7EA6FDBDL, 0L, 0xDDF4E613L, 0xDDF4E613L}};
                    int32_t l_2495 = (-5L);
                    int i, j;
                    l_2450 = 0xCBC4BC08L;
                    l_2477 = l_2477;
                    (*p_4099->g_372) = ((~l_2424) , &l_2452);
                    if ((make_uint2(p_4099->g_2478.x, p_4099->g_2478.x).y || (safe_div_func_int16_t_s_s((l_2495 |= make_short4(0L, (0x7AL || (make_char4(l_2481.y, l_2481.y, l_2481.y, l_2481.y).y | ((safe_sub_func_uint8_t_u_u(((safe_mul_func_int32_t_s_s(((safe_add_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u((((safe_sub_func_uint32_t_u_u((l_2473.y , (~(p_15.f1 = (p_4099->g_8 , (((make_char3(0x88L, 0x52L, 5L) & ((((make_char3(0xDCL, (-1L), 1L) ^ ((make_char3(0x83L, (l_2452 = ((l_2492 != (p_16 , l_2492)) < l_2493)), (1L == 0UL)) & make_char3(0x36L, 0x36L, 0x36L))))) ^ make_char3(0xBEL, 0xBEL, 0xBEL))))).y >= 0x9DL))))), p_14)) < 0UL) & 0x09C0B18EL), 0x9373L)), l_2424)) != p_14), l_2494[4][1])) < 0x602AL), 0x6CL)) & p_14))), 0xADF1L, l_2450).z), p_4099->g_163))))
                    { /* block id: 1130 */
                        return (*p_4099->g_162);
                    }
                    else
                    { /* block id: 1132 */
                        return (*p_4099->g_1196);
                    }
                }
                else
                { /* block id: 1135 */
                    __shared__ int32_t ****l_2496;
                    l_2496 = &p_4099->g_371;
                    long3 l_2507 = make_long3((-1L), (-6L), (-1L));
                    uint32_t *l_2512 = nullptr;
                    uint32_t *l_2513 = nullptr;
                    uint32_t *l_2514[4][5] = {{nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr}};
                    int i, j;
lbl_2525:
                    (*p_4099->g_372) = &l_2452;
                    if (((((*p_4099->g_1273) = l_2496) == l_2497) & ((((((make_char4(l_2498.z, l_2498.z, l_2498.z, l_2498.z) ^ ((make_char4(p_4099->g_2499.x, p_4099->g_2499.x, p_4099->g_2499.x, p_4099->g_2499.x) ^ make_char4(p_4099->g_2500.x, p_4099->g_2500.x, p_4099->g_2500.x, p_4099->g_2500.x))))) & make_char4(p_4099->g_2501.w, p_4099->g_2501.w, p_4099->g_2501.w, p_4099->g_2501.w))).y , (5L < ((safe_mod_func_uint64_t_u_u(make_ulong1(l_2506).x, make_long3(l_2507.y, l_2507.y, l_2507.y).x)) != (safe_mul_func_int16_t_s_s(p_15.f0, ((((((safe_rshift_func_uint32_t_u_u(6UL, 27)) > (**p_4099->g_574)) < (****l_2496)) && ((****l_2497) = ((nullptr == (*l_2496)) < (****l_2496)))) <= 1UL) , 0xF478L)))))) > 0x2AL)))
                    { /* block id: 1139 */
                        uint64_t l_2516 = 0x42F2E68627536D94LL;
                        int32_t l_2520 = 1L;
                        l_2516 = ((0x3F12420C99489EB0LL ^ ((&p_4099->g_1936 != &p_4099->g_1936) & make_int2(p_4099->g_2515.y, p_4099->g_2515.y).y)) | ((****l_2497) = p_16));
                        (****l_2496) |= ((((safe_div(make_int1(p_4099->g_2519.w), make_int1(0xA8A93801L)))) | make_int1(9L))).x;
                        l_2522.x--;
                    }
                    else
                    { /* block id: 1144 */
                        uint32_t l_2526 = 0x86CFD108L;
                        if (l_2419)
                            goto lbl_2525;
                        ++l_2526;
                        return (*p_4099->g_162);
                    }
                }
                l_2531--;
            }
            for (p_4099->g_80.f0 = 0; (p_4099->g_80.f0 <= 9); p_4099->g_80.f0 += 1)
            { /* block id: 1154 */
                if (p_4099->g_163)
                    goto lbl_2534;
                for (l_2466 = 0; (l_2466 <= 8); l_2466 += 1)
                { /* block id: 1158 */
                    int32_t *l_2535[2][5] = {{&p_4099->g_2056, nullptr, &p_4099->g_2056, nullptr, &p_4099->g_2056}, {&p_4099->g_2056, nullptr, &p_4099->g_2056, nullptr, &p_4099->g_2056}};
                    int i, j;
                    (**p_4099->g_371) = l_2535[0][0];
                    if (make_int3(p_4099->g_2536.x, p_4099->g_2536.x, p_4099->g_2536.x).y)
                    { /* block id: 1160 */
                        p_4099->g_2515.x = (p_4099->g_239.x = p_14);
                        return (**p_4099->g_161);
                    }
                    else
                    { /* block id: 1164 */
                        if (l_2220)
                            break;
                    }
                    (***p_4099->g_1274) = l_2535[0][0];
                    for (l_2264.f1 = 8; (l_2264.f1 >= 0); l_2264.f1 -= 1)
                    { /* block id: 1170 */
                        (***p_4099->g_1274) = &l_2450;
                    }
                }
            }
        }
        if (((l_2248 = l_2248) == l_2537))
        { /* block id: 1177 */
            (*p_4099->g_372) = &l_2242;
            for (p_4099->g_2023.f4 = 18; (p_4099->g_2023.f4 <= 18); p_4099->g_2023.f4++)
            { /* block id: 1181 */
                int16_t ****l_2545 = &p_4099->g_2544[0][6][1];
                (*p_4099->g_175) = (safe_lshift_func_int16_t_s_u((****l_2113), 7));
                (***p_4099->g_371) |= (make_long2(l_2542.x, l_2542.x).y && ((p_15.f0 >= 1UL) | ((make_long2((-6L), 0xF09A345A457FE269LL) | ((safe_unary_minus(make_long2(0xFB9AC2E1E0E9EF9BLL, 0x0AEB9CA6FFF56AB8LL)))))).y));
                (***p_4099->g_371) |= (p_4099->g_2543 != (p_4099->g_2546[1][4] = l_2545));
            }
        }
        else
        { /* block id: 1187 */
            union U0 l_2547[10][9][2] = {{{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}, {{{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}, {{0xB5ADL}, {-5L}}}};
            int i, j, k;
            return l_2547[4][6][1];
        }
        for (l_2264.f0 = (-23); (l_2264.f0 > 4); l_2264.f0 = safe_add_func_int16_t_s_s(l_2264.f0, 4))
        { /* block id: 1192 */
            int8_t l_2566 = (-1L);
            int32_t l_2567 = 0L;
            __shared__ int64_t *l_2568;
            l_2568 = &l_2270.f1;
            union U1 l_2576 = {0x86L};
            uint64_t l_2610 = 0x479485AB5B22D7CELL;
            int32_t l_2614[1][9];
            int16_t l_2641[1];
            int i, j;
            for (int i = 0; i < 1; i++)
            {
                for (int j = 0; j < 9; j++)
                    l_2614[i][j] = 0x95CF492EL;
            }
            for (int i = 0; i < 1; i++)
                l_2641[i] = 0xC02CL;
        }
    }
    l_2772[0] |= make_int2((~(p_16 == 0x38230BFCE1698185LL)), (p_4099->g_239.y = ((p_4099->g_2755[9][0][0] ^= make_uint1(0UL).x) || (((safe_mod_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(253UL, 4)), make_ushort1(l_2762.x).x)), p_16)) > p_14) >= ((safe_add_func_int16_t_s_s(((~make_short1(0x0A5BL))).x, make_short3(p_4099->g_2765.x, p_4099->g_2765.x, p_4099->g_2765.x).z)) , (p_16 || (safe_mul_func_uint16_t_u_u((p_14 || (((safe_sub_func_uint8_t_u_u(p_14, ((((safe_div_func_int64_t_s_s(0L, p_14)) <= (-6L)) & p_14) <= p_4099->g_1725.x))) , p_14) < p_16)), p_16)))))))).x;
    return (***l_2124);
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_91
 * writes: p_4099->g_91
 */
__device__ uint8_t  func_19(int32_t  p_20, uint32_t  p_21, union U2  p_22, uint32_t  p_23, struct S3 * p_4099)
{ /* block id: 799 */
    for (p_4099->g_91 = 22; (p_4099->g_91 <= 53); p_4099->g_91 = safe_add_func_uint32_t_u_u(p_4099->g_91, 1))
    { /* block id: 802 */
        __shared__ int32_t l_1849;
        l_1849 = 0x3102DFB2L;
        return l_1849;
    }
    return p_22.f0;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_4099->g_118 p_4099->g_664
 */
__device__ uint8_t  func_24(int8_t  p_25, struct S3 * p_4099)
{ /* block id: 538 */
    uint32_t l_1287 = 0UL;
    __shared__ union U1 l_1296;
    l_1296 = {0xF3L};
    union U0 l_1323[6][10][4] = {{{{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}}, {{{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}}, {{{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}}, {{{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}}, {{{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}}, {{{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}, {{-1L}, {0L}, {0x94E6L}, {0x56ACL}}}};
    int1 l_1341 = make_int1((-1L));
    short2 l_1345 = make_short2(1L, 0x641AL);
    uint3 l_1365 = make_uint3(0x2CA67A4EL, 1UL, 0x2CA67A4EL);
    ulong3 l_1419 = make_ulong3(0xF6898BC0B7C086D0LL, 0x2A2273EFDC9D11FDLL, 0xF6898BC0B7C086D0LL);
    int32_t *****l_1420 = nullptr;
    uint64_t ***l_1427 = &p_4099->g_692;
    uint64_t *****l_1442[1];
    __shared__ union U0 ***l_1468;
    l_1468 = nullptr;
    __shared__ int4 l_1490;
    l_1490 = make_int4(0L, 6L, 0L, 6L);
    __shared__ int8_t l_1508;
    l_1508 = 0xD2L;
    int64_t l_1511 = 0L;
    int32_t l_1539[1][3][4];
    int8_t **l_1623 = &p_4099->g_575;
    int2 l_1639 = make_int2(0L, 0x74634272L);
    uint8_t l_1684 = 0x46L;
    int16_t l_1708 = 0xAFE2L;
    int3 l_1740 = make_int3(0x803F40BDL, (-1L), 0x803F40BDL);
    __shared__ union U0 *****l_1743;
    l_1743 = nullptr;
    uint32_t l_1804 = 4294967295UL;
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_1442[i] = &p_4099->g_1317[0][0][4];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            for (int k = 0; k < 4; k++)
                l_1539[i][j][k] = 0x3D4C30E6L;
        }
    }
    for (p_4099->g_118 = 0; p_4099->g_118 < 6; p_4099->g_118 += 1)
    {
        p_4099->g_664[p_4099->g_118] = 0xCAB7B8F0L;
    }
    l_1287 &= p_25;
    for (l_1287 = 0; (l_1287 <= 9); l_1287 += 1)
    { /* block id: 543 */
        int64_t l_1290 = (-1L);
        uint64_t *l_1295 = nullptr;
        union U1 *l_1297 = &p_4099->g_66[0];
        // attempting a hip shared for loop
        __shared__ int64_t *l_1300[8][10];
        for (int i = 0; i < 8; i++)
        {
            for (int j = 0; j < 10; j++)
                l_1300[i][j] = nullptr;
        }
        uint32_t l_1301[10][9][2] = {{{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}, {{0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}, {0xEFAE4B00L, 0x6405FFAAL}}};
        __shared__ int32_t l_1303;
        l_1303 = (-4L);
        int32_t l_1304 = 0x906995FCL;
        uint64_t l_1305 = 4UL;
        uint64_t ****l_1315 = &p_4099->g_856;
        uint64_t *****l_1314 = &l_1315;
        char2 l_1366 = make_char2(0L, 0xD8L);
        uint32_t l_1386 = 1UL;
        int16_t l_1438 = 0xBDFBL;
        int32_t l_1439 = 0x69616495L;
        int16_t ***l_1443 = &p_4099->g_867[1];
        uint32_t l_1446 = 0x7D532151L;
        uint3 l_1456 = make_uint3(0x2C7A52D5L, 0UL, 0x2C7A52D5L);
        int32_t l_1537 = 1L;
        __shared__ int32_t l_1538;
        l_1538 = 0xB14EE4A6L;
        int32_t l_1541 = 0x0DCAB506L;
        int4 l_1542 = make_int4((-1L), 0xF7B7463EL, (-1L), 0xF7B7463EL);
        int16_t l_1591 = 0L;
        int8_t **l_1622 = &p_4099->g_575;
        union U0 ****l_1645 = nullptr;
        union U1 l_1697 = {252UL};
        uint8_t *l_1728[9][3] = {{nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}, {nullptr, nullptr, &p_4099->g_236}};
        int32_t l_1840 = 0xBB289A04L;
        int i, j, k;
    }
    return l_1345.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_371 p_4099->g_372 p_4099->g_163 p_4099->g_1273 p_4099->g_80.f1
 * writes: p_4099->g_175 p_4099->g_163 p_4099->g_1273 p_4099->g_80.f1
 */
__device__ int64_t  func_42(union U1  p_43, struct S3 * p_4099)
{ /* block id: 520 */
    int32_t *l_1270[6][9][4] = {{{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr}}};
    uint32_t *l_1281 = nullptr;
    __shared__ uint8_t l_1285;
    l_1285 = 6UL;
    uint64_t l_1286 = 0x8B73D8F2BBE91716LL;
    int i, j, k;
    (**p_4099->g_371) = l_1270[5][3][2];
    for (p_4099->g_163 = 24; (p_4099->g_163 <= 26); p_4099->g_163++)
    { /* block id: 524 */
        p_4099->g_1273 = p_4099->g_1273;
    }
    (*p_4099->g_372) = l_1270[5][3][2];
    for (p_4099->g_80.f1 = (-11); (p_4099->g_80.f1 != (-11)); p_4099->g_80.f1 = safe_add_func_uint8_t_u_u(p_4099->g_80.f1, 8))
    { /* block id: 530 */
        uint32_t **l_1282[6][8][1] = {{{&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}}, {{&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}}, {{&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}}, {{&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}}, {{&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}}, {{&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}, {&l_1281}}};
        uint32_t *l_1283 = &hip_const_2[5];
        int32_t l_1284 = 2L;
        int i, j, k;
        l_1284 = (safe_lshift_func_uint16_t_u_u(make_ushort2(0xDE1EL, 0xD59BL).x, (safe_lshift_func_uint64_t_u_s(((l_1281 = l_1281) != l_1283), 52))));
        if (l_1284)
            continue;
        return l_1285;
    }
    return l_1286;
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_34 p_4099->g_867 p_4099->g_8 p_4099->g_371 p_4099->g_372 p_4099->g_175 p_4099->g_66 p_4099->g_239 p_4099->g_856 p_4099->g_857 p_4099->g_574 p_4099->g_575 hip_const_3 p_4099->g_72 p_4099->g_760 p_4099->g_318 p_4099->g_319 p_4099->g_161 p_4099->g_162 p_4099->g_80 p_4099->g_959 p_4099->g_663 p_4099->g_843 p_4099->g_344 p_4099->g_750 p_4099->g_566 p_4099->g_39 p_4099->g_875 p_4099->g_881 p_4099->g_906 p_4099->g_912 p_4099->g_957 p_4099->g_212 p_4099->g_987 p_4099->g_80.f0 p_4099->g_2214
 * writes: p_4099->g_90 p_4099->g_91 p_4099->g_175 p_4099->g_239 p_4099->g_80.f0 p_4099->g_912 p_4099->g_664 p_4099->g_535 p_4099->g_692
 */
__device__ union U1  func_44(uint16_t  p_45, uint16_t  p_46, int64_t  p_47, int16_t  p_48, int16_t  p_49, struct S3 * p_4099)
{ /* block id: 315 */
    int32_t *l_834[6][1];
    __shared__ uint8_t l_835;
    l_835 = 4UL;
    __shared__ ushort2 l_840;
    l_840 = make_ushort2(0xD4B8L, 0xCFEDL);
    uint64_t **l_844[4][5][2] = {{{nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}}, {{nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}}, {{nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}}, {{nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}, {nullptr, &p_4099->g_693}}};
    __shared__ uint64_t ***l_845;
    l_845 = &p_4099->g_692;
    union U2 l_852[10] = {{4L}, {4L}, {4L}, {4L}, {4L}, {4L}, {4L}, {4L}, {4L}, {4L}};
    uint64_t **l_855 = &p_4099->g_693;
    uint64_t ***l_854 = &l_855;
    uint64_t ****l_853 = &l_854;
    int64_t *l_858[9][7] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
    uint32_t l_864 = 0x7A40FC4EL;
    // attempting a hip shared for loop
    __shared__ int16_t **l_869[5];
    for (int i = 0; i < 5; i++)
        l_869[i] = &p_4099->g_868[6];
    long3 l_878 = make_long3(0x38FE496121AA5B38LL, 0x4382550FB601A368LL, 0x38FE496121AA5B38LL);
    long4 l_882 = make_long4(0xEDDCCA8819972F5ELL, 0x01EAF19AB22A18E9LL, 0xEDDCCA8819972F5ELL, 0x01EAF19AB22A18E9LL);
    int32_t l_946 = (-1L);
    int32_t l_971 = 0xA967D232L;
    uint32_t l_972 = 0x934801BBL;
    uint8_t l_975 = 0x34L;
    __shared__ int32_t ****l_1021;
    l_1021 = &p_4099->g_371;
    // attempting a hip shared for loop
    __shared__ int32_t ****l_1022[2];
    for (int i = 0; i < 2; i++)
        l_1022[i] = &p_4099->g_371;
    int4 l_1025 = make_int4(0x038475FEL, (-4L), 0x038475FEL, (-4L));
    __shared__ uint32_t l_1036;
    l_1036 = 0x27FB7D45L;
    short4 l_1056 = make_short4(0x1C27L, 0x6160L, 0x1C27L, 0x6160L);
    uint16_t l_1070 = 0xED54L;
    uchar1 l_1071 = make_uchar1(0xA5L);
    long4 l_1090 = make_long4(0x1CABD54CA919B4B0LL, 0x25199831A33D938ALL, 0x1CABD54CA919B4B0LL, 0x25199831A33D938ALL);
    union U1 l_1130[2] = {{0x74L}, {0x74L}};
    __shared__ uchar3 l_1178;
    l_1178 = make_uchar3(255UL, 252UL, 255UL);
    int32_t *l_1269 = nullptr;
    int i, j, k;
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 1; j++)
            l_834[i][j] = nullptr;
    }
    for (int i = 0; i < 5; i++)
        l_869[i] = &p_4099->g_868[6];
    for (int i = 0; i < 2; i++)
        l_1022[i] = &p_4099->g_371;
lbl_917:
    ++l_835;
    if ((((((safe_lshift(make_ushort3(l_840.x, l_840.x, l_840.x), make_ushort3(16, 16, 16)))) ^ make_ushort3(((make_char4(p_4099->g_843.y, p_4099->g_843.y, p_4099->g_843.y, p_4099->g_843.y).z < ((l_844[1][1][1] = l_844[0][2][0]) != ((*l_845) = &p_4099->g_693))) ^ ((safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((safe_mul_func_int64_t_s_s((p_47 = ((l_852[0] , ((*l_853) = (p_4099->g_344.y , l_845))) == p_4099->g_856)), (safe_mul_func_uint32_t_u_u(((nullptr != l_855) <= ((&l_834[0][0] == nullptr) <= p_4099->g_750.y)), 0x5103B04BL)))), p_4099->g_566.y)), p_4099->g_39.y)) != p_45)), 65534UL, 65533UL))).z < p_4099->g_34.y))
    { /* block id: 321 */
        int32_t l_863[5];
        int i;
        for (int i = 0; i < 5; i++)
            l_863[i] = 0xAABE73D1L;
        --l_864;
    }
    else
    { /* block id: 323 */
        __shared__ long3 l_872;
        l_872 = make_long3(0xF77F4B8B5D2619C8LL, 0x7BC1B6B7D780A9F3LL, 0xF77F4B8B5D2619C8LL);
        long4 l_885 = make_long4(0x31965382A9776DFELL, 2L, 0x31965382A9776DFELL, 2L);
        long2 l_886 = make_long2((-1L), 0x83D936F82CCED07CLL);
        int32_t l_897[4];
        int32_t l_899 = 1L;
        union U1 l_915 = {0UL};
        int32_t l_937[3][3][10] = {{{1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}, {1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}, {1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}}, {{1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}, {1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}, {1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}}, {{1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}, {1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}, {1L, 1L, 0x560F8691L, 0x560F8691L, 1L, 1L, 1L, 0x560F8691L, 0x560F8691L, 1L}}};
        __shared__ int32_t ****l_1016;
        l_1016 = &p_4099->g_371;
        int i, j, k;
        for (int i = 0; i < 4; i++)
            l_897[i] = 0x12F74063L;
        l_869[2] = p_4099->g_867[4];
        for (p_49 = 0; (p_49 != 12); p_49 = safe_add_func_int16_t_s_s(p_49, 6))
        { /* block id: 327 */
            long3 l_891 = make_long3((-9L), 0L, (-9L));
            int32_t l_894 = (-1L);
            uint8_t *l_895 = nullptr;
            uint8_t *l_896[3];
            int32_t l_898 = 0x2EA0BC7DL;
            __shared__ int32_t l_900;
            l_900 = 0xED1B3CD0L;
            int32_t l_901 = 0x169AAEDCL;
            __shared__ int32_t l_902;
            l_902 = 0x8EAF61EDL;
            uint32_t l_903 = 0xAE3AE4B8L;
            union U1 l_907 = {2UL};
            union U1 l_916[10][5] = {{{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}, {{252UL}, {0UL}, {0xE5L}, {6UL}, {6UL}}};
            int32_t l_939 = 0xA2B6B2EFL;
            int32_t l_941 = (-10L);
            int32_t l_942 = (-7L);
            int32_t l_943 = (-10L);
            int32_t l_944 = 1L;
            int8_t l_948 = 0L;
            int32_t l_949 = (-1L);
            ulong4 l_958 = make_ulong4(0UL, 0xE9FE9B1DA23C39B1LL, 0UL, 0xE9FE9B1DA23C39B1LL);
            uint64_t l_964[10][4] = {{18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}, {18446744073709551607UL, 0x2C10C7BA9C36E62DLL, 0x6B0F33C667179660LL, 0x2C10C7BA9C36E62DLL}};
            uint16_t *l_992 = nullptr;
            int i, j;
            for (int i = 0; i < 3; i++)
                l_896[i] = &p_4099->g_136;
            l_899 |= ((((make_long1(l_872.x) ^ ((safe_div(((make_long1(p_4099->g_875.y) ^ ((safe_add(make_long1(l_878.x), ((((safe_lshift(make_long1(p_4099->g_881.x), make_long1((l_872.y , p_45))))) | make_long1(l_882.w)))))))), ((safe_sub(make_long1((-9L)), ((make_long1(l_885.z) ^ make_long1(l_886.x))))))))))).x & (safe_add_func_uint32_t_u_u(((safe_mul_func_int64_t_s_s(make_long3(l_891.z, l_891.z, l_891.z).y, (p_47 , (safe_mul_func_int16_t_s_s(((~p_49) == (l_903++)), (make_long2(p_4099->g_906.z, p_4099->g_906.z).y < p_45)))))) >= (l_897[0] = ((l_907 , func_58(((safe_lshift_func_uint8_t_u_u((l_897[3] = (safe_mod_func_int32_t_s_s(make_int2(p_4099->g_912.z, p_4099->g_912.z).x, (safe_div_func_int64_t_s_s(0xB7A7C6E55C8C565ELL, l_898))))), 3)) < (l_915 , 0L)), l_916[6][1], l_902, p_4099)) , 18446744073709551615UL))), (-5L)))) & 4UL);
            if (p_48)
            { /* block id: 332 */
                int64_t l_923 = 1L;
                __shared__ int32_t l_928;
                l_928 = 7L;
                int32_t l_930 = 3L;
                int32_t l_931[10][3] = {{0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}, {0xF3CED802L, 0xF3CED802L, 1L}};
                uint64_t l_950 = 1UL;
                int i, j;
                if (l_915.f0)
                    goto lbl_917;
                for (l_903 = 0; (l_903 < 57); l_903 = safe_add_func_uint8_t_u_u(l_903, 1))
                { /* block id: 336 */
                    __shared__ int32_t *l_922;
                    l_922 = &l_901;
                    int8_t *l_926 = &l_916[6][1].f4;
                    int32_t l_933 = 0x6D0C69B1L;
                    int32_t l_934 = 0xE1012C10L;
                    int8_t l_935 = 0x53L;
                    int32_t l_940[8][10][3] = {{{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}, {{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}, {{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}, {{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}, {{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}, {{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}, {{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}, {{0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}, {0xB47A07FBL, (-5L), (-1L)}}};
                    int i, j, k;
                    for (l_907.f3 = (-1); (l_907.f3 >= (-18)); l_907.f3 = safe_sub_func_int64_t_s_s(l_907.f3, 7))
                    { /* block id: 339 */
                        (**p_4099->g_371) = l_922;
                        (*p_4099->g_175) = p_45;
                        (*p_4099->g_372) = &l_899;
                        return p_4099->g_66[2];
                    }
                    if ((((*l_926) = (l_923 >= (safe_rshift_func_int32_t_s_u(p_47, 9)))) & make_uchar1(p_4099->g_927.w).x))
                    { /* block id: 346 */
                        int32_t l_929 = (-1L);
                        __shared__ int32_t l_932;
                        l_932 = 0x76DAB139L;
                        int32_t l_936 = 4L;
                        int32_t l_938 = (-1L);
                        __shared__ int32_t l_945;
                        l_945 = 0x6C89FE6FL;
                        int32_t l_947 = 0L;
                        --l_950;
                        (*l_922) ^= (((((safe_rshift(((safe_rshift(make_ulong1(p_4099->g_957.w), ((make_ulong1(l_958.x) | make_ulong1(0xADA82CC290A4493ELL)))))), make_ulong1(p_4099->g_959.y)))) & make_ulong1(0xE375049B55D0739ALL))).x , (p_45 | p_4099->g_239.x));
                    }
                    else
                    { /* block id: 349 */
                        int8_t *l_969[3];
                        int32_t l_970 = 0xF2C9FC13L;
                        int i;
                        for (int i = 0; i < 3; i++)
                            l_969[i] = &l_852[0].f0;
                        l_928 |= ((safe_add_func_int64_t_s_s(((+(*l_922)) , (l_964[3][3] > (((safe_lshift_func_int32_t_s_u(l_958.z, 28)) , nullptr) == (*p_4099->g_856)))), (1UL || (p_4099->g_239.w = p_45)))) & (p_48 = (safe_rshift_func_int32_t_s_u(((0x4AL == ((l_931[2][1] ^= (**p_4099->g_574)) == 0xD7L)) > l_970), p_46))));
                        ++l_972;
                    }
                }
            }
            else
            { /* block id: 357 */
                // attempting a hip shared for loop
                __shared__ uint8_t l_982[7][1];
                for (int i = 0; i < 7; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_982[i][j] = 0xFAL;
                }
                int32_t l_996 = 0xA2E33064L;
                int i, j;
                for (int i = 0; i < 7; i++)
                {
                    for (int j = 0; j < 1; j++)
                        l_982[i][j] = 0xFAL;
                }
                l_975--;
                l_942 ^= (p_4099->g_72.z || make_ushort4(0x9A88L, p_47, (safe_sub_func_int16_t_s_s((((safe_mul_func_uint64_t_u_u(l_982[4][0], 0x58D4B270A7EBB20ELL)) , p_4099->g_212.x) <= ((safe_rshift_func_uint64_t_u_s(0xD6D601A43BA62112LL, ((safe_lshift_func_int16_t_s_s(make_short3(p_4099->g_987.y, p_4099->g_987.y, p_4099->g_987.y).z, 15)) | (safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_u(p_46, 2)), (*p_4099->g_575)))))) | (&p_4099->g_91 != l_992))), p_45)), 1UL).x);
                for (p_4099->g_80.f0 = 0; (p_4099->g_80.f0 <= (-6)); p_4099->g_80.f0 = safe_sub_func_int64_t_s_s(p_4099->g_80.f0, 9))
                { /* block id: 362 */
                    if (p_47)
                    { /* block id: 363 */
                        union U1 l_995[4] = {{0UL}, {0UL}, {0UL}, {0UL}};
                        int i;
                        if (l_898)
                            goto lbl_917;
                        return l_995[1];
                    }
                    else
                    { /* block id: 366 */
                        l_996 &= (1UL || 0xE01105B4L);
                        return p_4099->g_66[0];
                    }
                }
            }
        }
        p_4099->g_912.z = (((((((((safe_unary_minus(((safe_add(((((((((safe_rshift(make_long3(p_4099->g_246.x, (l_886.y >= (p_47 &= (safe_unary_minus_func_int64_t_s((p_46 || 1L))))), p_4099->g_749.z), make_long3(64, 64, 64)))) ^ make_long3(0x594E420B8B165FEFLL, l_872.y, make_long4(1L, ((((p_46 == ((safe_mod_func_int8_t_s_s(make_char4(0x18L, (safe_lshift_func_int32_t_s_u(p_49, (safe_mod_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint64_t_u_s(((safe_mod_func_int8_t_s_s(l_897[1], (*p_4099->g_575))) , p_46), 38)), l_937[0][2][5])) <= p_48), p_49)))), 0x78L, (*p_4099->g_575)).x, l_885.z)) == l_937[0][2][5])) , l_1016) != nullptr) , p_46), 7L, (-4L)).w))) | make_long3(0xAED5E9436FA0A285LL, 0xAED5E9436FA0A285LL, 0xAED5E9436FA0A285LL))) ^ make_long3(0x26FB6BFF9DF6F7CBLL, 0x26FB6BFF9DF6F7CBLL, 0x26FB6BFF9DF6F7CBLL))), make_long3(0x946F8DA66071C0F4LL, 0x946F8DA66071C0F4LL, 0x946F8DA66071C0F4LL))))))) ^ make_long3(0xB6C4C284A2110B8ALL, 0xB6C4C284A2110B8ALL, 0xB6C4C284A2110B8ALL))) ^ make_long3(0xEA795293CBCAC0A7LL, 0xEA795293CBCAC0A7LL, 0xEA795293CBCAC0A7LL))).z > 1UL) > p_49) , 0xA5312842L);
    }
    l_1036 &= ((safe_mod_func_uint32_t_u_u(0xE50C5718L, (safe_mul_func_uint16_t_u_u(p_4099->g_760.w, (((p_4099->g_239.z = ((!(((((l_1021 = l_1021) != ((****p_4099->g_318) , l_1022[0])) | (~(!((safe_div(make_int1(l_1025.w), make_int1(p_4099->g_1026.z)))).x))) != hip_const_3[6]) , (p_4099->g_664[1] = (safe_div_func_int32_t_s_s(p_47, 1UL))))) , ((safe_sub_func_uint64_t_u_u(make_ulong3(p_4099->g_1031.y, p_4099->g_1031.y, p_4099->g_1031.y).x, (safe_mod_func_int8_t_s_s((safe_rshift_func_int64_t_s_s(p_4099->g_959.y, 55)), p_48)))) , 0xB4FB8A3FL))) | p_4099->g_663.z) || p_47))))) > 0xFE42L);
    for (p_4099->g_535 = 29; (p_4099->g_535 == (-16)); --p_4099->g_535)
    { /* block id: 382 */
        int64_t l_1054 = 0xF6877CE653DD91D5LL;
        __shared__ int32_t *l_1069;
        l_1069 = nullptr;
        int8_t l_1074 = 9L;
        __shared__ char4 l_1094;
        l_1094 = make_char4(0xCAL, 0L, 0xCAL, 0L);
        int16_t l_1098 = 0xE837L;
        int32_t l_1099 = 9L;
        int32_t l_1102 = (-1L);
        int32_t l_1103 = 0xC52ED929L;
        int32_t l_1104 = 0x93D83394L;
        int32_t l_1110 = (-7L);
        // attempting a hip shared for loop
        __shared__ int32_t l_1112[4];
        for (int i = 0; i < 4; i++)
            l_1112[i] = 1L;
        uint8_t l_1118 = 249UL;
        uint64_t ***l_1122 = &l_844[1][4][0];
        __shared__ uint16_t l_1147;
        l_1147 = 0x25F9L;
        int64_t l_1170 = 0x21D0C3D0099F76F4LL;
        uint64_t l_1205 = 0xCEB18F0EBFE1F548LL;
        uint32_t l_1213 = 18446744073709551613UL;
        union U1 *l_1217 = nullptr;
        int16_t **l_1221[10][8] = {{&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}, {&p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4], &p_4099->g_868[1], &p_4099->g_868[4]}};
        union U0 *l_1234[5][4][8] = {{{&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}}, {{&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}}, {{&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}}, {{&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}}, {{&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}, {&p_4099->g_1197[5], nullptr, nullptr, &p_4099->g_80, &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_1197[5], &p_4099->g_80}}};
        uchar4 l_1239 = make_uchar4(255UL, 255UL, 255UL, 255UL);
        int32_t l_1257 = 0x84DAF781L;
        int4 l_1260 = make_int4(0xB615237BL, 0L, 0xB615237BL, 0L);
        __shared__ long2 l_1261;
        l_1261 = make_long2(0x70CEFD983B46733BLL, 0L);
        long1 l_1262 = make_long1((-1L));
        int8_t **l_1265[10];
        int i, j, k;
        for (int i = 0; i < 4; i++)
            l_1112[i] = 1L;
        for (int i = 0; i < 10; i++)
            l_1265[i] = &p_4099->g_575;
    }
    return p_4099->g_66[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_239
 * writes: p_4099->g_239
 */
__device__ int16_t  func_54(int16_t  p_55, union U2  p_56, union U0  p_57, struct S3 * p_4099)
{ /* block id: 103 */
    int2 l_278 = make_int2(0x30AC77B2L, 5L);
    int32_t *l_279[4][9][7] = {{{nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}}, {{nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}}, {{nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}}, {{nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}, {nullptr, nullptr, nullptr, &p_4099->g_90, &p_4099->g_90, &p_4099->g_90, nullptr}}};
    uchar2 l_328 = make_uchar2(9UL, 0UL);
    int16_t l_364 = 0xA579L;
    int32_t **l_370[9][7][4] = {{{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}, {{&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}, {&l_279[2][1][5], &l_279[0][5][0], nullptr, nullptr}}};
    int32_t ***l_369 = &l_370[2][5][1];
    union U0 *l_391 = &p_4099->g_80;
    union U0 l_394 = {0xE462L};
    __shared__ int32_t l_410;
    l_410 = 0L;
    char2 l_431 = make_char2(1L, 0x05L);
    uchar3 l_436 = make_uchar3(0x0FL, 246UL, 0x0FL);
    int64_t l_446 = 9L;
    uint8_t l_456[8];
    int64_t l_471 = 0xB744E8DED2B7156BLL;
    uint16_t l_476[9][5] = {{0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}, {0UL, 0x8FA0L, 0x45A5L, 0xF8C5L, 0xE6D3L}};
    uint8_t l_488 = 250UL;
    int8_t *l_489[7] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int8_t *l_492 = &p_4099->g_8.f0;
    __shared__ ushort3 l_499;
    l_499 = make_ushort3(0xEB8EL, 7UL, 0xEB8EL);
    __shared__ ushort2 l_515;
    l_515 = make_ushort2(0UL, 65534UL);
    int64_t l_595 = 0xAF1175B05845710FLL;
    ushort4 l_596 = make_ushort4(0xFFE8L, 0x3FD9L, 0xFFE8L, 0x3FD9L);
    int32_t l_634 = (-1L);
    __shared__ union U0 ***l_721;
    l_721 = &p_4099->g_161;
    uint4 l_745 = make_uint4(0UL, 1UL, 0UL, 1UL);
    char3 l_781 = make_char3(0xC8L, 0xA4L, 0xC8L);
    short2 l_804 = make_short2(0x55E0L, 2L);
    __shared__ int32_t l_818;
    l_818 = (-1L);
    int i, j, k;
    for (int i = 0; i < 8; i++)
        l_456[i] = 0xC5L;
    p_4099->g_239.y |= make_int3(l_278.x, l_278.x, l_278.x).y;
    for (p_56.f0 = 0; (p_56.f0 <= 22); p_56.f0 = safe_add_func_int16_t_s_s(p_56.f0, 8))
    { /* block id: 107 */
        // attempting a hip shared for loop
        __shared__ uint64_t *l_287[1][5][3];
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                for (int k = 0; k < 3; k++)
                    l_287[i][j][k] = nullptr;
            }
        }
        uint8_t *l_288 = &p_4099->g_163;
        __shared__ uint16_t *l_295;
        l_295 = &p_4099->g_88;
        __shared__ short2 l_310;
        l_310 = make_short2(0x346BL, 0x32B8L);
        __shared__ union U0 ***l_317;
        l_317 = nullptr;
        union U0 ****l_316 = &l_317;
        uint8_t l_329 = 2UL;
        int4 l_330 = make_int4(0xC6F42F22L, (-1L), 0xC6F42F22L, (-1L));
        uint16_t l_355 = 0x0DA0L;
        uint32_t *l_380 = &p_4099->g_234[1];
        char2 l_430 = make_char2((-6L), (-1L));
        int16_t l_491 = 0x4626L;
        short2 l_543 = make_short2((-1L), (-1L));
        int32_t l_582 = 3L;
        union U0 l_591 = {1L};
        int8_t l_594 = (-1L);
        int64_t l_635[1];
        char3 l_646 = make_char3(0xE5L, 0xB9L, 0xE5L);
        uint32_t l_708 = 1UL;
        __shared__ short3 l_724;
        l_724 = make_short3(0x1954L, 0L, 0x1954L);
        union U1 l_727 = {0x9CL};
        uint1 l_751 = make_uint1(5UL);
        int32_t **l_755 = &p_4099->g_175;
        int8_t **l_766[8][6][5] = {{{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}, {{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}, {{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}, {{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}, {{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}, {{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}, {{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}, {{&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}, {&l_489[5], &l_492, &l_489[5], &l_492, &l_489[5]}}};
        uint32_t l_769 = 0x3065EB8CL;
        char3 l_780 = make_char3(0x1AL, (-1L), 0x1AL);
        __shared__ int32_t l_784;
        l_784 = (-3L);
        uint32_t l_793[1][7][9] = {{{0xA7DAC7CDL, 0xE9A0876AL, 0x314A6D4EL, 0UL, 3UL, 0UL, 0x314A6D4EL, 0xE9A0876AL, 0xA7DAC7CDL}, {0xA7DAC7CDL, 0xE9A0876AL, 0x314A6D4EL, 0UL, 3UL, 0UL, 0x314A6D4EL, 0xE9A0876AL, 0xA7DAC7CDL}, {0xA7DAC7CDL, 0xE9A0876AL, 0x314A6D4EL, 0UL, 3UL, 0UL, 0x314A6D4EL, 0xE9A0876AL, 0xA7DAC7CDL}, {0xA7DAC7CDL, 0xE9A0876AL, 0x314A6D4EL, 0UL, 3UL, 0UL, 0x314A6D4EL, 0xE9A0876AL, 0xA7DAC7CDL}, {0xA7DAC7CDL, 0xE9A0876AL, 0x314A6D4EL, 0UL, 3UL, 0UL, 0x314A6D4EL, 0xE9A0876AL, 0xA7DAC7CDL}, {0xA7DAC7CDL, 0xE9A0876AL, 0x314A6D4EL, 0UL, 3UL, 0UL, 0x314A6D4EL, 0xE9A0876AL, 0xA7DAC7CDL}, {0xA7DAC7CDL, 0xE9A0876AL, 0x314A6D4EL, 0UL, 3UL, 0UL, 0x314A6D4EL, 0xE9A0876AL, 0xA7DAC7CDL}}};
        short4 l_805 = make_short4((-1L), 5L, (-1L), 5L);
        __shared__ short3 l_806;
        l_806 = make_short3(0L, 1L, 0L);
        uint4 l_817 = make_uint4(0x33272611L, 0x3131F15CL, 0x33272611L, 0x3131F15CL);
        __shared__ int64_t l_821;
        l_821 = 1L;
        int32_t l_822 = 0x36A536A5L;
        int i, j, k;
        for (int i = 0; i < 1; i++)
            l_635[i] = 9L;
    }
    return p_57.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_4099->g_90 p_4099->g_8 p_4099->g_66.f0 p_4099->g_71 p_4099->g_72 p_4099->g_80 hip_const_2 p_4099->g_8.f0
 * writes: p_4099->g_90 p_4099->g_91 p_4099->g_88 p_4099->g_66.f1
 */
__device__ union U2  func_58(uint32_t  p_59, union U1  p_60, uint64_t  p_61, struct S3 * p_4099)
{ /* block id: 2 */
    short1 l_77 = make_short1(0L);
    uint32_t *l_83 = &hip_const_1;
    uint32_t *l_84 = &hip_const_2[4];
    int32_t l_85 = (-2L);
    int8_t l_86 = (-5L);
    uint16_t *l_87 = &p_4099->g_88;
    int32_t *l_89 = &p_4099->g_90;
    ulong4 l_105 = make_ulong4(0xBEEE9A18863885E3LL, 0UL, 0xBEEE9A18863885E3LL, 0UL);
    union U2 l_111[10] = {{0x6BL}, {0x21L}, {0xF7L}, {0xF7L}, {0x21L}, {0x6BL}, {0x21L}, {0xF7L}, {0xF7L}, {0x21L}};
    int1 l_170 = make_int1((-1L));
    uint1 l_249 = make_uint1(0UL);
    int32_t *l_254 = &l_85;
    int32_t *l_255 = nullptr;
    __shared__ int32_t *l_256;
    l_256 = nullptr;
    int32_t *l_257 = &p_4099->g_90;
    int32_t *l_258 = nullptr;
    int32_t *l_259 = nullptr;
    int32_t *l_260 = nullptr;
    int32_t *l_261 = nullptr;
    __shared__ int32_t *l_262;
    l_262 = nullptr;
    int32_t *l_263 = &l_85;
    int32_t *l_264 = &l_85;
    int32_t *l_265 = nullptr;
    int32_t *l_266 = nullptr;
    int32_t *l_267 = nullptr;
    int32_t *l_268 = nullptr;
    // attempting a hip shared for loop
    __shared__ int32_t *l_269[8][2][8];
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 8; k++)
                l_269[i][j][k] = &p_4099->g_90;
        }
    }
    int64_t l_270 = (-1L);
    int32_t l_271 = 0x760F319DL;
    int8_t l_272 = 0x10L;
    uint32_t l_274 = 0xF3E33FAEL;
    int i, j, k;
lbl_92:
    p_4099->g_91 = ((*l_89) = (make_long1((p_4099->g_66[1].f1 = (safe_add_func_uint8_t_u_u(make_uchar4(252UL, 0x9AL, (safe_sub_func_int16_t_s_s(((((make_short3(0x1CA9L, p_4099->g_66[1].f0, 0x7A84L) & make_short3(((make_short3(p_4099->g_71.x, p_4099->g_71.x, p_4099->g_71.x) | make_short3(p_4099->g_72.z, p_4099->g_72.z, p_4099->g_72.z))).x, 0xAF34L, 0L))) ^ make_short3(0xD795L, (((*l_87) = (0x59FB14BE5697A12BLL == ((safe_add(((((safe_mod(make_long3((((make_short4(l_77.x, l_77.x, l_77.x, l_77.x) & make_short4(((l_77.x && (((((safe_lshift_func_uint64_t_u_u(l_77.x, 33)) & ((p_4099->g_80 , (((((safe_mul_func_uint64_t_u_u(make_ulong2(0x5A2910E9FB3884E3LL, 0xD797CFCBFA339BCALL).y, (+((l_85 = (+0xD28F7D06L)) > (&p_59 != nullptr))))) != l_77.x) || p_4099->g_66[1].f0) && p_60.f0) & 5L)) && l_86)) , p_61) , 6L) < l_86)) != hip_const_2[5]), 0x7EABL, (-8L), 4L))).x < p_61), 0x9E0432CFC9AAE810LL, 0xDDE4E4C4DC475587LL), make_long3(1L, 1L, 1L)))) | make_long3((-1L), (-1L), (-1L)))), make_long3(0xF06586993EB33379LL, 0xF06586993EB33379LL, 0xF06586993EB33379LL)))).z)) >= 0UL), 0x55AEL))).y, p_60.f0)), 1UL).w, p_4099->g_8.f0)))).x > l_77.x));
    for (p_4099->g_90 = 0; (p_4099->g_90 <= 2); p_4099->g_90 += 1)
    { /* block id: 10 */
        ulong3 l_100 = make_ulong3(0x385642B86B6EF140LL, 0x7910ABA4BFF0AA60LL, 0x385642B86B6EF140LL);
        __shared__ ulong2 l_103;
        l_103 = make_ulong2(0xC3227D8CF631B5FDLL, 1UL);
        long2 l_108 = make_long2(0x3AE71BBE26AF1C48LL, 0xB1B1FA0A7086DEEBLL);
        int32_t l_113[5][8][5] = {{{1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}}, {{1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}}, {{1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}}, {{1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}}, {{1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}, {1L, 0x335754D7L, 1L, (-1L), 0xDB762060L}}};
        union U0 ***l_167 = &p_4099->g_161;
        union U0 ***l_169 = &p_4099->g_161;
        uint32_t *l_176 = &hip_const_1;
        uint64_t *l_177 = nullptr;
        uint64_t *l_178 = nullptr;
        uint64_t *l_179 = nullptr;
        uint64_t *l_180[3];
        uchar2 l_189 = make_uchar2(4UL, 0x6EL);
        union U2 l_197 = {0xAFL};
        long4 l_202 = make_long4(0x10C314D7034A44F2LL, 0xFECD871682D74585LL, 0x10C314D7034A44F2LL, 0xFECD871682D74585LL);
        ulong3 l_209 = make_ulong3(0x31B15F34AE07AD30LL, 0xA1FB7984CDCF2E06LL, 0x31B15F34AE07AD30LL);
        __shared__ int8_t *l_215;
        l_215 = nullptr;
        int8_t *l_216[9] = {&l_197.f0, nullptr, &l_197.f0, nullptr, &l_197.f0, nullptr, &l_197.f0, nullptr, &l_197.f0};
        int32_t l_217[6] = {(-7L), 0xEAC38ED0L, (-7L), 0xEAC38ED0L, (-7L), 0xEAC38ED0L};
        __shared__ int16_t *l_218;
        l_218 = nullptr;
        int16_t *l_219 = nullptr;
        int16_t *l_220[3][3][10] = {{{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}, {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}}};
        int32_t *l_221 = nullptr;
        int32_t *l_222 = nullptr;
        int32_t *l_223 = &l_85;
        uint8_t *l_224 = &p_4099->g_136;
        __shared__ int1 l_240;
        l_240 = make_int1(0x34976463L);
        int4 l_241 = make_int4((-1L), 0L, (-1L), 0L);
        int i, j, k;
        for (int i = 0; i < 3; i++)
            l_180[i] = nullptr;
        if (p_61)
            goto lbl_92;
    }
    ++l_274;
    return p_4099->g_8;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S3 c_4100;
    struct S3* p_4099 = &c_4100;
    struct S3 c_4101 = {
        .g_8 = {3L},
        .g_34 = make_char4(0x08L, 0xD1L, 0x08L, 0xD1L),
        .g_38 = make_uint2(1UL, 0x1477A14AL),
        .g_39 = make_uint2(0xF9F3B06DL, 0x96BB6454L),
        .g_66 = {{255UL}, {255UL}, {255UL}},
        .g_71 = make_short3(0x6950L, 0xE27DL, 0x6950L),
        .g_72 = make_short3((-5L), 0x79B1L, (-5L)),
        .g_80 = {0x70ADL},
        .g_88 = 0UL,
        .g_90 = 0x22B282FFL,
        .g_91 = 0x804CL,
        .g_104 = make_ulong3(18446744073709551615UL, 0UL, 18446744073709551615UL),
        .g_118 = (-9L),
        .g_122 = make_int3(0xBB96E4AEL, 0xC67F3A6BL, 0xBB96E4AEL),
        .g_136 = 0xD8L,
        .g_137 = {&p_4099->g_136, &p_4099->g_136},
        .g_144 = make_int2(0xDBAEAE63L, (-4L)),
        .g_162 = &p_4099->g_80,
        .g_161 = &p_4099->g_162,
        .g_163 = 0xB8L,
        .g_164 = 0x844FDB9DL,
        .g_175 = nullptr,
        .g_192 = make_short3(0L, (-1L), 0L),
        .g_212 = make_ushort1(1UL),
        .g_234 = {18446744073709551609UL, 18446744073709551609UL},
        .g_235 = make_char2((-1L), 0xEFL),
        .g_236 = 255UL,
        .g_239 = make_int4((-1L), 0xE34DF51DL, (-1L), 0xE34DF51DL),
        .g_246 = make_long1(0xDF5F3997202116EFLL),
        .g_273 = {{{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}, {{(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}, {(-1L), 0x143E2F93L, 0x88BE3FEFL, (-1L), 0x64AD36B8L, 0xFFBA5703L}}},
        .g_284 = make_int4(0x43A48F00L, 4L, 0x43A48F00L, 4L),
        .g_311 = make_short3(3L, (-6L), 3L),
        .g_319 = &p_4099->g_161,
        .g_318 = &p_4099->g_319,
        .g_344 = make_ushort2(0x9B94L, 1UL),
        .g_345 = make_ushort1(0x02A1L),
        .g_372 = &p_4099->g_175,
        .g_371 = &p_4099->g_372,
        .g_375 = make_uchar3(0x04L, 0xC1L, 0x04L),
        .g_405 = make_uint2(5UL, 4294967295UL),
        .g_413 = make_short4(0x6BBBL, (-2L), 0x6BBBL, (-2L)),
        .g_504 = make_long3(0x5640237A56C9A583LL, 0xAC0D095653DDB787LL, 0x5640237A56C9A583LL),
        .g_535 = 0x2DL,
        .g_539 = &p_4099->g_175,
        .g_566 = make_uint2(0x7BD05600L, 1UL),
        .g_575 = &hip_const_3[3],
        .g_574 = &p_4099->g_575,
        .g_663 = make_long3((-1L), 0x12EC731F3257FAF6LL, (-1L)),
        .g_664 = {0xE8516E0DL, 0xE8516E0DL, 0xE8516E0DL, 0xE8516E0DL, 0xE8516E0DL, 0xE8516E0DL},
        .g_670 = (-2L),
        .g_693 = nullptr,
        .g_692 = &p_4099->g_693,
        .g_749 = make_uint4(4294967295UL, 0x3571A036L, 4294967295UL, 0x3571A036L),
        .g_750 = make_uint4(0UL, 0xB67FE1D8L, 0UL, 0xB67FE1D8L),
        .g_760 = make_ulong4(0xDDE0774137FECD59LL, 0UL, 0xDDE0774137FECD59LL, 0UL),
        .g_763 = make_int1(0x5A18CB78L),
        .g_814 = make_uchar4(0x1BL, 252UL, 0x1BL, 252UL),
        .g_843 = make_char2((-1L), 8L),
        .g_857 = &p_4099->g_693,
        .g_856 = &p_4099->g_857,
        .g_868 = {nullptr, nullptr, &p_4099->g_670, nullptr, nullptr, &p_4099->g_670, nullptr, nullptr, &p_4099->g_670, nullptr},
        .g_867 = {&p_4099->g_868[3], &p_4099->g_868[4], &p_4099->g_868[3], &p_4099->g_868[4], &p_4099->g_868[3]},
        .g_875 = make_long2(7L, (-1L)),
        .g_881 = make_long2(0x26BA268F3F307A64LL, 0x1A87FA7C0A1F5916LL),
        .g_906 = make_long4(0x7878602B690A5BFDLL, 4L, 0x7878602B690A5BFDLL, 4L),
        .g_912 = make_int3(0x5DFD649AL, 0L, 0x5DFD649AL),
        .g_927 = make_uchar4(0UL, 1UL, 0UL, 1UL),
        .g_957 = make_ulong4(0xF4C9220868C8836CLL, 0xAE4F6F5EF862EFE7LL, 0xF4C9220868C8836CLL, 0xAE4F6F5EF862EFE7LL),
        .g_959 = make_ulong2(6UL, 0x89A5DE14591A046DLL),
        .g_987 = make_short2(0x4F5EL, 0xE6BCL),
        .g_1026 = make_int4((-10L), 0L, (-10L), 0L),
        .g_1031 = make_ulong2(0x157117640C7BE10BLL, 18446744073709551609UL),
        .g_1055 = make_short2(0x7496L, 0x6C92L),
        .g_1091 = make_uint4(0x50B808B3L, 4294967286UL, 0x50B808B3L, 4294967286UL),
        .g_1121 = make_int1(0x02E7B7BCL),
        .g_1156 = make_char1(0x85L),
        .g_1157 = make_char4(7L, 3L, 7L, 3L),
        .g_1158 = make_char1(0x45L),
        .g_1167 = 1UL,
        .g_1187 = make_ushort1(0xBA57L),
        .g_1197 = {{0x6C5DL}, {0x6C5DL}, {0x6C5DL}, {0x6C5DL}, {0x6C5DL}, {0x6C5DL}, {0x6C5DL}, {0x6C5DL}, {0x6C5DL}},
        .g_1196 = &p_4099->g_1197[5],
        .g_1210 = make_int2(0xF40D8AFDL, 0L),
        .g_1236 = make_uint4(0x669BB9E7L, 0xE8919B18L, 0x669BB9E7L, 0xE8919B18L),
        .g_1267 = make_char3(0x67L, (-1L), 0x67L),
        .g_1274 = &p_4099->g_371,
        .g_1273 = &p_4099->g_1274,
        .g_1317 = {{{&p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, nullptr, nullptr}, {&p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, nullptr, nullptr}, {&p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, nullptr, nullptr}, {&p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, nullptr, nullptr}, {&p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, nullptr, nullptr}, {&p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, nullptr, nullptr}, {&p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, &p_4099->g_856, nullptr, nullptr}}},
        .g_1316 = &p_4099->g_1317[0][0][4],
        .g_1368 = make_uchar2(248UL, 0UL),
        .g_1425 = make_ulong3(0x140C8B32CB12A0F3LL, 0x77AEC92EBF48DC60LL, 0x140C8B32CB12A0F3LL),
        .g_1473 = make_uint4(0x0BF0FE86L, 4294967289UL, 0x0BF0FE86L, 4294967289UL),
        .g_1491 = 18446744073709551615UL,
        .g_1528 = make_uchar3(1UL, 2UL, 1UL),
        .g_1556 = make_ushort1(0x8F5CL),
        .g_1560 = make_uchar1(255UL),
        .g_1576 = make_uint4(1UL, 0x5CC93481L, 1UL, 0x5CC93481L),
        .g_1644 = make_ulong1(7UL),
        .g_1675 = make_uchar2(0UL, 1UL),
        .g_1677 = make_char2(0x8AL, 0x14L),
        .g_1725 = make_short4((-4L), 0x22E5L, (-4L), 0x22E5L),
        .g_1736 = nullptr,
        .g_1813 = make_uint4(0xC25823E8L, 0UL, 0xC25823E8L, 0UL),
        .g_1862 = make_int1(1L),
        .g_1917 = make_uint3(0x4CEE043BL, 4294967288UL, 0x4CEE043BL),
        .g_1937 = {nullptr, nullptr},
        .g_1936 = &p_4099->g_1937[0],
        .g_1953 = make_uchar4(1UL, 255UL, 1UL, 255UL),
        .g_1954 = make_uchar1(5UL),
        .g_1998 = make_ulong2(18446744073709551613UL, 0x9DA4EFBFECA44675LL),
        .g_2020 = &p_4099->g_664[1],
        .g_2023 = {0UL},
        .g_2024 = make_uint3(0x2F7B22E9L, 0x34D5B637L, 0x2F7B22E9L),
        .g_2056 = 1L,
        .g_2069 = make_char4(0x3AL, 0x79L, 0x3AL, 0x79L),
        .g_2108 = &p_4099->g_66[1],
        .g_2139 = make_ushort1(0xC1F8L),
        .g_2167 = make_short2(9L, (-5L)),
        .g_2198 = make_uint1(0xAAD4667BL),
        .g_2199 = make_uint4(4294967288UL, 0xE3F90A30L, 4294967288UL, 0xE3F90A30L),
        .g_2214 = {0L, 0L},
        .g_2230 = make_ushort1(0xE7C0L),
        .g_2243 = make_short3(0x8B63L, 0x1344L, 0x8B63L),
        .g_2309 = &p_4099->g_574,
        .g_2308 = &p_4099->g_2309,
        .g_2320 = make_short1((-1L)),
        .g_2324 = make_short3(1L, 0x58D4L, 1L),
        .g_2422 = 0x266EA90350296FC3LL,
        .g_2478 = make_uint1(0UL),
        .g_2499 = make_char1((-8L)),
        .g_2500 = make_char2(6L, (-1L)),
        .g_2501 = make_char4(1L, 0xE6L, 1L, 0xE6L),
        .g_2515 = make_int2(1L, 1L),
        .g_2519 = make_int4((-3L), (-1L), (-3L), (-1L)),
        .g_2536 = make_int4(0xF6EB9796L, 8L, 0xF6EB9796L, 8L),
        .g_2544 = {{{&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}}, {{&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}}, {{&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}, {&p_4099->g_867[0], &p_4099->g_867[3]}}},
        .g_2543 = &p_4099->g_2544[0][6][1],
        .g_2546 = {{nullptr, nullptr, &p_4099->g_2544[1][6][0], nullptr, nullptr, &p_4099->g_2544[1][6][0]}, {nullptr, nullptr, &p_4099->g_2544[1][6][0], nullptr, nullptr, &p_4099->g_2544[1][6][0]}},
        .g_2571 = make_uint2(1UL, 0x627B9D93L),
        .g_2592 = 6L,
        .g_2676 = make_ulong4(0xF0513492C4768F12LL, 18446744073709551615UL, 0xF0513492C4768F12LL, 18446744073709551615UL),
        .g_2683 = make_ulong1(0x119EC4D17717D7E0LL),
        .g_2685 = make_long1(0xAFD31407DB9E6ADCLL),
        .g_2736 = make_int1(0xDCE0FEF0L),
        .g_2755 = {{{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}, {{0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}, {0xA18DL, 0x9980L, 0xA18DL}}},
        .g_2765 = make_short2(0xCDE0L, 7L),
        .g_2779 = make_char1(9L),
        .g_2798 = nullptr,
        .g_2807 = &p_4099->g_137[0],
        .g_2821 = make_uint1(0x8ABB737FL),
        .g_2829 = make_long3(0xBCD1EE9EF7377F9ELL, 9L, 0xBCD1EE9EF7377F9ELL),
        .g_2833 = 1UL,
        .g_2973 = nullptr,
        .g_2972 = {&p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973, &p_4099->g_2973},
        .g_3008 = &p_4099->g_2020,
        .g_3022 = &p_4099->g_664[1],
        .g_3033 = make_uchar2(253UL, 0UL),
        .g_3038 = {{&p_4099->g_162}},
        .g_3093 = make_int3(0L, 1L, 0L),
        .g_3126 = &p_4099->g_318,
        .g_3141 = make_uint3(0xCE91CEB9L, 9UL, 0xCE91CEB9L),
        .g_3145 = make_uint1(3UL),
        .g_3146 = make_uint1(1UL),
        .g_3147 = make_uint2(4294967293UL, 9UL),
        .g_3176 = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}},
        .g_3183 = make_char3(0L, 0L, 0L),
        .g_3188 = make_ushort4(0x9991L, 0x4486L, 0x9991L, 0x4486L),
        .g_3194 = {0xE11979DFL, 0x7D64F75CL, 0xE11979DFL, 0x7D64F75CL, 0xE11979DFL},
        .g_3228 = make_ushort4(0xB084L, 1UL, 0xB084L, 1UL),
        .g_3230 = &p_4099->g_3038[0][0],
        .g_3248 = make_long2((-1L), 0x20AB4FF8B658F5A4LL),
        .g_3288 = make_ulong1(0UL),
        .g_3313 = make_int3(0x862B7BFDL, 0x83C01F16L, 0x862B7BFDL),
        .g_3325 = make_int1(0x46ED4B22L),
        .g_3343 = 0x9B0EL,
        .g_3403 = {{{nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}}, {{nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}}, {{nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}}, {{nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}}, {{nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}}, {{nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}, {nullptr, &p_4099->g_2023, &p_4099->g_66[1], &p_4099->g_2023, &p_4099->g_66[2]}}},
        .g_3402 = &p_4099->g_3403[0][7][4],
        .g_3427 = &p_4099->g_136,
        .g_3455 = 0xBF2F772618A8B4E1LL,
        .g_3498 = make_ushort2(0x4892L, 1UL),
        .g_3499 = make_ushort2(0x3EDBL, 0UL),
        .g_3501 = make_ushort4(0UL, 65527UL, 0UL, 65527UL),
        .g_3514 = &p_4099->g_1736,
        .g_3513 = &p_4099->g_3514,
        .g_3528 = make_uint2(0x09FDD955L, 4294967291UL),
        .g_3529 = make_uint1(4294967291UL),
        .g_3533 = make_ulong2(18446744073709551615UL, 0x8B82CCCD2540276FLL),
        .g_3534 = make_ulong4(18446744073709551606UL, 18446744073709551610UL, 18446744073709551606UL, 18446744073709551610UL),
        .g_3558 = 0UL,
        .g_3560 = {0x34CBL, 0x2E4BL, 0x34CBL, 0x2E4BL, 0x34CBL, 0x2E4BL, 0x34CBL, 0x2E4BL, 0x34CBL, 0x2E4BL},
        .g_3570 = {1L, 1L},
        .g_3616 = make_char1(7L),
        .g_3654 = make_ulong1(0UL),
        .g_3707 = nullptr,
        .g_3722 = make_ushort4(65529UL, 0x74A1L, 65529UL, 0x74A1L),
        .g_3724 = make_int2(1L, 1L),
        .g_3725 = make_uint4(0x65BF2FECL, 0xA49889C9L, 0x65BF2FECL, 0xA49889C9L),
        .g_3733 = &p_4099->g_3008,
        .g_3732 = &p_4099->g_3733,
        .g_3738 = &p_4099->g_2308,
        .g_3783 = make_uint4(4294967293UL, 0UL, 4294967293UL, 0UL),
        .g_3825 = make_uint2(0x509DD0A8L, 0x501A42E7L),
        .g_3874 = make_char4(0x7EL, 0x69L, 0x7EL, 0x69L),
        .g_3891 = {0xD2L, 0xD2L, 0xD2L},
        .g_3903 = 0x64D2L,
        .g_3914 = make_ulong4(0x3DB55AD82339AC45LL, 18446744073709551615UL, 0x3DB55AD82339AC45LL, 18446744073709551615UL),
        .g_3920 = make_ushort1(65529UL),
        .g_3921 = 0x1FE3F0DAL,
        .g_3970 = make_uint3(0xEF233316L, 18446744073709551615UL, 0xEF233316L),
        .g_3981 = make_long3(3L, 0x82F9468EDB0A48B1LL, 3L),
        .g_3986 = make_long3((-1L), (-10L), (-1L)),
        .g_4008 = make_short4(0x465EL, 0x4F6EL, 0x465EL, 0x4F6EL),
        .g_4095 = 18446744073709551615UL,
        .g_4096 = 0L,
    };
    c_4100 = c_4101;

    // Execute core logic
    func_1(p_4099);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(hip_const_2[i], "hip_const_2[i]", print_hash_value);

    }
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(hip_const_3[i], "hip_const_3[i]", print_hash_value);

    }
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(p_4099->g_8.f0, "p_4099->g_8.f0", print_hash_value);
    transparent_crc(p_4099->g_34.x, "p_4099->g_34.x", print_hash_value);
    transparent_crc(p_4099->g_34.y, "p_4099->g_34.y", print_hash_value);
    transparent_crc(p_4099->g_34.z, "p_4099->g_34.z", print_hash_value);
    transparent_crc(p_4099->g_34.w, "p_4099->g_34.w", print_hash_value);
    transparent_crc(p_4099->g_38.x, "p_4099->g_38.x", print_hash_value);
    transparent_crc(p_4099->g_38.y, "p_4099->g_38.y", print_hash_value);
    transparent_crc(p_4099->g_39.x, "p_4099->g_39.x", print_hash_value);
    transparent_crc(p_4099->g_39.y, "p_4099->g_39.y", print_hash_value);
    transparent_crc(p_4099->g_71.x, "p_4099->g_71.x", print_hash_value);
    transparent_crc(p_4099->g_71.y, "p_4099->g_71.y", print_hash_value);
    transparent_crc(p_4099->g_71.z, "p_4099->g_71.z", print_hash_value);
    transparent_crc(p_4099->g_72.x, "p_4099->g_72.x", print_hash_value);
    transparent_crc(p_4099->g_72.y, "p_4099->g_72.y", print_hash_value);
    transparent_crc(p_4099->g_72.z, "p_4099->g_72.z", print_hash_value);
    transparent_crc(p_4099->g_88, "p_4099->g_88", print_hash_value);
    transparent_crc(p_4099->g_90, "p_4099->g_90", print_hash_value);
    transparent_crc(p_4099->g_91, "p_4099->g_91", print_hash_value);
    transparent_crc(p_4099->g_104.x, "p_4099->g_104.x", print_hash_value);
    transparent_crc(p_4099->g_104.y, "p_4099->g_104.y", print_hash_value);
    transparent_crc(p_4099->g_104.z, "p_4099->g_104.z", print_hash_value);
    transparent_crc(p_4099->g_118, "p_4099->g_118", print_hash_value);
    transparent_crc(p_4099->g_122.x, "p_4099->g_122.x", print_hash_value);
    transparent_crc(p_4099->g_122.y, "p_4099->g_122.y", print_hash_value);
    transparent_crc(p_4099->g_122.z, "p_4099->g_122.z", print_hash_value);
    transparent_crc(p_4099->g_136, "p_4099->g_136", print_hash_value);
    transparent_crc(p_4099->g_144.x, "p_4099->g_144.x", print_hash_value);
    transparent_crc(p_4099->g_144.y, "p_4099->g_144.y", print_hash_value);
    transparent_crc(p_4099->g_163, "p_4099->g_163", print_hash_value);
    transparent_crc(p_4099->g_164, "p_4099->g_164", print_hash_value);
    transparent_crc(p_4099->g_192.x, "p_4099->g_192.x", print_hash_value);
    transparent_crc(p_4099->g_192.y, "p_4099->g_192.y", print_hash_value);
    transparent_crc(p_4099->g_192.z, "p_4099->g_192.z", print_hash_value);
    transparent_crc(p_4099->g_212.x, "p_4099->g_212.x", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_4099->g_234[i], "p_4099->g_234[i]", print_hash_value);

    }
    transparent_crc(p_4099->g_235.x, "p_4099->g_235.x", print_hash_value);
    transparent_crc(p_4099->g_235.y, "p_4099->g_235.y", print_hash_value);
    transparent_crc(p_4099->g_236, "p_4099->g_236", print_hash_value);
    transparent_crc(p_4099->g_239.x, "p_4099->g_239.x", print_hash_value);
    transparent_crc(p_4099->g_239.y, "p_4099->g_239.y", print_hash_value);
    transparent_crc(p_4099->g_239.z, "p_4099->g_239.z", print_hash_value);
    transparent_crc(p_4099->g_239.w, "p_4099->g_239.w", print_hash_value);
    transparent_crc(p_4099->g_246.x, "p_4099->g_246.x", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 6; k++)
            {
                transparent_crc(p_4099->g_273[i][j][k], "p_4099->g_273[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_4099->g_284.x, "p_4099->g_284.x", print_hash_value);
    transparent_crc(p_4099->g_284.y, "p_4099->g_284.y", print_hash_value);
    transparent_crc(p_4099->g_284.z, "p_4099->g_284.z", print_hash_value);
    transparent_crc(p_4099->g_284.w, "p_4099->g_284.w", print_hash_value);
    transparent_crc(p_4099->g_311.x, "p_4099->g_311.x", print_hash_value);
    transparent_crc(p_4099->g_311.y, "p_4099->g_311.y", print_hash_value);
    transparent_crc(p_4099->g_311.z, "p_4099->g_311.z", print_hash_value);
    transparent_crc(p_4099->g_344.x, "p_4099->g_344.x", print_hash_value);
    transparent_crc(p_4099->g_344.y, "p_4099->g_344.y", print_hash_value);
    transparent_crc(p_4099->g_345.x, "p_4099->g_345.x", print_hash_value);
    transparent_crc(p_4099->g_375.x, "p_4099->g_375.x", print_hash_value);
    transparent_crc(p_4099->g_375.y, "p_4099->g_375.y", print_hash_value);
    transparent_crc(p_4099->g_375.z, "p_4099->g_375.z", print_hash_value);
    transparent_crc(p_4099->g_405.x, "p_4099->g_405.x", print_hash_value);
    transparent_crc(p_4099->g_405.y, "p_4099->g_405.y", print_hash_value);
    transparent_crc(p_4099->g_413.x, "p_4099->g_413.x", print_hash_value);
    transparent_crc(p_4099->g_413.y, "p_4099->g_413.y", print_hash_value);
    transparent_crc(p_4099->g_413.z, "p_4099->g_413.z", print_hash_value);
    transparent_crc(p_4099->g_413.w, "p_4099->g_413.w", print_hash_value);
    transparent_crc(p_4099->g_504.x, "p_4099->g_504.x", print_hash_value);
    transparent_crc(p_4099->g_504.y, "p_4099->g_504.y", print_hash_value);
    transparent_crc(p_4099->g_504.z, "p_4099->g_504.z", print_hash_value);
    transparent_crc(p_4099->g_535, "p_4099->g_535", print_hash_value);
    transparent_crc(p_4099->g_566.x, "p_4099->g_566.x", print_hash_value);
    transparent_crc(p_4099->g_566.y, "p_4099->g_566.y", print_hash_value);
    transparent_crc(p_4099->g_663.x, "p_4099->g_663.x", print_hash_value);
    transparent_crc(p_4099->g_663.y, "p_4099->g_663.y", print_hash_value);
    transparent_crc(p_4099->g_663.z, "p_4099->g_663.z", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        transparent_crc(p_4099->g_664[i], "p_4099->g_664[i]", print_hash_value);

    }
    transparent_crc(p_4099->g_670, "p_4099->g_670", print_hash_value);
    transparent_crc(p_4099->g_749.x, "p_4099->g_749.x", print_hash_value);
    transparent_crc(p_4099->g_749.y, "p_4099->g_749.y", print_hash_value);
    transparent_crc(p_4099->g_749.z, "p_4099->g_749.z", print_hash_value);
    transparent_crc(p_4099->g_749.w, "p_4099->g_749.w", print_hash_value);
    transparent_crc(p_4099->g_750.x, "p_4099->g_750.x", print_hash_value);
    transparent_crc(p_4099->g_750.y, "p_4099->g_750.y", print_hash_value);
    transparent_crc(p_4099->g_750.z, "p_4099->g_750.z", print_hash_value);
    transparent_crc(p_4099->g_750.w, "p_4099->g_750.w", print_hash_value);
    transparent_crc(p_4099->g_760.x, "p_4099->g_760.x", print_hash_value);
    transparent_crc(p_4099->g_760.y, "p_4099->g_760.y", print_hash_value);
    transparent_crc(p_4099->g_760.z, "p_4099->g_760.z", print_hash_value);
    transparent_crc(p_4099->g_760.w, "p_4099->g_760.w", print_hash_value);
    transparent_crc(p_4099->g_763.x, "p_4099->g_763.x", print_hash_value);
    transparent_crc(p_4099->g_814.x, "p_4099->g_814.x", print_hash_value);
    transparent_crc(p_4099->g_814.y, "p_4099->g_814.y", print_hash_value);
    transparent_crc(p_4099->g_814.z, "p_4099->g_814.z", print_hash_value);
    transparent_crc(p_4099->g_814.w, "p_4099->g_814.w", print_hash_value);
    transparent_crc(p_4099->g_843.x, "p_4099->g_843.x", print_hash_value);
    transparent_crc(p_4099->g_843.y, "p_4099->g_843.y", print_hash_value);
    transparent_crc(p_4099->g_875.x, "p_4099->g_875.x", print_hash_value);
    transparent_crc(p_4099->g_875.y, "p_4099->g_875.y", print_hash_value);
    transparent_crc(p_4099->g_881.x, "p_4099->g_881.x", print_hash_value);
    transparent_crc(p_4099->g_881.y, "p_4099->g_881.y", print_hash_value);
    transparent_crc(p_4099->g_906.x, "p_4099->g_906.x", print_hash_value);
    transparent_crc(p_4099->g_906.y, "p_4099->g_906.y", print_hash_value);
    transparent_crc(p_4099->g_906.z, "p_4099->g_906.z", print_hash_value);
    transparent_crc(p_4099->g_906.w, "p_4099->g_906.w", print_hash_value);
    transparent_crc(p_4099->g_912.x, "p_4099->g_912.x", print_hash_value);
    transparent_crc(p_4099->g_912.y, "p_4099->g_912.y", print_hash_value);
    transparent_crc(p_4099->g_912.z, "p_4099->g_912.z", print_hash_value);
    transparent_crc(p_4099->g_927.x, "p_4099->g_927.x", print_hash_value);
    transparent_crc(p_4099->g_927.y, "p_4099->g_927.y", print_hash_value);
    transparent_crc(p_4099->g_927.z, "p_4099->g_927.z", print_hash_value);
    transparent_crc(p_4099->g_927.w, "p_4099->g_927.w", print_hash_value);
    transparent_crc(p_4099->g_957.x, "p_4099->g_957.x", print_hash_value);
    transparent_crc(p_4099->g_957.y, "p_4099->g_957.y", print_hash_value);
    transparent_crc(p_4099->g_957.z, "p_4099->g_957.z", print_hash_value);
    transparent_crc(p_4099->g_957.w, "p_4099->g_957.w", print_hash_value);
    transparent_crc(p_4099->g_959.x, "p_4099->g_959.x", print_hash_value);
    transparent_crc(p_4099->g_959.y, "p_4099->g_959.y", print_hash_value);
    transparent_crc(p_4099->g_987.x, "p_4099->g_987.x", print_hash_value);
    transparent_crc(p_4099->g_987.y, "p_4099->g_987.y", print_hash_value);
    transparent_crc(p_4099->g_1026.x, "p_4099->g_1026.x", print_hash_value);
    transparent_crc(p_4099->g_1026.y, "p_4099->g_1026.y", print_hash_value);
    transparent_crc(p_4099->g_1026.z, "p_4099->g_1026.z", print_hash_value);
    transparent_crc(p_4099->g_1026.w, "p_4099->g_1026.w", print_hash_value);
    transparent_crc(p_4099->g_1031.x, "p_4099->g_1031.x", print_hash_value);
    transparent_crc(p_4099->g_1031.y, "p_4099->g_1031.y", print_hash_value);
    transparent_crc(p_4099->g_1055.x, "p_4099->g_1055.x", print_hash_value);
    transparent_crc(p_4099->g_1055.y, "p_4099->g_1055.y", print_hash_value);
    transparent_crc(p_4099->g_1091.x, "p_4099->g_1091.x", print_hash_value);
    transparent_crc(p_4099->g_1091.y, "p_4099->g_1091.y", print_hash_value);
    transparent_crc(p_4099->g_1091.z, "p_4099->g_1091.z", print_hash_value);
    transparent_crc(p_4099->g_1091.w, "p_4099->g_1091.w", print_hash_value);
    transparent_crc(p_4099->g_1121.x, "p_4099->g_1121.x", print_hash_value);
    transparent_crc(p_4099->g_1156.x, "p_4099->g_1156.x", print_hash_value);
    transparent_crc(p_4099->g_1157.x, "p_4099->g_1157.x", print_hash_value);
    transparent_crc(p_4099->g_1157.y, "p_4099->g_1157.y", print_hash_value);
    transparent_crc(p_4099->g_1157.z, "p_4099->g_1157.z", print_hash_value);
    transparent_crc(p_4099->g_1157.w, "p_4099->g_1157.w", print_hash_value);
    transparent_crc(p_4099->g_1158.x, "p_4099->g_1158.x", print_hash_value);
    transparent_crc(p_4099->g_1167, "p_4099->g_1167", print_hash_value);
    transparent_crc(p_4099->g_1187.x, "p_4099->g_1187.x", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        transparent_crc(p_4099->g_1197[i].f0, "p_4099->g_1197[i].f0", print_hash_value);

    }
    transparent_crc(p_4099->g_1210.x, "p_4099->g_1210.x", print_hash_value);
    transparent_crc(p_4099->g_1210.y, "p_4099->g_1210.y", print_hash_value);
    transparent_crc(p_4099->g_1236.x, "p_4099->g_1236.x", print_hash_value);
    transparent_crc(p_4099->g_1236.y, "p_4099->g_1236.y", print_hash_value);
    transparent_crc(p_4099->g_1236.z, "p_4099->g_1236.z", print_hash_value);
    transparent_crc(p_4099->g_1236.w, "p_4099->g_1236.w", print_hash_value);
    transparent_crc(p_4099->g_1267.x, "p_4099->g_1267.x", print_hash_value);
    transparent_crc(p_4099->g_1267.y, "p_4099->g_1267.y", print_hash_value);
    transparent_crc(p_4099->g_1267.z, "p_4099->g_1267.z", print_hash_value);
    transparent_crc(p_4099->g_1368.x, "p_4099->g_1368.x", print_hash_value);
    transparent_crc(p_4099->g_1368.y, "p_4099->g_1368.y", print_hash_value);
    transparent_crc(p_4099->g_1425.x, "p_4099->g_1425.x", print_hash_value);
    transparent_crc(p_4099->g_1425.y, "p_4099->g_1425.y", print_hash_value);
    transparent_crc(p_4099->g_1425.z, "p_4099->g_1425.z", print_hash_value);
    transparent_crc(p_4099->g_1473.x, "p_4099->g_1473.x", print_hash_value);
    transparent_crc(p_4099->g_1473.y, "p_4099->g_1473.y", print_hash_value);
    transparent_crc(p_4099->g_1473.z, "p_4099->g_1473.z", print_hash_value);
    transparent_crc(p_4099->g_1473.w, "p_4099->g_1473.w", print_hash_value);
    transparent_crc(p_4099->g_1491, "p_4099->g_1491", print_hash_value);
    transparent_crc(p_4099->g_1528.x, "p_4099->g_1528.x", print_hash_value);
    transparent_crc(p_4099->g_1528.y, "p_4099->g_1528.y", print_hash_value);
    transparent_crc(p_4099->g_1528.z, "p_4099->g_1528.z", print_hash_value);
    transparent_crc(p_4099->g_1556.x, "p_4099->g_1556.x", print_hash_value);
    transparent_crc(p_4099->g_1560.x, "p_4099->g_1560.x", print_hash_value);
    transparent_crc(p_4099->g_1576.x, "p_4099->g_1576.x", print_hash_value);
    transparent_crc(p_4099->g_1576.y, "p_4099->g_1576.y", print_hash_value);
    transparent_crc(p_4099->g_1576.z, "p_4099->g_1576.z", print_hash_value);
    transparent_crc(p_4099->g_1576.w, "p_4099->g_1576.w", print_hash_value);
    transparent_crc(p_4099->g_1644.x, "p_4099->g_1644.x", print_hash_value);
    transparent_crc(p_4099->g_1675.x, "p_4099->g_1675.x", print_hash_value);
    transparent_crc(p_4099->g_1675.y, "p_4099->g_1675.y", print_hash_value);
    transparent_crc(p_4099->g_1677.x, "p_4099->g_1677.x", print_hash_value);
    transparent_crc(p_4099->g_1677.y, "p_4099->g_1677.y", print_hash_value);
    transparent_crc(p_4099->g_1725.x, "p_4099->g_1725.x", print_hash_value);
    transparent_crc(p_4099->g_1725.y, "p_4099->g_1725.y", print_hash_value);
    transparent_crc(p_4099->g_1725.z, "p_4099->g_1725.z", print_hash_value);
    transparent_crc(p_4099->g_1725.w, "p_4099->g_1725.w", print_hash_value);
    transparent_crc(p_4099->g_1813.x, "p_4099->g_1813.x", print_hash_value);
    transparent_crc(p_4099->g_1813.y, "p_4099->g_1813.y", print_hash_value);
    transparent_crc(p_4099->g_1813.z, "p_4099->g_1813.z", print_hash_value);
    transparent_crc(p_4099->g_1813.w, "p_4099->g_1813.w", print_hash_value);
    transparent_crc(p_4099->g_1862.x, "p_4099->g_1862.x", print_hash_value);
    transparent_crc(p_4099->g_1917.x, "p_4099->g_1917.x", print_hash_value);
    transparent_crc(p_4099->g_1917.y, "p_4099->g_1917.y", print_hash_value);
    transparent_crc(p_4099->g_1917.z, "p_4099->g_1917.z", print_hash_value);
    transparent_crc(p_4099->g_1953.x, "p_4099->g_1953.x", print_hash_value);
    transparent_crc(p_4099->g_1953.y, "p_4099->g_1953.y", print_hash_value);
    transparent_crc(p_4099->g_1953.z, "p_4099->g_1953.z", print_hash_value);
    transparent_crc(p_4099->g_1953.w, "p_4099->g_1953.w", print_hash_value);
    transparent_crc(p_4099->g_1954.x, "p_4099->g_1954.x", print_hash_value);
    transparent_crc(p_4099->g_1998.x, "p_4099->g_1998.x", print_hash_value);
    transparent_crc(p_4099->g_1998.y, "p_4099->g_1998.y", print_hash_value);
    transparent_crc(p_4099->g_2024.x, "p_4099->g_2024.x", print_hash_value);
    transparent_crc(p_4099->g_2024.y, "p_4099->g_2024.y", print_hash_value);
    transparent_crc(p_4099->g_2024.z, "p_4099->g_2024.z", print_hash_value);
    transparent_crc(p_4099->g_2056, "p_4099->g_2056", print_hash_value);
    transparent_crc(p_4099->g_2069.x, "p_4099->g_2069.x", print_hash_value);
    transparent_crc(p_4099->g_2069.y, "p_4099->g_2069.y", print_hash_value);
    transparent_crc(p_4099->g_2069.z, "p_4099->g_2069.z", print_hash_value);
    transparent_crc(p_4099->g_2069.w, "p_4099->g_2069.w", print_hash_value);
    transparent_crc(p_4099->g_2139.x, "p_4099->g_2139.x", print_hash_value);
    transparent_crc(p_4099->g_2167.x, "p_4099->g_2167.x", print_hash_value);
    transparent_crc(p_4099->g_2167.y, "p_4099->g_2167.y", print_hash_value);
    transparent_crc(p_4099->g_2198.x, "p_4099->g_2198.x", print_hash_value);
    transparent_crc(p_4099->g_2199.x, "p_4099->g_2199.x", print_hash_value);
    transparent_crc(p_4099->g_2199.y, "p_4099->g_2199.y", print_hash_value);
    transparent_crc(p_4099->g_2199.z, "p_4099->g_2199.z", print_hash_value);
    transparent_crc(p_4099->g_2199.w, "p_4099->g_2199.w", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_4099->g_2214[i], "p_4099->g_2214[i]", print_hash_value);

    }
    transparent_crc(p_4099->g_2230.x, "p_4099->g_2230.x", print_hash_value);
    transparent_crc(p_4099->g_2243.x, "p_4099->g_2243.x", print_hash_value);
    transparent_crc(p_4099->g_2243.y, "p_4099->g_2243.y", print_hash_value);
    transparent_crc(p_4099->g_2243.z, "p_4099->g_2243.z", print_hash_value);
    transparent_crc(p_4099->g_2320.x, "p_4099->g_2320.x", print_hash_value);
    transparent_crc(p_4099->g_2324.x, "p_4099->g_2324.x", print_hash_value);
    transparent_crc(p_4099->g_2324.y, "p_4099->g_2324.y", print_hash_value);
    transparent_crc(p_4099->g_2324.z, "p_4099->g_2324.z", print_hash_value);
    transparent_crc(p_4099->g_2422, "p_4099->g_2422", print_hash_value);
    transparent_crc(p_4099->g_2478.x, "p_4099->g_2478.x", print_hash_value);
    transparent_crc(p_4099->g_2499.x, "p_4099->g_2499.x", print_hash_value);
    transparent_crc(p_4099->g_2500.x, "p_4099->g_2500.x", print_hash_value);
    transparent_crc(p_4099->g_2500.y, "p_4099->g_2500.y", print_hash_value);
    transparent_crc(p_4099->g_2501.x, "p_4099->g_2501.x", print_hash_value);
    transparent_crc(p_4099->g_2501.y, "p_4099->g_2501.y", print_hash_value);
    transparent_crc(p_4099->g_2501.z, "p_4099->g_2501.z", print_hash_value);
    transparent_crc(p_4099->g_2501.w, "p_4099->g_2501.w", print_hash_value);
    transparent_crc(p_4099->g_2515.x, "p_4099->g_2515.x", print_hash_value);
    transparent_crc(p_4099->g_2515.y, "p_4099->g_2515.y", print_hash_value);
    transparent_crc(p_4099->g_2519.x, "p_4099->g_2519.x", print_hash_value);
    transparent_crc(p_4099->g_2519.y, "p_4099->g_2519.y", print_hash_value);
    transparent_crc(p_4099->g_2519.z, "p_4099->g_2519.z", print_hash_value);
    transparent_crc(p_4099->g_2519.w, "p_4099->g_2519.w", print_hash_value);
    transparent_crc(p_4099->g_2536.x, "p_4099->g_2536.x", print_hash_value);
    transparent_crc(p_4099->g_2536.y, "p_4099->g_2536.y", print_hash_value);
    transparent_crc(p_4099->g_2536.z, "p_4099->g_2536.z", print_hash_value);
    transparent_crc(p_4099->g_2536.w, "p_4099->g_2536.w", print_hash_value);
    transparent_crc(p_4099->g_2571.x, "p_4099->g_2571.x", print_hash_value);
    transparent_crc(p_4099->g_2571.y, "p_4099->g_2571.y", print_hash_value);
    transparent_crc(p_4099->g_2592, "p_4099->g_2592", print_hash_value);
    transparent_crc(p_4099->g_2676.x, "p_4099->g_2676.x", print_hash_value);
    transparent_crc(p_4099->g_2676.y, "p_4099->g_2676.y", print_hash_value);
    transparent_crc(p_4099->g_2676.z, "p_4099->g_2676.z", print_hash_value);
    transparent_crc(p_4099->g_2676.w, "p_4099->g_2676.w", print_hash_value);
    transparent_crc(p_4099->g_2683.x, "p_4099->g_2683.x", print_hash_value);
    transparent_crc(p_4099->g_2685.x, "p_4099->g_2685.x", print_hash_value);
    transparent_crc(p_4099->g_2736.x, "p_4099->g_2736.x", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_4099->g_2755[i][j][k], "p_4099->g_2755[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_4099->g_2765.x, "p_4099->g_2765.x", print_hash_value);
    transparent_crc(p_4099->g_2765.y, "p_4099->g_2765.y", print_hash_value);
    transparent_crc(p_4099->g_2779.x, "p_4099->g_2779.x", print_hash_value);
    transparent_crc(p_4099->g_2821.x, "p_4099->g_2821.x", print_hash_value);
    transparent_crc(p_4099->g_2829.x, "p_4099->g_2829.x", print_hash_value);
    transparent_crc(p_4099->g_2829.y, "p_4099->g_2829.y", print_hash_value);
    transparent_crc(p_4099->g_2829.z, "p_4099->g_2829.z", print_hash_value);
    transparent_crc(p_4099->g_2833, "p_4099->g_2833", print_hash_value);
    transparent_crc(p_4099->g_3033.x, "p_4099->g_3033.x", print_hash_value);
    transparent_crc(p_4099->g_3033.y, "p_4099->g_3033.y", print_hash_value);
    transparent_crc(p_4099->g_3093.x, "p_4099->g_3093.x", print_hash_value);
    transparent_crc(p_4099->g_3093.y, "p_4099->g_3093.y", print_hash_value);
    transparent_crc(p_4099->g_3093.z, "p_4099->g_3093.z", print_hash_value);
    transparent_crc(p_4099->g_3141.x, "p_4099->g_3141.x", print_hash_value);
    transparent_crc(p_4099->g_3141.y, "p_4099->g_3141.y", print_hash_value);
    transparent_crc(p_4099->g_3141.z, "p_4099->g_3141.z", print_hash_value);
    transparent_crc(p_4099->g_3145.x, "p_4099->g_3145.x", print_hash_value);
    transparent_crc(p_4099->g_3146.x, "p_4099->g_3146.x", print_hash_value);
    transparent_crc(p_4099->g_3147.x, "p_4099->g_3147.x", print_hash_value);
    transparent_crc(p_4099->g_3147.y, "p_4099->g_3147.y", print_hash_value);
    transparent_crc(p_4099->g_3183.x, "p_4099->g_3183.x", print_hash_value);
    transparent_crc(p_4099->g_3183.y, "p_4099->g_3183.y", print_hash_value);
    transparent_crc(p_4099->g_3183.z, "p_4099->g_3183.z", print_hash_value);
    transparent_crc(p_4099->g_3188.x, "p_4099->g_3188.x", print_hash_value);
    transparent_crc(p_4099->g_3188.y, "p_4099->g_3188.y", print_hash_value);
    transparent_crc(p_4099->g_3188.z, "p_4099->g_3188.z", print_hash_value);
    transparent_crc(p_4099->g_3188.w, "p_4099->g_3188.w", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        transparent_crc(p_4099->g_3194[i], "p_4099->g_3194[i]", print_hash_value);

    }
    transparent_crc(p_4099->g_3228.x, "p_4099->g_3228.x", print_hash_value);
    transparent_crc(p_4099->g_3228.y, "p_4099->g_3228.y", print_hash_value);
    transparent_crc(p_4099->g_3228.z, "p_4099->g_3228.z", print_hash_value);
    transparent_crc(p_4099->g_3228.w, "p_4099->g_3228.w", print_hash_value);
    transparent_crc(p_4099->g_3248.x, "p_4099->g_3248.x", print_hash_value);
    transparent_crc(p_4099->g_3248.y, "p_4099->g_3248.y", print_hash_value);
    transparent_crc(p_4099->g_3288.x, "p_4099->g_3288.x", print_hash_value);
    transparent_crc(p_4099->g_3313.x, "p_4099->g_3313.x", print_hash_value);
    transparent_crc(p_4099->g_3313.y, "p_4099->g_3313.y", print_hash_value);
    transparent_crc(p_4099->g_3313.z, "p_4099->g_3313.z", print_hash_value);
    transparent_crc(p_4099->g_3325.x, "p_4099->g_3325.x", print_hash_value);
    transparent_crc(p_4099->g_3343, "p_4099->g_3343", print_hash_value);
    transparent_crc(p_4099->g_3455, "p_4099->g_3455", print_hash_value);
    transparent_crc(p_4099->g_3498.x, "p_4099->g_3498.x", print_hash_value);
    transparent_crc(p_4099->g_3498.y, "p_4099->g_3498.y", print_hash_value);
    transparent_crc(p_4099->g_3499.x, "p_4099->g_3499.x", print_hash_value);
    transparent_crc(p_4099->g_3499.y, "p_4099->g_3499.y", print_hash_value);
    transparent_crc(p_4099->g_3501.x, "p_4099->g_3501.x", print_hash_value);
    transparent_crc(p_4099->g_3501.y, "p_4099->g_3501.y", print_hash_value);
    transparent_crc(p_4099->g_3501.z, "p_4099->g_3501.z", print_hash_value);
    transparent_crc(p_4099->g_3501.w, "p_4099->g_3501.w", print_hash_value);
    transparent_crc(p_4099->g_3528.x, "p_4099->g_3528.x", print_hash_value);
    transparent_crc(p_4099->g_3528.y, "p_4099->g_3528.y", print_hash_value);
    transparent_crc(p_4099->g_3529.x, "p_4099->g_3529.x", print_hash_value);
    transparent_crc(p_4099->g_3533.x, "p_4099->g_3533.x", print_hash_value);
    transparent_crc(p_4099->g_3533.y, "p_4099->g_3533.y", print_hash_value);
    transparent_crc(p_4099->g_3534.x, "p_4099->g_3534.x", print_hash_value);
    transparent_crc(p_4099->g_3534.y, "p_4099->g_3534.y", print_hash_value);
    transparent_crc(p_4099->g_3534.z, "p_4099->g_3534.z", print_hash_value);
    transparent_crc(p_4099->g_3534.w, "p_4099->g_3534.w", print_hash_value);
    transparent_crc(p_4099->g_3558, "p_4099->g_3558", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        transparent_crc(p_4099->g_3560[i], "p_4099->g_3560[i]", print_hash_value);

    }
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_4099->g_3570[i], "p_4099->g_3570[i]", print_hash_value);

    }
    transparent_crc(p_4099->g_3616.x, "p_4099->g_3616.x", print_hash_value);
    transparent_crc(p_4099->g_3654.x, "p_4099->g_3654.x", print_hash_value);
    transparent_crc(p_4099->g_3722.x, "p_4099->g_3722.x", print_hash_value);
    transparent_crc(p_4099->g_3722.y, "p_4099->g_3722.y", print_hash_value);
    transparent_crc(p_4099->g_3722.z, "p_4099->g_3722.z", print_hash_value);
    transparent_crc(p_4099->g_3722.w, "p_4099->g_3722.w", print_hash_value);
    transparent_crc(p_4099->g_3724.x, "p_4099->g_3724.x", print_hash_value);
    transparent_crc(p_4099->g_3724.y, "p_4099->g_3724.y", print_hash_value);
    transparent_crc(p_4099->g_3725.x, "p_4099->g_3725.x", print_hash_value);
    transparent_crc(p_4099->g_3725.y, "p_4099->g_3725.y", print_hash_value);
    transparent_crc(p_4099->g_3725.z, "p_4099->g_3725.z", print_hash_value);
    transparent_crc(p_4099->g_3725.w, "p_4099->g_3725.w", print_hash_value);
    transparent_crc(p_4099->g_3783.x, "p_4099->g_3783.x", print_hash_value);
    transparent_crc(p_4099->g_3783.y, "p_4099->g_3783.y", print_hash_value);
    transparent_crc(p_4099->g_3783.z, "p_4099->g_3783.z", print_hash_value);
    transparent_crc(p_4099->g_3783.w, "p_4099->g_3783.w", print_hash_value);
    transparent_crc(p_4099->g_3825.x, "p_4099->g_3825.x", print_hash_value);
    transparent_crc(p_4099->g_3825.y, "p_4099->g_3825.y", print_hash_value);
    transparent_crc(p_4099->g_3874.x, "p_4099->g_3874.x", print_hash_value);
    transparent_crc(p_4099->g_3874.y, "p_4099->g_3874.y", print_hash_value);
    transparent_crc(p_4099->g_3874.z, "p_4099->g_3874.z", print_hash_value);
    transparent_crc(p_4099->g_3874.w, "p_4099->g_3874.w", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(p_4099->g_3891[i], "p_4099->g_3891[i]", print_hash_value);

    }
    transparent_crc(p_4099->g_3903, "p_4099->g_3903", print_hash_value);
    transparent_crc(p_4099->g_3914.x, "p_4099->g_3914.x", print_hash_value);
    transparent_crc(p_4099->g_3914.y, "p_4099->g_3914.y", print_hash_value);
    transparent_crc(p_4099->g_3914.z, "p_4099->g_3914.z", print_hash_value);
    transparent_crc(p_4099->g_3914.w, "p_4099->g_3914.w", print_hash_value);
    transparent_crc(p_4099->g_3920.x, "p_4099->g_3920.x", print_hash_value);
    transparent_crc(p_4099->g_3921, "p_4099->g_3921", print_hash_value);
    transparent_crc(p_4099->g_3970.x, "p_4099->g_3970.x", print_hash_value);
    transparent_crc(p_4099->g_3970.y, "p_4099->g_3970.y", print_hash_value);
    transparent_crc(p_4099->g_3970.z, "p_4099->g_3970.z", print_hash_value);
    transparent_crc(p_4099->g_3981.x, "p_4099->g_3981.x", print_hash_value);
    transparent_crc(p_4099->g_3981.y, "p_4099->g_3981.y", print_hash_value);
    transparent_crc(p_4099->g_3981.z, "p_4099->g_3981.z", print_hash_value);
    transparent_crc(p_4099->g_3986.x, "p_4099->g_3986.x", print_hash_value);
    transparent_crc(p_4099->g_3986.y, "p_4099->g_3986.y", print_hash_value);
    transparent_crc(p_4099->g_3986.z, "p_4099->g_3986.z", print_hash_value);
    transparent_crc(p_4099->g_4008.x, "p_4099->g_4008.x", print_hash_value);
    transparent_crc(p_4099->g_4008.y, "p_4099->g_4008.y", print_hash_value);
    transparent_crc(p_4099->g_4008.z, "p_4099->g_4008.z", print_hash_value);
    transparent_crc(p_4099->g_4008.w, "p_4099->g_4008.w", print_hash_value);
    transparent_crc(p_4099->g_4095, "p_4099->g_4095", print_hash_value);
    transparent_crc(p_4099->g_4096, "p_4099->g_4096", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

