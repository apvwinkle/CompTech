function c = CondNumb_One(A)
ainv = Inverse(A);
c = OneNorm(A)*OneNorm(ainv);
end