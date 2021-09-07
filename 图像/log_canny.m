i=imread( '1.jpg' ) ;%读取图像
a=rgb2gray(i); %将图像转换成灰度图像
BW1 = edge(a,'LoG' );
BW2 = edge(a,'LoG',0) ;%敏感度阀值取0
BW3 = edge(a,'LoG',0.005) ;%敏感度阀值取0.005
BW4 = edge(a,'LoG',0.01) ;%敏感度阀值取0.01.
BW5 = edge(a,'LoG',0.015) ;%敏感度阀值取0.015
figure;
subplot (2, 3, 1) ; imshow(i);title('原图像');
subplot (2, 3, 2) ; imshow (BW1);title(' log算子thresh 为默认');
subplot (2, 3, 3); imshow (BW2);title( 'log算子thresh=0' );
subplot (2, 3, 4) ; imshow (BW3) ;title( 'log算子thresh=0. 005' );
subplot (2, 3, 5) ; imshow(BW4) ;title( 'log算子thresh=0. 01');
subplot (2, 3, 6) ; imshow (BW5) ;title(' log算子thresh=0. 015' );

i=imread('1.jpg' ) ;%读取图像
a=rgb2gray (i) ;%将图像转换成灰度图像
BW1 = edge(a,'canny' );
BW2 = edge (a,'canny' , [0.001, 0.005]) ;%敏感度阀值取[0.001, 0.005]
BW3 = edge (a,'canny', [0.01, 0.05]) ;%敏感度阀值取[0.01, 0.05]
BW4 = edge (a,'canny' , [0.05, 0.1]) ;%敏感度阀值取[0.05, 0.1]
BW5 = edge (a,'canny' , [0.1, 0.99]) ;%敏感度阀值取[0.1, 0.99]
figure;
subplot (2, 3, 1) ; imshow(i);title('原图像');
subplot (2, 3, 2) ; imshow (BW1) ;title('canny算子thresh 为默认');
subplot (2, 3, 3) ; imshow (BW2) ;title('canny算子thresh=[0.001, 0.005]');
subplot (2, 3, 4) ; imshow (BW3) ;title('canny算子thresh=[0.01, 0.05]');
subplot (2, 3, 5) ; imshow (BW4) ;title('canny算子thresh=[[0.05,0.1]');
subplot (2, 3, 6) ; imshow (BW5) ;title('canny算子thresh=[0.1,0.99]');

i=imread( '1.jpg' ) ;%读取图像
a=rgb2gray (i) ;%将图像转换成灰度图像
BW1 = edge(a,'LoG' );
BW2 = edge(a,'canny' );
figure;
subplot (2, 2, 1) ; imshow(i);title('原图像');
subplot (2, 2, 3) ; imshow (BW1);title('Log算子');
subplot (2, 2, 4) ; imshow (BW2) ;title(' Canny算子');

