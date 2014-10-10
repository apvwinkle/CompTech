function Xs = RegulaRoot(Fun, a, b, ErrMax)
%This uses the Regula Falsi method to find a root of a function Fun, using
%two x values that are on either side of the root and the maximum amount of error that you will tolerate. You must have b > a.
if Fun(a)*Fun(b) > 0 %you want one y value to be + and one y value to be -
    error('You need to choose new points, because the solution is not in between a and b.')
end
for i = 1:10000
    if i>1
        xprevious = x;
    end
    x = (a*Fun(b) - b*Fun(a))/(Fun(b)-Fun(a)); %where the line formed between f(A) and f(B) touches the x-axis
    if Fun(x)*Fun(a) < 0
        b = x;
    elseif Fun(x)*Fun(b) < 0
        a = x;
    elseif Fun(x)*Fun(a) == 0
        break
    end
    if i>1
        Error = abs((x - xprevious)/(x)); %this calculates like percent error, but without the percent
        if Error <= ErrMax
            break
        end
    end
end
Xs = x;
end