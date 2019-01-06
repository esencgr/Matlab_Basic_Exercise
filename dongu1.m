m = 6; n = 3;
A = ones(m, n)
v = 2 * rand(1, n)

A = ones(m, n) - repmat(v, m, 1)

for i=1:m
   A(i,:) = A(i,:) - v;
end


res = 1;
n=input ('faktöriyeli hesaplanacak sayý=');

while n > 1
res = res * n;
n = n - 1;
end
disp(res);

str = 'Daaa aVaianacaia aCaoadaea';
i_source = 1;
i_target = 1;
while i_source < length(str)
new_str(i_target) = str(i_source);   % TEK SATIRDA///// disp(str(1 : 2 : end))
i_source = i_source + 2;
i_target = i_target + 1;
end
disp(new_str);

