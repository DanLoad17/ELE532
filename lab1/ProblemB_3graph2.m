p = @(t) 1.0.*((t>=0)&(t<1));
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);
n1 = @(t) n((1/2).*t);
n2 = @(t) n1(t + (1/2));
t = (-1:0.001:5); %changed the t intervals to make the gap lower and look better
plot(t,n2(t));
xlabel('t'); 
ylabel('n2(t) = n1(t + (1/2))');
axis([-1 5 -.1 1.1]);
grid;

