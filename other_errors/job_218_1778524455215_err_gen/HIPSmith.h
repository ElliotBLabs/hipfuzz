#include <cstdint>

#define DEVICE_FORCE_INLINE __device__ __forceinline__

#define HIP_CHECK(expression)                                        \
  {                                                                  \
    const hipError_t err = expression;                               \
    if (err != hipSuccess) {                                         \
      std::cerr << "HIP error: " << hipGetErrorString(err) << " at " \
                << __LINE__ << "\n";                                 \
      exit(EXIT_FAILURE);                                            \
    }                                                                \
  }

DEVICE_FORCE_INLINE void transparent_crc_no_string(uint64_t *crc64_context,
                                                   uint64_t val) {
  *crc64_context += val;
}

#define transparent_crc_(A, B, C, D) transparent_crc_no_string(A, B)

typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_add(ProxyT a_in, ProxyT b_in) {
  // in HIP the internal type of a vector is a proxy but we need properties of
  // the c++ internal type
  BaseT a = static_cast<BaseT>(a_in);
  BaseT b = static_cast<BaseT>(b_in);

  if constexpr (std::is_signed_v<BaseT>) {
    // overflow check
    if ((a > 0) && (b > 0) && (a > std::numeric_limits<BaseT>::max() - b))
      return false;
    // underflow check
    if ((a < 0) && (b < 0) && (a < std::numeric_limits<BaseT>::min() - b))
      return false;
    return true;
  } else {
    // unsigned math UB free
    return true;
  }
}

// generate an overloaded safe_add macro for every vector length and type
// combination supported
#define HIPSMITH_VEC1_SAFE_ADD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_add(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_add<BASE_TYPE>(a.x, b.x)) return a + b;               \
    return a;                                                            \
  }

#define HIPSMITH_VEC2_SAFE_ADD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_add(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_add<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_add<BASE_TYPE>(a.y, b.y))                             \
      return a + b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC3_SAFE_ADD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_add(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_add<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_add<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_add<BASE_TYPE>(a.z, b.z))                             \
      return a + b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC4_SAFE_ADD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_add(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_add<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_add<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_add<BASE_TYPE>(a.z, b.z) &&                           \
        check_safe_add<BASE_TYPE>(a.w, b.w))                             \
      return a + b;                                                      \
    return a;                                                            \
  }

#define GENERATE_ALL_VEC_SAFE_ADD(BASE_TYPE)            \
  HIPSMITH_VEC1_SAFE_ADD(BASE_TYPE, BASE_TYPE##1)       \
  HIPSMITH_VEC2_SAFE_ADD(BASE_TYPE, BASE_TYPE##2)       \
  HIPSMITH_VEC3_SAFE_ADD(BASE_TYPE, BASE_TYPE##3)       \
  HIPSMITH_VEC4_SAFE_ADD(BASE_TYPE, BASE_TYPE##4)       \
  HIPSMITH_VEC1_SAFE_ADD(u##BASE_TYPE, u##BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_ADD(u##BASE_TYPE, u##BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_ADD(u##BASE_TYPE, u##BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_ADD(u##BASE_TYPE, u##BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_ADD(char)
GENERATE_ALL_VEC_SAFE_ADD(short)
GENERATE_ALL_VEC_SAFE_ADD(int)
GENERATE_ALL_VEC_SAFE_ADD(long)

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_div(ProxyT a_in, ProxyT b_in) {
  // in HIP the internal type of a vector is a proxy but we need properties of
  // the c++ internal type
  BaseT a = static_cast<BaseT>(a_in);
  BaseT b = static_cast<BaseT>(b_in);

  // division by zero is always UB
  if (b == 0) return false;

  if constexpr (std::is_signed_v<BaseT>) {
    // signed overflow if INT_MIN / -1
    if ((a == std::numeric_limits<BaseT>::min()) && (b == -1)) return false;

    return true;
  } else {
    // otherwise no UB
    return true;
  }
}

// generate an overloaded safe_div macro for every vector length and type
// combination supported
#define HIPSMITH_VEC1_SAFE_DIV(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_div(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_div<BASE_TYPE>(a.x, b.x)) return a / b;               \
    return a;                                                            \
  }

#define HIPSMITH_VEC2_SAFE_DIV(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_div(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_div<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_div<BASE_TYPE>(a.y, b.y))                             \
      return a / b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC3_SAFE_DIV(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_div(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_div<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_div<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_div<BASE_TYPE>(a.z, b.z))                             \
      return a / b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC4_SAFE_DIV(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_div(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_div<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_div<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_div<BASE_TYPE>(a.z, b.z) &&                           \
        check_safe_div<BASE_TYPE>(a.w, b.w))                             \
      return a / b;                                                      \
    return a;                                                            \
  }

#define GENERATE_ALL_VEC_SAFE_DIV(BASE_TYPE)            \
  HIPSMITH_VEC1_SAFE_DIV(BASE_TYPE, BASE_TYPE##1)       \
  HIPSMITH_VEC2_SAFE_DIV(BASE_TYPE, BASE_TYPE##2)       \
  HIPSMITH_VEC3_SAFE_DIV(BASE_TYPE, BASE_TYPE##3)       \
  HIPSMITH_VEC4_SAFE_DIV(BASE_TYPE, BASE_TYPE##4)       \
  HIPSMITH_VEC1_SAFE_DIV(u##BASE_TYPE, u##BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_DIV(u##BASE_TYPE, u##BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_DIV(u##BASE_TYPE, u##BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_DIV(u##BASE_TYPE, u##BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_DIV(char)
GENERATE_ALL_VEC_SAFE_DIV(short)
GENERATE_ALL_VEC_SAFE_DIV(int)
GENERATE_ALL_VEC_SAFE_DIV(long)

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_lshift(ProxyT a_in, ProxyT b_in) {
  // in csmith it was also supported to do mixed int4 << uint4 for example but
  // not in HIP so only make these for matching types exactly
  BaseT a = static_cast<BaseT>(a_in);
  BaseT b = static_cast<BaseT>(b_in);
  constexpr size_t bit_width = sizeof(BaseT) * 8;

  if constexpr (std::is_signed_v<BaseT>) {
    // Cannot shift by a negative amount
    if (b < 0 || a < 0) return false;
  }

  // cannot shift by bit-width or more
  if (static_cast<size_t>(b) >= bit_width) return false;

  // prevent overflow
  if (a > (std::numeric_limits<BaseT>::max() >> b)) return false;

  return true;
}

// Generate overloaded safe_lshift macros
#define HIPSMITH_VEC1_SAFE_LSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_lshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_lshift<BASE_TYPE>(a.x, b.x)) return a << b;              \
    return a;                                                               \
  }

#define HIPSMITH_VEC2_SAFE_LSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_lshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_lshift<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_lshift<BASE_TYPE>(a.y, b.y))                             \
      return a << b;                                                        \
    return a;                                                               \
  }

#define HIPSMITH_VEC3_SAFE_LSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_lshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_lshift<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_lshift<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_lshift<BASE_TYPE>(a.z, b.z))                             \
      return a << b;                                                        \
    return a;                                                               \
  }

#define HIPSMITH_VEC4_SAFE_LSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_lshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_lshift<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_lshift<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_lshift<BASE_TYPE>(a.z, b.z) &&                           \
        check_safe_lshift<BASE_TYPE>(a.w, b.w))                             \
      return a << b;                                                        \
    return a;                                                               \
  }

#define GENERATE_ALL_VEC_SAFE_LSHIFT(BASE_TYPE)            \
  HIPSMITH_VEC1_SAFE_LSHIFT(BASE_TYPE, BASE_TYPE##1)       \
  HIPSMITH_VEC2_SAFE_LSHIFT(BASE_TYPE, BASE_TYPE##2)       \
  HIPSMITH_VEC3_SAFE_LSHIFT(BASE_TYPE, BASE_TYPE##3)       \
  HIPSMITH_VEC4_SAFE_LSHIFT(BASE_TYPE, BASE_TYPE##4)       \
  HIPSMITH_VEC1_SAFE_LSHIFT(u##BASE_TYPE, u##BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_LSHIFT(u##BASE_TYPE, u##BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_LSHIFT(u##BASE_TYPE, u##BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_LSHIFT(u##BASE_TYPE, u##BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_LSHIFT(char)
GENERATE_ALL_VEC_SAFE_LSHIFT(short)
GENERATE_ALL_VEC_SAFE_LSHIFT(int)
GENERATE_ALL_VEC_SAFE_LSHIFT(long)

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_mod(ProxyT a_in, ProxyT b_in) {
  // in HIP the internal type of a vector is a proxy but we need properties of
  // the c++ internal type
  BaseT a = static_cast<BaseT>(a_in);
  BaseT b = static_cast<BaseT>(b_in);

  // Modulo by zero is UB
  if (b == 0) return false;

  if constexpr (std::is_signed_v<BaseT>) {
    // Overflow check, INT_MIN % -1 is UB
    if ((a == std::numeric_limits<BaseT>::min()) && (b == -1)) return false;

    return true;
  } else {
    // No UB here
    return true;
  }
}

// generate an overloaded safe_mod macro for every vector length and type
// combination supported
#define HIPSMITH_VEC1_SAFE_MOD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mod(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mod<BASE_TYPE>(a.x, b.x)) return a % b;               \
    return a;                                                            \
  }

#define HIPSMITH_VEC2_SAFE_MOD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mod(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mod<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_mod<BASE_TYPE>(a.y, b.y))                             \
      return a % b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC3_SAFE_MOD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mod(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mod<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_mod<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_mod<BASE_TYPE>(a.z, b.z))                             \
      return a % b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC4_SAFE_MOD(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mod(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mod<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_mod<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_mod<BASE_TYPE>(a.z, b.z) &&                           \
        check_safe_mod<BASE_TYPE>(a.w, b.w))                             \
      return a % b;                                                      \
    return a;                                                            \
  }

#define GENERATE_ALL_VEC_SAFE_MOD(BASE_TYPE)            \
  HIPSMITH_VEC1_SAFE_MOD(BASE_TYPE, BASE_TYPE##1)       \
  HIPSMITH_VEC2_SAFE_MOD(BASE_TYPE, BASE_TYPE##2)       \
  HIPSMITH_VEC3_SAFE_MOD(BASE_TYPE, BASE_TYPE##3)       \
  HIPSMITH_VEC4_SAFE_MOD(BASE_TYPE, BASE_TYPE##4)       \
  HIPSMITH_VEC1_SAFE_MOD(u##BASE_TYPE, u##BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_MOD(u##BASE_TYPE, u##BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_MOD(u##BASE_TYPE, u##BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_MOD(u##BASE_TYPE, u##BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_MOD(char)
GENERATE_ALL_VEC_SAFE_MOD(short)
GENERATE_ALL_VEC_SAFE_MOD(int)
GENERATE_ALL_VEC_SAFE_MOD(long)

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_mul(ProxyT a_in, ProxyT b_in) {
  // in HIP the internal type of a vector is a proxy but we need properties of
  // the c++ internal type
  BaseT a = static_cast<BaseT>(a_in);
  BaseT b = static_cast<BaseT>(b_in);

  if constexpr (std::is_signed_v<BaseT>) {
    // Both positive, overflow check
    if (a > 0 && b > 0 && a > std::numeric_limits<BaseT>::max() / b)
      return false;
    // a positive, b, underflow check
    if (a > 0 && b <= 0 && b < std::numeric_limits<BaseT>::min() / a)
      return false;
    // a negative, b positive, underflow check
    if (a <= 0 && b > 0 && a < std::numeric_limits<BaseT>::min() / b)
      return false;
    // Both negative, overflow check
    if (a < 0 && b < 0 && a < std::numeric_limits<BaseT>::max() / b)
      return false;

    return true;
  } else {
    // no UB to see here
    return true;
  }
}

// generate an overloaded safe_mul macro for every vector length and type
// combination supported
#define HIPSMITH_VEC1_SAFE_MUL(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mul(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mul<BASE_TYPE>(a.x, b.x)) return a * b;               \
    return a;                                                            \
  }

#define HIPSMITH_VEC2_SAFE_MUL(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mul(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mul<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_mul<BASE_TYPE>(a.y, b.y))                             \
      return a * b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC3_SAFE_MUL(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mul(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mul<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_mul<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_mul<BASE_TYPE>(a.z, b.z))                             \
      return a * b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC4_SAFE_MUL(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_mul(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_mul<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_mul<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_mul<BASE_TYPE>(a.z, b.z) &&                           \
        check_safe_mul<BASE_TYPE>(a.w, b.w))                             \
      return a * b;                                                      \
    return a;                                                            \
  }

#define GENERATE_ALL_VEC_SAFE_MUL(BASE_TYPE)            \
  HIPSMITH_VEC1_SAFE_MUL(BASE_TYPE, BASE_TYPE##1)       \
  HIPSMITH_VEC2_SAFE_MUL(BASE_TYPE, BASE_TYPE##2)       \
  HIPSMITH_VEC3_SAFE_MUL(BASE_TYPE, BASE_TYPE##3)       \
  HIPSMITH_VEC4_SAFE_MUL(BASE_TYPE, BASE_TYPE##4)       \
  HIPSMITH_VEC1_SAFE_MUL(u##BASE_TYPE, u##BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_MUL(u##BASE_TYPE, u##BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_MUL(u##BASE_TYPE, u##BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_MUL(u##BASE_TYPE, u##BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_MUL(char)
GENERATE_ALL_VEC_SAFE_MUL(short)
GENERATE_ALL_VEC_SAFE_MUL(int)
GENERATE_ALL_VEC_SAFE_MUL(long)

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_rshift(ProxyT a_in, ProxyT b_in) {
  // in csmith it was also supported to do mixed int4 << uint4 for example but
  // not in HIP so only make these for matching types exactly
  BaseT a = static_cast<BaseT>(a_in);
  BaseT b = static_cast<BaseT>(b_in);
  constexpr size_t bit_width = sizeof(BaseT) * 8;

  if constexpr (std::is_signed_v<BaseT>) {
    // cannot shift by negative
    // the a < 0 check might not be needed in cpp20
    if (b < 0 || a < 0) return false;
  }

  // cannot shift by >= bit-width
  if (static_cast<size_t>(b) >= bit_width) return false;

  return true;
}

// Generate overloaded safe_rshift macros
#define HIPSMITH_VEC1_SAFE_RSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_rshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_rshift<BASE_TYPE>(a.x, b.x)) return a >> b;              \
    return a;                                                               \
  }

#define HIPSMITH_VEC2_SAFE_RSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_rshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_rshift<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_rshift<BASE_TYPE>(a.y, b.y))                             \
      return a >> b;                                                        \
    return a;                                                               \
  }

#define HIPSMITH_VEC3_SAFE_RSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_rshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_rshift<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_rshift<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_rshift<BASE_TYPE>(a.z, b.z))                             \
      return a >> b;                                                        \
    return a;                                                               \
  }

#define HIPSMITH_VEC4_SAFE_RSHIFT(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_rshift(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_rshift<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_rshift<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_rshift<BASE_TYPE>(a.z, b.z) &&                           \
        check_safe_rshift<BASE_TYPE>(a.w, b.w))                             \
      return a >> b;                                                        \
    return a;                                                               \
  }

#define GENERATE_ALL_VEC_SAFE_RSHIFT(BASE_TYPE)            \
  HIPSMITH_VEC1_SAFE_RSHIFT(BASE_TYPE, BASE_TYPE##1)       \
  HIPSMITH_VEC2_SAFE_RSHIFT(BASE_TYPE, BASE_TYPE##2)       \
  HIPSMITH_VEC3_SAFE_RSHIFT(BASE_TYPE, BASE_TYPE##3)       \
  HIPSMITH_VEC4_SAFE_RSHIFT(BASE_TYPE, BASE_TYPE##4)       \
  HIPSMITH_VEC1_SAFE_RSHIFT(u##BASE_TYPE, u##BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_RSHIFT(u##BASE_TYPE, u##BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_RSHIFT(u##BASE_TYPE, u##BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_RSHIFT(u##BASE_TYPE, u##BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_RSHIFT(char)
GENERATE_ALL_VEC_SAFE_RSHIFT(short)
GENERATE_ALL_VEC_SAFE_RSHIFT(int)
GENERATE_ALL_VEC_SAFE_RSHIFT(long)

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_sub(ProxyT a_in, ProxyT b_in) {
  // in HIP the internal type of a vector is a proxy but we need properties of
  // the c++ internal type
  BaseT a = static_cast<BaseT>(a_in);
  BaseT b = static_cast<BaseT>(b_in);

  // Csmith uses obfuscated bitwise operations (XOR, AND, shifts) to detect
  // overflow we try a more standard approach
  if constexpr (std::is_signed_v<BaseT>) {
    // Overflow check (a > 0, b < 0, a - b > MAX)
    if ((b < 0) && (a > std::numeric_limits<BaseT>::max() + b)) return false;
    // Underflow check (a < 0, b > 0, a - b < MIN)
    if ((b > 0) && (a < std::numeric_limits<BaseT>::min() + b)) return false;
    return true;
  } else {
    // no other UB
    return true;
  }
}

// generate an overloaded safe_sub macro for every vector length and type
// combination supported
#define HIPSMITH_VEC1_SAFE_SUB(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_sub(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_sub<BASE_TYPE>(a.x, b.x)) return a - b;               \
    return a;                                                            \
  }

#define HIPSMITH_VEC2_SAFE_SUB(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_sub(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_sub<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_sub<BASE_TYPE>(a.y, b.y))                             \
      return a - b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC3_SAFE_SUB(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_sub(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_sub<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_sub<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_sub<BASE_TYPE>(a.z, b.z))                             \
      return a - b;                                                      \
    return a;                                                            \
  }

#define HIPSMITH_VEC4_SAFE_SUB(BASE_TYPE, VEC_TYPE)                      \
  __host__ __device__ inline VEC_TYPE safe_sub(VEC_TYPE a, VEC_TYPE b) { \
    if (check_safe_sub<BASE_TYPE>(a.x, b.x) &&                           \
        check_safe_sub<BASE_TYPE>(a.y, b.y) &&                           \
        check_safe_sub<BASE_TYPE>(a.z, b.z) &&                           \
        check_safe_sub<BASE_TYPE>(a.w, b.w))                             \
      return a - b;                                                      \
    return a;                                                            \
  }

#define GENERATE_ALL_VEC_SAFE_SUB(BASE_TYPE)            \
  HIPSMITH_VEC1_SAFE_SUB(BASE_TYPE, BASE_TYPE##1)       \
  HIPSMITH_VEC2_SAFE_SUB(BASE_TYPE, BASE_TYPE##2)       \
  HIPSMITH_VEC3_SAFE_SUB(BASE_TYPE, BASE_TYPE##3)       \
  HIPSMITH_VEC4_SAFE_SUB(BASE_TYPE, BASE_TYPE##4)       \
  HIPSMITH_VEC1_SAFE_SUB(u##BASE_TYPE, u##BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_SUB(u##BASE_TYPE, u##BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_SUB(u##BASE_TYPE, u##BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_SUB(u##BASE_TYPE, u##BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_SUB(char)
GENERATE_ALL_VEC_SAFE_SUB(short)
GENERATE_ALL_VEC_SAFE_SUB(int)
GENERATE_ALL_VEC_SAFE_SUB(long)

template <typename BaseT, typename ProxyT>
__host__ __device__ constexpr bool check_safe_unary_minus(ProxyT a_in) {
  // in HIP the internal type of a vector is a proxy but we need properties of
  // the c++ internal type
  BaseT a = static_cast<BaseT>(a_in);

  if constexpr (std::is_signed_v<BaseT>) {
    // are we negating TYPE MIN
    if (a == std::numeric_limits<BaseT>::min()) return false;
    return true;
  } else {
    // no UB here
    return true;
  }
}

// generate an overloaded safe_unary_minus macro for every vector length and
// type combination supported
#define HIPSMITH_VEC1_SAFE_UNARY_MINUS(BASE_TYPE, VEC_TYPE)          \
  __host__ __device__ inline VEC_TYPE safe_unary_minus(VEC_TYPE a) { \
    if (check_safe_unary_minus<BASE_TYPE>(a.x)) return -a;           \
    return a;                                                        \
  }

#define HIPSMITH_VEC2_SAFE_UNARY_MINUS(BASE_TYPE, VEC_TYPE)          \
  __host__ __device__ inline VEC_TYPE safe_unary_minus(VEC_TYPE a) { \
    if (check_safe_unary_minus<BASE_TYPE>(a.x) &&                    \
        check_safe_unary_minus<BASE_TYPE>(a.y))                      \
      return -a;                                                     \
    return a;                                                        \
  }

#define HIPSMITH_VEC3_SAFE_UNARY_MINUS(BASE_TYPE, VEC_TYPE)          \
  __host__ __device__ inline VEC_TYPE safe_unary_minus(VEC_TYPE a) { \
    if (check_safe_unary_minus<BASE_TYPE>(a.x) &&                    \
        check_safe_unary_minus<BASE_TYPE>(a.y) &&                    \
        check_safe_unary_minus<BASE_TYPE>(a.z))                      \
      return -a;                                                     \
    return a;                                                        \
  }

#define HIPSMITH_VEC4_SAFE_UNARY_MINUS(BASE_TYPE, VEC_TYPE)          \
  __host__ __device__ inline VEC_TYPE safe_unary_minus(VEC_TYPE a) { \
    if (check_safe_unary_minus<BASE_TYPE>(a.x) &&                    \
        check_safe_unary_minus<BASE_TYPE>(a.y) &&                    \
        check_safe_unary_minus<BASE_TYPE>(a.z) &&                    \
        check_safe_unary_minus<BASE_TYPE>(a.w))                      \
      return -a;                                                     \
    return a;                                                        \
  }

#define GENERATE_ALL_VEC_SAFE_UNARY_MINUS(BASE_TYPE)      \
  HIPSMITH_VEC1_SAFE_UNARY_MINUS(BASE_TYPE, BASE_TYPE##1) \
  HIPSMITH_VEC2_SAFE_UNARY_MINUS(BASE_TYPE, BASE_TYPE##2) \
  HIPSMITH_VEC3_SAFE_UNARY_MINUS(BASE_TYPE, BASE_TYPE##3) \
  HIPSMITH_VEC4_SAFE_UNARY_MINUS(BASE_TYPE, BASE_TYPE##4)

GENERATE_ALL_VEC_SAFE_UNARY_MINUS(char)
GENERATE_ALL_VEC_SAFE_UNARY_MINUS(short)
GENERATE_ALL_VEC_SAFE_UNARY_MINUS(int)
GENERATE_ALL_VEC_SAFE_UNARY_MINUS(long)