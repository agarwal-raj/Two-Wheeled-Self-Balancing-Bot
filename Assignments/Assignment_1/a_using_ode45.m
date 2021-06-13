%% simulation input
T   =  10;      % Simulation stop time[s]

%% solving and plotting
[tt,Y]=ode45(@ode,[1 T],[0,0,0,0]);
plot(tt,Y(:,1));
plot(tt,Y(:,3));

%% govering equations
function dydt = ode(t,y)

m1  =  10;      % Mass 1[kg]
m2  =  100;     % Mass 2[kg] 
c1  =  100;     % Damping Coefficient 1[Ns/m]
c2  =  1000;    % Damping Coefficient 2[Ns/m]
k1  =  1e4;     % Spring Coefficient 1[N/m]
k2  =  1e5;     % Spring Coefficient 2[N/m]
F   =  3*sin(10*t);             %sinusoidal input
%F=5;                           %unit step input

dydt(1) = y(2);
dydt(2) = (1/m1)*(F+k1*y(3)  +  c1*y(4)  -  k1*y(1)  -  c1*y(2));
dydt(3) = y(4);
dydt(4) = (1/m2)*((-k1-k2)*y(3)  +  (-c1-c2)*y(4)  +  k1*y(1)  +  c1*y(2));

dydt    = dydt';

end