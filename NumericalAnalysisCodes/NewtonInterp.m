close all
clear all
clc

% % % % % % Set some of the plotting options to defaults that I prefer: 

set(0,'DefaultAxesFontSize', 18)           
set(0,'DefaultTextFontSize', 18)
set(0,'DefaultLineLineWidth',4)
set(0,'DefaultAxesLineStyleOrder','-|-.|--|:')

x_0 = -1;
x_1 = -0.5;
x_2 = 0;
x_3 = 0.5
x_4 = 1;
% Construct the newton interpolating polynomials for these nodes.
mypi_0 = 1;

mypi_1 = @(x) 1.*(x-x_0);
mypi_2 = @(x) (x-x_0).*(x-x_1);
mypi_3 = @(x) (x-x_0).*(x-x_1).*(x-x_2);
mypi_4 = @(x) (x-x_0).*(x-x_1).*(x-x_2).*(x-x_3);
mypi_5 = @(x) (x-x_0).*(x-x_1).*(x-x_2).*(x-x_3).*(x-x_4);

x= linspace(-1,1,200);

plot(x,mypi_0*ones(size(x)))
hold on
plot(x,mypi_1(x))
plot(x,mypi_2(x))
plot(x,mypi_3(x))
plot(x,mypi_4(x))
plot(x,mypi_5(x))
legend('\pi_0(x)','\pi_1(x)','\pi_2(x)','\pi_3(x)','\pi_4(x)','\pi_5(x)','Location','NorthWest')
screen_size = get(0, 'ScreenSize');                                 % Grab the screen size

set(1, 'Position', [0 0 0.75*screen_size(3) 0.5*screen_size(4) ] ); % Resize the figure window
% % export_fig('NewtonPolys','-pdf','-nocrop') % save the plot as a pdf
