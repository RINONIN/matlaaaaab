I=imread('46.png');
T=zeros(15);
for i=0:14
    for j=0:14
        img = imcrop(I,[1+i*16 1+j*16 31 31]);%内核32*32，步长设置为16
        t=255*graythresh(img);%我这里直接用了
        T(j+1,i+1)=t;%这里注意坐标顺序反着
    end
end
T=uint8(T);
T1=imresize(T,[256 256],'bilinear');%看了下貌似双线性插值最好
%%
for i=1:256
    for j=1:256
        if (I(i,j)<T1(i,j))
            BW(i,j)=0;
        else
            BW(i,j)=1;
        end
    end
end
imshow(BW)