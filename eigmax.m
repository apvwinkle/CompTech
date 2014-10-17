function l = eigmax(A)
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
for i = 1:1000
    uprev = x;
    ul = A*x; %ul = unit vector * lambda
    l = max(ul); %l is lambda
    u = ul / l; %this divides out the largest value
    if uprev == u;
        return
    end
    x = u;
end
end