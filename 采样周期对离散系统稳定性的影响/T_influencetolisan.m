syms z s T  t k
kk=ilaplace(k*(1/s - 1/(s + 10)))
ss=ztrans(k - k*exp(-10*t*T));
hh=ss*(z-1)/z;
simplify(hh)
num=[exp(10*T)-1];
den=[exp(10*T),-1];
[numc,denc]=cloop(k*num,den)
ll=z*exp(10*T)+ k*(exp(10*T) - 1) - 1
mm=solve(ll,z)
solve(mm==1,k)
solve(mm==(-1),k)
