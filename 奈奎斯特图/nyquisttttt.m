%[Re,Im,w]=nyquist(num,den);%nyquist()�����ĵ��ø�ʽΪ
%[Re,Im,w]=nyquist(num,den,w);
%[Re,Im,w]=nyquist(A,B,C,D);
%[Re,Im,w]=nyquist(A,B,C,D,iu);
%[Re,Im,w]=nyquist(A,B,C,D,iu,w);


%nyquist(num,den,w)%����ļ�������ֱ�ӻ��ϵͳ���ο�˹��ͼ��
%nyquist(A,B,C,D)
%nyquist(num,den)
%nyquist(A,B,C,D,iu)
%Z=P-2N��Z=0ʱϵͳ�ȶ���P: ���Ұ�ƽ�濪��������;Z: ���Ұ�ƽ��ջ�������;N: ��[G]ƽ�棬?��0��?�����������ƣ�-1��j0) ����ʱ��ת����Ȧ����
%num=0.5;den=[1 2 1 0.5];nyquist(num,den);roots(den)
k=0.5;
z=[ ];
p=[1 2 1 0.5];
[num den]=zp2tf(z,p,k);
nyquist(num,den)