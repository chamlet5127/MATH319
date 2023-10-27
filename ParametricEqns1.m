clear all
close all
clc

% Shows an animations of parametric curve traced out for 0<=t<=2pi
a = 1;
b = 1;
c = 1;
d = 2;

t = linspace(0,2*pi,100);

x = @(t) a.*cos(b.*t);
y = @(t) c.*sin(d.*t);
for i = 1:length(t)
subplot(3,1,1)
    plot(x(t),y(t),'-k')
    hold on
    plot(x(t(i)),y(t(i)),'*r')
    hold off
subplot(3,1,2)
    plot(t,c.*sin(d.*t),'-k')
    hold on
    plot (t(i),c.*sin(d.*t(i)),'*r')
    xlabel('t')
    ylabel('y=c sin(dt)')
    hold off
subplot(3,1,3)
    plot(t,a.*cos(b.*t),'-k')
    hold on
    plot (t(i),a.*cos(b.*t(i)),'*r')
    xlabel('t')
    ylabel('x=a cos(bt)')
    hold off
drawnow
pause(0.1)
end