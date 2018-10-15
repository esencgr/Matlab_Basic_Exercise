close all
clear all
clc

index = input('Please enter a Fibonacci series index number: ');
if index < 0
vec = [];
elseif index == 0
vec = [1];
else
vec = [1 1];
prev = 1; curr = 1;
for i = 2 : index
next = curr + prev;
prev = curr;
curr = next;
vec = [vec, next];
end
end
disp(vec);