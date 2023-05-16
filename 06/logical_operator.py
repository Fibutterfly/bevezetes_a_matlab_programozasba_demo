import numpy as np

print(10 and 3)
print(10 and 0)
print(10 and False)
print(10 or 3)
print(10 or 0)
print(10 or False)
print(0 or 0)
print(False or False)

A = np.array([1, 2])
B = np.array([12, 2])
C = np.array([0,2])
D = np.array([1, 0])
print(np.logical_or(A,B))
print(np.logical_and(A,C))
print(C <= D)