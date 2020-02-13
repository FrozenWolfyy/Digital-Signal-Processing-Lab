clc;
clear all; 
close all;


t  = 0:1/25:29.96;
y=csvread('/home/frozenwolfy/Desktop/Ed/DSP LAB/Digital Signal Processing Lab/Lab 4/Matlab/ppgwithRespiration_25hz_30seconds.csv');
fs = 25;
n = length(y);
W1 = DFT_matrix(length(y));
X = W1*y';
MX = abs(X);
k = 1:n;
f = fs*k/n;
ACF=acf(y);

subplot(4,1,1);plot(t,y);
subplot(4,1,2);plot(k,MX);axis tight;
subplot(4,1,3);plot(f,MX);
subplot(4,1,4);plot(t,ACF);

xr = conj(W1)*X/length(MX);

xfft = ifft(X);
figure();

subplot(2,1,1);plot(t,y);
subplot(2,1,2);plot(t,xfft);


