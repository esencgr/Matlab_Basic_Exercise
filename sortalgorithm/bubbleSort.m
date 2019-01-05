function array = bubbleSort(array)
for i = (length(array) - 1) : -1 : 1
  for j = 1 : i
   if array(j) > array(j+1)
        %swap
        temp = array(j);
        array(j) = array(j + 1);
        array(j + 1) = temp;
   end
  end
disp(array)
end
