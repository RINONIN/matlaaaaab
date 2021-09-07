%I=im2double(imread('1.jpg'));
%k=graythresh(I);              %得到最优阈值
%J=im2bw(I,k);                  %转换成二值图，k为分割阈值
%subplot(121);imshow(I); 
%subplot(122);imshow(J); 

 
% 双峰法是一种简单的阈值分割方法，即如果灰度级直方图呈现明显的双峰状，
% 则选双峰之间的谷底所对应的灰度级作为阈值分割。

I = imread('55.jpg');
if ndims(I) == 3
I = rgb2gray(I);
end
fxy = imhist(I, 256); %统计每个灰度值的个数
figure;
subplot(2, 2, 1); imshow(I, []); title('原图')
subplot(2, 2, 2); plot(fxy); %画出灰度直方图
title('直方图')
p1 = {'Input Num:'}; p2 = {'180'};
p3 = inputdlg(p1,'Input Num:1~256',1,p2);
p = str2num(p3{1}); p = p/255;
bw = im2bw(I, p); %小于阈值的为黑，大于阈值的为白
subplot(2, 2, 3); imshow(bw); title('双峰阈值分割')
bw1 = im2bw(I, graythresh(I));
subplot(2, 2, 4); imshow(bw1); title('ostu阈值分割')
