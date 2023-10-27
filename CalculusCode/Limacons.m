close all
clear all
clc

% r = 1+c(sin(t))
% c = gives circle
% -1 <= c <= 1 give cartiods
% |c| > 1 limacon

theta=linspace(0,2*pi,100);
c = 1.3
r = @(t) 1 +c*sin(t);

polarplot(theta,r(theta))