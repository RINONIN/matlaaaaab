%��1����K0
%��2����ԭϵͳ�Ĳ���ͼ���Ծ��Ӧ���ߣ�����Ƿ�������ĿҪ��
K0=50;
n1=1; d1=conv( conv([1 0],[0.1 1]),[0.01 1]);
[mag,phase,w]=bode(K0*n1,d1);
figure(1);
margin(mag,phase,w); hold on
figure(2);
s1=tf(K0*n1,d1); sys=feedback(s1,1);
step(sys)
%��3����ǰУ�����Ĵ��ݺ���
K0=50;n1=1;d1=conv( conv([1 0],[0.1 1]),[0.01 1]);
sope=tf(K0*n1,d1);[mag,phase,w]=bode(sope);
gama=50;
gam=gama*pi/180;
alfa=(1+sin(gam))/(1-sin(gam));
adb=20*log10(mag);
am=-10*log10(alfa);
wc=spline(adb,w,am);
T=1/(wc*sqrt(alfa));alfat=alfa*T;Gc=tf([T 1],[alfat 1]);
%��4��У��ϵͳУ�����Ƿ�����Ҫ�󣬲�����ϵͳУ����Ľ�Ծ��Ӧ����
K0=50;n1=1;d1=conv( conv([1 0],[0.1 1]),[0.01 1]);
s1=tf(K0*n1,d1);
n2=[0.07782 1];d2=[0.01031 1];
s2=tf(n2,d2);
sope=s1*s2;
[mag,phase,w]=bode(sope);
margin(mag,phase,w);
hold on
figure(2)
sys=feedback(sope,1);
step(sys)
