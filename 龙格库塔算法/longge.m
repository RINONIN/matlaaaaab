%常微分方程y' = (x - y)/2;x0 = 0;x1 = 3;y0 = 1;h = 0.25;
function [x, y] = longge(x0, x1, y0, h)
n = (x1 - x0) / h;
x = zeros(n + 1);
y = zeros(n + 1);
x(1) = x0;
y(1) = y0;
for i = 1:n
    x(i + 1) = x(i) + h;
    k1 = lgfun(x(i), y(i));
    k2 = lgfun(x(i) + 0.5*h, y(i) + k1*h/2);
    k3 = lgfun(x(i) + 0.5*h, y(i) + k2*h/2);
    k4 = lgfun(x(i)+ h, y(i) + k3*h);
    y(i + 1) = y(i) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
end
end

