clc;
clear all;
%% input
tspan = [0 100];
x0 = [0 0 0 0];
%% solving

[T X]=ode45(@tsmds,tspan,x0);

%% Results
figure(1)
plot(T,X(:,1))
xlabel('t')
ylabel('x1')

figure(2)
plot(T,X(:,3))
xlabel('t')
ylabel('x2')