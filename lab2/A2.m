% CH2MP1.m : Chapter 2, MATLAB Program 1
% Script M-file determines characteristic roots of op-amp circuit.
% Set component values:
R = [1e4, 1e4, 1e4]; C = [1e-6, 1e-6];
% Determine coefficients for characteristic equation:
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
% Determine characteristic roots:
lambda = roots(A);

p = poly(lambda);

p;
lambda;

t = [0:0.0005:0.1];
u = @(t) 1.0.*(t>=0);
h = @(t) (C(1).*exp(lambda(1).*t)+ (C(2).*exp(lambda(2).*t)).*u(t));

plot(t,h(t))
xlabel('t');
ylabel('h(t)');


