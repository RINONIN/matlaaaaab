 for a=[-1:1]
num=[1,a]; den=[1 10 27 18]; n=3; [A,B,C,D]=tf2ss(num,den);
Wc=gram(A,B); Wo=gram(A',C');
if(rank(Wc)==n)
if(rank(Wo)==n) disp('The System States are both controllable and observable')
else disp('The system states are controllable, not observalbe')
end
else 
if(rank(Wo)==n) disp('The System States are observable, not controllable')
else disp('The System States are neither controllable nor observable')
end
end
end