close all
clear all
clc
% This code shows the error distribution is better with Chebyshev
% nodes vs. equally spaced nodes. 
set(0,'DefaultAxesFontSize', 18)           
set(0,'DefaultTextFontSize', 18)
set(0,'DefaultLineLineWidth',2)
set(0,'DefaultAxesLineStyleOrder','-|-.|--|:')

x = linspace(-5,5,1000);

nodes = [-5:(10/8):5];
Rf = @(x) 1./(1+x.^2)
data_points = Rf(nodes);
subplot(2,1,1)
plot(x,Rf(x),'k')
hold on
plot(nodes,data_points,'ok','MarkerSize',10,'MarkerFaceColor','k')
v = polyinterp(nodes,data_points,x);
plot(x,v,'r');
title('Equally spaced nodes') 
legend('f(x)','nodes','p(x)','Location','EastOutside')
axis([-5 5 -1.5 1.5])

n = 8
for i = 1:n+1
   
    cnodes(i) = cos((2*(i-1)+1)./(2.*n+2).*pi);
    
    
end
a = -5;
b = 5;
cnodes= (a+b)./2 + (b-a)/2.*cnodes;
data_points = Rf(cnodes);
v = polyinterp(cnodes,data_points,x);
subplot(2,1,2)
plot(x,Rf(x),'k')
hold on
plot(cnodes,data_points,'ok','MarkerSize',10,'MarkerFaceColor','k')

plot(x,v,'b')
axis([-5 5 -1.5 1.5])
screen_size = get(0, 'ScreenSize');                                 % Grab the screen size
title('Chebyshev nodes')
legend('f(x)','nodes','p(x)','Location','EastOutside')

set(1, 'Position', [0 0 0.75*screen_size(3) 0.6*screen_size(4) ] ); % Resize the figure window

% % export_fig('CompareRunge','-pdf','-nocrop')                               % save the plot as a pdf
