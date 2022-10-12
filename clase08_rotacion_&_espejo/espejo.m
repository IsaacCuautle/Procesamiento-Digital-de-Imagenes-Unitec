clc
close all

img = imread("img.jpg");
figure(1);
imshow(img);

%% Espejo

% 1 = columnas
% 2 = renglones
imgEspejoY = flip(img, 1);
imgEspejoX = flip(img, 2);

figure(2);
imshow([img,imgEspejoX,imgEspejoY]);
