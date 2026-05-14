struct S1 {
  int32_t g_71[9][5][5];
  int8_t g_311;
  uint8_t *g_725;
};
__device__ int64_t func_1(S1 *p_1293) {
  __shared__ int32_t l_1069;
  __shared__ int32_t l_1143[8][6][5];
  for (int i = 0; i < 8; i++)
    for (int j = 0; j < 6; j++)
      for (int k = 0; k < 5; k++)
        l_1143[i][j][k] = 2;
  int32_t *l_1291 = &l_1143[4][0][3];
  __shared__ uint32_t l_1292;
  int32_t *l_1084[][5]{&l_1069, &l_1069, &l_1069, &l_1069,
                       &l_1069, &l_1069, &l_1069};
  int32_t *l_1085 = &p_1293->g_71[4][1][3];
  int8_t *l_1095 = &p_1293->g_311;
  int32_t **l_1097[][7]{&l_1084[1][1], &l_1085};
  __shared__ int32_t ***l_1096;
  l_1096 = &l_1097[1][6];
  *p_1293->g_725 && (*l_1095 &= 0);
  *l_1291 &= 0;
  return l_1292;
}
__global__ void hipsmith_kernel() {
  S1 p_1293;
  func_1(&p_1293);
}
