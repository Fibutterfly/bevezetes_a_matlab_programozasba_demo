import numpy as np
from PIL import Image
import matplotlib.pyplot as plt

C = np.array(Image.open('06/eastern-bluebird-387244-hero-2a08dd9fff084569bb4280a30dc4b6c1.jpg'))

def kek_piros(_img):
    sizex = np.size(_img,0)
    sizey = np.size(_img,1)
    sizez = np.size(_img,2)
    rtn = np.copy(_img)
    for row in range(0,sizex):
        for col in range(0,sizey):
            if rtn[row,col,2] >= 1.2*np.mean(rtn[row,col,:]):
                rtn[row,col,0] = rtn[row,col,2]
                rtn[row,col,1] = 0
                rtn[row,col,2] = 0
    return rtn

plt.imshow(kek_piros(C))
plt.show()