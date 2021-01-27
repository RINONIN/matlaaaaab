input=imread('girl.jpg' ) ;%读取图像
figure,imshow(input);title('原始图像');
im=rgb2gray (input) ;%将图像转换成灰度图像
BW1 = edge(im,'canny');%canny边缘检测
figure,imshow(BW1),title('canny边缘检测');

f=tofloat(im);%将像素灰度值转换为float型
%figure,imshow(f)
u=size(f);
c=f.*BW1;%进行逐行扫描搜寻每个边缘点的灰度范围
for j=2:u(2)-1
    for i=2:u(1)-1
    h(i,j)=max(max(c(i-1:i+1,j-1:j+1)));
    q(i,j)=min(max(c(i-1:i+1,j-1:j+1)));
    i=i+1;
    end
    j=j+1;
end
a=peak(h);
b=peak(q);
T2=min(a,b);%获取可视灰度直方图的峰值
BW2=im2bw(f,T2);%以T2为最优阈值对图像进行二值化分割
figure;imshow(BW2),title('可视直方图全局阈值方法');
%otsu方法
T1=graythresh(im);
BW3=im2bw(im,T1);%Otsu阈值进行分割
figure;imshow(BW3),title('Otsu方法');



