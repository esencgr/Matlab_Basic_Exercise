function n_fac = facto (n)
if n <= 1
n_fac = 1;
return;
end
n_fac = n * facto (n - 1);