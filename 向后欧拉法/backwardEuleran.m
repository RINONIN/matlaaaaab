%backwardEuler.mÎÄ¼þ    
function [x, y] = backwardEuleran(x0, y0, x1, h)
n = floor((x1 - x0)/h);
x = zeros(n + 1, 1);
y = zeros(n + 1, 1);
x(1) = x0;
y(1) = y0;
for i = 1 : n-1
    x(i + 1) = x(i) + h;
    y(i+1)-h*y(i+1)+2*h*x(i+1)/y(i+1) = y(i);
end

