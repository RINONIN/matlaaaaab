i=imread( '1.jpg' ) ;%��ȡͼ��
a=rgb2gray(i); %��ͼ��ת���ɻҶ�ͼ��
BW1 = edge(a,'LoG' );
BW2 = edge(a,'LoG',0) ;%���жȷ�ֵȡ0
BW3 = edge(a,'LoG',0.005) ;%���жȷ�ֵȡ0.005
BW4 = edge(a,'LoG',0.01) ;%���жȷ�ֵȡ0.01.
BW5 = edge(a,'LoG',0.015) ;%���жȷ�ֵȡ0.015
figure;
subplot (2, 3, 1) ; imshow(i);title('ԭͼ��');
subplot (2, 3, 2) ; imshow (BW1);title(' log����thresh ΪĬ��');
subplot (2, 3, 3); imshow (BW2);title( 'log����thresh=0' );
subplot (2, 3, 4) ; imshow (BW3) ;title( 'log����thresh=0. 005' );
subplot (2, 3, 5) ; imshow(BW4) ;title( 'log����thresh=0. 01');
subplot (2, 3, 6) ; imshow (BW5) ;title(' log����thresh=0. 015' );

i=imread('1.jpg' ) ;%��ȡͼ��
a=rgb2gray (i) ;%��ͼ��ת���ɻҶ�ͼ��
BW1 = edge(a,'canny' );
BW2 = edge (a,'canny' , [0.001, 0.005]) ;%���жȷ�ֵȡ[0.001, 0.005]
BW3 = edge (a,'canny', [0.01, 0.05]) ;%���жȷ�ֵȡ[0.01, 0.05]
BW4 = edge (a,'canny' , [0.05, 0.1]) ;%���жȷ�ֵȡ[0.05, 0.1]
BW5 = edge (a,'canny' , [0.1, 0.99]) ;%���жȷ�ֵȡ[0.1, 0.99]
figure;
subplot (2, 3, 1) ; imshow(i);title('ԭͼ��');
subplot (2, 3, 2) ; imshow (BW1) ;title('canny����thresh ΪĬ��');
subplot (2, 3, 3) ; imshow (BW2) ;title('canny����thresh=[0.001, 0.005]');
subplot (2, 3, 4) ; imshow (BW3) ;title('canny����thresh=[0.01, 0.05]');
subplot (2, 3, 5) ; imshow (BW4) ;title('canny����thresh=[[0.05,0.1]');
subplot (2, 3, 6) ; imshow (BW5) ;title('canny����thresh=[0.1,0.99]');

i=imread( '1.jpg' ) ;%��ȡͼ��
a=rgb2gray (i) ;%��ͼ��ת���ɻҶ�ͼ��
BW1 = edge(a,'LoG' );
BW2 = edge(a,'canny' );
figure;
subplot (2, 2, 1) ; imshow(i);title('ԭͼ��');
subplot (2, 2, 3) ; imshow (BW1);title('Log����');
subplot (2, 2, 4) ; imshow (BW2) ;title(' Canny����');

