a = imread('cat.jpg');
a = rgb2gray(a);
a = imresize(a, [512,512]);
[m,n] = size(a);

k = input('enter decresing times\n:');
xy = ceil(sqrt(k));
for i = 1:k
    subplot(xy,xy,i);
    a = imresize(a,.5);
    imshow(a);
    title(strcat(int2str(m),'X',int2str(n)));
    m = m/2;
    n= n/2;
end
