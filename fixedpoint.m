function fixedpoint(A, b, guess)
%This finds the roots of a system of equations input as a matrix A with the
%answer as a column vector b. You must also input a column vector of
%xguesses.
Ad = diag(1 ./ diag(A), 0);
Aoff = A - diag(diag(A));
xnew = guess
for i=1:length(A)
    i
xnew = Ad * (b - Aoff*xnew)
end
end