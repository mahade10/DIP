clear;
clc;
img = imread('cat.jpg');
img = imresize(img, [512 512]);
img = rgb2gray(img);
Img = img;
[m,n] = size(img);
T = input('enter threshold value:\n');
for i =1 :m
    for j = 1:n
        if(img(i,j)>T)
            img(i,j) = 255;
        else
            img(i,j) = 0;
        end
    end
end

subplot(2,2,1);
imshow(Img);
title('original image');
subplot(2,2,2);
histogram(Img);
title('original image histogram');
subplot(2,2,3);
imshow(img);
title('threshold image');
subplot(2,2,4);
histogram(img);
title('threshold image histogram');
