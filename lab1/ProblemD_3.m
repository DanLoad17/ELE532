load("ELE532_Lab1_Data.mat");

noise = x_audio;
rows = size(noise,1);
columns = size(noise,2);

zs = 0;

for r = 1:rows
    for c = 1:columns
        if(abs(noise(r,c)) == 0)
            zs = zs + 1;
        end
    end
end

zs

sound(noise,8000)