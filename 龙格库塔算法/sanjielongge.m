h=0.01;
T= 40;
A=[0,1,0;0,0,1;-20,-102,-10.2];
B=[0;0;20] ;
Y=[0;0;0];

YY=Y;
for t=0:h: T
K1=A* YY+B;
K2=A* (YY+h/2*K1)+B; 
K3=A* (YY+h/2*K2) +B;
K4=A* (YY+h*K3) +B;
YY= YY+h/6* (K1+2* K2 +2*K3+K4) ;
Y=[Y YY] ;
end
y=Y(1, :) ;
t=0:h: (T+h) ;
plot (t,y,'g')
xlabel ('ʱ��t')
ylabel ('���y')
title('�����Ӧ����')
grid on 

ymax=max(y);
A=find(y>ymax*0.999);
tr=t(A(1)); %����ʱ��
tp=tr;%��ֵʱ��
y1=fliplr(y);
B=find(y1<y1(1,1)*0.98);
ts=t(B(1)); %����ʱ��
 
plot(t,y,'g');
title('��Ӧ����');
xlabel('t');
ylabel('y');
hold on
plot(tr,y(A(1)),'bs');
text(tr,y(A(1))-0.02,['��ֵʱ��tr=tp=',num2str(tr),')']);
grid;
hold on
plot(ts,y(B(1)),'bs');
text(ts,y(B(1))-0.05,['����ʱ��ts=',num2str(ts),')']);
