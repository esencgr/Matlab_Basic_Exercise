
while 1
dice = ceil(6 * rand(1));
disp(dice);
if prev == 6 && dice == 6
break;
end
prev = dice;
end