%Solves a system of 3 simultaneous differentials using ode45
%[dA/dt; dB/dt; dC/dt] = function(t, [A; B; C]):
%for this problem, k1=5, k2=4, k3=3
%dA/dt = -k1A + k2B; dB/dt = k1A - k2B - k3B; dC/dt = k3B;
%initial concentrations of [A B C] = [42; 0; 0];
g = @(t,ABC) [-5*ABC(1) + 4*ABC(2); 5*ABC(1) - 4*ABC(2) - 3*ABC(2); 3*ABC(2)]
ode45(g,[0 3], [42; 0; 0])