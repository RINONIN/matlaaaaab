I=imread('46.png');
T=zeros(15);
for i=0:14
    for j=0:14
        img = imcrop(I,[1+i*16 1+j*16 31 31]);%�ں�32*32����������Ϊ16
        t=255*graythresh(img);%������ֱ������
        T(j+1,i+1)=t;%����ע������˳����
    end
end
T=uint8(T);
T1=imresize(T,[256 256],'bilinear');%������ò��˫���Բ�ֵ���
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