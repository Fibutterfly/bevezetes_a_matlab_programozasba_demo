function outputArg1 = ketvektoros(inputArg1,inputArg2, ia3)
%KETVEKTOROS Summary of this function goes here
%   Detailed explanation goes here
osszegvektor = inputArg1 + inputArg2;

outputArg1 = sum((inputArg1 <= ia3) == (inputArg2 >= ia3));

end

