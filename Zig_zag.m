%KAUTILYA JOSHI (BT17ECE009)

clc;close all;
	
	im = imread('flower.jpg');
	[nv,ct] = deal(zeros(size(im,1)*size(im,2),1),1);
	for i = 1:size(im,1)
	    if mod(size(im,1),2) == 0
	        if i < size(im,1)
	            if mod(i,2) == 0
	                k = i;
	                for j = 1:i
	                    nv(ct)=im(k,j);
	                    [k,ct] = deal(k-1,ct+1);
	                end
	            elseif mod(i,2) ~= 0
	                k = 1;
	                for j = i:-1:1
	                    nv(ct) = im(k,j);
	                    [k,ct] = deal(k+1,ct+1);
	                end
	            end
	        elseif i == size(im,1)
	            k = i;
	            for j = 1:i
	                nv(ct)=im(k,j);
	                [k,ct] = deal(k-1,ct+1);
	            end
	            for j = 2:size(im,1)
	                if mod(j,2) == 0
	                    k = j;
	                    for l = size(im,1):-1:j
	                        nv(ct) = im(k,l);
	                        [k,ct] = deal(k+1,ct+1);
	                    end
	                elseif mod(j,2) ~= 0
	                    for l = size(im,1):-1:j
	                        nv(ct) = im(l,j);
	                        [j,ct] = deal(j+1,ct+1);
	                    end
	                end
	            end      
	        end
	    elseif mod(size(im,1),2) ~= 0
	        if i < size(im,1)
	            if mod(i,2) == 0
	                k = i;
	                for j = 1:i
	                    nv(ct)=im(k,j);
	                    [k,ct] = deal(k-1,ct+1);
	                end
	            elseif mod(i,2) ~= 0
	                k = 1;
	                for j = i:-1:1
	                    nv(ct) = im(k,j);
	                    [k,ct] = deal(k+1,ct+1);
	                end
	            end
	        elseif i == size(im,1)
	            k = 1;
	            for j = i:-1:1
	                nv(ct) = im(k,j);
	                [k,ct] = deal(k+1,ct+1);
	            end
	            for j = 2:size(im,1)
	                if mod(j,2) == 0
	                    k = j;
	                    for l = size(im,1):-1:j
	                        nv(ct) = im(l,k);
	                        [k,ct] = deal(k+1,ct+1);
	                    end
	                elseif mod(j,2) ~= 0
	                    for l = size(im,1):-1:j
	                        nv(ct) = im(j,l);
	                        [j,ct] = deal(j+1,ct+1);
	                    end
	                end
	            end      
	        end
	    end
	end
