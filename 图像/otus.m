%I=im2double(imread('1.jpg'));
%k=graythresh(I);              %�õ�������ֵ
%J=im2bw(I,k);                  %ת���ɶ�ֵͼ��kΪ�ָ���ֵ
%subplot(121);imshow(I); 
%subplot(122);imshow(J); 

 
% ˫�巨��һ�ּ򵥵���ֵ�ָ����������Ҷȼ�ֱ��ͼ�������Ե�˫��״��
% ��ѡ˫��֮��Ĺȵ�����Ӧ�ĻҶȼ���Ϊ��ֵ�ָ

I = imread('55.jpg');
if ndims(I) == 3
I = rgb2gray(I);
end
fxy = imhist(I, 256); %ͳ��ÿ���Ҷ�ֵ�ĸ���
figure;
subplot(2, 2, 1); imshow(I, []); title('ԭͼ')
subplot(2, 2, 2); plot(fxy); %�����Ҷ�ֱ��ͼ
title('ֱ��ͼ')
p1 = {'Input Num:'}; p2 = {'180'};
p3 = inputdlg(p1,'Input Num:1~256',1,p2);
p = str2num(p3{1}); p = p/255;
bw = im2bw(I, p); %С����ֵ��Ϊ�ڣ�������ֵ��Ϊ��
subplot(2, 2, 3); imshow(bw); title('˫����ֵ�ָ�')
bw1 = im2bw(I, graythresh(I));
subplot(2, 2, 4); imshow(bw1); title('ostu��ֵ�ָ�')
