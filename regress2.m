function slopeint = regress2(slope, intercept)
%create some "data" to regress
xdata = linspace(-10,10,300);
ydata = xdata;
[X Y] = meshgrid(xdata,ydata);
f = @(x,y) 2.1*x + 14.4*y -1.25;
Z = f(X,Y);
noise = 24.5*(randn(300,300) - .5);
Z = Z + noise;
surf(X,Y,Z);
%START REGRESSION
A = [X(:) Y(:) ones(size(X(:)))];
slopeint = (A'*A)^-1 * A' * Z(:);
Zcalc = slopeint(1)*X + slopeint(2)*Y + slopeint(3);
surf(X,Y,Z)
hold on
mesh(X,Y,Zcalc)
% plot(xdata,ydata, '.', xdata,ycalc);
% title(['Regression of y = ' num2str(slopeint(1)) '*x + ' num2str(slopeint(2))]);
% end