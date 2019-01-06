function printInventory(dogs)
disp('The following dogs are currently staying in the hotel: ')
for i_dog = 1 : size(dogs, 2)
disp(dogs(i_dog).name);
end
47