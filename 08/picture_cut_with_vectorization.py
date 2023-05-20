import numpy as np
from PIL import Image
import matplotlib.pyplot as plt

C = np.array(Image.open('06/eastern-bluebird-387244-hero-2a08dd9fff084569bb4280a30dc4b6c1.jpg'))
def vector_cut(_img,cx,cy,r):
    sizex = np.size(_img,0)
    sizey = np.size(_img,1)
    sizez = np.size(_img,2)
    rtn = np.copy(_img)
    x,y= np.mgrid[0:sizex,0:sizey]
    mask = (x-cx)**2+ (y-cy)**2 <= r**2
    mask3d = np.repeat(mask[:,:,np.newaxis],3,axis=2).astype(bool)
    rtn[~mask3d] = 255
    return rtn

plt.imshow(vector_cut(C,400,300,300))
plt.show()