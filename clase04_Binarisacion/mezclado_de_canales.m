clc
clear all
close all

img = imread("img_1.jpg");

%% Lectura de canales

% CANAL ROJO
img_R = img;
img_R(:,:,2) = 0;
img_R(:,:,3) = 0;

% canal verde
img_G = img;
img_G(:,:,1) = 0;
img_G(:,:,3) = 0;

% canal AZUL
img_B = img;
img_B(:,:,1) = 0;
img_B(:,:,2) = 0;
    
figure(1)
imshow([img_R,img_G,img_B]);

%% combinacion de canalaes

img_1 = img_R + img_G;
img_2 = img_R + img_B;
img_3 = img_G+ img_B;

figure(2)
imshow([img_1,img_2,img_3]);

