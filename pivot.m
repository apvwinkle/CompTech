function ret = pivot(A, c)
%This pivots the rows, useful for eliminating round off error. A is the
%matrix to be pivoted, and col is the row and column you're working on (it
%pivots on the diagonal). It will return with your pivoted matrix.
n = size(A,1); %gets the number of loops we'll need from the size of the matrix
Ap = A;
part = Ap(c:n, :); %row c to the last row get pivoted
[d i] = sortrows(abs(part), c); %it is sorting from the c column because we will be using  diagonal
%we use i to make our real matrix go in the right order
part = part(flipud(i), :);
Ap(c:n,:) = part; %replace row n to the end with whatever is in part
ret = Ap;
end