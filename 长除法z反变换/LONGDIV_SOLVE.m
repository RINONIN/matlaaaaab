syms z T;
T=1;
a=[0.368 0.264 0];b=[1];c=[1 -1 0.632];d=[1 -1];
numd=conv(a,b)
dend=conv(c,d)
k=longDiv(numd*T,dend)
digits(5);
%plot(k)

