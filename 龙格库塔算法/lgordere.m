x0 = 0;
x1 = 3;
y0 = 1;
h = 0.25;
[x, y] = longge(x0, x1, y0, h);
[p, q] = ode45('lgfun', [0, 3], y0);
hold on
plot(p, q, 'r');
plot(x, y, 'b.');
