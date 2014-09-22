q = 1.6022E-19;
kB = 1.3806E-23;
T = 297;
s = q/(kB*T);
Voc = 0.5;

guess = 0.5; %for v

V = @(v) Voc - log(1 + v*s)/s - v; %V=0

fzero(V,0.5)