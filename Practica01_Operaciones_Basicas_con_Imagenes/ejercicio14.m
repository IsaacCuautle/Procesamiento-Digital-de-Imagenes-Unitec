clc
close all

%% Lectura de imgen
img = imread("img.jpg");
figure(1);
imshow(img);
 %% Lectura de pixeles
 
 img = img(100:500,100:500,1:3); % Lectura de la columna 100 a la 500 y del renglo 100 al 500
 figure(2);
 imshow(img);