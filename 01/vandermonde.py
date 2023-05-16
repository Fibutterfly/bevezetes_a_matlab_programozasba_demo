import numpy as np
#i am aware is not correct, but this was in the example
oszlop = np.arange(1,7,1).T
A = np.tile(oszlop,(6,1))
vandermond = A**oszlop.T

print(vandermond)
det = np.linalg.det(vandermond)
print(det)