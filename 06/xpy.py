def xpy(x,y):
    """
    x/y = 
    \begin{cases}
    x/y &, y \ne 0 \\
    x & , y =0
    \end{cases}
    """
    return x/(y+ (y == 0))

x = 8
y1 = 5
y2 = 0
print(xpy(x,y1))
print(xpy(x,y2))