function replace_pixel_color(kep,r,g,b)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    mask_p = kep(:,:,3) == r;
    mask_z = kep(:,:,3) == g;
    mask_k = kep(:,:,3) == b;
    mask = mask_k & mask_z & mask_p;
    mask3d = repmat(mask,1,1,3);
    kep(mask3d) = 255;
    imshow(kep)
end