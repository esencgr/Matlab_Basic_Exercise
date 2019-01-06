x = [2 8 7 6 4 2 3];
find(x == 2)
find(x > 3)
y=x(find(x>3))
v=x(max(find(x>3)))

%Find the indexes of values in x that are larger than 3
x = [2 8 7 0 6 2 3];
find(x > 3)

%Find the actual values in x that are larger than 3
x = [2 8 7 0 6 2 3];
x(find(x > 3))

x = [1 8 3; 7 2 6; 4 5 9]
max(x)
max(max(x))

%write a commmand that subtracts 1 from all the values in y that are larger than 4 and stores it back into y

y = [1 3 5
2 5 8];
y(find(y>4))=y(find(y>4))-1


x = [1 2 3
     7 8 9
     4 5 6];
 [h, w] = find(x > 5)
 
x = [1 2 3
7 8 9
4 5 6];
inds = find(x > 5)

y = [1 3 5
    2 5 8];
inds=find(y>4)
y(inds)=y(inds)-1;


y(find(y > 4)) = y(find(y > 4)) - 1
   