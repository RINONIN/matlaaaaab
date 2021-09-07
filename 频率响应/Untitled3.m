w=logspace(-1,1);
num=[1 7 24 24];
den=[1 10 35 50 24];
F=freqresp(num,den,sqrt(-1)*w)
plot(F)

w=0 0.1 j;
num=[1 7 24 24];
den=[1 10 35 50 24];
sys=tf(sum,den); 
F=evalfr(sym,w)