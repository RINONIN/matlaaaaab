[p,z]=pzmap(A,B,C,D)
[p,z]=pzmap(p,z)
[p,z]=pzmap(num,den)

[r,K] = rlocus( num, den)
[r,K]= rlocus(num, den, K)
[r,K]= rlocus(A,B,C,D)
[r,K]= rlocus(A,B,C,D,K)
plot(r,'x')
[K, poles] = rlocfind(num, den)
[K, poles]= rlocfind(A,B,C, D)

