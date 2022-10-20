clear all
close all
clc

img = imread("imagen1(1).jpg");

%% histograma de cada canal
figure(1);
subplot(3,1,1);
imhist(img(:,:,1)); % canal r
subplot(3,1,2);
imhist(img(:,:,2)); % canal g
subplot(3,1,3);
imhist(img(:,:,3)); % canal b

%% histograma ver imagen en escala de grises
img_gris = rgb2gray(img);
figure(2);
imhist(img_gris);
