function slopeint = regress1(slope, intercept)
%create some "data" to regress
xdata = linspace(-10,10,300);
noise = 24.5 * ( randn(size(xdata)) ) - .5; %makes it go positive and negative
ydata = slope * xdata + intercept + noise;
%START REGRESSION
A = [xdata' ones(size(xdata))'];
y = ydata';
slopeint = (A'*A)^-1 * A' * y;
ycalc = slopeint(1)*xdata + slopeint(2);
plot(xdata,ydata, '.', xdata,ycalc);
title(['Regression of y = ' num2str(slopeint(1)) '*x + ' num2str(slopeint(2))]);
end