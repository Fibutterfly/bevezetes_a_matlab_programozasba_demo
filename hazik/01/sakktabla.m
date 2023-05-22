function x = sakktabla(n)
%sakktabla $n \times n$ sakktáblaszerű mátrixot add vissza
%{
    1. létre hozz egy $n \times n$ mátrixot
    2. 1-re változtatja minden páros sorban és pár oszlopban lévő cellákat
    3. 1-re változtatja minden páratlan sorban és oszlopban lévő cellákat
%}
x = zeros(n,n, 'logical');
x(2:2:end, 2:2:end) = 1;
x(1:2:end, 1:2:end) = 1;
end