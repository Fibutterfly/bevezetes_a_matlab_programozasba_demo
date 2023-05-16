import numpy as np
from PIL import Image
import matplotlib.pyplot as plt

C = np.array(Image.open('06/eastern-bluebird-387244-hero-2a08dd9fff084569bb4280a30dc4b6c1.jpg'))
#plt.imshow(C)
#plt.show()

FF = np.repeat(np.mean(C,2)[:,:,np.newaxis],3,axis=2).astype(np.uint8)
#print(C[...,:3])
#print(FF)
#plt.imshow(FF)
#plt.show()
#plt.imshow(FF[::1,::-1])
#plt.show()
#plt.imshow(FF[120:440,100:600])
#plt.show()

def circle_with_for(_img, _x, _y, _r) -> np.ndarray:
    sizex = np.size(_img,0)
    sizey = np.size(_img,1)
    sizez = np.size(_img,2)
    rtn = np.copy(_img)
    for row in range(0,sizex):
        for col in range(0,sizey):
            if (row-_x)**2+(col-_y)**2 >= _r**2:
                rtn[row,col,:] = 255
    return rtn

CC = circle_with_for(C,400,300,300)
plt.imshow(CC)
plt.show()