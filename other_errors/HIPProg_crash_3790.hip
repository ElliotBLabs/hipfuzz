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
// Seed: 1131187544

/* --- Struct/Union Declarations --- */
// ------------------------------------------------------------------
// Constant Memory Declarations
// ------------------------------------------------------------------
__constant__ int32_t hip_const_1;
__constant__ uint32_t hip_const_2[4];
__constant__ uint16_t hip_const_3;
__constant__ int16_t hip_const_4;
__constant__ uint16_t hip_const_5;
__constant__ int16_t hip_const_6;
__constant__ int32_t hip_const_7;
__constant__ int16_t hip_const_8;
__constant__ uint32_t hip_const_9;
__constant__ int32_t hip_const_10;

// ------------------------------------------------------------------
// Constant Memory Setup
// ------------------------------------------------------------------
void setup_hip_constants() {
        int32_t host_hip_const_1 = (-1L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_1, &host_hip_const_1, sizeof(host_hip_const_1)));
        uint32_t host_hip_const_2[4] = {1UL, 0x477862FDL, 1UL, 0x477862FDL};
        HIP_CHECK(hipMemcpyToSymbol(hip_const_2, &host_hip_const_2, sizeof(host_hip_const_2)));
        uint16_t host_hip_const_3 = 0x57A7L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_3, &host_hip_const_3, sizeof(host_hip_const_3)));
        int16_t host_hip_const_4 = 1L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_4, &host_hip_const_4, sizeof(host_hip_const_4)));
        uint16_t host_hip_const_5 = 0xADE2L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_5, &host_hip_const_5, sizeof(host_hip_const_5)));
        int16_t host_hip_const_6 = 0xFA5CL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_6, &host_hip_const_6, sizeof(host_hip_const_6)));
        int32_t host_hip_const_7 = 0x08974B66L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_7, &host_hip_const_7, sizeof(host_hip_const_7)));
        int16_t host_hip_const_8 = (-8L);
        HIP_CHECK(hipMemcpyToSymbol(hip_const_8, &host_hip_const_8, sizeof(host_hip_const_8)));
        uint32_t host_hip_const_9 = 0x67F5ED9AL;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_9, &host_hip_const_9, sizeof(host_hip_const_9)));
        int32_t host_hip_const_10 = 0xC0001115L;
        HIP_CHECK(hipMemcpyToSymbol(hip_const_10, &host_hip_const_10, sizeof(host_hip_const_10)));
}

struct S0 {
    uint64_t g_11;
    uint4 g_14;
    int3 g_26;
    uint32_t *g_41;
    int32_t g_63;
    int32_t g_65;
    int2 g_75;
    ulong3 g_93;
    int32_t *g_112;
    int32_t **g_111;
    int8_t g_115;
    long2 g_121;
    uint8_t g_140;
    uint16_t g_141[8];
    int1 g_146;
    uint32_t g_202[2][2][7];
    uint3 g_218;
    uint4 g_219;
    long4 g_231;
    uint32_t g_242;
    uint32_t g_283;
    int4 g_306;
    int4 g_308;
    short2 g_354;
    uint1 g_361;
    int16_t g_388[9];
    int16_t g_436[1][2][9];
    int16_t g_480[7];
    uint16_t *g_484;
    int1 g_486;
    int3 g_498;
    int64_t *g_512;
    int64_t **g_511[3][7][9];
    uint32_t *g_563[4];
    ulong3 g_613;
    short2 g_623;
    uint4 g_647;
    int8_t *g_709;
    int8_t **g_708[6][8];
    uint64_t g_731[3][5][3];
    long4 g_755;
    short2 g_764;
    ushort3 g_792;
    uchar3 g_813;
    int32_t ***g_833;
    int32_t ****g_832;
    int64_t ***g_863;
    int64_t ****g_862;
    ulong4 g_877;
    uint64_t g_999;
    ulong4 g_1017;
    char2 g_1049;
    char4 g_1050;
    uint2 g_1059;
    ulong1 g_1066;
    ulong1 g_1070;
    int2 g_1086;
    int8_t g_1101;
    uint32_t ***g_1104;
    ulong2 g_1163;
    int2 g_1205;
    int2 g_1208;
    int3 g_1227;
    uchar4 g_1239;
    uint64_t *g_1249;
    uint64_t **g_1248[9][4];
    int8_t g_1285;
    uint32_t **g_1296;
    uint3 g_1335;
    uint3 g_1336;
    uint8_t *g_1340[9][8];
    int1 g_1368;
    int64_t *****g_1377;
    int2 g_1394;
    uchar2 g_1450;
    long3 g_1510;
    uint2 g_1532;
    uint3 g_1536;
    ushort3 g_1565;
    short4 g_1624;
    uint3 g_1640;
    uint1 g_1642;
    uchar2 g_1650;
    uchar3 g_1653;
    int8_t *g_1708;
    int3 g_1717;
    int64_t g_1739;
    int3 g_1785;
    char1 g_1807;
    ushort3 g_1821;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint32_t  func_1(struct S0 * p_1842);
__device__ int32_t  func_2(uint32_t  p_3, int32_t  p_4, struct S0 * p_1842);
__device__ uint16_t  func_5(uint32_t  p_6, int32_t  p_7, struct S0 * p_1842);
__device__ int32_t  func_15(uint64_t  p_16, uint64_t  p_17, uint32_t * p_18, uint8_t  p_19, uint8_t  p_20, struct S0 * p_1842);
__device__ uint16_t  func_28(uint8_t  p_29, uint32_t * p_30, uint32_t * p_31, uint64_t  p_32, uint16_t  p_33, struct S0 * p_1842);
__device__ uint32_t * func_34(uint32_t * p_35, uint32_t * p_36, int8_t  p_37, struct S0 * p_1842);
__device__ uint32_t * func_38(int64_t  p_39, uint32_t  p_40, struct S0 * p_1842);
__device__ int32_t  func_46(uint32_t * p_47, uint32_t * p_48, uint32_t * p_49, struct S0 * p_1842);
__device__ uint32_t * func_51(uint32_t  p_52, int32_t  p_53, struct S0 * p_1842);
__device__ int32_t * func_66(int8_t  p_67, struct S0 * p_1842);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : hip_const_6 p_1842->g_14 p_1842->g_26 hip_const_7 hip_const_8 p_1842->g_41 p_1842->g_65 p_1842->g_75 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_93 p_1842->g_111 p_1842->g_121 hip_const_2 hip_const_10 hip_const_5 p_1842->g_140 p_1842->g_146 hip_const_4 p_1842->g_202 p_1842->g_115 p_1842->g_283 p_1842->g_141 p_1842->g_242 p_1842->g_11 p_1842->g_231 p_1842->g_361 p_1842->g_219 p_1842->g_218 p_1842->g_388 p_1842->g_436 hip_const_9 p_1842->g_308 p_1842->g_486 p_1842->g_498 p_1842->g_511 p_1842->g_563 p_1842->g_484 p_1842->g_623 p_1842->g_708 p_1842->g_112 p_1842->g_731 p_1842->g_709 p_1842->g_999 p_1842->g_877 p_1842->g_613 p_1842->g_1104 p_1842->g_832 p_1842->g_813 p_1842->g_1208 p_1842->g_480 p_1842->g_1049 p_1842->g_306 p_1842->g_1227 p_1842->g_1285 p_1842->g_833 p_1842->g_1565 p_1842->g_1163 p_1842->g_1340 p_1842->g_1624 p_1842->g_1640 p_1842->g_1642 p_1842->g_1450 p_1842->g_1650 p_1842->g_1653 p_1842->g_1050 p_1842->g_1717 p_1842->g_863 p_1842->g_1101 p_1842->g_862 p_1842->g_1785 p_1842->g_1807 p_1842->g_1821 p_1842->g_1368
 * writes: p_1842->g_11 p_1842->g_41 p_1842->g_63 p_1842->g_65 p_1842->g_140 p_1842->g_141 p_1842->g_93 p_1842->g_202 p_1842->g_146 p_1842->g_115 p_1842->g_283 p_1842->g_242 p_1842->g_231 p_1842->g_112 p_1842->g_480 p_1842->g_484 p_1842->g_308 p_1842->g_511 p_1842->g_486 p_1842->g_563 p_1842->g_731 p_1842->g_388 p_1842->g_75 p_1842->g_999 p_1842->g_613 p_1842->g_1101 p_1842->g_833 p_1842->g_813 p_1842->g_1248 p_1842->g_26 p_1842->g_1296 p_1842->g_306 p_1842->g_1227 p_1842->g_1285 p_1842->g_1377 p_1842->g_1565 p_1842->g_354 p_1842->g_1368
 */
__device__ uint32_t  func_1(struct S0 * p_1842)
{ /* block id: 0 */
    uint1 l_8 = make_uint1(4294967295UL);
    uint32_t *l_9 = nullptr;
    // attempting a hip shared for loop
    __shared__ uint32_t *l_10[4][6];
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 6; j++)
            l_10[i][j] = nullptr;
    }
    int8_t *l_1608[1][3];
    int32_t l_1609 = 0xCAE1F975L;
    int32_t l_1612 = (-5L);
    __shared__ int32_t l_1613;
    l_1613 = 3L;
    int32_t l_1795 = (-1L);
    uint64_t l_1802[6] = {0xD5C81F8B68653464LL, 0x1D68E6F65B42741ALL, 0xD5C81F8B68653464LL, 0x1D68E6F65B42741ALL, 0xD5C81F8B68653464LL, 0x1D68E6F65B42741ALL};
    ushort2 l_1818 = make_ushort2(0x74ABL, 4UL);
    int1 l_1826 = make_int1(8L);
    int64_t **l_1835 = &p_1842->g_512;
    int32_t l_1836 = 5L;
    __shared__ int16_t *l_1837;
    l_1837 = nullptr;
    int16_t *l_1838[2][1][10] = {{{&hip_const_4, &hip_const_4, nullptr, &hip_const_4, &hip_const_4, nullptr, &hip_const_4, &hip_const_4, nullptr, &hip_const_4}}, {{&hip_const_4, &hip_const_4, nullptr, &hip_const_4, &hip_const_4, nullptr, &hip_const_4, &hip_const_4, nullptr, &hip_const_4}}};
    int32_t *l_1839 = nullptr;
    __shared__ int32_t *l_1840;
    l_1840 = nullptr;
    int32_t *l_1841 = nullptr;
    int i, j, k;
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 3; j++)
            l_1608[i][j] = nullptr;
    }
    l_1795 ^= func_2((func_5((p_1842->g_11 = make_uint1(l_8.x).x), (hip_const_6 , (safe_lshift_func_uint32_t_u_s(make_uint4(p_1842->g_14.y, p_1842->g_14.y, p_1842->g_14.y, p_1842->g_14.y).y, 26))), p_1842) == (+(p_1842->g_1565.x--))), (+(safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(0x4CL, l_8.x)), ((l_1613 &= (l_1612 = ((l_1609 = (0x2C4FL != 0x4EC2L)) >= ((p_1842->g_1163.x & (safe_mul_func_uint8_t_u_u((p_1842->g_1340[4][3] != nullptr), l_8.x))) && hip_const_2[2])))) != l_8.x)))), p_1842);
    for (l_1609 = 18; (l_1609 == 18); l_1609++)
    { /* block id: 741 */
        int32_t *l_1798 = &l_1612;
        int32_t *l_1799 = nullptr;
        int32_t *l_1800 = &p_1842->g_65;
        int32_t *l_1801[9][7] = {{nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}, {nullptr, nullptr, nullptr, nullptr, nullptr, &l_1609, &l_1612}};
        int i, j;
        l_1802[1]--;
    }
    l_1613 = l_8.x;
    p_1842->g_1368.x ^= ((safe_mod_func_uint16_t_u_u((make_char1(p_1842->g_1807.x).x < (l_1612 ^ (safe_mod_func_int64_t_s_s((~((l_8.x == (l_8.x ^ ((*p_1842->g_484)++))) >= 0xC25FE6CA1DCF858FLL)), l_1795)))), ((((safe_sub_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_u((p_1842->g_354.y = (((((safe_div(make_ushort2(l_1818.y, l_1818.y), ((safe_div(make_ushort2(65531UL, l_1612), make_ushort2(p_1842->g_1821.y, p_1842->g_1821.y))))))) ^ make_ushort2((safe_sub_func_uint32_t_u_u(((((((make_int1((-10L)) ^ ((((safe_lshift(make_int1(l_1826.x), make_int1(((((l_1836 = ((safe_rshift_func_int64_t_s_s((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s((((safe_mul(make_int3(3L, (-1L), 0xAC481814L), make_int3(0x50FF2918L, 0L, 1L)))).x <= 0xC731E480L), (nullptr != l_1835))), l_1802[0])), l_8.x)) != 7UL)) | (-1L)) != l_1612) && p_1842->g_877.x))))) ^ make_int1(0L))))) | make_int1(0x5A75240EL))).x , 1UL) == l_1609), l_8.x)), 65535UL))).x == (-5L))), l_8.x)) ^ 0x59DEA40EC246ABFDLL), l_1802[1])) || l_1802[1]) != 4294967295UL) || l_1795))) , 1L);
    return p_1842->g_498.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_1049 p_1842->g_14 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_65 p_1842->g_111 p_1842->g_709 p_1842->g_115 p_1842->g_484 p_1842->g_141 p_1842->g_1208 p_1842->g_999 p_1842->g_1717 p_1842->g_832 p_1842->g_833 p_1842->g_242 p_1842->g_863 p_1842->g_511 p_1842->g_862 p_1842->g_1785 p_1842->g_361 p_1842->g_1624 p_1842->g_1640 p_1842->g_1642 p_1842->g_1450 p_1842->g_1650 p_1842->g_1653 p_1842->g_1050 p_1842->g_1101
 * writes: p_1842->g_65 p_1842->g_1296 p_1842->g_112 p_1842->g_1101 p_1842->g_999 p_1842->g_63 p_1842->g_141 p_1842->g_833 p_1842->g_242
 */
__device__ int32_t  func_2(uint32_t  p_3, int32_t  p_4, struct S0 * p_1842)
{ /* block id: 647 */
    long2 l_1617 = make_long2(0L, 0x42528FB876BC013ELL);
    long3 l_1618 = make_long3(0xFF337C7754E52984LL, (-1L), 0xFF337C7754E52984LL);
    __shared__ long2 l_1619;
    l_1619 = make_long2(0x0D9FA7F6A592F816LL, 1L);
    int64_t *l_1620 = nullptr;
    int32_t l_1621 = 0xCBA3E3BFL;
    short2 l_1627 = make_short2(6L, 0x1999L);
    uint2 l_1641 = make_uint2(0x6F08BC37L, 4294967287UL);
    uint16_t **l_1645 = nullptr;
    int16_t l_1654[3][4];
    uint8_t *l_1655[3][6] = {{nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}, {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr}};
    int32_t l_1656 = 0xF710857DL;
    __shared__ int32_t *l_1657;
    l_1657 = &hip_const_7;
    uint32_t **l_1658 = nullptr;
    __shared__ uint32_t ***l_1659;
    l_1659 = &p_1842->g_1296;
    ushort4 l_1668 = make_ushort4(0UL, 0xE660L, 0UL, 0xE660L);
    uint64_t l_1696 = 1UL;
    __shared__ int64_t *****l_1704;
    l_1704 = nullptr;
    int32_t l_1732 = 0xA93AE327L;
    int32_t l_1740 = 0x7FEF0B10L;
    int2 l_1741 = make_int2(1L, 0xFE3C5CC9L);
    int4 l_1777 = make_int4(0x82EFBF8EL, 2L, 0x82EFBF8EL, 2L);
    int i, j;
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 4; j++)
            l_1654[i][j] = 1L;
    }
lbl_1766:
    l_1657 = func_66(((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint32_t_u((((l_1621 = ((((make_long4(l_1617.x, l_1617.x, l_1617.x, l_1617.x) | make_long4(l_1618.y, l_1618.y, l_1618.y, l_1618.y))) ^ make_long4(l_1619.y, l_1619.y, l_1619.y, l_1619.y))).x) & (((safe_add_func_int16_t_s_s(((((((make_short2(p_1842->g_1624.y, p_1842->g_1624.y) & ((((safe_lshift(make_short2(l_1627.y, l_1627.y), make_short2((-5L), ((l_1656 = ((safe_rshift_func_int16_t_s_s((((++(*p_1842->g_484)) , ((safe_mul_func_uint32_t_u_u(((safe_rshift(((safe_mul(((safe_mul(make_uint1(4294967295UL), ((make_uint1(p_1842->g_1640.x) & make_uint1(l_1641.x)))))), make_uint1(p_1842->g_1642.x)))), make_uint1(32)))).x, ((l_1627.x == (safe_lshift_func_int8_t_s_u(p_3, ((l_1645 = l_1645) != nullptr)))) != (l_1641.x & p_1842->g_1450.x)))) , ((safe_div_func_int32_t_s_s((((safe_add_func_uint32_t_u_u(4294967295UL, (((((make_uchar3(p_1842->g_1650.x, p_1842->g_1650.x, p_1842->g_1650.x) ^ make_uchar3(((safe_mod(make_uchar4(255UL, 0x6DL, 0x6AL, 253UL), make_uchar4(p_1842->g_1653.y, p_1842->g_1653.y, p_1842->g_1653.y, p_1842->g_1653.y)))).z, 0xABL, (p_3 || 0UL)))) ^ make_uchar3(247UL, 247UL, 247UL))).x >= l_1619.x))) != l_1617.y) && l_1619.x), p_3)) == p_4))) , 0x527BL), p_1842->g_1050.w)) , l_1654[2][0])) >= p_4))))) ^ make_short2((-2L), (-2L)))))) ^ make_short2(0L, 0L))) ^ make_short2(1L, 1L))).y, p_1842->g_1049.x)) >= 0x4EF27976L) & p_3)) > 0L))), l_1627.x)) , 0L), p_1842);
    (*l_1659) = l_1658;
lbl_1710:
    (*p_1842->g_111) = &l_1656;
    for (p_4 = 0; (p_4 >= (-17)); p_4 = safe_sub_func_uint16_t_u_u(p_4, 1))
    { /* block id: 657 */
        int32_t l_1664 = (-1L);
        uint32_t l_1691 = 9UL;
        uint8_t l_1693 = 1UL;
        int64_t *****l_1703[5][4] = {{&p_1842->g_862, &p_1842->g_862, &p_1842->g_862, &p_1842->g_862}, {&p_1842->g_862, &p_1842->g_862, &p_1842->g_862, &p_1842->g_862}, {&p_1842->g_862, &p_1842->g_862, &p_1842->g_862, &p_1842->g_862}, {&p_1842->g_862, &p_1842->g_862, &p_1842->g_862, &p_1842->g_862}, {&p_1842->g_862, &p_1842->g_862, &p_1842->g_862, &p_1842->g_862}};
        __shared__ int32_t *l_1711;
        l_1711 = nullptr;
        __shared__ int32_t l_1735;
        l_1735 = 0xAC1C5C8CL;
        int32_t l_1738[2][10] = {{0x6B80B49FL, (-2L), 1L, 1L, (-2L), 0x6B80B49FL, (-2L), 1L, 1L, (-2L)}, {0x6B80B49FL, (-2L), 1L, 1L, (-2L), 0x6B80B49FL, (-2L), 1L, 1L, (-2L)}};
        short2 l_1773 = make_short2(0x5FD7L, 1L);
        short3 l_1776 = make_short3(7L, (-10L), 7L);
        int64_t **l_1784 = &p_1842->g_512;
        int16_t *l_1788[4] = {nullptr, nullptr, nullptr, nullptr};
        int32_t l_1789[8] = {(-5L), (-5L), 0xE205E925L, (-5L), (-5L), 0xE205E925L, (-5L), (-5L)};
        // attempting a hip shared for loop
        __shared__ uint64_t *l_1790[8];
        for (int i = 0; i < 8; i++)
            l_1790[i] = nullptr;
        int32_t *l_1791 = nullptr;
        int32_t *l_1792 = nullptr;
        int32_t *l_1793 = nullptr;
        int32_t *l_1794 = &l_1740;
        int i, j;
        for (int i = 0; i < 8; i++)
            l_1790[i] = nullptr;
        for (l_1656 = 0; (l_1656 <= 5); l_1656 += 1)
        { /* block id: 660 */
            int32_t l_1674[4][8] = {{1L, 0L, 1L, 0xB3141C13L, 1L, (-6L), 1L, 0xB3141C13L}, {1L, 0L, 1L, 0xB3141C13L, 1L, (-6L), 1L, 0xB3141C13L}, {1L, 0L, 1L, 0xB3141C13L, 1L, (-6L), 1L, 0xB3141C13L}, {1L, 0L, 1L, 0xB3141C13L, 1L, (-6L), 1L, 0xB3141C13L}};
            __shared__ int32_t l_1677;
            l_1677 = (-7L);
            int32_t l_1695 = 1L;
            int32_t l_1697 = 0x58EA5366L;
            // attempting a hip shared for loop
            __shared__ int64_t *****l_1702[4];
            for (int i = 0; i < 4; i++)
                l_1702[i] = &p_1842->g_862;
            uint32_t l_1742 = 1UL;
            int i, j;
            for (int i = 0; i < 4; i++)
                l_1702[i] = &p_1842->g_862;
            for (p_3 = 0; (p_3 <= 5); p_3 += 1)
            { /* block id: 663 */
                int8_t l_1669 = 0x88L;
                int8_t *l_1709[9] = {&p_1842->g_1101, &l_1669, &p_1842->g_1101, &l_1669, &p_1842->g_1101, &l_1669, &p_1842->g_1101, &l_1669, &p_1842->g_1101};
                int32_t l_1712 = 8L;
                int i;
                (*p_1842->g_111) = func_66(p_4, p_1842);
                for (p_1842->g_1101 = 4; (p_1842->g_1101 >= 0); p_1842->g_1101 -= 1)
                { /* block id: 667 */
                    __shared__ ushort1 l_1667;
                    l_1667 = make_ushort1(65535UL);
                    int8_t *l_1675 = nullptr;
                    int8_t *l_1676[10][5] = {{nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}, {nullptr, nullptr, &p_1842->g_1285, nullptr, &p_1842->g_115}};
                    int32_t l_1692 = 0L;
                    int64_t *l_1694[4];
                    int i, j;
                    for (int i = 0; i < 4; i++)
                        l_1694[i] = nullptr;
                    l_1697 ^= (((safe_add_func_uint16_t_u_u(((*p_1842->g_709) == (l_1664 | (safe_div_func_uint16_t_u_u(((make_ushort1(l_1667.x) ^ make_ushort1(65526UL))).x, (p_3 , ((make_ushort3(l_1668.w, l_1668.w, l_1668.w) & make_ushort3(l_1669, 0x9730L, 0x0263L))).y))))), ((make_short3(0x0E6AL, (safe_rshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((l_1677 = l_1674[3][6]), (safe_lshift_func_uint32_t_u_u(((l_1695 &= (safe_div_func_int64_t_s_s((safe_add_func_int64_t_s_s((safe_unary_minus_func_int32_t_s((249UL > (safe_rshift_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(l_1691, (p_4 , l_1692))), p_1842->g_388[3])), l_1693))))), l_1664)), (*l_1657)))) == l_1669), l_1696)))), l_1692)), (*l_1657)) | make_short3((-2L), (-2L), (-2L)))).z)) == (*l_1657)) <= 9UL);
                    for (p_1842->g_999 = 0; (p_1842->g_999 <= 3); p_1842->g_999 += 1)
                    { /* block id: 673 */
                        int8_t l_1705 = 0xE6L;
                        (*l_1657) = (p_4 != (safe_mod_func_uint16_t_u_u(((safe_add_func_int32_t_s_s(((l_1702[2] != (l_1704 = l_1703[1][2])) || l_1705), ((0xB24DL || (((((safe_mul(make_short1(0x123BL), make_short1((&l_1705 != (l_1709[0] = p_1842->g_1708)))))).x >= (*p_1842->g_484)) , 0xDC1995F4L) >= 1UL)) < 18446744073709551610UL))) >= (-6L)), p_1842->g_1208.y)));
                        (*p_1842->g_111) = func_66((*l_1657), p_1842);
                        if (l_1696)
                            goto lbl_1710;
                        (*p_1842->g_111) = &l_1692;
                    }
                    for (l_1621 = 0; (l_1621 <= 5); l_1621 += 1)
                    { /* block id: 683 */
                        l_1711 = &l_1692;
                        l_1695 = ((*l_1657) = p_3);
                        if (l_1712)
                            break;
                    }
                }
            }
            for (p_1842->g_63 = 1; (p_1842->g_63 <= 5); p_1842->g_63 += 1)
            { /* block id: 693 */
                uint8_t l_1723 = 0x07L;
                int32_t l_1731 = 0x12770F4DL;
                int32_t l_1734 = 0x1886DEA7L;
                int32_t l_1736 = 0x84D2EDDEL;
                int3 l_1737 = make_int3((-1L), 0x03D499DDL, (-1L));
                int i;
                for (p_1842->g_999 = 0; (p_1842->g_999 <= 5); p_1842->g_999 += 1)
                { /* block id: 696 */
                    __shared__ uint32_t l_1726;
                    l_1726 = 5UL;
                    int32_t l_1728 = (-2L);
                    // attempting a hip shared for loop
                    __shared__ int32_t l_1733[1];
                    for (int i = 0; i < 1; i++)
                        l_1733[i] = 0xF26823B7L;
                    int i;
                    for (int i = 0; i < 1; i++)
                        l_1733[i] = 0xF26823B7L;
                    if ((safe_sub_func_uint16_t_u_u((+make_ushort1(p_4).x), (--(*p_1842->g_484)))))
                    { /* block id: 698 */
                        return p_3;
                    }
                    else
                    { /* block id: 700 */
                        int32_t *l_1718 = nullptr;
                        int32_t *l_1719 = nullptr;
                        __shared__ int32_t *l_1720;
                        l_1720 = nullptr;
                        int32_t *l_1721 = nullptr;
                        int32_t *l_1722 = nullptr;
                        l_1697 = make_int2(p_1842->g_1717.z, p_1842->g_1717.z).x;
                        l_1723--;
                    }
                    if ((l_1726 &= ((*l_1657) = (*l_1657))))
                    { /* block id: 706 */
                        int32_t *l_1727 = &p_1842->g_65;
                        int32_t *l_1729[2];
                        int32_t l_1730 = 0x57282B8EL;
                        int i;
                        for (int i = 0; i < 2; i++)
                            l_1729[i] = &l_1697;
                        l_1742--;
                        if (p_3)
                            continue;
                        (*l_1657) ^= (-1L);
                    }
                    else
                    { /* block id: 710 */
                        int32_t ***l_1746 = &p_1842->g_111;
                        int32_t ****l_1745 = &l_1746;
                        int32_t *l_1747 = nullptr;
                        int32_t *l_1748 = &l_1728;
                        __shared__ int32_t *l_1749;
                        l_1749 = nullptr;
                        int32_t *l_1750 = &l_1732;
                        int32_t *l_1751 = nullptr;
                        int32_t *l_1752[5];
                        uint32_t l_1753 = 0x9F2106C2L;
                        int i;
                        for (int i = 0; i < 5; i++)
                            l_1752[i] = nullptr;
                        (*l_1745) = ((*p_1842->g_832) = (*p_1842->g_832));
                        --l_1753;
                        if (hip_const_1)
                            goto lbl_1710;
                        if (p_4)
                            break;
                    }
                    return p_4;
                }
                if ((((*p_1842->g_484) = (*p_1842->g_484)) > p_3))
                { /* block id: 720 */
                    __shared__ int32_t *l_1756;
                    l_1756 = &l_1734;
                    __shared__ int32_t *l_1757;
                    l_1757 = nullptr;
                    int32_t *l_1758 = &l_1732;
                    __shared__ int32_t *l_1759;
                    l_1759 = &l_1738[0][3];
                    int32_t *l_1760 = nullptr;
                    int32_t *l_1761 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ int32_t *l_1762[10];
                    for (int i = 0; i < 10; i++)
                        l_1762[i] = &l_1731;
                    __shared__ uint16_t l_1763;
                    l_1763 = 65529UL;
                    int i;
                    l_1763++;
                }
                else
                { /* block id: 722 */
                    for (p_1842->g_242 = 0; (p_1842->g_242 <= 5); p_1842->g_242 += 1)
                    { /* block id: 725 */
                        return p_3;
                    }
                }
            }
        }
        (*l_1657) = (nullptr == (*p_1842->g_863));
        if (p_1842->g_999)
            goto lbl_1766;
        (*l_1794) |= ((l_1738[0][5] = (((safe_mod_func_uint32_t_u_u((safe_add_func_int16_t_s_s(make_short1(l_1773.y).x, ((safe_rshift(make_short4(l_1776.z, l_1776.z, l_1776.z, l_1776.z), make_short4(16, 16, 16, 16)))).y)), make_int1(l_1777.z).x)) , (0xD4AFDF45L & 0xC46EC4C4L)) == (((1L != (((&l_1655[2][1] != ((((safe_mod_func_int16_t_s_s(((*l_1657) = (safe_rshift_func_int64_t_s_s((*l_1657), ((safe_add_func_int16_t_s_s((((**p_1842->g_862) == l_1784) && (make_int1(p_1842->g_1785.y).x == (((*l_1657) > (safe_sub_func_int32_t_s_s((*l_1657), p_3))) ^ 18446744073709551615UL))), p_1842->g_361.x)) , 0x61806DF004F98BDCLL)))), p_4)) , l_1789[3]) != l_1777.w) , &l_1655[0][1])) , 0UL) == p_3)) == (-1L)) , 0UL))) > 0UL);
    }
    return (*l_1657);
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_26 hip_const_7 hip_const_8 p_1842->g_41 p_1842->g_65 p_1842->g_14 p_1842->g_75 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_93 p_1842->g_111 p_1842->g_121 hip_const_2 hip_const_10 hip_const_5 p_1842->g_140 hip_const_6 p_1842->g_146 hip_const_4 p_1842->g_202 p_1842->g_115 p_1842->g_283 p_1842->g_141 p_1842->g_242 p_1842->g_11 p_1842->g_231 p_1842->g_361 p_1842->g_219 p_1842->g_218 p_1842->g_388 p_1842->g_436 hip_const_9 p_1842->g_308 p_1842->g_486 p_1842->g_498 p_1842->g_511 p_1842->g_563 p_1842->g_484 p_1842->g_623 p_1842->g_708 p_1842->g_112 p_1842->g_731 p_1842->g_709 p_1842->g_999 p_1842->g_877 p_1842->g_613 p_1842->g_1104 p_1842->g_832 p_1842->g_813 p_1842->g_1208 p_1842->g_480 p_1842->g_1049 p_1842->g_306 p_1842->g_1227 p_1842->g_1285 p_1842->g_833
 * writes: p_1842->g_41 p_1842->g_63 p_1842->g_65 p_1842->g_140 p_1842->g_141 p_1842->g_93 p_1842->g_202 p_1842->g_146 p_1842->g_115 p_1842->g_283 p_1842->g_242 p_1842->g_231 p_1842->g_112 p_1842->g_480 p_1842->g_484 p_1842->g_308 p_1842->g_11 p_1842->g_511 p_1842->g_486 p_1842->g_563 p_1842->g_731 p_1842->g_388 p_1842->g_75 p_1842->g_999 p_1842->g_613 p_1842->g_1101 p_1842->g_833 p_1842->g_813 p_1842->g_1248 p_1842->g_26 p_1842->g_1296 p_1842->g_306 p_1842->g_1227 p_1842->g_1285 p_1842->g_1377
 */
__device__ uint16_t  func_5(uint32_t  p_6, int32_t  p_7, struct S0 * p_1842)
{ /* block id: 2 */
    ulong3 l_21 = make_ulong3(18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
    uint32_t *l_42 = nullptr;
    int8_t l_938 = 0x33L;
    int32_t *l_1599 = nullptr;
    int32_t *l_1600 = nullptr;
    uint32_t l_1601 = 0x651AA18FL;
    int i;
    p_1842->g_26.z = func_15((~make_ulong3(l_21.z, l_21.z, l_21.z).z), (l_21.z >= (safe_add_func_int32_t_s_s(((safe_sub(make_int4(p_1842->g_26.z, p_1842->g_26.z, p_1842->g_26.z, p_1842->g_26.z), make_int4((safe_unary_minus_func_uint64_t_u(((hip_const_7 < p_7) && func_28(((hip_const_8 | p_7) > 0xC53AL), func_34(func_38(l_21.x, p_6, p_1842), l_42, l_21.x, p_1842), p_1842->g_563[0], hip_const_2[2], l_21.y, p_1842)))), 0x4C40E7AEL, 1L, 0x85D9687FL)))).x, p_6))), l_42, l_938, p_6, p_1842);
    return l_1601;
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_484 p_1842->g_141 p_1842->g_14 p_1842->g_709 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_65 p_1842->g_111 p_1842->g_75 p_1842->g_999 p_1842->g_112 p_1842->g_877 p_1842->g_613 p_1842->g_361 p_1842->g_1104 p_1842->g_832 p_1842->g_115 p_1842->g_731 p_1842->g_202 p_1842->g_813 p_1842->g_1208 p_1842->g_480 hip_const_5 p_1842->g_26 p_1842->g_121 p_1842->g_1049 p_1842->g_306 p_1842->g_1227 p_1842->g_1285 p_1842->g_388 p_1842->g_833
 * writes: p_1842->g_63 p_1842->g_11 p_1842->g_388 p_1842->g_115 p_1842->g_65 p_1842->g_112 p_1842->g_75 p_1842->g_999 p_1842->g_613 p_1842->g_1101 p_1842->g_833 p_1842->g_813 p_1842->g_202 p_1842->g_480 p_1842->g_1248 p_1842->g_26 p_1842->g_1296 p_1842->g_306 p_1842->g_141 p_1842->g_1227 p_1842->g_1285 p_1842->g_1377
 */
__device__ int32_t  func_15(uint64_t  p_16, uint64_t  p_17, uint32_t * p_18, uint8_t  p_19, uint8_t  p_20, struct S0 * p_1842)
{ /* block id: 396 */
    int32_t l_939 = 1L;
    int32_t l_940 = 1L;
    __shared__ uint16_t l_962;
    l_962 = 0x5D07L;
    ushort3 l_973 = make_ushort3(0x8C5EL, 0x84BDL, 0x8C5EL);
    int32_t l_1009 = 1L;
    int32_t l_1011[2];
    ulong3 l_1012 = make_ulong3(18446744073709551609UL, 0x8887519C799B8A6DLL, 18446744073709551609UL);
    uint16_t **l_1018 = &p_1842->g_484;
    uint64_t *l_1055 = nullptr;
    ulong2 l_1069 = make_ulong2(6UL, 0UL);
    int32_t ****l_1081 = &p_1842->g_833;
    uint32_t ***l_1103 = nullptr;
    int64_t *****l_1131 = &p_1842->g_862;
    int32_t l_1139 = 0x4D94C9C6L;
    __shared__ uint16_t l_1142;
    l_1142 = 0xE232L;
    int32_t **l_1150 = &p_1842->g_112;
    ulong4 l_1176 = make_ulong4(1UL, 18446744073709551615UL, 1UL, 18446744073709551615UL);
    uint32_t *l_1234 = &hip_const_2[0];
    int8_t ***l_1263 = &p_1842->g_708[3][7];
    __shared__ int32_t l_1300;
    l_1300 = 1L;
    uint64_t l_1328 = 0x9CEAE2BFA600F101LL;
    __shared__ uint2 l_1337;
    l_1337 = make_uint2(4294967295UL, 0xC7A06AD2L);
    uint3 l_1366 = make_uint3(0x5755689FL, 0UL, 0x5755689FL);
    int3 l_1430 = make_int3(5L, (-1L), 5L);
    int32_t l_1438 = 0xAD2221FBL;
    uint8_t l_1440 = 0x9AL;
    uint32_t l_1494 = 0xFAD6FFB0L;
    uint2 l_1499 = make_uint2(1UL, 0xDF7EAB86L);
    uint8_t **l_1518 = &p_1842->g_1340[1][6];
    uint8_t **l_1521 = &p_1842->g_1340[0][0];
    long3 l_1535 = make_long3((-7L), 0xDFBBB269FE34DE6DLL, (-7L));
    __shared__ short4 l_1579;
    l_1579 = make_short4((-2L), 0x8C1EL, (-2L), 0x8C1EL);
    int32_t *l_1594[5][6] = {{nullptr, &l_1011[0], nullptr, &l_1011[0], nullptr, &l_1300}, {nullptr, &l_1011[0], nullptr, &l_1011[0], nullptr, &l_1300}, {nullptr, &l_1011[0], nullptr, &l_1011[0], nullptr, &l_1300}, {nullptr, &l_1011[0], nullptr, &l_1011[0], nullptr, &l_1300}, {nullptr, &l_1011[0], nullptr, &l_1011[0], nullptr, &l_1300}};
    int i, j;
    for (int i = 0; i < 2; i++)
        l_1011[i] = 1L;
lbl_1238:
    l_940 ^= l_939;
    for (p_1842->g_63 = 25; (p_1842->g_63 != (-5)); p_1842->g_63--)
    { /* block id: 400 */
        int32_t *l_945 = nullptr;
        int32_t l_979 = 0xA68C96EAL;
        int32_t l_992 = 1L;
        int32_t l_997 = 5L;
        __shared__ int32_t l_1005;
        l_1005 = (-7L);
        int32_t l_1007[1][4];
        uint64_t *l_1056 = nullptr;
        __shared__ int8_t l_1095;
        l_1095 = 0L;
        __shared__ int64_t *****l_1125;
        l_1125 = nullptr;
        int32_t l_1140 = 0xFADE831CL;
        __shared__ int16_t l_1141;
        l_1141 = 0x312DL;
        int3 l_1145 = make_int3(0L, 0L, 0L);
        uint64_t l_1177 = 0x9B18A2FADA82CC29LL;
        uint64_t l_1202 = 0x6F76E289A5C2EB9ALL;
        uint32_t *l_1260 = &p_1842->g_202[0][1][4];
        int8_t ***l_1264 = &p_1842->g_708[5][3];
        int4 l_1266 = make_int4(0x2E4FFEEFL, (-1L), 0x2E4FFEEFL, (-1L));
        __shared__ uint16_t l_1308;
        l_1308 = 65535UL;
        __shared__ int32_t ***l_1327;
        l_1327 = nullptr;
        uint64_t ***l_1349 = &p_1842->g_1248[8][3];
        uint64_t l_1386 = 0x5A9B411BE96B4C8DLL;
        uint32_t *l_1408 = &hip_const_2[2];
        __shared__ uint32_t l_1411;
        l_1411 = 0xC5AD90EFL;
        ushort2 l_1412 = make_ushort2(0x2D3EL, 3UL);
        __shared__ uint16_t l_1432;
        l_1432 = 0x293FL;
        int32_t l_1439 = 0L;
        char3 l_1447 = make_char3(0xCCL, (-3L), 0xCCL);
        int64_t **l_1451 = &p_1842->g_512;
        int32_t l_1490 = 0x5693E0A2L;
        uint4 l_1541 = make_uint4(4294967295UL, 1UL, 4294967295UL, 1UL);
        ushort3 l_1562 = make_ushort3(0x8E4AL, 0x26FCL, 0x8E4AL);
        int i, j;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 4; j++)
                l_1007[i][j] = (-1L);
        }
        if (p_16)
        { /* block id: 401 */
            uint32_t l_961 = 18446744073709551615UL;
            int32_t l_978[7][5] = {{6L, 0L, 5L, 0x28174F4FL, 5L}, {6L, 0L, 5L, 0x28174F4FL, 5L}, {6L, 0L, 5L, 0x28174F4FL, 5L}, {6L, 0L, 5L, 0x28174F4FL, 5L}, {6L, 0L, 5L, 0x28174F4FL, 5L}, {6L, 0L, 5L, 0x28174F4FL, 5L}, {6L, 0L, 5L, 0x28174F4FL, 5L}};
            __shared__ uint8_t l_982;
            l_982 = 255UL;
            int32_t *l_1133 = &p_1842->g_65;
            int32_t *l_1134 = nullptr;
            __shared__ int32_t *l_1135;
            l_1135 = nullptr;
            int32_t *l_1136 = &l_1005;
            int32_t *l_1137 = &l_979;
            int32_t *l_1138[10] = {&l_1007[0][2], &l_1007[0][2], &l_1007[0][2], &l_1007[0][2], &l_1007[0][2], &l_1007[0][2], &l_1007[0][2], &l_1007[0][2], &l_1007[0][2], &l_1007[0][2]};
            int i, j;
            for (p_1842->g_11 = 0; (p_1842->g_11 == 53); p_1842->g_11 = safe_add_func_uint64_t_u_u(p_1842->g_11, 4))
            { /* block id: 404 */
                int32_t *l_946 = nullptr;
                uint32_t **l_960 = &p_1842->g_563[2];
                uint32_t ***l_959 = &l_960;
                uint8_t l_970[2][1][7];
                __shared__ int32_t l_976;
                l_976 = 0xF610E41EL;
                int32_t l_998 = 0xBF060C9CL;
                int32_t l_1008 = 0L;
                int32_t l_1010 = 0xFD52BFF9L;
                int1 l_1032 = make_int1((-1L));
                int64_t l_1037 = 0x669D3033AB21D30FLL;
                char4 l_1051 = make_char4(0x23L, (-1L), 0x23L, (-1L));
                __shared__ int8_t l_1096;
                l_1096 = 0x9BL;
                __shared__ uint64_t l_1115;
                l_1115 = 0UL;
                __shared__ int64_t *****l_1130;
                l_1130 = &p_1842->g_862;
                int i, j, k;
                for (int i = 0; i < 2; i++)
                {
                    for (int j = 0; j < 1; j++)
                    {
                        for (int k = 0; k < 7; k++)
                            l_970[i][j][k] = 0x28L;
                    }
                }
                l_946 = l_945;
                for (p_20 = 22; (p_20 <= 59); p_20++)
                { /* block id: 408 */
                    int32_t l_955[5][10] = {{0L, 0xE2679AB2L, 0L, 0xEB71B100L, 0L, 4L, 0xD519F16CL, 0xD519F16CL, 4L, 0L}, {0L, 0xE2679AB2L, 0L, 0xEB71B100L, 0L, 4L, 0xD519F16CL, 0xD519F16CL, 4L, 0L}, {0L, 0xE2679AB2L, 0L, 0xEB71B100L, 0L, 4L, 0xD519F16CL, 0xD519F16CL, 4L, 0L}, {0L, 0xE2679AB2L, 0L, 0xEB71B100L, 0L, 4L, 0xD519F16CL, 0xD519F16CL, 4L, 0L}, {0L, 0xE2679AB2L, 0L, 0xEB71B100L, 0L, 4L, 0xD519F16CL, 0xD519F16CL, 4L, 0L}};
                    int16_t *l_956 = &p_1842->g_388[7];
                    int32_t l_980 = 0x14A6D4E3L;
                    __shared__ int32_t l_981;
                    l_981 = 0x630959C8L;
                    int32_t l_1002 = 0x88F2308BL;
                    int32_t l_1003 = 0x5E370612L;
                    int32_t l_1004 = 0xBAC255F0L;
                    int32_t l_1006 = 0x761187F7L;
                    int32_t *l_1038 = &l_1008;
                    uint64_t *l_1053 = &p_1842->g_999;
                    uint64_t **l_1054 = &l_1053;
                    int3 l_1077 = make_int3(0L, 0x96121AA5L, 0L);
                    __shared__ uchar4 l_1091;
                    l_1091 = make_uchar4(1UL, 0x35L, 1UL, 0x35L);
                    __shared__ uint16_t l_1097;
                    l_1097 = 0x34BAL;
                    int i, j;
                    if ((((7UL >= ((safe_mod_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((safe_mod_func_int16_t_s_s(((*l_956) = (9L < ((1UL && p_20) , l_955[4][1]))), ((*p_1842->g_484) || (*p_1842->g_484)))), (((safe_div_func_int16_t_s_s((((((l_959 == nullptr) != p_1842->g_14.z) != 0x83L) , 0xEDL) < p_19), l_961)) | l_955[1][9]) & p_19))), p_20)) != l_962)) & 0xECL) , (-10L)))
                    { /* block id: 410 */
                        uint64_t *l_969[3][6][9] = {{{&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}}, {{&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}}, {{&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}, {&p_1842->g_731[1][1][1], &p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11, &p_1842->g_731[1][1][1], nullptr, &p_1842->g_11}}};
                        int32_t *l_977[10];
                        int i, j, k;
                        for (int i = 0; i < 10; i++)
                            l_977[i] = &l_939;
                        if (l_962)
                            break;
                        (*p_1842->g_111) = func_66((safe_add_func_uint16_t_u_u(((*p_1842->g_484) || ((safe_rshift_func_uint16_t_u_u((((4294967295UL != (safe_add_func_uint64_t_u_u((l_970[0][0][2] = p_16), p_16))) || ((*p_1842->g_709) = make_char1((1UL < (p_16 , l_961))).x)) < (safe_mul_func_int16_t_s_s(((-7L) > (~(make_ushort3(l_973.z, l_973.z, l_973.z).y > ((safe_mul_func_uint64_t_u_u(l_939, p_17)) && p_19)))), l_976))), (*p_1842->g_484))) ^ 0xF514AC16L)), l_961)), p_1842);
                        ++l_982;
                    }
                    else
                    { /* block id: 416 */
                        int32_t *l_985 = &hip_const_7;
                        // attempting a hip shared for loop
                        __shared__ int32_t *l_986[8];
                        for (int i = 0; i < 8; i++)
                            l_986[i] = &l_981;
                        int i;
                        p_1842->g_75.x |= make_int2(4L, 0L).y;
                        (*p_1842->g_111) = &l_978[6][4];
                        if (l_982)
                            continue;
                    }
                    for (l_979 = 0; (l_979 >= 28); l_979 = safe_add_func_int64_t_s_s(l_979, 4))
                    { /* block id: 423 */
                        int32_t *l_989 = nullptr;
                        int32_t *l_990 = &l_978[3][2];
                        int32_t *l_991 = &hip_const_7;
                        int32_t *l_993 = &l_978[6][4];
                        int32_t *l_994 = &l_981;
                        __shared__ int32_t *l_995;
                        l_995 = nullptr;
                        int32_t *l_996[4][3][8] = {{{&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}}, {{&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}}, {{&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}}, {{&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}, {&l_939, &l_979, nullptr, nullptr, &l_978[6][2], nullptr, &l_992, nullptr}}};
                        int i, j, k;
                        ++p_1842->g_999;
                        l_1012.y--;
                        return p_19;
                    }
                    (*l_1038) &= (((((safe_lshift_func_int16_t_s_s(((*p_1842->g_111) != &l_1011[0]), 14)) >= make_ulong4(p_1842->g_1017.w, p_1842->g_1017.w, p_1842->g_1017.w, p_1842->g_1017.w).w) , l_1018) != &p_1842->g_484) , ((safe_unary_minus_func_uint32_t_u(make_uint4(0UL, (safe_lshift_func_uint16_t_u_u(0x4437L, (((safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s((safe_lshift_func_uint32_t_u_s(((safe_mul_func_int64_t_s_s((((((safe_div(make_int4(l_1032.x, l_1032.x, l_1032.x, l_1032.x), ((safe_rshift(((safe_mod(make_int4((((-1L) ^ (l_978[3][2] = ((*l_956) |= make_short3(1L, 0x50A4L, 6L).x))) , (**p_1842->g_111)), (-1L), (((p_17 , ((((*p_1842->g_111) = nullptr) != &l_992) > (*p_1842->g_709))) ^ l_978[5][4]) ^ l_1037), 0xB6E135E6L), make_int4((-10L), (-10L), (-10L), (-10L))))), make_int4(4L, 4L, 4L, 4L))))))).z , 4294967295UL) ^ 4294967291UL) <= l_1012.z), 0x754646D24B1C211ALL)) , p_19), 19)), p_17)), (*p_1842->g_709))) && p_20) | p_1842->g_93.z))), 0xD01C837DL, 0x1D984842L).x)) | p_1842->g_877.w));
                    if ((safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((((*l_956) = (safe_lshift_func_uint8_t_u_u(l_982, 1))) || 0UL), (safe_sub_func_int32_t_s_s(((0xD5L > ((((((((safe_mul(make_char1(p_1842->g_1049.x), make_char1((-1L))))) ^ make_char1(p_1842->g_1050.w))) | ((~make_char1(p_16))))) ^ make_char1(l_1051.y))).x) >= ((-10L) | ((safe_unary_minus_func_int8_t_s((((*l_1054) = l_1053) == (l_1056 = l_1055)))) >= (safe_add_func_uint32_t_u_u(4294967295UL, make_uint4(p_1842->g_1059.x, p_1842->g_1059.x, p_1842->g_1059.x, p_1842->g_1059.x).y))))), make_uint2(1UL, (((safe_rshift_func_uint32_t_u_s(0xEC7D2FEAL, 16)) && l_978[1][2]) || 0x5A7EA457L)).x)))), 0xDDBD3C23L)))
                    { /* block id: 435 */
                        __shared__ ulong1 l_1073;
                        l_1073 = make_ulong1(0x9C8AE7BC1B6B7D78LL);
                        int i;
                        l_939 ^= (safe_rshift_func_int64_t_s_u((make_short4(0x473FL, 0L, 0L, 0xA8F8L).z <= (safe_div_func_uint64_t_u_u((p_1842->g_613.y |= make_ulong3(p_1842->g_1066.x, p_1842->g_1066.x, p_1842->g_1066.x).x), (safe_rshift_func_uint16_t_u_u((((make_ulong3(l_1069.x, l_1069.x, l_1069.x) ^ make_ulong3(p_1842->g_1070.x, p_1842->g_1070.x, p_1842->g_1070.x))).x , p_20), 3))))), (safe_lshift_func_uint64_t_u_u(make_ulong4(l_1073.x, l_1073.x, l_1073.x, l_1073.x).z, ((safe_unary_minus_func_int32_t_s((l_1011[0] = ((*l_1038) = ((safe_sub(make_int4(l_1077.y, l_1077.y, l_1077.y, l_1077.y), make_int4(0x44382550L, p_20, p_19, 0x1EF34D26L)))).w)))) ^ (-1L))))));
                    }
                    else
                    { /* block id: 440 */
                        int32_t *****l_1080[5] = {&p_1842->g_832, &p_1842->g_832, &p_1842->g_832, &p_1842->g_832, &p_1842->g_832};
                        uint8_t *l_1092 = &l_982;
                        uint8_t *l_1093 = nullptr;
                        uint8_t *l_1094 = &l_970[0][0][4];
                        int i;
                        l_1011[0] ^= ((*l_1038) |= ((safe_sub_func_uint16_t_u_u(make_ushort4(((*p_1842->g_484) = (l_961 , 0UL)), 0xB1D8L, 65532UL, 0xB319L).z, (&p_1842->g_833 != (l_1081 = &p_1842->g_833)))) <= ((((safe_div_func_int32_t_s_s(((safe_div_func_uint16_t_u_u((make_int4(p_1842->g_1086.x, p_1842->g_1086.x, p_1842->g_1086.x, p_1842->g_1086.x).x , (safe_add_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((*l_1094) = ((*l_1092) = make_uchar1(l_1091.y).x)), l_961)), p_19))), ((nullptr == &p_1842->g_41) | 18446744073709551608UL))) < 18446744073709551612UL), l_1095)) ^ p_1842->g_361.x) || l_973.y) | 0x59762508CD2A6147LL)));
                        l_1097--;
                    }
                }
                if ((!0x13A8F365L))
                { /* block id: 450 */
                    uint64_t *l_1100[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                    uint64_t **l_1102 = &l_1056;
                    int32_t ***l_1118 = &p_1842->g_111;
                    int16_t *l_1121 = &hip_const_8;
                    int16_t *l_1122 = &p_1842->g_480[1];
                    __shared__ int32_t *l_1132;
                    l_1132 = &l_979;
                    int i;
                    l_1011[0] |= ((0x62967852L < ((p_1842->g_1101 = 0x83190B3ACED81A36LL) != (((((*l_1102) = &p_16) != &p_1842->g_731[1][1][1]) == ((l_1103 != p_1842->g_1104) > (((make_int4((safe_add_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint64_t_u_u(1UL, 15)), (safe_sub_func_int16_t_s_s((p_19 ^ (*p_1842->g_484)), 0x27E9L)))), p_17)) , p_19), 4L)), p_20, 0xACAD07BBL, 1L).w != l_978[5][2]) ^ p_17) & l_1115))) & p_20))) | 0L);
                    l_1032.x = (safe_rshift_func_int32_t_s_u((((*p_1842->g_832) = l_1118) == nullptr), (make_uint2((safe_lshift_func_uint64_t_u_u(p_20, 19)), make_uint3(((((*l_1122) |= make_short3((-10L), 0xC081L, 0xEDE7L).x) , l_982) & ((safe_div_func_int64_t_s_s(((l_1125 = &p_1842->g_862) == (l_1131 = ((!(((((**l_1102) ^= (nullptr != &p_17)) | make_long4(0xE5F07C59F9A163CALL, 0x950A60A19D704EB5LL, (safe_mod_func_int16_t_s_s(p_1842->g_647.x, (safe_sub_func_int8_t_s_s((((make_char2(((p_1842->g_141[6] < 0x1CL) , p_19), 0L) ^ make_char2((-1L), (-1L)))).y ^ 1UL), p_19)))), p_17).y) <= l_961) <= 0xC9L)) , l_1130))), p_17)) <= (*p_1842->g_484))), 0x6A3BA584L, 0UL).z).x || p_16)));
                    (*l_1132) |= 0x7251D56FL;
                    (*l_1132) &= 0L;
                }
                else
                { /* block id: 462 */
                    l_1007[0][0] = p_20;
                }
                (*p_1842->g_111) = &l_1007[0][2];
            }
            l_978[4][2] ^= p_16;
            ++l_1142;
        }
        else
        { /* block id: 469 */
            uint64_t *l_1164[8][5] = {{&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}, {&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}, {&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}, {&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}, {&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}, {&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}, {&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}, {&p_1842->g_11, &p_1842->g_731[1][1][1], &p_1842->g_731[0][2][2], nullptr, nullptr}};
            int32_t l_1165 = 0x08E922F2L;
            uint32_t l_1178 = 1UL;
            __shared__ int32_t l_1203;
            l_1203 = 0L;
            uchar2 l_1243 = make_uchar2(253UL, 0xE6L);
            __shared__ ushort4 l_1272;
            l_1272 = make_ushort4(0UL, 1UL, 0UL, 1UL);
            uint32_t **l_1295 = &p_1842->g_563[3];
            int32_t l_1303 = 0x3D71113AL;
            __shared__ int8_t l_1304;
            l_1304 = 0L;
            int32_t l_1307 = 0xB809B88BL;
            uint32_t l_1318 = 0xD5038185L;
            uint8_t *l_1338[6][9][4] = {{{nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}}, {{nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}}, {{nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}}, {{nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}}, {{nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}}, {{nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}, {nullptr, nullptr, nullptr, &p_1842->g_140}}};
            ushort3 l_1363 = make_ushort3(0x2FEDL, 0x10F5L, 0x2FEDL);
            int32_t *l_1418 = &l_1009;
            int3 l_1428 = make_int3(1L, 0xC73D09E3L, 1L);
            __shared__ int16_t l_1431;
            l_1431 = 1L;
            int32_t *l_1436 = &l_1203;
            int32_t *l_1437[5][10][5] = {{{&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}}, {{&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}}, {{&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}}, {{&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}}, {{&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}, {&hip_const_7, &l_1165, nullptr, nullptr, &l_940}}};
            int i, j, k;
            l_1011[1] = make_int2(0xCF791A2EL, make_int4(l_1145.x, l_1145.x, l_1145.x, l_1145.x).w).x;
            if ((((((l_1165 = make_int1((((((safe_lshift(make_long3(((safe_rshift_func_uint16_t_u_u(((l_1150 != nullptr) != ((((*p_1842->g_484)--) > p_19) , (safe_sub_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(0x0DB2L, (p_20 < ((safe_div(make_uint4(((make_uint3(0UL, 4294967293UL, (safe_mul_func_uint64_t_u_u((p_17 = (p_1842->g_93.z = make_ulong4(p_1842->g_1163.x, p_1842->g_1163.x, p_1842->g_1163.x, p_1842->g_1163.x).y)), l_1165))) & ((make_uint3(0x59DAD390L, ((safe_div_func_int8_t_s_s((p_16 ^ ((safe_lshift_func_uint16_t_u_s((((*p_1842->g_709) && (safe_lshift_func_int16_t_s_s(((make_short4(0x34EEL, (-10L), 2L, (safe_rshift_func_uint16_t_u_u(((!make_ulong1(l_1176.w).x) >= l_997), (*p_1842->g_484)))) ^ make_short4((-4L), (-4L), (-4L), (-4L)))).z, p_19))) , (*p_1842->g_484)), 2)) < (*p_1842->g_484))), p_19)) < l_1177), 0x4493EDE5L) ^ make_uint3(0xCFC45489L, 0xCFC45489L, 0xCFC45489L))))).z, 0xE14591A0L, 4294967293UL, l_992), make_uint4(0x79C40C20L, 0x79C40C20L, 0x79C40C20L, 0x79C40C20L)))).z))), 0UL)) | p_20), l_1165)))), 8)) & 0x602BBBBBL), l_1165, p_16), make_long3(64, 64, 64)))).x < l_1165) < p_19) == 7UL)).x) , 0xEC184256L) ^ 9L) >= (-1L)) < 1UL))
            { /* block id: 475 */
                int32_t *l_1179[1][2][7] = {{{&l_979, &l_979, &l_979, &l_979, &l_979, &l_979, &l_979}, {&l_979, &l_979, &l_979, &l_979, &l_979, &l_979, &l_979}}};
                __shared__ uint64_t l_1204;
                l_1204 = 0x0D814447F33256B9LL;
                short3 l_1240 = make_short3((-2L), 0x8347L, (-2L));
                long2 l_1299 = make_long2(7L, 0x27B5F5CF7186C35FLL);
                int i, j, k;
                for (l_940 = 0; (l_940 <= 0); l_940 += 1)
                { /* block id: 478 */
                    return l_1178;
                }
                (*p_1842->g_111) = l_1179[0][0][6];
                for (p_1842->g_11 = 0; (p_1842->g_11 >= 2); p_1842->g_11++)
                { /* block id: 484 */
                    int8_t l_1198[1][10] = {{2L, 2L, 0x0BL, 2L, 2L, 0x0BL, 2L, 2L, 0x0BL, 2L}};
                    __shared__ uint8_t l_1201;
                    l_1201 = 255UL;
                    __shared__ int32_t l_1214;
                    l_1214 = 0x0CDE398BL;
                    int i, j;
                    l_1203 &= (safe_add_func_uint16_t_u_u((*p_1842->g_484), ((safe_mul_func_int32_t_s_s(((((safe_mod_func_uint32_t_u_u(l_1165, (((safe_add_func_uint8_t_u_u((p_1842->g_813.x = 1UL), (safe_add_func_int64_t_s_s(make_long4(0x949A9F5791F9C0FELL, 0L, (-8L), ((safe_sub_func_uint64_t_u_u((!p_17), (safe_div_func_uint16_t_u_u((p_20 | (safe_add_func_int32_t_s_s((l_1198[0][1] ^ (safe_mod_func_int16_t_s_s((((p_1842->g_1163.y = (p_16 = ((make_uint2(((*p_1842->g_709) >= 9UL), 0x0805CD9CL).x | 0xBDFFFD79L) <= 0xD0L))) | p_17) | 0x30L), p_17))), p_20))), 65526UL)))) , 0x01A43BA62112346ELL)).x, l_1178)))) > (-10L)) , 1L))) , (*p_1842->g_709)) || l_1201) > 18446744073709551615UL), l_1202)) & 0xE48715C75911C3C1LL)));
                    if (l_1204)
                        continue;
                    for (l_940 = 2; (l_940 >= 0); l_940 -= 1)
                    { /* block id: 492 */
                        uint32_t *l_1209 = &p_1842->g_202[0][1][4];
                        uint8_t *l_1215[2][1][7] = {{{&l_1201, &l_1201, &p_1842->g_140, &p_1842->g_140, &l_1201, &p_1842->g_140, &p_1842->g_140}}, {{&l_1201, &l_1201, &p_1842->g_140, &p_1842->g_140, &l_1201, &p_1842->g_140, &p_1842->g_140}}};
                        int32_t l_1220 = 0x022ECE47L;
                        int32_t l_1228 = 0x690F2AB2L;
                        __shared__ int32_t l_1229;
                        l_1229 = 0x436FA0A2L;
                        int64_t *l_1232[8];
                        uint32_t l_1233[2][6] = {{0x2842D2E6L, 0x2842D2E6L, 0x371D7A53L, 0x2842D2E6L, 0x2842D2E6L, 0x371D7A53L}, {0x2842D2E6L, 0x2842D2E6L, 0x371D7A53L, 0x2842D2E6L, 0x2842D2E6L, 0x371D7A53L}};
                        int16_t *l_1235 = nullptr;
                        __shared__ int16_t *l_1236;
                        l_1236 = nullptr;
                        int16_t *l_1237 = &p_1842->g_480[1];
                        int i, j, k;
                        for (int i = 0; i < 8; i++)
                            l_1232[i] = nullptr;
                        l_1145.z |= p_1842->g_731[l_940][(l_940 + 1)][l_940];
                        l_1203 |= ((1L || make_int4(p_1842->g_1205.x, p_1842->g_1205.x, p_1842->g_1205.x, p_1842->g_1205.x).w) >= (((safe_add_func_int32_t_s_s(make_int1(p_1842->g_1208.x).x, ((*l_1209)++))) , (safe_rshift_func_int32_t_s_s((((((p_1842->g_141[(l_940 + 4)] | (((((p_16 && (--p_1842->g_813.y)) <= (safe_lshift_func_int8_t_s_u((make_char2((l_1220 ^= p_16), (-1L)).x & p_1842->g_1208.x), 4))) >= (safe_add_func_int8_t_s_s(((*p_1842->g_709) = (safe_mod_func_int64_t_s_s(9L, (((*l_1237) |= (safe_mul_func_uint8_t_u_u((((0x005CD16BAE457F22LL ^ (l_1233[1][2] &= ((l_1228 |= make_int2(p_1842->g_1227.y, p_1842->g_1227.y).y) ^ (++(*l_1209))))) >= ((nullptr != l_1234) > p_17)) < (*p_1842->g_709)), p_17))) | 0x74BAL)))), hip_const_5))) != p_1842->g_731[l_940][(l_940 + 1)][l_940]) >= (-9L))) < p_20) & p_19) | 1L) > 0xC390157DBA4DAAD0LL), 20))) , p_20));
                    }
                    l_1145.y &= 0x245053D8L;
                }
                for (l_962 = 0; (l_962 <= 5); l_962 += 1)
                { /* block id: 508 */
                    uint64_t **l_1250 = &l_1164[7][0];
                    int3 l_1257 = make_int3(0x18EC0C96L, 0x6D50E158L, 0x18EC0C96L);
                    __shared__ uint3 l_1279;
                    l_1279 = make_uint3(1UL, 1UL, 1UL);
                    __shared__ uint2 l_1282;
                    l_1282 = make_uint2(4294967292UL, 0UL);
                    uint32_t *l_1283 = nullptr;
                    uint32_t *l_1284[2];
                    int32_t l_1286 = 6L;
                    int16_t *l_1287 = &hip_const_4;
                    int16_t *l_1288 = nullptr;
                    int16_t *l_1289 = &p_1842->g_480[1];
                    __shared__ short3 l_1294;
                    l_1294 = make_short3((-1L), (-1L), (-1L));
                    int8_t l_1352 = (-8L);
                    int i, j;
                    for (int i = 0; i < 2; i++)
                        l_1284[i] = nullptr;
                    if (p_1842->g_115)
                        goto lbl_1238;
                    for (p_19 = 0; (p_19 <= 5); p_19 += 1)
                    { /* block id: 512 */
                        uint64_t **l_1245 = &l_1055;
                        uint64_t ***l_1244 = &l_1245;
                        uint64_t **l_1247 = &l_1164[0][4];
                        uint64_t ***l_1246[7][8] = {{&l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247}, {&l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247}, {&l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247}, {&l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247}, {&l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247}, {&l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247}, {&l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247, &l_1247}};
                        __shared__ int32_t l_1265;
                        l_1265 = 0xAA8BDEB4L;
                        int i, j;
                        if (p_19)
                            break;
                        l_1165 |= (254UL < (make_uchar3(p_1842->g_1239.x, p_1842->g_1239.x, p_1842->g_1239.x).y , (make_short1(make_short2(l_1240.y, l_1240.y).y).x && (((safe_lshift_func_uint32_t_u_u(((!p_17) < ((p_1842->g_1248[8][1] = ((*l_1244) = (make_uchar4(l_1243.y, l_1243.y, l_1243.y, l_1243.y).w , &l_1164[3][4]))) == l_1250)), 13)) == ((*p_1842->g_709) = (safe_mod_func_uint8_t_u_u(((((((-1L) == (safe_rshift_func_int32_t_s_u((p_1842->g_26.z ^= ((safe_sub_func_int64_t_s_s(((l_1257.z && (((safe_mod_func_uint16_t_u_u(((l_1260 = p_18) == p_18), (((safe_sub_func_int16_t_s_s(make_short1((((p_1842->g_308.x , l_1263) != l_1264) || 0x15L)).x, 65535UL)) <= p_17) , 2L))) < l_1202) > l_1178)) && p_16), 0x73C61609C12DB7AALL)) != 0x501D5DC086B0F4E9LL)), l_1265))) == p_1842->g_121.y) , p_1842->g_1049.x) || l_1266.x) ^ p_19), p_20)))) >= (*p_1842->g_484)))));
                    }
                    l_1257.y = (((((*l_1289) = (safe_mod_func_int64_t_s_s((0xE2B9DC3FL == (safe_unary_minus_func_uint16_t_u(((l_1257.z >= (safe_mod_func_uint16_t_u_u(make_ushort3(l_1272.y, l_1272.y, l_1272.y).y, (safe_add_func_uint32_t_u_u((((~(safe_mul_func_uint32_t_u_u(4UL, ((make_uint1(l_1279.z) ^ ((safe_sub(make_uint1(l_1282.y), make_uint1((p_1842->g_1285 = l_1279.x))))))).x))) >= ((&p_1842->g_1248[3][3] != (((((+p_17) , &hip_const_9) == nullptr) || ((l_1286 |= ((make_short2(1L, 0L) ^ make_short2((4294967295UL && 6UL), 9L))).x) || (-1L))) , &p_1842->g_1248[8][1])) == l_1272.x)) || p_17), p_16))))) , 0xE3F5L)))), 18446744073709551615UL))) != (-2L)) , p_19) && p_17);
                    for (l_1005 = 0; (l_1005 <= 1); l_1005 += 1)
                    { /* block id: 527 */
                        int32_t l_1301 = (-1L);
                        int32_t l_1302 = 0L;
                        int32_t l_1305 = 1L;
                        int32_t l_1306 = (-5L);
                        uint8_t **l_1339[9][3] = {{&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}, {&l_1338[3][7][3], &l_1338[4][5][2], &l_1338[3][7][3]}};
                        int i, j, k;
                        p_1842->g_306.z = (safe_rshift_func_uint32_t_u_s(4294967289UL, (safe_add_func_uint16_t_u_u(((p_1842->g_202[l_1005][l_1005][l_962] = ((((p_1842->g_202[l_1005][l_1005][(l_962 + 1)] & (l_1257.y <= ((make_short2(l_1294.y, l_1294.y).x <= 65530UL) , p_19))) , &p_18) == (p_1842->g_1296 = l_1295)) & ((p_16 | ((safe_mul_func_int16_t_s_s((+p_19), p_1842->g_65)) | p_16)) || p_19))) , l_1165), 0x802DL))));
                        --l_1308;
                        p_1842->g_306.y &= (((+(((safe_lshift_func_int8_t_s_u((0x9782L && ((**l_1018) = ((((*l_1289) = (1L >= ((safe_add_func_uint64_t_u_u((((p_17 , make_uchar3(1UL, 0x48L, 0x58L).y) & ((((safe_mod_func_int16_t_s_s(p_16, (safe_unary_minus_func_int32_t_s(((l_1318 && (safe_mod_func_uint32_t_u_u((p_1842->g_202[l_1005][l_1005][(l_1005 + 3)] = (((((safe_lshift_func_int16_t_s_u((((p_19 ^ (safe_sub_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(65526UL, 4)) , (nullptr != l_1327)), l_1301))) >= p_20) , p_20), p_19)) , p_20) > p_17) >= 0x6DL) > l_1282.x)), p_20))) >= l_1257.x))))) != p_20) || p_19) , p_16)) > l_1302), 1UL)) & p_19))) , l_1243.x) == p_20))), 4)) , 65535UL) != p_16)) && p_17) ^ l_1306);
                        l_1352 = (((--l_1328) > make_int3((safe_mod_func_uint32_t_u_u(((((((safe_rshift(make_uint4(p_1842->g_1335.x, p_1842->g_1335.x, p_1842->g_1335.x, p_1842->g_1335.x), make_uint4(32, 32, 32, 32)))) | make_uint4(p_1842->g_1336.y, p_1842->g_1336.y, p_1842->g_1336.y, p_1842->g_1336.y))) ^ ((make_uint4(l_1337.y, l_1337.y, l_1337.y, l_1337.y) ^ make_uint4(l_1306, 9UL, (&p_1842->g_140 != (p_1842->g_1340[0][0] = l_1338[4][5][2])), 0UL))))).x, p_19)), p_1842->g_202[l_1005][l_1005][(l_1005 + 3)], (safe_div_func_int64_t_s_s((safe_lshift_func_int64_t_s_u(p_20, 50)), ((safe_sub_func_int32_t_s_s((safe_rshift_func_int32_t_s_u((&p_1842->g_1248[0][1] == l_1349), (((safe_add_func_uint8_t_u_u((nullptr != &p_1842->g_480[1]), l_1302)) >= p_20) , 0xE6219711L))), l_1294.z)) ^ 0x6AC68E4DL)))).x) >= p_20);
                    }
                }
            }
            else
            { /* block id: 541 */
                int32_t l_1359 = 0xBAB246B9L;
                int32_t l_1360 = (-1L);
                int32_t l_1361 = 0x93A67E4CL;
                int32_t l_1362 = 5L;
                __shared__ uint8_t l_1367;
                l_1367 = 1UL;
                int1 l_1405 = make_int1(0xE8DA1447L);
                char4 l_1409 = make_char4(0x5FL, 0x4DL, 0x5FL, 0x4DL);
                int32_t *l_1420 = nullptr;
                int32_t *l_1421 = nullptr;
                int32_t *l_1422 = &l_1011[0];
                int32_t *l_1423 = &p_1842->g_65;
                int32_t *l_1424 = nullptr;
                __shared__ int32_t *l_1425;
                l_1425 = nullptr;
                __shared__ int32_t *l_1426;
                l_1426 = &l_1361;
                int32_t *l_1427[2];
                __shared__ int16_t l_1429;
                l_1429 = 0x4E94L;
                int i;
                for (int i = 0; i < 2; i++)
                    l_1427[i] = &l_1011[1];
                if (l_1203)
                { /* block id: 542 */
                    __shared__ int32_t *l_1353;
                    l_1353 = &l_1165;
                    int32_t *l_1354 = nullptr;
                    int32_t *l_1355 = &hip_const_7;
                    int32_t *l_1356 = nullptr;
                    // attempting a hip shared for loop
                    __shared__ int32_t *l_1357[2][5];
                    for (int i = 0; i < 2; i++)
                    {
                        for (int j = 0; j < 5; j++)
                            l_1357[i][j] = nullptr;
                    }
                    __shared__ int32_t l_1358;
                    l_1358 = 1L;
                    uint64_t **l_1370 = &l_1056;
                    int64_t *****l_1378 = &p_1842->g_862;
                    int3 l_1393 = make_int3((-10L), 0xC93A4856L, (-10L));
                    int4 l_1395 = make_int4((-8L), 0x153D7D47L, (-8L), 0x153D7D47L);
                    int1 l_1396 = make_int1((-2L));
                    int i, j;
                    l_1363.z--;
                    l_1367 &= make_int2((-1L), (l_1362 <= make_uint4(l_1366.y, l_1366.y, l_1366.y, l_1366.y).y)).x;
                    if (make_int4(p_1842->g_1368.x, p_1842->g_1368.x, p_1842->g_1368.x, p_1842->g_1368.x).z)
                    { /* block id: 545 */
                        uint16_t l_1369[10][3] = {{0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}, {0xF8AFL, 0xDC53L, 0xF8AFL}};
                        int i, j;
                        l_1369[2][2] = p_17;
                    }
                    else
                    { /* block id: 547 */
                        __shared__ char3 l_1381;
                        l_1381 = make_char3(0x9AL, 0x33L, 0x9AL);
                        int32_t l_1389 = 0x1A3605D9L;
                        int8_t l_1390 = 0xE3L;
                        char3 l_1410 = make_char3(0xBBL, 0xB4L, 0xBBL);
                        int8_t *l_1417 = &l_1304;
                        int i;
                        l_1370 = &p_1842->g_1249;
                        (*l_1353) = (safe_sub_func_uint16_t_u_u(make_ushort4((l_1359 != (safe_sub_func_int32_t_s_s((safe_div_func_uint8_t_u_u((((p_1842->g_1377 = &p_1842->g_862) == l_1378) | (safe_sub_func_int16_t_s_s((((make_char3(0x76L, 0x7BL, 2L) & make_char3(l_1381.y, l_1381.y, l_1381.y))).x | ((p_16 = (safe_rshift_func_uint16_t_u_s(((((((make_ulong1(18446744073709551615UL) ^ make_ulong1((((*p_1842->g_832) != (*p_1842->g_832)) == l_1361)))) | make_ulong1(18446744073709551615UL))).x <= (safe_rshift_func_uint8_t_u_u(l_1386, 1))) , ((l_1389 = (65531UL != (((safe_lshift_func_int16_t_s_s(0xADCAL, 8)) > 0x06DAL) == (*p_1842->g_484)))) >= 1UL)), l_1381.x))) | 0x333F0BC67D454BCALL)), p_19))), l_1381.y)), 0x3D08111DL))), 0x7B72L, 65535UL, (*p_1842->g_484)).w, l_1390));
                        l_1418 = func_66(((*l_1417) &= ((!((-3L) <= ((((((safe_add(make_int2(l_1393.y, l_1393.y), make_int2(p_1842->g_1394.x, p_1842->g_1394.x)))) | ((make_int2(l_1395.y, l_1395.y) ^ make_int2(l_1396.x, l_1396.x))))).x , (safe_add_func_uint8_t_u_u(((safe_div_func_uint64_t_u_u(((l_1362 > (((*l_1353) = ((safe_div(make_int1(l_1405.x), make_int1(p_17)))).x) != (((((safe_mul_func_int8_t_s_s((nullptr != l_1408), ((make_char2(l_1409.w, l_1409.w) ^ make_char2(((*p_1842->g_709) &= (l_1411 = make_char2(l_1410.z, l_1410.z).y)), ((make_ushort3(l_1412.x, l_1412.x, l_1412.x).y & (p_16 , (p_19 < (safe_mul_func_int64_t_s_s((safe_div_func_int32_t_s_s((((nullptr == &p_1842->g_140) && p_16) , 3L), p_19)), l_1410.z))))) ^ p_19)))).y)) , p_1842->g_14.y) && p_20) || p_17) != p_17))) >= p_20), p_16)) , 0x2DL), 0x23L))) <= 3UL))) , p_19)), p_1842);
                    }
                    (*p_1842->g_111) = &l_1358;
                }
                else
                { /* block id: 560 */
                    __shared__ int32_t *l_1419;
                    l_1419 = nullptr;
                    if (p_1842->g_65)
                        goto lbl_1238;
                    (*p_1842->g_111) = func_66(p_20, p_1842);
                    l_1419 = &l_1307;
                }
                ++l_1432;
            }
            (*l_1436) |= ((safe_unary_minus_func_uint16_t_u((+(*l_1418)))) & (-2L));
            l_1440--;
        }
        if ((p_1842->g_1227.x &= ((((safe_rshift_func_int16_t_s_s((safe_sub_func_int64_t_s_s((make_char1(l_1447.z).x != ((safe_lshift(((make_uchar4(0UL, 0UL, 0xBBL, 0x83L) ^ make_uchar4(p_1842->g_1450.x, p_1842->g_1450.x, p_1842->g_1450.x, p_1842->g_1450.x))), make_uchar4(((nullptr != l_1451) > (safe_lshift_func_uint32_t_u_s(p_20, ((((p_1842->g_877.x > ((nullptr == (*p_1842->g_832)) , 0x93D6L)) != p_17) & p_19) < p_17)))), 0x3EL, 0x2CL, 255UL)))).z), 0x69F9255B52FA0BF8LL)), p_17)) , 0xD1L) , p_19) && 0xF7L)))
        { /* block id: 571 */
            __shared__ uint16_t l_1479;
            l_1479 = 0x4BCFL;
            int32_t l_1482 = 0x67839F03L;
            int32_t l_1483 = 0x38E9A2B3L;
            int32_t l_1486 = 0x1F6B6506L;
            __shared__ int32_t l_1487;
            l_1487 = 8L;
            int2 l_1492 = make_int2((-1L), 0x3378EEC3L);
            uint3 l_1502 = make_uint3(0x8ADFEF2EL, 0x60265988L, 0x8ADFEF2EL);
            int32_t *l_1528 = nullptr;
            char3 l_1542 = make_char3(6L, 0L, 6L);
            ushort1 l_1566 = make_ushort1(0x6E98L);
            ushort2 l_1567 = make_ushort2(0x3BC5L, 65534UL);
            int i;
            if ((((*p_1842->g_484) != (*p_1842->g_484)) | 6L))
            { /* block id: 572 */
                int64_t l_1472 = 0xB2C8BE2DE6241FF1LL;
                int32_t l_1481 = (-1L);
                int32_t l_1484 = 0x90CFEEB9L;
                int32_t l_1489 = 0xF32EBBE8L;
                // attempting a hip shared for loop
                __shared__ int32_t l_1491[2];
                for (int i = 0; i < 2; i++)
                    l_1491[i] = 0x1408BFE1L;
                // attempting a hip shared for loop
                __shared__ int8_t l_1493[9];
                for (int i = 0; i < 9; i++)
                    l_1493[i] = 2L;
                int i;
                for (int i = 0; i < 2; i++)
                    l_1491[i] = 0x1408BFE1L;
                for (int i = 0; i < 9; i++)
                    l_1493[i] = 2L;
                for (p_1842->g_1285 = 0; (p_1842->g_1285 <= 8); p_1842->g_1285 += 1)
                { /* block id: 575 */
                    int32_t ***l_1470[2][6] = {{&p_1842->g_111, nullptr, &p_1842->g_111, nullptr, &p_1842->g_111, nullptr}, {&p_1842->g_111, nullptr, &p_1842->g_111, nullptr, &p_1842->g_111, nullptr}};
                    int32_t l_1488[1];
                    int i, j;
                    for (int i = 0; i < 1; i++)
                        l_1488[i] = (-7L);
                    for (l_1308 = 0; (l_1308 <= 8); l_1308 += 1)
                    { /* block id: 578 */
                        // attempting a hip shared for loop
                        __shared__ uint32_t *l_1471[3][2];
                        for (int i = 0; i < 3; i++)
                        {
                            for (int j = 0; j < 2; j++)
                                l_1471[i][j] = nullptr;
                        }
                        __shared__ int32_t l_1480;
                        l_1480 = 1L;
                        // attempting a hip shared for loop
                        __shared__ int32_t l_1485[5];
                        for (int i = 0; i < 5; i++)
                            l_1485[i] = 1L;
                        int i, j;
                        for (int i = 0; i < 5; i++)
                            l_1485[i] = 1L;
                        l_1480 = (safe_div_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((((((p_16--) , (safe_add_func_uint8_t_u_u((safe_lshift_func_uint64_t_u_u((safe_div_func_int64_t_s_s((safe_div_func_int8_t_s_s(((p_1842->g_388[p_1842->g_1285] & ((safe_mul_func_int32_t_s_s((l_939 = 3L), (p_1842->g_388[l_1308] , (l_1472 ^= (l_1470[1][1] != ((*l_1081) = (*p_1842->g_832))))))) , (safe_add_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((((((safe_add_func_int16_t_s_s((((make_uint4(p_17, ((p_1842->g_388[p_1842->g_1285] , (((~((p_1842->g_1285 | 0xD27EL) , p_1842->g_388[p_1842->g_1285])) , p_16) || p_17)) || p_17), 4294967295UL, p_16) & make_uint4(0UL, 0UL, 0UL, 0UL))).z || l_1472), p_19)) || 1L) == p_1842->g_388[p_1842->g_1285]) , p_20) && 0x04A4E2C95A3AC19DLL) ^ (*p_1842->g_484)), l_1479)), 0L)))) , l_1479), p_20)), p_19)), p_1842->g_388[p_1842->g_1285])), p_19))) & 1UL) , p_17) < (-1L)), l_1366.z)), l_1479));
                        l_1494--;
                    }
                    if (p_20)
                        continue;
                }
                if (l_1484)
                    break;
                for (p_1842->g_11 = 16; (p_1842->g_11 < 19); p_1842->g_11 = safe_add_func_uint8_t_u_u(p_1842->g_11, 3))
                { /* block id: 591 */
                    if (p_16)
                        break;
                    p_1842->g_1377 = l_1125;
                    l_1499.y = 0x086D0E92L;
                }
            }
            else
            { /* block id: 596 */
                uint64_t l_1509 = 0xAA592AB204B14EF1LL;
                uint8_t **l_1517 = &p_1842->g_1340[8][4];
                uint8_t ***l_1516[10] = {&l_1517, &l_1517, &l_1517, &l_1517, &l_1517, &l_1517, &l_1517, &l_1517, &l_1517, &l_1517};
                __shared__ uint8_t **l_1519;
                l_1519 = &p_1842->g_1340[0][0];
                uint64_t *l_1522 = &p_1842->g_11;
                uint32_t *l_1523 = &p_1842->g_242;
                uint32_t *l_1524 = nullptr;
                uint32_t l_1525 = 0x8DA67AA1L;
                int64_t l_1526 = 0x353F75D7E7EA4B84LL;
                int32_t *l_1527 = &l_997;
                int16_t *l_1529 = &p_1842->g_388[3];
                int32_t l_1543 = 3L;
                uint64_t *l_1548[1];
                int32_t l_1549 = 0x2C2C8332L;
                __shared__ ushort2 l_1561;
                l_1561 = make_ushort2(1UL, 0x18CEL);
                int i;
                for (int i = 0; i < 1; i++)
                    l_1548[i] = nullptr;
                (*l_1527) = make_int3((-1L), (safe_div_func_uint32_t_u_u(make_uint3(l_1502.x, l_1502.x, l_1502.x).x, (make_uchar3(0UL, 0xE0L, (safe_lshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s((+(safe_mul_func_uint32_t_u_u((!((5UL ^ ((((l_1525 = ((*l_1523) = ((0xD0L != 1L) , (((l_1509 , make_long2(p_1842->g_1510.x, p_1842->g_1510.x).x) ^ ((*l_1522) |= ((safe_unary_minus_func_uint32_t_u((safe_lshift_func_int64_t_s_s((make_short4(p_17, (-1L), 1L, ((safe_sub_func_int64_t_s_s(0L, ((l_1518 = nullptr) != l_1519))) == (safe_unary_minus_func_int8_t_s(((l_1521 == &p_1842->g_1340[8][0]) ^ l_1509))))).z | (*p_1842->g_484)), 48)))) , 0x77AEC92EBF48DC60LL))) >= l_1486)))) & l_1526) & p_19) != (*p_1842->g_709))) < l_1526)), 0xE199923FL))), 6)), p_19))).z & p_20))), 0x91506C28L).y;
                if (l_1526)
                    goto lbl_1238;
                l_1528 = &l_1482;
                if ((p_20 < ((*l_1528) = (((*l_1529) = (-3L)) | make_ushort2((make_uint1(p_1842->g_1532.y).x ^ (p_20 < (safe_mod_func_int64_t_s_s(make_long2(l_1535.x, l_1535.x).x, (l_1549 |= (make_uint1(p_1842->g_1536.x).x , (p_16 ^= ((*l_1522) = ((safe_div_func_int8_t_s_s(((((safe_div(make_char4(0xC7L, 0x04L, 0x03L, l_1541.z), make_char4(l_1542.z, l_1542.z, l_1542.z, l_1542.z)))) ^ make_char4(0x2EL, (0xAD89L < l_1543), (safe_add_func_uint32_t_u_u(p_19, 0xDF3951CBL)), ((safe_mul_func_int8_t_s_s(((p_20 ^ p_19) == p_19), p_19)) | 1UL)))).z, p_17)) & (*l_1527)))))))))), p_17).x))))
                { /* block id: 609 */
                    uint32_t l_1552 = 4294967288UL;
                    uint32_t l_1576[9][7][1] = {{{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}, {{0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}, {0x2E2F3EB8L}}};
                    short4 l_1580 = make_short4(2L, 0x00D6L, 2L, 0x00D6L);
                    short3 l_1585 = make_short3(0xDE33L, 0L, 0xDE33L);
                    __shared__ short1 l_1586;
                    l_1586 = make_short1(4L);
                    int32_t l_1591 = 0x0D94B3C8L;
                    int i, j, k;
                    (*l_1527) = (safe_add_func_int8_t_s_s((p_20 , make_char2(l_1552, 0xE9L).y), ((safe_lshift_func_int16_t_s_s((!make_short4(1L, make_short4(0xA1B3L, (safe_div_func_uint16_t_u_u(((((make_ushort1(9UL) ^ ((((safe_add(((make_ushort1(0x91D1L) ^ ((((safe_div(((make_ushort1(l_1561.y) ^ make_ushort1(l_1562.x))), make_ushort1(p_20)))) | ((safe_mod(make_ushort1(2UL), make_ushort1(p_1842->g_1565.z)))))))), make_ushort1(0UL)))) ^ make_ushort1(65535UL))))) ^ ((make_ushort1(l_1566.x) & make_ushort1(l_1567.x))))).x, (safe_mul_func_uint64_t_u_u((safe_mod_func_int16_t_s_s(p_16, 0x6346L)), ((make_ulong2((p_19 > (p_17 > (safe_sub_func_uint16_t_u_u((*p_1842->g_484), p_1842->g_1368.x)))), 7UL) ^ make_ulong2(18446744073709551613UL, 18446744073709551613UL))).y)))), (-2L), 0x78A3L).y, 0xD413L, p_20).z), l_1576[6][3][0])) >= l_1576[6][3][0])));
                    if ((((safe_div(((make_short4(l_1579.w, l_1579.w, l_1579.w, l_1579.w) ^ make_short4(l_1580.y, l_1580.y, l_1580.y, l_1580.y))), make_short4(0xD951L, (-1L), (p_19 || (p_20 >= ((safe_rshift_func_int16_t_s_s(((safe_mod(make_short4(l_1585.z, l_1585.z, l_1585.z, l_1585.z), make_short4(l_1586.x, l_1586.x, l_1586.x, l_1586.x)))).w, 14)) , ((*l_1527) == (p_19 = make_uchar1(0x13L).x))))), ((((*p_1842->g_709) = ((*l_1527) > p_19)) >= ((-3L) & ((((l_1591 = (p_17 && ((safe_rshift_func_int16_t_s_u(p_1842->g_146.x, 9)) & (safe_rshift_func_int32_t_s_s((((*l_1529) = p_1842->g_1227.x) == p_19), p_17))))) | 0x0529L) && (*l_1527)) == (*l_1527)))) , p_1842->g_647.w))))).y == 8L))
                    { /* block id: 615 */
                        __shared__ int1 l_1592;
                        l_1592 = make_int1((-1L));
                        int i;
                        (*l_1528) ^= make_int3(l_1592.x, l_1592.x, l_1592.x).z;
                        return p_19;
                    }
                    else
                    { /* block id: 618 */
                        int32_t *l_1593 = nullptr;
                        uint32_t ***l_1595 = &p_1842->g_1296;
                        l_1594[4][5] = ((*l_1150) = l_1593);
                        (*l_1150) = (*l_1150);
                        (*l_1528) &= ((*l_1527) &= 0x5D58C1E6L);
                        (*l_1595) = &p_1842->g_563[0];
                    }
                }
                else
                { /* block id: 626 */
                    uint64_t l_1596 = 0xD9B4F88B9060AB83LL;
                    l_945 = ((*p_1842->g_111) = func_66((1UL || l_1596), p_1842));
                    for (l_939 = 0; (l_939 <= (-16)); l_939--)
                    { /* block id: 631 */
                        l_945 = (*l_1150);
                    }
                }
            }
        }
        else
        { /* block id: 636 */
            return p_20;
        }
    }
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_11 p_1842->g_484 p_1842->g_141 p_1842->g_65 p_1842->g_623 p_1842->g_111 p_1842->g_388 p_1842->g_93 p_1842->g_231 p_1842->g_242 p_1842->g_14 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_708 p_1842->g_361 p_1842->g_112 p_1842->g_731 p_1842->g_709 p_1842->g_115 p_1842->g_202
 * writes: p_1842->g_11 p_1842->g_563 p_1842->g_65 p_1842->g_140 p_1842->g_112 p_1842->g_242 p_1842->g_731 p_1842->g_141 p_1842->g_202 p_1842->g_283
 */
__device__ uint16_t  func_28(uint8_t  p_29, uint32_t * p_30, uint32_t * p_31, uint64_t  p_32, uint16_t  p_33, struct S0 * p_1842)
{ /* block id: 234 */
    int8_t l_567 = 9L;
    int32_t l_569 = (-5L);
    int32_t l_570 = 0x8728D326L;
    __shared__ int32_t l_571;
    l_571 = 1L;
    int32_t l_572 = 0xB4468209L;
    int32_t l_573 = (-9L);
    int32_t l_574 = 0L;
    __shared__ uint64_t l_575;
    l_575 = 0UL;
    int32_t l_582 = 0xFC7F98B4L;
    int32_t ***l_641 = &p_1842->g_111;
    long1 l_694 = make_long1(0xDEBAAA9C0EEED938LL);
    uint4 l_734 = make_uint4(4294967295UL, 1UL, 4294967295UL, 1UL);
    int64_t **l_759[7];
    int2 l_793 = make_int2(0xC3B05592L, (-1L));
    __shared__ int8_t **l_834;
    l_834 = &p_1842->g_709;
    int64_t ****l_868 = &p_1842->g_863;
    int32_t *l_929 = &hip_const_7;
    int32_t *l_930 = nullptr;
    __shared__ int32_t *l_931;
    l_931 = nullptr;
    int32_t *l_932 = nullptr;
    __shared__ int32_t *l_933;
    l_933 = &l_573;
    // attempting a hip shared for loop
    __shared__ int32_t *l_934[8][4][1];
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            for (int k = 0; k < 1; k++)
                l_934[i][j][k] = &p_1842->g_65;
        }
    }
    __shared__ uint64_t l_935;
    l_935 = 18446744073709551612UL;
    int i, j, k;
    for (int i = 0; i < 7; i++)
        l_759[i] = &p_1842->g_512;
    for (p_1842->g_11 = 0; p_1842->g_11 < 4; p_1842->g_11 += 1)
    {
        p_1842->g_563[p_1842->g_11] = nullptr;
    }
    for (p_1842->g_11 = 0; (p_1842->g_11 != 9); p_1842->g_11++)
    { /* block id: 238 */
        int32_t *l_566 = &p_1842->g_65;
        int32_t *l_568[9] = {nullptr, &p_1842->g_65, nullptr, &p_1842->g_65, nullptr, &p_1842->g_65, nullptr, &p_1842->g_65, nullptr};
        uint16_t *l_578 = &hip_const_3;
        uint16_t *l_579 = &hip_const_5;
        uint16_t *l_580 = &hip_const_5;
        uint16_t *l_581[6] = {&p_1842->g_141[6], &hip_const_5, &p_1842->g_141[6], &hip_const_5, &p_1842->g_141[6], &hip_const_5};
        uint8_t *l_589[3];
        // attempting a hip shared for loop
        __shared__ int64_t ***l_598[8][5];
        for (int i = 0; i < 8; i++)
        {
            for (int j = 0; j < 5; j++)
                l_598[i][j] = nullptr;
        }
        ulong2 l_616 = make_ulong2(3UL, 0x4F4FFDAF288FBCE6LL);
        __shared__ uint64_t l_628;
        l_628 = 0x58D3D2AB0B30CAA1LL;
        __shared__ uint16_t *l_697;
        l_697 = &p_1842->g_141[2];
        __shared__ short2 l_701;
        l_701 = make_short2(1L, 0x1F29L);
        int8_t **l_710 = &p_1842->g_709;
        uint32_t **l_739 = &p_1842->g_563[0];
        uint16_t l_786 = 0UL;
        short1 l_803 = make_short1(0L);
        uchar4 l_814 = make_uchar4(254UL, 1UL, 254UL, 1UL);
        uint32_t l_826 = 18446744073709551615UL;
        int32_t ****l_844 = &p_1842->g_833;
        uint64_t l_911 = 1UL;
        int i, j;
        for (int i = 0; i < 3; i++)
            l_589[i] = &p_1842->g_140;
        l_575++;
        if (((*p_1842->g_484) | (((p_33 , ((p_33++) & (safe_sub_func_uint32_t_u_u(l_575, ((*l_566) = (safe_div_func_uint8_t_u_u((p_29++), (((safe_lshift_func_uint32_t_u_s((*l_566), (make_int4(1L, (((make_ushort1((((p_32 | ((l_569 = (65535UL < make_ushort1((hip_const_10 || (safe_mul_func_uint32_t_u_u(l_567, (safe_div_func_int16_t_s_s(((l_582 ^ 0UL) , p_32), (*p_1842->g_484))))))).x)) || p_1842->g_218.z)) , &p_1842->g_511[2][0][4]) != l_598[0][1])) ^ make_ushort1(0xF40BL))).x == p_1842->g_306.x), 0x4EFE0838L, p_32).y != l_582))) | p_32) , 0xF9L)))))))) , 1L) , 0UL)))
        { /* block id: 244 */
            __shared__ short1 l_624;
            l_624 = make_short1(0x3ABFL);
            int8_t l_625 = (-6L);
            int32_t l_629 = 0x40AAB5EEL;
            __shared__ int8_t *l_674;
            l_674 = &l_625;
            uint64_t *l_690 = &l_575;
            __shared__ long2 l_693;
            l_693 = make_long2(0x7D3D02B97F609D3ELL, (-10L));
            int i;
            for (l_569 = 0; (l_569 >= 4); ++l_569)
            { /* block id: 247 */
                uint32_t l_615 = 0x6BB7FF71L;
                int32_t *l_627 = &p_1842->g_65;
                int64_t l_642 = 0xB54324E57CD176FALL;
                for (l_574 = 8; (l_574 >= 0); l_574 -= 1)
                { /* block id: 250 */
                    int32_t l_626 = 0x0F32B3B6L;
                    uint32_t l_634 = 0UL;
                    int8_t l_663[10] = {0x86L, (-1L), 0x86L, (-1L), 0x86L, (-1L), 0x86L, (-1L), 0x86L, (-1L)};
                    int32_t ***l_679 = &p_1842->g_111;
                    int i;
                    if ((((0UL > 65528UL) == (p_32 || (!0x6DC2L))) < (&p_1842->g_511[0][1][7] != nullptr)))
                    { /* block id: 251 */
                        uint64_t *l_614[8];
                        int i;
                        for (int i = 0; i < 8; i++)
                            l_614[i] = nullptr;
                        (*l_566) = (l_571 && (safe_mod_func_uint8_t_u_u((p_1842->g_140 = ((safe_add_func_int32_t_s_s(l_572, (safe_mul_func_uint16_t_u_u(0xC684L, ((make_ushort2(((((safe_sub(((safe_div(((safe_mul(make_ulong3(0UL, (p_1842->g_613.x = make_ulong2(p_1842->g_613.x, p_1842->g_613.x).x), (p_32 = (p_1842->g_613.y = make_ulong2((l_615 = p_32), 0xA3682824192F102ALL).y))), ((make_ulong3(make_ulong1(l_616.x).x, 0x5A8FD535CE8056A8LL, (safe_div_func_uint8_t_u_u((0x6055L ^ (safe_rshift_func_uint64_t_u_s((p_29 >= ((safe_sub(make_short3(p_1842->g_623.y, p_1842->g_623.y, p_1842->g_623.y), ((make_short3((p_33 , make_short4(l_624.x, l_624.x, l_624.x, l_624.x).y), ((l_625 == (18446744073709551612UL <= 0xC970FC52A63DFC9ELL)) || 0x31B6L), (*l_566)) ^ make_short3(0xA8F5L, 0xA8F5L, 0xA8F5L)))))).z), p_33))), p_29))) & make_ulong3(0x51E885265154DFC6LL, 0x51E885265154DFC6LL, 0x51E885265154DFC6LL)))))), make_ulong3(0x8F677D459C7A112FLL, 0x8F677D459C7A112FLL, 0x8F677D459C7A112FLL)))), make_ulong3(0x8271138A716FECE9LL, 0x8271138A716FECE9LL, 0x8271138A716FECE9LL)))).z > l_626) , p_32), 0x66EEL) | make_ushort2(2UL, 2UL))).x)))) != 0xB88DL)), p_1842->g_623.y)));
                    }
                    else
                    { /* block id: 258 */
                        (*p_1842->g_111) = &l_626;
                        (*p_1842->g_111) = l_627;
                    }
                    for (p_1842->g_140 = 0; (p_1842->g_140 <= 8); p_1842->g_140 += 1)
                    { /* block id: 264 */
                        l_629 = ((p_32 , (l_628 = 0x27L)) , p_33);
                    }
                    l_642 = ((p_32 != make_ulong4(p_1842->g_121.y, 3UL, 5UL, 1UL).z) , (safe_mul_func_int16_t_s_s((safe_mul_func_int32_t_s_s((((l_634 , (((p_1842->g_388[3] & (safe_lshift_func_int64_t_s_s((nullptr != &l_628), 24))) < (safe_mod_func_uint16_t_u_u(make_ushort4((*p_1842->g_484), (((safe_lshift_func_int16_t_s_u(((l_641 != &p_1842->g_111) | l_582), p_29)) < 65535UL) & (*l_627)), 65531UL, (*p_1842->g_484)).x, (*p_1842->g_484)))) && p_1842->g_93.z)) , l_634) , 0xAEBB1A48L), (*l_627))), p_29)));
                    for (l_575 = 2; (l_575 <= 8); l_575 += 1)
                    { /* block id: 271 */
                        short4 l_658 = make_short4(0x7EE1L, 0x408BL, 0x7EE1L, 0x408BL);
                        int16_t *l_659 = nullptr;
                        int16_t *l_660 = &p_1842->g_480[2];
                        // attempting a hip shared for loop
                        __shared__ int8_t *l_673[5];
                        for (int i = 0; i < 5; i++)
                            l_673[i] = &l_663[6];
                        int8_t **l_672 = &l_673[2];
                        uint32_t *l_680 = nullptr;
                        uint32_t *l_681 = &p_1842->g_242;
                        int i;
                        (*l_627) = ((safe_add_func_int64_t_s_s((((safe_rshift_func_uint8_t_u_s((p_29 = (make_uint1(p_1842->g_647.x).x , (safe_mul_func_uint16_t_u_u((((safe_rshift(((safe_sub(make_char2((safe_add_func_int16_t_s_s((p_1842->g_388[l_574] != ((make_short1(l_658.y).x | ((*l_660) &= p_1842->g_388[l_574])) > (safe_mul_func_uint64_t_u_u(l_663[6], ((safe_lshift_func_int32_t_s_s(((safe_mul_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s((safe_mul_func_uint64_t_u_u(((((*l_672) = &l_625) == l_674) >= l_624.x), 0xB52CE07E29610B8FLL)), (safe_lshift_func_uint16_t_u_s((l_629 ^= p_32), 5)))), ((make_uint3(3UL, (*l_627), 0x24B3AC58L) ^ make_uint3(4294967288UL, 4294967288UL, 4294967288UL))).x)) , (-4L)), 3)) , p_1842->g_498.y))))), hip_const_7)), 0x87L), make_char2((-1L), (-1L))))), make_char2((-5L), (-5L))))).x | p_29), p_33)))), 2)) , 0L) | p_1842->g_231.z), 18446744073709551606UL)) | 0x1D561261ED72196ELL);
                        (*l_566) &= ((safe_mul_func_uint32_t_u_u(l_663[8], l_624.x)) , (((l_679 != l_679) , 0UL) || ((*l_681)--)));
                    }
                }
            }
            (*l_566) ^= (safe_mul_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(l_624.x, (safe_rshift_func_uint64_t_u_u(((*l_690) = p_29), 1)))), (((safe_add(make_long3(l_693.x, l_693.x, l_693.x), make_long3(l_694.x, l_694.x, l_694.x)))).y <= 0UL)));
        }
        else
        { /* block id: 284 */
            uint16_t *l_698 = &hip_const_3;
            int32_t l_704[2][7] = {{(-1L), 3L, (-1L), (-1L), 3L, (-1L), 3L}, {(-1L), 3L, (-1L), (-1L), 3L, (-1L), 3L}};
            ulong2 l_715 = make_ulong2(18446744073709551610UL, 0UL);
            // attempting a hip shared for loop
            __shared__ int64_t **l_758[8];
            for (int i = 0; i < 8; i++)
                l_758[i] = &p_1842->g_512;
            ushort2 l_791 = make_ushort2(0x238DL, 6UL);
            short2 l_802 = make_short2(1L, (-3L));
            uint64_t l_825 = 0xE8EE163EA2CA0E5ELL;
            char3 l_841 = make_char3(0xD1L, 0x7FL, 0xD1L);
            int32_t *l_873 = nullptr;
            int32_t *****l_918[6][1] = {{nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}, {nullptr}};
            int8_t ***l_927[5][6][6] = {{{&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}}, {{&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}}, {{&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}}, {{&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}}, {{&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}, {&p_1842->g_708[0][7], &p_1842->g_708[1][7], &l_710, nullptr, nullptr, &l_710}}};
            int i, j, k;
            (**l_641) = &hip_const_7;
            for (l_572 = (-22); (l_572 <= 22); l_572 = safe_add_func_int8_t_s_s(l_572, 1))
            { /* block id: 288 */
                uint8_t l_705 = 0x61L;
                uint32_t l_752 = 0x7C1EE325L;
                int1 l_787 = make_int1(1L);
                int64_t *l_794 = nullptr;
                __shared__ uint16_t *l_822;
                l_822 = &p_1842->g_141[6];
                int32_t ****l_831 = &l_641;
                uchar4 l_871 = make_uchar4(0x09L, 0xD4L, 0x09L, 0xD4L);
                int8_t l_872 = 0L;
                int32_t l_903 = 0x87C5A068L;
                int32_t l_905 = 0x7A057898L;
                int32_t l_906[3][9] = {{0x9908452FL, (-4L), 0x5E275A8BL, (-9L), 0x5E275A8BL, (-4L), 0x9908452FL, (-4L), 0x894CEEEAL}, {0x9908452FL, (-4L), 0x5E275A8BL, (-9L), 0x5E275A8BL, (-4L), 0x9908452FL, (-4L), 0x894CEEEAL}, {0x9908452FL, (-4L), 0x5E275A8BL, (-9L), 0x5E275A8BL, (-4L), 0x9908452FL, (-4L), 0x894CEEEAL}};
                int i, j;
                (*p_1842->g_111) = func_66(p_32, p_1842);
                if ((((l_705 ^= make_short4(((l_697 != l_698) > (~((((((safe_lshift_func_uint16_t_u_s(((nullptr == &p_1842->g_484) && (make_ushort3(0x4E8AL, 65535UL, 0xFF8DL).x | make_short1(l_701.y).x)), 1)) , ((hip_const_1 , &p_1842->g_511[2][0][4]) != (((safe_rshift_func_int16_t_s_s((!(((&p_1842->g_11 == nullptr) , p_32) >= 5UL)), l_704[0][6])) ^ p_29) , nullptr))) >= p_33) , (-1L)) & l_704[1][6]) == 1L))), (-8L), 0x5E73L, 0x9422L).y) , 1L) & 0xFCBA3E51AAE468E6LL))
                { /* block id: 291 */
                    uint16_t **l_718 = &l_581[5];
                    uint32_t **l_742 = nullptr;
                    (**p_1842->g_111) |= (safe_div_func_int8_t_s_s((p_1842->g_708[0][7] != l_710), ((safe_rshift_func_int16_t_s_u(p_1842->g_361.x, (safe_sub_func_uint64_t_u_u(((make_ulong4(2UL, 18446744073709551607UL, 18446744073709551615UL, p_32) | make_ulong4(l_715.x, l_715.x, l_715.x, l_715.x))).x, (safe_add_func_uint64_t_u_u(p_29, (((*l_718) = nullptr) != ((((((safe_lshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u(0x2DB3L, (safe_sub_func_int16_t_s_s(1L, (safe_mod_func_int16_t_s_s((&l_641 == &l_641), (*p_1842->g_484))))))), 3)) <= p_33) || (-4L)) > hip_const_3) && p_29) , &p_33)))))))) && p_1842->g_14.w)));
                    for (p_32 = 0; (p_32 >= 2); p_32 = safe_add_func_uint16_t_u_u(p_32, 8))
                    { /* block id: 296 */
                        return l_704[0][6];
                    }
                    for (l_570 = 1; (l_570 > 12); l_570++)
                    { /* block id: 301 */
                        __shared__ uint32_t ***l_740;
                        l_740 = &l_739;
                        uint32_t ***l_741 = nullptr;
                        uint32_t l_751[5];
                        int i;
                        for (int i = 0; i < 5; i++)
                            l_751[i] = 0x03C80ABFL;
                        p_1842->g_731[1][1][1] &= ((***l_641) > 255UL);
                        (*p_1842->g_112) = (safe_div_func_int64_t_s_s(l_715.y, (((((-5L) < (~(((make_uint4(l_734.z, l_734.z, l_734.z, l_734.z).z , ((((*p_1842->g_484)--) , ((*p_1842->g_484) = (safe_rshift_func_int64_t_s_s(((*p_1842->g_112) , (0xF4L && ((((*l_740) = l_739) != (l_742 = nullptr)) < (safe_lshift_func_uint16_t_u_s(((safe_mul_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((&p_1842->g_112 != &p_1842->g_112), (((safe_add_func_int8_t_s_s(p_33, (*p_1842->g_709))) , l_751[0]) || 0x4B92494BL))), 0x15092579L)) >= l_715.x), 8))))), p_33)))) || (***l_641))) , 0x28L) & (*p_1842->g_709)))) > 247UL) <= 1L) & l_752)));
                        return (***l_641);
                    }
                    if ((**p_1842->g_111))
                        break;
                }
                else
                { /* block id: 311 */
                    uint32_t l_775 = 1UL;
                    int64_t ****l_788 = &l_598[0][1];
                    for (l_571 = 0; (l_571 != (-22)); l_571--)
                    { /* block id: 314 */
                        uint32_t *l_780 = &p_1842->g_202[1][0][0];
                        uint32_t *l_783 = &p_1842->g_283;
                        (**l_641) = func_66(((0UL > ((make_long4(p_1842->g_755.w, p_1842->g_755.w, p_1842->g_755.w, p_1842->g_755.w).y > (+(safe_mod_func_uint32_t_u_u((l_758[0] != l_759[2]), (safe_add_func_uint32_t_u_u((p_33 <= ((safe_rshift(make_short3(0x3D78L, 0xAF64L, 0L), make_short3(make_short3(p_1842->g_764.x, p_1842->g_764.x, p_1842->g_764.x).y, (safe_add_func_uint32_t_u_u(6UL, ((safe_rshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s((1L > (0x75C227BEL != ((make_uint4(4294967295UL, (0xABFDC84D3DC2B4A5LL <= (safe_mul_func_int64_t_s_s((safe_lshift_func_int16_t_s_s(make_short3(0L, ((***l_641) < p_33), 0L).y, 6)), p_29))), 1UL, 4294967293UL).x ^ (***l_641)) >= p_29))), l_775)), 5)) < p_1842->g_755.z))), p_32)))).y), 1L)))))) != 0x65FB5B09C03E4D37LL)) != p_1842->g_231.w), p_1842);
                        (***l_641) = ((safe_mod_func_int16_t_s_s(p_33, (safe_add_func_uint32_t_u_u((--(*l_780)), ((*l_783) = l_752))))) , (safe_rshift_func_int32_t_s_u((!0xF4D98B74L), (l_786 , (make_int3(l_787.x, l_787.x, l_787.x).x , 0UL)))));
                    }
                    (*l_788) = &l_759[2];
                    (**p_1842->g_111) = (safe_lshift_func_uint16_t_u_u(make_ushort2(l_791.x, l_791.x).x, make_ushort2(p_1842->g_792.y, p_1842->g_792.y).x));
                }
            }
            if (p_32)
                continue;
            for (p_1842->g_65 = 1; (p_1842->g_65 <= 5); p_1842->g_65 += 1)
            { /* block id: 370 */
                int32_t *****l_917 = &p_1842->g_832;
                int32_t l_920 = 0x69D269B4L;
                __shared__ uint32_t l_921;
                l_921 = 7UL;
                for (p_33 = 0; (p_33 <= 2); p_33 += 1)
                { /* block id: 373 */
                    uint64_t *l_916 = &l_825;
                    int32_t l_924 = (-1L);
                }
            }
        }
    }
    l_935++;
    (**l_641) = &l_571;
    return (*p_1842->g_484);
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_65 p_1842->g_14 p_1842->g_75 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_93 hip_const_7 p_1842->g_111 p_1842->g_121 hip_const_2 hip_const_10 hip_const_5 p_1842->g_140 hip_const_6 p_1842->g_146 hip_const_4 p_1842->g_202 p_1842->g_26 p_1842->g_115 p_1842->g_283 p_1842->g_141 p_1842->g_242 p_1842->g_11 p_1842->g_231 p_1842->g_361 p_1842->g_219 p_1842->g_218 p_1842->g_388 p_1842->g_436 hip_const_9 p_1842->g_308 p_1842->g_486 p_1842->g_498 p_1842->g_511
 * writes: p_1842->g_41 p_1842->g_63 p_1842->g_65 p_1842->g_140 p_1842->g_141 p_1842->g_93 p_1842->g_202 p_1842->g_146 p_1842->g_115 p_1842->g_283 p_1842->g_242 p_1842->g_231 p_1842->g_112 p_1842->g_480 p_1842->g_484 p_1842->g_308 p_1842->g_11 p_1842->g_511 p_1842->g_486
 */
__device__ uint32_t * func_34(uint32_t * p_35, uint32_t * p_36, int8_t  p_37, struct S0 * p_1842)
{ /* block id: 5 */
    int16_t l_43 = (-1L);
    uint32_t **l_50 = nullptr;
    uint32_t **l_268 = nullptr;
    uint32_t *l_270 = nullptr;
    uint32_t **l_269 = &l_270;
    ulong1 l_519 = make_ulong1(18446744073709551615UL);
    uint8_t *l_520 = &p_1842->g_140;
    uint32_t l_521 = 0x1A13DD4BL;
    long2 l_526 = make_long2(7L, 0xC38725AF0BABB562LL);
    long2 l_529 = make_long2(0xF6DDA1FE42344F43LL, 6L);
    __shared__ long3 l_530;
    l_530 = make_long3(0xDF3CD9AFD5020EB6LL, 0x68386735836EA15FLL, 0xDF3CD9AFD5020EB6LL);
    long1 l_531 = make_long1(0x8FFA182332B9995ALL);
    int32_t l_532 = 1L;
    __shared__ int32_t l_545;
    l_545 = (-6L);
    int32_t *l_546 = &p_1842->g_65;
    int32_t *l_547 = nullptr;
    int32_t *l_548 = nullptr;
    int32_t *l_549 = nullptr;
    int32_t *l_550 = &hip_const_7;
    __shared__ int32_t *l_551;
    l_551 = &hip_const_7;
    int32_t *l_552 = nullptr;
    __shared__ int32_t l_557;
    l_557 = (-2L);
    int32_t l_558 = 0xA5679088L;
    int32_t l_559[5][8] = {{(-2L), (-2L), 0L, (-2L), (-2L), 0L, (-2L), (-2L)}, {(-2L), (-2L), 0L, (-2L), (-2L), 0L, (-2L), (-2L)}, {(-2L), (-2L), 0L, (-2L), (-2L), 0L, (-2L), (-2L)}, {(-2L), (-2L), 0L, (-2L), (-2L), 0L, (-2L), (-2L)}, {(-2L), (-2L), 0L, (-2L), (-2L), 0L, (-2L), (-2L)}};
    int i, j;
    l_43 |= 6L;
    p_1842->g_308.z = (safe_div_func_int32_t_s_s(func_46(p_35, (p_1842->g_41 = nullptr), ((*l_269) = func_51(l_43, p_37, p_1842)), p_1842), l_43));
    p_1842->g_486.x |= make_int4((safe_div_func_int32_t_s_s(((*l_546) = (safe_mod_func_int64_t_s_s(l_43, (make_ulong4(l_519.x, l_519.x, l_519.x, l_519.x).y && ((((l_520 != &p_1842->g_140) ^ l_521) & ((safe_rshift_func_uint16_t_u_u((((safe_mul_func_int64_t_s_s(((make_long2(l_526.x, l_526.x) ^ ((safe_div(make_long2(l_529.y, l_529.y), make_long2(l_530.x, l_530.x)))))).y, (l_532 = make_long3(l_531.x, l_531.x, l_531.x).x))) , (((safe_sub_func_int64_t_s_s(((safe_mod_func_int64_t_s_s(((make_long4((make_int1((-6L)).x , p_37), (((((((((safe_lshift_func_uint8_t_u_u(p_37, 2)) , ((l_532 = (safe_sub_func_uint8_t_u_u(0x38L, ((*l_520)--)))) ^ p_37)) && (safe_sub_func_int16_t_s_s(((p_37 , p_37) != 0xA977CFEFL), 0xE8A8L))) | l_545) , &p_1842->g_512) == &p_1842->g_512) == p_37) , 0xFA87L) , p_37), 0xC1AC0F82BC5A8643LL, 0xA44D14509953AC5BLL) ^ make_long4(0x504798EECB4645ADLL, 0x504798EECB4645ADLL, 0x504798EECB4645ADLL, 0x504798EECB4645ADLL))).x, p_37)) , 0x6A09FC66C6BABE01LL), p_37)) > p_37) , &p_1842->g_111)) != nullptr), 13)) , 0x0A22L)) > l_526.x))))), l_545)), 1L, 1L, 0xA00E9FD9L).x;
    for (l_521 = (-26); (l_521 <= 12); l_521 = safe_add_func_uint8_t_u_u(l_521, 1))
    { /* block id: 229 */
        int32_t *l_555 = nullptr;
        int32_t *l_556[10] = {&p_1842->g_65, nullptr, &p_1842->g_65, nullptr, &p_1842->g_65, nullptr, &p_1842->g_65, nullptr, &p_1842->g_65, nullptr};
        uint32_t l_560 = 0x9E7A7739L;
        int i;
        l_560++;
        if (p_37)
            continue;
    }
    return p_36;
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_41
 * writes:
 */
__device__ uint32_t * func_38(int64_t  p_39, uint32_t  p_40, struct S0 * p_1842)
{ /* block id: 3 */
    return p_1842->g_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_65 p_1842->g_283 p_1842->g_141 p_1842->g_242 p_1842->g_140 p_1842->g_202 hip_const_10 p_1842->g_11 p_1842->g_75 hip_const_1 p_1842->g_231 p_1842->g_111 p_1842->g_361 p_1842->g_219 p_1842->g_115 p_1842->g_218 hip_const_3 p_1842->g_388 p_1842->g_436 p_1842->g_121 hip_const_7 hip_const_9 p_1842->g_308 p_1842->g_486 p_1842->g_498 p_1842->g_511 p_1842->g_14 p_1842->g_63
 * writes: p_1842->g_65 p_1842->g_283 p_1842->g_242 p_1842->g_140 p_1842->g_231 p_1842->g_141 p_1842->g_112 p_1842->g_115 p_1842->g_480 p_1842->g_484 p_1842->g_308 p_1842->g_11 p_1842->g_511
 */
__device__ int32_t  func_46(uint32_t * p_47, uint32_t * p_48, uint32_t * p_49, struct S0 * p_1842)
{ /* block id: 109 */
    __shared__ int32_t l_271;
    l_271 = 1L;
    int32_t l_275 = (-7L);
    __shared__ int32_t l_280;
    l_280 = 1L;
    int32_t l_281 = 6L;
    int32_t l_282[4][4] = {{0L, 9L, 3L, 9L}, {0L, 9L, 3L, 9L}, {0L, 9L, 3L, 9L}, {0L, 9L, 3L, 9L}};
    int4 l_302 = make_int4(0xC51254CAL, 0xCCA64AB7L, 0xC51254CAL, 0xCCA64AB7L);
    uchar4 l_309 = make_uchar4(0x5DL, 0xCCL, 0x5DL, 0xCCL);
    char3 l_442 = make_char3(0x2EL, 0xC4L, 0x2EL);
    uint16_t *l_458 = &p_1842->g_141[6];
    int16_t l_479[1][4][1] = {{{0x7044L}, {0x7044L}, {0x7044L}, {0x7044L}}};
    uint16_t *l_485 = &hip_const_3;
    int8_t l_493 = (-1L);
    __shared__ uint8_t *l_501;
    l_501 = &p_1842->g_140;
    char2 l_502 = make_char2(0x44L, (-6L));
    int64_t *l_510 = nullptr;
    int64_t **l_509 = &l_510;
    int64_t ***l_513[1];
    int32_t *l_514 = nullptr;
    int i, j, k;
    for (int i = 0; i < 1; i++)
        l_513[i] = &p_1842->g_511[0][6][4];
    for (p_1842->g_65 = 0; (p_1842->g_65 <= 1); p_1842->g_65 += 1)
    { /* block id: 112 */
        int32_t *l_272 = &hip_const_7;
        int32_t *l_273 = nullptr;
        int32_t *l_274 = nullptr;
        int32_t *l_276 = &hip_const_7;
        int32_t *l_277 = &hip_const_7;
        int32_t *l_278 = nullptr;
        // attempting a hip shared for loop
        __shared__ int32_t *l_279[9];
        for (int i = 0; i < 9; i++)
            l_279[i] = &hip_const_7;
        int1 l_305 = make_int1(0x605346F7L);
        short4 l_417 = make_short4((-1L), (-5L), (-1L), (-5L));
        int8_t *l_457[9];
        int64_t *l_465[1][8][1];
        uint16_t *l_466 = &hip_const_5;
        uint16_t *l_467 = &hip_const_5;
        uint16_t *l_468 = &hip_const_5;
        __shared__ uint16_t *l_469;
        l_469 = &hip_const_5;
        __shared__ uint16_t *l_470;
        l_470 = &hip_const_5;
        uint16_t *l_471 = &hip_const_5;
        uint16_t *l_472 = nullptr;
        __shared__ uint16_t *l_473;
        l_473 = &hip_const_5;
        __shared__ uint16_t *l_474;
        l_474 = &hip_const_5;
        uint16_t *l_475 = nullptr;
        __shared__ uint16_t *l_476;
        l_476 = &hip_const_5;
        uint16_t *l_477 = &hip_const_5;
        __shared__ uint16_t *l_478;
        l_478 = &hip_const_5;
        uint32_t l_481 = 9UL;
        int32_t l_482 = (-1L);
        // attempting a hip shared for loop
        __shared__ uint16_t **l_483[7];
        for (int i = 0; i < 7; i++)
            l_483[i] = &l_471;
        int i, j, k;
        for (int i = 0; i < 9; i++)
            l_279[i] = &hip_const_7;
        for (int i = 0; i < 9; i++)
            l_457[i] = &p_1842->g_115;
        for (int i = 0; i < 1; i++)
        {
            for (int j = 0; j < 8; j++)
            {
                for (int k = 0; k < 1; k++)
                    l_465[i][j][k] = nullptr;
            }
        }
        for (int i = 0; i < 7; i++)
            l_483[i] = &l_471;
        l_271 |= 0L;
        --p_1842->g_283;
        for (p_1842->g_242 = 0; (p_1842->g_242 <= 3); p_1842->g_242 += 1)
        { /* block id: 117 */
            short1 l_288 = make_short1((-1L));
            int16_t *l_289 = &hip_const_4;
            int16_t *l_290 = &hip_const_4;
            int16_t *l_291 = nullptr;
            __shared__ int16_t *l_292;
            l_292 = &hip_const_4;
            int16_t *l_293 = &hip_const_4;
            __shared__ int16_t *l_294;
            l_294 = &hip_const_6;
            int16_t *l_295 = nullptr;
            int16_t *l_296 = &hip_const_4;
            // attempting a hip shared for loop
            __shared__ int16_t *l_297[7];
            for (int i = 0; i < 7; i++)
                l_297[i] = nullptr;
            int32_t l_367 = 6L;
            int32_t ***l_369[2];
            int32_t ****l_368[8][8] = {{&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}, {&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}, {&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}, {&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}, {&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}, {&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}, {&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}, {&l_369[1], nullptr, &l_369[1], &l_369[1], &l_369[1], nullptr, &l_369[1], &l_369[1]}};
            uint16_t l_399[1][8][2] = {{{6UL, 6UL}, {6UL, 6UL}, {6UL, 6UL}, {6UL, 6UL}, {6UL, 6UL}, {6UL, 6UL}, {6UL, 6UL}, {6UL, 6UL}}};
            __shared__ char1 l_416;
            l_416 = make_char1(0x32L);
            int i, j, k;
            for (int i = 0; i < 7; i++)
                l_297[i] = nullptr;
            for (int i = 0; i < 2; i++)
                l_369[i] = &p_1842->g_111;
            l_282[p_1842->g_242][p_1842->g_242] ^= (safe_sub_func_int32_t_s_s(p_1842->g_141[(p_1842->g_65 + 5)], (8UL <= (l_275 = make_short2(l_288.x, l_288.x).y))));
            for (p_1842->g_140 = 0; (p_1842->g_140 <= 3); p_1842->g_140 += 1)
            { /* block id: 122 */
                uint32_t l_314 = 0xA29CB063L;
                char1 l_335 = make_char1(0x07L);
                uint1 l_362 = make_uint1(0xC2346151L);
                int32_t l_392 = 0x39D9E66DL;
                int32_t l_397 = 0xF2D75E25L;
                int32_t l_398 = 0L;
                int8_t l_425 = 0x8DL;
                int i;
                for (l_281 = 0; (l_281 <= 1); l_281 += 1)
                { /* block id: 125 */
                    int4 l_307 = make_int4(0xFA34B627L, 0x9FA1166EL, 0xFA34B627L, 0x9FA1166EL);
                    int32_t l_323 = (-1L);
                    int32_t ***l_337 = &p_1842->g_111;
                    __shared__ uint32_t *l_363;
                    l_363 = &hip_const_2[2];
                    uint32_t *l_364 = nullptr;
                    __shared__ uint32_t *l_365;
                    l_365 = &hip_const_9;
                    __shared__ uint32_t *l_366;
                    l_366 = nullptr;
                    __shared__ int32_t *l_389;
                    l_389 = &hip_const_7;
                    __shared__ int64_t l_390;
                    l_390 = (-2L);
                    uint64_t l_393 = 0UL;
                    int2 l_396 = make_int2(0xAF7C6731L, 0x4EBD6CA1L);
                    int i;
                    if (((make_int1((-1L)) & ((safe_sub(((safe_rshift(make_int1(l_302.y), ((safe_rshift(make_int1(l_305.x), make_int1(0x23B7BDE4L))))))), ((make_int1(p_1842->g_306.z) ^ make_int1(l_307.y)))))))).x)
                    { /* block id: 126 */
                        int i, j, k;
                        if (p_1842->g_202[p_1842->g_65][l_281][(p_1842->g_140 + 1)])
                            break;
                        l_282[p_1842->g_140][p_1842->g_242] = make_int2(p_1842->g_308.z, p_1842->g_308.z).y;
                        l_307.w = (l_282[p_1842->g_242][p_1842->g_140] && ((make_uchar4(0x38L, 1UL, 0x3EL, l_282[l_281][p_1842->g_65]) ^ make_uchar4(l_309.x, l_309.x, l_309.x, l_309.x))).x);
                    }
                    else
                    { /* block id: 130 */
                        __shared__ int8_t *l_319;
                        l_319 = &p_1842->g_115;
                        int32_t l_320[9][2] = {{(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}, {(-1L), 0x1018CC11L}};
                        int64_t *l_324 = nullptr;
                        int64_t *l_325 = nullptr;
                        int64_t *l_326 = nullptr;
                        int64_t *l_327 = nullptr;
                        int64_t *l_328 = nullptr;
                        __shared__ int64_t *l_329;
                        l_329 = nullptr;
                        int64_t *l_330[10] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
                        int i, j;
                        if (l_309.x)
                            break;
                        l_274 = &l_282[p_1842->g_242][p_1842->g_242];
                        (*l_274) ^= ((safe_div_func_int64_t_s_s(hip_const_10, (safe_lshift_func_int64_t_s_s(l_314, (p_1842->g_231.z = (l_302.w = (safe_sub_func_int64_t_s_s(((l_314 > (safe_lshift_func_uint32_t_u_u((((~make_char4(0x0AL, ((*l_319) ^= p_1842->g_141[(p_1842->g_65 + 5)]), 5L, (l_309.z != (p_1842->g_75.y & (l_320[7][1] = p_1842->g_218.y)))))).w || make_uchar4(6UL, 1UL, (safe_mul_func_int8_t_s_s((*l_272), 0L)), 255UL).y), 18))) > p_1842->g_11), l_323)))))))) >= l_288.x);
                    }
                    if ((((((l_282[1][2] > (safe_mod_func_int8_t_s_s(((safe_div(make_char4(l_335.x, l_335.x, l_335.x, l_335.x), make_char4(0x13L, 0x6EL, 0xB1L, (-7L))))).x, (safe_unary_minus_func_int32_t_s(((nullptr != l_337) , ((((l_335.x , &p_1842->g_41) != nullptr) == (safe_rshift_func_uint64_t_u_s(((p_1842->g_141[(p_1842->g_242 + 3)] |= (make_ushort2((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((safe_lshift_func_int32_t_s_u(((1UL >= ((safe_lshift(((((safe_sub(make_short1(p_1842->g_354.x), make_short1((248UL <= ((safe_add(make_char1(((l_367 = ((safe_sub(((safe_lshift(make_uint3(p_1842->g_361.x, p_1842->g_361.x, p_1842->g_361.x), make_uint3(32, 32, 32)))), make_uint3(l_362.x, l_362.x, l_362.x)))).x) , (nullptr != l_368[4][7]))), make_char1(0x38L)))).x))))) & make_short1(0xCD71L))), make_short1(16)))).x) ^ 0L), 23)), 1UL)), l_271)), 21)), 5)), 65533UL).x == l_362.x)) ^ p_1842->g_75.x), l_323))) ^ l_362.x))))))) || 0x0CC90252L) != l_335.x) , l_302.w) , l_335.x))
                    { /* block id: 141 */
                        // attempting a hip shared for loop
                        __shared__ int64_t *l_382[2];
                        for (int i = 0; i < 2; i++)
                            l_382[i] = nullptr;
                        // attempting a hip shared for loop
                        __shared__ int32_t l_383[8][3][10];
                        for (int i = 0; i < 8; i++)
                        {
                            for (int j = 0; j < 3; j++)
                            {
                                for (int k = 0; k < 10; k++)
                                    l_383[i][j][k] = 0xA6AD1D73L;
                            }
                        }
                        __shared__ uint8_t *l_384;
                        l_384 = nullptr;
                        uint8_t *l_385 = nullptr;
                        uint8_t *l_386 = nullptr;
                        uint8_t *l_387[8][3] = {{nullptr, &p_1842->g_140, nullptr}, {nullptr, &p_1842->g_140, nullptr}, {nullptr, &p_1842->g_140, nullptr}, {nullptr, &p_1842->g_140, nullptr}, {nullptr, &p_1842->g_140, nullptr}, {nullptr, &p_1842->g_140, nullptr}, {nullptr, &p_1842->g_140, nullptr}, {nullptr, &p_1842->g_140, nullptr}};
                        int i, j, k;
                        for (int i = 0; i < 2; i++)
                            l_382[i] = nullptr;
                        l_389 = ((0L ^ 7L) , (((make_ushort2(0x56D9L, 2UL).x ^ (+(4294967287UL >= (safe_lshift_func_uint16_t_u_u((safe_div_func_int16_t_s_s((make_uint3(0UL, 0x55BC6F42L, (safe_lshift_func_int8_t_s_u(((&p_1842->g_141[(p_1842->g_242 + 3)] != &p_1842->g_141[7]) | (p_1842->g_388[3] ^= ((((safe_mod_func_int32_t_s_s(l_335.x, ((safe_sub_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(0x45L, ((l_282[0][0] = make_long1((-1L)).x) , (nullptr != &p_1842->g_141[6])))), 0L)) && l_383[7][2][9]))) < 0UL) || 0UL) , 0x4AL))), p_1842->g_75.y))).x , p_1842->g_141[6]), l_309.w)), p_1842->g_141[4]))))) != hip_const_1) , nullptr));
                    }
                    else
                    { /* block id: 145 */
                        int64_t l_391 = (-5L);
                        l_302.y = p_1842->g_231.x;
                        ++l_393;
                        l_275 = make_int2(l_396.x, l_396.x).y;
                        if (l_280)
                            continue;
                    }
                    ++l_399[0][4][1];
                    if (l_309.x)
                    { /* block id: 152 */
                        (**l_337) = &l_280;
                    }
                    else
                    { /* block id: 154 */
                        __shared__ uint32_t l_402;
                        l_402 = 0xF67719E0L;
                        __shared__ int8_t *l_409;
                        l_409 = nullptr;
                        int8_t *l_410 = &p_1842->g_115;
                        uint64_t *l_411 = &p_1842->g_11;
                        uint16_t *l_418 = &hip_const_3;
                        __shared__ uint16_t *l_419;
                        l_419 = &hip_const_3;
                        uint16_t *l_420 = &hip_const_5;
                        uint16_t *l_421[4][10] = {{nullptr, &l_399[0][4][1], &p_1842->g_141[(p_1842->g_65 + 5)], &hip_const_5, &l_399[0][4][1], &hip_const_5, &l_399[0][4][1], &hip_const_5, &p_1842->g_141[(p_1842->g_65 + 5)], &l_399[0][4][1]}, {nullptr, &l_399[0][4][1], &p_1842->g_141[(p_1842->g_65 + 5)], &hip_const_5, &l_399[0][4][1], &hip_const_5, &l_399[0][4][1], &hip_const_5, &p_1842->g_141[(p_1842->g_65 + 5)], &l_399[0][4][1]}, {nullptr, &l_399[0][4][1], &p_1842->g_141[(p_1842->g_65 + 5)], &hip_const_5, &l_399[0][4][1], &hip_const_5, &l_399[0][4][1], &hip_const_5, &p_1842->g_141[(p_1842->g_65 + 5)], &l_399[0][4][1]}, {nullptr, &l_399[0][4][1], &p_1842->g_141[(p_1842->g_65 + 5)], &hip_const_5, &l_399[0][4][1], &hip_const_5, &l_399[0][4][1], &hip_const_5, &p_1842->g_141[(p_1842->g_65 + 5)], &l_399[0][4][1]}};
                        int32_t l_422[4] = {0xC04C149FL, 0x8849ED32L, 0xC04C149FL, 0x8849ED32L};
                        uint64_t l_434[10] = {0x1743C0790F937144LL, 0x8B661A6796F03CEELL, 0x1743C0790F937144LL, 0x8B661A6796F03CEELL, 0x1743C0790F937144LL, 0x8B661A6796F03CEELL, 0x1743C0790F937144LL, 0x8B661A6796F03CEELL, 0x1743C0790F937144LL, 0x8B661A6796F03CEELL};
                        int32_t l_435 = (-7L);
                        uint16_t l_437 = 3UL;
                        int i, j;
                        l_275 = l_402;
                        l_282[1][1] = (safe_lshift_func_int16_t_s_u((l_435 = (make_int1((((((safe_mod_func_int64_t_s_s((-1L), make_long4((-7L), (-9L), ((safe_rshift_func_int8_t_s_s(((((l_422[1] = (((*l_410) = l_335.x) > (((*l_411) &= l_402) | (safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(make_char2(l_416.x, l_416.x).y, 4)), make_short4(l_417.y, l_417.y, l_417.y, l_417.y).x))))) , ((safe_add(make_char1(l_425), make_char1((safe_mul_func_uint16_t_u_u((p_1842->g_141[4] &= (((safe_add_func_uint16_t_u_u(((*l_277) | (l_302.w <= (safe_mod_func_int8_t_s_s((p_1842->g_115 = (safe_sub_func_uint32_t_u_u(l_309.w, hip_const_7))), ((l_434[3] | hip_const_4) , (*l_272)))))), 65529UL)) , l_280) || p_1842->g_219.x)), (-1L))))))).x) >= l_434[2]) || l_309.w), 5)) <= 0x6DEF5346L), 1L).x)) != l_280) <= l_434[2]) , nullptr) == l_364)).x >= p_1842->g_361.x)), p_1842->g_219.x));
                        if (l_434[3])
                            continue;
                        ++l_437;
                    }
                }
            }
        }
        p_1842->g_308.x &= ((p_1842->g_484 = (((safe_add_func_uint32_t_u_u(((make_char1(l_442.y).x >= (safe_lshift_func_uint64_t_u_s((((safe_mul_func_uint16_t_u_u(((make_ushort1(0x0168L).x , (safe_div_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(0x9D37826FL, (safe_div_func_int16_t_s_s((7UL | (safe_sub_func_int8_t_s_s((p_1842->g_480[1] = ((safe_add_func_uint8_t_u_u(((((p_1842->g_115 |= p_1842->g_141[(p_1842->g_65 + 1)]) , (p_1842->g_218.z <= hip_const_3)) & 0UL) || (l_458 == nullptr)), (safe_add_func_uint32_t_u_u(((make_char3(0x36L, ((safe_mod_func_uint16_t_u_u((l_479[0][2][0] ^= ((l_282[1][2] |= ((safe_div_func_uint32_t_u_u(((make_int3(l_302.x, 0L, 0L).x , p_1842->g_388[3]) >= p_1842->g_436[0][0][7]), 0xB12DDDFBL)) > p_1842->g_121.y)) || l_442.y)), (-8L))) && 0L), 1L).y & (-1L)) > 0xAB10429BL), l_442.z)))) || (*l_272))), p_1842->g_231.z))), 1UL)))), l_481))) != p_1842->g_75.x), hip_const_1)) & p_1842->g_231.x) && p_1842->g_11), hip_const_10))) , hip_const_9), l_482)) == 0L) , &p_1842->g_141[(p_1842->g_65 + 1)])) != l_485);
        for (l_275 = 0; (l_275 <= 1); l_275 += 1)
        { /* block id: 177 */
            uint16_t l_487[7] = {0x2C69L, 0x2C69L, 0UL, 0x2C69L, 0x2C69L, 0UL, 0x2C69L};
            int32_t l_492 = 0L;
            int i;
            for (l_481 = 0; (l_481 <= 1); l_481 += 1)
            { /* block id: 180 */
                // attempting a hip shared for loop
                __shared__ int32_t l_488[4][9];
                for (int i = 0; i < 4; i++)
                {
                    for (int j = 0; j < 9; j++)
                        l_488[i][j] = 0L;
                }
                int i, j, k;
                for (l_482 = 0; l_482 < 9; l_482 += 1)
                {
                    l_457[l_482] = nullptr;
                }
                if (p_1842->g_202[l_275][l_275][(l_275 + 1)])
                    continue;
                l_487[3] = make_int4(p_1842->g_486.x, p_1842->g_486.x, p_1842->g_486.x, p_1842->g_486.x).w;
                for (l_281 = 0; (l_281 <= 6); l_281 += 1)
                { /* block id: 186 */
                    uint64_t l_489 = 0xB8B0816E5A81251ELL;
                    for (p_1842->g_115 = 3; (p_1842->g_115 >= 0); p_1842->g_115 -= 1)
                    { /* block id: 189 */
                        uint32_t l_494 = 0x6C6EFE49L;
                        l_489--;
                        --l_494;
                    }
                }
            }
            for (p_1842->g_11 = 0; (p_1842->g_11 <= 1); p_1842->g_11 += 1)
            { /* block id: 197 */
                for (p_1842->g_283 = 0; (p_1842->g_283 <= 1); p_1842->g_283 += 1)
                { /* block id: 200 */
                    uint64_t l_497 = 8UL;
                    for (l_493 = 1; (l_493 >= 0); l_493 -= 1)
                    { /* block id: 203 */
                        return l_487[3];
                    }
                    if (l_497)
                        break;
                }
                l_302.y = make_int1(p_1842->g_498.y).x;
                for (p_1842->g_115 = 0; (p_1842->g_115 <= 1); p_1842->g_115 += 1)
                { /* block id: 211 */
                    if (p_1842->g_486.x)
                        break;
                }
            }
        }
    }
    l_302.x = (safe_sub_func_int16_t_s_s(l_442.z, ((nullptr != l_501) < l_442.z)));
    l_514 = func_66((~(make_char2(l_502.x, l_502.x).x || ((4L == (safe_add_func_int64_t_s_s(l_302.x, ((0x41L >= p_1842->g_283) | (safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s((l_281 > (3L == (!(((l_509 == (p_1842->g_511[2][0][4] = p_1842->g_511[2][0][4])) > p_1842->g_75.x) >= l_282[1][1])))), l_281)), l_271)))))) != p_1842->g_218.z))), p_1842);
    return (*l_514);
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_65 p_1842->g_14 p_1842->g_75 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_93 hip_const_7 p_1842->g_111 p_1842->g_121 hip_const_2 hip_const_10 hip_const_5 p_1842->g_140 hip_const_6 p_1842->g_146 hip_const_4 p_1842->g_202 p_1842->g_26 p_1842->g_115
 * writes: p_1842->g_63 p_1842->g_65 p_1842->g_140 p_1842->g_141 p_1842->g_93 p_1842->g_202 p_1842->g_146 p_1842->g_115
 */
__device__ uint32_t * func_51(uint32_t  p_52, int32_t  p_53, struct S0 * p_1842)
{ /* block id: 8 */
    __shared__ int16_t l_54;
    l_54 = 0xED18L;
    int32_t *l_55 = &hip_const_7;
    int32_t *l_56 = nullptr;
    int32_t *l_57 = &hip_const_7;
    int32_t *l_58 = &hip_const_7;
    __shared__ int32_t *l_59;
    l_59 = nullptr;
    int32_t *l_60 = &hip_const_7;
    int32_t *l_61 = nullptr;
    int32_t *l_62[6] = {&hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7, &hip_const_7};
    int3 l_64 = make_int3((-9L), 0x8F5B6EF3L, (-9L));
    int32_t **l_99 = &l_59;
    uint16_t *l_126[3];
    uchar2 l_173 = make_uchar2(0x73L, 0x46L);
    char3 l_226 = make_char3(0L, 0xDFL, 0L);
    int32_t l_260[5];
    uint8_t l_261 = 0xFBL;
    uint32_t *l_267[9][7][4] = {{{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}, {{nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}, {nullptr, &p_1842->g_242, &p_1842->g_202[0][1][3], &p_1842->g_242}}};
    int i, j, k;
    for (int i = 0; i < 3; i++)
        l_126[i] = &hip_const_5;
    for (int i = 0; i < 5; i++)
        l_260[i] = 0x9EB8E465L;
    p_1842->g_63 = (!(l_54 ^ l_54));
    p_1842->g_65 ^= make_int3(l_64.z, l_64.z, l_64.z).z;
    (*l_99) = (make_ushort1(p_1842->g_14.z).x , func_66(p_53, p_1842));
    for (p_53 = 0; (p_53 == 4); p_53++)
    { /* block id: 30 */
        int32_t *l_102 = nullptr;
        int32_t l_113 = 0x982BF9DFL;
        int8_t *l_114[6][10][3] = {{{&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}}, {{&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}}, {{&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}}, {{&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}}, {{&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}}, {{&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}, {&p_1842->g_115, &p_1842->g_115, &p_1842->g_115}}};
        int32_t l_116 = 0L;
        uint32_t l_133 = 0x21A4FECFL;
        uint32_t l_138[5];
        uint8_t *l_139 = &p_1842->g_140;
        uint32_t l_147 = 0x64346866L;
        int2 l_174 = make_int2(1L, 0xFFD8805FL);
        uint32_t *l_220 = nullptr;
        char4 l_223 = make_char4(7L, 0xD5L, 7L, 0xD5L);
        int1 l_237 = make_int1((-1L));
        int32_t l_243 = 1L;
        int i, j, k;
        for (int i = 0; i < 5; i++)
            l_138[i] = 0xAFE8A4A7L;
        (*l_99) = l_102;
        l_113 = ((l_116 &= (((p_53 , ((+((safe_sub_func_uint64_t_u_u(p_52, (safe_mul_func_uint32_t_u_u((safe_add_func_int32_t_s_s(p_53, (safe_add_func_uint16_t_u_u((*l_60), (p_1842->g_93.z , (nullptr == p_1842->g_111)))))), l_113)))) , p_53)) || p_53)) , p_53) >= p_1842->g_14.y)) && (-10L));
        if ((safe_rshift_func_int32_t_s_u((((safe_lshift(make_long4(p_1842->g_121.y, p_1842->g_121.y, p_1842->g_121.y, p_1842->g_121.y), make_long4(64, 64, 64, 64)))).y ^ (((p_1842->g_141[6] = ((safe_sub_func_uint8_t_u_u(((*l_139) = (((safe_lshift_func_int8_t_s_u((nullptr == l_126[0]), ((((safe_mod(((make_uchar3(p_1842->g_65, (((safe_add_func_int32_t_s_s((safe_sub_func_uint16_t_u_u(hip_const_2[3], (3L > (0xCA71L <= (l_133 == (safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u(p_53, 15)), p_1842->g_14.z))))))), 0x427022D3L)) , hip_const_10) != 0x0BC1L), l_138[2]) ^ make_uchar3(0x0AL, 0x0AL, 0x0AL))), make_uchar3(9UL, 9UL, 9UL)))) ^ make_uchar3(0x45L, 0x45L, 0x45L))).y)) || hip_const_5) ^ 4294967295UL)), 1L)) , 7UL)) | 0x96L) , (-7L))), hip_const_5)))
        { /* block id: 36 */
            uint64_t l_148[2];
            int32_t l_151[8] = {9L, 6L, 9L, 6L, 9L, 6L, 9L, 6L};
            int32_t l_162 = 0xBF02E390L;
            uint8_t *l_166 = &p_1842->g_140;
            uint32_t *l_176 = &l_138[2];
            __shared__ uint32_t **l_175;
            l_175 = &l_176;
            int32_t l_178 = 0x1399F094L;
            int32_t l_189 = 0x83D8B824L;
            ushort3 l_215 = make_ushort3(65535UL, 65534UL, 65535UL);
            uint3 l_234 = make_uint3(0x1B58F1CDL, 0xE2DA4D15L, 0x1B58F1CDL);
            int i;
            for (int i = 0; i < 2; i++)
                l_148[i] = 18446744073709551615UL;
            if (p_53)
                break;
            for (p_1842->g_140 = 0; (p_1842->g_140 < 46); p_1842->g_140 = safe_add_func_int32_t_s_s(p_1842->g_140, 9))
            { /* block id: 40 */
                __shared__ uint64_t *l_149;
                l_149 = nullptr;
                uint64_t *l_150[6];
                int32_t l_163 = 8L;
                uint16_t l_177 = 1UL;
                // attempting a hip shared for loop
                __shared__ int8_t l_179[6][7];
                for (int i = 0; i < 6; i++)
                {
                    for (int j = 0; j < 7; j++)
                        l_179[i][j] = 0xD3L;
                }
                __shared__ int32_t l_187;
                l_187 = 1L;
                int32_t l_188 = 0x3D3FF892L;
                int i, j;
                for (int i = 0; i < 6; i++)
                    l_150[i] = &p_1842->g_11;
                for (p_52 = 0; p_52 < 6; p_52 += 1)
                {
                    for (p_1842->g_65 = 0; p_1842->g_65 < 10; p_1842->g_65 += 1)
                    {
                        for (l_133 = 0; l_133 < 3; l_133 += 1)
                        {
                            l_114[p_52][p_1842->g_65][l_133] = &p_1842->g_115;
                        }
                    }
                }
                if ((~(safe_sub_func_uint16_t_u_u(((((((l_147 = make_int1(p_1842->g_146.x).x) >= (((l_148[1] = p_53) | ((p_1842->g_93.x++) , (((((((safe_div_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u((l_163 = ((((l_178 = (safe_add_func_int8_t_s_s((((((safe_rshift_func_uint16_t_u_u((l_162 = 65535UL), make_ushort1(0UL).x)) ^ l_163) | (((((l_166 == l_166) & ((safe_sub_func_int32_t_s_s(hip_const_6, (((safe_rshift_func_uint8_t_u_u(((make_uchar1(1UL) ^ make_uchar1((make_uchar4(l_173.y, l_173.y, l_173.y, l_173.y).x > (make_int2(l_174.y, l_174.y).x , (nullptr == l_175)))))).x, 6)) < l_151[4]) && 4294967295UL))) == p_53)) >= l_163) && 65535UL) || p_1842->g_121.x)) & l_177) | 9UL), p_1842->g_146.x))) >= p_52) < hip_const_4) && p_52)), hip_const_2[3])), p_53)) , p_52) | p_53) == l_179[1][2]) ^ l_177) , 1L) > 0x96FCL))) >= 18446744073709551615UL)) ^ hip_const_5) | p_52) < p_1842->g_65) != p_1842->g_14.y), p_1842->g_146.x))))
                { /* block id: 48 */
                    if (p_52)
                        break;
                }
                else
                { /* block id: 50 */
                    uint64_t l_190 = 0xBB9B1E83F6A43E87LL;
                    for (p_1842->g_63 = 27; (p_1842->g_63 >= 18); p_1842->g_63 = safe_sub_func_uint16_t_u_u(p_1842->g_63, 3))
                    { /* block id: 53 */
                        __shared__ uint8_t l_182;
                        l_182 = 0xE2L;
                        int32_t l_185 = (-1L);
                        int32_t l_186[9] = {0L, 7L, 0L, 7L, 0L, 7L, 0L, 7L, 0L};
                        int i;
                        l_182++;
                        ++l_190;
                    }
                    for (l_147 = 5; (l_147 == 10); ++l_147)
                    { /* block id: 59 */
                        int16_t *l_197 = &hip_const_6;
                        int16_t *l_198 = &l_54;
                        int32_t l_199 = 0xDA8F8FD0L;
                        uint8_t *l_203 = nullptr;
                        __shared__ uint8_t *l_204;
                        l_204 = nullptr;
                        uint8_t *l_205 = nullptr;
                        uint8_t *l_206 = nullptr;
                        int16_t *l_211 = &hip_const_4;
                        int16_t *l_212[8][10] = {{&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}, {&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}, {&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}, {&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}, {&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}, {&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}, {&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}, {&hip_const_8, &hip_const_4, &hip_const_8, &hip_const_6, &hip_const_8, &hip_const_6, &hip_const_4, &hip_const_4, &hip_const_6, &hip_const_6}};
                        int i, j;
                        p_1842->g_146.x = (((((((*l_198) = (p_53 >= 0x7B7FL)) | l_199) != ((safe_mod_func_uint8_t_u_u((l_162 = (p_1842->g_202[0][1][4] = 0x99L)), (safe_add_func_uint32_t_u_u(((**l_175) &= ((l_189 &= make_short2((safe_add_func_int16_t_s_s(hip_const_6, 1L)), 0xAFF7L).x) <= ((safe_mod(make_ushort1(((-1L) != (-1L))), make_ushort1(l_215.x)))).x)), ((safe_div(make_uint3(p_1842->g_218.x, p_1842->g_218.x, p_1842->g_218.x), make_uint3(p_1842->g_219.y, p_1842->g_219.y, p_1842->g_219.y)))).x)))) <= (p_1842->g_93.x , p_1842->g_14.x))) != p_53) == p_1842->g_146.x) != 0UL);
                        (*l_99) = func_66(p_1842->g_202[0][1][4], p_1842);
                    }
                    if (p_52)
                        continue;
                    return l_220;
                }
                if (p_1842->g_26.z)
                    break;
                for (p_1842->g_65 = (-23); (p_1842->g_65 == (-6)); ++p_1842->g_65)
                { /* block id: 74 */
                    // attempting a hip shared for loop
                    __shared__ int32_t ***l_241[6][10][2];
                    for (int i = 0; i < 6; i++)
                    {
                        for (int j = 0; j < 10; j++)
                        {
                            for (int k = 0; k < 2; k++)
                                l_241[i][j][k] = nullptr;
                        }
                    }
                    int32_t ****l_240 = &l_241[3][6][1];
                    int i, j, k;
                    l_243 = ((((l_187 &= ((((make_char3(l_223.y, l_223.y, l_223.y) | ((safe_add(make_char3(l_226.x, l_226.x, l_226.x), ((safe_add(((safe_div(((((make_char3(hip_const_7, 0x0BL, ((p_1842->g_11 = ((p_52 < make_long4(p_1842->g_231.z, p_1842->g_231.z, p_1842->g_231.z, p_1842->g_231.z).z) , (safe_mul_func_uint16_t_u_u(p_1842->g_75.x, (((*l_176) = make_uint4(l_234.y, l_234.y, l_234.y, l_234.y).w) && ((safe_rshift_func_uint16_t_u_s(p_1842->g_218.x, (((!(p_1842->g_242 = (make_int1(l_237.x).x && (l_178 = (safe_lshift_func_uint64_t_u_u((0UL | ((0x7475412CL || (+1UL)) && ((((*l_240) = nullptr) == nullptr) , p_1842->g_218.y))), 28)))))) & l_177) <= 2UL))) >= 0x153CC6216E46704DLL)))))) && hip_const_2[1])) ^ make_char3(0x1FL, 0x1FL, 0x1FL))) ^ make_char3(0x75L, 0x75L, 0x75L))), make_char3(0xDBL, 0xDBL, 0xDBL)))), make_char3((-1L), (-1L), (-1L)))))))))).x > 0UL) && l_188)) != (-2L)) >= l_133) >= p_52);
                }
            }
        }
        else
        { /* block id: 84 */
            int32_t l_249 = 1L;
            // attempting a hip shared for loop
            __shared__ int32_t l_258[8];
            for (int i = 0; i < 8; i++)
                l_258[i] = 1L;
            int8_t l_264 = 0L;
            int i;
            for (p_1842->g_115 = (-17); (p_1842->g_115 != 27); ++p_1842->g_115)
            { /* block id: 87 */
                uint32_t l_248[9][1][5] = {{{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}, {{4UL, 4UL, 0x48657F93L, 0x7C05EB80L, 0x6D37CD8EL}}};
                int i, j, k;
                for (p_1842->g_140 = 0; (p_1842->g_140 > 21); p_1842->g_140 = safe_add_func_uint16_t_u_u(p_1842->g_140, 8))
                { /* block id: 90 */
                    l_249 ^= l_248[3][0][4];
                }
            }
            for (p_1842->g_140 = 0; (p_1842->g_140 <= 14); p_1842->g_140 = safe_add_func_uint16_t_u_u(p_1842->g_140, 6))
            { /* block id: 96 */
                int32_t *l_252 = &l_113;
                int64_t *l_254 = nullptr;
                int64_t **l_253 = &l_254;
                __shared__ int64_t ***l_255;
                l_255 = &l_253;
                int32_t l_256 = 1L;
                // attempting a hip shared for loop
                __shared__ int32_t l_257[8];
                for (int i = 0; i < 8; i++)
                    l_257[i] = 0x18812C0AL;
                int64_t l_259 = 0x6CBA3D675C657153LL;
                int i;
                l_252 = &l_116;
                (*l_99) = nullptr;
                (*l_255) = l_253;
                l_261++;
            }
            l_264 &= 0L;
            l_116 = (p_1842->g_14.w | (safe_lshift_func_int32_t_s_u((l_258[5] |= p_52), 7)));
        }
    }
    return l_267[1][3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1842->g_65 p_1842->g_14 p_1842->g_75 hip_const_1 hip_const_3 p_1842->g_63 p_1842->g_93
 * writes: p_1842->g_65
 */
__device__ int32_t * func_66(int8_t  p_67, struct S0 * p_1842)
{ /* block id: 11 */
    int64_t l_70 = 0x1475AC3517D3E822LL;
    uint32_t **l_71 = nullptr;
    int4 l_74 = make_int4(1L, 0x42E2EE0BL, 1L, 0x42E2EE0BL);
    __shared__ int4 l_76;
    l_76 = make_int4(0x3EED797CL, (-7L), 0x3EED797CL, (-7L));
    uint16_t *l_83 = &hip_const_5;
    uint16_t *l_84 = &hip_const_5;
    __shared__ uint16_t *l_85;
    l_85 = &hip_const_5;
    __shared__ uint16_t *l_86;
    l_86 = &hip_const_5;
    uint32_t l_87 = 0xFACDC9FFL;
    __shared__ int64_t *l_88;
    l_88 = &l_70;
    uint32_t *l_90 = &l_87;
    uint32_t **l_89[3][9][1] = {{{&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}}, {{&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}}, {{&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}, {&l_90}}};
    ulong1 l_94 = make_ulong1(1UL);
    __shared__ int32_t *l_98;
    l_98 = nullptr;
    int32_t **l_97 = &l_98;
    int32_t ***l_96[9] = {&l_97, &l_97, &l_97, &l_97, &l_97, &l_97, &l_97, &l_97, &l_97};
    int i, j, k;
    for (p_1842->g_65 = 0; (p_1842->g_65 == (-23)); --p_1842->g_65)
    { /* block id: 14 */
        if (p_67)
            break;
    }
    if ((l_70 , ((l_71 = nullptr) == (((p_1842->g_14.x > (make_int2(1L, 0x75FBD26DL).x >= (safe_sub_func_int64_t_s_s(((*l_88) = ((((make_int4(l_74.y, l_74.y, l_74.y, l_74.y) ^ ((make_int4(p_1842->g_75.y, p_1842->g_75.y, p_1842->g_75.y, p_1842->g_75.y) ^ make_int4(l_76.z, l_76.z, l_76.z, l_76.z))))).w ^ (l_74.x , (safe_rshift_func_int8_t_s_s((-1L), ((safe_rshift_func_uint32_t_u_u((safe_lshift_func_int64_t_s_s(0xA6ECCD2826019FDELL, hip_const_1)), 5)) && ((hip_const_3 == ((l_87 = l_70) <= p_1842->g_63)) < p_1842->g_65)))))) != l_76.z)), p_67)))) != p_67) , l_89[2][7][0]))))
    { /* block id: 20 */
        int32_t *l_91 = &hip_const_7;
        int32_t **l_92 = &l_91;
        (*l_92) = l_91;
    }
    else
    { /* block id: 22 */
        int32_t *l_95[4];
        int i;
        for (int i = 0; i < 4; i++)
            l_95[i] = &p_1842->g_65;
        l_74.x = ((0x57609E5B73647B8CLL == ((make_ulong2(p_1842->g_93.z, p_1842->g_93.z) ^ make_ulong2(l_94.x, l_94.x))).x) & 0x9A15FBE5L);
    }
    l_96[3] = l_96[3];
    return &p_1842->g_65;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S0 c_1843;
    struct S0* p_1842 = &c_1843;
    struct S0 c_1844 = {
        .g_11 = 0x01EB64D07DDBF4DFLL,
        .g_14 = make_uint4(0UL, 0UL, 0UL, 0UL),
        .g_26 = make_int3((-9L), 0xB6454879L, (-9L)),
        .g_41 = nullptr,
        .g_63 = (-6L),
        .g_65 = 0L,
        .g_75 = make_int2(4L, 4L),
        .g_93 = make_ulong3(18446744073709551609UL, 0x6DC049D9BB22B282LL, 18446744073709551609UL),
        .g_112 = nullptr,
        .g_111 = &p_1842->g_112,
        .g_115 = 0x23L,
        .g_121 = make_long2(0xA964D50EE726552CLL, 7L),
        .g_140 = 0xD2L,
        .g_141 = {0xF08CL, 0xF08CL, 0xF08CL, 0xF08CL, 0xF08CL, 0xF08CL, 0xF08CL, 0xF08CL},
        .g_146 = make_int1(0x157E95F6L),
        .g_202 = {{{1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL}, {1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL}}, {{1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL}, {1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL, 0xD2F5AE1CL, 1UL}}},
        .g_218 = make_uint3(0xBD08AE5EL, 4294967288UL, 0xBD08AE5EL),
        .g_219 = make_uint4(0x6B7B25FEL, 4294967291UL, 0x6B7B25FEL, 4294967291UL),
        .g_231 = make_long4(1L, 0L, 1L, 0L),
        .g_242 = 0xBF62B636L,
        .g_283 = 4UL,
        .g_306 = make_int4(0x4656B053L, 0x7ECD37ABL, 0x4656B053L, 0x7ECD37ABL),
        .g_308 = make_int4(1L, 0x9532293BL, 1L, 0x9532293BL),
        .g_354 = make_short2(1L, (-9L)),
        .g_361 = make_uint1(0x45FABA86L),
        .g_388 = {0x7645L, 0x7645L, 4L, 0x7645L, 0x7645L, 4L, 0x7645L, 0x7645L, 4L},
        .g_436 = {{{(-1L), (-8L), (-1L), (-8L), (-1L), 0xE7F7L, (-1L), (-8L), (-1L)}, {(-1L), (-8L), (-1L), (-8L), (-1L), 0xE7F7L, (-1L), (-8L), (-1L)}}},
        .g_480 = {5L, 5L, 0x978BL, 5L, 5L, 0x978BL, 5L},
        .g_484 = &p_1842->g_141[6],
        .g_486 = make_int1(0L),
        .g_498 = make_int3(1L, 0x4AD9BC32L, 1L),
        .g_512 = nullptr,
        .g_511 = {{{&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}}, {{&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}}, {{&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}, {&p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512, &p_1842->g_512}}},
        .g_563 = {nullptr, nullptr, nullptr, nullptr},
        .g_613 = make_ulong3(0x4A557D3B0E98A98CLL, 0xE4EF1D1E84D669DALL, 0x4A557D3B0E98A98CLL),
        .g_623 = make_short2(1L, 0xE8BEL),
        .g_647 = make_uint4(18446744073709551606UL, 6UL, 18446744073709551606UL, 6UL),
        .g_709 = &p_1842->g_115,
        .g_708 = {{&p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709}, {&p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709}, {&p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709}, {&p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709}, {&p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709}, {&p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709, &p_1842->g_709}},
        .g_731 = {{{0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}}, {{0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}}, {{0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}, {0UL, 0xF96B3D0412D01675LL, 0UL}}},
        .g_755 = make_long4((-5L), (-1L), (-5L), (-1L)),
        .g_764 = make_short2((-1L), 0L),
        .g_792 = make_ushort3(65535UL, 0x02CDL, 65535UL),
        .g_813 = make_uchar3(0UL, 0xEFL, 0UL),
        .g_833 = nullptr,
        .g_832 = &p_1842->g_833,
        .g_863 = &p_1842->g_511[2][6][5],
        .g_862 = &p_1842->g_863,
        .g_877 = make_ulong4(0x38D2D25A18603FB5LL, 18446744073709551607UL, 0x38D2D25A18603FB5LL, 18446744073709551607UL),
        .g_999 = 0x97434D7BC4CC01EALL,
        .g_1017 = make_ulong4(0xCE0B61A9B23A72CCLL, 0x7CA7C1CDBCB71A30LL, 0xCE0B61A9B23A72CCLL, 0x7CA7C1CDBCB71A30LL),
        .g_1049 = make_char2(0xECL, 0x91L),
        .g_1050 = make_char4(0x71L, 0x08L, 0x71L, 0x08L),
        .g_1059 = make_uint2(7UL, 4294967295UL),
        .g_1066 = make_ulong1(18446744073709551612UL),
        .g_1070 = make_ulong1(18446744073709551615UL),
        .g_1086 = make_int2(0x2E37928BL, (-1L)),
        .g_1101 = 0x41L,
        .g_1104 = nullptr,
        .g_1163 = make_ulong2(18446744073709551609UL, 0x12C12F35C4C665FELL),
        .g_1205 = make_int2(0xAB403CE7L, 0x6F73715BL),
        .g_1208 = make_int2(0x2D88365AL, (-1L)),
        .g_1227 = make_int3(0x16CB387CL, 0x6891CBCBL, 0x16CB387CL),
        .g_1239 = make_uchar4(0UL, 0x5BL, 0UL, 0x5BL),
        .g_1249 = nullptr,
        .g_1248 = {{&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}, {&p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249, &p_1842->g_1249}},
        .g_1285 = (-4L),
        .g_1296 = &p_1842->g_41,
        .g_1335 = make_uint3(4294967295UL, 1UL, 4294967295UL),
        .g_1336 = make_uint3(4294967294UL, 0xEBDA1496L, 4294967294UL),
        .g_1340 = {{&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}, {&p_1842->g_140, &p_1842->g_140, &p_1842->g_140, nullptr, &p_1842->g_140, nullptr, &p_1842->g_140, &p_1842->g_140}},
        .g_1368 = make_int1((-1L)),
        .g_1377 = &p_1842->g_862,
        .g_1394 = make_int2(0L, 0x5EA3BF90L),
        .g_1450 = make_uchar2(0x04L, 0xA1L),
        .g_1510 = make_long3(0x19CF11925289E099LL, 0x6077D6FE9353CBACLL, 0x19CF11925289E099LL),
        .g_1532 = make_uint2(1UL, 0x01ADCE02L),
        .g_1536 = make_uint3(4294967295UL, 0xAD37EBF3L, 4294967295UL),
        .g_1565 = make_ushort3(0xC9A6L, 0x7024L, 0xC9A6L),
        .g_1624 = make_short4((-1L), 0x1DEDL, (-1L), 0x1DEDL),
        .g_1640 = make_uint3(4294967295UL, 0x2AE2CE76L, 4294967295UL),
        .g_1642 = make_uint1(0x3B8DF28AL),
        .g_1650 = make_uchar2(0xD3L, 4UL),
        .g_1653 = make_uchar3(0x6FL, 0x9FL, 0x6FL),
        .g_1708 = nullptr,
        .g_1717 = make_int3(0xBCAF154BL, 0xCB13D101L, 0xBCAF154BL),
        .g_1739 = (-5L),
        .g_1785 = make_int3(0L, (-1L), 0L),
        .g_1807 = make_char1(0x8BL),
        .g_1821 = make_ushort3(0UL, 0UL, 0UL),
    };
    c_1843 = c_1844;

    // Execute core logic
    func_1(p_1842);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(hip_const_1, "hip_const_1", print_hash_value);
    for (int i = 0; i < 4; i++)
    {
        transparent_crc(hip_const_2[i], "hip_const_2[i]", print_hash_value);

    }
    transparent_crc(hip_const_3, "hip_const_3", print_hash_value);
    transparent_crc(hip_const_4, "hip_const_4", print_hash_value);
    transparent_crc(hip_const_5, "hip_const_5", print_hash_value);
    transparent_crc(hip_const_6, "hip_const_6", print_hash_value);
    transparent_crc(hip_const_7, "hip_const_7", print_hash_value);
    transparent_crc(hip_const_8, "hip_const_8", print_hash_value);
    transparent_crc(hip_const_9, "hip_const_9", print_hash_value);
    transparent_crc(hip_const_10, "hip_const_10", print_hash_value);
    transparent_crc(p_1842->g_11, "p_1842->g_11", print_hash_value);
    transparent_crc(p_1842->g_14.x, "p_1842->g_14.x", print_hash_value);
    transparent_crc(p_1842->g_14.y, "p_1842->g_14.y", print_hash_value);
    transparent_crc(p_1842->g_14.z, "p_1842->g_14.z", print_hash_value);
    transparent_crc(p_1842->g_14.w, "p_1842->g_14.w", print_hash_value);
    transparent_crc(p_1842->g_26.x, "p_1842->g_26.x", print_hash_value);
    transparent_crc(p_1842->g_26.y, "p_1842->g_26.y", print_hash_value);
    transparent_crc(p_1842->g_26.z, "p_1842->g_26.z", print_hash_value);
    transparent_crc(p_1842->g_63, "p_1842->g_63", print_hash_value);
    transparent_crc(p_1842->g_65, "p_1842->g_65", print_hash_value);
    transparent_crc(p_1842->g_75.x, "p_1842->g_75.x", print_hash_value);
    transparent_crc(p_1842->g_75.y, "p_1842->g_75.y", print_hash_value);
    transparent_crc(p_1842->g_93.x, "p_1842->g_93.x", print_hash_value);
    transparent_crc(p_1842->g_93.y, "p_1842->g_93.y", print_hash_value);
    transparent_crc(p_1842->g_93.z, "p_1842->g_93.z", print_hash_value);
    transparent_crc(p_1842->g_115, "p_1842->g_115", print_hash_value);
    transparent_crc(p_1842->g_121.x, "p_1842->g_121.x", print_hash_value);
    transparent_crc(p_1842->g_121.y, "p_1842->g_121.y", print_hash_value);
    transparent_crc(p_1842->g_140, "p_1842->g_140", print_hash_value);
    for (int i = 0; i < 8; i++)
    {
        transparent_crc(p_1842->g_141[i], "p_1842->g_141[i]", print_hash_value);

    }
    transparent_crc(p_1842->g_146.x, "p_1842->g_146.x", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 7; k++)
            {
                transparent_crc(p_1842->g_202[i][j][k], "p_1842->g_202[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1842->g_218.x, "p_1842->g_218.x", print_hash_value);
    transparent_crc(p_1842->g_218.y, "p_1842->g_218.y", print_hash_value);
    transparent_crc(p_1842->g_218.z, "p_1842->g_218.z", print_hash_value);
    transparent_crc(p_1842->g_219.x, "p_1842->g_219.x", print_hash_value);
    transparent_crc(p_1842->g_219.y, "p_1842->g_219.y", print_hash_value);
    transparent_crc(p_1842->g_219.z, "p_1842->g_219.z", print_hash_value);
    transparent_crc(p_1842->g_219.w, "p_1842->g_219.w", print_hash_value);
    transparent_crc(p_1842->g_231.x, "p_1842->g_231.x", print_hash_value);
    transparent_crc(p_1842->g_231.y, "p_1842->g_231.y", print_hash_value);
    transparent_crc(p_1842->g_231.z, "p_1842->g_231.z", print_hash_value);
    transparent_crc(p_1842->g_231.w, "p_1842->g_231.w", print_hash_value);
    transparent_crc(p_1842->g_242, "p_1842->g_242", print_hash_value);
    transparent_crc(p_1842->g_283, "p_1842->g_283", print_hash_value);
    transparent_crc(p_1842->g_306.x, "p_1842->g_306.x", print_hash_value);
    transparent_crc(p_1842->g_306.y, "p_1842->g_306.y", print_hash_value);
    transparent_crc(p_1842->g_306.z, "p_1842->g_306.z", print_hash_value);
    transparent_crc(p_1842->g_306.w, "p_1842->g_306.w", print_hash_value);
    transparent_crc(p_1842->g_308.x, "p_1842->g_308.x", print_hash_value);
    transparent_crc(p_1842->g_308.y, "p_1842->g_308.y", print_hash_value);
    transparent_crc(p_1842->g_308.z, "p_1842->g_308.z", print_hash_value);
    transparent_crc(p_1842->g_308.w, "p_1842->g_308.w", print_hash_value);
    transparent_crc(p_1842->g_354.x, "p_1842->g_354.x", print_hash_value);
    transparent_crc(p_1842->g_354.y, "p_1842->g_354.y", print_hash_value);
    transparent_crc(p_1842->g_361.x, "p_1842->g_361.x", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        transparent_crc(p_1842->g_388[i], "p_1842->g_388[i]", print_hash_value);

    }
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 9; k++)
            {
                transparent_crc(p_1842->g_436[i][j][k], "p_1842->g_436[i][j][k]", print_hash_value);

            }
        }
    }
    for (int i = 0; i < 7; i++)
    {
        transparent_crc(p_1842->g_480[i], "p_1842->g_480[i]", print_hash_value);

    }
    transparent_crc(p_1842->g_486.x, "p_1842->g_486.x", print_hash_value);
    transparent_crc(p_1842->g_498.x, "p_1842->g_498.x", print_hash_value);
    transparent_crc(p_1842->g_498.y, "p_1842->g_498.y", print_hash_value);
    transparent_crc(p_1842->g_498.z, "p_1842->g_498.z", print_hash_value);
    transparent_crc(p_1842->g_613.x, "p_1842->g_613.x", print_hash_value);
    transparent_crc(p_1842->g_613.y, "p_1842->g_613.y", print_hash_value);
    transparent_crc(p_1842->g_613.z, "p_1842->g_613.z", print_hash_value);
    transparent_crc(p_1842->g_623.x, "p_1842->g_623.x", print_hash_value);
    transparent_crc(p_1842->g_623.y, "p_1842->g_623.y", print_hash_value);
    transparent_crc(p_1842->g_647.x, "p_1842->g_647.x", print_hash_value);
    transparent_crc(p_1842->g_647.y, "p_1842->g_647.y", print_hash_value);
    transparent_crc(p_1842->g_647.z, "p_1842->g_647.z", print_hash_value);
    transparent_crc(p_1842->g_647.w, "p_1842->g_647.w", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_1842->g_731[i][j][k], "p_1842->g_731[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1842->g_755.x, "p_1842->g_755.x", print_hash_value);
    transparent_crc(p_1842->g_755.y, "p_1842->g_755.y", print_hash_value);
    transparent_crc(p_1842->g_755.z, "p_1842->g_755.z", print_hash_value);
    transparent_crc(p_1842->g_755.w, "p_1842->g_755.w", print_hash_value);
    transparent_crc(p_1842->g_764.x, "p_1842->g_764.x", print_hash_value);
    transparent_crc(p_1842->g_764.y, "p_1842->g_764.y", print_hash_value);
    transparent_crc(p_1842->g_792.x, "p_1842->g_792.x", print_hash_value);
    transparent_crc(p_1842->g_792.y, "p_1842->g_792.y", print_hash_value);
    transparent_crc(p_1842->g_792.z, "p_1842->g_792.z", print_hash_value);
    transparent_crc(p_1842->g_813.x, "p_1842->g_813.x", print_hash_value);
    transparent_crc(p_1842->g_813.y, "p_1842->g_813.y", print_hash_value);
    transparent_crc(p_1842->g_813.z, "p_1842->g_813.z", print_hash_value);
    transparent_crc(p_1842->g_877.x, "p_1842->g_877.x", print_hash_value);
    transparent_crc(p_1842->g_877.y, "p_1842->g_877.y", print_hash_value);
    transparent_crc(p_1842->g_877.z, "p_1842->g_877.z", print_hash_value);
    transparent_crc(p_1842->g_877.w, "p_1842->g_877.w", print_hash_value);
    transparent_crc(p_1842->g_999, "p_1842->g_999", print_hash_value);
    transparent_crc(p_1842->g_1017.x, "p_1842->g_1017.x", print_hash_value);
    transparent_crc(p_1842->g_1017.y, "p_1842->g_1017.y", print_hash_value);
    transparent_crc(p_1842->g_1017.z, "p_1842->g_1017.z", print_hash_value);
    transparent_crc(p_1842->g_1017.w, "p_1842->g_1017.w", print_hash_value);
    transparent_crc(p_1842->g_1049.x, "p_1842->g_1049.x", print_hash_value);
    transparent_crc(p_1842->g_1049.y, "p_1842->g_1049.y", print_hash_value);
    transparent_crc(p_1842->g_1050.x, "p_1842->g_1050.x", print_hash_value);
    transparent_crc(p_1842->g_1050.y, "p_1842->g_1050.y", print_hash_value);
    transparent_crc(p_1842->g_1050.z, "p_1842->g_1050.z", print_hash_value);
    transparent_crc(p_1842->g_1050.w, "p_1842->g_1050.w", print_hash_value);
    transparent_crc(p_1842->g_1059.x, "p_1842->g_1059.x", print_hash_value);
    transparent_crc(p_1842->g_1059.y, "p_1842->g_1059.y", print_hash_value);
    transparent_crc(p_1842->g_1066.x, "p_1842->g_1066.x", print_hash_value);
    transparent_crc(p_1842->g_1070.x, "p_1842->g_1070.x", print_hash_value);
    transparent_crc(p_1842->g_1086.x, "p_1842->g_1086.x", print_hash_value);
    transparent_crc(p_1842->g_1086.y, "p_1842->g_1086.y", print_hash_value);
    transparent_crc(p_1842->g_1101, "p_1842->g_1101", print_hash_value);
    transparent_crc(p_1842->g_1163.x, "p_1842->g_1163.x", print_hash_value);
    transparent_crc(p_1842->g_1163.y, "p_1842->g_1163.y", print_hash_value);
    transparent_crc(p_1842->g_1205.x, "p_1842->g_1205.x", print_hash_value);
    transparent_crc(p_1842->g_1205.y, "p_1842->g_1205.y", print_hash_value);
    transparent_crc(p_1842->g_1208.x, "p_1842->g_1208.x", print_hash_value);
    transparent_crc(p_1842->g_1208.y, "p_1842->g_1208.y", print_hash_value);
    transparent_crc(p_1842->g_1227.x, "p_1842->g_1227.x", print_hash_value);
    transparent_crc(p_1842->g_1227.y, "p_1842->g_1227.y", print_hash_value);
    transparent_crc(p_1842->g_1227.z, "p_1842->g_1227.z", print_hash_value);
    transparent_crc(p_1842->g_1239.x, "p_1842->g_1239.x", print_hash_value);
    transparent_crc(p_1842->g_1239.y, "p_1842->g_1239.y", print_hash_value);
    transparent_crc(p_1842->g_1239.z, "p_1842->g_1239.z", print_hash_value);
    transparent_crc(p_1842->g_1239.w, "p_1842->g_1239.w", print_hash_value);
    transparent_crc(p_1842->g_1285, "p_1842->g_1285", print_hash_value);
    transparent_crc(p_1842->g_1335.x, "p_1842->g_1335.x", print_hash_value);
    transparent_crc(p_1842->g_1335.y, "p_1842->g_1335.y", print_hash_value);
    transparent_crc(p_1842->g_1335.z, "p_1842->g_1335.z", print_hash_value);
    transparent_crc(p_1842->g_1336.x, "p_1842->g_1336.x", print_hash_value);
    transparent_crc(p_1842->g_1336.y, "p_1842->g_1336.y", print_hash_value);
    transparent_crc(p_1842->g_1336.z, "p_1842->g_1336.z", print_hash_value);
    transparent_crc(p_1842->g_1368.x, "p_1842->g_1368.x", print_hash_value);
    transparent_crc(p_1842->g_1394.x, "p_1842->g_1394.x", print_hash_value);
    transparent_crc(p_1842->g_1394.y, "p_1842->g_1394.y", print_hash_value);
    transparent_crc(p_1842->g_1450.x, "p_1842->g_1450.x", print_hash_value);
    transparent_crc(p_1842->g_1450.y, "p_1842->g_1450.y", print_hash_value);
    transparent_crc(p_1842->g_1510.x, "p_1842->g_1510.x", print_hash_value);
    transparent_crc(p_1842->g_1510.y, "p_1842->g_1510.y", print_hash_value);
    transparent_crc(p_1842->g_1510.z, "p_1842->g_1510.z", print_hash_value);
    transparent_crc(p_1842->g_1532.x, "p_1842->g_1532.x", print_hash_value);
    transparent_crc(p_1842->g_1532.y, "p_1842->g_1532.y", print_hash_value);
    transparent_crc(p_1842->g_1536.x, "p_1842->g_1536.x", print_hash_value);
    transparent_crc(p_1842->g_1536.y, "p_1842->g_1536.y", print_hash_value);
    transparent_crc(p_1842->g_1536.z, "p_1842->g_1536.z", print_hash_value);
    transparent_crc(p_1842->g_1565.x, "p_1842->g_1565.x", print_hash_value);
    transparent_crc(p_1842->g_1565.y, "p_1842->g_1565.y", print_hash_value);
    transparent_crc(p_1842->g_1565.z, "p_1842->g_1565.z", print_hash_value);
    transparent_crc(p_1842->g_1624.x, "p_1842->g_1624.x", print_hash_value);
    transparent_crc(p_1842->g_1624.y, "p_1842->g_1624.y", print_hash_value);
    transparent_crc(p_1842->g_1624.z, "p_1842->g_1624.z", print_hash_value);
    transparent_crc(p_1842->g_1624.w, "p_1842->g_1624.w", print_hash_value);
    transparent_crc(p_1842->g_1640.x, "p_1842->g_1640.x", print_hash_value);
    transparent_crc(p_1842->g_1640.y, "p_1842->g_1640.y", print_hash_value);
    transparent_crc(p_1842->g_1640.z, "p_1842->g_1640.z", print_hash_value);
    transparent_crc(p_1842->g_1642.x, "p_1842->g_1642.x", print_hash_value);
    transparent_crc(p_1842->g_1650.x, "p_1842->g_1650.x", print_hash_value);
    transparent_crc(p_1842->g_1650.y, "p_1842->g_1650.y", print_hash_value);
    transparent_crc(p_1842->g_1653.x, "p_1842->g_1653.x", print_hash_value);
    transparent_crc(p_1842->g_1653.y, "p_1842->g_1653.y", print_hash_value);
    transparent_crc(p_1842->g_1653.z, "p_1842->g_1653.z", print_hash_value);
    transparent_crc(p_1842->g_1717.x, "p_1842->g_1717.x", print_hash_value);
    transparent_crc(p_1842->g_1717.y, "p_1842->g_1717.y", print_hash_value);
    transparent_crc(p_1842->g_1717.z, "p_1842->g_1717.z", print_hash_value);
    transparent_crc(p_1842->g_1739, "p_1842->g_1739", print_hash_value);
    transparent_crc(p_1842->g_1785.x, "p_1842->g_1785.x", print_hash_value);
    transparent_crc(p_1842->g_1785.y, "p_1842->g_1785.y", print_hash_value);
    transparent_crc(p_1842->g_1785.z, "p_1842->g_1785.z", print_hash_value);
    transparent_crc(p_1842->g_1807.x, "p_1842->g_1807.x", print_hash_value);
    transparent_crc(p_1842->g_1821.x, "p_1842->g_1821.x", print_hash_value);
    transparent_crc(p_1842->g_1821.y, "p_1842->g_1821.y", print_hash_value);
    transparent_crc(p_1842->g_1821.z, "p_1842->g_1821.z", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

