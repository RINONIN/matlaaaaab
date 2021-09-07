clear;
f=rgb2gray(imread('1.jpg'));
T=20;%阈值
[m,n]=size(f);
%------梯度法-------
f_g=zeros(m,n);
for i=2:m-1
    for j=2:n-1
        f_g(i,j)=abs(f(i+1,j)-f(i,j))+abs(f(i,j+1)-f(i,j));
        if f_g(i,j)<T
            f_g(i,j)=0;
        else
            f_g(i,j)=255;
        end
    end
end
figure(1);
subplot(2,3,1);imshow(uint8(f_g));title('梯度法');
 
%------roberts算子-------
f_r=zeros(m,n);
for i=2:m-1
    for j=2:n-1
        f_r(i,j)=abs(f(i+1,j+1)-f(i,j))+abs(f(i,j+1)-f(i+1,j));
        if f_r(i,j)<T
            f_r(i,j)=0;
        else
            f_r(i,j)=255;
        end
    end
end
%f_r=imbinarize(imfilter(f,r),T);
subplot(2,3,2);imshow(uint8(f_r));title('Roberts算子');
 
%------prewitt算子-------
f_p=zeros(m,n);
for i=2:m-1
    for j=2:n-1
        f_p(i,j)=abs(f(i-1,j-1)+f(i,j-1)+f(i+1,j-1)-f(i-1,j+1)-f(i,j+1)-f(i+1,j+1))+abs(f(i+1,j-1)+f(i+1,j)+f(i+1,j+1)-f(i-1,j-1)-f(i-1,j)-f(i-1,j+1));
        if f_p(i,j)<15
            f_p(i,j)=0;
        else
            f_p(i,j)=255;
        end
    end
end
subplot(2,3,3);imshow(uint8(f_p));title('Prewitt算子');
 
%------sobel算子-------
f_s=zeros(m,n);
for i=2:m-1
    for j=2:n-1
        f_s(i,j)=abs(f(i-1,j-1)+2*f(i,j-1)+f(i+1,j-1)-f(i-1,j+1)-2*f(i,j+1)-f(i+1,j+1))+abs(f(i+1,j-1)+2*f(i+1,j)+f(i+1,j+1)-f(i-1,j-1)-2*f(i-1,j)-f(i-1,j+1));
        if f_s(i,j)<T
            f_s(i,j)=0;
        else
            f_s(i,j)=255;
        end
    end
end
subplot(2,3,4);imshow(uint8(f_s));title('Sobel算子');
 
%------krisch算子-------
k(:,:,1)=[-3,-3,-3;
    -3,0,5;
    -3,5,5];
k(:,:,2)=[-3,-3,5;
    -3,0,5;
    -3,-3,5];
k(:,:,3)=[-3,5,5;
    -3,0,5;
    -3,-3,-3];
k(:,:,4)=[-3,-3,-3;
    -3,0,-3;
    5,5,5];
k(:,:,5)=[5,5,5;
    -3,0,-3;
    -3,-3,-3];
k(:,:,6)=[-3,-3,-3;
    5,0,-3;
    5,5,-3];
k(:,:,7)=[5,-3,-3;
    5,0,-3;
    5,-3,-3];
k(:,:,8)=[5,5,-3;
    5,0,-3;
    -3,-3,-3];
kk=zeros(size(f));
I=double(f);
for i=1:8
    f_k(:,:,i)=conv2(I,k(:,:,i),'same');
    kk=max(kk,f_k(:,:,i));
end
f_kk=imbinarize(kk,600);
subplot(2,3,5);imshow(f_kk);title('Krisch算子');
 
%------LoG算子-------
log1=[0 0 -1 0 0;
    0 -1 -2 -1 0;
    -1 -2 16 -2 -1;
    0 -1 -2 -1 0;
    0 0 -1 0 0];
 
f_l=conv2(f,log1,'same');
f_ll=imbinarize(abs(f_l),300);
subplot(2,3,6);imshow(f_ll);title('LoG算子');
