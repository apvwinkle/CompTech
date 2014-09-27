A = [5 6 8 9 7; 1 2 33 4 5; -6 9 2 0 1; -22 19 3 -1 6; 0 3 1 2 4];
b = [6 3 -9 2 5]';
Aaug = [A b]
n = size(A,1) %gets the number of loops we'll need from the size of the matrix
RowOrder = 1:n
Ap = [Aaug RowOrder']
%start looping
for c= 1:5
    c
part = Ap(c:n, :); %row c to the last row get pivoted
[d i] = sortrows(abs(part), c); %it is sorting from the c column because we will be using  diagonal
%we use i to make our real matrix go in the right order
part = part(flipud(i), :);
Ap(c:n,:) = part %replace row n to the end with whatever is in part
%RowOrder = [1:(c-1) (flipud(i)+c-1)'];
end