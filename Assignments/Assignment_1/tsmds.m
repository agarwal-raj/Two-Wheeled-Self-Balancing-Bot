function dxdt = tsmds(t,x)
m1  =  10;      % Mass 1[kg]
m2  =  100;     % Mass 2[kg] 
c1  =  100;     % Damping Coefficient 1[Ns/m]
c2  =  1000;    % Damping Coefficient 2[Ns/m]
k1  =  1e4;     % Spring Coefficient 1[N/m]
k2  =  1e5;     % Spring Coefficient 2[N/m]
F   =  3*sin(10*t);
dxdt(1) = x(2);
dxdt(2) = F + (1/m1)*(k1*x(3)  +  c1*x(4)  -  m1*x(1)  -  c1*x(2));
dxdt(3) = x(4);
dxdt(4) = (1/m2)*((-k1-k2)*x(3)  +  (-c1-c2)*x(4)  +  k1*x(1)  +  c1*x(2));

dxdt=dxdt';
end
