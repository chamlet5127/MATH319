close all
clear all
clc

t=linspace(0,2*pi,1000);
% Try a = -2, -1, -0.5, 0, 0.5, 1, and 2
a = -0.2;
x = @(t) a + cos(t);
y = @(t) a* tan(t) + sin(t);

plot(x(t),y(t),'-')
axis([-4 4 -4 4])