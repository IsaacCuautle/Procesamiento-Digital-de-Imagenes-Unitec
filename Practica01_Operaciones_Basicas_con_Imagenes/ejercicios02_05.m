clc
close all

%% Lectura de imgen
img = imread("img.jpg");
figure(1);
imshow(img);

%% Lectura de imgen
img = imread("img.jpg");

%% Lectura de pixeles
img(100,120,1); % Lectura del canal R (columna,renglon,canal)
img(100,120,2); % Lectura del canal G
img(100,120,3); % Lectura del canal B
img(:,:,1:3); % Lectura del canal RGB

%% Lectura de canales
img_r = img(0,0,1); %lectura de todo el canal R
img_g = img(:,:,2); %lectura de todo el canal G
img_b = img(:,:,3); %lectura de todo el canal B

figure(1);
imshow([img_r,img_g,img_b]);