function N = OneNorm(A)
%This caluclates the one norm of a matrix. When you add up the absolute
%values of the elements in each column, this norm is the largest sum.
N = max(sum(abs(A),1));
end