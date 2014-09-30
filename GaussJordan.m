function x = GaussJordan(a,b)
%This performs Gauss -Jordan elimination for a square matrix a *
%variables = b to solve for the variables. b must be input as a column
%vector. Or it can be a square matrix when used to find the inverse.
Aaug = [a b];
n = size(a,1); %gets the number of loops we'll need from the size of the matrix
%FINDING THE DETERMINANT
for i = 1:n %we want to change all columns except the first
    Aaug = pivot(Aaug,i);
    pivotelem =  Aaug(i,i); %our pivot element changes each row and goes diagonally down the matrix
    Aaug(i,:) = Aaug(i,:)/pivotelem;
    for j = 1:n
        if j ~= i
            Aaug(j,:) = Aaug(j,:) - Aaug(j,i)*Aaug(i,:);
        end
    end
end
m = size(b,2);
x = Aaug(:,n+1:n+m);
end