%forwardEuler.mнд╪Ч
function [x, y] = forwardEuleran(x0, y0, x1, h)
n = floor((x1 - x0)/h);
x = zeros(n + 1, 1);
y = zeros(n + 1, 1);
x(1) = x0;
y(1) = y0;
for i = 1 : n
    x(i + 1) = x(i) + h;
    y(i + 1) = y(i) + h * (y(i) - 2*x(i)/y(i));
end


