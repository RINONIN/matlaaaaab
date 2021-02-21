function func=idistance(GG)
clc;
syms s ;
[num, den]=numden(GG) ;
N=size (den) ;
for i=1:N(1)
for j=1:N(2)
Num=sym2poly(num(i,j)) ;
Den=sym2poly(den(i,j)) ;
G(i,j)=tf(Num,Den);
end
end
func=G;
assignin('base', 'G' ,G) ;
