function val = get_val(i,j,in_img)
im = zeros(1,8);
% |1|2|3|
% |4|im|6|
% |7|8|9|
%Pixel at 6
if in_img(i,j) < in_img(i,j+1)   im(1) = 1;else im(1) = 0;end
%Pixel at 3
if in_img(i,j) < in_img(i-1,j+1) im(2) = 1;else im(2) = 0;end
%Pixel at 2
if in_img(i,j) < in_img(i-1,j)   im(3) = 1;else im(3) = 0;end
%Pixel at 1
if in_img(i,j) < in_img(i-1,j-1) im(4) = 1;else im(4) = 0;end
%Pixel at 4
if in_img(i,j) < in_img(i,j-1)   im(5) = 1;else im(5) = 0;end
%Pixel at 7
if in_img(i,j) < in_img(i+1,j-1) im(6) = 1;else im(6) = 0;end
%Pixel at 8
if in_img(i,j) < in_img(i+1,j)   im(7) = 1;else im(7) = 0;end
%Pixel at 9
if in_img(i,j) < in_img(i+1,j+1) im(8) = 1;else im(8) = 0;end

val = bi2de(im);
end