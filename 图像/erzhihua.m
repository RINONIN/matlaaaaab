I=imread('3.png');
%I=rgb2gray(M)
BW1=im2bw(I,0.4);
BW2=im2bw(I,0.6);
subplot(131);imshow(I)
subplot(132);imshow(BW1)
subplot(133);imshow(BW2)

