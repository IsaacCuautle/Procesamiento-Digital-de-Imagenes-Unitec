clear all   % Limpiar toda la zona de trabajo
close all
clc

%% Visualizar imagen
img = imread('imagen_1.jpg');   %Lectura de imagen
figure(1)   % Crear figura
imshow(img)

%% Lectura de pixeles
% Entrar al pixel (100, 120)

% img(100, 120, 1)  % Lectura del canal R
% img(100, 120, 2)  % Lectura del canal G
% img(100, 120, 3)  % Lectura del canal B

img(100, 120, 1:3)  % Lectura del canal B

%% Lectura de canales

img_R = img(:,:,1);   %Lectura de todo el canal R
img_G = img(:,:,2);   %Lectura de todo el canal G
img_B = img(:,:,3);   %Lectura de todo el canal B
figure(2)
imshow([img_R, img_G, img_B])






