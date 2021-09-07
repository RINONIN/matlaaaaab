s=tf('s');
G=idistance(c);

[tt,ff]=tfdata (G, 'v');
num=tt;den=ff;
O=tf(num,den);
o=zpk(O);
g=tf(num,den);
q=zpk(g)

syms k s
Fz=c.*s;%定义Z反变换表达式
fk=iztrans(Fz,k); %Z 反变换
pretty(fk);




