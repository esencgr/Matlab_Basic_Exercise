dice = ceil(6 * rand(1,2)) %Simulate the throw of two dice (i.e. randomly choose two numbers between 1 and 6)

dice = ceil(10 * rand(1,2)) %Create loaded two dice where the chances of getting a 6 is ½ and the chances of getting the other numbers is 1/10 for each number.
dice(find(dice > 6)) = 6

