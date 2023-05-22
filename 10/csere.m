function [outputArg1] = csere(input,mit,mire)
%CSERE Summary of this function goes here
%   Detailed explanation goes here
    indexes = findstr(input, mit);
    hossz_mit = length(mit);
    hossz_mire = length(mire);
    uj_szoveg = input;
    for index=length(indexes):-1:1
        uj_szoveg = [ uj_szoveg(1:indexes(index)-1),mire, uj_szoveg(indexes(index)+hossz_mit:end) ];
    end
    outputArg1 = uj_szoveg;
end

