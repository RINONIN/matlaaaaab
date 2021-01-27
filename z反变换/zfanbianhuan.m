%计算函数10z/(z-1)(z-2)和(1-e-aT)z/(z-1)(z-e-aT)的Z反变换
%syms z n T;
%y1=iztrans(T/z-1);
%y1=simplify(y1)
%n=0:5;
%yy1=subs(y1,n)
%syms n z a y2 ;
%y2=iztrans((1-exp(-a))*z/(z-1)/(z-exp(-a)));
%y2=simplify(y2)
%yy2=subs(y2,{a,n},{ones(1,6),0:5})

syms k z
q=tf([1 0],[1 -1])
Fz=distance(q); %定义Z反变换表达式
fk=iztrans(Fz,k);%Z 反变换
pretty(fk);
