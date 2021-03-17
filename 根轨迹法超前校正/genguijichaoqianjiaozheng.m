%试设计超前校正环节，使其校正后闭环主导极点满足：1）阶跃响应超调量
%σ％≤30％；2）阶跃响应调节时间ts ≤0.8s；3）系统单位斜坡响应稳态
%误差essv ≤10%.
%（1）求校正器增益 Kc
%（2）校验原系统的阶跃响应超调量是否满足要求

n1=80; d1=conv(conv([1 0],[1 4]),[1 10]);
sope=tf(n1,d1);sys=feedback(sope,1);
step(sys)

%(3) 确定期望极点位置
sigma=0.3;
zeta=((log(1/sigma))^2/((pi)^2+(log(1/sigma))^2))^(1/2);
%求系统的主导极点
wn=3/(zeta*0.8);
p=[1 2*zeta*wn wn*wn];
roots(p)
%(4)求校正器的传递函数
kc=5; s_1=-3.75+9.7851i;
nk1=2;
dk1=conv(conv([1 0],[0.25 1]),[0.1 1]);
%求原开环传函在主导极点处的相角与幅值
ngv=polyval(nk1,s_1);
dgv=polyval(dk1,s_1);
g=ngv/dgv;
zetag=angle(g); mg=abs(g);
ms=abs(s_1);zetas=angle(s_1); %主导极点的相角与幅值

tz=(sin(zetas)-kc*mg*sin(zetag-zetas))/(kc*mg*ms*sin(zetag));
tp=-(kc*mg*sin(zetas)+sin(zetag+zetas))/(ms*sin(zetag));
nk=[tz,1];
dk=[tp,1];
Gc=tf(nk,dk)

%(5)校验校正器
global y t nc dc
n1=10;d1=conv(conv([1 0],[0.25 1]),[0.1 1]);
s1=tf(n1,d1);
Gc=tf([0.2858 1],[0.02407 1]);
sys=feedback(s1*Gc,1);
step(sys);
grid