import numpy as np

vec1 = np.array([1,2,3,4])
vec2 = np.array([2,2,1,1])
vec_sum = np.sum((vec1 == vec2[0])*1 + (vec1 == vec2[1])*1 + (vec1 == vec2[2])*1 + (vec1 == vec2[3])*1)
print(vec_sum)

def two_vecktor(_v1,_v2,_k) -> int:
    _sum_vec = _v1 + _v2
    return np.sum((_v1 <= _k) == (_v2 >= _k))

v1 = np.array([1,2,3,4])
v2 = np.array([3,2,5,6])
k = 5
print(two_vecktor(v1, v2, k))