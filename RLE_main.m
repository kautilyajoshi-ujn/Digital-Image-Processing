clc; clear;close all;
%BT17ECE009
%KAUTILYA JOSHI

%Get input vector by random comand
vec = randi([0 1],1,100);

% Use Function 
d = RLE_func(vec);
out = length(d);
ip = length(vec);

%Compare length 
if (out / ip) <1
    fprintf('Positive Compression with ratio = %.2d\n', out / ip)
else
    fprintf('Negative compression.')
end
