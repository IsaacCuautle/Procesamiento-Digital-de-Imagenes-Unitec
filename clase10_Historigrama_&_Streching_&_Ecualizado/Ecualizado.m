clc 
close all

img = imread("bad_image.jpg");
figure(1);
imshow(img);

figure(2);
imhist(img);

%% Modelo de parabola
c1 = .35;
c2 = 6.2;
c3 = 1.80;

img = double(img);
img_parabola = c1 .* (img .^ 2) + c2 .* img +c3;
img = uint8(img);
img_parabola = uint8(img_parabola);
figure(3);
imhist(img_parabola);
figure(4);
imshow(img_parabola);

%% Ecualizado de histograma
img_ecu = histeq(img);
figure(5);
imshow(img_ecu);
figure(6);
imhist(img_ecu);

%% Modelo de raiz
p1 = 12;
p2 = 5;
img = double(img);
img_raiz = p1 * (img .^(1/2)) + p2;
img = uint8(img);
img_raiz = uint8(img_raiz);
figure(7);
imshow(img_raiz);
figure(8);
imhist(img_raiz);

%% Modelo logaritmico
k= 40;
img = double(img);
img_logaritmo = k.*log(1+img);
img = uint8(img);
img_logaritmo = uint8(img_logaritmo);
figure(9);
imshow(img_logaritmo);
figure(10);
imhist(img_logaritmo);