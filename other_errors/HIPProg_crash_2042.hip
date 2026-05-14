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
// Seed: 3494195624

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t  f0;
   int32_t  f1;
   uint8_t  f2;
};

union U1 {
   int32_t  f0;
   int8_t  f1;
};

// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ uint32_t hip_const_1;
__constant__ uint64_t hip_const_2;
__constant__ int64_t hip_const_3;
__constant__ union U0 hip_const_4;
__constant__ union U1 hip_const_5;
__constant__ int16_t hip_const_6;
__constant__ int8_t hip_const_7;
__constant__ uint8_t hip_const_8;
__constant__ uint8_t hip_const_9;
__constant__ int32_t hip_const_10;
__constant__ int32_t hip_const_11[3];
__constant__ uint32_t hip_const_12;
__constant__ union U0 hip_const_13;
__constant__ uint32_t hip_const_14;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        uint32_t host_hip_const_1 = 0x108F8256L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint64_t host_hip_const_2 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        int64_t host_hip_const_3 = 0xEA6801FC3EEE2FDELL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        union U0 host_hip_const_4 = {1L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        union U1 host_hip_const_5 = {1L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        int16_t host_hip_const_6 = (-1L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        int8_t host_hip_const_7 = 0x4BL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        uint8_t host_hip_const_8 = 0UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        uint8_t host_hip_const_9 = 255UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        int32_t host_hip_const_10 = 1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
        int32_t host_hip_const_11[3] = {0x31D26EC1L, 0x31D26EC1L, 0x31D26EC1L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_11, &host_hip_const_11, sizeof(host_hip_const_11)));
        uint32_t host_hip_const_12 = 0xE96B779CL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_12, &host_hip_const_12, sizeof(host_hip_const_12)));
        union U0 host_hip_const_13 = {0x40L};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_13, &host_hip_const_13, sizeof(host_hip_const_13)));
        uint32_t host_hip_const_14 = 1UL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_14, &host_hip_const_14, sizeof(host_hip_const_14)));
}

struct S2 {
    int32_t g_17;
    uint8_t g_81;
    int32_t *g_85;
    int64_t g_90;
    ulong4 g_105;
    uint16_t g_109;
    uchar2 g_128;
    ulong3 g_134;
    int32_t *g_140;
    int4 g_154;
    uint32_t g_166;
    uint32_t g_237;
    union U1 *g_241;
    union U1 **g_240;
    union U0 ****g_324;
    int16_t g_325;
    int64_t *g_334[10][3];
    int64_t **g_333;
    union U1 *g_377;
    uint2 g_384;
    int64_t g_404;
    long2 g_439;
    int16_t g_443;
    uint64_t g_448;
    char3 g_467;
    union U1 g_476[3][3];
    union U0 ****g_527;
    uint16_t g_531;
    ulong4 g_549;
    int1 g_554;
    int1 g_564;
    uint4 g_567;
    uint16_t g_568[5];
    int64_t ***g_575[5][2];
    uint16_t g_583;
    ushort1 g_590;
    uint3 g_635;
    char2 g_643;
    uint1 g_652;
    int3 g_664;
    uint8_t *g_666;
    ushort4 g_682;
    int16_t g_688;
    int8_t g_754;
    int2 g_776;
    ulong2 g_781;
    uchar2 g_794;
    int1 g_796;
    char1 g_816;
    short3 g_845;
    short1 g_860;
    int8_t ***g_875;
    int8_t g_878;
    ushort4 g_888;
    short2 g_941;
    int64_t g_959;
    int32_t *g_1012[5][10];
    int32_t **g_1011[3][5][4];
    int16_t *g_1025;
    int16_t **g_1024;
    int16_t ***g_1023;
    int32_t ***g_1059;
    int32_t g_1078;
    int3 g_1088;
    uint3 g_1127;
    uint3 g_1128;
    char3 g_1145;
    uint1 g_1197;
    long1 g_1257;
    uint64_t **g_1267;
    uint3 g_1270;
    int3 g_1286;
    int64_t ****g_1307;
    ulong1 g_1317;
    long3 g_1370;
    int64_t ***g_1376;
    uint16_t *g_1385;
    ushort4 g_1401;
    uint32_t g_1405;
    int4 g_1430;
    int4 g_1441;
    ulong3 g_1463;
    uint8_t g_1483[8][8];
    uint1 g_1484;
    int64_t g_1485;
    int2 g_1496;
    int32_t ****g_1506;
    int32_t g_1533;
    uchar2 g_1543;
    uchar4 g_1544;
    uchar2 g_1546;
    uchar4 g_1584;
    long2 g_1589;
    short4 g_1592;
    int4 g_1604;
    int4 g_1612;
    int1 g_1615;
    int1 g_1616;
    int3 g_1617;
    union U1 ***g_1626;
    union U1 ****g_1625[9][2];
    ulong3 g_1642;
    int8_t ****g_1678;
    char1 g_1698;
    char3 g_1699;
    uint16_t g_1724;
    uint1 g_1752;
    uint2 g_1755;
    char1 g_1796;
    int2 g_1800;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S2 * p_1812);
__device__ int8_t  func_9(int32_t * p_10, uint8_t  p_11, int32_t * p_12, int32_t * p_13, struct S2 * p_1812);
__device__ uint8_t * func_20(uint8_t * p_21, int16_t  p_22, struct S2 * p_1812);
__device__ int16_t  func_27(int32_t * p_28, int32_t  p_29, struct S2 * p_1812);
__device__ int32_t * func_30(int32_t * p_31, uint8_t  p_32, struct S2 * p_1812);
__device__ int32_t * func_33(int32_t  p_34, uint32_t  p_35, uint8_t * p_36, union U1  p_37, struct S2 * p_1812);
__device__ int32_t  func_38(union U1  p_39, uint32_t  p_40, struct S2 * p_1812);
__device__ union U1  func_41(int64_t  p_42, uint8_t * p_43, uint8_t * p_44, uint8_t * p_45, uint8_t * p_46, struct S2 * p_1812);
__device__ uint8_t  func_50(int32_t * p_51, int32_t  p_52, int32_t  p_53, uint8_t * p_54, struct S2 * p_1812);
__device__ int32_t * func_55(uint8_t * p_56, uint32_t  p_57, int64_t  p_58, int8_t  p_59, union U1  p_60, struct S2 * p_1812);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_10 hip_const_8 p_1812->g_241 hip_const_5 p_1812->g_105 p_1812->g_443 p_1812->g_439 p_1812->g_467 p_1812->g_81 hip_const_3 p_1812->g_448 p_1812->g_527 p_1812->g_154 p_1812->g_531 hip_const_7 p_1812->g_384 hip_const_11 hip_const_1 p_1812->g_404 p_1812->g_237 p_1812->g_590 p_1812->g_583 hip_const_2 p_1812->g_140 p_1812->g_549 p_1812->g_635 p_1812->g_643 p_1812->g_652 p_1812->g_664 p_1812->g_666 p_1812->g_568 p_1812->g_567 p_1812->g_476.f0 p_1812->g_682 p_1812->g_166 p_1812->g_90 hip_const_9 p_1812->g_688 p_1812->g_776 p_1812->g_781 p_1812->g_794 p_1812->g_796 p_1812->g_109 hip_const_12 p_1812->g_816 p_1812->g_845 p_1812->g_860 hip_const_14 p_1812->g_875 p_1812->g_325 p_1812->g_888 p_1812->g_128 p_1812->g_240 p_1812->g_554 p_1812->g_564 p_1812->g_941 hip_const_6 p_1812->g_754 p_1812->g_959 hip_const_4 p_1812->g_85 p_1812->g_878 p_1812->g_1011 p_1812->g_1023 p_1812->g_1127 p_1812->g_1128 p_1812->g_1145 p_1812->g_1197 p_1812->g_377 p_1812->g_1257 p_1812->g_1267 p_1812->g_1270 p_1812->g_1286 p_1812->g_1317 p_1812->g_1078 p_1812->g_1370 p_1812->g_1401 p_1812->g_1405 p_1812->g_1430 p_1812->g_1441 p_1812->g_334 p_1812->g_1385 p_1812->g_1463 p_1812->g_1483 p_1812->g_1484 p_1812->g_1485 p_1812->g_1533 p_1812->g_1546 p_1812->g_134 p_1812->g_1604 p_1812->g_1592 p_1812->g_1698 p_1812->g_1699 p_1812->g_1724 p_1812->g_1506 p_1812->g_1796 p_1812->g_1800 p_1812->g_1543
 * writes: p_1812->g_17 p_1812->g_154 p_1812->g_476 p_1812->g_443 p_1812->g_324 p_1812->g_531 p_1812->g_140 p_1812->g_583 p_1812->g_325 p_1812->g_90 p_1812->g_568 p_1812->g_166 p_1812->g_448 p_1812->g_688 p_1812->g_567 p_1812->g_109 p_1812->g_564 p_1812->g_796 p_1812->g_754 p_1812->g_554 p_1812->g_404 p_1812->g_377 p_1812->g_845 p_1812->g_575 p_1812->g_682 p_1812->g_959 p_1812->g_81 p_1812->g_85 p_1812->g_635 p_1812->g_664 p_1812->g_128 p_1812->g_1023 p_1812->g_1059 p_1812->g_860 p_1812->g_776 p_1812->g_105 p_1812->g_1078 p_1812->g_888 p_1812->g_941 p_1812->g_1307 p_1812->g_1286 p_1812->g_1376 p_1812->g_1128 p_1812->g_1385 p_1812->g_1270 p_1812->g_1483 p_1812->g_1441 p_1812->g_1405 p_1812->g_1430 p_1812->g_1485 p_1812->g_1625 p_1812->g_1463 p_1812->g_1604 p_1812->g_1678 p_1812->g_1024 p_1812->g_875 p_1812->g_1127 p_1812->g_1724 p_1812->g_1317 p_1812->g_467 p_1812->g_1506 p_1812->g_1546
 */
__device__ uint32_t  func_1(struct S2 * p_1812)
{ /* block id: 0 */
    int32_t *l_2[1];
    int8_t l_3 = 0xD5L;
    uint32_t l_4 = 0xF7A0D7C8L;
    uint8_t *l_14 = &hip_const_4.f2;
    uint8_t *l_15 = nullptr;
    uint8_t *l_16[1][2][1];
    uint64_t l_477 = 0x98CBEEF1CF328D8CLL;
    int32_t l_484 = 0xC7C141C0L;
    uint8_t *l_485 = nullptr;
    int16_t *l_683 = &hip_const_6;
    __shared__ uint64_t l_684;
    l_684 = 0x2EE0FD4AAF366293LL;
    int8_t *l_1482 = &hip_const_13.f0;
    __shared__ uint64_t l_1491;
    l_1491 = 0xC96C5F6F209BC0E9LL;
    long3 l_1507 = make_long3(0x28C0338F3A4D6DF4LL, (-1L), 0x28C0338F3A4D6DF4LL);
    uint64_t l_1523[1];
    uchar3 l_1545 = make_uchar3(0xEFL, 0xA9L, 0xEFL);
    int32_t l_1558[7][2][10] = {{{(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}, {(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}}, {{(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}, {(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}}, {{(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}, {(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}}, {{(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}, {(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}}, {{(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}, {(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}}, {{(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}, {(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}}, {{(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}, {(-2L), 0x2C6CA5D1L, 0x12EE6EB2L, 0x696E35D1L, 0xF216351DL, 0x19F9E2F8L, 0xE9EC9EEEL, 0x96359956L, 0xE9EC9EEEL, 0x19F9E2F8L}}};
    int64_t l_1563 = 0xA853D883CE872C2BLL;
    uint16_t l_1593 = 0xD0A4L;
    uint16_t l_1705 = 0x463FL;
    int32_t l_1726 = 0xD1944C7FL;
    ulong4 l_1744 = make_ulong4(0x471A0D31710A10EBLL, 0x62064F02BD885C9BLL, 0x471A0D31710A10EBLL, 0x62064F02BD885C9BLL);
    long3 l_1779 = make_long3(0x78B80959912F1DEDLL, 0L, 0x78B80959912F1DEDLL);
    char4 l_1780 = make_char4(0xD6L, 1L, 0xD6L, 1L);
    union U1 l_1795 = {0xC8052794L};
    int32_t l_1797 = 0xCA2E1764L;
    union U0 l_1805 = {0xE7L};
    int32_t l_1806[4];
    union U0 l_1807 = {4L};
    __shared__ int64_t l_1808;
    l_1808 = 0x5C893E5CB4C4BA70LL;
    int32_t l_1809[8][9] = {{1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}, {1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}, {1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}, {1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}, {1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}, {1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}, {1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}, {1L, (-10L), 0xFA456EE4L, 0xFAF9B8B9L, 0xCFC6C669L, 0xFAF9B8B9L, 0xFA456EE4L, (-10L), 1L}};
    int32_t l_1810[9][2] = {{0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}, {0x54BA2667L, (-4L)}};
    int16_t l_1811 = (-8L);
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_2[i] = &hip_const_11[1];
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 1; k++)
                l_16[i][j][k] = &hip_const_8;
        }
    }
    for (int i = 0; i < 1; i++)
        l_1523[i] = 2UL;
    for (int i = 0; i < 4; i++)
        l_1806[i] = 0x00AD60BFL;
    --l_4;
    p_1812->g_554.x = ((safe_rshift_func_uint16_t_u_u(1UL, ((hip_const_10 == (1UL > (p_1812->g_1483[0][6] ^= func_9(&hip_const_11[1], (p_1812->g_17 = 0x39L), ((safe_div_func_uint32_t_u_u(((l_16[0][1][0] != (l_14 = func_20(l_14, (l_684 ^= (1UL == (safe_lshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u((func_27(func_30(func_33(func_38((p_1812->g_476[2][1] = func_41(hip_const_8, l_16[0][0][0], l_16[0][0][0], l_16[0][1][0], l_16[0][1][0], p_1812)), l_477, p_1812), l_484, l_485, (*p_1812->g_241), p_1812), hip_const_7, p_1812), p_1812->g_567.x, p_1812) == 0x8C47L), p_1812->g_682.y)), p_1812->g_590.x)))), p_1812))) <= p_1812->g_1145.y), p_1812->g_384.y)) , &p_1812->g_1078), &hip_const_11[1], p_1812)))) == p_1812->g_237))) ^ p_1812->g_1484.x);
    if (p_1812->g_1485)
    { /* block id: 617 */
        for (l_3 = 0; (l_3 <= (-2)); l_3 = safe_sub_func_int32_t_s_s(l_3, 8))
        { /* block id: 620 */
            union U1 ***l_1488 = &p_1812->g_240;
            union U1 ****l_1489 = &l_1488;
            (*l_1489) = l_1488;
            if (p_1812->g_635.z)
                continue;
        }
        return hip_const_3;
    }
    else
    { /* block id: 625 */
        int16_t l_1490[9][4] = {{0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}, {0L, 0x4799L, 0xEB7EL, 0x4799L}};
        int32_t l_1524 = 1L;
        // attempting a hip shared for loop
        __shared__ int32_t l_1557[2];
        for (int i = 0; i < 2; i++)
            l_1557[i] = 0x25AAA973L;
        uint32_t l_1569 = 18446744073709551608UL;
        union U1 *l_1581 = nullptr;
        int16_t ***l_1605 = &p_1812->g_1024;
        // attempting a hip shared for loop
        __shared__ uint64_t *l_1618[7][10];
        for (int i = 0; i < 7; i++)
        {
            for (int j = 0; j < 10; j++)
                l_1618[i][j] = &p_1812->g_448;
        }
        uint16_t l_1623 = 3UL;
        int32_t *l_1658[3];
        uint16_t l_1691 = 0x0664L;
        uint32_t l_1693 = 0x91D1BBD9L;
        int16_t **l_1700 = nullptr;
        long4 l_1714 = make_long4(1L, 0xB8B024E0798819A6LL, 1L, 0xB8B024E0798819A6LL);
        uint32_t l_1725 = 4294967295UL;
        uint32_t *l_1745 = nullptr;
        uint32_t *l_1746 = nullptr;
        uint32_t *l_1747 = nullptr;
        uint32_t *l_1748 = &hip_const_1;
        uint32_t *l_1749 = nullptr;
        uint32_t *l_1750 = nullptr;
        uint32_t *l_1751 = &l_1725;
        int8_t *l_1758[1][9] = {{&hip_const_5.f1, nullptr, &hip_const_5.f1, nullptr, &hip_const_5.f1, nullptr, &hip_const_5.f1, nullptr, &hip_const_5.f1}};
        int32_t l_1759[3];
        int32_t l_1760 = 0x0A88A526L;
        int8_t **l_1773 = &l_1758[0][0];
        int8_t ***l_1772 = &l_1773;
        uint64_t l_1776 = 0xBF4FFDC6DA10C653LL;
        int32_t ***l_1777[7][2][3] = {{{&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}, {&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}}, {{&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}, {&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}}, {{&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}, {&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}}, {{&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}, {&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}}, {{&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}, {&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}}, {{&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}, {&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}}, {{&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}, {&p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0], &p_1812->g_1011[0][1][0]}}};
        uint32_t l_1793 = 0UL;
        int i, j, k;
        for (int i = 0; i < 2; i++)
            l_1557[i] = 0x25AAA973L;
        for (int i = 0; i < 3; i++)
            l_1658[i] = &hip_const_10;
        for (int i = 0; i < 3; i++)
            l_1759[i] = 1L;
lbl_1695:
        l_1491 ^= l_1490[1][0];
        for (l_4 = (-1); (l_4 < 42); l_4++)
        { /* block id: 629 */
            uint32_t l_1520 = 7UL;
            uint32_t l_1521 = 0x29EEFAB9L;
            int32_t **l_1522 = &p_1812->g_140;
            int16_t l_1555 = 0L;
            int32_t l_1556 = 2L;
            uint64_t *l_1559 = nullptr;
            uint64_t *l_1560 = &l_1523[0];
            uchar3 l_1570 = make_uchar3(255UL, 0xECL, 255UL);
            ulong3 l_1641 = make_ulong3(0xBEED67AEEF7EA833LL, 18446744073709551610UL, 0xBEED67AEEF7EA833LL);
            int32_t *l_1657 = &p_1812->g_476[2][1].f0;
            int i;
            p_1812->g_796.x = ((make_int4(0xA840C742L, (l_1490[1][0] , (l_1490[5][0] , (((safe_add(make_int4(p_1812->g_1496.y, p_1812->g_1496.y, p_1812->g_1496.y, p_1812->g_1496.y), ((((make_int4(0x4ABD5E7AL, (p_1812->g_1441.z = ((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint64_t_u_u(hip_const_2, (safe_div_func_int8_t_s_s(((safe_lshift_func_int8_t_s_s(0L, 2)) && ((safe_unary_minus_func_int8_t_s(l_1490[0][0])) ^ (p_1812->g_1506 != nullptr))), (((make_long4(l_1507.y, l_1507.y, l_1507.y, l_1507.y).z == make_ulong2(0UL, ((safe_mul_func_uint8_t_u_u(make_uchar2(255UL, 9UL).y, (safe_sub_func_int16_t_s_s((((*l_1522) = (((safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((l_1490[0][3] | (safe_mod_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(p_1812->g_652.x, 0x8F476079L)), (*p_1812->g_1385)))) != l_1520), 7L)), l_1521)) <= p_1812->g_878) , nullptr)) != nullptr), (*p_1812->g_1385))))) , 0x503FD709A5BE624FLL)).x) , 0xEFL) && 0x75L))))) < p_1812->g_128.x), p_1812->g_1441.y)) || 0x4CB64262L)), l_1523[0], p_1812->g_439.y) | make_int4(0xB5E12448L, 0xB5E12448L, 0xB5E12448L, 0xB5E12448L))) ^ make_int4(0x5A5868D3L, 0x5A5868D3L, 0x5A5868D3L, 0x5A5868D3L)))))).x | l_1490[6][0]))), 9L, l_1524) ^ make_int4(0x8B2DDC77L, 0x8B2DDC77L, 0x8B2DDC77L, 0x8B2DDC77L))).z;
            if ((safe_mod_func_int64_t_s_s((((p_1812->g_1441.w = l_1490[1][0]) , l_1490[1][0]) != ((safe_add_func_uint16_t_u_u(((l_1490[8][2] >= (safe_rshift_func_int64_t_s_s(p_1812->g_1533, (safe_mod_func_int32_t_s_s((p_1812->g_1430.w = (((*l_1560) ^= (safe_rshift_func_int64_t_s_s((l_1558[3][1][1] ^= ((l_1557[1] = ((p_1812->g_1405 = ((((safe_unary_minus_func_int64_t_s((safe_sub_func_uint16_t_u_u((l_1524 && (make_short3(0L, l_1524, 0x84C1L).x , ((+make_uchar2(0xE1L, ((safe_div(make_uchar3(p_1812->g_1543.y, p_1812->g_1543.y, p_1812->g_1543.y), ((make_uchar3(p_1812->g_1544.x, p_1812->g_1544.x, p_1812->g_1544.x) | make_uchar3(l_1545.z, l_1545.z, l_1545.z)))))).x).y) > ((~make_uchar3(p_1812->g_1546.y, p_1812->g_1546.y, p_1812->g_1546.y))).x))), (safe_div_func_int32_t_s_s(((safe_mod_func_uint8_t_u_u(p_1812->g_109, ((0xCBL >= (l_1556 = ((safe_div_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((((l_1555 &= 6L) < p_1812->g_1401.x) & p_1812->g_109), 0xA8L)), hip_const_9)) | l_1490[1][0]))) ^ p_1812->g_776.y))) <= l_1490[1][0]), l_1520)))))) || l_1490[1][0]) | 0x6BA3D410L) | p_1812->g_1145.x)) || hip_const_3)) > (-9L))), 17))) == 18446744073709551615UL)), 0x2B24529AL))))) , (*p_1812->g_1385)), 65534UL)) < p_1812->g_1546.y)), l_1524)))
            { /* block id: 641 */
                uint8_t **l_1568 = &l_14;
                uint8_t l_1577 = 0x88L;
                int64_t *l_1578 = nullptr;
                int64_t *l_1579 = &p_1812->g_1485;
                int32_t l_1580 = 0L;
                l_1580 ^= (+(l_1556 = (safe_mul_func_uint64_t_u_u(make_ulong4(0x25D803F3218017EDLL, l_1555, 0x7B999187B1115582LL, l_1563).z, (((*l_1579) = (make_short2((-2L), (safe_add_func_uint16_t_u_u((*p_1812->g_1385), (safe_add_func_int8_t_s_s((((*l_1568) = l_15) != (l_16[0][0][0] = l_485)), p_1812->g_682.z))))).y | (+((l_1569 != make_uchar4(l_1570.z, l_1570.z, l_1570.z, l_1570.z).y) == (safe_div_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((((p_1812->g_1483[0][6] , &p_1812->g_1011[0][0][1]) != nullptr) , l_1557[1]), l_1577)), l_1490[1][0])), 0x81D787BDL)))))) == l_1521)))));
            }
            else
            { /* block id: 647 */
                __shared__ int4 l_1594;
                l_1594 = make_int4((-7L), (-5L), (-7L), (-5L));
                // attempting a hip shared for loop
                __shared__ int8_t *l_1603[6][7][2];
                for (int i = 0; i < 6; i++)
                {
                    for (int j = 0; j < 7; j++)
                    {
                        for (int k = 0; k < 2; k++)
                            l_1603[i][j][k] = nullptr;
                    }
                }
                union U1 ***l_1620 = &p_1812->g_240;
                __shared__ union U1 ****l_1619;
                l_1619 = &l_1620;
                int64_t *l_1635 = nullptr;
                __shared__ uint32_t l_1637;
                l_1637 = 0x09A42EF2L;
                int32_t **l_1643 = &p_1812->g_140;
                __shared__ int32_t *l_1659;
                l_1659 = nullptr;
                __shared__ uint16_t l_1662;
                l_1662 = 0UL;
                __shared__ uint16_t l_1663;
                l_1663 = 0x1DD0L;
                int i, j, k;
                l_1557[1] |= (l_1581 != (*p_1812->g_240));
                l_1556 = ((safe_mod_func_uint8_t_u_u(make_uchar2(p_1812->g_1584.z, p_1812->g_1584.z).y, ((((safe_lshift(make_char1(0x3BL), ((~make_char1(((((safe_mul(make_long1(p_1812->g_1589.x), make_long1(((safe_lshift_func_int16_t_s_u((((make_short2(9L, 0xB5FCL) ^ make_short2(p_1812->g_1592.y, p_1812->g_1592.y))).x && (((make_long4(0x93D41F7205D2F1B5LL, 0x9DDB8CEB771A56FALL, l_1593, l_1594.z).y <= (safe_mul_func_uint64_t_u_u(0UL, (((((safe_sub_func_int32_t_s_s(((p_1812->g_1370.z && (l_1490[1][0] < (safe_mul_func_uint32_t_u_u(((&p_1812->g_1024 == ((safe_sub_func_uint32_t_u_u((l_1490[7][3] > (p_1812->g_643.x = 0xC5L)), make_int4(p_1812->g_1604.z, p_1812->g_1604.z, p_1812->g_1604.z, p_1812->g_1604.z).y)) , l_1605)) & l_1594.y), 4294967291UL)))) < l_1490[6][1]), l_1570.y)) < p_1812->g_1485) <= 0x51CABC60L) != l_1490[6][3]) < l_1594.x)))) == p_1812->g_590.x) != l_1490[7][1])), l_1569)) || (-5L)))))).x , p_1812->g_776.y) && hip_const_7))))))) | make_char1((-10L)))).x)) == l_1594.z);
                for (l_3 = (-28); (l_3 < (-21)); l_3 = safe_add_func_uint16_t_u_u(l_3, 3))
                { /* block id: 653 */
                    __shared__ union U1 ****l_1624;
                    l_1624 = nullptr;
                    __shared__ uint64_t *l_1638;
                    l_1638 = &l_477;
                    int32_t l_1644 = 0x7BEBB3C4L;
                    __shared__ long4 l_1660;
                    l_1660 = make_long4(0x4A9D63395E86CE8CLL, 7L, 0x4A9D63395E86CE8CLL, 7L);
                    uint32_t l_1661 = 6UL;
                    int i;
                    for (l_1569 = 0; (l_1569 >= 50); l_1569 = safe_add_func_uint16_t_u_u(l_1569, 3))
                    { /* block id: 656 */
                        __shared__ union U1 ****l_1622;
                        l_1622 = &l_1620;
                        union U1 *****l_1621 = &l_1622;
                        ulong3 l_1636 = make_ulong3(0xD347F01847663181LL, 0x4EC153261FB26896LL, 0xD347F01847663181LL);
                        int i;
                        p_1812->g_796.x = ((safe_mod(make_int1(p_1812->g_1612.z), ((safe_mod(make_int1(p_1812->g_1615.x), ((make_int1(p_1812->g_1616.x) ^ make_int1(p_1812->g_1617.z))))))))).x;
                        p_1812->g_1604.y |= (l_1618[6][2] == (((((*l_1621) = l_1619) != (p_1812->g_1625[2][1] = (l_1623 , l_1624))) < (((((safe_mul_func_int32_t_s_s((safe_add_func_int16_t_s_s(((safe_rshift_func_int64_t_s_u(((((*p_1812->g_1385) = ((0x72L < (((nullptr != &p_1812->g_109) == (l_1635 == ((p_1812->g_1463.z ^= make_ulong4(l_1636.y, l_1636.y, l_1636.y, l_1636.y).x) , l_1635))) == l_1636.x)) , 0xA663L)) != l_1636.z) != l_1637), 6)) , (-1L)), 1L)), p_1812->g_134.z)) , 0xA27829E5L) , l_1636.x) && 0x75L) >= l_1524)) , l_1638));
                    }
                    l_1556 = (((((safe_lshift_func_int32_t_s_s((p_1812->g_1286.y = make_int4(0x033576A8L, (make_ulong2(l_1641.z, l_1641.z).y > make_ulong3(p_1812->g_1642.y, p_1812->g_1642.y, p_1812->g_1642.y).x), 0x5B4BADE4L, (-2L)).w), 29)) < (nullptr != l_1643)) | ((!l_1644) , (&p_1812->g_1059 == nullptr))) && l_1644) , (safe_sub_func_uint8_t_u_u((((0x6AD0F606L < ((safe_div_func_int32_t_s_s(((safe_sub_func_int8_t_s_s((safe_add_func_int64_t_s_s((l_1662 = (safe_sub_func_int8_t_s_s((safe_div_func_uint64_t_u_u((((((((l_1658[2] = l_1657) != l_1659) | 0xC803L) || l_1660.y) , &l_1593) != nullptr) > l_1644), l_1660.y)), l_1661))), 1L)), l_1644)) || p_1812->g_567.w), l_1663)) , l_1623)) <= l_1660.z) <= hip_const_2), l_1644)));
                }
                for (p_1812->g_531 = 0; (p_1812->g_531 >= 27); p_1812->g_531 = safe_add_func_int32_t_s_s(p_1812->g_531, 2))
                { /* block id: 671 */
                    if (p_1812->g_439.x)
                        break;
                }
            }
        }
        for (l_4 = 0; (l_4 <= 4); l_4 += 1)
        { /* block id: 678 */
            int64_t l_1686 = 0x0E8A6181D4F13811LL;
            int32_t l_1702 = 6L;
            int8_t **l_1704 = nullptr;
            int8_t ***l_1703 = &l_1704;
            int32_t l_1708[10][10][2] = {{{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}, {{0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}, {0x00453421L, (-1L)}}};
            char2 l_1715 = make_char2(0xA4L, 0x31L);
            int i, j, k;
            for (l_1524 = 4; (l_1524 >= 1); l_1524 -= 1)
            { /* block id: 681 */
                int8_t ****l_1679 = &p_1812->g_875;
                int16_t *l_1680 = nullptr;
                int16_t *l_1681 = nullptr;
                __shared__ int16_t *l_1682;
                l_1682 = &hip_const_6;
                int16_t *l_1683 = &p_1812->g_688;
                uint16_t l_1692 = 1UL;
                __shared__ int32_t l_1694;
                l_1694 = 0xF91F847AL;
                int16_t ***l_1701 = &l_1700;
                uint64_t l_1722 = 18446744073709551615UL;
                int i;
                l_1694 = (+((safe_add_func_uint8_t_u_u(p_1812->g_568[l_1524], (l_1557[1] > 0x16L))) | (safe_add_func_uint32_t_u_u(((safe_add_func_uint64_t_u_u((safe_sub_func_int8_t_s_s(p_1812->g_1127.z, (safe_rshift_func_int32_t_s_s((safe_mul_func_uint32_t_u_u((((*l_1683) &= ((p_1812->g_1678 = nullptr) == l_1679)) | (safe_mod_func_uint8_t_u_u((l_1686 != (safe_div_func_uint32_t_u_u(((safe_mod_func_uint32_t_u_u(l_1691, make_int3(p_1812->g_568[l_1524], l_1692, 0x67E69151L).z)) , l_1692), l_1693))), 0x14L))), 0xD320F03FL)), l_1692)))), 0xF063BC762302B895LL)) , p_1812->g_1145.z), (-6L)))));
                if (hip_const_3)
                    goto lbl_1695;
                if ((l_1702 ^= ((safe_sub_func_int32_t_s_s(l_1694, 4294967290UL)) >= (((((((make_char1((-5L)) | make_char1((p_1812->g_1592.w >= (p_1812->g_583 != 0UL))))) ^ make_char1(p_1812->g_1698.x))) ^ make_char1(p_1812->g_1699.y))).x == (((*l_1605) = &l_1681) != ((*l_1701) = l_1700))))))
                { /* block id: 689 */
                    for (l_1491 = 0; (l_1491 <= 0); l_1491 += 1)
                    { /* block id: 692 */
                        (*l_1679) = l_1703;
                    }
                    l_1705++;
                }
                else
                { /* block id: 696 */
                    __shared__ union U1 l_1716;
                    l_1716 = {0L};
                    __shared__ union U0 l_1721;
                    l_1721 = {-1L};
                    uint32_t *l_1723[6][5];
                    uint32_t l_1727 = 1UL;
                    int i, j;
                    for (int i = 0; i < 6; i++)
                    {
                        for (int j = 0; j < 5; j++)
                            l_1723[i][j] = nullptr;
                    }
                    l_1708[4][2][0] |= (l_1702 < p_1812->g_816.x);
                    l_1694 |= (safe_unary_minus_func_int8_t_s((safe_mul_func_int16_t_s_s(((l_1726 = ((((safe_rshift_func_int64_t_s_u(((&p_1812->g_1678 != (((make_long3(l_1714.z, l_1714.z, l_1714.z).z , ((((make_char2(l_1715.x, l_1715.x) ^ make_char2(p_1812->g_568[l_1524], (((*p_1812->g_1385) , l_1716) , ((safe_rshift_func_int8_t_s_s((safe_add_func_int16_t_s_s((l_1708[4][2][0] , (l_1715.x <= (l_1721 , (p_1812->g_1127.x = l_1721.f0)))), ((p_1812->g_1724 ^= (l_1722 == 9UL)) >= p_1812->g_1463.z))), 1)) < l_1623))))) & make_char2((-3L), (-3L)))).x) == p_1812->g_1699.y) , nullptr)) > l_1725), l_1722)) > l_1715.x) , 18446744073709551615UL) | l_1692)) >= l_1524), l_1727))));
                }
                return p_1812->g_816.x;
            }
        }
        if ((l_1760 = ((safe_add_func_int64_t_s_s(((safe_add_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(0xB34DL, (safe_mul_func_int8_t_s_s((l_1759[1] |= (safe_mod_func_int8_t_s_s((l_1557[1] = ((safe_mod_func_uint16_t_u_u((((safe_div_func_int16_t_s_s((safe_rshift_func_uint32_t_u_u(((*l_1751) = (make_ulong1(l_1744.x).x != (p_1812->g_1317.x = p_1812->g_1405))), make_uint2(p_1812->g_1752.x, p_1812->g_1752.x).y)), make_ushort4(((&l_1618[6][9] == nullptr) >= (safe_mul_func_uint64_t_u_u(0x85F3162BED7DDC9ELL, l_1691))), 0xF2E2L, ((nullptr != &p_1812->g_527) && ((make_uint2(0UL, 0xAB82F38EL) ^ make_uint2(p_1812->g_1755.y, p_1812->g_1755.y))).x), 65535UL).x)) , (safe_add_func_int64_t_s_s((l_1557[0] , 0xD100DDAA04891A44LL), p_1812->g_888.x))) , (*p_1812->g_1385)), 65528UL)) >= 0xDF50L)), 0x47L))), l_1691)))), p_1812->g_941.y)) > p_1812->g_1592.w), l_1714.y)) <= l_1714.w)))
        { /* block id: 711 */
            int32_t l_1761 = 0x10A3135DL;
            uint8_t *l_1774 = nullptr;
            int32_t l_1775 = 0xED540D8CL;
            int32_t ***l_1778 = &p_1812->g_1011[1][0][0];
            int64_t *l_1794 = &p_1812->g_959;
            p_1812->g_1441.y = ((((*p_1812->g_1385) >= (*p_1812->g_1385)) <= ((((((((l_1691 < (l_1761 ^= p_1812->g_1699.x)) , (p_1812->g_467.y = make_char2(1L, l_1761).x)) < 0x2AL) , (((safe_sub_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((((((safe_div(((safe_mul(((((make_uint1(((((safe_lshift_func_uint8_t_u_s((p_1812->g_1584.z = (l_1776 = ((l_1775 = ((((l_1772 == (*p_1812->g_1678)) & (func_41(l_1761, &p_1812->g_81, &p_1812->g_81, l_1774, &hip_const_8, p_1812) , p_1812->g_845.z)) | l_1714.z) && (-4L))) ^ l_1761))), l_1761)) >= l_1759[1]) == l_1761) <= l_1557[0])) ^ make_uint1(0x20351FB9L))) | make_uint1(0x971E14D8L))), make_uint1(0x0D815FC9L)))), make_uint1(0x6513680CL)))) | make_uint1(0UL))).x , l_1693), l_1761)), 3L)) , nullptr) == l_1777[2][1][2])) == 0xE78F47B1B324A26ALL) , l_1778) == &p_1812->g_1011[2][2][0]) , 0x40AEC56B80AA6E49LL)) & l_1779.x);
            p_1812->g_664.y = ((((make_short2((l_1725 == (p_1812->g_1752.x = (make_char4(l_1780.x, l_1780.x, l_1780.x, l_1780.x).w , p_1812->g_1127.x))), (-5L)).x | (*p_1812->g_1385)) | (safe_div_func_int8_t_s_s((safe_add_func_int32_t_s_s((safe_div_func_uint8_t_u_u(make_uchar4(0x37L, l_1490[1][0], (make_long1(((safe_lshift_func_int64_t_s_u(((*p_1812->g_377) , ((*l_1794) &= (safe_add_func_int32_t_s_s(l_1760, (safe_mod_func_int8_t_s_s((-4L), make_uchar4((p_1812->g_1584.z = ((l_1775 <= l_1775) , 9UL)), 0UL, 0x0EL, l_1793).y)))))), 23)) | (*p_1812->g_1385))).x & 0x904E389AD594DECALL), 0x46L).y, l_1775)), p_1812->g_1484.x)), 251UL))) , l_1761) || 0UL);
            p_1812->g_564.x = 0L;
        }
        else
        { /* block id: 723 */
            p_1812->g_1506 = p_1812->g_1506;
        }
    }
    p_1812->g_1430.w = ((((((~make_ulong1(0UL))).x || (~0x0D91B7940D64A6FCLL)) , l_1795) , make_char1(p_1812->g_1796.x).x) > (l_1797 , (p_1812->g_1546.y = (l_1810[0][1] = (((((0L | (p_1812->g_1370.x , (((-9L) < (safe_div_func_uint32_t_u_u(((l_1807 = ((((((+((make_int3(p_1812->g_1800.y, p_1812->g_1800.y, p_1812->g_1800.y) ^ make_int3((p_1812->g_776.x && (safe_sub_func_int8_t_s_s((((make_long2((safe_rshift_func_int16_t_s_u(p_1812->g_845.z, 7)), 0xB0E42ED7F33940CBLL) | ((make_long2((l_1805 , 0x7F0B561F3CA156D1LL), 0xC5FD2104C9726D8BLL) | make_long2(0x3CD73EADB57F3FCELL, 0x3CD73EADB57F3FCELL))))).y | 7UL), (-1L)))), 0L, l_1806[3]))).z) & p_1812->g_1370.y) >= p_1812->g_1543.x) , p_1812->g_128.x) , 1L) , l_1807)) , p_1812->g_568[2]), 0x38995AC9L))) != 0x9BL))) , l_1808) ^ p_1812->g_845.z) != l_1809[4][4]) , 0xFAL)))));
    return l_1811;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1812->g_140
 */
__device__ int8_t  func_9(int32_t * p_10, uint8_t  p_11, int32_t * p_12, int32_t * p_13, struct S2 * p_1812)
{ /* block id: 612 */
    int32_t *l_1480 = nullptr;
    int32_t **l_1481 = &p_1812->g_140;
    (*l_1481) = l_1480;
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_1812->g_531 p_1812->g_166 p_1812->g_448 p_1812->g_90 hip_const_9 p_1812->g_140 hip_const_11 p_1812->g_688 p_1812->g_443 p_1812->g_635 p_1812->g_105 p_1812->g_567 p_1812->g_439 p_1812->g_776 p_1812->g_781 p_1812->g_590 p_1812->g_794 p_1812->g_796 p_1812->g_109 hip_const_12 p_1812->g_816 p_1812->g_549 hip_const_1 p_1812->g_241 hip_const_5 p_1812->g_664 p_1812->g_845 p_1812->g_860 hip_const_14 p_1812->g_875 p_1812->g_325 hip_const_3 p_1812->g_888 p_1812->g_128 p_1812->g_240 p_1812->g_554 p_1812->g_564 p_1812->g_941 p_1812->g_568 p_1812->g_682 hip_const_6 p_1812->g_754 p_1812->g_959 p_1812->g_81 hip_const_7 hip_const_4 p_1812->g_85 p_1812->g_878 p_1812->g_1011 p_1812->g_1023 p_1812->g_154 p_1812->g_404 p_1812->g_1127 p_1812->g_1128 p_1812->g_1145 p_1812->g_1197 p_1812->g_643 p_1812->g_377 p_1812->g_1257 p_1812->g_1267 p_1812->g_1270 p_1812->g_1286 p_1812->g_1317 p_1812->g_527 p_1812->g_1078 p_1812->g_1370 p_1812->g_583 p_1812->g_1401 p_1812->g_384 hip_const_2 hip_const_8 p_1812->g_1405 p_1812->g_1430 p_1812->g_1441 p_1812->g_334 p_1812->g_1385 p_1812->g_1463
 * writes: p_1812->g_531 p_1812->g_166 p_1812->g_448 p_1812->g_688 p_1812->g_443 p_1812->g_567 p_1812->g_154 p_1812->g_109 p_1812->g_564 p_1812->g_796 p_1812->g_754 p_1812->g_554 p_1812->g_404 p_1812->g_90 p_1812->g_377 p_1812->g_845 p_1812->g_325 p_1812->g_575 p_1812->g_682 p_1812->g_959 p_1812->g_81 p_1812->g_85 p_1812->g_140 p_1812->g_635 p_1812->g_664 p_1812->g_128 p_1812->g_568 p_1812->g_1023 p_1812->g_1059 p_1812->g_860 p_1812->g_776 p_1812->g_105 p_1812->g_1078 p_1812->g_888 p_1812->g_941 p_1812->g_1307 p_1812->g_324 p_1812->g_1286 p_1812->g_1376 p_1812->g_1128 p_1812->g_1385 p_1812->g_583 p_1812->g_476 p_1812->g_1270
 */
__device__ uint8_t * func_20(uint8_t * p_21, int16_t  p_22, struct S2 * p_1812)
{ /* block id: 231 */
    int16_t l_685[1][2];
    int32_t *l_686 = &hip_const_11[2];
    int32_t *l_687[8] = {&hip_const_11[1], nullptr, &hip_const_11[1], nullptr, &hip_const_11[1], nullptr, &hip_const_11[1], nullptr};
    int16_t l_689 = (-7L);
    // attempting a hip shared for loop
    __shared__ uint16_t l_690[2];
    for (int i = 0; i < 2; i++)
        l_690[i] = 0UL;
    union U0 *l_750 = &hip_const_13;
    union U0 **l_749[1][7][7] = {{{&l_750, &l_750, &l_750, &l_750, &l_750, &l_750, &l_750}, {&l_750, &l_750, &l_750, &l_750, &l_750, &l_750, &l_750}, {&l_750, &l_750, &l_750, &l_750, &l_750, &l_750, &l_750}, {&l_750, &l_750, &l_750, &l_750, &l_750, &l_750, &l_750}, {&l_750, &l_750, &l_750, &l_750, &l_750, &l_750, &l_750}, {&l_750, &l_750, &l_750, &l_750, &l_750, &l_750, &l_750}, {&l_750, &l_750, &l_750, &l_750, &l_750, &l_750, &l_750}}};
    uint32_t l_756 = 0xDB071B00L;
    union U1 l_766 = {0L};
    uint8_t l_774[2][8] = {{0xC0L, 7UL, 0x6DL, 0x6DL, 7UL, 0xC0L, 7UL, 0x6DL}, {0xC0L, 7UL, 0x6DL, 0x6DL, 7UL, 0xC0L, 7UL, 0x6DL}};
    int4 l_795 = make_int4(0x6AB14464L, (-1L), 0x6AB14464L, (-1L));
    __shared__ int16_t l_834;
    l_834 = 0xA21AL;
    union U0 ***l_864 = &l_749[0][2][0];
    union U0 ****l_863 = &l_864;
    uint32_t l_873 = 0x012E74CFL;
    ushort1 l_884 = make_ushort1(0x93F7L);
    ushort2 l_887 = make_ushort2(1UL, 1UL);
    uint16_t l_889 = 65531UL;
    long4 l_890 = make_long4((-3L), 8L, (-3L), 8L);
    int64_t *l_891 = nullptr;
    __shared__ int64_t *l_892;
    l_892 = &p_1812->g_404;
    int64_t *l_893 = &p_1812->g_90;
    union U1 **l_894 = &p_1812->g_377;
    int16_t *l_895[6] = {&p_1812->g_325, nullptr, &p_1812->g_325, nullptr, &p_1812->g_325, nullptr};
    int8_t *l_904 = nullptr;
    int8_t **l_903 = &l_904;
    int8_t ***l_902 = &l_903;
    int4 l_925 = make_int4(0x7D55C06AL, 0x5BA9B9D5L, 0x7D55C06AL, 0x5BA9B9D5L);
    int32_t l_937 = 0xF63B28BBL;
    int32_t ***l_1072 = &p_1812->g_1011[0][4][3];
    uint8_t l_1141 = 0x7FL;
    uint64_t *l_1174 = &hip_const_2;
    int16_t l_1194 = 0xBBE4L;
    __shared__ long1 l_1256;
    l_1256 = make_long1(0L);
    int64_t ****l_1304 = &p_1812->g_575[4][0];
    __shared__ ulong2 l_1364;
    l_1364 = make_ulong2(0xE5DCE7371B1647BBLL, 0x5AEA286A7119A827LL);
    int32_t *l_1404 = &p_1812->g_1078;
    union U0 ****l_1427 = nullptr;
    // attempting a hip shared for loop
    __shared__ uint16_t l_1443[9];
    for (int i = 0; i < 9; i++)
        l_1443[i] = 65535UL;
    int3 l_1455 = make_int3(0x099953C1L, 0L, 0x099953C1L);
    ulong2 l_1464 = make_ulong2(0xAE75A57D76F5F5D6LL, 0xD774C5B67F11FDD2LL);
    ulong2 l_1467 = make_ulong2(0x7ABBC46CB3E191C4LL, 18446744073709551615UL);
    int i, j, k;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
            l_685[i][j] = 5L;
    }
    for (int i = 0; i < 2; i++)
        l_690[i] = 0UL;
lbl_798:
    --l_690[0];
    for (p_1812->g_531 = (-30); (p_1812->g_531 >= 13); p_1812->g_531 = safe_add_func_int32_t_s_s(p_1812->g_531, 1))
    { /* block id: 235 */
        int8_t l_699 = (-9L);
        int32_t l_703 = 0x0D8795D7L;
        __shared__ union U1 l_712;
        l_712 = {-7L};
        uchar2 l_715 = make_uchar2(0xF3L, 1UL);
        __shared__ uint16_t l_720;
        l_720 = 0x081DL;
        union U1 **l_721 = &p_1812->g_241;
        int32_t *l_724[1];
        uint4 l_743 = make_uint4(4294967289UL, 0x11A03F8CL, 4294967289UL, 0x11A03F8CL);
        union U0 l_782 = {0x04L};
        int32_t l_783 = 0xEE4FBC8CL;
        uint64_t *l_784 = nullptr;
        uint64_t *l_785 = nullptr;
        uint64_t *l_786 = nullptr;
        uint64_t *l_787 = &hip_const_2;
        __shared__ uint64_t *l_788;
        l_788 = &p_1812->g_448;
        uint32_t *l_789 = &hip_const_1;
        __shared__ uint32_t *l_790;
        l_790 = nullptr;
        uint32_t *l_791 = &l_756;
        char3 l_805 = make_char3(0x18L, 0x91L, 0x18L);
        char3 l_806 = make_char3(1L, (-3L), 1L);
        int32_t *l_832[7] = {nullptr, &p_1812->g_476[2][1].f0, nullptr, &p_1812->g_476[2][1].f0, nullptr, &p_1812->g_476[2][1].f0, nullptr};
        uint1 l_833 = make_uint1(0xD5B1AB09L);
        int i;
        for (int i = 0; i < 1; i++)
            l_724[i] = &hip_const_13.f1;
        for (p_1812->g_166 = (-6); (p_1812->g_166 == 51); ++p_1812->g_166)
        { /* block id: 238 */
            int32_t l_701 = 0x0A356107L;
            int1 l_702 = make_int1(1L);
            int16_t *l_709[6] = {&p_1812->g_325, &p_1812->g_325, &l_689, &p_1812->g_325, &p_1812->g_325, &l_689};
            __shared__ uchar2 l_716;
            l_716 = make_uchar2(1UL, 1UL);
            union U0 *l_719 = &hip_const_4;
            __shared__ union U0 **l_718;
            l_718 = &l_719;
            union U0 ***l_717 = &l_718;
            int i;
            for (p_1812->g_448 = 0; (p_1812->g_448 >= 31); ++p_1812->g_448)
            { /* block id: 241 */
                __shared__ int16_t l_700;
                l_700 = 2L;
                uint8_t l_704 = 0x77L;
                if (l_699)
                    break;
                ++l_704;
            }
            l_702.x = (((safe_rshift_func_int16_t_s_u((p_22 &= 0x8F29L), 0)) > (safe_mul_func_int32_t_s_s((((l_703 = ((l_712 , (safe_mul_func_uint8_t_u_u(255UL, ((make_uchar1(l_715.y) ^ make_uchar1(l_716.y))).x))) == make_char3(0x96L, 0xB1L, 1L).x)) , (l_717 != (l_703 , nullptr))) & l_720), ((&p_1812->g_241 != (make_long1(0x86324B56CE2ECD13LL).x , l_721)) > p_1812->g_90)))) ^ hip_const_9);
            if ((*p_1812->g_140))
                continue;
            for (p_1812->g_688 = 0; (p_1812->g_688 == 7); p_1812->g_688 = safe_add_func_int16_t_s_s(p_1812->g_688, 2))
            { /* block id: 251 */
                return &hip_const_8;
            }
        }
        l_724[0] = &hip_const_11[1];
        for (p_1812->g_443 = 0; (p_1812->g_443 > 0); p_1812->g_443++)
        { /* block id: 258 */
            __shared__ uint32_t l_735;
            l_735 = 4294967294UL;
            __shared__ uint64_t *l_738;
            l_738 = nullptr;
            __shared__ uint64_t *l_739;
            l_739 = &hip_const_2;
            uint64_t *l_740 = &p_1812->g_448;
            int64_t l_746 = (-1L);
            int32_t *l_747 = &hip_const_5.f0;
            int32_t *l_748 = &l_712.f0;
            int32_t l_752[6] = {0xB3C7222EL, 0xB3C7222EL, 0x5AD8F5DBL, 0xB3C7222EL, 0xB3C7222EL, 0x5AD8F5DBL};
            int16_t l_755[6][5][3] = {{{0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}}, {{0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}}, {{0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}}, {{0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}}, {{0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}}, {{0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}, {0x322AL, 0x7889L, 1L}}};
            __shared__ union U1 l_765;
            l_765 = {0L};
            __shared__ int32_t *l_767;
            l_767 = &hip_const_11[1];
            union U0 l_770 = {-4L};
            int i, j, k;
            if ((safe_rshift_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(((safe_lshift_func_uint32_t_u_s(p_22, (((!l_735) <= 0x61L) && ((0xE2126235L == (safe_mul_func_uint32_t_u_u(hip_const_11[1], (p_1812->g_635.z , make_uint3(0xEF901543L, 4294967295UL, 0x3C03EF66L).y)))) != (--(*l_740)))))) != p_22), make_uint4(l_743.y, l_743.y, l_743.y, l_743.y).w)), (safe_mul_func_int64_t_s_s((*l_686), ((((*l_748) = l_746) , l_749[0][2][0]) != nullptr))))) , (*l_686)), 0)))
            { /* block id: 261 */
                int32_t l_751 = 0xFFD8FC73L;
                int32_t l_753[4][1][1] = {{{(-1L)}}, {{(-1L)}}, {{(-1L)}}, {{(-1L)}}};
                int i, j, k;
                --l_756;
            }
            else
            { /* block id: 263 */
                __shared__ uint32_t *l_759;
                l_759 = nullptr;
                uint32_t *l_760 = &hip_const_1;
                uint32_t *l_761 = nullptr;
                uint32_t *l_762[9] = {nullptr, &hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1, nullptr, &hip_const_1, nullptr};
                union U1 **l_771 = nullptr;
                int32_t **l_772 = &l_747;
                int32_t l_773 = (-1L);
                int32_t l_775 = (-1L);
                int i;
                if (p_22)
                    break;
                l_770.f1 = ((((l_752[3] ^= (p_1812->g_567.x ^= p_1812->g_105.z)) | ((safe_div_func_uint16_t_u_u(((((l_766 = l_765) , l_767) != ((safe_div_func_int64_t_s_s((func_41((l_770 , ((((l_721 != l_771) == (p_22 && (l_748 == ((*l_772) = &hip_const_10)))) & p_1812->g_439.y) , 0x3E742D095DAD9569LL)), p_21, p_21, p_21, &p_1812->g_81, p_1812) , p_22), l_773)) , &hip_const_11[1])) > (*l_767)), l_773)) | p_22)) , l_774[1][7]) | l_775);
            }
        }
        if (((make_int1(p_1812->g_776.x).x != (safe_lshift_func_uint64_t_u_u((safe_div_func_int16_t_s_s((((make_ulong4(p_1812->g_781.x, p_1812->g_781.x, p_1812->g_781.x, p_1812->g_781.x).z & (l_782 , p_22)) < l_783) >= ((((make_uchar3(4UL, 0x40L, 0x60L).x , (*l_686)) > ((*l_788) ^= (l_687[5] != nullptr))) >= ((--(*l_791)) == p_22)) | (p_1812->g_590.x >= make_uchar1(p_1812->g_794.y).x))), 1L)), p_1812->g_776.y))) & p_22))
        { /* block id: 274 */
            int8_t l_797[4][3] = {{0xDEL, 0xDEL, 1L}, {0xDEL, 0xDEL, 1L}, {0xDEL, 0xDEL, 1L}, {0xDEL, 0xDEL, 1L}};
            int32_t l_811 = 8L;
            __shared__ uint16_t *l_812;
            l_812 = nullptr;
            uint16_t *l_813 = &p_1812->g_109;
            int32_t l_836 = 0x4A112208L;
            int i, j;
            l_797[0][0] &= ((~((make_int3(l_795.z, l_795.z, l_795.z) ^ make_int3(p_1812->g_796.x, p_1812->g_796.x, p_1812->g_796.x))))).x;
            if (p_1812->g_688)
                goto lbl_798;
            if ((p_1812->g_564.x = (safe_add_func_uint16_t_u_u((p_22 , ((((((safe_rshift_func_uint32_t_u_s((((safe_mod(make_char2(make_char2(l_805.x, l_805.x).x, 0x6CL), make_char2(l_806.z, l_806.z)))).y | (safe_mul_func_uint8_t_u_u(p_1812->g_635.z, ((safe_mul(make_char4(0xEAL, (-1L), 0xC1L, ((make_char4(0xFCL, 0x5FL, (p_22 < (((((p_22 != make_ushort4(7UL, 0UL, 0x64B9L, ((nullptr != &l_782) , ((*l_813)++))).y) == hip_const_12) , 0x6059639C246F9E37LL) != (((make_char1(p_1812->g_816.x).x && ((l_811 = 8UL) & 0x8286L)) < p_22) , p_1812->g_549.w)) ^ p_22)), 0x3BL) ^ make_char4((-9L), (-9L), (-9L), (-9L)))).y), make_char4((-1L), (-1L), (-1L), (-1L))))).x))), 28)) >= p_1812->g_816.x) == 4294967292UL) != 0xA036L) >= p_22) || hip_const_1)), 0x0268L))))
            { /* block id: 280 */
                l_811 = p_22;
                for (p_1812->g_448 = 0; (p_1812->g_448 >= 50); ++p_1812->g_448)
                { /* block id: 284 */
                    return &p_1812->g_81;
                }
            }
            else
            { /* block id: 287 */
                int8_t *l_835 = nullptr;
                __shared__ uint64_t l_837;
                l_837 = 18446744073709551615UL;
                p_1812->g_796.x &= ((safe_mod_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((safe_sub_func_uint64_t_u_u((safe_mod_func_int16_t_s_s(((*p_1812->g_241) , (safe_div_func_uint8_t_u_u(l_811, (safe_div_func_int64_t_s_s((l_766 , ((safe_rshift_func_uint64_t_u_u(((*l_788) = (((nullptr != l_832[5]) > (((*l_791) = make_uint1(l_833.x).x) , 0x70C2814FL)) | 0xD3B3L)), 59)) ^ l_834)), ((l_836 = l_797[0][0]) | l_837)))))), 65533UL)), p_22)))), p_1812->g_664.z)) , 9L);
            }
        }
        else
        { /* block id: 293 */
            int8_t *l_852 = &p_1812->g_754;
            int8_t **l_851 = &l_852;
            __shared__ int8_t ***l_850;
            l_850 = &l_851;
            __shared__ int8_t ***l_854;
            l_854 = &l_851;
            int8_t ****l_853 = &l_854;
            int32_t l_859[7][9] = {{0xF6C6F54AL, 0L, 0x97A7AE6FL, 0xF950CBFDL, 0x1A1277E6L, 0xF950CBFDL, 0x97A7AE6FL, 0L, 0xF6C6F54AL}, {0xF6C6F54AL, 0L, 0x97A7AE6FL, 0xF950CBFDL, 0x1A1277E6L, 0xF950CBFDL, 0x97A7AE6FL, 0L, 0xF6C6F54AL}, {0xF6C6F54AL, 0L, 0x97A7AE6FL, 0xF950CBFDL, 0x1A1277E6L, 0xF950CBFDL, 0x97A7AE6FL, 0L, 0xF6C6F54AL}, {0xF6C6F54AL, 0L, 0x97A7AE6FL, 0xF950CBFDL, 0x1A1277E6L, 0xF950CBFDL, 0x97A7AE6FL, 0L, 0xF6C6F54AL}, {0xF6C6F54AL, 0L, 0x97A7AE6FL, 0xF950CBFDL, 0x1A1277E6L, 0xF950CBFDL, 0x97A7AE6FL, 0L, 0xF6C6F54AL}, {0xF6C6F54AL, 0L, 0x97A7AE6FL, 0xF950CBFDL, 0x1A1277E6L, 0xF950CBFDL, 0x97A7AE6FL, 0L, 0xF6C6F54AL}, {0xF6C6F54AL, 0L, 0x97A7AE6FL, 0xF950CBFDL, 0x1A1277E6L, 0xF950CBFDL, 0x97A7AE6FL, 0L, 0xF6C6F54AL}};
            uint32_t l_874 = 1UL;
            int32_t l_876 = 0L;
            int32_t l_877 = 9L;
            uint32_t l_879 = 0xCC1E06B0L;
            int i, j;
            for (l_782.f0 = 4; (l_782.f0 >= 0); l_782.f0 -= 1)
            { /* block id: 296 */
                uint8_t *l_838 = nullptr;
                return l_838;
            }
            l_876 ^= (safe_lshift_func_uint64_t_u_u(((*l_788) = ((safe_sub_func_uint32_t_u_u(p_1812->g_664.z, p_22)) , (safe_lshift_func_uint32_t_u_s(p_1812->g_845.x, (((safe_rshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((((*l_853) = l_850) == ((((((***l_850) = 0x6CL) | (safe_lshift_func_uint32_t_u_s((safe_lshift_func_int16_t_s_s(l_859[5][4], make_short2(p_1812->g_860.x, p_1812->g_860.x).y)), ((((((safe_lshift(make_uint1(0xE406AAA0L), make_uint1(32)))) ^ make_uint1(0x2F7D76F5L))).x || ((l_863 == nullptr) , (((safe_mod(((make_ushort4(0x243EL, (safe_rshift_func_int8_t_s_s((((safe_div_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_22, hip_const_14)), l_859[6][4])) , p_1812->g_439.y) ^ p_1812->g_845.y), 4)), 0xBE69L, 4UL) ^ make_ushort4(3UL, 3UL, 3UL, 3UL))), make_ushort4(0x410BL, 0x410BL, 0x410BL, 0x410BL)))).w == p_1812->g_166))) != (*l_686))))) < l_873) & l_874) , p_1812->g_875)), 65533UL)), p_1812->g_325)) , hip_const_3) & p_22))))), 33));
            --l_879;
        }
    }
    p_1812->g_554.x = (*l_686);
    if (((p_1812->g_845.y = (p_22 = (((safe_rshift(make_ushort3(l_884.x, l_884.x, l_884.x), ((((safe_lshift(make_ushort3(l_887.x, l_887.x, l_887.x), make_ushort3(16, 16, 16)))) | ((make_ushort3(3UL, 0xCF1FL, 0xBE13L) ^ make_ushort3((((make_ushort2(8UL, 0xFD99L) ^ make_ushort2(p_1812->g_888.x, p_1812->g_888.x))).y != (p_22 & (l_889 ^ p_1812->g_105.y))), 65535UL, ((((*l_892) = make_long4(l_890.y, l_890.y, l_890.y, l_890.y).y) ^ ((*l_893) = (p_22 , (-3L)))) <= p_1812->g_128.y))))))))).x | (((*p_1812->g_240) == ((*l_894) = (p_22 , (*p_1812->g_240)))) != 0x1F42L)))) && p_22))
    { /* block id: 312 */
        union U0 l_896 = {0L};
        int32_t l_897 = 6L;
        __shared__ int8_t ***l_905;
        l_905 = nullptr;
        int32_t l_955 = 0x72C676B5L;
        uint32_t l_956 = 8UL;
        uint64_t *l_964[1][2];
        uchar1 l_1005 = make_uchar1(254UL);
        __shared__ int32_t *l_1055;
        l_1055 = nullptr;
        __shared__ int4 l_1056;
        l_1056 = make_int4(0L, 0xC303D5AEL, 0L, 0xC303D5AEL);
        uint1 l_1126 = make_uint1(0UL);
        uint64_t l_1131 = 18446744073709551615UL;
        uint32_t l_1154 = 0x88FD80E7L;
        __shared__ union U0 ***l_1165;
        l_1165 = &l_749[0][5][4];
        uint8_t *l_1190 = &hip_const_8;
        uint3 l_1198 = make_uint3(0x07978FA1L, 0xC1741771L, 0x07978FA1L);
        uint64_t l_1245[5] = {18446744073709551614UL, 18446744073709551615UL, 18446744073709551614UL, 18446744073709551615UL, 18446744073709551614UL};
        uint16_t *l_1279 = &p_1812->g_568[3];
        __shared__ ulong2 l_1316;
        l_1316 = make_ulong2(0xB5BBFC17A9DF0BC9LL, 18446744073709551615UL);
        ulong4 l_1366 = make_ulong4(1UL, 1UL, 1UL, 1UL);
        ushort4 l_1373 = make_ushort4(0UL, 0xBFEEL, 0UL, 0xBFEEL);
        int64_t ***l_1374[4][10][3] = {{{&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}}, {{&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}}, {{&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}}, {{&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}, {&p_1812->g_333, &p_1812->g_333, nullptr}}};
        union U0 ****l_1380[10][4];
        int32_t *l_1407[1];
        int2 l_1424 = make_int2(0xC66766F7L, 0xC9296B4EL);
        ushort4 l_1444 = make_ushort4(0xB857L, 0x4BDFL, 0xB857L, 0x4BDFL);
        int i, j, k;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 2; j++)
                l_964[i][j] = nullptr;
        }
        for (int i = 0; i < 10; i++)
        {
            for (int j = 0; j < 4; j++)
                l_1380[i][j] = nullptr;
        }
        for (int i = 0; i < 1; i++)
            l_1407[i] = &p_1812->g_1078;
        if (((p_1812->g_443 = (l_897 |= (l_896 , p_1812->g_554.x))) && (p_22 = (p_1812->g_325 |= ((((safe_lshift(make_int4(0x7417D276L, 0xE9F016DEL, ((l_896.f0 , p_1812->g_845.z) > ((l_897 || (p_22 == (*l_686))) < (safe_mod_func_int16_t_s_s((+(l_902 != l_905)), 0x0CDDL)))), (-1L)), make_int4(32, 32, 32, 32)))).x >= l_896.f0) & hip_const_1)))))
        { /* block id: 317 */
            return p_21;
        }
        else
        { /* block id: 319 */
            uint8_t l_916[7][5][5] = {{{0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}}, {{0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}}, {{0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}}, {{0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}}, {{0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}}, {{0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}}, {{0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}, {0UL, 255UL, 0UL, 255UL, 0UL}}};
            uint64_t *l_921 = &p_1812->g_448;
            // attempting a hip shared for loop
            __shared__ uint32_t *l_923[4];
            for (int i = 0; i < 4; i++)
                l_923[i] = &hip_const_1;
            // attempting a hip shared for loop
            __shared__ int32_t l_924[7][9][4];
            for (int i = 0; i < 7; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    for (int k = 0; k < 4; k++)
                        l_924[i][j][k] = 0L;
                }
            }
            int32_t *l_931[4] = {&l_766.f0, &hip_const_10, &l_766.f0, &hip_const_10};
            int1 l_934 = make_int1((-1L));
            int32_t l_953 = 0x0F95D34DL;
            int32_t l_954 = (-6L);
            short3 l_970 = make_short3(0x3E48L, (-8L), 0x3E48L);
            __shared__ int8_t **l_1017;
            l_1017 = nullptr;
            ushort1 l_1103 = make_ushort1(0x1391L);
            int32_t **l_1142 = &l_687[7];
            int i, j, k;
            for (int i = 0; i < 4; i++)
                l_923[i] = &hip_const_1;
            if ((safe_sub_func_uint8_t_u_u((safe_mul_func_uint64_t_u_u((p_22 & (safe_div_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint64_t_u_s((((!p_1812->g_888.z) & 0xA6E7L) > ((!l_916[3][4][1]) , (((safe_mul_func_int8_t_s_s((0UL <= ((safe_mul_func_int64_t_s_s((&p_1812->g_448 != l_921), ((((~(p_1812->g_845.z = p_1812->g_564.x)) <= 0x36D0L) , p_22) > p_22))) > (*l_686))), 6L)) ^ 0x8C08L) | 0L))), 60)), 0x0ECAL)) < l_897), p_22))), p_22)), p_22)))
            { /* block id: 321 */
                long2 l_922 = make_long2(0x2488405E557BDF93LL, 0x526D6A369715042FLL);
                int i;
                l_924[2][4][0] |= (make_long4(l_922.x, l_922.x, l_922.x, l_922.x).w ^ ((l_923[2] = l_923[2]) == nullptr));
                return &hip_const_8;
            }
            else
            { /* block id: 325 */
                p_1812->g_564.x |= make_int1(l_925.w).x;
            }
            if ((safe_lshift_func_int8_t_s_s(p_22, p_22)))
            { /* block id: 328 */
                int64_t ****l_928 = &p_1812->g_575[4][0];
                int4 l_938 = make_int4(0L, 0x4EE8EDE2L, 0L, 0x4EE8EDE2L);
                uint16_t *l_950[9][6];
                int8_t *l_951 = &hip_const_5.f1;
                int8_t *l_952[10] = {&hip_const_7, nullptr, nullptr, nullptr, nullptr, &hip_const_7, nullptr, nullptr, nullptr, nullptr};
                uint64_t *l_962 = &hip_const_2;
                uint4 l_965 = make_uint4(0xFA82D86EL, 18446744073709551615UL, 0xFA82D86EL, 18446744073709551615UL);
                union U0 **l_981 = nullptr;
                int i, j;
                for (int i = 0; i < 9; i++)
                {
                    for (int j = 0; j < 6; j++)
                        l_950[i][j] = &p_1812->g_531;
                }
                (*l_928) = &p_1812->g_333;
                l_955 |= ((((((safe_add_func_uint16_t_u_u(((l_931[0] != ((safe_mod_func_int32_t_s_s((((l_924[0][3][0] &= ((make_int3(l_934.x, l_934.x, l_934.x) | ((make_int3(5L, 7L, p_22) ^ make_int3((safe_mul_func_int8_t_s_s(p_22, 0xFCL)), 0xA94DA8C0L, 0x0FD9AF45L))))).x) , l_937) , make_int2(l_938.y, l_938.y).y), (safe_mul_func_uint32_t_u_u(((make_short4(p_1812->g_941.y, p_1812->g_941.y, p_1812->g_941.y, p_1812->g_941.y).w < (safe_div_func_int8_t_s_s((l_954 |= (l_953 = (safe_div_func_uint64_t_u_u((nullptr != &p_1812->g_575[4][0]), (l_897 || ((safe_mod_func_uint16_t_u_u(make_ushort4((p_1812->g_682.z ^= ((((safe_rshift(make_ushort3(0x529CL, 0x359AL, 0x8E22L), make_ushort3(16, 16, 16)))) & make_ushort3(8UL, hip_const_3, p_1812->g_568[4]))).x), 0x2052L, 0UL, 0xF45FL).x, p_22)) < l_897)))))), p_1812->g_860.x))) , hip_const_6), 4294967291UL)))) , &hip_const_10)) >= p_22), (-7L))) > l_896.f0) | p_22) > 6L) , nullptr) == nullptr);
                l_956++;
                for (p_1812->g_754 = 5; (p_1812->g_754 >= 0); p_1812->g_754 -= 1)
                { /* block id: 338 */
                    uint64_t **l_963[3];
                    int32_t l_973[3];
                    int32_t l_974 = 1L;
                    int32_t **l_975 = &p_1812->g_85;
                    int2 l_976 = make_int2(0x6B310FD1L, (-1L));
                    __shared__ uchar1 l_991;
                    l_991 = make_uchar1(251UL);
                    int8_t ****l_1002 = &l_902;
                    uint1 l_1006 = make_uint1(0x04252076L);
                    int i;
                    for (int i = 0; i < 3; i++)
                        l_963[i] = &l_962;
                    for (int i = 0; i < 3; i++)
                        l_973[i] = 1L;
                    p_1812->g_959 |= 9L;
                    (*l_975) = func_55(&p_1812->g_81, p_22, ((*l_892) = (+(safe_mul_func_uint64_t_u_u((((l_964[0][0] = l_962) != &p_1812->g_448) >= (make_uint4(l_965.y, l_965.y, l_965.y, l_965.y).x , (safe_sub_func_int16_t_s_s((((*l_686) < p_22) ^ ((safe_add_func_int64_t_s_s(0x74647D9C249E57F3LL, ((*l_921) = ((make_short4(l_970.y, l_970.y, l_970.y, l_970.y).y < ((p_22 & (safe_lshift_func_uint32_t_u_s((l_973[1] |= (&hip_const_1 == nullptr)), (*l_686)))) || l_965.w)) > l_955)))) != p_1812->g_567.z)), l_974)))), p_22)))), p_22, (*p_1812->g_241), p_1812);
                    for (l_896.f2 = 0; (l_896.f2 <= 1); l_896.f2 += 1)
                    { /* block id: 347 */
                        long4 l_984 = make_long4(2L, 0x59EFDD5421C91DDALL, 2L, 0x59EFDD5421C91DDALL);
                        uint8_t *l_992 = &hip_const_9;
                        uint8_t *l_993 = nullptr;
                        uint8_t *l_994 = &l_916[2][3][2];
                        uint8_t *l_995 = &hip_const_8;
                        uint8_t *l_996 = nullptr;
                        uint8_t *l_997[1];
                        int i, j;
                        for (int i = 0; i < 1; i++)
                            l_997[i] = &hip_const_13.f2;
                        p_1812->g_664.z |= ((make_int3(l_976.x, l_976.x, l_976.x) | make_int3(((((((make_uint3(l_774[l_896.f2][p_1812->g_754], 4294967286UL, 4UL) | ((safe_div(make_uint3((p_1812->g_635.x |= (safe_mod_func_uint64_t_u_u((l_981 != (func_41(((safe_add_func_int64_t_s_s(make_long3(l_984.y, l_984.y, l_984.y).x, ((((make_int2(((**l_975) != (((safe_div_func_int16_t_s_s((safe_div_func_int16_t_s_s(((!make_long3(make_long1(0xEF2662DA1B089139LL).x, (-1L), 0L).z) < ((safe_mul_func_uint8_t_u_u((l_954 = ((*l_994) = make_uchar2(l_991.x, l_991.x).x)), (*l_686))) > p_22)), l_938.y)), hip_const_12)) == l_938.x) == (*p_1812->g_140))), 0x3AE7FF49L) ^ make_int2(0xBA0F4B3AL, 0xBA0F4B3AL))).x <= 0xDE42FE3BL) < l_955))) || p_22), p_21, p_21, &hip_const_8, p_21, p_1812) , nullptr)), p_22))), p_1812->g_781.x, 0xD89908FEL), make_uint3(0x31FF8DB5L, 0x31FF8DB5L, 0x31FF8DB5L)))))).x < p_22) , p_22) & l_924[0][7][3]) < p_1812->g_816.x), p_22, l_984.y))).z;
                        l_954 &= ((safe_lshift_func_uint64_t_u_u(((l_916[3][4][1] || ((safe_mod_func_uint64_t_u_u(((nullptr != l_1002) ^ l_970.y), hip_const_7)) < ((safe_mod_func_uint8_t_u_u(0x05L, make_uchar1(l_1005.x).x)) >= ((p_1812->g_128.y = (l_924[3][3][1] > (make_uint4(l_1006.x, l_1006.x, l_1006.x, l_1006.x).w , ((+((((((p_22 ^ (((((*p_1812->g_241) , (-10L)) || p_1812->g_878) ^ p_22) , p_22)) == (**l_975)) <= 1UL) == l_924[1][7][0]) >= l_965.w) <= p_22)) < l_934.x)))) | (**l_975))))) , p_22), p_22)) > l_1005.x);
                    }
                }
            }
            else
            { /* block id: 356 */
                char1 l_1027 = make_char1(6L);
                long2 l_1028 = make_long2(0xDE89D409D178E0C9LL, 7L);
                ulong4 l_1041 = make_ulong4(0UL, 0x215880CCBFF51A2BLL, 0UL, 0x215880CCBFF51A2BLL);
                __shared__ ulong2 l_1043;
                l_1043 = make_ulong2(0xC19CA50C90C1B405LL, 0UL);
                int32_t ***l_1071[7][5] = {{&p_1812->g_1011[2][0][3], nullptr, &p_1812->g_1011[1][0][0], &p_1812->g_1011[2][3][2], nullptr}, {&p_1812->g_1011[2][0][3], nullptr, &p_1812->g_1011[1][0][0], &p_1812->g_1011[2][3][2], nullptr}, {&p_1812->g_1011[2][0][3], nullptr, &p_1812->g_1011[1][0][0], &p_1812->g_1011[2][3][2], nullptr}, {&p_1812->g_1011[2][0][3], nullptr, &p_1812->g_1011[1][0][0], &p_1812->g_1011[2][3][2], nullptr}, {&p_1812->g_1011[2][0][3], nullptr, &p_1812->g_1011[1][0][0], &p_1812->g_1011[2][3][2], nullptr}, {&p_1812->g_1011[2][0][3], nullptr, &p_1812->g_1011[1][0][0], &p_1812->g_1011[2][3][2], nullptr}, {&p_1812->g_1011[2][0][3], nullptr, &p_1812->g_1011[1][0][0], &p_1812->g_1011[2][3][2], nullptr}};
                __shared__ uint16_t l_1096;
                l_1096 = 0UL;
                int32_t l_1132 = 0x02D8868DL;
                int32_t l_1134 = (-8L);
                int32_t l_1136 = 0xFCD121F1L;
                int i, j;
                if ((*p_1812->g_140))
                { /* block id: 357 */
                    uint64_t l_1021 = 1UL;
                    __shared__ int32_t l_1022;
                    l_1022 = 0x6E94EF39L;
                    ulong4 l_1042 = make_ulong4(1UL, 18446744073709551610UL, 1UL, 18446744073709551610UL);
                    union U1 **l_1051 = &p_1812->g_241;
                    int32_t ***l_1057 = nullptr;
                    int32_t l_1060 = 1L;
                    union U0 *l_1063 = &l_896;
                    int i;
                    for (l_937 = 0; (l_937 <= 19); l_937 = safe_add_func_int8_t_s_s(l_937, 7))
                    { /* block id: 360 */
                        uint16_t *l_1018 = nullptr;
                        uint16_t *l_1019 = &p_1812->g_568[3];
                        int32_t l_1020 = 0x1376CE87L;
                        int16_t ****l_1026 = &p_1812->g_1023;
                        int8_t *****l_1044 = nullptr;
                        int8_t ****l_1046 = &l_902;
                        int8_t *****l_1045 = &l_1046;
                        union U1 *l_1047[4] = {&p_1812->g_476[0][2], &l_766, &p_1812->g_476[0][2], &l_766};
                        // attempting a hip shared for loop
                        __shared__ int8_t *l_1048[8][7][4];
                        for (int i = 0; i < 8; i++)
                        {
                            for (int j = 0; j < 7; j++)
                            {
                                for (int k = 0; k < 4; k++)
                                    l_1048[i][j][k] = nullptr;
                            }
                        }
                        int i, j, k;
                        l_1022 &= ((safe_add_func_uint64_t_u_u((p_1812->g_1011[0][1][0] == &l_931[3]), p_22)) && make_ulong4(18446744073709551615UL, (((safe_mul_func_uint8_t_u_u(((1UL && ((safe_mul_func_uint16_t_u_u(p_1812->g_109, ((*l_1019) = ((nullptr == l_1017) & 2L)))) <= 0UL)) & l_1020), p_22)) >= 0x7F04L) < l_1021), hip_const_12, p_1812->g_941.x).w);
                        (*l_1026) = p_1812->g_1023;
                        p_1812->g_154.y ^= (((l_896.f0 || (((p_22 && make_char3(l_1027.x, l_1027.x, l_1027.x).y) ^ p_22) & make_long2(l_1028.x, l_1028.x).x)) | (safe_add_func_uint16_t_u_u((((safe_add_func_uint64_t_u_u(((safe_lshift(make_ulong1(8UL), ((make_ulong1(p_22) ^ ((safe_add(make_ulong1(l_1020), ((safe_rshift(((safe_add(make_ulong1(l_1041.y), ((make_ulong1(9UL) ^ make_ulong1(l_1042.z)))))), make_ulong1(l_1043.y)))))))))))).x, (((*l_1045) = &p_1812->g_875) != nullptr))) >= ((l_766 = (*p_1812->g_241)) , 6L)) == 255UL), 65527UL))) < 0x7593CE31L);
                        l_954 ^= ((l_1022 = p_22) , p_22);
                    }
                    for (l_937 = 0; (l_937 <= 1); l_937 += 1)
                    { /* block id: 372 */
                        int32_t **l_1054[7][8] = {{&p_1812->g_85, &p_1812->g_140, &p_1812->g_85, &l_686, nullptr, &l_686, &p_1812->g_140, &p_1812->g_140}, {&p_1812->g_85, &p_1812->g_140, &p_1812->g_85, &l_686, nullptr, &l_686, &p_1812->g_140, &p_1812->g_140}, {&p_1812->g_85, &p_1812->g_140, &p_1812->g_85, &l_686, nullptr, &l_686, &p_1812->g_140, &p_1812->g_140}, {&p_1812->g_85, &p_1812->g_140, &p_1812->g_85, &l_686, nullptr, &l_686, &p_1812->g_140, &p_1812->g_140}, {&p_1812->g_85, &p_1812->g_140, &p_1812->g_85, &l_686, nullptr, &l_686, &p_1812->g_140, &p_1812->g_140}, {&p_1812->g_85, &p_1812->g_140, &p_1812->g_85, &l_686, nullptr, &l_686, &p_1812->g_140, &p_1812->g_140}, {&p_1812->g_85, &p_1812->g_140, &p_1812->g_85, &l_686, nullptr, &l_686, &p_1812->g_140, &p_1812->g_140}};
                        int i, j;
                        p_1812->g_564.x = (l_924[3][3][3] = (l_955 = (safe_lshift_func_int8_t_s_s((nullptr == l_1051), (safe_lshift_func_uint16_t_u_u(l_690[l_937], 7))))));
                        l_1055 = (l_687[(l_937 + 4)] = &hip_const_11[1]);
                    }
                    if (((safe_unary_minus(make_int1((p_1812->g_664.z |= make_int3(l_1056.y, l_1056.y, l_1056.y).z))))).x)
                    { /* block id: 380 */
                        int32_t ****l_1058[4][8][6] = {{{nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}}, {{nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}}, {{nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}}, {{nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}, {nullptr, &l_1057, &l_1057, &l_1057, nullptr, nullptr}}};
                        int32_t l_1061[7][2][10] = {{{0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}, {0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}}, {{0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}, {0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}}, {{0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}, {0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}}, {{0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}, {0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}}, {{0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}, {0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}}, {{0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}, {0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}}, {{0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}, {0xA6BF1A03L, 0x4A400D53L, (-6L), 0xEE65BD79L, (-6L), 0x4A400D53L, 0xA6BF1A03L, 0x38D6B7B2L, 2L, 8L}}};
                        int i, j, k;
                        p_1812->g_1059 = l_1057;
                        p_1812->g_664.z |= (l_1061[4][0][4] = (l_1060 = (l_1022 |= (0xDD858C90L < (*p_1812->g_140)))));
                    }
                    else
                    { /* block id: 386 */
                        union U0 *l_1062 = &hip_const_13;
                        l_1063 = l_1062;
                    }
                }
                else
                { /* block id: 389 */
                    if (l_896.f0)
                        goto lbl_798;
                }
                for (p_1812->g_404 = 21; (p_1812->g_404 == 10); p_1812->g_404 = safe_sub_func_int16_t_s_s(p_1812->g_404, 6))
                { /* block id: 394 */
                    __shared__ int16_t l_1085;
                    l_1085 = (-8L);
                    for (l_834 = 0; (l_834 <= 4); l_834 += 1)
                    { /* block id: 397 */
                        __shared__ uint16_t *l_1066;
                        l_1066 = nullptr;
                        uint16_t *l_1067 = &p_1812->g_531;
                        int8_t *l_1070 = &l_766.f1;
                        uint16_t *l_1073[6];
                        __shared__ uint8_t *l_1079;
                        l_1079 = &l_774[0][6];
                        uint8_t *l_1080 = &hip_const_8;
                        int i;
                        for (int i = 0; i < 6; i++)
                            l_1073[i] = &l_889;
                        l_1085 = (make_uchar2(253UL, ((p_1812->g_568[1] ^= (((*l_1067)--) <= ((((*l_1070) = (*l_686)) , l_1071[4][1]) != l_1072))) ^ (safe_mul_func_uint32_t_u_u((safe_add_func_int32_t_s_s(((0xAE004CB5EC55826ELL | p_1812->g_1078) , 0L), ((l_924[2][4][0] = (0L == ((*l_1079) |= p_1812->g_109))) && (+((safe_div(((safe_mul(make_uchar2(1UL, 3UL), make_uchar2(255UL, 255UL)))), make_uchar2(7UL, 7UL)))).x)))), 1UL)))).x ^ 3L);
                        if (l_1085)
                            break;
                        return &hip_const_9;
                    }
                }
                for (l_956 = 0; (l_956 > 56); l_956 = safe_add_func_uint8_t_u_u(l_956, 9))
                { /* block id: 410 */
                    int8_t l_1095[7][1] = {{0x24L}, {0x24L}, {0x24L}, {0x24L}, {0x24L}, {0x24L}, {0x24L}};
                    int32_t l_1097 = 0xFB7F757FL;
                    ushort2 l_1102 = make_ushort2(0x4483L, 0x712BL);
                    int32_t l_1114 = 0xB4C6F042L;
                    int32_t l_1133 = (-7L);
                    uint32_t l_1137 = 4294967295UL;
                    int i, j;
                    l_896.f1 = make_int1(p_1812->g_1088.z).x;
                    if ((safe_lshift_func_int16_t_s_s((l_1114 ^= make_short1(((safe_add_func_int16_t_s_s(make_short3((l_1097 &= (safe_mul_func_int32_t_s_s(((p_1812->g_860.x = (l_1095[1][0] ^= p_22)) & l_1096), p_22))), (-10L), ((p_22 == 0UL) > ((make_uint3(0xAB9B207BL, 4294967289UL, (((safe_div(((safe_rshift(make_ushort2(l_1102.y, l_1102.y), make_ushort2(16, 16)))), make_ushort2(0x183BL, (p_22 >= 4UL))))).x == make_ushort2(l_1103.x, l_1103.x).y)) & make_uint3(0UL, (safe_sub_func_int32_t_s_s((safe_mul_func_int16_t_s_s((safe_rshift_func_int32_t_s_s(((safe_sub_func_int64_t_s_s((safe_sub_func_uint8_t_u_u((p_22 , l_1028.y), p_1812->g_439.y)), l_954)) , 8L), 27)), p_22)), 0x85FC77AAL)), 4294967295UL))).y)).z, 2UL)) && p_1812->g_796.x)).x), 10)))
                    { /* block id: 416 */
                        int8_t l_1117 = 0xA5L;
                        int4 l_1118 = make_int4(2L, 6L, 2L, 6L);
                        uint3 l_1125 = make_uint3(0x773F3448L, 0x95527DA3L, 0x773F3448L);
                        int8_t l_1135[1];
                        int i;
                        for (int i = 0; i < 1; i++)
                            l_1135[i] = 0L;
                        l_897 = (safe_div_func_uint32_t_u_u(l_1117, (~make_int4(l_1118.x, l_1118.x, l_1118.x, l_1118.x).y)));
                        l_1056.x = (safe_sub_func_uint8_t_u_u((p_22 > (p_22 , ((0x90AAL >= p_22) ^ (safe_sub_func_uint32_t_u_u(((((safe_add(make_uint1(l_1125.x), ((make_uint1(l_1126.x) ^ make_uint1(p_1812->g_1127.z)))))) ^ make_uint1(p_1812->g_1128.y))).x, (safe_lshift_func_int32_t_s_u((*l_686), 9))))))), l_1131));
                        l_1137++;
                    }
                    else
                    { /* block id: 420 */
                        int2 l_1140 = make_int2(1L, 1L);
                        int i;
                        p_1812->g_776.y = l_1137;
                        l_1097 &= make_int2(l_1140.x, l_1140.x).x;
                        l_1141 = (-1L);
                    }
                }
            }
            (*l_1142) = &l_924[1][8][3];
        }
        if ((safe_mul_func_int64_t_s_s(p_22, (make_char4(p_1812->g_1145.x, p_1812->g_1145.x, p_1812->g_1145.x, p_1812->g_1145.x).x >= (nullptr == &hip_const_2)))))
        { /* block id: 429 */
            uint16_t l_1146 = 65535UL;
            int32_t l_1151 = 0xAAE6E13CL;
            union U0 l_1159 = {-3L};
            int64_t l_1167 = 1L;
            l_1146--;
            for (l_956 = 0; (l_956 != 53); l_956++)
            { /* block id: 433 */
                __shared__ union U0 l_1164;
                l_1164 = {0L};
                union U0 ***l_1166 = &l_749[0][2][0];
                for (p_1812->g_325 = 2; (p_1812->g_325 >= 0); p_1812->g_325 -= 1)
                { /* block id: 436 */
                    int32_t l_1152 = 0xD827F618L;
                    __shared__ int2 l_1153;
                    l_1153 = make_int2((-10L), 0x2D5FD9FEL);
                    int i;
                    --l_1154;
                }
                p_1812->g_1078 = ((((safe_div_func_uint64_t_u_u(((1L > (l_1159 , (*p_1812->g_140))) == ((safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((*l_686), ((l_1164 , ((*l_863) = l_1165)) == l_1166))), (p_22 = make_short1(p_22).x))) || ((p_1812->g_105.x = ((l_1167 &= 0L) <= p_22)) | l_1164.f0))), l_1146)) ^ (*l_686)) < (*p_1812->g_140)) > (*l_686));
            }
        }
        else
        { /* block id: 445 */
            uint32_t l_1172[8][4][6] = {{{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}, {{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}, {{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}, {{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}, {{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}, {{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}, {{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}, {{0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}, {0x6A0C416AL, 7UL, 4294967295UL, 1UL, 4294967295UL, 4294967293UL}}};
            // attempting a hip shared for loop
            __shared__ uint16_t *l_1173[7];
            for (int i = 0; i < 7; i++)
                l_1173[i] = nullptr;
            uint64_t **l_1175 = &l_964[0][0];
            int16_t l_1178 = 0x0F8AL;
            int32_t l_1180[8][8][2] = {{{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}, {{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}, {{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}, {{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}, {{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}, {{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}, {{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}, {{(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}, {(-1L), 0x68C1AB32L}}};
            __shared__ uint8_t l_1184;
            l_1184 = 0UL;
            __shared__ uint32_t l_1187;
            l_1187 = 0xF631794CL;
            __shared__ uint32_t l_1193;
            l_1193 = 0x648513EEL;
            union U0 l_1219 = {-1L};
            ushort3 l_1221 = make_ushort3(0xE4C4L, 65535UL, 0xE4C4L);
            __shared__ ushort4 l_1258;
            l_1258 = make_ushort4(5UL, 65530UL, 5UL, 65530UL);
            int64_t l_1275 = (-10L);
            __shared__ uint32_t l_1280;
            l_1280 = 18446744073709551615UL;
            int64_t **l_1285 = &p_1812->g_334[2][2];
            int64_t ****l_1305 = &p_1812->g_575[4][0];
            char3 l_1367 = make_char3(0x83L, (-1L), 0x83L);
            int16_t ****l_1386 = &p_1812->g_1023;
            int16_t ****l_1402[10][3];
            int2 l_1440 = make_int2(0x9FC551E9L, 0xC24E31F4L);
            union U1 l_1447[7][3] = {{{0xEB66E4D5L}, {-8L}, {0xEB66E4D5L}}, {{0xEB66E4D5L}, {-8L}, {0xEB66E4D5L}}, {{0xEB66E4D5L}, {-8L}, {0xEB66E4D5L}}, {{0xEB66E4D5L}, {-8L}, {0xEB66E4D5L}}, {{0xEB66E4D5L}, {-8L}, {0xEB66E4D5L}}, {{0xEB66E4D5L}, {-8L}, {0xEB66E4D5L}}, {{0xEB66E4D5L}, {-8L}, {0xEB66E4D5L}}};
            int32_t **l_1451 = &p_1812->g_85;
            int i, j, k;
            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 3; j++)
                    l_1402[i][j] = nullptr;
            }
            if ((p_22 < (p_22 , ((p_1812->g_888.y = (safe_mul_func_uint16_t_u_u(((*l_1165) == nullptr), (p_22 || l_1172[4][2][3])))) == (&hip_const_2 == ((*l_1175) = l_1174))))))
            { /* block id: 448 */
                int16_t l_1176 = 0xFB9BL;
                int32_t l_1177 = (-1L);
                int32_t l_1179 = 2L;
                int32_t l_1181 = 0x87550E5FL;
                int32_t l_1182 = 1L;
                int32_t l_1183 = 1L;
                l_1184--;
                ++l_1187;
                for (l_873 = 0; (l_873 <= 1); l_873 += 1)
                { /* block id: 453 */
                    return p_21;
                }
                return l_1190;
            }
            else
            { /* block id: 457 */
                uint64_t l_1191 = 0x005802430FFDE292LL;
                // attempting a hip shared for loop
                __shared__ int32_t l_1192[3][7][7];
                for (int i = 0; i < 3; i++)
                {
                    for (int j = 0; j < 7; j++)
                    {
                        for (int k = 0; k < 7; k++)
                            l_1192[i][j][k] = 0L;
                    }
                }
                int i, j, k;
                l_1193 = (l_1192[1][0][6] = l_1191);
            }
            if ((l_1194 > (l_1180[4][4][0] &= (-8L))))
            { /* block id: 462 */
                for (p_1812->g_404 = 0; (p_1812->g_404 < (-17)); --p_1812->g_404)
                { /* block id: 465 */
                    return &hip_const_8;
                }
            }
            else
            { /* block id: 468 */
                __shared__ int64_t l_1199;
                l_1199 = 0x0862A6BB8EC7F443LL;
                uint32_t *l_1208 = &l_1154;
                int1 l_1209 = make_int1(7L);
                union U0 l_1220 = {0x73L};
                int1 l_1227 = make_int1(0x3AA9A764L);
                union U1 l_1236 = {0x84F36983L};
                uint3 l_1271 = make_uint3(0x55A02D76L, 1UL, 0x55A02D76L);
                int i;
                if ((((make_uint2(p_1812->g_1197.x, p_1812->g_1197.x) ^ ((make_uint2(l_1198.y, l_1198.y) & make_uint2(4294967292UL, ((p_1812->g_643.y , p_22) >= l_1199)))))).x > (safe_sub_func_uint32_t_u_u((make_short4(0x46FDL, 0x7FBFL, (-2L), l_1178).y , (0x500BED25L < (safe_mul_func_uint32_t_u_u(((*l_1208) = ((p_1812->g_845.x &= p_22) || (safe_lshift_func_uint32_t_u_s((p_22 || (safe_add_func_uint8_t_u_u((make_ushort3((((make_uint1(0xBA0F207CL).x >= p_22) != p_22) >= 0x1FE1778456B103A4LL), 0xB21EL, 65534UL).y <= 0x6473L), 255UL))), 16)))), p_22)))), 1UL))))
                { /* block id: 471 */
                    uint32_t l_1210 = 0xE73A733DL;
                    l_1210 = make_int3(l_1209.x, l_1209.x, l_1209.x).y;
                }
                else
                { /* block id: 473 */
                    union U0 **l_1222 = &l_750;
                    int64_t l_1223 = 1L;
                    int32_t l_1224 = 0x16E3D690L;
                    int32_t *l_1247 = &l_955;
                    uint4 l_1272 = make_uint4(0UL, 4294967295UL, 0UL, 4294967295UL);
                    int i;
                    l_1224 &= (safe_sub_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_s(((8L < (p_22 > ((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((((l_1219 , (p_1812->g_568[4] = (((((l_1220 , (*p_1812->g_377)) , (p_22 < make_ushort1(l_1221.z).x)) , 0x2262F1DAL) == l_1199) > (((((**l_863) = nullptr) == l_1222) && p_22) , l_1223)))) && p_22) < p_22), 6)), 0)) | l_1223))) <= l_1209.x), l_1172[2][0][2])) , 1L), 0L));
                    for (l_689 = 0; (l_689 >= 0); l_689 -= 1)
                    { /* block id: 479 */
                        int8_t *l_1239 = nullptr;
                        int8_t *l_1240 = &l_1219.f0;
                        __shared__ int32_t l_1243;
                        l_1243 = (-3L);
                        uint32_t *l_1244 = nullptr;
                        int32_t **l_1246[6] = {&l_687[7], &l_687[7], &l_686, &l_687[7], &l_687[7], &l_686};
                        int i;
                        p_1812->g_554.x = ((p_1812->g_941.y = (safe_sub_func_uint16_t_u_u(p_1812->g_590.x, (make_int1(l_1227.x).x > ((safe_rshift_func_uint64_t_u_s((safe_mod_func_int32_t_s_s(((((*p_1812->g_140) >= (safe_add_func_uint32_t_u_u((safe_add_func_int16_t_s_s(1L, (l_1236 , ((((((((make_int1((((((safe_mul_func_int8_t_s_s(((*l_1240) = p_22), 0L)) , ((((safe_mul_func_int8_t_s_s(((0x9BL || (&p_1812->g_575[1][1] != nullptr)) || p_22), 253UL)) , (-9L)) && 0xCEFBL) , 8UL)) < l_1243) , l_1244) != l_1208)) ^ make_int1(0xD513FAAFL))) ^ make_int1(0x6C69AA40L))) ^ make_int1(0x8E35D363L))).x , p_1812->g_105.y) | (*p_1812->g_140))))), (*p_1812->g_140)))) != p_22) || l_1245[0]), l_1223)), 29)) & l_1224))))) , 0L);
                        l_1247 = &l_897;
                    }
                    (*l_1247) = (safe_add_func_uint16_t_u_u(((safe_mul_func_int64_t_s_s(((*l_892) |= (safe_rshift_func_int16_t_s_s((-1L), 9))), ((((safe_lshift(make_long3(l_1256.x, l_1256.x, l_1256.x), make_long3(64, 64, 64)))) & make_long3(p_1812->g_1257.x, p_1812->g_1257.x, p_1812->g_1257.x))).x)) ^ (make_ushort3(l_1258.w, l_1258.w, l_1258.w).y == (*l_1247))), (make_uchar2((safe_rshift_func_int16_t_s_u((safe_div_func_int32_t_s_s(9L, (((*l_893) = (((safe_mod_func_int32_t_s_s(((safe_rshift_func_int16_t_s_u((p_22 = (nullptr == (*l_903))), (((p_1812->g_1267 == nullptr) && ((safe_rshift(make_uint3(p_1812->g_1270.y, p_1812->g_1270.y, p_1812->g_1270.y), ((make_uint3(l_1271.z, l_1271.z, l_1271.z) ^ make_uint3(l_1272.y, l_1272.y, l_1272.y)))))).z) ^ (*l_1247)))) ^ (safe_mod_func_uint64_t_u_u((*l_686), l_897))), l_1209.x)) ^ l_1275) && 0x16A6L)) || p_22))), hip_const_14)), 255UL).x >= p_1812->g_776.x)));
                    for (p_1812->g_81 = 0; (p_1812->g_81 <= 11); ++p_1812->g_81)
                    { /* block id: 491 */
                        int64_t ****l_1278 = &p_1812->g_575[4][0];
                        (*l_1247) &= ((l_1278 == nullptr) | 0x8FE9D30E080BD859LL);
                        if (l_1258.y)
                            break;
                    }
                }
            }
            if (((18446744073709551612UL ^ (255UL > (p_22 , (l_1279 != l_1279)))) ^ ((l_1280 | (((*l_686) > ((safe_div_func_uint32_t_u_u(((safe_div(make_uint1((nullptr != l_1285)), make_uint1(4294967292UL)))).x, l_1280)) > p_22)) ^ 18446744073709551614UL)) ^ p_1812->g_888.w)))
            { /* block id: 497 */
                __shared__ long4 l_1291;
                l_1291 = make_long4(3L, 1L, 3L, 1L);
                uint32_t *l_1309[1][7] = {{&l_756, nullptr, &l_756, nullptr, &l_756, nullptr, &l_756}};
                char1 l_1344 = make_char1(1L);
                int32_t l_1347 = 0x19C635BEL;
                ulong1 l_1365 = make_ulong1(18446744073709551612UL);
                int64_t ***l_1375 = &p_1812->g_333;
                uint64_t *l_1378 = nullptr;
                uint64_t *l_1379[3][3][4] = {{{&l_1131, &l_1131, nullptr, &l_1131}, {&l_1131, &l_1131, nullptr, &l_1131}, {&l_1131, &l_1131, nullptr, &l_1131}}, {{&l_1131, &l_1131, nullptr, &l_1131}, {&l_1131, &l_1131, nullptr, &l_1131}, {&l_1131, &l_1131, nullptr, &l_1131}}, {{&l_1131, &l_1131, nullptr, &l_1131}, {&l_1131, &l_1131, nullptr, &l_1131}, {&l_1131, &l_1131, nullptr, &l_1131}}};
                union U0 ****l_1381 = &l_864;
                uint8_t *l_1406 = nullptr;
                int i, j, k;
                if (make_int1(p_1812->g_1286.x).x)
                { /* block id: 498 */
                    __shared__ int32_t l_1308;
                    l_1308 = 2L;
                    int32_t l_1311 = 0x9A6261A9L;
                    int1 l_1312 = make_int1(6L);
                    int8_t *l_1345 = &hip_const_13.f0;
                    int8_t *l_1346 = &l_1219.f0;
                    int i;
                    for (p_1812->g_448 = 0; (p_1812->g_448 <= 4); p_1812->g_448 += 1)
                    { /* block id: 501 */
                        int64_t *****l_1306 = nullptr;
                        uint8_t *l_1310[10] = {&l_774[1][7], &l_774[1][0], &l_774[1][7], &l_774[1][0], &l_774[1][7], &l_774[1][0], &l_774[1][7], &l_774[1][0], &l_774[1][7], &l_774[1][0]};
                        int32_t l_1313 = 6L;
                        int i;
                        l_1311 = (safe_sub_func_uint64_t_u_u((func_41(((*l_892) ^= (safe_mul_func_uint32_t_u_u((((((make_long4(l_1291.z, l_1291.z, l_1291.z, l_1291.z) ^ ((safe_mod(((safe_mul(((safe_div(make_long4((safe_mul_func_int32_t_s_s(0x24EEEA73L, (p_22 | ((((safe_sub_func_uint32_t_u_u((((safe_div_func_uint8_t_u_u((l_1304 == (p_1812->g_1307 = l_1305)), 1L)) >= (l_1308 && (l_1291.w || l_1291.w))) & (&p_1812->g_1011[2][2][0] == nullptr)), p_1812->g_105.y)) , l_1309[0][5]) != &hip_const_1) ^ 0x3639L)))), 0L, l_1308, (-9L)), make_long4((-2L), (-2L), (-2L), (-2L))))), make_long4((-2L), (-2L), (-2L), (-2L))))), make_long4(0x16C36C82089020C4LL, 0x16C36C82089020C4LL, 0x16C36C82089020C4LL, 0x16C36C82089020C4LL)))))) ^ make_long4(1L, 1L, 1L, 1L))).z < l_1291.z), 3UL))), &hip_const_8, l_1310[7], &hip_const_9, p_21, p_1812) , l_1308), p_1812->g_1270.y));
                        l_1313 = (make_int2(l_1312.x, l_1312.x).x > (nullptr == &l_1055));
                        return &hip_const_8;
                    }
                    for (l_956 = 0; (l_956 > 50); l_956 = safe_add_func_uint8_t_u_u(l_956, 2))
                    { /* block id: 510 */
                        uint16_t l_1327[7] = {0UL, 0UL, 0xE1B4L, 0UL, 0UL, 0xE1B4L, 0UL};
                        union U1 l_1334 = {0x3AD475F9L};
                        int32_t **l_1335 = &l_687[0];
                        int i;
                        (*l_1335) = func_33((p_1812->g_776.x &= (((make_ulong4(l_1316.y, l_1316.y, l_1316.y, l_1316.y) | make_ulong4(p_1812->g_1317.x, p_1812->g_1317.x, p_1812->g_1317.x, p_1812->g_1317.x))).w | (l_1308 || (safe_unary_minus_func_int8_t_s(l_1308))))), ((safe_rshift_func_uint32_t_u_u((p_22 , 1UL), 19)) != (safe_div_func_uint64_t_u_u(((safe_div_func_int64_t_s_s(((safe_mul_func_int16_t_s_s(l_1327[5], (p_22 <= (*l_686)))) != make_ushort4(0xADF0L, 0x5E47L, ((safe_lshift_func_int16_t_s_u((safe_mul_func_int32_t_s_s((l_1312.x , ((safe_div_func_int64_t_s_s((p_1812->g_781.y == l_1312.x), 1UL)) >= p_22)), p_22)), p_22)) | l_1327[5]), p_1812->g_664.z).w), l_1221.x)) || p_1812->g_941.x), 0x98C7F06C8DD4E15BLL))), p_21, l_1334, p_1812);
                        if ((*p_1812->g_140))
                            break;
                    }
                    p_1812->g_564.x = (((0x240E528E94A1FC27LL <= ((l_1347 = (safe_mul_func_int32_t_s_s(p_22, (((*l_1346) = ((p_22 ^ p_22) != ((p_22 > p_22) < (safe_sub_func_uint64_t_u_u((safe_add_func_uint16_t_u_u((safe_add_func_int16_t_s_s((nullptr != l_1072), (0L <= l_1344.x))), p_22)), p_1812->g_794.x))))) > l_1308)))) | (*l_686))) && p_1812->g_1078) > p_22);
                }
                else
                { /* block id: 518 */
                    p_1812->g_1286.z = (l_1180[6][2][0] = 1L);
                    for (l_766.f0 = 0; (l_766.f0 <= 1); l_766.f0 += 1)
                    { /* block id: 523 */
                        int i;
                        if (l_690[l_766.f0])
                            break;
                        if (l_690[l_766.f0])
                            continue;
                    }
                }
                p_1812->g_554.x = 0xBF960E92L;
                if (p_22)
                { /* block id: 529 */
                    int8_t l_1350 = 0xFAL;
                    int32_t l_1351 = 0x58AAA5E7L;
                    uint64_t *l_1377 = nullptr;
                    l_1347 = ((~((safe_lshift_func_uint8_t_u_u(((p_22 = (((++p_1812->g_635.x) , (p_22 || ((*p_1812->g_140) | ((safe_mul(((safe_mul(((safe_lshift(make_uint2((safe_sub_func_uint64_t_u_u(((safe_add(make_ulong1(l_1364.x), ((make_ulong1(l_1365.x) & make_ulong1(l_1366.x)))))).x, 0x0D6CB1904EC8D172LL)), (p_1812->g_1128.y = (!(((((make_ulong2(18446744073709551606UL, 9UL) ^ make_ulong2((((l_1347 <= ((make_char1((-1L)) | make_char1(l_1367.y))).x) < p_1812->g_549.z) , (safe_sub_func_int64_t_s_s(((((make_long3(p_1812->g_1370.x, p_1812->g_1370.x, p_1812->g_1370.x) ^ make_long3(0xE73AF513FCDE9BC4LL, ((l_1351 ^= (safe_add_func_uint8_t_u_u(make_uchar4(0xB8L, (((((((((make_ushort3(l_1373.x, l_1373.x, l_1373.x).z == (((*l_1305) = l_1374[1][9][2]) == (p_1812->g_1376 = l_1375))) , ((l_1378 = l_1377) != l_1379[0][1][0])) != p_1812->g_583) == p_22) , nullptr) != (*l_902)) , l_1380[2][3]) != l_1381) || 0x867A1592L), 252UL, 0xD2L).z, l_1367.y))) && l_1344.x), (-3L)))) & make_long3(0x8A3B3F40C8A6F3F3LL, 0x8A3B3F40C8A6F3F3LL, 0x8A3B3F40C8A6F3F3LL))).z, 0x50B60ED4407BFBB8LL))), 18446744073709551613UL))) ^ make_ulong2(1UL, 1UL))).x || 3L)))), make_uint2(1UL, 1UL)))), make_uint2(0UL, 0UL)))), make_uint2(0xEF1DC6C3L, 0xEF1DC6C3L)))).x))) || p_22)) & hip_const_9), 7)) != l_1350)) <= 1L);
                }
                else
                { /* block id: 538 */
                    int32_t *l_1382 = &l_1180[5][5][0];
                    uint16_t **l_1383 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ uint16_t **l_1384[10][9];
                    for (int i = 0; i < 10; i++)
                    {
                        for (int j = 0; j < 9; j++)
                            l_1384[i][j] = &l_1279;
                    }
                    // attempting a hip shared for loop
                    __shared__ int32_t **l_1403[2];
                    for (int i = 0; i < 2; i++)
                        l_1403[i] = &l_687[7];
                    int i, j;
                    for (int i = 0; i < 2; i++)
                        l_1403[i] = &l_687[7];
                    l_1404 = func_30(l_1382, (make_ushort4(((p_1812->g_1385 = &p_1812->g_531) != ((((l_1386 = &p_1812->g_1023) == ((l_1275 > (safe_div_func_uint64_t_u_u((p_22 | (--(*l_1279))), (safe_lshift_func_uint64_t_u_s((18446744073709551615UL && ((+((safe_mod_func_int32_t_s_s(((((++p_1812->g_567.z) , ((l_1291.y | (((((make_ushort2(p_1812->g_1401.x, p_1812->g_1401.x) ^ make_ushort2((nullptr == p_1812->g_1267), 0xECF2L))) ^ make_ushort2(0UL, 0UL))).x > 0x1562L)) , p_22)) > p_22) ^ p_22), l_1347)) >= 0L)) ^ (-1L))), 24))))) , l_1402[9][0])) < p_22) , nullptr)), 65535UL, 0UL, 0x6266L).y >= p_22), p_1812);
                    if ((!(p_22 != (p_1812->g_1405 || l_1219.f0))))
                    { /* block id: 544 */
                        return p_21;
                    }
                    else
                    { /* block id: 546 */
                        (*l_894) = (*p_1812->g_240);
                        return l_1406;
                    }
                }
                (*l_1404) |= (nullptr == &hip_const_13);
            }
            else
            { /* block id: 552 */
                uint32_t l_1408 = 0xC6963529L;
                int32_t l_1417 = 0L;
                int32_t l_1418 = 0x42938E04L;
                int32_t l_1420[3];
                int i;
                for (int i = 0; i < 3; i++)
                    l_1420[i] = (-1L);
                for (l_1219.f1 = 0; (l_1219.f1 <= 1); l_1219.f1 += 1)
                { /* block id: 555 */
                    uint32_t l_1411[8][7][4] = {{{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}, {{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}, {{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}, {{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}, {{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}, {{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}, {{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}, {{0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}, {0x923738B7L, 18446744073709551615UL, 0x716B01F3L, 1UL}}};
                    int32_t l_1419 = 0L;
                    int i, j, k;
                    p_1812->g_85 = l_1407[0];
                    l_1408++;
                    for (l_1187 = 0; (l_1187 <= 3); l_1187 += 1)
                    { /* block id: 560 */
                        int32_t **l_1416 = &p_1812->g_140;
                        int32_t ***l_1415 = &l_1416;
                        int32_t ****l_1414 = &l_1415;
                        (*p_1812->g_85) &= 0x25AD71B9L;
                        ++l_1411[3][1][3];
                        (*l_1414) = nullptr;
                    }
                    for (l_766.f0 = 0; (l_766.f0 <= 1); l_766.f0 += 1)
                    { /* block id: 567 */
                        uint32_t l_1421 = 0xAC4AA97DL;
                        int i, j;
                        l_1421--;
                        (*p_1812->g_85) &= ((((((make_int3(l_1424.x, l_1424.x, l_1424.x) ^ make_int3((((safe_lshift_func_int32_t_s_u(l_774[l_1219.f1][(l_766.f0 + 6)], p_1812->g_888.y)) & (((((((*l_686) == 0x0CC5L) , l_1421) != (make_int3((l_1427 != nullptr), 0xE720D108L, p_22).x < make_uint1(0x2120D429L).x)) != (((((safe_mod(make_int3(p_1812->g_1430.w, p_1812->g_1430.w, p_1812->g_1430.w), make_int3((-2L), 0xCFB323ACL, (*p_1812->g_140))))).z != (*p_1812->g_140)) > p_22) >= 0x37D978F3L)) | l_1421) < (-1L))) , 0x966C90A5L), p_22, p_22))) ^ make_int3(6L, 6L, 6L))) | make_int3(0x6A11A1F6L, 0x6A11A1F6L, 0x6A11A1F6L))).x;
                    }
                }
                if (p_22)
                { /* block id: 572 */
                    for (p_1812->g_583 = 0; (p_1812->g_583 == 16); p_1812->g_583 = safe_add_func_uint64_t_u_u(p_1812->g_583, 8))
                    { /* block id: 575 */
                        int32_t l_1433 = 0x3C9BBF64L;
                        (*l_1404) |= p_22;
                        (*l_1404) = (l_1433 |= 0xBF978B51L);
                        return p_21;
                    }
                    return &hip_const_9;
                }
                else
                { /* block id: 582 */
                    int64_t *l_1442[9][4] = {{&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}, {&p_1812->g_90, nullptr, nullptr, nullptr}};
                    union U1 *l_1448 = nullptr;
                    union U1 *l_1449 = &p_1812->g_476[1][1];
                    int32_t l_1450 = 0L;
                    int i, j;
                    if (((safe_mod_func_int32_t_s_s(l_1280, (*p_1812->g_140))) <= (2L > (safe_mul_func_int32_t_s_s((safe_mul_func_int32_t_s_s((((l_1443[0] = (((make_int4(l_1440.y, l_1440.y, l_1440.y, l_1440.y) ^ make_int4(p_1812->g_1441.z, p_1812->g_1441.z, p_1812->g_1441.z, p_1812->g_1441.z))).z > (((*p_1812->g_241) , (*l_1285)) != (l_1442[2][2] = l_892)))) > (((*p_1812->g_1385) = ((make_ushort1(l_1444.y) & make_ushort1(0x1763L))).x) , ((((l_1420[2] = (((((make_int2(((safe_lshift(((make_int3((18446744073709551610UL && ((((*l_1449) = l_1447[5][2]) , ((*l_893) |= l_1418)) , 0xBA8101D1BB97E9C9LL)), l_1420[1], p_22) ^ make_int3((-2L), (-2L), (-2L)))), make_int3(32, 32, 32)))).x, 0x122EE2AAL).x && 1UL) != l_1420[2]) >= 0x41AA77D9L) < 0x9BF34FC08C1CDA81LL) , 5L)) >= (*l_1404)) , p_22) , 1L))) == p_22), p_1812->g_549.z)), p_22)))))
                    { /* block id: 589 */
                        return l_1190;
                    }
                    else
                    { /* block id: 591 */
                        l_1420[2] = ((*l_1404) = l_1450);
                        return p_21;
                    }
                }
            }
            (*l_1451) = func_55(&l_1184, p_22, ((*l_893) ^= (make_ulong1(0x3C2542506F40856ALL).x >= p_22)), p_22, (*p_1812->g_241), p_1812);
        }
    }
    else
    { /* block id: 601 */
        __shared__ uint32_t l_1452;
        l_1452 = 0x0CE8229DL;
        int3 l_1456 = make_int3(1L, (-2L), 1L);
        int64_t **l_1459 = nullptr;
        ulong3 l_1462 = make_ulong3(0x840546909FE7904FLL, 1UL, 0x840546909FE7904FLL);
        uint32_t *l_1470 = nullptr;
        __shared__ uint32_t *l_1471;
        l_1471 = nullptr;
        int32_t l_1472 = 1L;
        uint8_t l_1473 = 0x69L;
        int32_t l_1474 = 0x7DAA453FL;
        // attempting a hip shared for loop
        __shared__ uint8_t *l_1475[3][7][9];
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 7; j++)
            {
                for (int k = 0; k < 9; k++)
                    l_1475[i][j][k] = &hip_const_4.f2;
            }
        }
        uint32_t *l_1476[5];
        // attempting a hip shared for loop
        __shared__ uint8_t l_1477[5][1][5];
        for (int i = 0; i < 5; i++)
        {
            for (int j = 0; j < 1; j++)
            {
                for (int k = 0; k < 5; k++)
                    l_1477[i][j][k] = 0x16L;
            }
        }
        int i, j, k;
        for (int i = 0; i < 5; i++)
            l_1476[i] = nullptr;
        (*l_1404) = l_1452;
        p_1812->g_776.x ^= ((safe_div_func_int8_t_s_s(((((make_int2(l_1455.z, l_1455.z) ^ make_int2(l_1456.x, l_1456.x))).y < (p_1812->g_1270.x = (l_1456.y < (safe_sub_func_uint32_t_u_u(((((*l_1404) = make_uchar4(0xDEL, ((&l_891 != l_1459) || (l_1474 = (((safe_sub(((make_ulong2(l_1462.x, l_1462.x) ^ make_ulong2(0xF7EFBC1303D3F2B7LL, 0x534BC5146A8620A5LL))), make_ulong2(p_1812->g_1463.z, p_1812->g_1463.z)))).x == ((l_1472 = (((0xB65D2D2EL == ((((make_ulong1(l_1464.y) & ((safe_mul(make_ulong1(0xAB3CF3F72B4F1819LL), make_ulong1(l_1467.x)))))).x < p_22) > (*l_1404))) | (safe_mul_func_int32_t_s_s(0x5CAFDB9DL, l_1462.z))) != l_1456.x)) , l_1473)))), 0xAAL, 6UL).z) & 0xEDL) | l_1452), (*p_1812->g_140)))))) && 18446744073709551614UL), l_1462.z)) > p_1812->g_781.y);
        l_1477[2][0][1]--;
    }
    return &p_1812->g_81;
}


/* ------------------------------------------ */
/* 
 * reads : p_1812->g_476.f0
 * writes:
 */
__device__ int16_t  func_27(int32_t * p_28, int32_t  p_29, struct S2 * p_1812)
{ /* block id: 228 */
    return p_1812->g_476[2][1].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1812->g_443 p_1812->g_384 hip_const_3 hip_const_11 hip_const_1 p_1812->g_404 p_1812->g_237 p_1812->g_590 p_1812->g_81 p_1812->g_583 hip_const_2 p_1812->g_140 p_1812->g_154 p_1812->g_549 hip_const_8 p_1812->g_635 p_1812->g_643 p_1812->g_652 p_1812->g_664 p_1812->g_666 p_1812->g_568
 * writes: p_1812->g_443 p_1812->g_140 p_1812->g_583 p_1812->g_325 p_1812->g_90 p_1812->g_568
 */
__device__ int32_t * func_30(int32_t * p_31, uint8_t  p_32, struct S2 * p_1812)
{ /* block id: 196 */
    uint32_t l_539 = 4UL;
    union U0 l_561 = {0xEFL};
    int32_t l_570[7] = {0L, 0L, 0L, 0L, 0L, 0L, 0L};
    int32_t l_576 = 0x3A439D51L;
    int32_t l_577[10] = {0x5E097D61L, 0x071F8124L, 0x5E097D61L, 0x071F8124L, 0x5E097D61L, 0x071F8124L, 0x5E097D61L, 0x071F8124L, 0x5E097D61L, 0x071F8124L};
    uint32_t l_580 = 6UL;
    ushort4 l_591 = make_ushort4(0x1C80L, 0x3702L, 0x1C80L, 0x3702L);
    __shared__ ushort1 l_594;
    l_594 = make_ushort1(0x0D3FL);
    ushort1 l_595 = make_ushort1(0x09DBL);
    int3 l_596 = make_int3(1L, 0xC3DEE917L, 1L);
    uint8_t *l_597 = nullptr;
    uint8_t *l_598[9][6][4] = {{{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}, {{&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}, {&hip_const_8, &hip_const_8, &p_1812->g_81, &p_1812->g_81}}};
    int32_t **l_601 = &p_1812->g_140;
    int8_t *l_609 = &l_561.f0;
    __shared__ int8_t **l_608;
    l_608 = &l_609;
    int64_t *l_623 = &p_1812->g_90;
    int1 l_659 = make_int1((-8L));
    int1 l_665 = make_int1(0x7B4DA627L);
    int4 l_671 = make_int4((-7L), (-7L), (-7L), (-7L));
    int i, j, k;
    for (p_1812->g_443 = (-4); (p_1812->g_443 < 11); p_1812->g_443++)
    { /* block id: 199 */
        int32_t *l_536 = nullptr;
        int32_t *l_537 = &hip_const_11[1];
        int32_t *l_538 = &hip_const_4.f1;
        ulong1 l_548 = make_ulong1(18446744073709551615UL);
        int32_t *l_562 = nullptr;
        int32_t l_563 = (-9L);
        int8_t *l_569[7][2][10] = {{{&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}, {&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}}, {{&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}, {&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}}, {{&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}, {&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}}, {{&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}, {&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}}, {{&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}, {&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}}, {{&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}, {&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}}, {{&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}, {&l_561.f0, &l_561.f0, nullptr, &hip_const_7, &hip_const_7, &hip_const_7, nullptr, &l_561.f0, &l_561.f0, &hip_const_7}}};
        int64_t ***l_574 = nullptr;
        int64_t ****l_573[10][2][1] = {{{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}, {{&l_574}, {&l_574}}};
        int16_t *l_578 = nullptr;
        int16_t *l_579 = &p_1812->g_325;
        union U1 l_581 = {-1L};
        int32_t **l_582[7] = {&l_536, &l_537, &l_536, &l_537, &l_536, &l_537, &l_536};
        int i, j, k;
        l_539++;
        l_563 = (((255UL > (((p_32 >= (l_539 != 0x87L)) <= ((((safe_sub_func_uint16_t_u_u((((p_1812->g_384.x && (safe_mul_func_int16_t_s_s((hip_const_3 , (((((make_ulong1(1UL) ^ ((make_ulong1(l_548.x) | make_ulong1(p_1812->g_549.w))))) ^ make_ulong1(18446744073709551615UL))).x && (safe_rshift_func_int32_t_s_s(((safe_add(make_int1(p_1812->g_554.x), make_int1((-1L))))).x, 25)))), ((safe_lshift_func_uint32_t_u_s((((make_char1(((l_539 < (safe_lshift_func_int8_t_s_s((safe_div_func_int32_t_s_s((l_561 , 0xD789472DL), l_561.f0)), 5))) > l_539)).x , 0x98A2101BL) , 0x8940L) >= (-1L)), 9)) || p_32)))) & p_32) ^ 0x06D2075DL), p_32)) >= 1UL) || (*l_537)) >= p_32)) ^ hip_const_1)) && p_1812->g_404) < l_539);
        p_1812->g_140 = p_31;
    }
    (*l_601) = (make_char1((safe_mul_func_int16_t_s_s((+(make_long2(l_570[2], (-1L)).y <= p_32)), (p_1812->g_237 && ((((safe_mod(((((safe_lshift(make_ushort4(p_1812->g_590.x, p_1812->g_590.x, p_1812->g_590.x, p_1812->g_590.x), make_ushort4(16, 16, 16, 16)))) ^ make_ushort4(l_591.w, l_591.w, l_591.w, l_591.w))), ((safe_mod(((make_ushort4(l_594.x, l_594.x, l_594.x, l_594.x) ^ make_ushort4(l_595.x, l_595.x, l_595.x, l_595.x))), make_ushort4(0UL, 4UL, 0xF129L, make_ushort4(l_595.x, (p_1812->g_81 <= (((make_int4(l_596.x, l_596.x, l_596.x, l_596.x).x >= l_570[4]) , ((make_char1(0x91L).x || (p_32 || (l_577[8] = l_596.y))) >= ((safe_lshift_func_uint64_t_u_u((make_char1(l_591.x).x >= (-4L)), 56)) & l_596.y))) , 0x56322214L)), 0x6651L, l_539).w))))))) | make_ushort4(0xFBC7L, 0xFBC7L, 0xFBC7L, 0xFBC7L))).y)))).x , &hip_const_11[1]);
    for (p_1812->g_583 = 5; (p_1812->g_583 == 54); p_1812->g_583 = safe_add_func_uint8_t_u_u(p_1812->g_583, 4))
    { /* block id: 214 */
        int8_t *l_607 = &hip_const_7;
        int8_t **l_606 = &l_607;
        int8_t **l_611 = nullptr;
        __shared__ int8_t ***l_610;
        l_610 = &l_611;
        int16_t *l_614 = nullptr;
        int16_t *l_615 = &hip_const_6;
        __shared__ int16_t *l_616;
        l_616 = nullptr;
        int16_t *l_617 = &p_1812->g_325;
        int32_t l_622 = 0xAB1D1A01L;
        int32_t *l_624 = &l_570[5];
        uint1 l_640 = make_uint1(0UL);
        uint32_t *l_647 = &hip_const_1;
        uint32_t *l_648 = nullptr;
        uint32_t *l_649[4][7] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
        uint64_t *l_672 = nullptr;
        uint64_t *l_673 = nullptr;
        uint64_t *l_674 = nullptr;
        uint64_t *l_675 = nullptr;
        uint64_t *l_676 = &hip_const_2;
        uint64_t *l_677 = nullptr;
        __shared__ uint64_t *l_678;
        l_678 = nullptr;
        uint64_t *l_679 = nullptr;
        uint64_t *l_680[8] = {&p_1812->g_448, &p_1812->g_448, &p_1812->g_448, &p_1812->g_448, &p_1812->g_448, &p_1812->g_448, &p_1812->g_448, &p_1812->g_448};
        uint16_t *l_681 = &p_1812->g_568[4];
        int i, j;
        l_577[5] ^= (((~0x34736891L) < ((safe_mod_func_int32_t_s_s((l_606 != ((*l_610) = l_608)), (((((safe_rshift_func_int64_t_s_u((hip_const_2 ^ ((*l_617) = 0x57A7L)), 33)) >= (((((0xD487F4C3L ^ (safe_add_func_int8_t_s_s(0x0DL, (**l_601)))) >= ((safe_sub_func_int8_t_s_s((p_32 , (**l_601)), 4L)) & p_32)) || 4UL) != l_622) || p_32)) , p_1812->g_154.z) && p_1812->g_549.z) , (**l_601)))) != hip_const_8)) & 7L);
        (*l_624) ^= (nullptr != l_623);
        l_596.x &= (((**l_611) = (safe_add_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((*l_681) &= (safe_mul_func_uint64_t_u_u((l_622 &= (((safe_add_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u((!(((make_uint1(p_1812->g_635.y) ^ make_uint1(0xCFC7BE5CL))).x , (((~((safe_div(((((safe_div(make_uint2(l_640.x, l_640.x), ((make_uint2(0x728A9D9EL, ((safe_div_func_int16_t_s_s((p_1812->g_443 = (0xDAL == (make_char3(p_1812->g_643.x, p_1812->g_643.x, p_1812->g_643.x).y || (safe_mul_func_int32_t_s_s((-1L), ((l_577[4] = (safe_unary_minus_func_uint8_t_u(3UL))) < 0x0ADFA4ADL)))))), (((safe_mod_func_uint32_t_u_u((make_uint2(p_1812->g_652.x, p_1812->g_652.x).y , (safe_mul_func_int32_t_s_s(((safe_add_func_uint64_t_u_u((p_32 != ((safe_unary_minus(((safe_mod(make_int1(l_659.x), ((safe_add(((safe_rshift(make_int1(p_1812->g_664.y), make_int1(32)))), make_int1(l_665.x)))))))))).x), (make_long2(7L, ((*l_623) = p_32)).x <= ((p_1812->g_666 == &p_32) <= ((safe_sub(((safe_lshift(make_int1(0x921F2799L), make_int1(32)))), ((make_int1(make_int3((-1L), (-5L), 0x606E9C20L).z) ^ make_int1(l_671.y)))))).x)))) && 0xC9E4CC06B4D52BFALL), (*l_624)))), 0xBC49A118L)) >= p_32) || (*l_624)))) , 0x31E4A75AL)) | make_uint2(1UL, 1UL)))))) ^ make_uint2(0xB4C31AC1L, 0xB4C31AC1L))), make_uint2(7UL, 7UL)))).x) && (*l_624)) , p_32))), p_32)) , (**l_601)) >= (**l_601)), (*l_624))) || 0xB4D546C81EFA05B4LL) != (*l_624))), 0x3B646AC634077601LL))), (*l_624))), 0x23B3L))) & (**l_601));
    }
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1812->g_105 p_1812->g_443 p_1812->g_439 p_1812->g_467 p_1812->g_81 hip_const_3 p_1812->g_448 p_1812->g_527 p_1812->g_154 p_1812->g_531
 * writes: p_1812->g_443 p_1812->g_324 p_1812->g_154 p_1812->g_531
 */
__device__ int32_t * func_33(int32_t  p_34, uint32_t  p_35, uint8_t * p_36, union U1  p_37, struct S2 * p_1812)
{ /* block id: 181 */
    // attempting a hip shared for loop
    __shared__ uint64_t *l_491[7][7][3];
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j < 7; j++)
        {
            for (int k = 0; k < 3; k++)
                l_491[i][j][k] = &hip_const_2;
        }
    }
    int32_t l_492 = 0xF94AC295L;
    short1 l_493 = make_short1(1L);
    int16_t *l_494 = &hip_const_6;
    int16_t *l_495 = &hip_const_6;
    int16_t *l_496 = &hip_const_6;
    int16_t *l_497 = nullptr;
    int16_t *l_498 = &p_1812->g_443;
    __shared__ int32_t l_507;
    l_507 = 0x5FC18ED5L;
    int8_t *l_517 = nullptr;
    __shared__ int8_t **l_516;
    l_516 = &l_517;
    int8_t *l_518 = nullptr;
    union U0 *l_524 = &hip_const_4;
    union U0 **l_523[1][8] = {{&l_524, &l_524, &l_524, &l_524, &l_524, &l_524, &l_524, &l_524}};
    __shared__ union U0 ***l_522;
    l_522 = &l_523[0][0];
    union U0 ***l_525 = &l_523[0][6];
    // attempting a hip shared for loop
    __shared__ union U0 ****l_521[10][2][2];
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 2; k++)
                l_521[i][j][k] = &l_522;
        }
    }
    union U0 *****l_526 = &p_1812->g_324;
    // attempting a hip shared for loop
    __shared__ int32_t *l_528[4];
    for (int i = 0; i < 4; i++)
        l_528[i] = &hip_const_13.f1;
    int16_t l_530 = 0xA2E3L;
    int i, j, k;
    for (int i = 0; i < 4; i++)
        l_528[i] = &hip_const_13.f1;
    for (p_37.f0 = 17; (p_37.f0 != 9); p_37.f0--)
    { /* block id: 184 */
        union U0 *l_489 = &hip_const_13;
        union U0 **l_488[8] = {&l_489, &l_489, &l_489, &l_489, &l_489, &l_489, &l_489, &l_489};
        union U0 *l_490 = &hip_const_4;
        int i;
        l_490 = &hip_const_13;
    }
    if (p_37.f0)
        goto lbl_529;
lbl_529:
    p_1812->g_154.y ^= (((*l_526) = (((l_492 = p_1812->g_105.z) & ((!((*l_498) |= make_short4(l_493.x, l_493.x, l_493.x, l_493.x).x)) <= ((safe_div_func_int32_t_s_s(((p_1812->g_439.y <= ((((safe_add_func_int8_t_s_s(((((make_char1((nullptr == &p_1812->g_325)) & make_char1((-5L)))) & make_char1((safe_rshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u((l_507 = p_1812->g_467.y), 4L)), (safe_lshift_func_int64_t_s_s((((safe_rshift_func_uint64_t_u_s((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint32_t_u_u((((*l_516) = &hip_const_7) == l_518), ((safe_rshift_func_uint64_t_u_u(l_493.x, p_37.f0)) , 0xC5F75B2FL))), 7)), l_493.x)) >= p_1812->g_81) < l_493.x), 14))))))).x, 0xE5L)) | hip_const_3) , 0xC2F70400L) && p_34)) >= p_1812->g_448), l_493.x)) && l_493.x))) , l_521[3][1][0])) == p_1812->g_527);
    p_1812->g_531--;
    return &hip_const_11[1];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ int32_t  func_38(union U1  p_39, uint32_t  p_40, struct S2 * p_1812)
{ /* block id: 178 */
    int32_t *l_478 = &hip_const_13.f1;
    int32_t *l_479 = &hip_const_4.f1;
    int32_t *l_480[8];
    uint8_t l_481 = 9UL;
    int i;
    for (int i = 0; i < 8; i++)
        l_480[i] = &hip_const_11[0];
    l_481++;
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1812->g_154
 */
__device__ union U1  func_41(int64_t  p_42, uint8_t * p_43, uint8_t * p_44, uint8_t * p_45, uint8_t * p_46, struct S2 * p_1812)
{ /* block id: 3 */
    __shared__ int32_t l_49;
    l_49 = 3L;
    uint8_t *l_61 = &hip_const_8;
    int32_t l_72 = (-1L);
    ulong1 l_194 = make_ulong1(6UL);
    int32_t l_199 = (-1L);
    __shared__ int32_t l_202;
    l_202 = (-6L);
    int32_t l_203 = (-1L);
    int32_t l_205 = (-1L);
    int32_t l_208 = 0x7F8D69C6L;
    int32_t l_209 = 0x05B03ECCL;
    int32_t l_210 = 0xD7A7FA21L;
    int1 l_211 = make_int1((-10L));
    int32_t *l_219[8] = {nullptr, &hip_const_13.f1, nullptr, &hip_const_13.f1, nullptr, &hip_const_13.f1, nullptr, &hip_const_13.f1};
    __shared__ char2 l_230;
    l_230 = make_char2(0L, 0xABL);
    short4 l_264 = make_short4(0xA536L, 0x928BL, 0xA536L, 0x928BL);
    union U0 ****l_276 = nullptr;
    int16_t l_281 = 0xE8A2L;
    long1 l_329 = make_long1(3L);
    ulong1 l_350 = make_ulong1(6UL);
    ulong3 l_351 = make_ulong3(0UL, 0xB02E67E09A93390ELL, 0UL);
    short2 l_402 = make_short2(8L, 1L);
    int16_t l_403 = (-1L);
    ulong3 l_440 = make_ulong3(3UL, 18446744073709551614UL, 3UL);
    union U0 *****l_470 = &l_276;
    union U1 l_475 = {0x58CA349EL};
    int i;
    for (p_42 = 22; (p_42 <= (-20)); p_42--)
    { /* block id: 6 */
        int64_t *l_64 = &hip_const_3;
        __shared__ int64_t *l_65;
        l_65 = &hip_const_3;
        int64_t *l_66 = &hip_const_3;
        int64_t *l_67 = &hip_const_3;
        int64_t *l_68 = &hip_const_3;
        int64_t *l_69 = &hip_const_3;
        int64_t *l_70 = &hip_const_3;
        int64_t *l_71 = &hip_const_3;
        union U1 l_73 = {-7L};
        __shared__ uint8_t *l_169;
        l_169 = &hip_const_9;
        int32_t l_201 = 0x73D293EEL;
        int32_t l_204 = 0x8FE9995BL;
        __shared__ int32_t l_206;
        l_206 = (-3L);
        int32_t l_207 = 6L;
        int4 l_212 = make_int4((-6L), 0x2E1C4210L, (-6L), 0x2E1C4210L);
        int64_t l_214 = (-1L);
        uint8_t l_216 = 255UL;
        union U0 *l_245 = nullptr;
        __shared__ union U0 **l_244;
        l_244 = &l_245;
        union U0 ***l_243 = &l_244;
        // attempting a hip shared for loop
        __shared__ int16_t *l_258[10];
        for (int i = 0; i < 10; i++)
            l_258[i] = &hip_const_6;
        char2 l_261 = make_char2(0x9EL, 0x10L);
        uint32_t l_280 = 0x9DB4A787L;
        union U0 *l_282 = nullptr;
        long2 l_286 = make_long2(1L, 0x8AED1166AE4A5FECLL);
        uint3 l_332 = make_uint3(0xB0D0AC69L, 0x953DAB9EL, 0xB0D0AC69L);
        __shared__ int64_t **l_337;
        l_337 = &p_1812->g_334[7][1];
        int64_t l_339[10][9] = {{0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}, {0L, 0L, 0x0F16202968CAF494LL, 8L, (-1L), 8L, 0x0F16202968CAF494LL, 0L, 0L}};
        ulong2 l_352 = make_ulong2(0xD52D8BE1264C1F11LL, 0xF9147FA53BCFEC69LL);
        char2 l_412 = make_char2(0x8DL, (-4L));
        uint1 l_436 = make_uint1(0x8B9A1175L);
        __shared__ uint32_t l_456;
        l_456 = 0x8BA2D4EAL;
        union U0 *****l_469 = &l_276;
        int i, j;
    }
    p_1812->g_154.w = p_42;
    return l_475;
}


/* ------------------------------------------ */
/* 
 * reads : p_1812->g_128 hip_const_6 hip_const_11 hip_const_9 hip_const_2 hip_const_3 p_1812->g_154 hip_const_14
 * writes:
 */
__device__ uint8_t  func_50(int32_t * p_51, int32_t  p_52, int32_t  p_53, uint8_t * p_54, struct S2 * p_1812)
{ /* block id: 61 */
    int16_t *l_170 = &hip_const_6;
    int3 l_172 = make_int3(0xA5692F92L, 0L, 0xA5692F92L);
    uint32_t *l_173 = &hip_const_1;
    uint32_t *l_174 = &hip_const_1;
    __shared__ uint32_t *l_175;
    l_175 = nullptr;
    int32_t l_183 = (-1L);
    int32_t l_184[3][4][6] = {{{0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}}, {{0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}}, {{0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}, {0xCB941C5EL, 0x632126A5L, 0x867B80CBL, 0xB08C51EAL, (-4L), 0x4EDE82F0L}}};
    int32_t *l_185[6] = {nullptr, &l_183, nullptr, &l_183, nullptr, &l_183};
    uint16_t l_186 = 0x0A57L;
    uint16_t l_189[10] = {0x32AEL, 0xB561L, 0x32AEL, 0xB561L, 0x32AEL, 0xB561L, 0x32AEL, 0xB561L, 0x32AEL, 0xB561L};
    int i, j, k;
    l_184[2][0][2] |= ((make_ulong4((l_170 == l_170), (((l_172.x = make_uint4(((p_1812->g_128.y , (safe_unary_minus_func_int16_t_s((l_172.x >= l_172.y)))) > hip_const_6), 0UL, 4294967295UL, 1UL).w) & ((*p_51) ^ (((safe_unary_minus_func_uint16_t_u((((*p_54) > (safe_div_func_uint32_t_u_u((((safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((*p_54), hip_const_2)), 0x11FC20C0B13E44FBLL)) <= p_53) <= hip_const_3), p_1812->g_154.y))) >= p_52))) , hip_const_14) >= (*p_54)))) ^ (*p_51)), l_172.y, 0x44EA9E6CEF8C5BBALL).y > l_183) , l_172.y);
    --l_186;
    p_53 &= (-1L);
    ++l_189[7];
    return hip_const_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1812->g_81 p_1812->g_109 p_1812->g_90 hip_const_8 hip_const_7 p_1812->g_128 p_1812->g_134 p_1812->g_140 hip_const_4 hip_const_3 hip_const_14 p_1812->g_154 p_1812->g_105 p_1812->g_166
 * writes: p_1812->g_81 p_1812->g_85 p_1812->g_140 p_1812->g_166
 */
__device__ int32_t * func_55(uint8_t * p_56, uint32_t  p_57, int64_t  p_58, int8_t  p_59, union U1  p_60, struct S2 * p_1812)
{ /* block id: 8 */
    uint8_t l_74 = 7UL;
    int32_t l_80[3][1];
    uint32_t l_96[6];
    ushort4 l_108 = make_ushort4(4UL, 65535UL, 4UL, 65535UL);
    int32_t *l_122 = &l_80[1][0];
    long4 l_138 = make_long4(1L, (-1L), 1L, (-1L));
    __shared__ union U0 *l_155;
    l_155 = nullptr;
    int32_t *l_161 = &hip_const_11[1];
    int32_t *l_162 = &hip_const_11[1];
    int32_t *l_163 = nullptr;
    int32_t *l_164 = nullptr;
    int32_t *l_165[7] = {nullptr, &hip_const_4.f1, nullptr, &hip_const_4.f1, nullptr, &hip_const_4.f1, nullptr};
    int i, j;
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 1; j++)
            l_80[i][j] = (-1L);
    }
    for (int i = 0; i < 6; i++)
        l_96[i] = 18446744073709551615UL;
    if (l_74)
    { /* block id: 9 */
        __shared__ int32_t *l_75;
        l_75 = &hip_const_11[1];
        int32_t *l_76 = &hip_const_4.f1;
        int32_t *l_77 = nullptr;
        int32_t *l_78 = &hip_const_11[1];
        __shared__ int32_t *l_79;
        l_79 = &hip_const_11[2];
        int32_t l_87 = 0x432CFE06L;
        // attempting a hip shared for loop
        __shared__ int32_t l_88[10];
        for (int i = 0; i < 10; i++)
            l_88[i] = 0xA4E93F46L;
        __shared__ int64_t l_95;
        l_95 = 0x979D12DC1848BC0DLL;
        ulong3 l_131 = make_ulong3(0UL, 0x33E333570BABF467LL, 0UL);
        union U1 *l_142 = &hip_const_5;
        __shared__ union U0 *l_157;
        l_157 = &hip_const_4;
        union U0 **l_156 = &l_157;
        int i;
lbl_144:
        l_80[0][0] &= 0xD33F623BL;
        ++p_1812->g_81;
        for (p_57 = 0; (p_57 <= 0); p_57 += 1)
        { /* block id: 14 */
            int32_t **l_84[2];
            __shared__ int16_t l_91;
            l_91 = (-9L);
            int64_t *l_115 = &hip_const_3;
            // attempting a hip shared for loop
            __shared__ uint16_t l_121[2];
            for (int i = 0; i < 2; i++)
                l_121[i] = 65535UL;
            ulong4 l_132 = make_ulong4(0xAB9BFD8F9DC3F5DALL, 0xFEA248F7BE4936EBLL, 0xAB9BFD8F9DC3F5DALL, 0xFEA248F7BE4936EBLL);
            uint2 l_139 = make_uint2(0xE0336C12L, 9UL);
            int i;
            for (int i = 0; i < 2; i++)
                l_84[i] = &l_76;
            for (int i = 0; i < 2; i++)
                l_121[i] = 65535UL;
            p_1812->g_85 = l_78;
            for (p_60.f0 = 0; (p_60.f0 <= 0); p_60.f0 += 1)
            { /* block id: 18 */
                int32_t l_86[4][2][2] = {{{0L, (-1L)}, {0L, (-1L)}}, {{0L, (-1L)}, {0L, (-1L)}}, {{0L, (-1L)}, {0L, (-1L)}}, {{0L, (-1L)}, {0L, (-1L)}}};
                int16_t l_89[4];
                uint16_t l_92 = 1UL;
                int64_t **l_112 = nullptr;
                int64_t *l_114 = nullptr;
                int64_t **l_113 = &l_114;
                int16_t *l_116 = nullptr;
                int16_t *l_117 = &l_89[1];
                __shared__ int32_t *l_141;
                l_141 = &l_80[0][0];
                int i, j, k;
                for (int i = 0; i < 4; i++)
                    l_89[i] = 0L;
                ++l_92;
                ++l_96[5];
                if (((safe_mod_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(4294967291UL, (~(0xB9C5361ACFDDCEC7LL || ((safe_lshift(make_ulong2(p_1812->g_105.z, p_1812->g_105.z), make_ulong2(64, 64)))).y)))), (((safe_rshift_func_uint64_t_u_u(0xEB048EBA309C9891LL, (((((make_ushort4(l_108.y, l_108.y, l_108.y, l_108.y).x < (((l_80[(p_57 + 2)][p_60.f0] > 0x0500D59FL) == p_1812->g_109) < ((*l_117) ^= (safe_lshift_func_int8_t_s_u(((l_115 = ((*l_113) = (p_1812->g_90 , &p_58))) == nullptr), (*p_56)))))) <= 0xEEBB8701L) , p_60.f0) | 0x11D2L) | p_59))) == l_108.x) || hip_const_7))) < p_60.f0))
                { /* block id: 24 */
                    uint32_t l_118 = 0x923BBB90L;
                    l_118++;
                    l_121[0] &= 0xD3B4E339L;
                    for (l_87 = 9; (l_87 >= 0); l_87 -= 1)
                    { /* block id: 29 */
                        int8_t l_123 = (-1L);
                        ulong2 l_133 = make_ulong2(2UL, 0x1E74E04448CB307BLL);
                        uint64_t *l_135[5][1][10] = {{{nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2}}, {{nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2}}, {{nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2}}, {{nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2}}, {{nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2, nullptr, &hip_const_2}}};
                        int i, j, k;
                        l_122 = &hip_const_11[1];
                        l_88[(p_60.f0 + 7)] &= l_123;
                        l_88[(p_57 + 8)] = (0x2BL >= (((safe_div_func_int8_t_s_s((safe_div_func_uint8_t_u_u(0x47L, 0x75L)), make_uchar4(p_1812->g_128.y, p_1812->g_128.y, p_1812->g_128.y, p_1812->g_128.y).y)) > (l_118 > ((l_86[2][1][0] ^= ((safe_rshift(((make_ulong1(l_131.z) & ((make_ulong1(l_132.x) & make_ulong1(make_ulong4(l_133.x, l_133.x, l_133.x, l_133.x).x))))), make_ulong1(p_1812->g_134.y)))).x) != (l_80[(p_57 + 2)][p_60.f0] = (&l_91 != nullptr))))) <= ((safe_sub(make_uint1((((-1L) >= 0xF5E1EA3A65F83DE7LL) ^ ((*l_115) = make_long2(l_138.z, l_138.z).y))), make_uint1(l_139.y)))).x));
                    }
                    p_1812->g_140 = p_1812->g_140;
                }
                else
                { /* block id: 38 */
                    union U1 **l_143 = &l_142;
                    uint8_t l_153 = 7UL;
                    l_141 = &hip_const_11[2];
                    (*l_143) = l_142;
                    if (p_59)
                        goto lbl_144;
                    for (l_87 = 0; (l_87 <= 9); l_87 += 1)
                    { /* block id: 44 */
                        int i, j, k;
                        p_1812->g_85 = &l_88[l_87];
                        l_88[(p_57 + 5)] &= ((((hip_const_4 , (0xAF3FL == (!(safe_lshift_func_uint64_t_u_s(1UL, ((safe_mul_func_uint8_t_u_u((l_86[(p_60.f0 + 1)][p_57][p_57] , ((((((make_uchar1(1UL) & make_uchar1(251UL))) ^ make_uchar1(0x22L))) ^ make_uchar1(0UL))).x), (safe_mod_func_uint16_t_u_u(((-6L) || hip_const_3), (p_57 , p_59))))) != (safe_div_func_int32_t_s_s((make_ulong3(((4UL & l_153) || p_1812->g_105.w), 18446744073709551615UL, 0x4C580974543277FALL).y ^ p_59), p_57)))))))) | (*p_56)) | hip_const_14) & 0x3233C0C7L);
                        return &hip_const_11[0];
                    }
                }
                l_88[1] = make_int1(p_1812->g_154.y).x;
            }
        }
        (*l_156) = l_155;
    }
    else
    { /* block id: 54 */
        int32_t l_160 = 0x4852D9DEL;
        l_160 = ((*l_122) ^= (0xBC268F25B8A72973LL == (safe_mod_func_int64_t_s_s(p_1812->g_105.y, p_59))));
        return &hip_const_11[2];
    }
    ++p_1812->g_166;
    return &hip_const_11[1];
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S2 c_1813;
    struct S2* p_1812 = &c_1813;
    struct S2 c_1814 = {
        .g_17 = 0xACAEC2B2L,
        .g_81 = 9UL,
        .g_85 = &hip_const_13.f1,
        .g_90 = (-4L),
        .g_105 = make_ulong4(0UL, 0x43A2B23C0CBE003ALL, 0UL, 0x43A2B23C0CBE003ALL),
        .g_109 = 0UL,
        .g_128 = make_uchar2(1UL, 0xEFL),
        .g_134 = make_ulong3(0x9BD9C482C0EE4DF8LL, 0x38842E75287BB0CCLL, 0x9BD9C482C0EE4DF8LL),
        .g_140 = nullptr,
        .g_154 = make_int4((-3L), 0xBF21D4AAL, (-3L), 0xBF21D4AAL),
        .g_166 = 18446744073709551615UL,
        .g_237 = 1UL,
        .g_241 = &hip_const_5,
        .g_240 = &p_1812->g_241,
        .g_324 = nullptr,
        .g_325 = 1L,
        .g_334 = {{&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}, {&hip_const_3, &hip_const_3, &hip_const_3}},
        .g_333 = &p_1812->g_334[0][2],
        .g_377 = &hip_const_5,
        .g_384 = make_uint2(0x8BEB2042L, 18446744073709551615UL),
        .g_404 = 0xBB46EC1913867332LL,
        .g_439 = make_long2(0x25134BA70878BC4DLL, (-5L)),
        .g_443 = 0xE3CAL,
        .g_448 = 0UL,
        .g_467 = make_char3((-4L), 0L, (-4L)),
        .g_476 = {{{0xAE782D04L}, {0xAE782D04L}, {0xA7C79F22L}}, {{0xAE782D04L}, {0xAE782D04L}, {0xA7C79F22L}}, {{0xAE782D04L}, {0xAE782D04L}, {0xA7C79F22L}}},
        .g_527 = nullptr,
        .g_531 = 8UL,
        .g_549 = make_ulong4(0UL, 18446744073709551606UL, 0UL, 18446744073709551606UL),
        .g_554 = make_int1(9L),
        .g_564 = make_int1((-3L)),
        .g_567 = make_uint4(0x6972555EL, 4UL, 0x6972555EL, 4UL),
        .g_568 = {0x9B02L, 0x99A7L, 0x9B02L, 0x99A7L, 0x9B02L},
        .g_575 = {{&p_1812->g_333, nullptr}, {&p_1812->g_333, nullptr}, {&p_1812->g_333, nullptr}, {&p_1812->g_333, nullptr}, {&p_1812->g_333, nullptr}},
        .g_583 = 1UL,
        .g_590 = make_ushort1(0x819DL),
        .g_635 = make_uint3(5UL, 1UL, 5UL),
        .g_643 = make_char2(0x02L, 0x5AL),
        .g_652 = make_uint1(0x071E3B58L),
        .g_664 = make_int3(0x4749AC99L, (-6L), 0x4749AC99L),
        .g_666 = nullptr,
        .g_682 = make_ushort4(0xFDCCL, 0x6825L, 0xFDCCL, 0x6825L),
        .g_688 = 0L,
        .g_754 = 1L,
        .g_776 = make_int2(0xEB220A22L, 0L),
        .g_781 = make_ulong2(1UL, 0x571838B84368A1DDLL),
        .g_794 = make_uchar2(255UL, 0x93L),
        .g_796 = make_int1((-1L)),
        .g_816 = make_char1(0L),
        .g_845 = make_short3(0x488EL, 0x5716L, 0x488EL),
        .g_860 = make_short1((-9L)),
        .g_875 = nullptr,
        .g_878 = 2L,
        .g_888 = make_ushort4(0UL, 0x12DFL, 0UL, 0x12DFL),
        .g_941 = make_short2((-8L), 0xC166L),
        .g_959 = 9L,
        .g_1012 = {{&hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10}, {&hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10}, {&hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10}, {&hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10}, {&hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10, &hip_const_10}},
        .g_1011 = {{{nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}}, {{nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}}, {{nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}, {nullptr, &p_1812->g_1012[2][7], nullptr, &p_1812->g_1012[0][4]}}},
        .g_1025 = nullptr,
        .g_1024 = &p_1812->g_1025,
        .g_1023 = &p_1812->g_1024,
        .g_1059 = &p_1812->g_1011[0][1][0],
        .g_1078 = (-1L),
        .g_1088 = make_int3((-1L), 0xF5E5C226L, (-1L)),
        .g_1127 = make_uint3(0xB7C85A5FL, 0xE85CDB49L, 0xB7C85A5FL),
        .g_1128 = make_uint3(0x8A85207FL, 0xFFD8BF24L, 0x8A85207FL),
        .g_1145 = make_char3(0xCFL, 0xD7L, 0xCFL),
        .g_1197 = make_uint1(0xAE8509CCL),
        .g_1257 = make_long1(0x9609DE7C181A8093LL),
        .g_1267 = nullptr,
        .g_1270 = make_uint3(1UL, 0x9194EC3AL, 1UL),
        .g_1286 = make_int3(1L, 0L, 1L),
        .g_1307 = &p_1812->g_575[0][0],
        .g_1317 = make_ulong1(7UL),
        .g_1370 = make_long3(1L, (-1L), 1L),
        .g_1376 = &p_1812->g_333,
        .g_1385 = &p_1812->g_109,
        .g_1401 = make_ushort4(0x25BBL, 65526UL, 0x25BBL, 65526UL),
        .g_1405 = 3UL,
        .g_1430 = make_int4(5L, 0x4FFAFBCEL, 5L, 0x4FFAFBCEL),
        .g_1441 = make_int4(8L, 0x0160C2FAL, 8L, 0x0160C2FAL),
        .g_1463 = make_ulong3(0x03737B60D3D1E605LL, 0xCCF495BEC4F48F75LL, 0x03737B60D3D1E605LL),
        .g_1483 = {{0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}, {0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}, {0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}, {0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}, {0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}, {0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}, {0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}, {0xDDL, 0x03L, 247UL, 255UL, 0x03L, 246UL, 0x03L, 255UL}},
        .g_1484 = make_uint1(1UL),
        .g_1485 = 0xC4BD0B6866027239LL,
        .g_1496 = make_int2(0x95CB0BDCL, 0x16798418L),
        .g_1506 = nullptr,
        .g_1533 = (-1L),
        .g_1543 = make_uchar2(247UL, 2UL),
        .g_1544 = make_uchar4(1UL, 9UL, 1UL, 9UL),
        .g_1546 = make_uchar2(0x25L, 1UL),
        .g_1584 = make_uchar4(0UL, 0x44L, 0UL, 0x44L),
        .g_1589 = make_long2(0L, (-1L)),
        .g_1592 = make_short4(1L, 0x51CAL, 1L, 0x51CAL),
        .g_1604 = make_int4(0x458D0916L, 0x073E8F67L, 0x458D0916L, 0x073E8F67L),
        .g_1612 = make_int4(0x30CBFECEL, (-1L), 0x30CBFECEL, (-1L)),
        .g_1615 = make_int1(0x9B4C6C63L),
        .g_1616 = make_int1(0L),
        .g_1617 = make_int3(8L, 1L, 8L),
        .g_1626 = nullptr,
        .g_1625 = {{&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}, {&p_1812->g_1626, &p_1812->g_1626}},
        .g_1642 = make_ulong3(0x31BB27BA4F4A86BALL, 0x1744E054A9147ADBLL, 0x31BB27BA4F4A86BALL),
        .g_1678 = &p_1812->g_875,
        .g_1698 = make_char1(0xDEL),
        .g_1699 = make_char3(6L, (-1L), 6L),
        .g_1724 = 0x28A1L,
        .g_1752 = make_uint1(4294967295UL),
        .g_1755 = make_uint2(0UL, 0x57B64038L),
        .g_1796 = make_char1(0L),
        .g_1800 = make_int2(0x4A3B9C94L, 0xF6EB072CL),
    };
    c_1813 = c_1814;

    // Execute core logic
    func_1(p_1812);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    transparent_crc(hip_const_2, "hip_const_2", print_hash_value);
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    transparent_crc(hip_const_7, "hip_const_7", print_hash_value);
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9, "hip_const_9", print_hash_value);
    transparent_crc(hip_const_10, "hip_const_10", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        transparent_crc(hip_const_11[i], "hip_const_11[i]", print_hash_value);

    }
    transparent_crc(hip_const_12, "hip_const_12", print_hash_value);
    transparent_crc(hip_const_14, "hip_const_14", print_hash_value);
    transparent_crc(p_1812->g_17, "p_1812->g_17", print_hash_value);
    transparent_crc(p_1812->g_81, "p_1812->g_81", print_hash_value);
    transparent_crc(p_1812->g_90, "p_1812->g_90", print_hash_value);
    transparent_crc(p_1812->g_105.x, "p_1812->g_105.x", print_hash_value);
    transparent_crc(p_1812->g_105.y, "p_1812->g_105.y", print_hash_value);
    transparent_crc(p_1812->g_105.z, "p_1812->g_105.z", print_hash_value);
    transparent_crc(p_1812->g_105.w, "p_1812->g_105.w", print_hash_value);
    transparent_crc(p_1812->g_109, "p_1812->g_109", print_hash_value);
    transparent_crc(p_1812->g_128.x, "p_1812->g_128.x", print_hash_value);
    transparent_crc(p_1812->g_128.y, "p_1812->g_128.y", print_hash_value);
    transparent_crc(p_1812->g_134.x, "p_1812->g_134.x", print_hash_value);
    transparent_crc(p_1812->g_134.y, "p_1812->g_134.y", print_hash_value);
    transparent_crc(p_1812->g_134.z, "p_1812->g_134.z", print_hash_value);
    transparent_crc(p_1812->g_154.x, "p_1812->g_154.x", print_hash_value);
    transparent_crc(p_1812->g_154.y, "p_1812->g_154.y", print_hash_value);
    transparent_crc(p_1812->g_154.z, "p_1812->g_154.z", print_hash_value);
    transparent_crc(p_1812->g_154.w, "p_1812->g_154.w", print_hash_value);
    transparent_crc(p_1812->g_166, "p_1812->g_166", print_hash_value);
    transparent_crc(p_1812->g_237, "p_1812->g_237", print_hash_value);
    transparent_crc(p_1812->g_325, "p_1812->g_325", print_hash_value);
    transparent_crc(p_1812->g_384.x, "p_1812->g_384.x", print_hash_value);
    transparent_crc(p_1812->g_384.y, "p_1812->g_384.y", print_hash_value);
    transparent_crc(p_1812->g_404, "p_1812->g_404", print_hash_value);
    transparent_crc(p_1812->g_439.x, "p_1812->g_439.x", print_hash_value);
    transparent_crc(p_1812->g_439.y, "p_1812->g_439.y", print_hash_value);
    transparent_crc(p_1812->g_443, "p_1812->g_443", print_hash_value);
    transparent_crc(p_1812->g_448, "p_1812->g_448", print_hash_value);
    transparent_crc(p_1812->g_467.x, "p_1812->g_467.x", print_hash_value);
    transparent_crc(p_1812->g_467.y, "p_1812->g_467.y", print_hash_value);
    transparent_crc(p_1812->g_467.z, "p_1812->g_467.z", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            transparent_crc(p_1812->g_476[i][j].f0, "p_1812->g_476[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1812->g_531, "p_1812->g_531", print_hash_value);
    transparent_crc(p_1812->g_549.x, "p_1812->g_549.x", print_hash_value);
    transparent_crc(p_1812->g_549.y, "p_1812->g_549.y", print_hash_value);
    transparent_crc(p_1812->g_549.z, "p_1812->g_549.z", print_hash_value);
    transparent_crc(p_1812->g_549.w, "p_1812->g_549.w", print_hash_value);
    transparent_crc(p_1812->g_554.x, "p_1812->g_554.x", print_hash_value);
    transparent_crc(p_1812->g_564.x, "p_1812->g_564.x", print_hash_value);
    transparent_crc(p_1812->g_567.x, "p_1812->g_567.x", print_hash_value);
    transparent_crc(p_1812->g_567.y, "p_1812->g_567.y", print_hash_value);
    transparent_crc(p_1812->g_567.z, "p_1812->g_567.z", print_hash_value);
    transparent_crc(p_1812->g_567.w, "p_1812->g_567.w", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        transparent_crc(p_1812->g_568[i], "p_1812->g_568[i]", print_hash_value);

    }
    transparent_crc(p_1812->g_583, "p_1812->g_583", print_hash_value);
    transparent_crc(p_1812->g_590.x, "p_1812->g_590.x", print_hash_value);
    transparent_crc(p_1812->g_635.x, "p_1812->g_635.x", print_hash_value);
    transparent_crc(p_1812->g_635.y, "p_1812->g_635.y", print_hash_value);
    transparent_crc(p_1812->g_635.z, "p_1812->g_635.z", print_hash_value);
    transparent_crc(p_1812->g_643.x, "p_1812->g_643.x", print_hash_value);
    transparent_crc(p_1812->g_643.y, "p_1812->g_643.y", print_hash_value);
    transparent_crc(p_1812->g_652.x, "p_1812->g_652.x", print_hash_value);
    transparent_crc(p_1812->g_664.x, "p_1812->g_664.x", print_hash_value);
    transparent_crc(p_1812->g_664.y, "p_1812->g_664.y", print_hash_value);
    transparent_crc(p_1812->g_664.z, "p_1812->g_664.z", print_hash_value);
    transparent_crc(p_1812->g_682.x, "p_1812->g_682.x", print_hash_value);
    transparent_crc(p_1812->g_682.y, "p_1812->g_682.y", print_hash_value);
    transparent_crc(p_1812->g_682.z, "p_1812->g_682.z", print_hash_value);
    transparent_crc(p_1812->g_682.w, "p_1812->g_682.w", print_hash_value);
    transparent_crc(p_1812->g_688, "p_1812->g_688", print_hash_value);
    transparent_crc(p_1812->g_754, "p_1812->g_754", print_hash_value);
    transparent_crc(p_1812->g_776.x, "p_1812->g_776.x", print_hash_value);
    transparent_crc(p_1812->g_776.y, "p_1812->g_776.y", print_hash_value);
    transparent_crc(p_1812->g_781.x, "p_1812->g_781.x", print_hash_value);
    transparent_crc(p_1812->g_781.y, "p_1812->g_781.y", print_hash_value);
    transparent_crc(p_1812->g_794.x, "p_1812->g_794.x", print_hash_value);
    transparent_crc(p_1812->g_794.y, "p_1812->g_794.y", print_hash_value);
    transparent_crc(p_1812->g_796.x, "p_1812->g_796.x", print_hash_value);
    transparent_crc(p_1812->g_816.x, "p_1812->g_816.x", print_hash_value);
    transparent_crc(p_1812->g_845.x, "p_1812->g_845.x", print_hash_value);
    transparent_crc(p_1812->g_845.y, "p_1812->g_845.y", print_hash_value);
    transparent_crc(p_1812->g_845.z, "p_1812->g_845.z", print_hash_value);
    transparent_crc(p_1812->g_860.x, "p_1812->g_860.x", print_hash_value);
    transparent_crc(p_1812->g_878, "p_1812->g_878", print_hash_value);
    transparent_crc(p_1812->g_888.x, "p_1812->g_888.x", print_hash_value);
    transparent_crc(p_1812->g_888.y, "p_1812->g_888.y", print_hash_value);
    transparent_crc(p_1812->g_888.z, "p_1812->g_888.z", print_hash_value);
    transparent_crc(p_1812->g_888.w, "p_1812->g_888.w", print_hash_value);
    transparent_crc(p_1812->g_941.x, "p_1812->g_941.x", print_hash_value);
    transparent_crc(p_1812->g_941.y, "p_1812->g_941.y", print_hash_value);
    transparent_crc(p_1812->g_959, "p_1812->g_959", print_hash_value);
    transparent_crc(p_1812->g_1078, "p_1812->g_1078", print_hash_value);
    transparent_crc(p_1812->g_1088.x, "p_1812->g_1088.x", print_hash_value);
    transparent_crc(p_1812->g_1088.y, "p_1812->g_1088.y", print_hash_value);
    transparent_crc(p_1812->g_1088.z, "p_1812->g_1088.z", print_hash_value);
    transparent_crc(p_1812->g_1127.x, "p_1812->g_1127.x", print_hash_value);
    transparent_crc(p_1812->g_1127.y, "p_1812->g_1127.y", print_hash_value);
    transparent_crc(p_1812->g_1127.z, "p_1812->g_1127.z", print_hash_value);
    transparent_crc(p_1812->g_1128.x, "p_1812->g_1128.x", print_hash_value);
    transparent_crc(p_1812->g_1128.y, "p_1812->g_1128.y", print_hash_value);
    transparent_crc(p_1812->g_1128.z, "p_1812->g_1128.z", print_hash_value);
    transparent_crc(p_1812->g_1145.x, "p_1812->g_1145.x", print_hash_value);
    transparent_crc(p_1812->g_1145.y, "p_1812->g_1145.y", print_hash_value);
    transparent_crc(p_1812->g_1145.z, "p_1812->g_1145.z", print_hash_value);
    transparent_crc(p_1812->g_1197.x, "p_1812->g_1197.x", print_hash_value);
    transparent_crc(p_1812->g_1257.x, "p_1812->g_1257.x", print_hash_value);
    transparent_crc(p_1812->g_1270.x, "p_1812->g_1270.x", print_hash_value);
    transparent_crc(p_1812->g_1270.y, "p_1812->g_1270.y", print_hash_value);
    transparent_crc(p_1812->g_1270.z, "p_1812->g_1270.z", print_hash_value);
    transparent_crc(p_1812->g_1286.x, "p_1812->g_1286.x", print_hash_value);
    transparent_crc(p_1812->g_1286.y, "p_1812->g_1286.y", print_hash_value);
    transparent_crc(p_1812->g_1286.z, "p_1812->g_1286.z", print_hash_value);
    transparent_crc(p_1812->g_1317.x, "p_1812->g_1317.x", print_hash_value);
    transparent_crc(p_1812->g_1370.x, "p_1812->g_1370.x", print_hash_value);
    transparent_crc(p_1812->g_1370.y, "p_1812->g_1370.y", print_hash_value);
    transparent_crc(p_1812->g_1370.z, "p_1812->g_1370.z", print_hash_value);
    transparent_crc(p_1812->g_1401.x, "p_1812->g_1401.x", print_hash_value);
    transparent_crc(p_1812->g_1401.y, "p_1812->g_1401.y", print_hash_value);
    transparent_crc(p_1812->g_1401.z, "p_1812->g_1401.z", print_hash_value);
    transparent_crc(p_1812->g_1401.w, "p_1812->g_1401.w", print_hash_value);
    transparent_crc(p_1812->g_1405, "p_1812->g_1405", print_hash_value);
    transparent_crc(p_1812->g_1430.x, "p_1812->g_1430.x", print_hash_value);
    transparent_crc(p_1812->g_1430.y, "p_1812->g_1430.y", print_hash_value);
    transparent_crc(p_1812->g_1430.z, "p_1812->g_1430.z", print_hash_value);
    transparent_crc(p_1812->g_1430.w, "p_1812->g_1430.w", print_hash_value);
    transparent_crc(p_1812->g_1441.x, "p_1812->g_1441.x", print_hash_value);
    transparent_crc(p_1812->g_1441.y, "p_1812->g_1441.y", print_hash_value);
    transparent_crc(p_1812->g_1441.z, "p_1812->g_1441.z", print_hash_value);
    transparent_crc(p_1812->g_1441.w, "p_1812->g_1441.w", print_hash_value);
    transparent_crc(p_1812->g_1463.x, "p_1812->g_1463.x", print_hash_value);
    transparent_crc(p_1812->g_1463.y, "p_1812->g_1463.y", print_hash_value);
    transparent_crc(p_1812->g_1463.z, "p_1812->g_1463.z", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            transparent_crc(p_1812->g_1483[i][j], "p_1812->g_1483[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1812->g_1484.x, "p_1812->g_1484.x", print_hash_value);
    transparent_crc(p_1812->g_1485, "p_1812->g_1485", print_hash_value);
    transparent_crc(p_1812->g_1496.x, "p_1812->g_1496.x", print_hash_value);
    transparent_crc(p_1812->g_1496.y, "p_1812->g_1496.y", print_hash_value);
    transparent_crc(p_1812->g_1533, "p_1812->g_1533", print_hash_value);
    transparent_crc(p_1812->g_1543.x, "p_1812->g_1543.x", print_hash_value);
    transparent_crc(p_1812->g_1543.y, "p_1812->g_1543.y", print_hash_value);
    transparent_crc(p_1812->g_1544.x, "p_1812->g_1544.x", print_hash_value);
    transparent_crc(p_1812->g_1544.y, "p_1812->g_1544.y", print_hash_value);
    transparent_crc(p_1812->g_1544.z, "p_1812->g_1544.z", print_hash_value);
    transparent_crc(p_1812->g_1544.w, "p_1812->g_1544.w", print_hash_value);
    transparent_crc(p_1812->g_1546.x, "p_1812->g_1546.x", print_hash_value);
    transparent_crc(p_1812->g_1546.y, "p_1812->g_1546.y", print_hash_value);
    transparent_crc(p_1812->g_1584.x, "p_1812->g_1584.x", print_hash_value);
    transparent_crc(p_1812->g_1584.y, "p_1812->g_1584.y", print_hash_value);
    transparent_crc(p_1812->g_1584.z, "p_1812->g_1584.z", print_hash_value);
    transparent_crc(p_1812->g_1584.w, "p_1812->g_1584.w", print_hash_value);
    transparent_crc(p_1812->g_1589.x, "p_1812->g_1589.x", print_hash_value);
    transparent_crc(p_1812->g_1589.y, "p_1812->g_1589.y", print_hash_value);
    transparent_crc(p_1812->g_1592.x, "p_1812->g_1592.x", print_hash_value);
    transparent_crc(p_1812->g_1592.y, "p_1812->g_1592.y", print_hash_value);
    transparent_crc(p_1812->g_1592.z, "p_1812->g_1592.z", print_hash_value);
    transparent_crc(p_1812->g_1592.w, "p_1812->g_1592.w", print_hash_value);
    transparent_crc(p_1812->g_1604.x, "p_1812->g_1604.x", print_hash_value);
    transparent_crc(p_1812->g_1604.y, "p_1812->g_1604.y", print_hash_value);
    transparent_crc(p_1812->g_1604.z, "p_1812->g_1604.z", print_hash_value);
    transparent_crc(p_1812->g_1604.w, "p_1812->g_1604.w", print_hash_value);
    transparent_crc(p_1812->g_1612.x, "p_1812->g_1612.x", print_hash_value);
    transparent_crc(p_1812->g_1612.y, "p_1812->g_1612.y", print_hash_value);
    transparent_crc(p_1812->g_1612.z, "p_1812->g_1612.z", print_hash_value);
    transparent_crc(p_1812->g_1612.w, "p_1812->g_1612.w", print_hash_value);
    transparent_crc(p_1812->g_1615.x, "p_1812->g_1615.x", print_hash_value);
    transparent_crc(p_1812->g_1616.x, "p_1812->g_1616.x", print_hash_value);
    transparent_crc(p_1812->g_1617.x, "p_1812->g_1617.x", print_hash_value);
    transparent_crc(p_1812->g_1617.y, "p_1812->g_1617.y", print_hash_value);
    transparent_crc(p_1812->g_1617.z, "p_1812->g_1617.z", print_hash_value);
    transparent_crc(p_1812->g_1642.x, "p_1812->g_1642.x", print_hash_value);
    transparent_crc(p_1812->g_1642.y, "p_1812->g_1642.y", print_hash_value);
    transparent_crc(p_1812->g_1642.z, "p_1812->g_1642.z", print_hash_value);
    transparent_crc(p_1812->g_1698.x, "p_1812->g_1698.x", print_hash_value);
    transparent_crc(p_1812->g_1699.x, "p_1812->g_1699.x", print_hash_value);
    transparent_crc(p_1812->g_1699.y, "p_1812->g_1699.y", print_hash_value);
    transparent_crc(p_1812->g_1699.z, "p_1812->g_1699.z", print_hash_value);
    transparent_crc(p_1812->g_1724, "p_1812->g_1724", print_hash_value);
    transparent_crc(p_1812->g_1752.x, "p_1812->g_1752.x", print_hash_value);
    transparent_crc(p_1812->g_1755.x, "p_1812->g_1755.x", print_hash_value);
    transparent_crc(p_1812->g_1755.y, "p_1812->g_1755.y", print_hash_value);
    transparent_crc(p_1812->g_1796.x, "p_1812->g_1796.x", print_hash_value);
    transparent_crc(p_1812->g_1800.x, "p_1812->g_1800.x", print_hash_value);
    transparent_crc(p_1812->g_1800.y, "p_1812->g_1800.y", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

