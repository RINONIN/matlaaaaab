y=dsolve('D2y+2*Dy+2*y=0','y(0)=1','Dy(0)=0','x')
[x1 x2]=dsolve('Dx=y','Dy=-x','x(0)=0','y(0)=1')
f=dsolve('D2y=-a^2*y','y(0)=1','Dy(pi/a)=0')
g1='sin(x)+y^2+ln(z)-7=0'; 
g2='3*x+2^y-z^3+1=0';g3= 'x+y+z-5=0';[x1,y1,z1]=solve(g1,g2,g3,'x,y,z')