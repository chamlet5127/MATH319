clear all
close all 
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script will show how Taylor polynomials can be used to approximate
% function values.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

set(0,'DefaultAxesLineStyleOrder','-|-.|--|:','DefaultLineLineWidth',3)
set(0,'DefaultTextFontSize',18)
set(0,'DefaultAxesFontSize',18)

screen_size = get(0, 'ScreenSize');

% function domain
x = -1:0.01:1;

% function to be approximated
f = @(x) exp(x);
% f'(x) 
fp = @(x) exp(x);
% f''(x)
fpp = @(x) exp(x);


% center of approximation
a = 0;

% polynomial approximations
% linear approximation
p1 = @(x) f(a) + fp(a).*(x-a);
% quadratic approximation
p2 = @(x) f(a) + fp(a).*(x-a) + 0.5.*fpp(a).*(x-a).^2;


% plot things 
figure(1)
%subplot(1,3,1)
plot(x,f(x),'r')
hold on
plot(x,p1(x),'b')
plot(a,f(a),'b*')
xlabel('x')
ylabel('y')