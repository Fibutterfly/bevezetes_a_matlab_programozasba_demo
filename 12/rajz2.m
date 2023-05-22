function rajz2()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[x,y] = meshgrid(-pi:0.01:pi,-pi:0.01:pi);
fgv = exp(-x.^2-y.^2);

clf;
surf(sin(x).*sin(y),sin(x).*cos(y),cos(x),"EdgeColor","none")
axis("equal")
end