function Ainv = Inverse(A)
%This function uses the Gauss-Jordan method to find the inverse of a matrix
n = size(A,1);
Ainv = GaussJordan(A, eye(n));
end

