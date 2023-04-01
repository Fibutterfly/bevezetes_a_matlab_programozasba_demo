function [z,d] = masodikfajl(x, y)
    z = x + (y-x)*rand(1);
    d = z^2;
end