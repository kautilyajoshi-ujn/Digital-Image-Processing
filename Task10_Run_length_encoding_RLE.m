% BT17ECE009 KAUTILYA JOSHI
clc; clear;close all;
%Get input vector
vec = randi([0 1],1,100);
st = sprintf('%d', vec);
fprintf("Original Input String: %s\n",st);
d = my_RLE(vec);
d'
len_out = length(d);
len_ip = length(vec);
%Check for compression ratio
if (len_out / len_ip) <1
    fprintf('Positive Compression with ratio = %.2d\n', len_out / len_ip)
else
    fprintf('Negative compression.')
end