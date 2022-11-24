clc
close all

img = imread("img3.jpg");
imresize(img,3);
imgGris = rgb2gray(img);
figure(1);
imshow(img);

%% Suavizado Morfologico

elementoEstructural = ones(5);
imgApertura = imopen(imgGris, elementoEstructural);
imgSuavisado = imclose(imgApertura,elementoEstructural);
figure(2);
imshow(imgSuavisado);

%% Gradiente Morfologico

imgBinario = im2bw(imgGris,0.75);
imgBinario = not(imgBinario);
elementoEstructural = ones(4);
imgBinario = imdilate(imgBinario, elementoEstructural);
% imgBinario = imopen(imgBinario,elementoEstructural);
elementoEstructural2 = ones(3);
imgBinarioDilatacion = imdilate(imgBinario,elementoEstructural2);
imgErosion = imerode(imgBinario,elementoEstructural2);
imgGradiente = imgBinarioDilatacion - imgErosion;
figure(3);
imshow(imgGradiente);

%% Extraccion de objeto

objeto = uint8(imgBinario).*img;
figure(4);
imshow(objeto);


