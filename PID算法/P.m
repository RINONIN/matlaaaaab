G=tf(1,conv(conv([1,1],[2,1]),[5,1]));
Kp=[0.1,2.0,2.4,3.0,3.5]
for i=1:5
G1=feedback(Kp(i)*G,1);
step(G1)
hold on
end