
 
I = imread('1.jpg'); % ����ͼ��
BW = niblack(I, 80, -0.2); % ����niblack����
figure; 
subplot(121), imshow(I); 
subplot(122), imshow(BW);
