k=2;
num0=2*k;
den0=conv([1, 0], conv([0.1, 1], [0.3, 1]));
w=logspace(-1, 2) ;
[mag, phras, w] =bode (num0, den0, w) ;
[Gm, Gp, Wcg, Wcp] =margin (num0, den0) ; 
figure(1) ;
margin(num0, den0) ;%���ƿ�������ͼ
hold on
grid on

gama=26.1;%����У��װ���ṩ�ĳ�ǰ���
gama= (gama*pi) /180;
alpha= (1+sin(gama))/ (1-sin(gama));
adb=20*log10 (mag) ;
am=-10*log10 (alpha) ;
wc=spline(adb,w,am);%���ò�ֵ��ʽ����µķ�ֵ��ԽƵ��
T=1/(wc*sqrt(alpha)) ;
alfat=alpha*T;
Gc=tf([T 1], [alfat 1]);%У��װ��
G0=tf (num0/alpha, den0) ;%��ԭ�������ݺ�����һ���� ��
sope=G0*Gc;
figure(2) ;margin(sope) ;%����У����Ŀ�������ͼ

gama=26.1;%����У��װ���ṩ�ĳ�ǰ���
gama= (gama*pi) /180;
alpha= (1+sin(gama))/ (1-sin(gama));
adb=20*log10 (mag) ;
am=-10*log10 (alpha) ;
wc=spline(adb,w,am);%���ò�ֵ��ʽ����µķ�ֵ��ԽƵ��
T=1/(wc*sqrt (alpha)) ;
alfat=alpha*T;
Gc=tf([T 1], [alfat 1]);%У��װ��
G0=tf (num0/alpha,den0) ;%��ԭ�������ݺ�����һ���� ��
sope=G0*Gc;
figure (2);margin(sope) ;%����У����Ŀ�������ͼ

sys0=tf (num0, den0) ;
sys0=feedback (sys0, 1) ;%У��ǰ�ջ����ݺ���
sys1=feedback (sope, 1) ;%У����ջ����ݺ���
 step (sys0);
 hold on
 step(sys1);
