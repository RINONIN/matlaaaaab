%����Ƴ�ǰУ�����ڣ�ʹ��У����ջ������������㣺1����Ծ��Ӧ������
%�ң���30����2����Ծ��Ӧ����ʱ��ts ��0.8s��3��ϵͳ��λб����Ӧ��̬
%���essv ��10%.
%��1����У�������� Kc
%��2��У��ԭϵͳ�Ľ�Ծ��Ӧ�������Ƿ�����Ҫ��

n1=80; d1=conv(conv([1 0],[1 4]),[1 10]);
sope=tf(n1,d1);sys=feedback(sope,1);
step(sys)

%(3) ȷ����������λ��
sigma=0.3;
zeta=((log(1/sigma))^2/((pi)^2+(log(1/sigma))^2))^(1/2);
%��ϵͳ����������
wn=3/(zeta*0.8);
p=[1 2*zeta*wn wn*wn];
roots(p)
%(4)��У�����Ĵ��ݺ���
kc=5; s_1=-3.75+9.7851i;
nk1=2;
dk1=conv(conv([1 0],[0.25 1]),[0.1 1]);
%��ԭ�����������������㴦��������ֵ
ngv=polyval(nk1,s_1);
dgv=polyval(dk1,s_1);
g=ngv/dgv;
zetag=angle(g); mg=abs(g);
ms=abs(s_1);zetas=angle(s_1); %���������������ֵ

tz=(sin(zetas)-kc*mg*sin(zetag-zetas))/(kc*mg*ms*sin(zetag));
tp=-(kc*mg*sin(zetas)+sin(zetag+zetas))/(ms*sin(zetag));
nk=[tz,1];
dk=[tp,1];
Gc=tf(nk,dk)

%(5)У��У����
global y t nc dc
n1=10;d1=conv(conv([1 0],[0.25 1]),[0.1 1]);
s1=tf(n1,d1);
Gc=tf([0.2858 1],[0.02407 1]);
sys=feedback(s1*Gc,1);
step(sys);
grid