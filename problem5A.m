 I = imread('cat.jpg'); 
 I = im2bw(I);
 
subplot(2, 3, 1),  
imshow(I); 
title('Original image'); 
  
% Dilated Image 
se = strel('rectangle',[20,20]); 
dilate = imdilate(I, se); 
subplot(2, 3, 2),  
imshow(dilate); 
title('Dilated image'); 
  
% Eroded image 
erode = imerode(I, se); 
subplot(2, 3, 3),  
imshow(erode); 
title('Eroded image'); 