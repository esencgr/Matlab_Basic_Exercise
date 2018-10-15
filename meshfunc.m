
close all;
clear all,
clc;

xx = -3 : 1 : 3
yy = -3 : 1 : 3
[x, y] = meshgrid(xx, yy)
z = 5 * sin(pi / 15 * x .* y).^2+10 * exp( -(x.^2 + y.^2)) + 1

figure;
mesh(x, y, z);
xlabel('x'); ylabel('y'); zlabel('z');

figure;
surf(x, y, z);
xlabel('x'); ylabel('y'); zlabel('z');
view(30,50);

figure;
surf(x, y, z, 'EdgeColor', 'none');
xlabel('x'); ylabel('y'); zlabel('z');
view(30, 50);
camlight headlight
lighting phong

xx = -3 : 0.01 : 3;
yy = -3 : 0.01 : 3;
[x, y] = meshgrid(xx, yy);
z = 5 * sin(pi / 15 * x .* y).^2 + 10 * exp( -(x.^2 + y.^2)) + 1;
figure
surf(x, y, z, 'EdgeColor', 'none');
xlabel('x'); ylabel('y'); zlabel('z');
view(30, 50);
camlight headlight
lighting phong

surf(x, y, z, 'EdgeColor', 'none', 'FaceColor', 'red');
xlabel('x'); ylabel('y'); zlabel('z');
hold on;
z2 = x.^2 + y.^2 + 2;
surf(x, y, z2, 'EdgeColor', 'none','FaceColor', 'yellow', 'FaceAlpha', 0.7);
view(30, 40);
camlight headlight
lighting phong