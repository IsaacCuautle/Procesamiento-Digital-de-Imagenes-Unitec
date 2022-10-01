clc
close all

%% Lectura de imgen
img = imread("img.jpg");
figure(1);
imshow(img);

%% Conversion a gris
img_gris = rgb2gray(img);

% Visualizar imgen

%  figure(2);
%  imshow(img_bn);

%valor de pixel para el umbral
valor_de_pixel = 125;

% valor entre 0 y 1
umbral = valor_de_pixel/255;

% conversion a blanco y negro
img_bn = im2bw(img_gris,umbral);

% Visualizar imgen
 figure(2);
 imshow(img_bn);