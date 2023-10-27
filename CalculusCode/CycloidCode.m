close all
clear all
clc

set(0,'DefaultAxesLineStyleOrder','-|-.|--|:','DefaultLineLineWidth',2)
set(0,'DefaultLineMarkerSize',20) % Change this to change the size of the marker
set(0,'DefaultTextFontSize',24)
set(0,'DefaultAxesFontSize',24)
% get the screen size for plotting
screen_size = get(0, 'ScreenSize');

% This plots the path of a cycloid of radius r along a path

r=1;                                            % Radius of the circle
theta=linspace(0, 6*pi, 500);                   % Define the parameter
% Note you could also do this by defining the 2pi in the argument and then
% running it through 0 to n;
x = r+r.*theta - r.*sin(theta);             
y = r- r.*cos(theta);
figure(1)
plot(r+r*cos(theta),r+r*sin(theta)) % plot a circle just to check
hold on
% Try to make it look less distored
set(1, 'Position', [0 0 0.75*screen_size(3) 0.15*screen_size(4) ] );
for i = 1:length(x)
    % Plot the translated circle
    plot(r*theta(i)+r+r*cos(theta),r+r*sin(theta),'b-','LineWidth',3) 
    hold on
    % Plot the full path
    plot(x(1:i),y(1:i),'ok')
    % Highlight the point on the circle in blue
    plot(x(i),y(i),'ob','MarkerFaceColor','b')
    % Set the axes
    axis([0 x(end) 0 2*r])
    pause(0.01)
    hold off
end