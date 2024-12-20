%pulse = 5
N = 100; PulseWidth = 5;
m = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure(5);
subplot(211); plot(f,fftshift( abs(Xf))); grid on;
xlabel('w');
title('|x(w) of pulse width 5|');
subplot(212); plot(f,fftshift(angle(Xf))); grid on;
xlabel('w'); ylabel('x(t)');
title('\angle x(w) with pulse width 5');

%pulse = 25
N = 100; PulseWidth = 25;
m = [0:1:(N-1)];
y = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Yf = fft(y);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure(25);
subplot(211); plot(f,fftshift( abs(Yf))); grid on;
xlabel('w');
title('|x(w) with pulse width 25|');
subplot(212); plot(f,fftshift(angle(Yf))); grid on;
xlabel('w'); ylabel('x(w)');
title('\angle x(w) with pulse width 25');