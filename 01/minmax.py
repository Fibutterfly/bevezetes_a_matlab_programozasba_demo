import numpy as np
from scipy.linalg import logm

A = np.array([[1, 2], [3, 4]])
minperrow = np.min(A,1)
minpercol = np.min(A,0)
minofall = np.min(A)
print(minperrow)
print(minpercol)
print(minofall)
