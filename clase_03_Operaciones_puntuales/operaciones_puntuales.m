cls
clear all
close all

img = imread("img_1.jpg");
% figure(1)
% imshow(img);

%% Suma de una constante
brillo = 100;
img_suma = img + brillo;
% muestra la primera y segunda imagen al mismo tiempo por medio de una
% matriz
figure(1)
imshow([img,img_suma]);

%% Resta de una constante
p = 100;
img_resta = img - p;
figure(2);
imshow([img,img_resta]);

%% Multiplicacion por constante
a = 0.5;
img_multiplicacion = a * img;
figure(3);
imshow([img,img_multiplicacion]);

%% Division por una constante 
b = .5;
img_division = img / b;
figure(4);
imshow([img,img_division]);

%% Guardar imagenes
imwrite(img_suma,'img_suma.png');
