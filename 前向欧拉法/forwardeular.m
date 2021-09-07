%前向欧拉法求解常微分方程初值问题 y’=y-2x/y，y(0)=1，计算区间为[0, 1]，步长为 0.1。
function result = forwardeular(a, b, h, y)
    n = (b-a)/h;
    x0 = a;
    x1 = a;
    y0 = y;
    result(1,1) = x0;
    result(2,1) = y0;

    for m = 0:n-1
        x1 = x1 + h;
        f0 = y0 - 2*x0/y0;
        y1 = y0 + h*f0;
        x0 = x1;
        y0 = y1;
        result(1, m+2) = x0;
        result(2, m+2) = y0;

    end
end