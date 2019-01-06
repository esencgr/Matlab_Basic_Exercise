close all;
clear all;
clc;

subplot(2, 2, 1)
x = -2 : 0.2 : 2;
y = x .*x;
bar(x,y, 'r');
title('Bar plot')

subplot(2, 2, 2);
norm_rand_values = randn(1, 1000);
hist(norm_rand_values, 20);
title('Histogram plot');

subplot(2, 2, 3);
pie3([3 2 1 5],[0 0 0 1],{'Bibi','Barak','Liberman','Donald Duck'})
title('Pie plot');
subplot(2, 2, 4);

x1 = randn(1, 100);
x2 = rand(1, 100) + 2;
x3 = rand(1, 100) + 3;
y1 = randn(1, 100);
y2 = randn(1, 100);
y3 = randn(1, 100) * 2;
z = [repmat([1 0 0], 100, 1); ...
repmat([0 1 0], 100, 1); repmat([0 0 1], 100, 1)];
scatter([x1 x2 x3], [y1 y2 y3], 10, z);
title('Scatter plot');
%repmat =replicate matrix z is a [300x3] matrix for indicating color