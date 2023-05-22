function szinezes_vekotorizacio(kep)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    kep_p = kep(:,:,1);
    kep_z =kep(:,:,2);
    kep_k = kep(:,:,3);
    mask = kep(:,:,3) >= 1.2*mean(kep,3);
    kep_p(mask) = kep_k(mask);
    kep_k(mask) = 0;
    kep_z(mask) = 0;
    
    kep(:,:,1) = kep_p;
    kep(:,:,2) = kep_z;
    kep(:,:,3) = kep_k;
    imshow(kep)
end