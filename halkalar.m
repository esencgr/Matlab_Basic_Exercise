x=1:3;
y=7:10;

[X,Y]=meshgrid(x,y)
A = 10;
imgSynth = sin(A*(X.^2 + Y.^2));
imshow(imgSynth)

%x = linspace(-pi, pi, 300)
%[X, Y] = meshgrid(x);
%A = 10;
%imgSynth = sin(A*(X.^2 + Y.^2));
%imshow(imgSynth)
