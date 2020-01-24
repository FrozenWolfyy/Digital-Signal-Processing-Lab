
a = [1 0 -1];
b = [1 0 0];

num = conv(a, 1);

[h, w] = freqz(num, 1, 5000);

[z,p,k] = tf2zp(a, b);
fvtool(a,b,'polezero');
text(real(z)+.1,imag(z),'Zero');
text(real(p)+.1,imag(p),'Pole');


figure;                                                    %magnitude response of the filter

subplot(2,1,1);plot(w, (abs(h)));
xlabel('Frequency'); ylabel('Magnitude');axis tight;grid on; hold on;
title("Magnitude Response")

subplot(2,1,2); plot(w,(angle(h)));                       %frequency response of the filter
xlabel('Frequency'); ylabel('Angle'); grid on; axis tight;
title("Phase Response")