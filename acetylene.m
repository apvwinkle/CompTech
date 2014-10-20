%This calculates the determinant of the symbolic matrix of four masses
%connected by two springs (in this case, in the form of an acetylene
%molecule.)

kCH = 5.92e2; % kg/(s^2)
kCC = 15.8e2; % kg/(s^2)
mH = 1 * 1.6605e-27; % amu
mC = 12 * 1.6605e-27; % amu
c = 3e8; % m/s^2

M = [kCH/mH    -kCH/mH             0              0;
    -kCH/mC   (kCH+kCC)/mC      -kCC/mC           0;
    0           -kCC/mC       (kCH+kCC)/mC   -kCH/mC;
    0              0            -kCH/mH       kCH/mH];

%A = [A1 A2 A3 A4]'
%M*A = (w^2)*A

fprintf('a) \n')
[vec, wsq] = eig(M);
w = sqrt(diag(wsq))
lambda = [2*pi*c./w]'

fprintf('b) \n')
vec