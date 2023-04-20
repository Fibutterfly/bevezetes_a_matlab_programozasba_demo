function kivagas_vektorizacio(kep,cx,cy,r)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[n,m, ~] = size(kep);
[x y] = meshgrid(1:m,1:n);
mask = (x-cx).^2+ (y-cy).^2 <= r.^2;
mask3d = repmat(mask,1,1,3);
kep(~mask3d) = 255;
imshow(kep)
end