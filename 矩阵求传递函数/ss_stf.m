%A=[1 6 9 10; 3 12 6 8; 4 7 9 11; 5 12 13 14];
%B=[4 6; 2 4; 2 2; 1 0];
%C=[0 0 2 1; 8 0 2 2]; 
%D=zeros(2,2);
%G=ss(A,B,C,D)
D=0;
[num,den]=ss2tf(A,B,C,D) 
[z,p,k]=ss2zp(A,B,C,D)