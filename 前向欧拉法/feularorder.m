x0 = 0;                                          %ʱ����ʼ
x1 = 1;                                         %ʱ����ֹ
h = 0.1;                                         %ʱ����
y0 = 1;                                          %y��ʼֵ
[x, y] = forwardEuleran(x0, y0, x1, h);
hold on                                          %�����ͼ����ʾ����
plot(x, y,'r','LineWidth', 2)
l = x0 : 0.1 : x1;
lu =(1+2*x).^(0.5);
plot(l, lu, 'g','LineWidth', 2)
legend('forwardEuler','Theroy')