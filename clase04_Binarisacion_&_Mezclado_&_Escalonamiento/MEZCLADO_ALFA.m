clc
clear all
close all

img_A = imread("img_1.jpg");
img_B = imread("lobo.jpg");

%% Conversion de tamaños
[renglones,columnas,canales] = size(img_A);
img_B = imresize(img_B,[renglones,columnas]);

%% MEZCLADO ALFA
alfa = 0.2;
img_C = alfa .* img_A + (1-alfa) .* img_B;
figure(1)
imshow([img_A,img_B,img_C]);
