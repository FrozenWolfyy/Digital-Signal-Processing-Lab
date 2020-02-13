%Autocorrelation function of a real valued fuction is a even function
%r(k)=r(-k), where k is the time lag
%ACF = Autocorrelation function
%ACF is a decaying function
%ACF is a periodic signal with period t0, results in ACF period t0, the same of input signal;
function [acf]=acf(x)
N=length(x);
acf = zeros(1,N);
for k=1:N-1
    acf(k)=(sum(x(1:N-k).*x(k+1:N)))./(sum(x.^2));
end
