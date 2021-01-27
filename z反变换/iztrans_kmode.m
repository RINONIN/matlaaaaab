syms k s
Fz=d;%定义Z反变换表达式
fk=iztrans(Fz,k); %Z 反变换
pretty(fk);
