function rajz()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[x,y] = meshgrid(-1:0.01:1,-1:0.01:1);
fgv = exp(-x.^2-y.^2);

clf;
surf(x,y,fgv)
end