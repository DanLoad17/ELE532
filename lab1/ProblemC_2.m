f = @(t) exp(-2*t).*cos(4*pi*t);
t = (-2:0.01:2);
u = @(t) 1.0.*(t>=0);
axis([-2 2 -0.1 1.1]);
g = @(t) f(t).*u(t);
s = @(t) g(t+1);
t = ([0:0.01:4]);
plot(t,s(t)); 
xlabel('t'); 
ylabel('s(t) = g(t+1)'); 
grid;

