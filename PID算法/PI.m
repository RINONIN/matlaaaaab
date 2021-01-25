G=tf(1,conv(conv([1,1],[2,1]),[5,1]));
Kp=2; Ti=[3,6,14,21,28]
for i=1:5
G1=tf([Kp,Kp/Ti(i)],[1 0])
sys=feedback(G1*G,1);step(sys)
hold on
end