function coeffs = linefit(x,y)
%This finds the slope and intercept of (x,y) data and minimizes the squared
%error. coeffs = [m b]
s = size(x);
if s(1) > s(2)
    n = s(1);
    A = [x ones(n,1)];
    coeffs = ( (A'*A)^-1 * A' * y )';
elseif s(2) > s(1)
    n = s(2);
    A = [x; ones(1,n)]
    coeffs = y * (A' * (A*A')^-1);
end
end