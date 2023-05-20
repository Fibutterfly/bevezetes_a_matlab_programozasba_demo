import numpy as np

x,y= np.mgrid[1:11.,1:6.]
print(x,y)
cx = 5
cy = 3
r = 2
A = (x-cx)**2 + (y-cy)**2 <= r**2
print(A.T)