clc
clear all
close all

% Lectura de imgen
img = imread("rx_1.jpg");

% Visualizar imgen
% figure(1);
% imshow(img);

%% Ajuste gamma

% Convertir a double
img = double(img);

% valor de gamma
gamma = .8;

% funcion de gamma
img_gamma = (255.*(img ./ 255).^(1 ./ gamma));


%% RECONVERSION DE FORMATO

% Conversion a entero de 8 bits
img = uint8(img);
img_gamma = uint8(img_gamma);

figure(1);
imshow([img_gamma;img]);

%% Negativo de la imagen
img_neg = 255 - img_gamma;
figure(2);
imshow(img_neg);

