clc
close all

%% Lectura de imgen
img = imread("img.jpg");
figure(1);
imshow(img);

% Ajuste gamma

% Convertir a double
img = double(img);

% valor de gamma
gamma = 0.20;

% funcion de gamma
img_gamma = (255.*(img ./ 255).^(1 ./ gamma));

% RECONVERSION DE FORMATO

% Conversion a entero de 8 bits
img = uint8(img);
img_gamma = uint8(img_gamma);

%% Negativo de la imagen
img_neg = (255 - img_gamma);

% Visualiza la imgen
figure(2);
imshow(img_neg);