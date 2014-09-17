function intersection = newtonintersection(polyf, polyg, guess, iterations)
%This function solves for the intersection of two polynomial functions (entered as arrays) with initial
%guesses at an x value and y value that is close to the intersection.
xf = guess; xg = guess;
for i=1:iterations
    f = polyval(polyf, xf)
    g = polyval(polyg, xg)
    df = polyder(polyf, xf)
    dg = polyder(polyg, xg)
    xf = xf - f/df
    xg = xg - g/dg
end
% xf
% xg
% yf
% yg
xavg = (xf + xg)/2;
yavg = (polyval(f, xf) + polyval(g, xg))/2;
intersection(1) = xavg; intersection(2) = yavg;
end