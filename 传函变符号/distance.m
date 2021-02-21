function func=distance(G)
clc;
syms s ;%将G1(s)的 tf对象转变成sym对象
[num, den]=tfdata(G) ;
N=size (den) ;
for i=1 :N(1)
for j=1:N(2)
Num=poly2sym (num{i,j},s) ;
Den=poly2sym(den{i,j},s) ;
GG(i, j) =Num/Den;
end
end
func=GG;
assignin('base', 'GG' ,GG) ;
