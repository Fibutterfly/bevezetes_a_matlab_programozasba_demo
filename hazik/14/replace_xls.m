function replace_xls(excel_file,from,to)
%replace_xls Criss platform excel data replacing function
%   it should work with drop in replacement readxls és writexls
%   but i am not in windows enviromnemt at the moment
%   1. read the data from the specified excel file into a cell
%   2. start iterating on the cells
%   3. if it founds a string it converts to char array
%   4. if it is a char array then it searches for every occurances of the
%       from variable and changes it
%   5. writes out to replaced.xls
data = readcell(excel_file,"FileType","spreadsheet");
%[~,~,data] = xlsread(excel_file);
[n,m] = size(data);
for row=1:1:n
    for col=1:1:m
        wrk_data = data{row,col};
        if isstring(wrk_data)
            wrk_data = char(wrk_data);
        end
        if ischar(wrk_data)
            mask = wrk_data == from;
            wrk_data(mask) = to;
        end
        data{row,col} = wrk_data;
    end
end
writecell(data,'replaced.xls','FileType','spreadsheet');
% xlswrite(data, 'replaced.xls');
end