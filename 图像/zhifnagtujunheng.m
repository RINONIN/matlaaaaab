
P=imread('line8.bmp');
I=rgb2gray(P);
subplot(231);imshow(I,[]);title('ԭʼͼ��');
subplot(234);imhist(I);title('��ԭʼͼ��õ���ֱ��ͼ');
J=imadjust(I,[0.15 0.9],[0 1]);
subplot(232);imshow(J);title('����ֱ��ͼ�õ�����ͼ��');
subplot(235);imhist(J);title('����imadjust���ں����ֱ��ͼ');
K=histeq(I);
subplot(233);imshow(K);title('�ɾ��⻯���ֱ��ͼ�õ��ľ�����ͼ��');
subplot(236);imhist(K);title('���⻯���ֱ��ͼ');
figure,imshow(K)


