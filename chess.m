%Generate a chess board where the first square has 1 grain of rice, two grains on the second, 
%four on the third and so on doubled for each of the 64 squares on the board.
%how much rice to cover the entire board?

board = zeros(8, 8);
for h = 1 : 8
for w = 1 : 8
board(h, w) = 2 ^ (w - 1) * 2 ^ (8 * (h - 1))

end
end


disp('-------------')
%Think of another way to solve this question without using the power operation
%board = zeros(8, 8);
%for h = 1 : 8
%for w = 1 : 8
%if h == 1 && w == 1
%board(h, w) = 1
%elseif w > 1
%board(h, w) = board(h, w - 1) * 2
%else %w == 1 && h > 1
%board(h, w) = board(h - 1, 8) * 2
%end
%pause(2)
%end
%end
%break 

