u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);
r = @(t) t.*p(t);
t = (-1:0.01:2); %changed the t intervals to make the gap lower and look better
plot(t,r(t));
xlabel('t'); 
ylabel('r(t) = t*p(t)');
axis([-1 2 -.1 1.1]);
grid;

