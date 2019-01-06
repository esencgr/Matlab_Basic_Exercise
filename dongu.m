close all;
clear all;
clc;

for i=[5 13 -1]
   if (i > 10)
      disp([int2str(i) ' sayýsý 10dan büyük'])
   elseif i < 0
      disp([int2str(i) ' sayýsý negatif bir sayý'])
   else
      disp([int2str(i) ' sayýsý 0 ile 10 arasýnda'])
   end
end
disp('------------------------------------')

i = 10;
while i > 0
disp(1 : i);
i = i - 1;
end
disp('------------------------------------')

i = 1;
while i <= 10
disp(1 : i);
i = i + 1;
end
disp('------------------------------------')

for i = 1 : 6
disp(i)
if i > 3
break;
end
end
disp('------------------------------------')

for i = 1 : 6
if mod(i, 2) == 0
continue;
end
disp(i)
end


