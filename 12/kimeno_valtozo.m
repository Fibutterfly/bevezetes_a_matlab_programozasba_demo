function varargout = kimeno_valtozo(varargin)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    for i = 1:nargin
        varargout{i} = varargin{i}.^2;
    end;
end