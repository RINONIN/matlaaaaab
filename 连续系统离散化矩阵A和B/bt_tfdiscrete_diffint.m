%diff(f) �� ��ȱʡ������΢
%diff(f,v) �� ��ָ������v��΢��
%diff(f,v,n) ����ָ������v��n��΢��
%int(f) �� ��f���ʽ��ȱʡ���������
%int(f,v) �� ��f���ʽ��v���������
%int(f,v,a,b) �� ��f���ʽ��v������(a,b)�����󶨻���
syms s;
m=[0 1; 0 -10];
a=s*eye(2)-m;
b=inv(a);
c=ilaplace(b);
disp(c);
syms t T;T=0.1;
y=int(c,t,0,T);
syms k real;
k=subs(1);%����k��ȡֵ
w=[0 k]';
y=y*w;
disp(y);
u=eval(y);
digits(4)
f=vpa(u);
disp(f);