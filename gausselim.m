function ret = gausselim(A,b)
%This performs Gauss elimination to use for back substitution for a square matrix A *
%variables = b to solve for the variables
Aaug = [A b];
n = size(A,1); %gets the number of loops we'll need from the size of the matrix
RowOrder = 1:n;
Ap = [Aaug RowOrder'];
for c = 1:n %we want to change all columns except the first and the Row Order column
    %PIVOTING
    part = Ap(c:n, :); %row c to the last row get pivoted
    [d i] = sortrows(abs(part), c); %it is sorting from the c column because we will be using  diagonal
    %we use i to make our real matrix go in the right order
    part = part(flipud(i), :);
    Ap(c:n,:) = part; %replace row n to the end with whatever is in part
    %MAKING THE UPPER TRIANGLE
    for r = (c+1):n %all the rows underneath the pivot element get changed
        pivotelem =  Ap(c,c); %our pivot element changes each row and goes diagonally down the matrix
        factor = Ap(r,c)/Ap(c,c);
        Ap(r,c:(n+1)) =  Ap(r,c:(n+1)) - Ap(c,c:(n+1))*factor; % %all the numbers in the pivot row except the Row Order get changed
    end
    %BACK SUBSTITUTION to get the answers
    
end
end

