clc
clear all
close all
img = imread("img_1.jpg");
figure(1)
imshow(img)

%% Conversion a grises
img_gris = rgb2gray(img);
figure(2)
imshow(img_gris);
