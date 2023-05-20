import numpy as np

sebesseg = np.array([50,32,321,31,12])
ih = np.array([1,1,0,1,1])

def correct_data(vec1,vec2) -> np.ndarray:
    counter = 0
    rtn = []
    for index in range(0,len(vec2)):
        if vec2[index] == 1:
            rtn.append(vec1[index])
            counter = counter + 1
    return np.array(rtn)

print(correct_data(sebesseg,ih))

print(sebesseg[ih.astype(bool)])

print(sebesseg > 30)

print(sebesseg[sebesseg > 30])

sebesseg2 = np.copy(sebesseg)

sebesseg2[sebesseg2 > 30] = 30
sebesseg3 = np.copy(sebesseg2)

sebesseg3[sebesseg3 == 30] = 10
print(sebesseg2)
print(sebesseg3)

A = np.array([[1,2,2], [2,4,1]])
A[A > 3] = 3
print(A)

A = np.array([[1,2,2],[ 2,4,1],[1,3,4]])
A[(A >= 2) & (A <=3)] = 0
print(A)

B = np.array([["a", "b","c"],["d", "c", "e"]])
B[B == "c"] = "no"
print(B)