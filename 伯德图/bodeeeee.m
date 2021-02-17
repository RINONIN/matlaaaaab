%[mag, phase, w] = bode(num, den)
%[mag, phase, w] = bode(num, den, 0)
%[mag, phase, w]= bode(A, B,C,D)
%[mag, phase, w] = bode(A, B,C, D,iu, 0)
%[mag, phase, w]= bode(A, B,C,D, iu)
%已知典型二阶系统绘制出 
%kesai取不同值时， 在0.1～10之间的Bode图。
wn=5;
zeta=[0:0.2:1.0];
w=logspace(-1,1);
figure(1);
num=[wn.^2];
for k=zeta
den=[1 2*k*wn wn.^2];
[mag,phase,w1]=bode(num,den,w);
subplot(2,1,1);
hold on 
semilogx(w1,mag); 
subplot(2,1,2); hold on 
semilogx(w1,phase);
end 
subplot(2,1,1); 
grid on; 
grid; 
grid;
title('Bode plot');
xlabel('Frequency (rad/sec)');
ylabel('Gain dB'); 
subplot(2,1,2); 
grid on; 
grid;
grid;
xlabel('Frequency (rad/sec)'); ylabel('Phase deg'); hold off