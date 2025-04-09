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

% --- Manual Grayscale Conversion ---
% Convert image channels to double precision for calculation
% to avoid issues with integer arithmetic (uint8)
Ir_double = double(Ir);
Ig_double = double(Ig);
Ib_double = double(Ib);

% Apply the standard luminance formula (weighted average)
% Grayscale = 0.2989 * R + 0.5870 * G + 0.1140 * B
Igray_double = 0.2989 * Ir_double + 0.5870 * Ig_double + 0.1140 * Ib_double;

% Convert the result back to uint8 format for image display/saving
Igray = uint8(Igray_double); % This is the 2D grayscale image matrix

% Display the original and color-isolated images
subplot (3,3,1), imshow(I);
subplot (3,3,2), imshow(Ir);
subplot (3,3,3), imshow(Ig);
subplot (3,3,4), imshow(Ib);
subplot (3,3,5), imshow(Ired);
subplot (3,3,6), imshow(Iblue);
subplot (3,3,7), imshow(Igreen);