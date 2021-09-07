syms kp z w  T ki k s
h = tf(1, [1 1 0]);%构造传递函数
zh=c2d(h,1,'zoh');%Z变换
ff=zpk(zh);
[num, den] = tfdata(zh, 'v');%得到分子分母系数
[numc,denc]=cloop(k*num,den);
ggg=[numc; denc];
rr=symf(ggg);
vpa(rr);
digits(4)
rrr=vpa(rr);

v=subs(rr(2),s,(1+w)/(1-w));
ee=vpa(v);
simplify(ee);
kk=v*(w - 1)^2;
kkk=vpa(kk);
digits(3);
vpa(simplify(kkk));




