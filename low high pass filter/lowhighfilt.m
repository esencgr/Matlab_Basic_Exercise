a = 4;

RL=10000*a;
RH=1000*a;

CH=0.5*10^-6;
CL=0.5*10^-6;

Ro=2000;
Ri=1000;
R1=1000;
Rf=3000;

s = tf('s'); % s domaininde tan�mlamak i�in

Wcl= 1 / ( RL * CL ) % al�ak ge�irenin kesim frekans�
Wch= 1 / ( RH * CH ) % y�ksek ge�irenin kesim frekans�
Wo= sqrt(Wcl*Wch)   % Band ge�irenin kesim frekans�

%Al�ak Ge�iren Filtre - Transfer fonksiyonu
Hag=(-1*(1/(1+(s * Wcl * CL * RL))))

%Y�ksek Ge�iren Filtre - Transfer fonksiyonu
Hyg=( -1 * ((s * Wch * CH * RH ) /(1+(s * Wcl * CH * RH))))

%----------------------------------------
% band ge�iren
Hbg= (- Ro/Ri ) * Hag * Hyg

% band durduran
Hbd= (- Rf/R1 ) * ( Hag + Hyg )

% Bode diyagramlar�
figure(1);
bode(Hbd) % band durduran

figure(2);
bode(Hbg) % band ge�iren