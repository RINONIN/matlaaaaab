T=5;
s=0.5;
w=10;
h=0.01;
A=[0 1;-w^2 -2*s*w];
B=[0;w^2];
Y=[0;0];
YY=Y;

for t=0:h: T
K1=A* YY+B* z(t); 
K2=A* (YY+h/2*K1)+B*z(t);
K3=A* (YY+h/2*K2)+B*z(t);
K4=A* (YY+h*K3) +B*z(t);
YY= YY+h/6* (K1+2* K2 +2*K3+K4);
Y=[Y YY];
end
y=Y(1, :) ;
t=0:h: (T+h) ;
plot(t,y,'b')
xlabel ('时间t')
ylabel ('输出y')
title('输出响应曲线')
grid on
