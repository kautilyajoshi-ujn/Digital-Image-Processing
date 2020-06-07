%% Read an image
rd = imread('img1.jpg');
%Writing Image with different extension
imwrite(rd,'img1_1.png');

%% Histogram of Image
rd = imread('img1.jpg');
%Plotting histogram of an image
histogram(rd)

%% DWT2
rd = imread('img1.jpg');
[cA,cH,cV,cD] = dwt2(rd,'sym4','mode','per');
imagesc(cA) 
title('Approximation Coefficients')