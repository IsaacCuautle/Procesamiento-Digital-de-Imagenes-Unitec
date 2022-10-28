clc
close all
img = imread("partenon.jpg");
img_gris = rgb2gray(img);

gx = [0 0 0; -1 1 0; 0 0 0];
gy = [0 -1 0; 0 1 0; 0 0 0];

% bordes en x y y
img_bordes_x = imfilter(img_gris,gx);
img_bordes_y = imfilter(img_gris,gy);

%% Magnitud del gradiente 
bodes_mg = abs(img_bordes_x) + abs(img_bordes_y);
figure(1);
imshow(5.*bodes_mg);
