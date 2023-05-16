import numpy as np
from typing import Tuple

def elso_func(x:float, y:float) -> float:
    return x + (y-x)*np.random.uniform()

def masodik_func(x:float, y:float) -> Tuple[float,float]:
    z = x + (y-x)*np.random.uniform()
    d = z**2
    return z,d

print(elso_func(8,10))
print(masodik_func(8,13))