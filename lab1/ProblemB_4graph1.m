p = @(t) 1.0.*((t>=0)&(t<1));
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);
n3 = @(t) n(t + (1/4));
t = (-1:0.001:5); %changed the t intervals to make the gap lower and look better
plot(t,n3(t));
xlabel('t'); 
ylabel('n3(t) = n(t + (1/4))');
axis([-1 5 -.1 1.1]);
grid;

