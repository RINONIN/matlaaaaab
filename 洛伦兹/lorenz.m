function dx= lorenz(t,x)
dx=[-10*(x(1)-x(2));28* x(1)-x(2)-x(1)*x(3);x(1)* x(2)-8/3 * x(3)];
end

