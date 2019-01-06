y = [0 1 5 2 3];
plot(y)
x = linspace(0,1,length(y));
plot(x, y);
axis([-0.5 1.5 -0.2 5.2]);

figure
x = pi*[-24:24]/24;
plot(x, sin(x))
xlabel('radyan')
ylabel('sin�s de�eri')
title('Sin�s Grafi�i')

subplot(1, 2, 1)
plot(x, sin(x))
axis square
title('Sin grafi�i')
subplot(1, 2, 2);
plot(x, cos(x));
axis square
title('Cos grafi�i')

figure
plot(x, sin(x), '-g');
hold on
plot(x, cos(x), '--r')
legend('sin', 'cos')
hold off

stem(x,sin(x), '--ro','LineWidth',2,...
'MarkerEdgeColor','k',...
'MarkerFaceColor','g',...
'MarkerSize',7)

title('Sin grafi�i')
