a = 4;

RL=10000*a;
RH=1000*a;

CH=0.5*10^-6;
CL=0.5*10^-6;

Ro=2000;
Ri=1000;
R1=1000;
Rf=3000;

s = tf('s'); % s domaininde tanýmlamak için

Wcl= 1 / ( RL * CL ) % alçak geçirenin kesim frekansý
Wch= 1 / ( RH * CH ) % yüksek geçirenin kesim frekansý
Wo= sqrt(Wcl*Wch)   % Band geçirenin kesim frekansý

%Alçak Geçiren Filtre - Transfer fonksiyonu
Hag=(-1*(1/(1+(s * Wcl * CL * RL))))

%Yüksek Geçiren Filtre - Transfer fonksiyonu
Hyg=( -1 * ((s * Wch * CH * RH ) /(1+(s * Wcl * CH * RH))))

%----------------------------------------
% band geçiren
Hbg= (- Ro/Ri ) * Hag * Hyg

% band durduran
Hbd= (- Rf/R1 ) * ( Hag + Hyg )

% Bode diyagramlarý
figure(1);
bode(Hbd) % band durduran

figure(2);
bode(Hbg) % band geçiren