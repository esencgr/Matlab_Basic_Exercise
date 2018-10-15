% The function receives a vector x of numbers.
% It returns y consisting of the values in x sorted from smallest to largest.
function y = mergeSort(x)
n = length(x);
if n == 1
y = x;
else
m = floor(n/2);
% Sort the first half
y1 = mergeSort(x(1 : m))
% Sort the second half
y2 = mergeSort(x(m+1 : n))
% Merge the two halves
y = merge(y1,y2)
end