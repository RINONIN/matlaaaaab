
P=imread('line8.bmp');
I=rgb2gray(P);
subplot(231);imshow(I,[]);title('原始图像');
subplot(234);imhist(I);title('由原始图像得到的直方图');
J=imadjust(I,[0.15 0.9],[0 1]);
subplot(232);imshow(J);title('由新直方图得到的新图像');
subplot(235);imhist(J);title('利用imadjust调节后的新直方图');
K=histeq(I);
subplot(233);imshow(K);title('由均衡化后的直方图得到的均衡后的图像');
subplot(236);imhist(K);title('均衡化后的直方图');
figure,imshow(K)


