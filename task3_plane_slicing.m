clc;
clear;
close all;
% read an image
a = rgb2gray(imread('harry-potter-2.jpg'));
% Read image size
[m,n] = size(a);
b = double(a);
% convert each pixel into binary using matlab command "de2bi" which returns
% array of bits of pixel value
c = de2bi(b,8,'right-msb');
imshow(a)
title('Original Image')
%Showing Each plane
figure
for i = 1:8
    f = reshape(bi2de(c(:,i)),m,n);
    subplot(2,4,i)
    imshow(f)
    title(['Plane - ',num2str(i)])
end
figure
%Reconstructing Image with 1 plane removed and displaying it
for i = 1:8
    d = c;
    if i == 1
        d(:,1) = 0;
        d1 = reshape(uint8(bi2de(d)),m,n);
        subplot(2,4,1)
        imshow(uint8(d1))
        title([' ',num2str(i),'st plane removed'])
    elseif i == 2
        d(:,2) = 0;
        d1 = reshape(bi2de(d),m,n);
        subplot(2,4,2)
        imshow(uint8(d1))
        title([' ',num2str(i),'nd plane removed'])
    elseif i == 3
        d(:,3) = 0;
        d1 = reshape(bi2de(d),m,n);
        subplot(2,4,3)
        imshow(uint8(d1))
        title([' ',num2str(i),'rd plane removed'])
    else
        d(:,i) = 0;
        d3 = reshape(bi2de(d),m,n);
        subplot(2,4,i)
        imshow(uint8(d3))
        title([' ',num2str(i),'th plane removed'])
    end
end
