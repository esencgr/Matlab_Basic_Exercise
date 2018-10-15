function [dogs, bill] = checkOut(dogs, dog_name)
names = {dogs.name};
index = find(strcmp(names, dog_name));
bill = 0;
if isempty(index)
message = ['There is no dog in our hotel named ', dog_name];
disp(message); return;
end
%Computing the bill
d = dogs(index);
bill = 100 * d.days_in_hotel; %100$ per day
if strcmp(d.breed, 'pitbull')
bill = bill * 1.2;
end
if ~strcmp(d.breed, 'None')
bill = bill * 2;
end
%Erasing the dog
dogs(index) = []; %erasing the dog