clc
clear all
close all

img = imread("img_1.jpg");
% figure(1)
% imshow(img_bn);
%% Binarizacion

% conversion a gris
img_gris = rgb2gray(img);

valor_de_pixel = 127;

% valor entre 0 y 1
umbral = valor_de_pixel/255;

% conversion a blanco y negro
img_bn = im2bw(img_gris,umbral);

% metodo opcional
img_ibn = imbinarize(img_gris,"adaptive","ForegroundPolarity","dark","Sensitivity",0.7);
figure(2)
imshow(img_bn);
figure(3)
imshow(img_ibn);
figure(4)
imshow(img_gris);

%% operacion not
% img_bn_not = not(img_bn);
img_bn_not = ~(img_bn);
figure(5)
imshow(img_bn_not);
