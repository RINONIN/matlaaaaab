%����ȫ����ֵ
f=imread('line8.bmp');
figure;imshow(f);title('ԭͼ��');	%��ʾԭͼ��
%%
%ȫ����ֵ�ָ�
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
disp('count��ֵΪ��');
disp(['count=',num2str(count)]) %��ӡ���count��ֵ
disp('T��ֵΪ��');
disp(['T=',num2str(T)])  %��ӡ���T��ֵ
g=im2bw(f,T/255);
figure;subplot(2,2,1);imshow(f);title('ԭͼ��');
subplot(2,2,2);imhist(f);title('fֱ��ͼ');
subplot(2,2,3);imshow(g);title('��ֵ��ͼ��');
