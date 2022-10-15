clear all
close all
clc

img = imread("imagen1(1).jpg");
figure(1);
subplot(2,1,1);
imshow(img);
subplot(2,1,2);
imhist(img);

%% streching
M = double(max(img(:))); %valor maximo
m = double(min(img(:))); %valor minimo

img = double(img); % conversion a double

% Modelo streching
img_streching = (img-m).*(255/(M-m));

img_streching = uint8(img_streching);
img = uint8(img);

figure(2);
subplot(2,1,1);
imshow(img_streching);
subplot(2,1,2);
imhist(img_streching)

figure(3);
imshow([img,img_streching]);

%% Streching con factor

factor = 3.6;
img_streching_factor = (double(img) - 5).*(factor);

img_streching_factor = uint8(img_streching_factor);
figure(4);
subplot(2,1,1);
imshow(img_streching_factor);
subplot(2,1,2);
imhist(img_streching_factor);
