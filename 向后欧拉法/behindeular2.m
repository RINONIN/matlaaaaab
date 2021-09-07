function result = behindeular2(y0, x1, y1, h)

    acc = -6;
    now = 0.0;
    z1 = y1;

    while now >= -6

        z0 = z1;
        f0 = z0 - 2*x1/z0;
        z1 = y0 + h*f0;
        now = log10(abs(z1-z0));

    end
    result = z1;
end
