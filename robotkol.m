ts=2;
teta10=-19*pi/180;
teta1ts=43*pi/180;
teta20=44*pi/180;
teta2ts=151*pi/180;
%a katsayıları için eşitlikler
 
T=[ts^5 ts^4 ts^3
    5*ts^4 4*ts^3 3*ts^2
    20*ts^3 12*ts^2 6*ts];
 
c=[teta1ts-teta10;0;0];
disp('teta1 hareketi icin katsayılar:')
a=T\c
%'b' katsayıları icin katsayılar
 
d=[teta2ts-teta20;0;0];
disp('teta2 hareketi icin katsayilar')
b=T\d
%hareket eşitlikleri
 
L1=4;L2=3;
t=linspace(0,2,401);
tq=[t.^5;t.^4;t.^3];
teta1=teta10+a'*tq;
teta2=teta20+b'*tq;
x=L1*cos(teta1)+L2*cos(teta1+teta2);
y=L1*sin(teta1)+L2*sin(teta1+teta2);
%robot el hareketinin cizimi
 
plot(x,y);xlabel('x');ylabel('y');title('robot kolunun rotasi');
text(4.3,0,'t=0s:(x,y)=(6.5,0)');
text(0.2,2,'t=2s:(x,y)=(0,2)')