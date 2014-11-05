function ypoint = lagrangepoly(xdata,ydata,xpoint)
%Fits a Lagrange polynominal to a set of given points and uses the
%polynominal to determine the interpolated value of a point.
%{
This works best for a small number of data points
%}
[r c] = size(xdata);
if r>c
    xdata = xdata';
    ydata = ydata';
end
n = length(xdata);
for i = 1:n
    L(i) = 1;
    for j = 1:n
        if j ~= i
            L(i) = L(i)*(xpoint - xdata(j))/(xdata(i)-xdata(j));
        end
    end
end
ypoint = sum(ydata .*L);
end