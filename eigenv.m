function [U L] = eigenv(A)
%this uses the Power Method to calculate the largest eigenvlalue of a
%matrix and it's corresponding eigenvectors
%{
it won't work with complex lambdas and will only work with symmetric A
matrices
%}
n = size(A,1);
L = zeros(1, n);
U = zeros(n,n);
u = zeros(n,1); %creates a vector of zeros for a guess
u(1,1) = 1; %this is a starting guess for the eigenvector
for i = 1:n
    for I = 1:100000
        uprev = u;
        ul = abs(A*u); %ul is unit vector * lambda
        l = norm(ul); %l is lambda
        u = ul / l;
        if uprev == u
            lambda = double(l);
            u = double(u);
            break
        end
        lambda = l;
    end
U(:,i) = u;
L(1,i) = lambda;
A = A - l*(u*u');
end
end