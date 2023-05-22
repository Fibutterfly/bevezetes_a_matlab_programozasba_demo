function white_disk_vektor(cx,cy,r, image)
%WHITE_DISK Draws a white disk of radius r at centre(x,y) onto the image,
%then plots both image
    [n,m,~] = size(image);
    image2 = image;
    [x, y] = meshgrid(1:m,1:n);
    mask = (x-cx).^2+ (y-cy).^2 <= r.^2;
    mask3d = repmat(mask,1,1,3);
    image2(mask3d) = 255;
    subplot(1,2,1), imshow(image)
    subplot(1,2,2), imshow(image2)
end

