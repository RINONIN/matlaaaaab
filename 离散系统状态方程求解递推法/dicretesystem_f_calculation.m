syms s;
Gs=1/(s+1);%传递函数F（s）
T=0.5;
[numGs,denGs]=numden(Gs);%提取分子分母%将分母转化为一般多项式
pnumGs=sym2poly(numGs);
pdenGs=sym2poly(denGs);
%Z变换
[pnumGz,pdenGz]=c2dm(pnumGs,pdenGs,T,'zoh');
w=0:0.1:19;
[mag,pha]=bode(pnumGs,pdenGs,w);
[dmag,dpha]=dbode(pnumGz,pdenGz,T,w);
for i=1:1:190
if dpha(i)<=-180
dpha(i)=dpha(i)+360;
end
end

figure(1);
plot(w,mag,'blue');
hold on;
plot(w,dmag,'red');
grid on
axis([0,19,0,1.2]);
figure(2);
plot(w,pha,'blue');
hold on;plot(w,dpha,'red');
grid on
axis([0,19,-200,200]);