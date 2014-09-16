function ret = gausselim(A,b)
%This performs Gauss elimination to use for back substitution for a square matrix A *
%variables = b to solve for the variables
Aaug = [A b];
n = size(A,1); %gets the number of loops we'll need from the size of the matrix
for c = 1:(n-1); %we want to change all columns except the first
    pivotelem =  Aaug(c,c); %our pivot element changes each row and goes diagonally down the matrix
    for r = (c+1):n %all the rows underneath the pivot element get changed
        factor = Aaug(r,c) / pivotelem;
        Aaug(r,:) = Aaug(r,:) - A(c,:)*factor;
    end
    %now we need to do back substitution to get the answers
end
end

