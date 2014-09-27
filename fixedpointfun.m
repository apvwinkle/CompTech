function xval = fixedpointfun(gfun, guess,iterations)
%This function solves for the root of function f with an initial
%guesses at an x value that is close to the root. You must first find the
%function g(x) by taking f(x) and finding an equation that has a single x
%on one side.
%example: f(x) = 2*X -3*x^2 = 0, now we solve for x and get g(x) =
%(3*x^2)/2
x = guess;
for i=1:iterations
    x = gfun(x);
end
xval=x;
end