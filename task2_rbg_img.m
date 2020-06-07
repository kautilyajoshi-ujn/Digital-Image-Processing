clc;clear;close all;
im = imread('harry-potter-2.jpg');
%Red Plane
im1 = cat(3,im(:,:,1),zeros(size(im,1),size(im,2),'uint8'),zeros(size(im,1),size(im,2),'uint8')); 
%Green Plane
im2 = cat(3,zeros(size(im,1),size(im,2),'uint8'),im(:,:,2),zeros(size(im,1),size(im,2),'uint8'));
%Blue Plane
im3 = cat(3,zeros(size(im,1),size(im,2),'uint8'),zeros(size(im,1),size(im,2),'uint8'),im(:,:,3));
%Reconstructed Image
nim = cat(3,im(:,:,1),im(:,:,2),im(:,:,3));
subplot(231)
imshow(im)
title('Original Image')
subplot(233)
imshow(nim)
title('Reconstructed Image')
subplot(234)
imshow(im1)
title('Red Plane')
subplot(235)
imshow(im2)
title('Green Plane')
subplot(236)
imshow(im3)
title('Blue Plane')