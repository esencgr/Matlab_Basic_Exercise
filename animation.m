    
x = 0 : 0.1 : 8*pi
mov=zeros(1,17);
phi =0;
for i=1:1:17
  
plot(x, sin(x + phi));
mov(i) = getframe;

    phi=phi+0.2;
end    
phi=0.0;
movie(mov, 30, 10);
movie2avi(mov, 'D:\matlab\matlab örnekler\animation.avi');



%x = 0 : 0.1 : 8*pi
%phi = 0.0; plot(x, sin(x + phi));
%mov(1) = getframe;
%phi = 0.2; plot(x, sin(x + phi));
%mov(2) = getframe;
%phi = 0.4; plot(x, sin(x + phi));
%mov(3) = getframe;
%…
%phi = 3.2; plot(x, sin(x + phi));
%mov(17) = getframe;
%movie(mov, 30, 10);
%movie2avi(mov, 'C:\sin_animation.avi');