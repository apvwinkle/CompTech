function xval = bisect(fun, aguess, bguess)
%This function solves for the root of function 'f' with initial
%guesses a and b, where b>a
f = fun;
if f(aguess) * f(bguess) > 0;
    error('There is no sign change on f(a) to f(b)')
    %error if there is no sign change (both a and b are pos or neg)
elseif f(aguess) * f(bguess) == 0; %one of the guess is a root!
    if f(aguess) == 0;
        xval = aguess;
    else 
        xval = bguess;
    end
end
for i = 1:1000;
    xbisect = aguess + (bguess - aguess)/ 2; %do bisection
    if f(aguess) * f(xbisect) < 0;
        %there is a sign change on the left
        bguess = xbisect;
    elseif f(xbisect) * f(bguess) < 0;
        %there is a sign chang on the left
        aguess = xbisect;
    elseif f(xbisect)*f(aguess) == 0;
        xval = xbisect; %We already know that a and b aren't 0, so if the product of f(xbisect) with f(aguess) will give a 0 only if f(xbisect) = 0
    end
end
xval = aguess + (bguess - aguess)/2;
end

