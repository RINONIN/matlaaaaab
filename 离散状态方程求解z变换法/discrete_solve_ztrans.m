a=[0 1;-0.16 -1];
u=1;%uk��ֵ
r=[1,1]';%b����
m=[1 -1]';%x�ĳ�ֵ
syms s;
b=s*eye(2)-a;
c=inv(b);
d=c.*s*m;
e=c*r*s/(s-1);
ee=simplify(e);

syms k s
Fz=ee;%����Z���任���ʽ
fz=d;
fk=iztrans(Fz+d,k); %Z ���任
pretty(fk);








