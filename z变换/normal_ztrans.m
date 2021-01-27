syms a T z
kk=ilaplace(a/(s + a)/s)

ss=ztrans(1 - exp(-a*t*T))
SS=ss*(z-1)/z
