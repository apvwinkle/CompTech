function x = backsubtest(A)
n = size(A,1);
M = A;
x = zeros(n,1);
x(n) = M(n,n+1)/M(n,n); %finding the x for the last row
for R=n-1:-1:1;
    x(R) = (M(R,n+1) - sum(M(R,R+1:n)*x(R+1:n)))/M(R,R);
end
end