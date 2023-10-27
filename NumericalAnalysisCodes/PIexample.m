close all
clear all
clc

% Set some of the plotting options to defaults that I prefer: 
% This shows how the Lagrange polynomials are constructed, then weighted,
% then combined to interpolate the nodes.

set(0,'DefaultAxesFontSize', 18)           
set(0,'DefaultTextFontSize', 18)
set(0,'DefaultLineLineWidth',2)
set(0,'DefaultAxesLineStyleOrder','-|-.|--|:')

x_0 = 1.4;
x_1 = 1.25;
y_0 = 3.7;
y_1 = 3.9;
% Defined the points

% construct cardinal polynomials
l_0 = @(x) (x-x_1)./(x_0-x_1);
l_1 = @(x) (x-x_0)./(x_1-x_0);

% discretize for plotting
x = 1:0.01:1.6;
figure
% plot first weighted polynomial
plot(x,l_0(x)*y_0,'r')

grid on
hold on
% plot second weighted polynomial
plot(x,l_1(x)*y_1,'b')
% plot the combination of the polynomial
plot(x,l_0(x)*y_0+l_1(x)*y_1,'k')
% label things
legend('l_0(x)y_0','l_1(x)y_1','p(x)=l_0(x)*y_0+l_1(x)*y_1')
legend('p(x)=l_0(x)*y_0+l_1(x)*y_1')

% Plot relevant points
plot(x_0,1,'or')
plot(x_1,1,'ob')
plot(x_1,0,'or')
plot(x_0,0,'ob')
plot(x_0,y_0,'*k')
plot(x_1,y_1,'*k')
axis([1 1.6 -1 5])
screen_size = get(0, 'ScreenSize');                                 % Grab the screen size

set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window

% % export_fig('Pxbeg','-pdf','-nocrop')                               % save the plot as a pdf
