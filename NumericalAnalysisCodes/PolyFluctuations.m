% % polynomial fluctuations
% This script shows the fluctuations that can arise when you're trying to
% interpolate points with polynomials of increasing degree
clear all
close all
clc


set(0,'DefaultAxesFontSize', 18)           
set(0,'DefaultTextFontSize', 18)
set(0,'DefaultLineLineWidth',4)
set(0,'DefaultAxesLineStyleOrder','-|-.|--|:')

screen_size = get(0, 'ScreenSize');                                 % Grab the screen size



nodes = [0, 8, 3, 4, 1];
data_points = [8, 0, 2, 6, 12];
x = linspace(0,8,800);

figure(1)

plot(nodes,data_points,'ok','MarkerSize',12,'MarkerFaceColor','black')


polyfit0= data_points(1).*ones(size(x));



l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1));

hold on
axis([0 8 -5 35])
plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2));
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% export_fig('Poly1','-pdf','-nocrop') % save the plot as a pdf

pause(0.5)

l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2)).*(x-nodes(3))./(nodes(1)-nodes(3));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1)).*(x-nodes(3))./(nodes(2)-nodes(3));
l_2 = @(x) (x-nodes(1))./(nodes(3)-nodes(1)).*(x-nodes(2))./(nodes(3)-nodes(2));

plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2)+l_2(x).*data_points(3));
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% % export_fig('Poly2','-pdf','-nocrop') % save the plot as a pdf
pause(0.5)

l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2)).*(x-nodes(3))./(nodes(1)-nodes(3)).*(x-nodes(4))./(nodes(1)-nodes(4));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1)).*(x-nodes(3))./(nodes(2)-nodes(3)).*(x-nodes(4))./(nodes(2)-nodes(4));
l_2 = @(x) (x-nodes(1))./(nodes(3)-nodes(1)).*(x-nodes(2))./(nodes(3)-nodes(2)).*(x-nodes(4))./(nodes(3)-nodes(4));
l_3 = @(x) (x-nodes(1))./(nodes(4)-nodes(1)).*(x-nodes(2))./(nodes(4)-nodes(2)).*(x-nodes(3))./(nodes(4)-nodes(3));

plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2)+l_2(x).*data_points(3)+l_3(x).*data_points(4));
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% % export_fig('Poly3','-pdf','-nocrop') % save the plot as a pdf
pause(0.5)

l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2)).*(x-nodes(3))./(nodes(1)-nodes(3)).*(x-nodes(4))./(nodes(1)-nodes(4)).*(x-nodes(5))./(nodes(1)-nodes(5));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1)).*(x-nodes(3))./(nodes(2)-nodes(3)).*(x-nodes(4))./(nodes(2)-nodes(4)).*(x-nodes(5))./(nodes(2)-nodes(5));
l_2 = @(x) (x-nodes(1))./(nodes(3)-nodes(1)).*(x-nodes(2))./(nodes(3)-nodes(2)).*(x-nodes(4))./(nodes(3)-nodes(4)).*(x-nodes(5))./(nodes(3)-nodes(5));
l_3 = @(x) (x-nodes(1))./(nodes(4)-nodes(1)).*(x-nodes(2))./(nodes(4)-nodes(2)).*(x-nodes(3))./(nodes(4)-nodes(3)).*(x-nodes(5))./(nodes(4)-nodes(5));
l_4 = @(x) (x-nodes(1))./(nodes(5)-nodes(1)).*(x-nodes(2))./(nodes(5)-nodes(2)).*(x-nodes(3))./(nodes(5)-nodes(3)).*(x-nodes(4))./(nodes(5)-nodes(4));
plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2)+l_2(x).*data_points(3)+l_3(x).*data_points(4)+l_4(x).*data_points(5));
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% % export_fig('Poly4','-pdf','-nocrop') % save the plot as a pdf
