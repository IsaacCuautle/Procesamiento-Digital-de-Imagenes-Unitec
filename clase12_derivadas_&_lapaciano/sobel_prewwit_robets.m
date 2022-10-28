clc
close all
img = imread("partenon.jpg");
img_gris = rgb2gray(img);

filtro_sobel = fspecial("sobel");

filtro_prewwit = fspecial("prewitt");

filtro_roberts_x = [1 0; 0 1];
filtro_roberts_y = [0 1; -1 0];
magnitud_roberts = abs(imfilter(img_gris,filtro_roberts_x)) + ...
    abs(imfilter(img_gris,filtro_roberts_y));

% OBTENCION DE BORDES
bordes = imfilter(img_gris,filtro_prewwit);
imshow(magnitud_roberts);


