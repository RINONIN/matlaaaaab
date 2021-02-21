syms a s
%构造传递函数
h = tf(5., [10,11,1]);
%Z变换
zh = c2d(h, 0.05,'zoh');
gg=zpk(zh);
%得到分子分母系数
[num den] = tfdata(zh, 'v');
%得到零极点
[z, p, k] = tf2zpk(num, den);