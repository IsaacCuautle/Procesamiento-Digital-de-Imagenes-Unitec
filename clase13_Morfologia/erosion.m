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

%% Erosion

elemento_estructural = ones(6);
img_bn_erosion = imerode(img_bn,elemento_estructural);
figure(3);
imshow(img_bn_erosion);

% Dilatacion
elemento_estructural = ones(5);
img_bn_dilatacion = imdilate(img_bn_erosion,elemento_estructural);
figure(4);
imshow(img_bn_dilatacion);

%% Uso de la mascara

mascara = uint8(img_bn_dilatacion);

% Extraer los objetos
img_objetos = mascara .* img; 

figure(5);
imshow(img_objetos);

