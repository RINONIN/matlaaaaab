Ts=1;s=tf('s');
G=1/(s+1)/s;
%bode(G,'g')
Gz=c2d(G,Ts,'zoh')%将G通过Z变换变为Gz
n=[0.368 0.264];
d=[1 -1.368 0.368];%传递函数n/d与Gz一致
grid on
hold on;
dbode(n,d,Ts,'b');%这符合帮助的用法
hold on;
%dbode(Gz,Ts,'r');
