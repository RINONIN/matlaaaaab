R=imread( '1.jpg' );
G=rgb2gray(R) ; 
%转成灰度图像
J=double (G) ;
%数据类型转换成双精度
H=(log(J+1))/10;
%进行基于常用对数的非线性灰度变换
set (0,'defaultFigurePosition' , [100, 100, 1000, 500]) ;%修改图形图像位置的默认设置
set (0,'defaultFigureColor', [1 1 1])%修改图形背景颜色的设置
subplot (121), imshow(G) ;%显示图像
subplot (122), imshow(H) ;
