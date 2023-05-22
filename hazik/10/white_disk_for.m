function white_disk_for(x,y,r, image)
%WHITE_DISK Draws a white disk of radius r at centre(x,y) onto the image,
%then plots both image
    [n,m,~] = size(image);
    image2 = image;
    for i=1:n
        for j=1:m
            if (i-x)^2+ (j-y)^2 <= r^2
                image2(i,j,:)=255;
            end
        end
    end
    subplot(1,2,1), imshow(image)
    subplot(1,2,2), imshow(image2)
end

