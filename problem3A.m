clear;
clc;
img = imread('cat.jpg');
img = imresize(img, [512 512]);
img = rgb2gray(img);
[m,n] = size(img);
subplot(2,2,1);
imshow(img);
title('original image');
img = imnoise(img,'gaussian');
subplot(2,2,2);
imshow(img);
title('noisy image');
out_img = medfilt2(img,[5,5]);
subplot(2,2,3);
imshow(out_img);
title('median filtered image');
h = fspecial('average',[5,5]);
avr_img = imfilter(img,h);
subplot(2,2,4);
imshow(avr_img);
title('avearge filtered image');