function n_fac = factorecusive(n)
if n <= 1
n_fac = 1;
return;
end
n_fac = n * factorecursive (n - 1);