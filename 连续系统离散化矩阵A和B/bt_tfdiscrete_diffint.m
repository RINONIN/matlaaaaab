%diff(f) — 对缺省变量求微
%diff(f,v) — 对指定变量v求微分
%diff(f,v,n) —对指定变量v求n阶微分
%int(f) — 对f表达式的缺省变量求积分
%int(f,v) — 对f表达式的v变量求积分
%int(f,v,a,b) — 对f表达式的v变量在(a,b)区间求定积分
syms s;
m=[0 1; 0 -10];
a=s*eye(2)-m;
b=inv(a);
c=ilaplace(b);
disp(c);
syms t T;T=0.1;
y=int(c,t,0,T);
syms k real;
k=subs(1);%参数k的取值
w=[0 k]';
y=y*w;
disp(y);
u=eval(y);
digits(4)
f=vpa(u);
disp(f);