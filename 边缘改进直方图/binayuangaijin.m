%����ȫ����ֵ
src=imread('45.png');
figure;imshow(src);title('ԭͼ��');%��ʾԭͼ��
figure;imhist(src);
%�Զ�ѡ����ֵ
T1=graythresh(src);
BW1=im2bw(src,T1);%Otus��ֵ���зָ�
figure;imshow(BW1),title('Otus��ֵ���зָ�ԭʼ');
%%
%�����ݶ�
f = tofloat(src);
sx = fspecial('sobel');
sy = sx';
gx = imfilter(f,sx,'replicate');
gy = imfilter(f,sy,'replicate');
grad = sqrt(gx.*gx + gy.*gy);
%[gx,gy]=gradient(f);
%grad=grad/max(grad(:));
figure,imshow(grad);
%%
%�õ�grad ��ֱ��ͼ����ʹ�øߵİٷֱ�(99.9%)�����ݶȵ���ֵ
h=imhist(grad);
z=sort(h,'descend');
k=round((size(z,1)/5));

for i=1:5
    hh(i)=k*i;
    i=i+1;
end
q1=find(h>=z(hh(1)));
q2=find(h>=z(hh(2))&h<z(hh(1)));
q3=find(h>=z(hh(3))&h<z(hh(2)));
q4=find(h>=z(hh(4))&h<z(hh(3)));
q5=find(h>=z(hh(5))&h<z(hh(4)));

l(1)=size(q1,1);
l(2)=size(q2,1);
l(3)=size(q3,1);
l(4)=size(q4,1);
l(5)=size(q5,1);
for j=1:min(l)
qq1(q1(j))=(h(q1(j)));
qq2(q2(j))=(h(q2(j)));
qq3(q3(j))=(h(q3(j)));
qq4(q4(j))=(h(q4(j)));
qq5(q5(j))=(h(q5(j)));
j=j+1
end

s(1)=sum(qq1);
s(2)=sum(qq2);
s(3)=sum(qq3);
s(4)=sum(qq4);
s(5)=sum(qq5);
ss=(s(1)/s(1)+s(2)/s(1)+s(3)/s(1)+s(4)/s(1)+s(5)/s(1))/5;
Q1 = percentile2i(qq1,s(1)/s(1));%p1=qq1.*Q1;subplot(151);imhist(p1);
Q2 = percentile2i(qq2,s(2)/s(1));%p2=qq2.*Q2;subplot(152);imshow(p2);
Q3 = percentile2i(qq3,s(3)/s(1));%p3=qq3.*Q3;subplot(153);imshow(p3);
Q4 = percentile2i(qq4,s(4)/s(1));%p4=qq4.*Q4;subplot(154);imshow(p4);
Q5 = percentile2i(qq5,s(5)/s(1));%p5=qq5.*Q5;subplot(155);imshow(p5);
Q=(Q1+Q2+Q3+Q4+Q5)/5;
%%
%��Q ���ݶ�����ֵ�����γɱ��ͼ�񣬲��Ҵ�f ����ȡ�ݶ�ֵ��Q��ĵ㣬�õ������ֱ��ͼ��
markerImage=grad>Q;
figure,imshow(double(markerImage));
fp=f.*markerImage;
figure;imshow(fp);
figure;imhist(fp);
hp = histeq(fp);
%%
%�ý����ֱ��ͼ�õ�Otsu ��ֵ
T = graythresh(hp);
g = im2bw(f,T);
figure, imshow(g);title('Otus��ֵ���зָ�')