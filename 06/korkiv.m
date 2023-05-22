function korkiv(kep,xx,yy,r)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[n,m,~] = size(kep);
for ii=1:n
    for jj=1:m
       if (ii-xx)^2+(jj-yy)^2 >=r^2
           kep(ii,jj,:) = 255;
       end
    end
end
imshow(kep)
end

