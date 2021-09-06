x0=0:0.1:1;
y0=[-.447 1.978 3.11 5.25 5.02 4.66 4.01 4.58 3.45 5.35 9.22];
p=polyfit(x0,y0,1)
xx=0:0.01:1;yy=polyval(p,xx);
plot(xx,yy,'-r',x0,y0,'or')
hold on