G=tf(1,conv(conv([1,1],[2,1]),[5,1]));
Kp=2;tou=[0,0.3,0.7,1.5,3];
for i=1:5
G1=tf([Kp*tou(i),Kp],1);
sys=feedback(G1*G,1);step(sys)
hold on
end