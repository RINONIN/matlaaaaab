clf
x0=[0.1;0.1;0.1]; 
[t,x]=ode45( 'lorenz',[0,40],x0);
plot(t,x)%��ʾ�������Ĺ�ϵͼ,��������
title('x��y��zά�������Ĺ�ϵ��ͼ');
xlabel('t'); ylabel('x��y��z')
figure;
plot3(x(:,1),x(:,2),x(:,3))
xlabel('x'); ylabel('y'); zlabel('z')
