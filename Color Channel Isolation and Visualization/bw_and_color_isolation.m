clc 
clear all
close all

%Black and white/Color Channel Isolation and Visualization
% By Shashank Rao (BT22ECI031)

% Load the image
I =imread('test.png');

% Extract the red, green, and blue color channels
Ir = I(:,:,1);
Ig = I(:,:,2);
Ib = I(:,:,3);

% Create images isolating each color channel
Ired= I - I(:,:,1)- I(:,:,2);
Iblue= I - I(:,:,2)- I(:,:,3);
Igreen= I - I(:,:,3)- I(:,:,1);

% Display the original and color-isolated images
subplot (3,3,1), imshow(I);
subplot (3,3,2), imshow(Ir);
subplot (3,3,3), imshow(Ig);
subplot (3,3,4), imshow(Ib);
subplot (3,3,5), imshow(Ired);
subplot (3,3,6), imshow(Iblue);
subplot (3,3,7), imshow(Igreen);