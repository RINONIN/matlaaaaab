%[Gm,Pm,Wcg, Wcp] = margin(num, den)
%[Gm,Pm, Wcg, Wep]= margin(A,B,C,D)
w=logspace(-1,1); %wn0.1~10
[Gm,Pm,Wcg,Wcp]=margin([35.7954],[0.2 2.3 3.1 1])
bode(num,den,w); 
grid
disp(['Gain margin=',num2str(20*log10(Gm)),'dB,','Phase margin=',num2str(Pm),'degree']);
title(['Gain margin=',num2str(Gm),'Phase margin=',num2str(Pm)])