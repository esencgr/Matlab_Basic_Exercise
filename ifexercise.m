close all;
clear all;
clc;

color = input('Think of an animal. Please enter its color', 's');
h = input('Please enter its height in cm');
if strcmp(color, 'green')
if (h < 20)
disp('It''s a frog');
else
disp('It''s an aligator!');
end
elseif strcmp(color, 'gray')
if h < 100
disp('It''s a wombat!');
else
disp('It''s a bear!');
end
else
disp('I don''t know this animal');
end