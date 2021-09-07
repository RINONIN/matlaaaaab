function imageBW = niblack(image, n, k)
% 通过niblack算法对灰度图像image进行二值化，得到一幅二值图像。
% 编写时间：2018年4月2日21:52:31  编写人：
% 输入：
%     image: 灰度图像，灰度值范围0-255
%     n: 邻域的边长
%     k：修正系数
% 输出：
%     imageBW: 灰度图像image的二值图像
% 参考文献： 
%     Wayne Niblack. An Introduction to Digital Image Processing. pp: 115.
%     1986. Prentice/Hall International. ISBN: 013 480674 3
 
% 为方便理解下述代码，可假设image=[1 2 3; 4 5 6], n = 2，对代码过程进行分析
 
tic; % 开始计时
 
[Height, Width] = size(image); % 获得灰度图像的高和宽
image = padarray(image, [n, n], 'symmetric', 'both'); % 扩展图像矩阵
NewHeight = Height + 2 * n; 
NewWidth = Width + 2 * n;
temp = zeros(NewHeight, NewWidth); % 以新的高度和宽度建议一个零矩阵
for i = 1+n : Height+n
   for j = 1+n : Width+n
       upR = i - floor(n/2 - 1/2); % Row
       dnR = i + floor(n/2); 
       lfC = j - floor(n/2 - 1/2); % Column
       rtC = j + floor(n/2); 
       mean_all = mean(mean(image(upR:dnR, lfC:rtC)));
       % mean()用法：如果A是矢量，则mean(A)返回元素均值；如果A是矩阵，那么mean(A)返回每列均值的行向量
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
 
toc; % 结束计时
