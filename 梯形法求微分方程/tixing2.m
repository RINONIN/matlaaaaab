function result =tixing2(y0, x1, y1, h, f0)

    acc = -6;
    now = 0.0;
    z1 = y1;

    while now >= acc

        z0 = z1;
        f1 = z0 - 2*x1/z0;
        z1 = y0 + h/2*(f0+f1);
        now = log10(abs(z1-z0));
    end

    result = z1;
end
clear;
format long;
a = 0;
b = 1;
h = 0.1;
d = 1;
res = tixing1(a, b, h, d);
x = res(1,:);
y = res(2,:);
z = [1, 1.0954, 1.1832, 1.2649, 1.3416, 1.4142, 1.4832, 1.5492, 1.6125, 1.6733, 1.7321];
y(2,:) = z;
plot(x, y);