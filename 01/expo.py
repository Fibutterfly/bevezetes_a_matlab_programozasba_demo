import numpy as np
from scipy.linalg import expm

A = np.array([[1, 2], [3, 4]])
pernum = np.exp(A)
print(pernum)
asmatrix = expm(A)
print(asmatrix)