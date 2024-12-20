u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);
t = (-1:0.01:2); %changed the t intervals to make the gap lower and look better
plot(t,n(t));
xlabel('t'); 
ylabel('n(t) = r(t) + r(-t +2)');
axis([-1 2 -.1 1.1]);
grid;

