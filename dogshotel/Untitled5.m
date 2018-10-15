
function dogs = dogHotel ()
disp('Generating a structure for storing dog hotel information');
dogs = [];
while(1)
choice = input('*** Press I for dog check-In, O for dog Check-Out and Q to quit: ', 's');
if choice == 'I'
dogs = checkIn(dogs);
elseif choice == 'O'
dog_name = input('Enter the name of the dog you wish to check-out: ', 's');
[dogs, bill] = checkOut(dogs, dog_name);
disp(['The bill is', num2str(bill), '$']);
elseif choice == 'Q'
return;
end
printInventory(dogs);
end