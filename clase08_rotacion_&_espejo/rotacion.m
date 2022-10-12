clc
close all

img = imread("img.jpg");
figure(1);
imshow(img);

%% Rotacion

% imrotate(Imagen,Grados,Metodo_de_interpolacion,Mostar
% o_no_espacio_adicional);
% crop = muestra_espacio_adicional
% loose = no_muestra_espacio_adicional
imgRotada = imrotate(img, -120, 'nearest','crop');

figure(2);
imshow(imgRotada);

%% Animacion

for theta = 0:10:1000; 
        imgRotada = imrotate(img, -theta, 'nearest','crop');
        figure(3);
        imshow(imgRotada);
        pause(0.2);
end
