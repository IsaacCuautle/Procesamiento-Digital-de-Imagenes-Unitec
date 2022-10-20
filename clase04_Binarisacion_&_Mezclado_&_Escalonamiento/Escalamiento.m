clc
clear all
close all

img_A = imread("img_1.jpg");
img_B = imread("nopal.png");

%% Conversion de tamaños
[renglones,columnas,canales] = size(img_A);
img_B = imresize(img_B,[renglones,columnas]);

%% fusion de imagenes

% suma de imagenes
img_C = img_B - img_A;
figure(1)
imshow([img_A,img_B,img_C]);
