clc;
clear; 
max =input('Enter the total number of elements: ');

n=zeros(1,max);

n(1)=1;

n(2)=1;

for i=3:max

n(i)=n(i)+n(i-1)+n(i-2)

end

% commadlot(n)