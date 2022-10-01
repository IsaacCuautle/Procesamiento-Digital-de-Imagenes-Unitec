clc
close all

%% Lectura de imgen
img = imread("img.jpg");
figure(1);
imshow(img);

%% Supresion del canal R
img_r = img; % lee de todo(s) los canales RGB
img_r(:,:,1)=0; % asigna el valor de 0 al canal R

% Visualizar imgen
% figure(2);
% imshow(img_r);

%% Supresion del canal G
img_g = img; % lee de todo(s) los canales RGB
img_g(:,:,2)=0; % asigna el valor de 0 al canal G

% Visualizar imgen
% figure(3);
% imshow(img_g);

%% Supresion del canal B
img_b = img; % lee de todo(s) los canales RGB
img_b(:,:,3)=0; % asigna el valor de 0 al canal B

% Visualizar imgen
% figure(4);
% imshow(img_b);