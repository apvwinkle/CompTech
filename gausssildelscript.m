%gaussseidel method
%first you have to solve your system of equations for a variable. Each one
%will have a different variable
iterations = 3;
aval = 0; bval = 0; cval = 0; %guesses
syms A B C a b c
A = (51 - (2*b+3*c))/8;
B = (23 - (2*a+1*c))/5;
C = (20 - (-3*a+b))/6;
%Next, you plug in your variable values each time you get a new one
for iteration = 1:iterations
    iteration
aval = double(subs(A,[b c],[bval cval]))
bval = double(subs(B,[a c],[aval,cval]))
cval = double(subs(C, [a b],[aval,bval]))
end