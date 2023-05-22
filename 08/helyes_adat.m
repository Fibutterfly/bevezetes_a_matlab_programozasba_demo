function uj_adat = helyes_adat(sebesseg,ih)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    szamlalo = 1;
    for ii=1:length(ih)
        if ih(ii)
            uj_adat(szamlalo) = sebesseg(ii);
            szamlalo = szamlalo + 1;
    end

end