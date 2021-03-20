syms z GG gg;
A=[0 1; -0.16 -1];
B=[1;1 ];
C=[1 0 ];
E=z.*eye(2)-A;
K=inv(E);
disp(K);
GG=C*K*B;
gg=simplify(GG);
disp(gg)

z=tf('z');
G=idistance(gg)
[tt,ff]=tfdata (G, 'v');
O=tf(tt,ff)
o=zpk(O)


