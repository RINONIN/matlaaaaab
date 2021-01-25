format short
syms kp z T ki k s kd
kp=3;
ki=555;
kd=0;
h = tf(10, [1 3 2]);%构造传递函数
zh=c2d(h, 0.1,'zoh');%Z变换
[num, den] = tfdata(zh, 'v');%得到分子分母系数
ff=zpk(zh);
jj=vpa(distance(zh));
kk=(kp+ki+kd)/s/(s-1);
c=[1 -(kp+2*kd)/(kp+ki+kd) kd/(kp+ki+kd)];
ll=symf(c);
%w1=c(2)-den(2);
%w2=c(3)-den(3);
%[s1,s2]=solve(w1,w2,ki,kd);
dz=kk*ll;
dip=jj*kk*ll;
digits(4);
vpa(dip)
dipp=idistance(dip);
[numk, denk]=tfdata(dipp, 'v');
[numc,denc]=cloop(numk,denk);
gg=tf(numc,denc);
ggg=zpk(gg);
gggg=distance(ggg);
ko=vpa(subs(gggg,s,1))