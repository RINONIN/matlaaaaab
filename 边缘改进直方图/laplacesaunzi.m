%
src=imread('1.jpg');
figure;imshow(src);title('ԭͼ��');%��ʾԭͼ��
%%
%
f = tofloat(src);
imhist(f) 		% ͼ��ֱ��ͼ
hf = imhist(f);
[Tf SMf] = graythresh(f);
gf = im2bw(f, Tf);
figure, imshow(gf) 	% ��ʾ��ֵͼ��.
%%
w = [-1 -1 -1; -1 8 -1; -1 -1 -1];
lap = abs(imfilter(f, w, 'replicate'));
lap = lap/max(lap(:));
h = imhist(lap);
Q = percentile2i(h, 0.5);
markerImage = lap > Q;
fp = f.*markerImage;
figure, imshow(fp) %?
hp = imhist(fp);
hp(1) = 0;
figure, bar(hp, 0) %?
T = otsuthresh(hp);
g = im2bw(f, T);
figure, imshow(g) %?
