%计算全局阈值
f=imread('line8.bmp');
figure;imshow(f);title('原图像');	%显示原图像
%%
%全局阈值分割
count=0;
T=mean2(f);
done=false;
while ~done
count=count+1;
g=f>T;
Tnext=0.5*(mean(f(g))+mean(f(~g)));
done=abs(T-Tnext)<0.5;
T=Tnext;
end
disp('count的值为：');
disp(['count=',num2str(count)]) %打印输出count的值
disp('T的值为：');
disp(['T=',num2str(T)])  %打印输出T的值
g=im2bw(f,T/255);
figure;subplot(2,2,1);imshow(f);title('原图像');
subplot(2,2,2);imhist(f);title('f直方图');
subplot(2,2,3);imshow(g);title('阈值后图像');
