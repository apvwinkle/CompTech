function polyplot(xdata,ydata,coeffs)
%Plots a polynominal function found using the polynomial function.
plot(xdata,ydata,'o')
hold on
a = length(coeffs);
xcalc = linspace(min(xdata),max(xdata));
for i = 1:length(xcalc)
    for j = 1:a
        y(j) = coeffs(j)*xcalc(i)^(a-j);
    end
    ycalc(i) = sum(y);
end
plot(xcalc,ycalc,'r-');
equation = vpa(poly2sym(coeffs),4) %6 digits
end