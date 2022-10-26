clc
close all

img = imread("partenon.jpg");

%% Filtro Sharpering

filtro1 =[1 -2 1;
         -2 5 -2;
          1 -2 1];

filtro2=[-1 -1 -1;
         -1 9 -1
         -1 -1 -1];

filtro3=[0 -1 0;
         -1 5 1
         0 -1 0];

filtroRepujado=[2 -1 0;
                1 1 1
                0 1 2];

imgSharpen = imfilter(img,filtroRepujado);

figure(2);
imshow(imgSharpen);