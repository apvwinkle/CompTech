function [L U] = eigenv(A)
%this uses the Power Method to calculate the largest eigenvlalue of a
%matrix and its corresponding eigenvectors
%{
it won't work with complex lambdas and will only work with symmetric A
matrices
%}
n = size(A,1);
L = zeros(1, n); %for all the eigenvalues
U = zeros(n,n); %the eigenvectors
for i = 1:n
	[L(i) U(:,i)] = eigmax(A); % This gets the largest eigenvector u and eigenvalue l and puts them in U and L
	A = A - (U(:,i)*U(:,i)')*L(i); %This computes the residual matrix Aresid = A - (u*u')*l and replaces A.
	% new residual matrix A now has the next eigenvalue as its largest eigenvalue
end