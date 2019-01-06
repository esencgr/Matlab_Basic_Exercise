% The function compares between two strings according to lexicographic order
% The function returns: 0 if the strings are identical; 1 if str1 > str2 and -1 if str1 < str2
function res = strlexcmp(str1, str2)
% get string lengths
n1 = length(str1);
n2 = length(str2);
n = min(n1, n2);
% find characters that differ
k = find(str1(1 : n) ~= str2( 1 : n));
if isempty(k) % if all characters are identical then compare lengths
res = sign(n1 - n2);
else % compare first character that is different
k = k(1);
res = sign(str1(k) - str2(k));% Ascii value, case sensitive
end
21