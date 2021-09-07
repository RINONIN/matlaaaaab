%digital nyquist diagram
clear all
zG=[-1];
pG=[1 0.242];
k=[0.198,0.7584,1];
Ts=0.1;
for i=1:3
[numG,denG]=zp2tf(zG,pG,k(i));
dnyquist(numG,denG,k(i));
hold on;
axis([-3,0.5,-2,+2]);
end
hold on;
xlabel('Re');
ylabel('Im');
text(-1,0,'(-1,j0)');%draw unit circle
x=-1:.01:0;
n=length(x);
for i=1:n
    y1(i)=sqrt(1-x(i)^2);
    y2(i)=-y1(i);
end
plot(x,y1,'k',x,y2,'k');