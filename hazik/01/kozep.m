function x = kozep(n,m)
%kozep $n \times n$ mátrixot add vissza, amiben 0-k vannak kivéve a közepén
% egy $m \times m$ mátrixban
%{
    1. létre hozz egy $n \times n$ mátrixot
    2. ellenőrzi, hogy mind2 input páros-e, ha nem akkor vissza add egy 
        $n \times n$ méretű -1-gyel feltöltött mátrixot
    3.  ellenőrzi, hogy n => m
    4. megkeresi a 0 mátrixban hol kell kezdődnie a $m \times m$ mátrixnak
    5. berakja a mátrixot
%}
x = zeros(n,n);
if mod(n,2) == 0
    x(:) = -1;
    return
elseif ~(m <= n)
    x(:) = -2;
    return
end
y = ones(m,m);
k0 = (n - m)/2+1;
k1 = (k0 + m)-1;
x(k0:k1,k0:k1)= y;
end