A=[-3 1;1 -3]; B=[1 1;1 1]; C=[1 1;1 -1]; D=[0]; n=2; Uc=ctrb(A,B); Vo=obsv(A,C);
if(rank(Uc)==n)
if(rank(Vo)==n) disp('The System States are both controllable and observable')
else disp('The system states are controllable, not observalbe')
end
else
if(rank(Vo)==n) disp('The System States are observable, not controllable')
else disp('The System States are neither controllable nor observable')
end end