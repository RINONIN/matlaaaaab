I = imread('1.jpg');
i=rgb2gray(I);
bW1 = edge(i,'roberts');
 %����Roberts���ӱ�Ե��⣬����ֵ����Ĭ��ֵ
bW2 = edge(i,'prewitt');
%����Prewitt���ӱ�Ե��⣬����ֵ����Ĭ��ֵ
bW3 = edge(i,'sobel');
%����Sobel���ӱ�Ե��⣬����ֵ����Ĭ��ֵ
bW4 = edge(i,'LoG');
subplot(221);imshow(bW1);
subplot(222);imshow(bW2);
subplot(223);imshow(bW3);
subplot(224);imshow(bW4);

