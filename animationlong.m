x = 0 : 0.1 : 8*pi

phi = 0.0; plot(x, sin(x + phi));
mov(1) = getframe;

phi = 0.2; plot(x, sin(x + phi));
mov(2) = getframe;

phi = 0.4; plot(x, sin(x + phi));
mov(3) = getframe;

phi = 0.6; plot(x, sin(x + phi));
mov(4) = getframe;

phi = 0.8; plot(x, sin(x + phi));
mov(5) = getframe;

phi = 0.10; plot(x, sin(x + phi));
mov(6) = getframe;

phi = 0.12; plot(x, sin(x + phi));
mov(7) = getframe;

phi = 0.14; plot(x, sin(x + phi));
mov(8) = getframe;

phi = 0.16; plot(x, sin(x + phi));
mov(9) = getframe;

phi = 0.18; plot(x, sin(x + phi));
mov(10) = getframe;

phi = 3.2; plot(x, sin(x + phi));
mov(17) = getframe;

movie(mov, 30, 10);
movie2avi(mov, 'C:\sin_animation.avi');