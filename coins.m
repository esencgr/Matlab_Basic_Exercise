img = imread('coins.png');
imshow(img)
title('Gri seviye resim')

figure 
bwImg = imread('circles.png');
imshow(bwImg)
title('Ýkilik resim')

sz = size(bwImg)
imgType = class(bwImg)
unique(bwImg)

figure 
bwImgCopy = bwImg;
bwImgCopy(5,:) = 1;
imshow(bwImgCopy)

figure 
bwImgCopy = bwImg;
bwImgCopy(:,7) = 1;
imshow(bwImgCopy)