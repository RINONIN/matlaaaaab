A=[0 0 -1;1 0 -3;0 1 -3];
B=[1;1;0];
C=[0 1 -2];
n=rank(A);
Vo=obsv(A,C);
if(rank(Vo)==n)
disp('The system states are observable')
else
[Ao,Bo,Co,To,Ko]=obsvf(A,B,C)
end