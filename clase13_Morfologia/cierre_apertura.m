clc
close all

img = imread("img2.jpg");
figure(1);
imshow(img);

%% Binarizacion

img_gris = rgb2gray(img);
umbral = 0.7;
img_bn = im2bw(img_gris,umbral);
figure(2);
imshow(img_bn);

%% Apertura

elemento_estructural = ones(7);
img_bn_apertura = imopen(img_bn,elemento_estructural);
figure(3);
imshow(img_bn_apertura);

%% Cierre

elemento_estructural = ones(7);
img_bn_apertura = imclose(img_bn,elemento_estructural);
figure(4);
imshow(img_bn_apertura);