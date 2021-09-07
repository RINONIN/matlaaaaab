a=[0 1;-0.16 -1];
u=1;%uk初值
r=[1,1]';%b矩阵
m=[1 -1]';%x的初值
syms s;
b=s*eye(2)-a;
c=inv(b);
d=c.*s*m;
e=c*r*s/(s-1);
ee=simplify(e);

syms k s
Fz=ee;%定义Z反变换表达式
fz=d;
fk=iztrans(Fz+d,k); %Z 反变换
pretty(fk);








