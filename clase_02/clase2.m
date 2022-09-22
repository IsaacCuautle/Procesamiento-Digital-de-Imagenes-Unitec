clear all % limpia la zona de tarbajo
close all
clc

%% Visualiza imagen
img = imread('image.jpg'); % lee la imagen
figure(1) % crea una nueva figura
imshow(img);

%% Lectuara de pixeles
% entrar al pixel (100,120) = (renglon,columna)
img(100,120,1) % Lectura del canal R (columna,renglon,canal)
img(100,120,2) % Lectura del canal G
img(100,120,3) % Lectura del canal B
img(100,120,1:3) % Lectura del canal RGB
%% Lectura de canales
img_r = img(:,:,1); %lectura de todo el canal R
img_g = img(:,:,2); %lectura de todo el canal G
img_b = img(:,:,3); %lectura de todo el canal B
figure(2)
imshow([img_r,img_g,img_b])
