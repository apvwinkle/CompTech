function N = InfinityNorm(A)
%This caluclates the infinity norm of a matrix. When you add up the absolute
%values of the elements in each row, this norm is the largest sum.
n = size(A,1);
N = max(sum(abs(A),2));
end