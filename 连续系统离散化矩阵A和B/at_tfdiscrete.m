syms s;
m=[0 1; 0 -10];
a=s*eye(2)-m;
b=inv(a);
c=ilaplace(b);
disp(c);
syms t;
t=0.1;%采样周期
k=c(1:4);
subs(k);
j=eval(k);
l=vpa(j);
q=reshape(j,2,2);
disp(q);
hh=vpa(q)

%f(2,2)=0;digits(4);n=vpa(q-f)%反馈为1闭环算法