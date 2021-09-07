%试判断系统是否为状态完全能控，否则将系统按能控性分解。
A=[0 0 -1;1 0 -3;0 1 -3]; B=[1;1;0]; C=[0 1 -2];
n=rank(A); Uc=ctrb(A,B);
if(rank(Uc)==n)
disp('The system states are controllable')
else
[Ac,Bc,Cc,Tc,Kc]=ctrbf(A,B,C);
end