function [W] = DFT_matrix(n)
for k = 0:n-1
    for c = 0:n-1
        W(k+1,c+1) = cos(2*pi*k*c/n)-1i*sin(2*pi*k*c/n);
    end
end
