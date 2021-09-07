I = imread('1.jpg');
i=rgb2gray(I);
bW1 = edge(i,'roberts');
 %进行Roberts算子边缘检测，门限值采用默认值
bW2 = edge(i,'prewitt');
%进行Prewitt算子边缘检测，门限值采用默认值
bW3 = edge(i,'sobel');
%进行Sobel算子边缘检测，门限值采用默认值
bW4 = edge(i,'LoG');
subplot(221);imshow(bW1);
subplot(222);imshow(bW2);
subplot(223);imshow(bW3);
subplot(224);imshow(bW4);

