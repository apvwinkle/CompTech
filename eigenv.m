function [lambda u] = eigenv(A)
%this uses the Power Method to calculate the largest eigenvlalue of a
%matrix and it's corresponding eigenvectors
%{
it won't work with complex lambdas and will only work with symmetric A
matrices
it also won't find degenerate lambdas; it will only find one
%}
n = size(A,1);
guess = zeros(n,1); %creates a vector of zeros
guess(1,1) = 1; %this is a starting guess for the eigenvector
for i = 1:10 %CHANGE IT BACK LATER APRIL
    uprev = guess;
    ul = A*guess; %ul = unit vector * lambda
    l = norm(ul); %l is lambda
    u = ul / l;
    if uprev == u
        return
    end
    guess = u;
end
lambda = double(l);
u = double(u);
end