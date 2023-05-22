function fourier_sign_var(varargin)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    x = -pi:0.01:pi;
    clf;
    hold on;
    for i = 1:1:nargin
       y = 0;
       for k = 0:1:varargin{i}
            y = y + sin((2*k+1)*x)/(2*k+1);
       end
       y = 4/pi.*y;
       sign = x;
       sign(sign < 0) = -1;
       sign(sign > 0) = 1;
       plot(x,y)
       plot(x, sign)
    end
    legend;
end