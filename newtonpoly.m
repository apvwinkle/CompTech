function ypoint = newtonpoly(xdata,ydata,xpoint)
[r c] = size(xdata);
if c>r
    xdata = xdata';
    ydata = ydata';
end
n = length(xdata);
coeffs = zeros(n,n);
coeffs(:,1) = ydata;
for j = 1:n-1
    for i=1:n-j
        den = (xdata(j+i)-xdata(i));
        coeffs(i,j+1) = (coeffs(i+1,j)-coeffs(i,j))/den;
    end
end
y = coeffs(1,1);
x = 1;
for i = 2:n
    x = x*(xpoint - xdata(i-1));
    y = y + coeffs(1,i)*x;
end
ypoint = y;