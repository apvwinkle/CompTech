function x = gausselim(A,b)
%This performs Gauss elimination to use for back substitution for a square matrix A *
%variables = b to solve for the variables
Aaug = [A b];
n = size(A,1); %gets the number of loops we'll need from the size of the matrix
for c = 1:n %we want to change all columns except the first and the Row Order column
    %PIVOTING
   Aaug = pivot(Aaug,c);
    %MAKING THE UPPER TRIANGLE
    pivotelem =  Aaug(c,c); %our pivot element changes each row and goes diagonally down the matrix
    for r = (c+1):n %all the rows underneath the pivot element get changed
        if Aaug(r,c) ~= 0
        factor = pivotelem/Aaug(r,c);
        Aaug(r,:) =  Aaug(c,:) - Aaug(r,:)*factor;
        end
        %all the numbers in the pivot row except the Row Order get changed
    end
end
%BACK SUBSTITUTION to get the answers
x = backsubtest(Aaug);

