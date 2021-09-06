%[Re,Im,w]=nyquist(num,den);%nyquist()函数的调用格式为
%[Re,Im,w]=nyquist(num,den,w);
%[Re,Im,w]=nyquist(A,B,C,D);
%[Re,Im,w]=nyquist(A,B,C,D,iu);
%[Re,Im,w]=nyquist(A,B,C,D,iu,w);


%nyquist(num,den,w)%下面的简单命令来直接绘出系统的奈奎斯特图。
%nyquist(A,B,C,D)
%nyquist(num,den)
%nyquist(A,B,C,D,iu)
%Z=P-2N；Z=0时系统稳定。P: 在右半平面开环极点数;Z: 在右半平面闭环极点数;N: 在[G]平面，?从0→?，幅相曲线绕（-1，j0) 点逆时针转过的圈数。
%num=0.5;den=[1 2 1 0.5];nyquist(num,den);roots(den)
k=0.5;
z=[ ];
p=[1 2 1 0.5];
[num den]=zp2tf(z,p,k);
nyquist(num,den)