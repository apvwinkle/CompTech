function [l u] = eigmax(A)
%this uses the Power Method to calculate the largest eigenvlalue of a
%matrix
%{
it won't work with complex lambdas and will only work with symmetric A
matrices
it also won't find degenerate lambdas; it will only find one
it won't find eigenvectors
%}
n = size(A,1);
x = ones(n,1); %this is a starting guess for the eigenvector
for i = 1:1000000
    uprev = x;
    ul = A*x; %ul = unit vector * lambda
	lambda = norm(ul); % use the euclidean norm instead of the infinity norm
    u = ul / lambda; %this makes u a unit vector
    if uprev == u;
        break
    end
    x = u;
end
l = lambda;
end