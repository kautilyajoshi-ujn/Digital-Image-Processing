% BT17ECE009 KAUTILYA JOSHI
function val = tob_pix(i,j,img,ker)
%Creating a vector of surrouding pixels
m = [img(i,j) img(i,j+1) img(i+1,j+1) img(i+1,j) img(i+1,j-1) img(i,j-1) ...
    img(i-1,j-1) img(i-1,j) img(i-1,j+1)];
%Finding minimum of them to replace its mapped values in image
mn = min(m);
p = find(m == mn);
%Replacing the value
if p == 1
    val = ker(i,j);
elseif p == 2
    val = ker(i,j+1);
elseif p == 3
    val = ker(i+1,j+1);
elseif p == 4
    val = ker(i+1,j);
elseif p == 5
    val = ker(i+1,j-1);
elseif p == 6
    val = ker(i,j-1);
elseif p == 7
    val = ker(i-1,j-1);
elseif p == 8
    val = ker(i-1,j);
elseif p == 9
    val = ker(i-1,j+1);
end
end