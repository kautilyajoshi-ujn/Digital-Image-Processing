% BT17ECE009 KAUTILYA JOSHI
clc; clear; close all;
%Reading an input image 
image=double((imread('fl2.jpg')));
;

% Computing the size of an image
[m1,n1,dim]=size(image);
z=min(m1,n1);

if(dim>2)
display('Loaded image is coloured ')
else
display('Loaded image is grayscale ');
end

% For coloured image in this tutorial we used thresh value of 5,50 and 500 
% for generating images shown in Figs. 3(b)-(d) respectively.
% For grayscale images in this tutorial we used thresh value of 10,60 and 100 
% for generating images shown in Figs. 4(b)-(d) respectively.

prompt = 'Enter the threshold value?  ';
thresh = input(prompt);

if(dim==3)
% Resize the image to make it square
image_square=(imresize(image,[z z]));
[m2,n2]=size(image_square);

%Calculation the DCT basis matrix
z = dct_mat(m2,n2);
%Calculate the DCT coefficents for each RGB components of an image

DCT_red=z*image_square(:,:,1)*z';
DCT_green=z*image_square(:,:,2)*z';
DCT_blue=z*image_square(:,:,3)*z';
% Truncating the DCT coefficients to achieve compression for each channel

DCT_red(abs(DCT_red)<thresh)=0;
DCT_green(abs(DCT_green)<thresh)=0;
DCT_blue(abs(DCT_blue)<thresh)=0;

DCT(:,:,1)=DCT_red;
DCT(:,:,2)=DCT_green;
DCT(:,:,3)=DCT_blue;

% Reconstruction of the compresed image from each channel

image_compressed(:,:,1)=z'*DCT_red*z;
image_compressed(:,:,2)=z'*DCT_green*z;
image_compressed(:,:,3)=z'*DCT_blue*z;

imwrite(uint8(image_compressed),'Compressed_image_coloured.jpeg');

% Compression ratio
data_orig=imfinfo('tulip.jpeg');
original_file_size=data_orig.FileSize;
data_comp=imfinfo('Compressed_image_coloured.jpeg');
compressed_file_size=data_comp.FileSize;
Compression_ratio=floor(original_file_size/compressed_file_size);

% Plotting the results
imshow(uint8(image_square)),title('Original image');
figure;
imshow(uint8(image_compressed)),title('Compressed image');
else
% Computing the size of an image
[m1,n1]=size(image);
z=min(m1,n1);

% Resize the image to make it square
image_square=(imresize(image,[z z]));

% Compute the size of a square image
[m2,n2]=size(image_square);

% Calculation the DCT basis matrix
z = dct_mat(m2,n2);
% Calculate the DCT coefficents for the image
DCT=z*image_square*z';

% Truncating the DCT coefficients to achieve compression
DCT(abs(DCT)<thresh)=0;

% Reconstruction of the compresed image
Compressed_image=z'*DCT*z;

% Creating a compressed image
imwrite(uint8(Compressed_image),'Compressed_image_grayscale.jpeg')

% Compression ratio
data_orig=imfinfo('cameraman.bmp');
original_file_size=data_orig.FileSize;
data_comp=imfinfo('Compressed_image_grayscale.jpeg');
compressed_file_size=data_comp.FileSize;
Compression_ratio=floor(original_file_size/compressed_file_size);

% Plotting the results
colormap(gray);imagesc(image_square),title('Original image');
figure;
colormap(gray);imagesc(Compressed_image),title('Compressed image');
end