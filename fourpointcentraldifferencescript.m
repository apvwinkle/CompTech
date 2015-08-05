n = 3; %third point

f = @(x) (x^2 - 1)/(x^3*tan(x));
x = [1.96 1.98 2.00 2.02 2.04]';

derivative = ( f(x(n-2)) - 8*f(x(n-1)) + 8*f(x(n+1)) - f(x(n+2)) ) / ( 12*(x(n-1) - x(n-2)) )