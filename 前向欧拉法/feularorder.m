x0 = 0;                                          %时间起始
x1 = 1;                                         %时间终止
h = 0.1;                                         %时间间隔
y0 = 1;                                          %y起始值
[x, y] = forwardEuleran(x0, y0, x1, h);
hold on                                          %将多个图均显示出来
plot(x, y,'r','LineWidth', 2)
l = x0 : 0.1 : x1;
lu =(1+2*x).^(0.5);
plot(l, lu, 'g','LineWidth', 2)
legend('forwardEuler','Theroy')