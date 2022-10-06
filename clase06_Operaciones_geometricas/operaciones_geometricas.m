clc
close all

img = imread('img.jpg');
figure(1);
imshow(img);

%% Desplazamiento

%vector =[renglones(y), columnas(x)]
vectorDesplazamiento = [-100, -100]; 
imgDesplazada = imtranslate(img, vectorDesplazamiento); 

figure(2);
imshow(imgDesplazada);

%% Escalamiento

% (imagen, factor_de_crecimiento, metodo_de_interpolacion);
% imgEscalada = imresize(img, 3, "bicubic"); 

% (imagen,[renglones,columnas])
% imgEscalada = imresize(img,[500,1000]); 

% (img,factor_de_escala)
imgEscalada = imresize(img,0.5);

figure(3);
imshow(imgEscalada);

%% Inclinacion
matriz = affine2d([1 0 0; 0.5 1 0; 0 0 1]);
imgInclinada = imwarp(img,matriz);
figure(4);
imshow(imgInclinada);
