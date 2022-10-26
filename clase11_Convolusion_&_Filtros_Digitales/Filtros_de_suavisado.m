clc
close all

img = imread("partenon.jpg");
figure(1);
imshow(img);

%% Filtros de promedio

kernelNuevePuntos = [1/9 1/9 1/9;
                     1/9 1/9 1/9;
                     1/9 1/9 1/9];

% Convolucion
imgFiltroNuevePuntos = imfilter(img,kernelNuevePuntos);

% Filtro promedio 25px
Filtro25= fspecial("average",5);
imgFiltro25 =imfilter(img, Filtro25);

figure(2);
imshow(imgFiltro25);


%% Filtros Gaussianos

FiltroGaussiano5 = fspecial("gaussian",7,0.8);
imgFiltroGaussiano5 = imfilter(img,FiltroGaussiano5);

figure(3);
imshow(imgFiltroGaussiano5);

