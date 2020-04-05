clc; clear;close all;
%BT17ECE009
%KAUTILYA JOSHI

%Get input vector by random comand
vec = randi([0 1],1,100);

% Use Function 
d = my_RLE(vec);
len_out = length(d);
len_ip = length(vec);

%Compare length 
if (len_out / len_ip) <1
    fprintf('Positive Compression with ratio = %.2d\n', len_out / len_ip)
else
    fprintf('Negative compression.')
end
