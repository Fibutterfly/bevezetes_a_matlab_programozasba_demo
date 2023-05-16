import numpy as np
from scipy.linalg import logm

A = np.array([[1, 2], [3, 4]])
pernum = np.log(A)
print(pernum)
asmatrix = logm(A)
print(asmatrix)