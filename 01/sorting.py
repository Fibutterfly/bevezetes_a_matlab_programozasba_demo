import numpy as np

C = np.array([8,9,3,5,4,1,2,7,5,9])
ASC = np.sort(C)
print(ASC)
DESC = np.sort(C*-1)*-1
print(DESC)
DESC2 = np.sort(C)[::-1]
print(DESC2)
