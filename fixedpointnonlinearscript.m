xguess = 1; yguess = 1;
iterations = 5;
%f1 = 2*x^3 - y^2 + 4*y -19;
%f2 = x^2 + 2*x + 2*y^2 -26;
%Solve f1 and f2 for x and y, respectively, to acquire our g functions
syms x y
g1 = (9.5 + .5*y^2 - 2*y)^1/3; % = x
g2 = sqrt(13 - .5*x^2 - x); % = y
X = xguess; Y = yguess;
for i = 1:iterations
   X = subs(g1, y, Y);
   Y = subs(g2, x, X);
end
X = double(X)
Y = double(Y)