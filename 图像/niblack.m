function imageBW = niblack(image, n, k)
% ͨ��niblack�㷨�ԻҶ�ͼ��image���ж�ֵ�����õ�һ����ֵͼ��
% ��дʱ�䣺2018��4��2��21:52:31  ��д�ˣ�
% ���룺
%     image: �Ҷ�ͼ�񣬻Ҷ�ֵ��Χ0-255
%     n: ����ı߳�
%     k������ϵ��
% �����
%     imageBW: �Ҷ�ͼ��image�Ķ�ֵͼ��
% �ο����ף� 
%     Wayne Niblack. An Introduction to Digital Image Processing. pp: 115.
%     1986. Prentice/Hall International. ISBN: 013 480674 3
 
% Ϊ��������������룬�ɼ���image=[1 2 3; 4 5 6], n = 2���Դ�����̽��з���
 
tic; % ��ʼ��ʱ
 
[Height, Width] = size(image); % ��ûҶ�ͼ��ĸߺͿ�
image = padarray(image, [n, n], 'symmetric', 'both'); % ��չͼ�����
NewHeight = Height + 2 * n; 
NewWidth = Width + 2 * n;
temp = zeros(NewHeight, NewWidth); % ���µĸ߶ȺͿ�Ƚ���һ�������
for i = 1+n : Height+n
   for j = 1+n : Width+n
       upR = i - floor(n/2 - 1/2); % Row
       dnR = i + floor(n/2); 
       lfC = j - floor(n/2 - 1/2); % Column
       rtC = j + floor(n/2); 
       mean_all = mean(mean(image(upR:dnR, lfC:rtC)));
       % mean()�÷������A��ʸ������mean(A)����Ԫ�ؾ�ֵ�����A�Ǿ�����ômean(A)����ÿ�о�ֵ��������
       sigma_squared = double(image(upR:dnR, lfC:rtC)) - mean_all; 
       sigma_squared = mean(mean(sigma_squared .^ 2)); 
       sigma = sqrt(sigma_squared); 
       T = mean_all + k * sigma; % T=k*s(x,y)+m(x,y)
       if double(image(i,j)) > T
           temp(i,j) = 1;
       else
           temp(i,j) = 0; 
       end 
   end
end
imageBW = temp(1+n : Height+n, 1+n : Width+n);
 
toc; % ������ʱ
