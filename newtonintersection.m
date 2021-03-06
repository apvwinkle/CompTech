function intersection = newtonintersection(guesses, variables, iterations, varagin)
%This function solves for the intersection of nonlinear functions (entered as symbolic into varagin) with initial
%guesses a point that is close to the intersection.
for i = 1:(nargin()-3)
fun(i,1) = varagin{i} %each row will be a function
end
%J = jacobian(fun, variables)

% xf = guess; xg = guess;
% for i=1:iterations
%     f = polyval(polyf, xf)
%     g = polyval(polyg, xg)
%     df = polyder(polyf, xf)
%     dg = polyder(polyg, xg)
%     xf = xf - f/df
%     xg = xg - g/dg
% end
% % xf
% % xg
% % yf
% % yg
% xavg = (xf + xg)/2;
% yavg = (polyval(f, xf) + polyval(g, xg))/2;
% intersection(1) = xavg; intersection(2) = yavg;
% end