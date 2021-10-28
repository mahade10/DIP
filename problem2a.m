clear;
clc;
Img = imread('cat.jpg');
Img = rgb2gray(Img);
Img = imresize(Img,[512 512]);

[m, n] = size(Img);
prompt = 'What is the intensity value? ';
inten = input(prompt);
prompt = 'What is the range? ';
x = input(prompt);
y = input('');
ImgB=Img;
figure
for i=1:m
    for j=1:n
        %ImgB(i,j)=Img(i,j)+inten;
        if Img(i,j)>=x & Img(i,j)<=y
            ImgB(i,j)=Img(i,j)+inten;
        end
    end
end
subplot(2,1,1);
imshow(Img);
title('Orginal')
subplot(2,1,2);
imshow(ImgB);
title('Bright');
