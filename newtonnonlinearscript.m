syms x y;
xguess = 1; yguess = 1;
iterations = 5;
f = x^2 + 2*x + 2*y^2 -26;
g = 2*x^3 - y^2 + 4*y -19;
J = [diff(f,x), diff(f,y); diff(g,x), diff(g,y)]; %evaluates the Jacobian using syms

xval=xguess; yval=yguess;
%[-f] = J * [delta]
for i=1:iterations
    Matrix = -1*double([subs(f, [x y], [xval yval]); subs(g, [x y], [xval yval])]); %putting numbers into f and g while making them negative like in the equation
    Jacobian = double(subs(J,[x y], [xval yval])); %putting numbers into the Jacobian
    delta = (Jacobian^-1)*Matrix; %this gives us our values for deltax and deltay
    xval = xval + delta(1);
    yval = yval + delta(2);
end
xval
yval