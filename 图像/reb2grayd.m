I=imread('1.jpg');
X=rgb2gray(I)
figure
subplot(121)
imshow(I)
subplot(122)
imshow(X)

%Ë÷ÒýÍ¼Ïñ
%I=imread('1.jpg');
%[a,map1]=rgb2ind(I,64);
%[b,map2]=rgb2ind(I,0.2);
%map3=colorcube(64);
%c=rgb2ind(I,map3);
%subplot(131);imshow(a,map1);
%subplot(132);imshow(b,map2);
%subplot(133);imshow(c,map3);


