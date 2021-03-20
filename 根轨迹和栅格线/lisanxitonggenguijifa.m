t1=1;t2=2;k=1;n=2;
for i=1:n
if i<=1 t=t1; elseif i<=2 t=t2; end
b1=t-1+exp(-t); b2=1-exp(-t)-t*exp(-t);
a0=1;a1=1+exp(-t);a2=exp(-t); num=[k*b1,k*b2];den=[a0,-a1,a2];
figure(i); rlocus(num,den);
title('¸ù¹ì¼£Í¼'); hold
p=0:0.07:2*pi; x=sin(p); y=cos(p); plot(x,y,'.'); hold
v=[-4,2,-2,2];axis(v); grid
[k,poles]=rlocfind(num,den)
end