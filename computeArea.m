function area = computeArea(shape, r)
if r < 0
area = [];
if strcmp(shape, 'square')
disp('A square should have a positive side!');
elseif strcmp(shape, 'circle')
disp('A circle should have a positive radius!');
end
else
if strcmp(shape, 'square')
area = r ^ 2
elseif strcmp(shape, 'circle')
area = pi * r ^ 2
end
end