N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
z = conv(x,x);
%f = [-(N/2):1:(N/2)-1]*(1/N);
Xf = fft(x);
Zf = Xf.*Xf;
z1 = ifft(Zf);

figure('name', ['', 'z(t)']); grid on; axis([-20 0.1 -0.1 20]);
plot(z1); xlabel('t'); ylabel('z(t)');


figure('name', ['', 'z(w)']); grid on; axis([-20 0.1 -0.1 20]);
plot(z); xlabel('w'); ylabel('z(w)');