clc
close all

img = imread("img3.jpg");
imresize(img,3);
imgGris = rgb2gray(img);
figure(1);
imshow(imgGris);

%% Top hat
elementoEstructural =[  1,1,1,1,1,1;
                        1,1,1,1,1,1;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;];

imgGrisTopHat = imtophat(imgGris,elementoEstructural);
figure(2);
imshow(imgGrisTopHat);

%% Buttom hat
elementoEstructural =[  1,1,1,1,1,1;
                        1,1,1,1,1,1;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;
                        0,0,1,1,0,0;];

imgGrisButtomHat = imbothat(imgGris,elementoEstructural);
figure(3);
imshow(imgGrisButtomHat);

%% Aplicacion

% imgMejoradaTopHat = imgGris + imgGrisTopHat;
% imgMejoradaTopHat = imgGris - imgGrisTopHat;
% imgMejoradaButtomHat = imgGris + imgGrisButtomHat;
imgMejoradaButtomHat = imgGris - imgGrisButtomHat;
figure(4);
imshow(imgMejoradaButtomHat);
