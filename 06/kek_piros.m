function kek_piros(kep)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[n,m,~] = size(kep);
    for ii=1:n
        for jj = 1:m
            if kep(ii,jj,3) >= 1.2*mean(kep(ii,jj,:))
                kep(ii,jj,1) = kep(ii,jj,3);
                kep(ii,jj,2) = 0;
                kep(ii,jj,3) = 0;
            end
        end
    end
    imshow(kep)
end