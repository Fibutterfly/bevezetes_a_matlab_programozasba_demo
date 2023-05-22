function outputArg1 = cell_label(inputArg1)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [n,m,~] = size(inputArg1);
    cella = cell(n+1,m+1);
    temp_cell = num2cell(inputArg1);
    cella(2:end,2:end) = temp_cell;
    for c = 1:m
        cella{1,c+1} = ['C' num2str(c)];
    end
    for r = 1:n
         cella{r+1,1} = ['R' num2str(r-1)];
    end
    for r = 1:n
        cella{r+1, m+2} = mean([cella{r+1,2:m+1}]);
    end
    cella{1,m+2} = "Átlag";
    outputArg1 = cella;
end