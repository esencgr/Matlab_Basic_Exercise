function dogs = checkIn(dogs)
n_dogs = size(dogs, 2);% the second dimension is the number of cols, in our case the %number of dogs
dogs(n_dogs + 1).name = input('Enter dog name: ', 's');
dogs(n_dogs + 1).breed = input('Enter dog breed: ', 's');
dogs(n_dogs + 1).age = input('Enter dog age: ');
dogs(n_dogs + 1).special_food = input('Enter dog special food: ', 's');
dogs(n_dogs + 1).days_in_hotel = input('Enter number of days dog will stay at the hotel: ');
dogs(n_dogs + 1).owner_mobile = input('Enter mobile phone of dog owner: ', 's');