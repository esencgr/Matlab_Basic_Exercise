x = 10 : -1 : 1;
y = x([3,9,4])

x = 10 : -1 : 1;
y1 = x(2 : 2 : 8)


x = 10 : -1 : 1;
y2 = x(end)


x = 10 : -1 : 1;
z = x(end - 1)


str = 'If I was a rich man, Yaba dibi dibi ... dibi dibi di';
str2 = str([1 : 10, 21: 25])

k = 10 : -1 : 1;
k(14) = 99

x1 = [1; 2; 3; 4; 5];
disp(x1);

x2 = [1, 2, 3, 4, 5]; 
g = x2';
disp(g)

c = 1 : 0.1 : 2;
round(c)
c = 1 : 0.1 : 2;
ceil(c)
abs(floor(-0.3 : 0.1 : 0.3))

x = ceil(rand(4,4)*38)-2
x1=x(3,4)
x2=x(2 : 3, 3 : 4)
x3=x(1 : 3, 4)
x4=x(3,:)
x5=x(:, :)
x6=x(:, 1:2)

%x = [1 2 3 4
%    5 6 7 8]
%same 
%x = [1 2 3 4; 5 6 7 8]


x = [1 2 3
     4 5 6
     7 8 9];
z1= [x(:, 1); x(:, 2); x(:, 3)]
z2=x(:)
