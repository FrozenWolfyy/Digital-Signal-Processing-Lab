clc;clear all; close all;
t  = 0:1/25:2.96;
y=xlsread('Data');
fs = 25;
n = length(y);
W1 = DFT_matrix(length(y));
X = W1*y';
MX = abs(X);
k = 1:n;
f = fs*k/n;
subplot(3,1,1);plot(t,y);
subplot(3,1,2);plot(k,MX);axis tight;
subplot(3,1,3);plot(f,MX);

xr = conj(W1)*X/length(MX);
xfft = ifft(X);
figure();
subplot(2,1,1);plot(t,y);
subplot(2,1,2);plot(t,xfft);