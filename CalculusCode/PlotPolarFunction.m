close all
clear all
clc
% Plot a cartioid in polar coordinates using MATLAB's polar plotting
% function
figure(1)
theta=linspace(0,2*pi,100);
% Cartioid 
r = @(t) 1+sin(t);

polarplot(theta,r(theta))
figure(2)
%now use cartesian
x = @(t) (1+sin(t)).*(cos(t))
y = @(t) (1+sin(t)).*(sin(t))
plot (x(theta),y(theta))

figure(3)
% Four leaved rose
r = @(t) cos(2*t);
polarplot(theta,r(theta))