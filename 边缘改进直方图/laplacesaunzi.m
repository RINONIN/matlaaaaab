%
src=imread('1.jpg');
figure;imshow(src);title('Ô­Í¼Ïñ');%ÏÔÊ¾Ô­Í¼Ïñ
%%
%
f = tofloat(src);
imhist(f) 		% Í¼ÏñÖ±·½Í¼
hf = imhist(f);
[Tf SMf] = graythresh(f);
gf = im2bw(f, Tf);
figure, imshow(gf) 	% ÏÔÊ¾ãÐÖµÍ¼Ïñ.
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
