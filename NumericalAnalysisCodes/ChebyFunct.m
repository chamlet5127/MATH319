% % Shows polynomial fluctuations as the number of nodes increases over
% % a symmetric interval. Top are evenly spaced, bottom are Chebyshev.
% % uses Lagrange form to evaluate. Clunky, but clearer for teaching. 

clear all
close all
clc


set(0,'DefaultAxesFontSize', 18)           
set(0,'DefaultTextFontSize', 18)
set(0,'DefaultLineLineWidth',4)
set(0,'DefaultAxesLineStyleOrder','-|-.|--|:')

screen_size = get(0, 'ScreenSize');                                 % Grab the screen size


a = -5;
b = 5;
x = linspace(-5,5,1000);

figure(1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % nodes = [-5 5];
n= 1
for i = 1:n+1
   
    nodes(i) = cos((2*(i-1)+1)./(2.*n+2).*pi);
    
    
end
nodes= (a+b)./2 + (b-a)/2.*nodes;
data_points = 1.0./(1+nodes.^2);
l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1));
subplot(2,2,1)
plot(x,1./(1+x.^2),'k')
hold on
plot(nodes,data_points,'*k','MarkerSize',12)
axis([-5 5 -2 2])
plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2));
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% % export_fig('Cheby1','-pdf','-nocrop') % save the plot as a pdf

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n= 2
for i = 1:n+1
   
    nodes(i) = cos((2*(i-1)+1)./(2.*n+2).*pi);
    
    
end
nodes= (a+b)./2 + (b-a)/2.*nodes;

data_points = 1.0./(1+nodes.^2);
l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2)).*(x-nodes(3))./(nodes(1)-nodes(3));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1)).*(x-nodes(3))./(nodes(2)-nodes(3));
l_2 = @(x) (x-nodes(1))./(nodes(3)-nodes(1)).*(x-nodes(2))./(nodes(3)-nodes(2));
subplot(2,2,2)
plot(x,1./(1+x.^2),'k')
hold on
plot(nodes,data_points,'*k','MarkerSize',12)
axis([-5 5 -2 2])

plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2)+l_2(x).*data_points(3));
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% % export_fig('Cheby2','-pdf','-nocrop') % save the plot as a pdf

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n= 3
for i = 1:n+1
   
    nodes(i) = cos((2*(i-1)+1)./(2.*n+2).*pi);
    checknode(i) = sin((2*(i-1)+1)./(2.*n+2).*pi)

    
end
% % close all
% % plot(nodes,checknode)
keyboard
nodes= (a+b)./2 + (b-a)/2.*nodes;
data_points = 1.0./(1+nodes.^2);
l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2)).*(x-nodes(3))./(nodes(1)-nodes(3)).*(x-nodes(4))./(nodes(1)-nodes(4));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1)).*(x-nodes(3))./(nodes(2)-nodes(3)).*(x-nodes(4))./(nodes(2)-nodes(4));
l_2 = @(x) (x-nodes(1))./(nodes(3)-nodes(1)).*(x-nodes(2))./(nodes(3)-nodes(2)).*(x-nodes(4))./(nodes(3)-nodes(4));
l_3 = @(x) (x-nodes(1))./(nodes(4)-nodes(1)).*(x-nodes(2))./(nodes(4)-nodes(2)).*(x-nodes(3))./(nodes(4)-nodes(3));
subplot(2,2,3)
plot(x,1./(1+x.^2),'k')

hold on
plot(nodes,data_points,'*k','MarkerSize',12)
axis([-5 5 -2 2])

% % axis([-5 5 -20 20])
plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2)+l_2(x).*data_points(3)+l_3(x).*data_points(4));
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% % export_fig('Cheby3','-pdf','-nocrop') % save the plot as a pdf


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n= 4
for i = 1:n+1
   
    nodes(i) = cos((2*(i-1)+1)./(2.*n+2).*pi);
    
    
end
nodes= (a+b)./2 + (b-a)/2.*nodes;

data_points = 1.0./(1+nodes.^2);
l_0 = @(x) (x-nodes(2))./(nodes(1)-nodes(2)).*(x-nodes(3))./(nodes(1)-nodes(3)).*(x-nodes(4))./(nodes(1)-nodes(4)).*(x-nodes(5))./(nodes(1)-nodes(5));
l_1 = @(x) (x-nodes(1))./(nodes(2)-nodes(1)).*(x-nodes(3))./(nodes(2)-nodes(3)).*(x-nodes(4))./(nodes(2)-nodes(4)).*(x-nodes(5))./(nodes(2)-nodes(5));
l_2 = @(x) (x-nodes(1))./(nodes(3)-nodes(1)).*(x-nodes(2))./(nodes(3)-nodes(2)).*(x-nodes(4))./(nodes(3)-nodes(4)).*(x-nodes(5))./(nodes(3)-nodes(5));
l_3 = @(x) (x-nodes(1))./(nodes(4)-nodes(1)).*(x-nodes(2))./(nodes(4)-nodes(2)).*(x-nodes(3))./(nodes(4)-nodes(3)).*(x-nodes(5))./(nodes(4)-nodes(5));
l_4 = @(x) (x-nodes(1))./(nodes(5)-nodes(1)).*(x-nodes(2))./(nodes(5)-nodes(2)).*(x-nodes(3))./(nodes(5)-nodes(3)).*(x-nodes(4))./(nodes(5)-nodes(4));
subplot(2,2,4)
plot(x,1./(1+x.^2),'k')

hold on
plot(nodes,data_points,'*k','MarkerSize',12)
axis([-5 5 -2 2])

% % axis([-5 5 -20 20])
plot(x,l_0(x).*data_points(1)+l_1(x).*data_points(2)+l_2(x).*data_points(3)+l_3(x).*data_points(4)+l_4(x).*data_points(5));


set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] ); % Resize the figure window
% % export_fig('Cheby4','-pdf','-nocrop') % save the plot as a pdf
