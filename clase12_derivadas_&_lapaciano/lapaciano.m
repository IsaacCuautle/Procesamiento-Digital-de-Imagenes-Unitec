clc
close all
img = imread("partenon.jpg");
img_gris = rgb2gray(img);

% Filtros laplaciano
l1 = [0 1 0; 1 -4 1; 0 1 0];
l2 = [0 -1 0; -1 4 -1; 0 -1 0];
l3= [1 1 1; 1 -8 1; 1 1 1];
l4= [-1 -1 -1; -1 8 -1; -1 -1 -1];

%% Magnitud del gradiente 

% OBTENCION DE BORDES
bordes = imfilter(img_gris,l3);
imshow(bordes);

% Mejoramiento de imagen
img_mejorada = img- bordes;
figure(1);
imshow([img;img_mejorada]);
