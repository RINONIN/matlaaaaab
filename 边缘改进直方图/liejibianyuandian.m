input=imread('girl.jpg' ) ;%��ȡͼ��
figure,imshow(input);title('ԭʼͼ��');
im=rgb2gray (input) ;%��ͼ��ת���ɻҶ�ͼ��
BW1 = edge(im,'canny');%canny��Ե���
figure,imshow(BW1),title('canny��Ե���');

f=tofloat(im);%�����ػҶ�ֵת��Ϊfloat��
%figure,imshow(f)
u=size(f);
c=f.*BW1;%��������ɨ����Ѱÿ����Ե��ĻҶȷ�Χ
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
T2=min(a,b);%��ȡ���ӻҶ�ֱ��ͼ�ķ�ֵ
BW2=im2bw(f,T2);%��T2Ϊ������ֵ��ͼ����ж�ֵ���ָ�
figure;imshow(BW2),title('����ֱ��ͼȫ����ֵ����');
%otsu����
T1=graythresh(im);
BW3=im2bw(im,T1);%Otsu��ֵ���зָ�
figure;imshow(BW3),title('Otsu����');



