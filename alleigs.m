function [vector value] = alleigs(A)
n = size(A,1);
uguess = ones(n,1);
for i = 1
    x = A*uguess
    lguess = x/max(x)
    uguess = x*lguess'
end