xguess = 1; yguess = 1;
iterations = 5;
f1 = @(x,y) x^2 + 2*x + 2*y^2 -26; %solve it for a singular x on one side to get g
g1 = @(x,y) 13 - x^2/2 - y^2; % = x
f2 = @(x,y) 2*x^3 - y^2 + 4*y -19;
g2 = @(x,y) (19 + y^2 - 2*x^3)/4; % = y

X = xguess; Y = yguess;
for i = 1:iterations
   X = subs(g1, [x y], [X Y]);
   Y = subs(g2, [x y], [X Y]);
end
X = double(X)
Y = double(Y)