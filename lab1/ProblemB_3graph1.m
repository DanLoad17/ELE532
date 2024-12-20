p = @(t) 1.0.*((t>=0)&(t<1));
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);
n1 = @(t) n(0.5.*t);
t = (-1:0.001:5); %changed the t intervals to make the gap lower and look better
plot(t,n1(t));
xlabel('t'); 
ylabel('n1(t) = n((1/2)t)');
axis([-1 5 -.1 1.1]);
grid;

