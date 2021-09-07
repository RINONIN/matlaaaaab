
 
I = imread('1.jpg'); % 读入图像
BW = niblack(I, 80, -0.2); % 调用niblack函数
figure; 
subplot(121), imshow(I); 
subplot(122), imshow(BW);
