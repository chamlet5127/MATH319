clear all
close all
clc

% this traces out a parametric curve in 2D

x = @(t) sin(t)+0.5*sin(5*t)+0.25*cos(2.3*t);
y = @(t) cos(t)+0.5*cos(5*t)+0.25*sin(2.3*t);

t=linspace(0,20*pi,1000);
figure(1)
axis([-2 2 -2 2])
for i = 1:length(t)
    plot(x(t(i)),y(t(i)),'o','MarkerFaceColor','black','MarkerSize',4)
    axis([-2 2 -2 2])
    hold on
    drawnow
end
pause
figure(2)
plot(x(t),y(t))