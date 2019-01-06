function z = merge(x,y)

n = length(x); 
m = length(y); 
z = zeros(1,n+m);

ix = 1; % The index of the next x-value to select.
iy = 1; % The index of the next y-value to select.

     for iz = 1 : (n+m)
         % Deteremine the iz-th value for the merged array...
           if ix > n
              % All done with x-values. Select the next y-value.
              z(iz) = y(iy); 
              iy = iy+1;
           elseif iy > m
              % All done with y-values. Select the next x-value.
              z(iz) = x(ix); 
              ix = ix + 1;
           elseif x(ix) <= y(iy)
              % The next x-value is less than or equal to the next y-value
              z(iz) = x(ix); 
              ix = ix + 1;
           else
              % The next y-value is less than the next x-value
              z(iz) = y(iy); 
              iy = iy + 1;
           end
     end