function d = RLE_func(x)
var=1;
d(var,1)=x(1);
d(var,2)=1;
for i=2 :length(x)
    if x(i-1)==x(i)
       d(var,2)=d(var,2)+1;
    else var=var+1;
         d(var,1)=x(i);
         d(var,2)=1;
    end
end
