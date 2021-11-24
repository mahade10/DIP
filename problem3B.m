clear;
clc;
img = imread('cat.jpg');
img = imresize(img, [512 512]);
img = rgb2gray(img);
[m,n] = size(img);
subplot(3,2,1);
imshow(img);
title('original image');
img = imnoise(img,'salt & pepper',0.02);
subplot(3,2,2);
imshow(img);
title('noisy image');

h = fspecial('average',[3,3]);
avr_img = imfilter(img,h);
subplot(3,2,3);
imshow(avr_img);
title('avearge filtered image with 3x3');

h = fspecial('average',[5,5]);
avr_img = imfilter(img,h);
subplot(3,2,4);
imshow(avr_img);
title('avearge filtered image with 5x5');

h = fspecial('average',[7,7]);
avr_img = imfilter(img,h);
subplot(3,2,5);
imshow(avr_img);
title('avearge filtered image with 7x7');
