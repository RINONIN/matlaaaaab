
t0=0;
tfinal=15;
x0=[0.5;0]; %��ʼ�������ݵ�ѹΪ0.5v ����е���Ϊ0
[t,x]=ode45('elecsys',[t0,tfinal],x0);%elecsys��ϵͳ΢�ַ��̵���������
figure(1)
subplot(2,1,1)
plot(t,x(:,1))
title('capacitor voltage')
xlabel('time-sec')
subplot(2,1,2)
plot(t,x(:,2))
title('current of L')
xlabel('time-sec')