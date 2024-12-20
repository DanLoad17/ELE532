tic
load('ELE532_Lab1_Data.mat');
rs = size(B,1);
cs = size(B,2);

for i = 1:1:rs
    for j=1:1:cs
        if(abs(B(i,j))<0.01)
            B(i,j) = 0;
        end
    end
end
toc