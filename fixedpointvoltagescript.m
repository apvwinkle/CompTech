q = 1.6022E-19;
kB = 1.3806E-23;
T = 297;
s = q/(kB*T);
Voc = 0.5;

guess = 0.5; %for v
Eps = 0.001; %for error

V = @(v) Voc - log(1+v*s)/s;
x = guess;
for i=1:Inf
    if i>1
       xprevious = x;
    end
    x = V(x);
    if i>1
       Error = abs((x-xprevious)/xprevious);
        if Error <= Eps
            break
        end
    end
end
x