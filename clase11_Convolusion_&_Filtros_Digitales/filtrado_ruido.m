clc 
close all

img = imread("partenon.jpg");
figure(1);

%% Agregar ruido

imgRuido = imnoise(img,"speckle",0.05);

figure(2)
imshow(imgRuido);

%% Eliminar ruido

FiltroPromedio25 = fspecial("average",5);
FiltroGaussiano25 = fspecial("gaussian",5,0.8);

imgFiltroPromedio25 = imfilter(imgRuido,FiltroPromedio25);
imgFiltroGaussiano25 = imfilter(imgRuido,FiltroGaussiano25);

figure(3);
imshow(imgFiltroPromedio25);
figure(4);
imshow(imgFiltroGaussiano5);