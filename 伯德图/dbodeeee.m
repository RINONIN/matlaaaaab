Ts=1;s=tf('s');
G=1/(s+1)/s;
%bode(G,'g')
Gz=c2d(G,Ts,'zoh')%��Gͨ��Z�任��ΪGz
n=[0.368 0.264];
d=[1 -1.368 0.368];%���ݺ���n/d��Gzһ��
grid on
hold on;
dbode(n,d,Ts,'b');%����ϰ������÷�
hold on;
%dbode(Gz,Ts,'r');
