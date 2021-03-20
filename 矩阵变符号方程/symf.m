function sym_func=symf(h)
syms s
n=size(h);
for i=1:n(1)
for j=1:n(2)
    w(i,j)=h(i,j)*s.^(n(2)-j);
end
end
m=sum(w,2);
%mm=m(1)/m(2);
sym_func=m;
    assignin('base', 'm' ,m) ;
    


