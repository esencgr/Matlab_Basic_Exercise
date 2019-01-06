close all;
clear all;
clc;

%x = 0 : 0.1 : 2;
%x = x * pi;
%y = sin(x);
%plot(x, y);

%Group #1
w_pre1 = [ 148 153 170 159 162]; %weight in previous month
w_cur1 = [ 90 85 92 91 88 ]; %weight in current month
%Group #2
w_pre2 = [157 172 179 167 179]; %weight in previous month
w_cur2 = [81 69 87 70 77 ]; %weight in current month

%Plotting the previous vs. current week weights of each contestant
%plot(w_pre1(1), w_cur1 (1),'bo', w_pre1(2), w_cur1 (2), 'bo', ...
%w_pre1(3), w_cur1 (3), 'bo', w_pre1(4), w_cur1 (4), 'bo', ...
%w_pre1(5), w_cur1 (5), 'bo', ...
%w_pre2(1), w_cur2 (1),'r*', w_pre2(2), w_cur2 (2), 'r*', ...
%w_pre2(3), w_cur2 (3), 'r*', w_pre2(4), w_cur2 (4), 'r*', ...
%w_pre2(5), w_cur2 (5), 'r*');

figure 
plot(w_pre1, w_cur1, 'bo');
hold on
plot(w_pre2, w_cur2, 'r+');
hold off
xlabel('Previous month weight(kg)');
ylabel('Current month weight(kg)');
title('Weight contest, group 1 vs. group 2');
axis([60, 180, 60, 180]);

figure 
x = 0 : 2 * pi;
y = sin(x);
plot(x, y,'ro');
figure 
x = 0 : 0.01 :2 * pi;
y = sin(x);
plot(x, y, 'r:')

figure 

x = 0 : 0.1 : 4*pi
y_sin1 = sin(x);
y_sin2 = sin(x + 0.2);
y_sin3 = sin(2 * x);
plot(x, y_sin1);
hold on
plot(x, y_sin2, 'r');
plot(x, y_sin3, 'm--');
legend('sin(x)', 'sin(x + 0.2)', 'sin(2x)');
hold off

figure
x = -2 : 0.2 : 2; y = x .* x;
bar(x, y, 'r');
title('Bar plot')

figure 
norm_rand_values = randn(1, 1000);
hist(norm_rand_values, 20);
title('Histogram plot')

figure 


x1 = randn(1, 100);
y1 = randn(1, 100);
scatter(x1, y1, 25, [1 0 0], 'filled');%25=size of each point, [1 0 0]=color
hold on
x2 = rand(1, 100) + 2;
y2 = randn(1, 100);
scatter(x2, y2, 25, [0 1 0] , 'filled');
x3 = rand(1, 100) + 3;
y3 = randn(1, 100) * 2;
scatter(x3, y3, 25, [0 0 1], 'filled');
title('Scatter plot');
hold off

