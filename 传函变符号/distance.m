function func=distance(G)
clc;
syms s ;%��G1(s)�� tf����ת���sym����
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
