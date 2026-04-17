#include <cstdint>

#define DEVICE_FORCE_INLINE __device__ __forceinline__

#define HIP_CHECK(expression)                                               \
  {                                                                         \
    const hipError_t err = expression;                                      \
    if (err != hipSuccess) {                                                \
      fprintf(stderr, "HIP error: %s at %d\n", hipGetErrorString(err),      \
              __LINE__);                                                    \
      exit(EXIT_FAILURE);                                                   \
    }                                                                       \
  }

DEVICE_FORCE_INLINE void transparent_crc_no_string(uint64_t *crc64_context,
                                                   uint64_t val) {
  *crc64_context += val;
}

#define transparent_crc_(A, B, C, D) transparent_crc_no_string(A, B)