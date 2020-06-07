% BT17ECE009 KAUTILYA JOSHI
function z = dct_mat(m2,n2)	
for i=1:m2
	for j=1:m2
   	     	if(i==1)
    	      		z(i,j)=sqrt(1/n2)*cos(((2*j-1)*(i-1)*pi)/(2*n2));
        	else
          		z(i,j)=sqrt(2/n2)*cos(((2*j-1)*(i-1)*pi)/(2*n2)); 
        	end
    	end
	end
end