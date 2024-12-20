g = @(t) f(t).*u(t);
u = @(t) 1.0.*(t>=0);
f = @(t) exp(-2*t).*cos(4*pi*t);
t = (-2:0.01:2);
axis([-2 2 -0.1 1.1]);
plot(t,g(t)); 
xlabel('t'); 
ylabel('g(t) = f(t)u(t)'); 
grid;

