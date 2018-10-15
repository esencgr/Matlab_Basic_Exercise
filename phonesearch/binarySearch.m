

function number = binarySearch(phonebook, name)
l = 1; r = length(phonebook); mid = floor((l + r) / 2); number = [ ];
while l < r
  name_curr = phonebook(mid).name
    if strlexcmp(name_curr , name) == 0
        number = phonebook(mid).number;
        disp(['I found the phone of ', name_curr, '!!!']);
    return;
    elseif strlexcmp(name_curr, name) > 0
         r = mid
         mid = floor((l + r) / 2);
    elseif strlexcmp(name_curr, name) < 0
         l = mid
         mid = ceil((l + r) / 2);
    end
end
disp('Name not found!');
