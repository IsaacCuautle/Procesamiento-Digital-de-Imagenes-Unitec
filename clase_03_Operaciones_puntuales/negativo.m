cls
clear all
close all

img = imread("img_1.jpg");
% figure(1)
% imshow(img);

%% negativo de una imgen
img_neg = 255 - img;
figure(2);
imshow([img,img_neg]);