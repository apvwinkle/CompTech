function [lambda u] = eigenv(A)
%this uses the Power Method to calculate the largest eigenvlalue of a
%matrix and it's corresponding eigenvectors
%{
it won't work with complex lambdas and will only work with symmetric A
matrices
it also won't find degenerate lambdas; it will only find one
%}
n = size(A,1);
guess = zeros(n,1);
guess = guess(1,1) = 1;
for 1:1000
    uprev = guess
    ul = A*guess; %ul = unit vector * lambda
    lambda = norm(ul);
    u = ul / lambda;
    if uprev == u
        break
    end
    guess = u;
end
end