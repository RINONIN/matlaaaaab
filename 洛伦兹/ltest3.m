clf
x0=[0.1;0.1;0.1]; 
[t,x]=ode45( 'lorenz',[0,40],x0);
plot(t,x)%显示三分量的关系图,即吸引子
title('x、y、z维三分量的关系相图');
xlabel('t'); ylabel('x、y、z')
figure;
plot3(x(:,1),x(:,2),x(:,3))
xlabel('x'); ylabel('y'); zlabel('z')
