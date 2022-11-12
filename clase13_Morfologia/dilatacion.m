clc
close all

img = imread("img.jpg");
figure(1);
imshow(img);

%% Binarizacion

img_gris = rgb2gray(img);
umbral = 0.3;
img_bn = im2bw(img_gris,umbral);
figure(2);
imshow(img_bn);

%% Dilatacion

% elemento_estructural = [1 1; 1 1];
elemento_estructural = ones(2);
img_bn_dilatacion = imdilate(img_bn,elemento_estructural);
figure(3);
imshow(img_bn_dilatacion);

