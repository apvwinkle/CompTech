function Ap = pivot(A, n)
%This pivots the rows, useful for eliminating round off error. A is the
%matrix to be pivoted, and n is the row you're working on
part = A(n:end, :) %row n to the last row get pivoted
[d i] = sortrows(abs(part), n) %we use i to make our real matrix go in the right order
part = part(flipud(i), :)
Ap = A; %makes a copy of our input array
Ap(n:end,:) = part %replace row n to the end with whatever is in part
end