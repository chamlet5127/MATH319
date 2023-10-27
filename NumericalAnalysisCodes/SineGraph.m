close all
clear all
clc
% This plots the function f(x)=sin(x) along with its Taylor polynomials up
% to degree 5 centered at x0=0 and over -pi to pi
x = -pi:0.01:pi;
subplot(4,1,1)
plot(x,sin(x),'LineWidth',3)
hold on
xlabel('x')
legend('f(x)=sin(x)','Location','EastOutside')
axis([-4 4 -2 2])

subplot(4,1,2)
plot(x,sin(x),'LineWidth',3)
hold on
plot(x,x,'r','LineWidth',3)
xlabel('x')
legend('f(x)=sin(x)','S_1 = x','Location','EastOutside')
axis([-4 4 -2 2])

subplot(4,1,3)
plot(x,sin(x),'LineWidth',3)
hold on
plot(x,x-x.^3/6,'g','LineWidth',3)
xlabel('x')
legend('f(x)=sin(x)','S_3 = x - x^3/6','Location','EastOutside')
axis([-4 4 -2 2])

subplot(4,1,4)
plot(x,sin(x),'LineWidth',3)
hold on
plot(x,x-x.^3/6+x.^5./120,'k','LineWidth',3)
xlabel('x')
axis([-4 4 -2 2])
legend('f(x)=sin(x)','S_5','Location','EastOutside')

screen_size = get(0, 'ScreenSize');
set(1, 'Position', [0 0 0.5*screen_size(3) 0.75*screen_size(4) ] );