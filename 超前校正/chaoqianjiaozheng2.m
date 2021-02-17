k=2;
num0=2*k;
den0=conv([1, 0], conv([0.1, 1], [0.3, 1]));
w=logspace(-1, 2) ;
[mag, phras, w] =bode (num0, den0, w) ;
[Gm, Gp, Wcg, Wcp] =margin (num0, den0) ; 
figure(1) ;
margin(num0, den0) ;%绘制开环伯德图
hold on
grid on

gama=26.1;%设置校正装置提供的超前相角
gama= (gama*pi) /180;
alpha= (1+sin(gama))/ (1-sin(gama));
adb=20*log10 (mag) ;
am=-10*log10 (alpha) ;
wc=spline(adb,w,am);%利用插值方式求出新的幅值穿越频率
T=1/(wc*sqrt(alpha)) ;
alfat=alpha*T;
Gc=tf([T 1], [alfat 1]);%校正装置
G0=tf (num0/alpha, den0) ;%将原开环传递函数乘一个增 益
sope=G0*Gc;
figure(2) ;margin(sope) ;%绘制校正后的开环伯德图

gama=26.1;%设置校正装置提供的超前相角
gama= (gama*pi) /180;
alpha= (1+sin(gama))/ (1-sin(gama));
adb=20*log10 (mag) ;
am=-10*log10 (alpha) ;
wc=spline(adb,w,am);%利用插值方式求出新的幅值穿越频率
T=1/(wc*sqrt (alpha)) ;
alfat=alpha*T;
Gc=tf([T 1], [alfat 1]);%校正装置
G0=tf (num0/alpha,den0) ;%将原开环传递函数乘一个增 益
sope=G0*Gc;
figure (2);margin(sope) ;%绘制校正后的开环伯德图

sys0=tf (num0, den0) ;
sys0=feedback (sys0, 1) ;%校正前闭环传递函数
sys1=feedback (sope, 1) ;%校正后闭环传递函数
 step (sys0);
 hold on
 step(sys1);
