function ret = gaussjordelim(A,b)
%This performs Gauss -Jordan elimination for a square matrix A *
%variables = b to solve for the variables
M = [A b'];
[d i] = (sortrows(abs(M), 2))
flipud([d i])
