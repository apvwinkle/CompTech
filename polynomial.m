function coeffs = polynomial(x,y,m)
%This fits a polynominal function of degree m to a set of (x,y) data. The
%coefficients are returned in the order a*x^m + b*x^(m-1) + ... + z
xsum = zeros(1,2*m);
for i = 1:2*m %we need 2*m for our system of equations
    xsum(i) = sum(x.^(i));
end
n = length(x);
a(1,1) = n;
b(1,1) = sum(y);
for j = 2:m+1
    a(1,j) = xsum(j-1); %for the first row of matrix a
    for k = 1:m+1
        a(j,k) = xsum(k + j - 2); %for all the other rows
    end
    b(j,1) = sum(x.^(j - 1) .*y); %answer column
end
p = (a\b)'; %solves the system of eqs
coeffs = zeros(1,m+1);
for i = 1:m+1
coeffs(i) = p(m + 2 - i);
end
end
