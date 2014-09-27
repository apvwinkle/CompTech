function ret = pivot(A, n)
%This pivots the rows, useful for eliminating round off error. A is the
%matrix to be pivoted, and n is the row and column you're working on (it
%pivots on the diagonal). It will return with your pivoted matrix and the
%row order as the last column
part = A(n:end, :); %row n to the last row get pivoted
[d i] = sortrows(abs(part), n) %it is sorting from the n column because we will be using  diagonal
%we use i to make our real matrix go in the right order
part = part(flipud(i), :);
Ap = A; %makes a copy of our input array
Ap(n:end,:) = part; %replace row n to the end with whatever is in part
RowOrder = [1:(n-1) (flipud(i)+n-1)']';
ret = [Ap RowOrder];
end