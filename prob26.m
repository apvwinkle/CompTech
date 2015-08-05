r = 0.02; R = 4; g = -9.81;
dhdt = @(t,h) -r^2 * sqrt(2*g*h)/(2*h*R - h^2);
ode45(dhdt,[0 10000], 6.5);