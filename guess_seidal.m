clc
clear all
close all
A = [4,3,0;3,4,-1;0,1,4];
b = [24,30,-24];
 
n = 3;
x = [1;1;1];
for p = 1:100
    for i = 1:n
        temp = 0;
        for j = 1:n;
            if i ~= j
            temp = temp + x(j)*A(i,j);
            end
        end
        x(i) = ((b(i)-temp)/A(i,i)*1.0)
    end
end
        
        