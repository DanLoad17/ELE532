u = @(t) 1.0.*(t>=0);
t = ([0:0.01:4]);
numel(s(t))
size(s(t))

for alpha = 1:2:7
    s = @(t) exp(-2).*exp(-alpha.*t).*cos(4*pi*t).*u(t);
    plot(t,s(t));
    xlabel('t');
    ylabel('s(t)')

    hold on;
end

legend('alpha = 1', 'alpha = 3', 'alpha = 5', 'alpha = 7');

hold off;