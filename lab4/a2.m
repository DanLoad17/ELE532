%a2
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
z = conv(x,x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Xf = fft(x);
Zf = Xf.*Xf;

%a3
subplot(211); plot(f,fftshift( abs(Zf))); grid on;
xlabel('w');
title('Magnitude of z(w)');
ylabel('|z(w)|');
subplot(212); plot(f,fftshift(angle(Zf))); grid on;
ylabel('/angle z(w)');
xlabel('w');
title('/angle z(w)');