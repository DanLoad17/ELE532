N = 100; PulseWidth = 10;
m = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
wp = x.*exp(1j.*(pi/3).*t);
wn = x.*exp(-1j.*(pi/3).*t);
wc = x.*cos((pi/3).*t);
WPf = fft(wp);
WNf = fft(wn);
WCf = fft(wc);
f = [-(N/2):1:(N/2)-1]*(1/N);

figure(6);
subplot(211); plot(f,fftshift( abs(WPf))); grid on;
xlabel('t'); ylabel('w(t)');
title('|wpositive(t)|');
subplot(212); plot(f,fftshift(angle(WPf))); grid on;
xlabel('t'); ylabel('w(t)');
title('\angle wpositive(t)');

figure(7);
subplot(211); plot(f,fftshift( abs(WNf))); grid on;
xlabel('t'); ylabel('w(t)');
title('|wnegative(t)|');
subplot(212); plot(f,fftshift(angle(WNf))); grid on;
xlabel('t'); ylabel('w(t)');
title('\angle wnegative(t)');

figure(8);
subplot(211); plot(f,fftshift( abs(WCf))); grid on;
xlabel('t'); ylabel('w(t)');
title('|wc(t)|');
subplot(212); plot(f,fftshift(angle(WCf))); grid on;
xlabel('t'); ylabel('w(t)');
title('\angle wc(t)');