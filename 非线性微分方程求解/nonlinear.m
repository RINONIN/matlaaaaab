function yy=nonlinear(t,x)
yy=[0;0];
f=0.1271;
oumega=2*pi*f;
b=1;r=10;A=0.1;
yy(1)=x(1)*(x(1)-1)*(1-r*x(1))-x(2)+A*cos(oumega*t)/oumega;
yy(2)=b*x(1);
end
 x0=[0.1,0.2];
[t,y]=ode45('nonlinear',[0,100],x0);
subplot(1,2,1);
plot(t,y(:,1),'b');
xlabel('t');
ylabel('x');
grid;
hold on
subplot(1,2,2);
plot(t,y(:,2),'g');
xlabel('t');
ylabel('y');
grid;
hold on
>> 