close all
clear all

img = imread('img.jpg');
%conversion a double
img = double(img);

% lectura de renglones y cnaales
[renglones,columnas,c] = size(img);       %Tamaño de la imagen; renglones y columnas

%Creación de matriz malla
[x,y] =meshgrid(1:columnas, 1:renglones);      

% centro de rotacion en x
x0 = round(columnas/2);

% centro de rotacion en y
y0= round(renglones/2);

im_final =zeros(size(img));
im_rot = zeros(size(img));

% c = n canales
for k=1:c
    
    % iteracion por canal
Ic = img(:,:,k);

% distancia del centro de rotacion a cada pixel
distancia = sqrt((x0-x).^2 + (y0-y).^2);

% radio = k2
radio = 0.0125; %0.1
k1 = 10;

% nueva posicion de los pixles

% si se desea un remolino invertido coloque un "-"
% en el anterior a k1
theta = -(k1.*exp((-radio.*distancia))); %10
p =(x-x0).*cos(theta)+(y-y0).*sin(theta)+x0;   % coordenadas transformadas (nueva posición de los pixeles)
q =-(x-x0).*sin(theta)+(y-y0).*cos(theta)+y0;

% para cada (x,y) asigna (p,q)
im_final = interp2(x,y,Ic,p,q);

% rota cada canal
im_rot(:,:,k) = im_final;


pause(1)

end


%&reconvierte la imagen

img = uint8(img);
im_rot = uint8(im_rot);
figure(1);
% montage({img,im_rot});

imshow(im_rot)