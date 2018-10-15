clear all
close all 
clc

xx = -3 : 0.2 : 3;
yy = -3 : 0.2 : 3;

[x, y] = meshgrid(xx, yy);

%z = 3*(1-x).^2.*exp(-(x.^2) - (y+1).^2)-10*(x/5 - x.^3 - y.^5).*exp(-x.^2-y.^2)- 1/3*exp(-(x+1).^2 - y.^2)
z= x.^2 + y.^2;
surf(x, y, z);
axis([-3 3 -3 3 -10 10])

for t = 1 : 1000
fac = sin(1/10 * t + pi/2);
surf(x, y, z * fac);
axis([-3 3 -3 3 -10 10])
view(t/2, t/2);
pause(0.1)
end

