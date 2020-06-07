% BT17ECE009 KAUTILYA JOSHI
function d = my_RLE(x)
ind=1;
d(ind,1)=x(1);
d(ind,2)=1;
%Performing run length operation

for i=2 :length(x)
    if x(i-1)==x(i)
       d(ind,2)=d(ind,2)+1;
    else ind=ind+1;
         d(ind,1)=x(i);
         d(ind,2)=1;
    end
end