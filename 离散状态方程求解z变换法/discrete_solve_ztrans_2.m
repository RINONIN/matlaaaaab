s=tf('s');
G=idistance(c);

[tt,ff]=tfdata (G, 'v');
num=tt;den=ff;
O=tf(num,den);
o=zpk(O);
g=tf(num,den);
q=zpk(g)

syms k s
Fz=c.*s;%����Z���任���ʽ
fk=iztrans(Fz,k); %Z ���任
pretty(fk);




