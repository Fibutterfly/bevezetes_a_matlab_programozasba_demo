function rajz3()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[x,y] = meshgrid(-pi:0.01:pi+0.01,-pi:0.01:pi+0.01);

szin = x;
szin = repmat(szin,1,1,3);
szin(:,:,1) = 1;
szin(:,:,2) = 0;
szin(:,:,3) = 0;


clf;
surf((2+sin(x)).*sin(y),(2+sin(x)).*cos(y),cos(x),szin,"EdgeColor","none")
axis("equal")
light
end