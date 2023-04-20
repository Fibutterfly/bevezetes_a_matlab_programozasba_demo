function mtlb()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
inp = upper(input('Kérek egy betűt: ','s'));
switch inp
    case {'M','A','T','L','B'}
        %disp('MATLAB')
        fprintf('MATLAB \n')
    otherwise
        fprintf('ezt a betűt nem ismerem \n')
end
end