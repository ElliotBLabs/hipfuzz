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

// ------------------------------------------------------------------
// Macros & Metadata
// ------------------------------------------------------------------
#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, Y, Z)
// Seed: 2083885416

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   int32_t  f1;
   uint8_t  f2;
   int32_t  f3;
   int8_t  f4;
};

union U1 {
   int32_t  f0;
   int8_t  f1;
   uint16_t  f2;
   struct S0  f3;
   int16_t  f4;
};

union U2 {
   int64_t  f0;
   int8_t  f1;
   int16_t  f2;
   struct S0  f3;
};

struct S3 {
    uint64_t g_6;
    union U2 g_39[3][8];
    struct S0 g_71;
    int32_t g_73[6][6][5];
    int32_t *g_72;
    union U1 g_95;
    int16_t *g_148[4];
    int16_t g_150;
    uint16_t *g_231[8][9][3];
    uint32_t g_233;
    int16_t g_235;
    uint32_t g_265;
    int8_t g_281;
    uint32_t g_326;
    int16_t g_329;
    int64_t *g_337;
    union U2 *g_353;
    union U2 **g_352[2][6];
    uint8_t g_391;
    uint8_t *g_390[7];
    int16_t ***g_456;
    int32_t ***g_475;
    uint64_t g_515;
    struct S0 g_556;
    int32_t g_574[5][8];
    uint64_t *g_594;
    uint32_t g_633;
    uint16_t g_637;
    uint8_t g_653;
    int64_t g_654;
    int8_t g_655;
    union U1 *g_700;
    uint64_t **g_852;
    int8_t g_1140[10][6][3];
    uint32_t g_1145[10][5];
    struct S0 *g_1150[5];
    struct S0 **g_1149;
    int64_t g_1220;
    uint32_t g_1246;
    uint32_t g_1291;
    uint32_t *g_1325;
    uint32_t **g_1324;
    uint32_t ***g_1323;
    uint32_t ****g_1322[8][6];
    int32_t g_1342[6][3];
    struct S0 *g_1358;
    int32_t ****g_1478;
    int32_t *****g_1477;
    uint8_t ***g_1600;
    int8_t **g_1624;
    int8_t **g_1698;
    uint32_t g_1755;
    int16_t ****g_1865;
    int16_t *****g_1864[5][10][4];
    uint8_t g_2025;
    uint8_t g_2035;
    uint16_t g_2069[2];
    uint32_t *****g_2083;
    union U2 ***g_2104;
    uint16_t ****g_2113;
    int8_t g_2136;
    int8_t **g_2173;
    uint64_t g_2178;
    int32_t *g_2314;
    uint8_t **g_2345;
    uint8_t ***g_2344[9][1][5];
    uint8_t ****g_2343;
    int32_t g_2346[9];
    uint16_t *****g_2446;
    uint32_t g_2583;
    int16_t g_2663[1][8][5];
    uint64_t ***g_2734;
    uint64_t ****g_2733;
    union U2 ****g_2765;
    union U2 *****g_2764[1][1];
    uint32_t g_2843;
    union U2 g_3039;
    uint64_t **g_3068;
    int32_t g_3156;
    uint16_t **g_3169[5][5][4];
    int32_t g_3188;
    uint32_t *g_3253;
    int8_t g_3256;
    int16_t g_3350;
    int32_t g_3392;
};


/* --- FORWARD DECLARATIONS --- */
__device__ uint8_t  func_1(struct S3 * p_3401);
__device__ uint16_t  func_7(uint16_t  p_8, int32_t  p_9, uint16_t  p_10, union U2  p_11, int16_t  p_12, struct S3 * p_3401);
__device__ int64_t  func_19(int32_t  p_20, int16_t  p_21, int8_t  p_22, struct S0  p_23, union U1  p_24, struct S3 * p_3401);
__device__ int32_t  func_31(union U1  p_32, struct S3 * p_3401);
__device__ union U1  func_33(int32_t  p_34, struct S3 * p_3401);
__device__ int32_t  func_35(union U2  p_36, int16_t  p_37, int32_t  p_38, struct S3 * p_3401);
__device__ union U2  func_42(union U2  p_43, uint32_t  p_44, int32_t  p_45, int32_t  p_46, struct S0  p_47, struct S3 * p_3401);
__device__ union U2  func_48(int8_t  p_49, uint32_t  p_50, struct S3 * p_3401);
__device__ int8_t  func_63(uint64_t  p_64, uint16_t  p_65, int64_t  p_66, uint8_t  p_67, struct S3 * p_3401);
__device__ int8_t  func_68(uint32_t  p_69, int32_t  p_70, struct S3 * p_3401);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_3401->g_6 p_3401->g_39 p_3401->g_39.f0 p_3401->g_556.f1 p_3401->g_337 p_3401->g_1698 p_3401->g_72 p_3401->g_515 p_3401->g_2314 p_3401->g_73 p_3401->g_2345 p_3401->g_390 p_3401->g_391 p_3401->g_1220 p_3401->g_1149 p_3401->g_1150 p_3401->g_71 p_3401->g_2733 p_3401->g_2734 p_3401->g_3392
 * writes: p_3401->g_39 p_3401->g_556.f1 p_3401->g_1624 p_3401->g_73 p_3401->g_72 p_3401->g_515 p_3401->g_95
 */
__device__ uint8_t  func_1(struct S3 * p_3401)
{ /* block id: 0 */
    int32_t l_16 = 6L;
    int32_t *l_2622 = nullptr;
    int32_t *l_2623 = &p_3401->g_95.f3.f1;
    int32_t l_2624[4];
    union U1 l_2625 = {-1L};
    int32_t l_2628 = 1L;
    union U2 l_2629 = {1L};
    int32_t l_3217 = 0x2885FDFEL;
    uint8_t l_3259 = 248UL;
    int16_t **l_3262 = &p_3401->g_148[2];
    int16_t ****l_3272 = nullptr;
    int64_t l_3312 = 0L;
    uint8_t l_3313 = 0x81L;
    uint64_t l_3326 = 0xEECD8E827F7EBFDFLL;
    int64_t l_3337[8] = {0x56E44ED1CDEEBF9ALL, 0xB6AAC1BD0B190517LL, 0x56E44ED1CDEEBF9ALL, 0xB6AAC1BD0B190517LL, 0x56E44ED1CDEEBF9ALL, 0xB6AAC1BD0B190517LL, 0x56E44ED1CDEEBF9ALL, 0xB6AAC1BD0B190517LL};
    int32_t l_3339 = 0x96BF1D53L;
    int32_t l_3340 = (-7L);
    int32_t l_3342[6];
    uint16_t l_3345 = 0UL;
    int32_t l_3357 = 8L;
    union U2 l_3385 = {0x4D8E0A0C55677F59LL};
    uint64_t l_3388 = 0xC98CDC3D26FA143FLL;
    uint32_t l_3391 = 4294967295UL;
    int32_t l_3397 = 7L;
    int32_t *l_3398 = nullptr;
    int32_t *l_3399 = &l_3340;
    uint16_t l_3400 = 1UL;
    int i;
    for (i = 0; i < 4; i++)
        l_2624[i] = 1L;
    for (i = 0; i < 6; i++)
        l_3342[i] = (-1L);
    if ((safe_add_func_uint16_t_u_u((l_3217 &= (safe_div_func_int16_t_s_s(p_3401->g_6, func_7((safe_unary_minus_func_int64_t_s((safe_lshift_func_uint16_t_u_s((l_16 >= 4294967295UL), 2)))), ((((((l_16 >= (safe_mod_func_int16_t_s_s((l_16 ^ func_19((p_3401->g_39[2][6].f3.f1 = ((*l_2623) = (safe_mul_func_int64_t_s_s((((safe_lshift_func_int64_t_s_u(((0x0EF2L <= (((safe_lshift_func_int32_t_s_u(func_31((p_3401->g_95 = func_33(func_35(p_3401->g_39[2][6], l_16, p_3401->g_39[2][6].f0, p_3401), p_3401)), p_3401), 24)) , l_16) <= l_16)) == (**p_3401->g_2345)), 27)) >= 0x0DL) & l_16), p_3401->g_1220)))), l_16, l_2624[3], (**p_3401->g_1149), l_2625, p_3401)), 0x46C5L))) && l_2625.f0) , (-6L)) || l_2624[3]) < 0xF0A8L) | 1UL), l_2628, l_2629, l_2624[2], p_3401)))), l_2624[3])))
    { /* block id: 1668 */
        int32_t l_3224 = 0xD4FD6CC0L;
        struct S0 *l_3227 = &p_3401->g_71;
        struct S0 *l_3228 = &p_3401->g_71;
        union U1 l_3229 = {0xF0738178L};
        uint32_t l_3233 = 6UL;
        uint64_t *l_3234 = nullptr;
        uint64_t *l_3235 = &p_3401->g_515;
        int32_t l_3236[8] = {0xE7BB9EF2L, 0xB4E98B85L, 0xE7BB9EF2L, 0xB4E98B85L, 0xE7BB9EF2L, 0xB4E98B85L, 0xE7BB9EF2L, 0xB4E98B85L};
        int16_t **l_3237 = nullptr;
        uint16_t *l_3240 = &l_2625.f2;
        uint32_t *l_3250[2];
        uint32_t **l_3249 = &l_3250[1];
        uint32_t *l_3252[10][10] = {{nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}, {nullptr, nullptr, nullptr, nullptr, &p_3401->g_633, nullptr, &p_3401->g_633, &p_3401->g_1145[7][2], nullptr, &p_3401->g_1145[7][2]}};
        uint32_t **l_3251[5][1] = {{&l_3252[1][5]}, {&l_3252[1][5]}, {&l_3252[1][5]}, {&l_3252[1][5]}, {&l_3252[1][5]}};
        uint32_t l_3260[3];
        int32_t l_3261 = 0x2E7DFF03L;
        int8_t l_3304 = 9L;
        int8_t l_3341[2][10] = {{0L, (-4L), (-6L), (-4L), 0L, (-4L), (-6L), (-4L), 0L, (-4L)}, {0L, (-4L), (-6L), (-4L), 0L, (-4L), (-6L), (-4L), 0L, (-4L)}};
        int8_t *l_3361 = &p_3401->g_3256;
        int8_t **l_3360 = &l_3361;
        int32_t *l_3369 = &l_3342[1];
        int i, j;
        for (i = 0; i < 2; i++)
            l_3250[i] = &p_3401->g_265;
        for (i = 0; i < 3; i++)
            l_3260[i] = 0xC2EF9B72L;
    }
    else
    { /* block id: 1739 */
        int32_t **l_3370 = nullptr;
        int32_t **l_3371 = &p_3401->g_72;
        uint64_t l_3378 = 0xAE3C529212915F76LL;
        union U2 l_3382[4] = {{0x8BF0E9F80ACFE57ALL}, {0x8BF0E9F80ACFE57ALL}, {0x8BF0E9F80ACFE57ALL}, {0x8BF0E9F80ACFE57ALL}};
        int i;
        (*l_3371) = &p_3401->g_3156;
        (*l_3371) = &p_3401->g_73[0][3][4];
        if ((**l_3371))
        { /* block id: 1742 */
            return (**p_3401->g_2345);
        }
        else
        { /* block id: 1744 */
            struct S0 l_3381 = {1UL,0x40D939C1L,9UL,0x54A55453L,8L};
            (*p_3401->g_2314) = (255UL < (**l_3371));
            (*p_3401->g_72) = ((safe_mul_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((((l_2624[3] > ((**l_3371) <= (((safe_mul_func_int64_t_s_s(l_3378, ((*p_3401->g_337) = (((safe_lshift_func_uint64_t_u_s(((l_3381 , nullptr) != (l_3382[1] , (*p_3401->g_2733))), 60)) || (l_2625 , (-1L))) , 7L)))) | l_3381.f2) ^ (**l_3371)))) , (-1L)) >= (*p_3401->g_2314)), 2)), 9UL)) < l_3381.f1);
        }
    }
    (*l_3399) &= (((safe_div_func_uint64_t_u_u((l_3385 , (safe_mod_func_uint16_t_u_u(6UL, l_3388))), l_2624[2])) < ((*p_3401->g_337) |= (((*p_3401->g_2314) = (safe_lshift_func_int64_t_s_u((l_3312 >= l_3391), 24))) > p_3401->g_3392))) > (((l_3388 | ((safe_sub_func_uint16_t_u_u(((0x7DA4L ^ l_3397) , l_16), l_3391)) >= (-4L))) , 0x70438D3B0B48C1A9LL) >= 18446744073709551615UL));
    return l_3400;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ uint16_t  func_7(uint16_t  p_8, int32_t  p_9, uint16_t  p_10, union U2  p_11, int16_t  p_12, struct S3 * p_3401)
{ /* block id: 1361 */
    int32_t l_2630[7][1][10] = {{{(-7L), 0xD1901227L, (-7L), 0xD5662967L, 0x465EF20EL, 0xB3D3A31FL, 0xC95B5688L, 0xC95B5688L, 0xB3D3A31FL, 0x465EF20EL}}, {{(-7L), 0xD1901227L, (-7L), 0xD5662967L, 0x465EF20EL, 0xB3D3A31FL, 0xC95B5688L, 0xC95B5688L, 0xB3D3A31FL, 0x465EF20EL}}, {{(-7L), 0xD1901227L, (-7L), 0xD5662967L, 0x465EF20EL, 0xB3D3A31FL, 0xC95B5688L, 0xC95B5688L, 0xB3D3A31FL, 0x465EF20EL}}, {{(-7L), 0xD1901227L, (-7L), 0xD5662967L, 0x465EF20EL, 0xB3D3A31FL, 0xC95B5688L, 0xC95B5688L, 0xB3D3A31FL, 0x465EF20EL}}, {{(-7L), 0xD1901227L, (-7L), 0xD5662967L, 0x465EF20EL, 0xB3D3A31FL, 0xC95B5688L, 0xC95B5688L, 0xB3D3A31FL, 0x465EF20EL}}, {{(-7L), 0xD1901227L, (-7L), 0xD5662967L, 0x465EF20EL, 0xB3D3A31FL, 0xC95B5688L, 0xC95B5688L, 0xB3D3A31FL, 0x465EF20EL}}, {{(-7L), 0xD1901227L, (-7L), 0xD5662967L, 0x465EF20EL, 0xB3D3A31FL, 0xC95B5688L, 0xC95B5688L, 0xB3D3A31FL, 0x465EF20EL}}};
    uint32_t *****l_2641 = &p_3401->g_1322[6][0];
    union U2 ***l_2642 = &p_3401->g_352[0][3];
    uint32_t l_2645 = 0x053E406CL;
    union U1 *l_2649 = &p_3401->g_95;
    union U1 **l_2650 = &p_3401->g_700;
    int64_t *l_2668 = &p_3401->g_654;
    int16_t l_2669 = 4L;
    int8_t *l_2670[9] = {&p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1], &p_3401->g_1140[9][0][1]};
    union U1 ***l_2704 = &l_2650;
    uint64_t l_2710 = 18446744073709551609UL;
    uint8_t l_2743 = 0x40L;
    uint16_t l_2748 = 0UL;
    struct S0 l_2785 = {65530UL,4L,6UL,-1L,2L};
    uint32_t l_2820 = 0x179A03D6L;
    uint32_t l_2883 = 4294967295UL;
    int32_t l_2884 = 0x6B390369L;
    int32_t l_2901 = 0L;
    uint64_t **l_2950[4] = {&p_3401->g_594, nullptr, &p_3401->g_594, nullptr};
    uint32_t l_2962 = 4294967293UL;
    uint8_t ***l_2968[5] = {&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345};
    int32_t ****l_3055 = &p_3401->g_475;
    uint32_t l_3078 = 0UL;
    uint64_t l_3106 = 1UL;
    int32_t ***l_3112 = nullptr;
    uint16_t l_3148 = 65535UL;
    uint32_t l_3153 = 0x33797045L;
    int32_t l_3157[6][4][6] = {{{0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}}, {{0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}}, {{0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}}, {{0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}}, {{0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}}, {{0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}, {0x6966CB5FL, 0x51E43C06L, 0x043ADBD8L, 5L, 0xC49C8363L, 1L}}};
    uint16_t **l_3165[7];
    uint32_t *l_3183 = &p_3401->g_1145[1][1];
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_3165[i] = nullptr;
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_3401->g_337 p_3401->g_39.f0
 * writes:
 */
__device__ int64_t  func_19(int32_t  p_20, int16_t  p_21, int8_t  p_22, struct S0  p_23, union U1  p_24, struct S3 * p_3401)
{ /* block id: 1357 */
    int32_t *l_2626 = &p_3401->g_1342[3][1];
    int32_t *l_2627[7] = {nullptr, nullptr, &p_3401->g_73[3][4][4], nullptr, nullptr, &p_3401->g_73[3][4][4], nullptr};
    int i;
    l_2627[6] = (l_2626 = l_2626);
    return (*p_3401->g_337);
}


/* ------------------------------------------ */
/* 
 * reads : p_3401->g_2314 p_3401->g_73
 * writes:
 */
__device__ int32_t  func_31(union U1  p_32, struct S3 * p_3401)
{ /* block id: 875 */
    int32_t l_1761 = 0x425780A6L;
    struct S0 l_1764 = {0UL,0xE17641ECL,0xA3L,-8L,1L};
    int32_t l_1765 = 0xC4B86E22L;
    union U2 l_1770[1][6][7] = {{{{-3L}, {0x7554047231162C9DLL}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{-3L}, {0x7554047231162C9DLL}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{-3L}, {0x7554047231162C9DLL}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{-3L}, {0x7554047231162C9DLL}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{-3L}, {0x7554047231162C9DLL}, {0L}, {0L}, {0L}, {0L}, {0L}}, {{-3L}, {0x7554047231162C9DLL}, {0L}, {0L}, {0L}, {0L}, {0L}}}};
    uint32_t l_1779 = 1UL;
    uint16_t **l_1780 = &p_3401->g_231[5][6][2];
    int32_t l_1794 = 0xE83C16F6L;
    int32_t l_1797[6][2] = {{7L, 0x12D8A25CL}, {7L, 0x12D8A25CL}, {7L, 0x12D8A25CL}, {7L, 0x12D8A25CL}, {7L, 0x12D8A25CL}, {7L, 0x12D8A25CL}};
    uint32_t l_1853[7] = {3UL, 0UL, 3UL, 0UL, 3UL, 0UL, 3UL};
    int32_t *l_1906 = &l_1797[4][0];
    int16_t *****l_1919 = &p_3401->g_1865;
    int16_t *****l_1921 = &p_3401->g_1865;
    int16_t *****l_1922 = &p_3401->g_1865;
    int32_t ****l_1980 = &p_3401->g_475;
    uint8_t l_2004 = 0UL;
    union U2 **l_2019 = &p_3401->g_353;
    uint16_t l_2027[8][1][2] = {{{0x623BL, 0x709BL}}, {{0x623BL, 0x709BL}}, {{0x623BL, 0x709BL}}, {{0x623BL, 0x709BL}}, {{0x623BL, 0x709BL}}, {{0x623BL, 0x709BL}}, {{0x623BL, 0x709BL}}, {{0x623BL, 0x709BL}}};
    int8_t l_2077 = (-1L);
    uint32_t *****l_2084 = &p_3401->g_1322[6][0];
    uint32_t l_2128 = 0xF2653F48L;
    uint32_t l_2149 = 1UL;
    uint16_t l_2233 = 0UL;
    int32_t *l_2241[5];
    union U2 ****l_2262[3][1];
    uint16_t l_2278 = 0xC7EEL;
    uint32_t l_2299 = 0x9EDAA454L;
    uint64_t l_2324[4] = {0x7181528362FCDB40LL, 18446744073709551615UL, 0x7181528362FCDB40LL, 18446744073709551615UL};
    uint8_t l_2367 = 0xA8L;
    uint8_t ****l_2380 = &p_3401->g_2344[7][0][2];
    int8_t l_2399 = 0x43L;
    uint32_t **l_2400 = nullptr;
    int64_t l_2424 = 0L;
    int8_t l_2425[5][5][1] = {{{1L}, {1L}, {1L}, {1L}, {1L}}, {{1L}, {1L}, {1L}, {1L}, {1L}}, {{1L}, {1L}, {1L}, {1L}, {1L}}, {{1L}, {1L}, {1L}, {1L}, {1L}}, {{1L}, {1L}, {1L}, {1L}, {1L}}};
    uint16_t l_2426 = 65533UL;
    int64_t l_2429 = 0x04AFDCC56AF2951ELL;
    uint8_t l_2439 = 255UL;
    int32_t l_2449[5] = {0x50D34D50L, 0x80470D5AL, 0x50D34D50L, 0x80470D5AL, 0x50D34D50L};
    uint32_t ***l_2464 = &l_2400;
    int16_t l_2467 = 1L;
    int32_t l_2537 = 0x649C8760L;
    int32_t l_2616 = 0x2F5BF48CL;
    int32_t **l_2619 = nullptr;
    int32_t **l_2620 = nullptr;
    int32_t **l_2621 = &l_1906;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_2241[i] = &l_1797[5][0];
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_2262[i][j] = &p_3401->g_2104;
    }
    return (*p_3401->g_2314);
}


/* ------------------------------------------ */
/* 
 * reads : p_3401->g_337 p_3401->g_39.f0 p_3401->g_1698 p_3401->g_72 p_3401->g_515
 * writes: p_3401->g_1624 p_3401->g_73 p_3401->g_72 p_3401->g_515
 */
__device__ union U1  func_33(int32_t  p_34, struct S3 * p_3401)
{ /* block id: 812 */
    uint32_t l_1631 = 0xA87A28A1L;
    uint32_t ****l_1638[9] = {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323};
    uint32_t *****l_1639 = &l_1638[6];
    uint32_t l_1645[10] = {1UL, 4294967293UL, 0xF841E04AL, 0xF841E04AL, 4294967293UL, 1UL, 4294967293UL, 0xF841E04AL, 0xF841E04AL, 4294967293UL};
    uint32_t l_1646[8][5] = {{4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}, {4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}, {4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}, {4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}, {4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}, {4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}, {4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}, {4294967295UL, 8UL, 4294967295UL, 0UL, 0xC7F7B395L}};
    int32_t l_1652 = 0x42226F3CL;
    int32_t l_1653 = (-1L);
    uint64_t l_1657 = 0x539ED3A8D3EE28D1LL;
    struct S0 *l_1660 = nullptr;
    int32_t l_1671 = (-7L);
    int32_t l_1672 = 2L;
    uint64_t l_1673[9][10][1] = {{{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}, {{0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}, {0x9FD70D7672E79C04LL}}};
    uint32_t *****l_1676 = &l_1638[1];
    uint64_t **l_1680 = &p_3401->g_594;
    int8_t **l_1696 = nullptr;
    int8_t ***l_1697 = &p_3401->g_1624;
    int8_t *l_1703 = &p_3401->g_556.f4;
    int32_t l_1704 = 0xCB2BE69DL;
    int32_t **l_1705 = &p_3401->g_72;
    union U1 **l_1711 = nullptr;
    int32_t l_1721 = (-2L);
    union U1 l_1758 = {0x2794B7C3L};
    int i, j, k;
lbl_1677:
    if ((safe_sub_func_uint16_t_u_u(1UL, (0xA5D62067E791EFEBLL <= ((l_1631 , (safe_lshift_func_int64_t_s_u((safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(2L, (((*l_1639) = l_1638[1]) != nullptr))), p_34)), 53))) || ((-8L) < (~((safe_rshift_func_int16_t_s_u((((((safe_mod_func_int64_t_s_s(p_34, l_1645[3])) >= l_1646[6][2]) | 0x740574FEL) , 0xFDAFL) > 8UL), 4)) ^ p_34))))))))
    { /* block id: 814 */
        int32_t *l_1647 = &p_3401->g_95.f0;
        int32_t *l_1648 = &p_3401->g_73[0][3][4];
        int32_t l_1649 = 0x330417E6L;
        int32_t *l_1650 = nullptr;
        int32_t *l_1651 = nullptr;
        int32_t *l_1654 = &p_3401->g_1342[3][1];
        int32_t *l_1655 = &p_3401->g_95.f0;
        int32_t *l_1656 = &l_1653;
        struct S0 *l_1661 = &p_3401->g_71;
        ++l_1657;
        l_1661 = l_1660;
    }
    else
    { /* block id: 817 */
        int32_t *l_1662 = &p_3401->g_73[0][3][4];
        int32_t l_1663 = (-1L);
        int32_t *l_1664 = nullptr;
        int32_t *l_1665 = &l_1653;
        int32_t *l_1666 = &l_1653;
        int32_t *l_1667 = &l_1663;
        int32_t l_1668[1];
        int32_t *l_1669 = &p_3401->g_1342[4][1];
        int32_t *l_1670[10];
        int i;
        for (i = 0; i < 1; i++)
            l_1668[i] = 0x6AE13FA9L;
        for (i = 0; i < 10; i++)
            l_1670[i] = &p_3401->g_73[0][3][4];
        l_1673[5][3][0]++;
        if (l_1631)
            goto lbl_1677;
        l_1676 = &l_1638[6];
    }
    (*p_3401->g_72) = (safe_sub_func_uint64_t_u_u((l_1671 = (l_1680 != &p_3401->g_594)), (safe_add_func_uint8_t_u_u(l_1652, (safe_sub_func_uint64_t_u_u((safe_rshift_func_int64_t_s_s((*p_3401->g_337), ((((l_1704 = ((safe_lshift_func_uint16_t_u_s(((safe_mod_func_uint8_t_u_u((safe_unary_minus_func_uint16_t_u((safe_add_func_uint16_t_u_u((((((safe_lshift_func_int64_t_s_u((((*l_1697) = l_1696) != p_3401->g_1698), 12)) <= (safe_mod_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(p_34, (((l_1703 != nullptr) <= l_1704) <= 1L))), p_34))) < p_34) != p_34) == 0xB9L), p_34)))), p_34)) || l_1631), 9)) ^ p_34)) == l_1673[5][3][0]) ^ p_34) > p_34))), (-4L)))))));
    (*l_1705) = &p_34;
    for (p_3401->g_515 = 0; (p_3401->g_515 <= 2); p_3401->g_515 += 1)
    { /* block id: 829 */
        uint8_t l_1708 = 0xE4L;
        int32_t l_1717[1];
        uint32_t l_1740 = 1UL;
        union U1 *l_1747[3];
        int32_t l_1750 = 0x0506694CL;
        int i;
        for (i = 0; i < 1; i++)
            l_1717[i] = 0x76920983L;
        for (i = 0; i < 3; i++)
            l_1747[i] = nullptr;
    }
    return l_1758;
}


/* ------------------------------------------ */
/* 
 * reads : p_3401->g_556.f1
 * writes: p_3401->g_39 p_3401->g_556.f1
 */
__device__ int32_t  func_35(union U2  p_36, int16_t  p_37, int32_t  p_38, struct S3 * p_3401)
{ /* block id: 1 */
    uint16_t l_57 = 65530UL;
    int32_t l_1336 = 0xC799EA27L;
    int32_t l_1337[10] = {0x16890ABDL, 0x16890ABDL, 0L, 0x16890ABDL, 0x16890ABDL, 0L, 0x16890ABDL, 0x16890ABDL, 0L, 0x16890ABDL};
    uint32_t ***l_1356 = &p_3401->g_1324;
    uint32_t l_1418 = 0UL;
    int32_t ****l_1437 = &p_3401->g_475;
    int64_t l_1446 = 0xB241FC006F68E4D4LL;
    union U2 **l_1471[7][9][2] = {{{&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}}, {{&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}}, {{&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}}, {{&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}}, {{&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}}, {{&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}}, {{&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}, {&p_3401->g_353, nullptr}}};
    uint64_t l_1476 = 7UL;
    uint64_t ***l_1495 = &p_3401->g_852;
    uint64_t ****l_1494 = &l_1495;
    uint8_t l_1553 = 0UL;
    struct S0 l_1574 = {2UL,0L,252UL,9L,-1L};
    int8_t *l_1623[6] = {nullptr, nullptr, nullptr, nullptr, nullptr, nullptr};
    int8_t **l_1622 = &l_1623[4];
    int i, j, k;
    for (p_36.f3.f4 = 0; (p_36.f3.f4 <= 14); ++p_36.f3.f4)
    { /* block id: 4 */
        uint64_t l_1320 = 1UL;
        int32_t l_1332 = 0L;
        int32_t l_1340 = 7L;
        int32_t l_1341[6];
        int16_t l_1344 = 0xDB72L;
        int16_t **l_1366 = &p_3401->g_148[2];
        union U1 l_1376 = {-1L};
        int i;
        for (i = 0; i < 6; i++)
            l_1341[i] = 0xFFC209DCL;
        for (p_38 = 0; p_38 < 3; p_38 += 1)
        {
            for (p_37 = 0; p_37 < 8; p_37 += 1)
            {
                union U2 tmp = {-1L};
                p_3401->g_39[p_38][p_37] = tmp;
            }
        }
        for (p_37 = 2; (p_37 >= 0); p_37 -= 1)
        { /* block id: 8 */
            uint32_t l_53 = 4294967287UL;
            uint16_t *l_1167 = &p_3401->g_95.f2;
            struct S0 l_1318 = {65534UL,0x4D3919A7L,0x11L,8L,0xECL};
            int32_t l_1331 = 6L;
            int32_t l_1333 = 0x28DA1848L;
            int32_t l_1334 = 5L;
            int32_t l_1338 = 0x97107AF0L;
            int32_t l_1339[9][5] = {{0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}, {0x1F99D84DL, 0x3695EB6CL, 0xDB707E2EL, 0x5A26C667L, 0x9296B4E2L}};
            int32_t l_1345 = 2L;
            uint8_t l_1346[1];
            uint32_t l_1361 = 0xA25B7FADL;
            int16_t **l_1365 = &p_3401->g_148[1];
            int i, j;
            for (i = 0; i < 1; i++)
                l_1346[i] = 255UL;
        }
    }
    for (p_3401->g_556.f1 = 4; (p_3401->g_556.f1 >= 0); p_3401->g_556.f1 -= 1)
    { /* block id: 707 */
        uint8_t l_1431 = 246UL;
        uint8_t **l_1439 = &p_3401->g_390[0];
        int32_t l_1453 = 1L;
        int16_t **l_1492 = &p_3401->g_148[1];
        int32_t l_1510[7];
        uint64_t l_1547 = 18446744073709551615UL;
        uint64_t l_1564 = 1UL;
        uint32_t l_1597 = 0UL;
        int32_t l_1620 = (-10L);
        int64_t *l_1625 = nullptr;
        uint64_t ****l_1626 = &l_1495;
        int i;
        for (i = 0; i < 7; i++)
            l_1510[i] = (-5L);
    }
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
__device__ union U2  func_42(union U2  p_43, uint32_t  p_44, int32_t  p_45, int32_t  p_46, struct S0  p_47, struct S3 * p_3401)
{ /* block id: 667 */
    union U2 l_1319 = {-7L};
    return l_1319;
}


/* ------------------------------------------ */
/* 
 * reads : p_3401->g_71.f3 p_3401->g_556.f3 p_3401->g_475 p_3401->g_1291 p_3401->g_73 p_3401->g_1220 p_3401->g_637 p_3401->g_655 p_3401->g_353 p_3401->g_39
 * writes: p_3401->g_71.f3 p_3401->g_654 p_3401->g_150 p_3401->g_73 p_3401->g_1291 p_3401->g_1140 p_3401->g_71.f2 p_3401->g_655
 */
__device__ union U2  func_48(int8_t  p_49, uint32_t  p_50, struct S3 * p_3401)
{ /* block id: 636 */
    union U2 *l_1248 = nullptr;
    union U2 **l_1249[7][2][3] = {{{&l_1248, &p_3401->g_353, &l_1248}, {&l_1248, &p_3401->g_353, &l_1248}}, {{&l_1248, &p_3401->g_353, &l_1248}, {&l_1248, &p_3401->g_353, &l_1248}}, {{&l_1248, &p_3401->g_353, &l_1248}, {&l_1248, &p_3401->g_353, &l_1248}}, {{&l_1248, &p_3401->g_353, &l_1248}, {&l_1248, &p_3401->g_353, &l_1248}}, {{&l_1248, &p_3401->g_353, &l_1248}, {&l_1248, &p_3401->g_353, &l_1248}}, {{&l_1248, &p_3401->g_353, &l_1248}, {&l_1248, &p_3401->g_353, &l_1248}}, {{&l_1248, &p_3401->g_353, &l_1248}, {&l_1248, &p_3401->g_353, &l_1248}}};
    union U2 *l_1250 = &p_3401->g_39[2][5];
    int32_t *l_1253[2];
    uint16_t *l_1293 = &p_3401->g_71.f0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1253[i] = &p_3401->g_73[0][3][4];
    l_1250 = l_1248;
    for (p_3401->g_71.f3 = 0; (p_3401->g_71.f3 > 9); p_3401->g_71.f3 = safe_add_func_int16_t_s_s(p_3401->g_71.f3, 1))
    { /* block id: 640 */
        int32_t **l_1254 = &l_1253[0];
        union U2 l_1255 = {8L};
        int8_t *l_1257 = &p_3401->g_1140[8][4][2];
        int8_t **l_1256 = &l_1257;
        int8_t **l_1259[10][2] = {{&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}, {&l_1257, &l_1257}};
        int8_t ***l_1258 = &l_1259[4][0];
        int32_t ***l_1287 = nullptr;
        uint16_t *l_1292 = &p_3401->g_71.f0;
        int32_t l_1295 = (-5L);
        int i, j;
        (*l_1254) = l_1253[0];
        if (((l_1255 , l_1256) == ((*l_1258) = &l_1257)))
        { /* block id: 643 */
            int32_t l_1262 = (-5L);
            int32_t ***l_1286 = nullptr;
            int32_t ****l_1285[10][3][8] = {{{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}, {{&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}, {&l_1286, nullptr, &p_3401->g_475, &l_1286, &l_1286, &l_1286, &p_3401->g_475, nullptr}}};
            int64_t *l_1288 = &l_1255.f0;
            int64_t *l_1289 = &p_3401->g_654;
            int16_t *l_1290 = &p_3401->g_150;
            uint32_t *l_1294[6];
            uint16_t **l_1311 = &p_3401->g_231[2][7][2];
            uint16_t ***l_1310 = &l_1311;
            uint8_t *l_1314 = &p_3401->g_71.f2;
            int16_t l_1315 = 1L;
            union U2 l_1316[4][7] = {{{6L}, {6L}, {-1L}, {0x9C7157CC26A54FBBLL}, {0x7A7DADF82E6D24F2LL}, {0x9C7157CC26A54FBBLL}, {-1L}}, {{6L}, {6L}, {-1L}, {0x9C7157CC26A54FBBLL}, {0x7A7DADF82E6D24F2LL}, {0x9C7157CC26A54FBBLL}, {-1L}}, {{6L}, {6L}, {-1L}, {0x9C7157CC26A54FBBLL}, {0x7A7DADF82E6D24F2LL}, {0x9C7157CC26A54FBBLL}, {-1L}}, {{6L}, {6L}, {-1L}, {0x9C7157CC26A54FBBLL}, {0x7A7DADF82E6D24F2LL}, {0x9C7157CC26A54FBBLL}, {-1L}}};
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_1294[i] = &p_3401->g_1246;
            l_1295 ^= (safe_mod_func_uint8_t_u_u((((p_3401->g_1291 = ((l_1262 , ((((p_50 && (safe_rshift_func_uint32_t_u_s(5UL, 8))) , ((safe_mod_func_int16_t_s_s(((safe_add_func_int32_t_s_s((p_50 && (((safe_rshift_func_int32_t_s_s(p_50, ((**l_1254) |= (((safe_lshift_func_int32_t_s_u((safe_mod_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((*l_1290) = (safe_sub_func_int16_t_s_s(l_1262, (((*l_1289) = ((*l_1288) = (safe_add_func_uint32_t_u_u(((p_3401->g_556.f3 , p_3401->g_475) == (l_1287 = p_3401->g_475)), p_50)))) == 0L)))), p_49)), p_3401->g_1291)), 6L)), p_49)) < p_49) > 1L)))) , l_1292) != l_1293)), p_3401->g_556.f3)) || p_50), p_49)) & p_50)) != 0UL) & 0x59F77872F6275374LL)) , p_3401->g_1220)) , (-5L)) == p_49), p_50));
            if ((safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((&p_3401->g_594 != nullptr) <= (+(safe_add_func_uint64_t_u_u(((~(p_3401->g_655 ^= (((p_50 || ((((*l_1314) = (safe_sub_func_int64_t_s_s(3L, ((*l_1289) = (safe_mul_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((&l_1292 == ((*l_1310) = &l_1292)), ((safe_rshift_func_int64_t_s_s(0x05E35F3C4C7A2B91LL, 1)) , ((*l_1257) = ((p_49 & p_49) , p_49))))), p_50)))))) > p_3401->g_71.f3) & p_3401->g_637)) | (**l_1254)) , p_50))) ^ l_1315), 0x34169335CDE7D0F4LL)))), (**l_1254))), 7)))
            { /* block id: 656 */
                return (*p_3401->g_353);
            }
            else
            { /* block id: 658 */
                return l_1316[1][0];
            }
        }
        else
        { /* block id: 661 */
            union U2 l_1317 = {0x5F42B4B18DCAF077LL};
            if (p_49)
                break;
            return l_1317;
        }
    }
    return (*p_3401->g_353);
}


/* ------------------------------------------ */
/* 
 * reads : p_3401->g_71.f1 p_3401->g_73 p_3401->g_1220 p_3401->g_654 p_3401->g_637 p_3401->g_1149 p_3401->g_1150 p_3401->g_556.f3 p_3401->g_391 p_3401->g_1246 p_3401->g_281
 * writes: p_3401->g_653 p_3401->g_95.f0 p_3401->g_72 p_3401->g_654 p_3401->g_73 p_3401->g_281 p_3401->g_637 p_3401->g_1246
 */
__device__ int8_t  func_63(uint64_t  p_64, uint16_t  p_65, int64_t  p_66, uint8_t  p_67, struct S3 * p_3401)
{ /* block id: 602 */
    uint32_t l_1190 = 9UL;
    int32_t l_1191 = 5L;
    union U1 *l_1195 = nullptr;
    int16_t *l_1217[7] = {&p_3401->g_235, &p_3401->g_235, &p_3401->g_329, &p_3401->g_235, &p_3401->g_235, &p_3401->g_329, &p_3401->g_235};
    uint16_t *l_1238 = &p_3401->g_637;
    struct S0 *l_1241 = nullptr;
    struct S0 **l_1242 = nullptr;
    struct S0 **l_1243 = &l_1241;
    int32_t *l_1244[9][9] = {{&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}, {&p_3401->g_73[0][3][4], &p_3401->g_73[3][3][1], nullptr, &l_1191, &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], &p_3401->g_73[0][3][4], nullptr, nullptr}};
    uint64_t l_1247 = 0xD8867F1AF484CF67LL;
    int i, j;
lbl_1229:
    for (p_67 = 7; (p_67 <= 49); p_67 = safe_add_func_int8_t_s_s(p_67, 5))
    { /* block id: 605 */
        uint8_t l_1170[3][7][2] = {{{0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}}, {{0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}}, {{0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}, {0xFAL, 0x74L}}};
        union U1 l_1171 = {-5L};
        uint8_t *l_1176 = &p_3401->g_653;
        int32_t *l_1192 = &p_3401->g_95.f0;
        int32_t **l_1193 = &p_3401->g_72;
        int32_t **l_1194 = &l_1192;
        int64_t *l_1196 = &p_3401->g_654;
        int i, j, k;
        (*l_1192) = ((l_1170[1][2][1] != (((p_66 && 4UL) | (l_1170[1][4][0] ^ (l_1171 , ((((safe_sub_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(((*l_1176) = p_65), 4)) | (safe_rshift_func_uint16_t_u_u(((l_1191 = (safe_div_func_uint8_t_u_u(((((~((l_1170[0][3][0] && ((p_66 , ((safe_div_func_uint64_t_u_u(((safe_mod_func_uint16_t_u_u((((safe_sub_func_int16_t_s_s(0x80D6L, p_64)) != l_1190) <= 0xA0L), l_1170[1][2][1])) == 0L), p_65)) , (-1L))) ^ 0L)) ^ l_1190)) & 0x4CCEF697AECC0499LL) , p_67) & 0xAAL), l_1171.f0))) == 0x16313F78L), l_1170[0][2][0]))), l_1190)) >= l_1190) > l_1190) || p_64)))) && (-1L))) == l_1190);
        (*l_1194) = ((*l_1193) = &p_3401->g_73[0][3][4]);
        (**l_1194) ^= ((-2L) == (((*l_1196) = (&l_1171 != l_1195)) > (((~((safe_unary_minus_func_uint32_t_u((safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((l_1171 , 0x363AL) && (safe_sub_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((((((safe_mod_func_int16_t_s_s(((safe_rshift_func_int32_t_s_s((4294967293UL || (p_64 & (nullptr == &p_3401->g_475))), 3)) & p_64), l_1191)) <= p_66) , 0x99B2AF6CL) , l_1191) != p_66) && p_65), p_66)), 0x80DF35D0A347B8F1LL))), p_3401->g_71.f1)), l_1191)), 1L)))) > 6UL)) == p_65) == (-6L))));
    }
    for (p_3401->g_281 = 24; (p_3401->g_281 >= (-16)); p_3401->g_281 = safe_sub_func_int32_t_s_s(p_3401->g_281, 1))
    { /* block id: 616 */
        int16_t **l_1218 = nullptr;
        int16_t *l_1219 = &p_3401->g_95.f4;
        int32_t **l_1221 = &p_3401->g_72;
        uint8_t **l_1228 = &p_3401->g_390[0];
        (*l_1221) = ((safe_mod_func_uint32_t_u_u((0x9661L & (l_1217[5] == (l_1219 = &p_3401->g_150))), p_3401->g_1220)) , &l_1191);
        for (p_3401->g_654 = 0; (p_3401->g_654 > (-11)); p_3401->g_654--)
        { /* block id: 621 */
            uint8_t **l_1227 = &p_3401->g_390[2];
            for (p_66 = 4; (p_66 >= 0); p_66 -= 1)
            { /* block id: 624 */
                uint8_t **l_1226 = &p_3401->g_390[4];
                uint8_t ***l_1225 = &l_1226;
                uint8_t ****l_1224 = &l_1225;
                (*l_1224) = nullptr;
                l_1228 = l_1227;
            }
        }
        if (l_1191)
            goto lbl_1229;
    }
    p_3401->g_1246 &= ((safe_add_func_uint16_t_u_u(l_1191, ((p_65 , ((((safe_lshift_func_int32_t_s_s((safe_div_func_uint64_t_u_u(((p_3401->g_73[0][0][2] ^= (safe_mul_func_uint16_t_u_u((++(*l_1238)), (l_1190 ^ ((*p_3401->g_1149) != ((*l_1243) = l_1241)))))) , p_64), (~p_64))), 28)) == ((p_64 ^ p_64) > p_3401->g_556.f3)) != p_65) >= p_3401->g_391)) > 0x77F1L))) ^ p_67);
    return l_1247;
}


/* ------------------------------------------ */
/* 
 * reads : p_3401->g_6 p_3401->g_72 p_3401->g_71.f1 p_3401->g_71.f3 p_3401->g_95 p_3401->g_39.f0 p_3401->g_73 p_3401->g_71.f4 p_3401->g_148 p_3401->g_39 p_3401->g_71.f0 p_3401->g_95.f0 p_3401->g_71 p_3401->g_150 p_3401->g_235 p_3401->g_329 p_3401->g_281 p_3401->g_95.f4 p_3401->g_352 p_3401->g_265 p_3401->g_233 p_3401->g_231 p_3401->g_390 p_3401->g_326 p_3401->g_391 p_3401->g_456 p_3401->g_475 p_3401->g_594 p_3401->g_515 p_3401->g_637 p_3401->g_1149
 * writes: p_3401->g_72 p_3401->g_95.f3.f2 p_3401->g_71.f2 p_3401->g_71.f4 p_3401->g_73 p_3401->g_150 p_3401->g_95.f3.f3 p_3401->g_95.f0 p_3401->g_326 p_3401->g_329 p_3401->g_337 p_3401->g_95.f3 p_3401->g_95.f4 p_3401->g_71 p_3401->g_352 p_3401->g_39.f3.f4 p_3401->g_594 p_3401->g_637 p_3401->g_390
 */
__device__ int8_t  func_68(uint32_t  p_69, int32_t  p_70, struct S3 * p_3401)
{ /* block id: 9 */
    union U1 l_97[7][5][7] = {{{{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}}, {{{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}}, {{{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}}, {{{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}}, {{{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}}, {{{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}}, {{{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}, {{0L}, {0x5E1C3789L}, {0x34BB8EBAL}, {0L}, {0x9230FEFEL}, {0x13354A90L}, {0xDD267AFBL}}}};
    uint64_t l_98[1];
    int8_t l_101 = 1L;
    int32_t l_133 = (-1L);
    int32_t l_136 = 0x72C97804L;
    int32_t l_138 = 0x99C40DF3L;
    int32_t l_184[4][8] = {{0x493D40E6L, 0x21426223L, 1L, 0x21426223L, 0x493D40E6L, 0x0DA225B3L, 0x493D40E6L, 0x21426223L}, {0x493D40E6L, 0x21426223L, 1L, 0x21426223L, 0x493D40E6L, 0x0DA225B3L, 0x493D40E6L, 0x21426223L}, {0x493D40E6L, 0x21426223L, 1L, 0x21426223L, 0x493D40E6L, 0x0DA225B3L, 0x493D40E6L, 0x21426223L}, {0x493D40E6L, 0x21426223L, 1L, 0x21426223L, 0x493D40E6L, 0x0DA225B3L, 0x493D40E6L, 0x21426223L}};
    int32_t **l_202[3];
    union U2 *l_209[3][6] = {{&p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6]}, {&p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6]}, {&p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6], &p_3401->g_39[2][6]}};
    uint64_t l_215 = 18446744073709551615UL;
    struct S0 *l_222 = &p_3401->g_71;
    int32_t l_228 = 0x533B4751L;
    union U2 *l_266[4];
    int16_t l_296[4];
    uint64_t *l_317 = &l_98[0];
    int64_t *l_320 = nullptr;
    uint32_t *l_324 = nullptr;
    uint32_t *l_325 = &p_3401->g_326;
    uint16_t *l_327[6][5][8] = {{{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}};
    uint32_t l_328 = 4294967295UL;
    int8_t *l_332 = &p_3401->g_39[2][6].f3.f4;
    int8_t *l_333 = &l_101;
    int8_t *l_338 = &p_3401->g_71.f4;
    uint32_t l_422[7][10] = {{0x9CEC528DL, 0xE2853FEFL, 0x9CEC528DL, 0x929953DAL, 0UL, 0x2754901EL, 8UL, 8UL, 0x2754901EL, 0UL}, {0x9CEC528DL, 0xE2853FEFL, 0x9CEC528DL, 0x929953DAL, 0UL, 0x2754901EL, 8UL, 8UL, 0x2754901EL, 0UL}, {0x9CEC528DL, 0xE2853FEFL, 0x9CEC528DL, 0x929953DAL, 0UL, 0x2754901EL, 8UL, 8UL, 0x2754901EL, 0UL}, {0x9CEC528DL, 0xE2853FEFL, 0x9CEC528DL, 0x929953DAL, 0UL, 0x2754901EL, 8UL, 8UL, 0x2754901EL, 0UL}, {0x9CEC528DL, 0xE2853FEFL, 0x9CEC528DL, 0x929953DAL, 0UL, 0x2754901EL, 8UL, 8UL, 0x2754901EL, 0UL}, {0x9CEC528DL, 0xE2853FEFL, 0x9CEC528DL, 0x929953DAL, 0UL, 0x2754901EL, 8UL, 8UL, 0x2754901EL, 0UL}, {0x9CEC528DL, 0xE2853FEFL, 0x9CEC528DL, 0x929953DAL, 0UL, 0x2754901EL, 8UL, 8UL, 0x2754901EL, 0UL}};
    int16_t **l_458 = &p_3401->g_148[2];
    int16_t ***l_457 = &l_458;
    uint32_t l_493 = 0xA13956ADL;
    uint32_t l_579 = 4294967295UL;
    int32_t l_739 = 1L;
    int16_t l_747[3];
    uint32_t l_751 = 18446744073709551615UL;
    int64_t l_882 = 1L;
    uint64_t l_918 = 0x16E4D9F4DB511968LL;
    union U1 *l_933[10][4][6] = {{{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}, {{&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}, {&l_97[6][2][6], &l_97[6][1][1], &l_97[0][4][3], &l_97[0][4][3], &l_97[0][4][3], &l_97[6][1][1]}}};
    union U1 **l_973 = &l_933[1][0][3];
    union U1 ***l_972 = &l_973;
    uint32_t l_1038[1][2][9] = {{{4294967295UL, 4294967288UL, 1UL, 1UL, 4294967288UL, 4294967295UL, 4294967288UL, 1UL, 1UL}, {4294967295UL, 4294967288UL, 1UL, 1UL, 4294967288UL, 4294967295UL, 4294967288UL, 1UL, 1UL}}};
    uint64_t l_1087 = 0x756490CADE37EE8DLL;
    uint64_t l_1123[4];
    uint8_t *l_1164 = &p_3401->g_71.f2;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_98[i] = 0x9099BCB137123A74LL;
    for (i = 0; i < 3; i++)
        l_202[i] = nullptr;
    for (i = 0; i < 4; i++)
        l_266[i] = &p_3401->g_39[1][5];
    for (i = 0; i < 4; i++)
        l_296[i] = (-6L);
    for (i = 0; i < 3; i++)
        l_747[i] = 0xD481L;
    for (i = 0; i < 4; i++)
        l_1123[i] = 0xF05788D459E326CDLL;
    if (p_3401->g_6)
    { /* block id: 10 */
        int32_t **l_74[3];
        int i;
        for (i = 0; i < 3; i++)
            l_74[i] = &p_3401->g_72;
        p_3401->g_72 = p_3401->g_72;
        for (p_70 = 12; (p_70 > (-2)); p_70 = safe_sub_func_int64_t_s_s(p_70, 4))
        { /* block id: 14 */
            union U1 *l_96[6][6] = {{nullptr, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95}, {nullptr, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95}, {nullptr, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95}, {nullptr, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95}, {nullptr, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95}, {nullptr, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95, &p_3401->g_95}};
            int32_t l_99 = (-5L);
            int32_t **l_100 = &p_3401->g_72;
            int32_t l_137 = (-4L);
            int32_t l_139 = 0x568C23FBL;
            int32_t l_141 = 0x12706A3BL;
            int i, j;
            if (((safe_unary_minus_func_uint32_t_u(((safe_add_func_int8_t_s_s(((safe_lshift_func_uint32_t_u_s((((((!p_3401->g_71.f1) > p_69) && p_3401->g_71.f3) | (0x3350090E7AF82577LL == (((((safe_rshift_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(((((safe_rshift_func_uint32_t_u_s(0x65F1F474L, (p_69 | (safe_mul_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((p_3401->g_71.f1 & (((l_97[0][4][3] = p_3401->g_95) , ((l_74[1] != nullptr) , 0x9E610DA34DBBD83FLL)) <= p_3401->g_39[2][6].f0)) & 0xFEA0L), l_98[0])), p_69))))) , (-1L)) & l_99) == p_70), (-1L))), 28)) , nullptr) == l_100) == l_98[0]) , 6L))) , 1UL), 28)) >= p_69), l_98[0])) , 5UL))) , (*p_3401->g_72)))
            { /* block id: 16 */
                l_101 &= (*p_3401->g_72);
            }
            else
            { /* block id: 18 */
                int8_t l_121 = (-5L);
                int32_t l_125 = 1L;
                int32_t l_130 = 0x77822E2CL;
                int32_t l_131 = (-1L);
                int64_t l_132 = 0L;
                int32_t l_135 = 0xD7DE1A35L;
                uint16_t l_142 = 65535UL;
                for (p_69 = 13; (p_69 > 33); p_69 = safe_add_func_int64_t_s_s(p_69, 1))
                { /* block id: 21 */
                    uint32_t l_123 = 0x88EED364L;
                    int32_t l_128 = (-1L);
                    int32_t l_140 = 5L;
                    for (p_3401->g_95.f3.f2 = (-15); (p_3401->g_95.f3.f2 == 40); p_3401->g_95.f3.f2 = safe_add_func_int8_t_s_s(p_3401->g_95.f3.f2, 1))
                    { /* block id: 24 */
                        int16_t *l_120 = &l_97[0][4][3].f4;
                        uint8_t *l_122 = &p_3401->g_71.f2;
                        int8_t *l_124 = nullptr;
                        int32_t l_126 = (-7L);
                        int32_t l_127 = (-1L);
                        int32_t l_129 = (-1L);
                        int32_t l_134 = 1L;
                        (*p_3401->g_72) = ((0xF010L && ((safe_mod_func_uint8_t_u_u(p_69, (-1L))) ^ 0x5366612900EB00D6LL)) <= (safe_sub_func_int16_t_s_s(3L, ((l_125 &= (p_70 > ((p_3401->g_71.f4 &= ((safe_mul_func_uint16_t_u_u(((((safe_add_func_int64_t_s_s((safe_mul_func_uint32_t_u_u(p_3401->g_73[4][1][2], (((safe_lshift_func_int32_t_s_u((((*l_122) = ((p_3401->g_71.f3 == (safe_sub_func_int32_t_s_s((((*l_120) = p_3401->g_71.f3) < l_121), p_70))) && p_70)) == p_70), 18)) , 5L) ^ p_3401->g_73[0][3][4]))), 0UL)) , (**l_100)) ^ p_69) < 0xDA491F1FL), (-4L))) >= l_123)) < p_3401->g_73[0][3][4]))) && p_70))));
                        l_142--;
                    }
                }
            }
        }
    }
    else
    { /* block id: 35 */
        int16_t *l_149 = &p_3401->g_150;
        int32_t *l_152 = &l_138;
        struct S0 l_169 = {65534UL,1L,0x59L,0xCA9757F0L,9L};
        int32_t l_179 = 0x8F9DC3F5L;
        int32_t l_181 = 0x6A571D43L;
        int16_t l_208 = 0xFA8AL;
        union U2 *l_210 = &p_3401->g_39[2][6];
        int32_t l_236 = 4L;
        int32_t l_238 = 0xE94A68FEL;
        int32_t l_239 = 1L;
        int32_t l_240 = 0x7679242BL;
        uint64_t l_241 = 0x20C6C97D4F73E1BCLL;
        for (p_69 = 0; (p_69 <= 4); p_69 += 1)
        { /* block id: 38 */
            struct S0 l_147 = {0UL,-6L,249UL,1L,-1L};
            int32_t l_180[8] = {0x3E28F332L, 4L, 0x3E28F332L, 4L, 0x3E28F332L, 4L, 0x3E28F332L, 4L};
            int8_t *l_262 = &p_3401->g_71.f4;
            union U2 *l_270 = &p_3401->g_39[2][6];
            int32_t l_282 = 0x07E1FE83L;
            int8_t l_297 = 0x93L;
            int i;
            for (l_133 = 2; (l_133 >= 0); l_133 -= 1)
            { /* block id: 41 */
                int16_t **l_151 = &l_149;
                int32_t l_167[4];
                struct S0 l_170 = {0UL,1L,255UL,-1L,0L};
                uint8_t l_185 = 8UL;
                uint8_t l_188 = 0x2FL;
                int32_t **l_205 = nullptr;
                int i;
                for (i = 0; i < 4; i++)
                    l_167[i] = 1L;
                (*p_3401->g_72) = (safe_lshift_func_int16_t_s_u(l_136, 1));
                l_152 = (((l_147 , p_3401->g_148[2]) == ((*l_151) = l_149)) , &p_3401->g_73[2][3][1]);
                for (l_138 = 0; (l_138 <= 4); l_138 += 1)
                { /* block id: 47 */
                    int32_t **l_153 = &l_152;
                    int16_t *l_168[2];
                    int32_t l_182 = 0x0BFAE5DCL;
                    int32_t l_183 = 0x52E1ABEAL;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_168[i] = &l_97[0][4][3].f4;
                    (*l_153) = &p_3401->g_73[l_138][(l_138 + 1)][p_69];
                    p_3401->g_73[(l_138 + 1)][(p_69 + 1)][(l_133 + 2)] = (safe_lshift_func_int16_t_s_u((safe_mul_func_int64_t_s_s((((0L >= 18446744073709551615UL) < ((l_167[0] = ((**l_151) = ((safe_add_func_uint8_t_u_u(((p_3401->g_39[l_133][l_133] , (safe_unary_minus_func_uint8_t_u(((safe_rshift_func_int64_t_s_s((safe_add_func_uint64_t_u_u(((&p_3401->g_148[2] != nullptr) & ((safe_mod_func_uint16_t_u_u(l_147.f1, 8UL)) <= ((p_69 < (((&p_3401->g_150 != &p_3401->g_150) < l_167[0]) == 65529UL)) <= 0x2626EB52EEBB8701LL))), 0x254A21752400A850LL)), p_3401->g_39[2][6].f0)) == p_69)))) , 1UL), p_70)) >= p_70))) && p_3401->g_71.f0)) >= p_70), p_3401->g_71.f0)), 2));
                    for (p_3401->g_95.f3.f3 = 3; (p_3401->g_95.f3.f3 >= 0); p_3401->g_95.f3.f3 -= 1)
                    { /* block id: 54 */
                        struct S0 *l_171[8] = {nullptr, nullptr, &l_147, nullptr, nullptr, &l_147, nullptr, nullptr};
                        struct S0 **l_172 = &l_171[1];
                        int i;
                        l_170 = l_169;
                        (*l_172) = l_171[2];
                    }
                    for (l_169.f4 = 2; (l_169.f4 >= 0); l_169.f4 -= 1)
                    { /* block id: 60 */
                        int32_t *l_176 = &p_3401->g_95.f0;
                        int32_t *l_177 = &l_167[1];
                        int32_t *l_178[2][4][2] = {{{&p_3401->g_73[2][0][1], &p_3401->g_95.f0}, {&p_3401->g_73[2][0][1], &p_3401->g_95.f0}, {&p_3401->g_73[2][0][1], &p_3401->g_95.f0}, {&p_3401->g_73[2][0][1], &p_3401->g_95.f0}}, {{&p_3401->g_73[2][0][1], &p_3401->g_95.f0}, {&p_3401->g_73[2][0][1], &p_3401->g_95.f0}, {&p_3401->g_73[2][0][1], &p_3401->g_95.f0}, {&p_3401->g_73[2][0][1], &p_3401->g_95.f0}}};
                        int i, j, k;
                        (*l_152) &= l_170.f0;
                        p_3401->g_95.f0 ^= ((*l_152) = ((~0x8D69L) <= (safe_lshift_func_uint64_t_u_s(p_3401->g_73[5][2][2], 8))));
                        l_185--;
                    }
                    for (p_3401->g_71.f4 = 1; (p_3401->g_71.f4 <= 4); p_3401->g_71.f4 += 1)
                    { /* block id: 68 */
                        uint8_t *l_196 = &p_3401->g_39[l_133][l_133].f3.f2;
                        uint8_t *l_197[2];
                        uint16_t *l_206[2][8][5] = {{{&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}}, {{&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}, {&l_170.f0, &l_170.f0, &l_169.f0, nullptr, &l_170.f0}}};
                        int32_t ***l_207 = &l_202[1];
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_197[i] = nullptr;
                        (**l_153) |= 0x9D5B5896L;
                        (*p_3401->g_72) = l_188;
                        l_208 ^= ((safe_rshift_func_uint64_t_u_s((+((*l_152) = ((((l_153 != ((*l_207) = ((p_69 == (l_180[0] &= (safe_mul_func_int64_t_s_s((p_3401->g_71 , (l_97[(p_69 + 1)][p_69][(l_133 + 3)] , (((safe_lshift_func_uint8_t_u_u((0xA528L ^ l_147.f3), 5)) > (--p_3401->g_71.f2)) && ((safe_sub_func_int8_t_s_s(((p_3401->g_39[l_133][(p_3401->g_71.f4 + 3)] , l_202[1]) != ((safe_sub_func_uint32_t_u_u(p_69, (*p_3401->g_72))) , l_205)), p_69)) >= l_147.f2)))), 1UL)))) , l_153))) & 0xB29B32BAL) , (*l_152)) ^ 2L))), p_3401->g_6)) <= l_147.f2);
                    }
                }
            }
            for (l_179 = 3; (l_179 >= 1); l_179 -= 1)
            { /* block id: 81 */
                uint64_t l_226 = 18446744073709551615UL;
                int32_t l_227[1];
                uint16_t *l_230[8][10] = {{&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}, {&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}, {&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}, {&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}, {&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}, {&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}, {&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}, {&l_169.f0, &p_3401->g_71.f0, &p_3401->g_71.f0, nullptr, nullptr, &p_3401->g_71.f0, &p_3401->g_71.f0, &l_169.f0, &p_3401->g_71.f0, &l_147.f0}};
                int16_t ***l_284 = nullptr;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_227[i] = (-1L);
            }
        }
    }
    p_3401->g_329 |= (safe_sub_func_uint16_t_u_u((safe_lshift_func_int64_t_s_s(p_69, 40)), (((safe_div_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s((&p_3401->g_39[2][6] != nullptr), 2)) & p_3401->g_150), (((((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(p_69, (l_328 |= (p_3401->g_235 , ((((safe_sub_func_uint32_t_u_u(((--(*l_317)) , (nullptr == l_320)), (safe_lshift_func_uint32_t_u_u((safe_unary_minus_func_uint32_t_u(((*l_325) = p_3401->g_95.f0))), p_3401->g_71.f3)))) || 0x93AC515AL) , l_209[2][5]) == l_209[0][2]))))), p_70)) <= p_70) ^ p_69) & (*p_3401->g_72)) & p_3401->g_150))) == p_69) && p_69)));
    if ((safe_sub_func_int8_t_s_s(((*l_333) &= p_3401->g_281), (!((safe_lshift_func_int64_t_s_u(((p_3401->g_337 = (p_3401->g_39[0][0] , l_320)) != l_320), ((*p_3401->g_72) < (*p_3401->g_72)))) <= ((*l_338) = p_69))))))
    { /* block id: 147 */
        struct S0 l_339 = {0xF2E7L,0x4AFB54AEL,1UL,1L,1L};
        union U2 **l_355[8] = {&p_3401->g_353, &p_3401->g_353, nullptr, &p_3401->g_353, &p_3401->g_353, nullptr, &p_3401->g_353, &p_3401->g_353};
        int32_t l_360 = 0xC6EC0EB8L;
        uint32_t *l_361 = &l_328;
        union U1 *l_400 = &l_97[2][4][4];
        uint16_t l_417 = 0x41FCL;
        int64_t l_469 = (-1L);
        int32_t *l_487[6] = {&l_133, nullptr, &l_133, nullptr, &l_133, nullptr};
        uint32_t l_488 = 0x064323D6L;
        int16_t l_490 = 0L;
        int32_t *l_639 = nullptr;
        int64_t l_665[8][8][4] = {{{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}, {{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}, {{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}, {{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}, {{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}, {{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}, {{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}, {{1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}, {1L, 0xBA8A709DBC24CA35LL, 0L, (-1L)}}};
        int16_t ****l_713 = &p_3401->g_456;
        int32_t l_729 = 0x5235F04FL;
        int64_t l_841 = 0x9D9D3812DF830E25LL;
        uint16_t l_858 = 65534UL;
        int64_t l_875 = 7L;
        uint64_t **l_914[8][2][1] = {{{&l_317}, {&l_317}}, {{&l_317}, {&l_317}}, {{&l_317}, {&l_317}}, {{&l_317}, {&l_317}}, {{&l_317}, {&l_317}}, {{&l_317}, {&l_317}}, {{&l_317}, {&l_317}}, {{&l_317}, {&l_317}}};
        int8_t l_965 = 0x52L;
        int32_t l_994[10] = {1L, 0x61F67C1AL, 1L, 0x61F67C1AL, 1L, 0x61F67C1AL, 1L, 0x61F67C1AL, 1L, 0x61F67C1AL};
        union U2 ***l_1014 = nullptr;
        int32_t l_1058 = 2L;
        int8_t **l_1076 = nullptr;
        union U2 **l_1098[1][5];
        int32_t l_1108 = 0x514851D3L;
        int32_t ****l_1113 = &p_3401->g_475;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_1098[i][j] = &l_209[1][2];
        }
        p_3401->g_95.f3 = l_339;
        for (p_3401->g_95.f4 = 17; (p_3401->g_95.f4 <= (-16)); --p_3401->g_95.f4)
        { /* block id: 151 */
            union U2 ***l_354 = &p_3401->g_352[1][4];
            int32_t l_370 = 0x8778ADEAL;
            int32_t l_374[7] = {0L, 0L, 8L, 0L, 0L, 8L, 0L};
            uint16_t *l_385 = nullptr;
            uint64_t l_386 = 0x9D81224401B90D62LL;
            union U1 l_449 = {0x2AF56BBDL};
            uint16_t l_465 = 65535UL;
            int32_t *l_486[8] = {&l_360, nullptr, &l_360, nullptr, &l_360, nullptr, &l_360, nullptr};
            int i;
            (*l_222) = p_3401->g_71;
            if ((((safe_mul_func_uint32_t_u_u(((((safe_lshift_func_int8_t_s_s((0xFC131C93AB68C037LL > (safe_add_func_int8_t_s_s((l_360 ^= ((p_3401->g_39[2][6].f0 , ((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(((((*l_354) = p_3401->g_352[1][4]) == l_355[2]) > 0x62A6L), (safe_div_func_uint64_t_u_u(p_69, (safe_add_func_int8_t_s_s(p_3401->g_265, p_70)))))), p_70)) ^ p_70)) == 1UL)), p_69))), 7)) , l_360) , 0xE2631EB6L) ^ (*p_3401->g_72)), 0x55E30A02L)) <= p_3401->g_73[5][3][4]) | p_3401->g_233))
            { /* block id: 155 */
                (*p_3401->g_72) = 0x7CF21852L;
                if (l_360)
                    continue;
                (*p_3401->g_72) &= (&p_3401->g_326 == (l_361 = &p_3401->g_326));
                p_3401->g_72 = &p_3401->g_73[2][1][4];
            }
            else
            { /* block id: 161 */
                uint8_t *l_373[9] = {nullptr, &p_3401->g_39[2][6].f3.f2, nullptr, &p_3401->g_39[2][6].f3.f2, nullptr, &p_3401->g_39[2][6].f3.f2, nullptr, &p_3401->g_39[2][6].f3.f2, nullptr};
                uint16_t **l_384 = nullptr;
                int32_t l_393 = (-3L);
                int32_t l_394 = (-1L);
                int32_t l_395 = 1L;
                uint32_t l_466 = 1UL;
                int i;
                for (p_3401->g_71.f4 = 0; (p_3401->g_71.f4 >= (-14)); p_3401->g_71.f4 = safe_sub_func_uint8_t_u_u(p_3401->g_71.f4, 2))
                { /* block id: 164 */
                    (*p_3401->g_72) = (safe_lshift_func_int32_t_s_u(p_70, 2));
                }
                if ((*p_3401->g_72))
                    break;
                l_360 &= (safe_div_func_uint64_t_u_u((safe_lshift_func_uint32_t_u_u((((*l_361) = (p_3401->g_150 & (((((l_370 <= (((p_3401->g_71.f2++) && ((l_370 <= ((safe_add_func_int64_t_s_s((((safe_div_func_uint8_t_u_u((l_394 = ((+(safe_mod_func_uint64_t_u_u((((l_385 = p_3401->g_231[6][0][0]) == nullptr) >= (l_386 || ((l_393 = (((safe_mul_func_uint64_t_u_u((((+((p_3401->g_390[0] == &p_3401->g_391) , ((~3L) | p_69))) && p_70) == 0UL), p_69)) , p_69) ^ (-1L))) || l_339.f1))), p_69))) != p_3401->g_73[4][0][4])), p_3401->g_6)) | 0x09A9L) | p_3401->g_329), p_70)) ^ p_3401->g_326)) >= p_69)) != (-1L))) != 0L) && 255UL) <= p_69) | l_339.f3))) <= l_395), 7)), l_374[3]));
                if ((*p_3401->g_72))
                { /* block id: 174 */
                    int64_t *l_416 = &p_3401->g_39[2][6].f0;
                    (*p_3401->g_72) ^= (safe_add_func_uint16_t_u_u((safe_div_func_int64_t_s_s((nullptr == l_400), ((safe_sub_func_uint8_t_u_u((((*l_332) = (safe_unary_minus_func_int64_t_s((safe_mul_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_div_func_int64_t_s_s(p_3401->g_235, 0x21100BC54EC6D95ALL)), (((safe_add_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(1L, p_70)) | ((p_3401->g_235 || ((safe_add_func_int64_t_s_s((l_416 == nullptr), p_70)) & p_70)) && l_417)), p_70)) , nullptr) == &l_417))) == 0x38D3E49FCB02DF14LL), p_3401->g_391))))) ^ p_70), p_69)) , p_70))), 0xC997L));
                    if (p_69)
                        break;
                    if ((*p_3401->g_72))
                        continue;
                }
                else
                { /* block id: 179 */
                    int32_t l_419[3][5][3] = {{{1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}}, {{1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}}, {{1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}, {1L, 1L, 1L}}};
                    union U2 *l_427 = &p_3401->g_39[2][6];
                    int32_t l_467 = 0x409C2E31L;
                    int32_t l_468 = (-1L);
                    uint8_t l_470 = 0UL;
                    int16_t ***l_484 = &l_458;
                    struct S0 *l_485 = &l_339;
                    int i, j, k;
                    if (p_70)
                    { /* block id: 180 */
                        int8_t l_418[10][5] = {{(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}, {(-5L), 0x36L, 1L, 0x36L, (-5L)}};
                        int64_t l_420[8] = {0xC57AC9F6A4FDCADBLL, 0x3EC2F4BA8D89532CLL, 0xC57AC9F6A4FDCADBLL, 0x3EC2F4BA8D89532CLL, 0xC57AC9F6A4FDCADBLL, 0x3EC2F4BA8D89532CLL, 0xC57AC9F6A4FDCADBLL, 0x3EC2F4BA8D89532CLL};
                        int32_t l_421 = 0xA99D9C48L;
                        int i, j;
                        --l_422[0][4];
                        (*p_3401->g_72) |= (safe_mul_func_uint8_t_u_u((0x10B4DAB2L >= ((*l_361) = p_3401->g_39[2][6].f0)), (l_421 ^= p_69)));
                        l_427 = l_266[3];
                    }
                    else
                    { /* block id: 186 */
                        l_370 = (*p_3401->g_72);
                        l_419[0][0][0] |= p_69;
                        if (l_374[5])
                            continue;
                        (*l_222) = p_3401->g_71;
                    }
                    (*p_3401->g_72) |= (p_69 , (safe_add_func_uint32_t_u_u(4294967295UL, (l_469 |= (safe_rshift_func_uint8_t_u_s(((safe_lshift_func_int64_t_s_u(l_339.f3, 26)) , ((((*l_427) , (~(safe_lshift_func_int32_t_s_s((safe_add_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s((safe_div_func_uint32_t_u_u((safe_div_func_int8_t_s_s((safe_sub_func_int16_t_s_s((l_449 , ((safe_sub_func_int8_t_s_s((safe_rshift_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((((p_3401->g_456 == l_457) , (((!(l_360 = (((safe_rshift_func_uint64_t_u_u((safe_lshift_func_uint32_t_u_u(((*l_361) = ((((((!(((p_69 | l_386) < p_70) | p_70)) != l_465) < (-1L)) <= p_69) < 0L) , 4294967295UL)), 26)), 38)) , p_70) <= 4294967293UL))) != l_386) >= l_339.f2)) >= l_466), 10)), 30)), p_69)) | p_3401->g_39[2][6].f0)), l_419[2][2][2])), l_467)), p_69)), p_69)), 254UL)) , p_69), p_70)), l_417)))) >= 0xC36F293F6CEA1F4ALL) , l_468)), p_69))))));
                    (*l_485) = ((*l_222) = ((4L | ((l_470 ^ (safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(0UL, (p_3401->g_475 == nullptr))), (((safe_add_func_int16_t_s_s((-7L), ((safe_add_func_int8_t_s_s((safe_lshift_func_uint32_t_u_u((((*l_332) = 0xA0L) != l_360), 17)), (safe_add_func_uint32_t_u_u(p_3401->g_71.f4, 0x51E1C972L)))) && p_70))) , &l_458) == l_484)))) != (*p_3401->g_72))) , p_3401->g_71));
                    l_487[4] = l_486[7];
                }
            }
        }
        if (l_488)
        { /* block id: 203 */
            int16_t l_489 = 1L;
            int32_t l_491 = 0x5BF0AE78L;
            int32_t l_492[9][5][4] = {{{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}, {{0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}, {0xD1EB2E24L, 0xC41D8366L, (-1L), 1L}}};
            int64_t l_498 = 1L;
            int32_t l_516 = 1L;
            int16_t **l_549[7];
            struct S0 l_551 = {1UL,0x274BE085L,255UL,0x856C4262L,6L};
            int32_t l_576 = (-7L);
            union U2 ***l_590 = &l_355[2];
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_549[i] = nullptr;
            ++l_493;
            for (l_469 = (-6); (l_469 < (-5)); l_469 = safe_add_func_int16_t_s_s(l_469, 9))
            { /* block id: 207 */
                uint8_t *l_512 = &p_3401->g_71.f2;
                int32_t l_550 = 5L;
                int32_t l_575 = 0xA7C79F22L;
                p_3401->g_72 = &l_360;
            }
            if ((safe_rshift_func_int64_t_s_s(p_70, l_579)))
            { /* block id: 254 */
                int16_t **l_587 = nullptr;
                int32_t l_591[6] = {0x7073861CL, 0x7073861CL, 0L, 0x7073861CL, 0x7073861CL, 0L};
                uint64_t *l_595 = &l_215;
                int32_t l_600 = 0xBD23FD2BL;
                int i;
                for (l_551.f4 = 0; (l_551.f4 < (-14)); l_551.f4 = safe_sub_func_uint64_t_u_u(l_551.f4, 1))
                { /* block id: 257 */
                    int64_t *l_582 = &l_498;
                    uint64_t *l_592 = &l_215;
                    uint64_t **l_593[6] = {&l_592, &l_592, &l_592, &l_592, &l_592, &l_592};
                    int32_t l_606[10] = {0xC866A409L, 0x3902ACB4L, 6L, 6L, 0x3902ACB4L, 0xC866A409L, 0x3902ACB4L, 6L, 6L, 0x3902ACB4L};
                    int32_t *l_607[7] = {nullptr, nullptr, &p_3401->g_73[0][3][4], nullptr, nullptr, &p_3401->g_73[0][3][4], nullptr};
                    int i;
                    (*p_3401->g_72) = (0xC36BL >= (l_576 = 0x89A9L));
                    if ((((((*l_582) = p_3401->g_391) == (((safe_add_func_uint8_t_u_u(p_70, (safe_rshift_func_uint8_t_u_s((((p_69 , (nullptr == l_587)) ^ ((((((((p_3401->g_594 = ((safe_rshift_func_uint32_t_u_s((0x050C344CCDD1B2DELL >= (((p_3401->g_235 , &l_355[2]) != l_590) != p_3401->g_326)), l_591[0])) , l_592)) != l_595) <= 0xC291L) , &l_417) == l_327[5][3][5]) , 1UL) , nullptr) == p_3401->g_231[5][6][2])) && (*p_3401->g_594)), p_70)))) >= p_70) || l_591[0])) && l_551.f0) >= 0UL))
                    { /* block id: 262 */
                        return p_3401->g_73[3][1][4];
                    }
                    else
                    { /* block id: 264 */
                        uint8_t *l_599[9] = {nullptr, nullptr, &p_3401->g_556.f2, nullptr, nullptr, &p_3401->g_556.f2, nullptr, nullptr, &p_3401->g_556.f2};
                        int32_t l_601[2][3] = {{7L, 1L, 7L}, {7L, 1L, 7L}};
                        int i, j;
                        (*p_3401->g_72) &= ((safe_mul_func_uint8_t_u_u(p_69, (!(l_591[1] <= (((l_600 |= ((p_70 || (-10L)) & (nullptr != &p_3401->g_594))) != l_601[0][1]) && l_601[0][1]))))) != (safe_rshift_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(p_70, p_70)), l_606[1])));
                    }
                    l_266[1] = l_209[2][2];
                    l_607[4] = &l_606[1];
                }
            }
            else
            { /* block id: 271 */
                return p_3401->g_515;
            }
            return p_70;
        }
        else
        { /* block id: 275 */
            int16_t l_608 = 0x0781L;
            uint8_t *l_628 = &p_3401->g_391;
            union U1 *l_631 = &p_3401->g_95;
            int64_t *l_632 = &p_3401->g_39[2][6].f0;
            uint32_t *l_634[7];
            int32_t l_635[5][7][2] = {{{0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}}, {{0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}}, {{0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}}, {{0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}}, {{0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}, {0xBEC9F7D8L, 2L}}};
            uint64_t l_636 = 0x37BB5E305069143BLL;
            int32_t *l_638 = &l_136;
            uint32_t l_656 = 18446744073709551615UL;
            int8_t l_750 = 0L;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_634[i] = &l_422[0][4];
        }
        for (p_3401->g_637 = 0; (p_3401->g_637 <= 3); p_3401->g_637 += 1)
        { /* block id: 353 */
            int16_t l_773 = 0xF9E3L;
            union U1 l_780[6][6][4] = {{{{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}}, {{{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}}, {{{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}}, {{{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}}, {{{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}}, {{{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}, {{0x9ADA8770L}, {-7L}, {-9L}, {0x50967F2DL}}}};
            int32_t *l_783 = &p_3401->g_73[4][4][1];
            int32_t l_793 = 0x2E02A4A4L;
            struct S0 l_799 = {0xA327L,1L,0x66L,-10L,0x3DL};
            int32_t l_866[10] = {0xA903B891L, 0x5E1B3EFFL, 1L, 1L, 0x5E1B3EFFL, 0xA903B891L, 0x5E1B3EFFL, 1L, 1L, 0x5E1B3EFFL};
            int16_t ****l_907 = &l_457;
            uint64_t l_913 = 0x4A5895C57A367585LL;
            uint64_t **l_915 = &p_3401->g_594;
            int32_t l_919 = 0x6753C6AAL;
            uint16_t *l_985 = &l_417;
            union U2 ***l_1027[6][8][5] = {{{&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}}, {{&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}}, {{&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}}, {{&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}}, {{&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}}, {{&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}, {&p_3401->g_352[1][0], &p_3401->g_352[0][1], &p_3401->g_352[1][0], &l_355[1], &l_355[2]}}};
            int8_t l_1062[3];
            uint32_t **l_1095 = &l_361;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1062[i] = 6L;
        }
    }
    else
    { /* block id: 589 */
        uint8_t *l_1151 = &p_3401->g_71.f2;
        struct S0 l_1157[4][7][3] = {{{{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}}, {{{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}}, {{{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}}, {{{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}, {{0xB850L,1L,0x40L,0L,4L}, {0UL,3L,255UL,1L,-1L}, {7UL,0L,1UL,1L,-8L}}}};
        int32_t l_1158[8] = {0x4599C98EL, 0xF64D95D8L, 0x4599C98EL, 0xF64D95D8L, 0x4599C98EL, 0xF64D95D8L, 0x4599C98EL, 0xF64D95D8L};
        int32_t l_1163 = 0x924D34E6L;
        int i, j, k;
        for (p_3401->g_71.f3 = (-12); (p_3401->g_71.f3 > 11); ++p_3401->g_71.f3)
        { /* block id: 592 */
            uint8_t l_1148 = 0xBEL;
            uint8_t **l_1152[2];
            int32_t ****l_1161 = &p_3401->g_475;
            int32_t ****l_1162 = &p_3401->g_475;
            int i;
            for (i = 0; i < 2; i++)
                l_1152[i] = &l_1151;
            (*p_3401->g_72) |= ((((l_1148 > ((nullptr != p_3401->g_1149) <= ((*l_317) &= ((p_3401->g_390[6] = l_1151) == &p_3401->g_653)))) || (safe_sub_func_uint16_t_u_u(((l_1158[6] = (l_1157[1][1][1] , (-1L))) >= ((((l_1163 ^= (safe_sub_func_int64_t_s_s((((p_69 , (((l_1161 != l_1162) > 0L) | p_70)) < 0x4636L) | p_69), 3UL))) ^ p_69) , nullptr) != l_1164)), l_1157[1][1][1].f4))) != p_69) ^ (-3L));
        }
    }
    return p_70;
}


// ------------------------------------------------------------------
// Kernel
// ------------------------------------------------------------------
__global__ void hipsmith_kernel(uint64_t *results) {
    // Init globals
    struct S3 c_3402;
    struct S3* p_3401 = &c_3402;
    struct S3 c_3403 = {
        0xA831D26EC17E5C28LL, // p_3401->g_6
        {{{1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}}, {{1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}}, {{1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}, {1L}, {0x1E33ECDC0F1FA6F6LL}}}, // p_3401->g_39
        {65535UL,8L,1UL,0x59CDE89CL,0x74L}, // p_3401->g_71
        {{{(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}}, {{(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}}, {{(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}}, {{(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}}, {{(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}}, {{(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}, {(-1L), 1L, 0L, 0x88327BC4L, 0x3F8C0E5CL}}}, // p_3401->g_73
        &p_3401->g_73[0][3][4], // p_3401->g_72
        {0xE6445A0AL}, // p_3401->g_95
        {nullptr, nullptr, nullptr, nullptr}, // p_3401->g_148
        (-5L), // p_3401->g_150
        {{{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}, {{&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}, {&p_3401->g_71.f0, &p_3401->g_71.f0, &p_3401->g_71.f0}}}, // p_3401->g_231
        1UL, // p_3401->g_233
        0x251FL, // p_3401->g_235
        0x904210DFL, // p_3401->g_265
        0x97L, // p_3401->g_281
        4294967295UL, // p_3401->g_326
        (-6L), // p_3401->g_329
        &p_3401->g_39[2][6].f0, // p_3401->g_337
        &p_3401->g_39[2][6], // p_3401->g_353
        {{&p_3401->g_353, &p_3401->g_353, &p_3401->g_353, &p_3401->g_353, &p_3401->g_353, &p_3401->g_353}, {&p_3401->g_353, &p_3401->g_353, &p_3401->g_353, &p_3401->g_353, &p_3401->g_353, &p_3401->g_353}}, // p_3401->g_352
        255UL, // p_3401->g_391
        {&p_3401->g_391, &p_3401->g_391, &p_3401->g_391, &p_3401->g_391, &p_3401->g_391, &p_3401->g_391, &p_3401->g_391}, // p_3401->g_390
        nullptr, // p_3401->g_456
        nullptr, // p_3401->g_475
        0x194E6350A332D48DLL, // p_3401->g_515
        {0x2692L,-1L,0x38L,1L,0xB4L}, // p_3401->g_556
        {{0x46AE9C31L, 0xE28174EEL, 0xE14FD5FCL, (-1L), 1L, 0xE3236896L, 1L, 0xBFE59029L}, {0x46AE9C31L, 0xE28174EEL, 0xE14FD5FCL, (-1L), 1L, 0xE3236896L, 1L, 0xBFE59029L}, {0x46AE9C31L, 0xE28174EEL, 0xE14FD5FCL, (-1L), 1L, 0xE3236896L, 1L, 0xBFE59029L}, {0x46AE9C31L, 0xE28174EEL, 0xE14FD5FCL, (-1L), 1L, 0xE3236896L, 1L, 0xBFE59029L}, {0x46AE9C31L, 0xE28174EEL, 0xE14FD5FCL, (-1L), 1L, 0xE3236896L, 1L, 0xBFE59029L}}, // p_3401->g_574
        nullptr, // p_3401->g_594
        0x516586ECL, // p_3401->g_633
        0x54E5L, // p_3401->g_637
        0x74L, // p_3401->g_653
        (-8L), // p_3401->g_654
        (-7L), // p_3401->g_655
        nullptr, // p_3401->g_700
        &p_3401->g_594, // p_3401->g_852
        {{{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}, {{0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}, {0xC7L, 0x76L, 0x4BL}}}, // p_3401->g_1140
        {{0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}, {0UL, 1UL, 1UL, 0UL, 0xD513FAAFL}}, // p_3401->g_1145
        {&p_3401->g_71, &p_3401->g_71, &p_3401->g_71, &p_3401->g_71, &p_3401->g_71}, // p_3401->g_1150
        &p_3401->g_1150[3], // p_3401->g_1149
        (-1L), // p_3401->g_1220
        0x480D055BL, // p_3401->g_1246
        0UL, // p_3401->g_1291
        nullptr, // p_3401->g_1325
        &p_3401->g_1325, // p_3401->g_1324
        &p_3401->g_1324, // p_3401->g_1323
        {{&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}, {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}, {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}, {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}, {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}, {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}, {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}, {&p_3401->g_1323, &p_3401->g_1323, &p_3401->g_1323, nullptr, &p_3401->g_1323, &p_3401->g_1323}}, // p_3401->g_1322
        {{0L, 0xED5C7629L, 1L}, {0L, 0xED5C7629L, 1L}, {0L, 0xED5C7629L, 1L}, {0L, 0xED5C7629L, 1L}, {0L, 0xED5C7629L, 1L}, {0L, 0xED5C7629L, 1L}}, // p_3401->g_1342
        &p_3401->g_556, // p_3401->g_1358
        &p_3401->g_475, // p_3401->g_1478
        &p_3401->g_1478, // p_3401->g_1477
        nullptr, // p_3401->g_1600
        nullptr, // p_3401->g_1624
        nullptr, // p_3401->g_1698
        1UL, // p_3401->g_1755
        nullptr, // p_3401->g_1865
        {{{&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}}, {{&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}}, {{&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}}, {{&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}}, {{&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}, {&p_3401->g_1865, &p_3401->g_1865, &p_3401->g_1865, nullptr}}}, // p_3401->g_1864
        0xE4L, // p_3401->g_2025
        5UL, // p_3401->g_2035
        {65530UL, 65530UL}, // p_3401->g_2069
        &p_3401->g_1322[7][0], // p_3401->g_2083
        &p_3401->g_352[1][4], // p_3401->g_2104
        nullptr, // p_3401->g_2113
        0L, // p_3401->g_2136
        nullptr, // p_3401->g_2173
        0x111EAA1AD02DB242LL, // p_3401->g_2178
        &p_3401->g_73[5][2][4], // p_3401->g_2314
        &p_3401->g_390[6], // p_3401->g_2345
        {{{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}, {{&p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345, &p_3401->g_2345}}}, // p_3401->g_2344
        &p_3401->g_2344[7][0][2], // p_3401->g_2343
        {(-2L), (-2L), 0x7285DC7DL, (-2L), (-2L), 0x7285DC7DL, (-2L), (-2L), 0x7285DC7DL}, // p_3401->g_2346
        &p_3401->g_2113, // p_3401->g_2446
        4294967288UL, // p_3401->g_2583
        {{{0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}, {0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}, {0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}, {0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}, {0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}, {0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}, {0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}, {0x052DL, 0x831FL, (-1L), 0x0053L, (-1L)}}}, // p_3401->g_2663
        &p_3401->g_852, // p_3401->g_2734
        &p_3401->g_2734, // p_3401->g_2733
        &p_3401->g_2104, // p_3401->g_2765
        {{&p_3401->g_2765}}, // p_3401->g_2764
        4294967291UL, // p_3401->g_2843
        {-1L}, // p_3401->g_3039
        &p_3401->g_594, // p_3401->g_3068
        0xA6641D0DL, // p_3401->g_3156
        {{{&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}}, {{&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}}, {{&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}}, {{&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}}, {{&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}, {&p_3401->g_231[4][0][0], &p_3401->g_231[5][6][2], nullptr, &p_3401->g_231[4][5][1]}}}, // p_3401->g_3169
        0xF2437854L, // p_3401->g_3188
        &p_3401->g_1145[7][2], // p_3401->g_3253
        1L, // p_3401->g_3256
        0xB110L, // p_3401->g_3350
        (-3L), // p_3401->g_3392
    };
    c_3402 = c_3403;

    // Execute core logic
    func_1(p_3401);

    // CRC Context
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    // Hash variables
    transparent_crc(p_3401->g_6, "p_3401->g_6", print_hash_value);
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            transparent_crc(p_3401->g_39[i][j].f0, "p_3401->g_39[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_3401->g_71.f0, "p_3401->g_71.f0", print_hash_value);
    transparent_crc(p_3401->g_71.f1, "p_3401->g_71.f1", print_hash_value);
    transparent_crc(p_3401->g_71.f2, "p_3401->g_71.f2", print_hash_value);
    transparent_crc(p_3401->g_71.f3, "p_3401->g_71.f3", print_hash_value);
    transparent_crc(p_3401->g_71.f4, "p_3401->g_71.f4", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                transparent_crc(p_3401->g_73[i][j][k], "p_3401->g_73[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_3401->g_95.f0, "p_3401->g_95.f0", print_hash_value);
    transparent_crc(p_3401->g_150, "p_3401->g_150", print_hash_value);
    transparent_crc(p_3401->g_233, "p_3401->g_233", print_hash_value);
    transparent_crc(p_3401->g_235, "p_3401->g_235", print_hash_value);
    transparent_crc(p_3401->g_265, "p_3401->g_265", print_hash_value);
    transparent_crc(p_3401->g_281, "p_3401->g_281", print_hash_value);
    transparent_crc(p_3401->g_326, "p_3401->g_326", print_hash_value);
    transparent_crc(p_3401->g_329, "p_3401->g_329", print_hash_value);
    transparent_crc(p_3401->g_391, "p_3401->g_391", print_hash_value);
    transparent_crc(p_3401->g_515, "p_3401->g_515", print_hash_value);
    transparent_crc(p_3401->g_556.f0, "p_3401->g_556.f0", print_hash_value);
    transparent_crc(p_3401->g_556.f1, "p_3401->g_556.f1", print_hash_value);
    transparent_crc(p_3401->g_556.f2, "p_3401->g_556.f2", print_hash_value);
    transparent_crc(p_3401->g_556.f3, "p_3401->g_556.f3", print_hash_value);
    transparent_crc(p_3401->g_556.f4, "p_3401->g_556.f4", print_hash_value);
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            transparent_crc(p_3401->g_574[i][j], "p_3401->g_574[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3401->g_633, "p_3401->g_633", print_hash_value);
    transparent_crc(p_3401->g_637, "p_3401->g_637", print_hash_value);
    transparent_crc(p_3401->g_653, "p_3401->g_653", print_hash_value);
    transparent_crc(p_3401->g_654, "p_3401->g_654", print_hash_value);
    transparent_crc(p_3401->g_655, "p_3401->g_655", print_hash_value);
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                transparent_crc(p_3401->g_1140[i][j][k], "p_3401->g_1140[i][j][k]", print_hash_value);

            }
        }
    }
    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            transparent_crc(p_3401->g_1145[i][j], "p_3401->g_1145[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3401->g_1220, "p_3401->g_1220", print_hash_value);
    transparent_crc(p_3401->g_1246, "p_3401->g_1246", print_hash_value);
    transparent_crc(p_3401->g_1291, "p_3401->g_1291", print_hash_value);
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            transparent_crc(p_3401->g_1342[i][j], "p_3401->g_1342[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3401->g_1755, "p_3401->g_1755", print_hash_value);
    transparent_crc(p_3401->g_2025, "p_3401->g_2025", print_hash_value);
    transparent_crc(p_3401->g_2035, "p_3401->g_2035", print_hash_value);
    for (int i = 0; i < 2; i++)
    {
        transparent_crc(p_3401->g_2069[i], "p_3401->g_2069[i]", print_hash_value);

    }
    transparent_crc(p_3401->g_2136, "p_3401->g_2136", print_hash_value);
    transparent_crc(p_3401->g_2178, "p_3401->g_2178", print_hash_value);
    for (int i = 0; i < 9; i++)
    {
        transparent_crc(p_3401->g_2346[i], "p_3401->g_2346[i]", print_hash_value);

    }
    transparent_crc(p_3401->g_2583, "p_3401->g_2583", print_hash_value);
    for (int i = 0; i < 1; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                transparent_crc(p_3401->g_2663[i][j][k], "p_3401->g_2663[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_3401->g_2843, "p_3401->g_2843", print_hash_value);
    transparent_crc(p_3401->g_3039.f0, "p_3401->g_3039.f0", print_hash_value);
    transparent_crc(p_3401->g_3156, "p_3401->g_3156", print_hash_value);
    transparent_crc(p_3401->g_3188, "p_3401->g_3188", print_hash_value);
    transparent_crc(p_3401->g_3256, "p_3401->g_3256", print_hash_value);
    transparent_crc(p_3401->g_3350, "p_3401->g_3350", print_hash_value);
    transparent_crc(p_3401->g_3392, "p_3401->g_3392", print_hash_value);

    // Store result
    int tid = threadIdx.x + blockIdx.x * blockDim.x;
    results[tid] = (crc64_context ^ 0xFFFFFFFFFFFFFFFFUL);
}

// ------------------------------------------------------------------
// Host Main
// ------------------------------------------------------------------
int main(int argc, const char* argv[]) {
    // Config
    const unsigned int num_threads = 4;
    const unsigned int block_size = 4;

    // Host Alloc
    std::vector<uint64_t> h_results(num_threads);
    const size_t results_bytes = sizeof(uint64_t) * h_results.size();

    // Device Alloc
    uint64_t *d_results;
    HIP_CHECK(hipMalloc((void**)&d_results, results_bytes));
    HIP_CHECK(hipMemset(d_results, 0, results_bytes));

    // Dimensions
    const dim3 block_dim(block_size);
    const dim3 grid_dim((num_threads + block_size - 1) / block_size);

    // Launch
    hipLaunchKernelGGL(hipsmith_kernel, grid_dim, block_dim, 0, 0, d_results);
    HIP_CHECK(hipGetLastError());
    HIP_CHECK(hipDeviceSynchronize());

    // Copy Back
    HIP_CHECK(hipMemcpy(h_results.data(), d_results, results_bytes, hipMemcpyDeviceToHost));

    // Free
    HIP_CHECK(hipFree(d_results));

    // Output
    for (size_t i = 0; i < h_results.size(); ++i) {
        printf("Thread %zu CRC: %lu\n", i, h_results[i]);
    }
    return 0;
}
