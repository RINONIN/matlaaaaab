num0=2;
den0=conv([1, 0], conv([0.1, 1], [0.3, 1]));
G0=tf (num0, den0) ;
Gc1=feedback (G0, 1) ;
step (Gc1) ;hold on
sigma=0.2;
zeta=((log(1/sigma))^2/((pi)^2+(log (1/sigma))^2))^(1/2);
ts=1;
wn=3.5/(ts*zeta);
p=[1, 2*zeta*wn, wn^2];
r_d=roots(p) ;
kc=3;
s_1=r_d(1);
ngv=polyval(num0,s_1);
dgv=polyval(den0,s_1);
g=ngv/dgv;
zeta0=angle (g) ;M0=abs (g) ;
zetal=angle(s_1) ;M1=abs(s_1);
tz=(sin(zetal) +M0*kc*sin(zetal-zeta0) )/ (M1*M0*kc*sin (zeta0));
tp=-((sin(zetal+zeta0) +M0*kc*sin (zetal) ) /M1*sin(zeta0));
numc= [tz, 1];denc=[tp, 1];
Gc=tf (numc, denc) ;
num1= (2*kc) ;den1=conv([1, 0], conv([0.1, 1], [0.3, 1]));
G1=tf (num1, den1) ;
Gp=G1*Gc;
sys=feedback (Gp,1);
step (sys) ;
grid
