import numpy as np

Z = np.zeros((8,8))
print(Z)
odd_1 = Z
odd_1[1::2, 1::2] = 1
print(odd_1)
chess_table = Z
chess_table[::2, ::2] = 1
print(chess_table)