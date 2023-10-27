% This is an example of a script

clc; % clear screen
clear all; % clear all the stored variables

% Graphing - plot sin(x) on the interval [0,2*pi]
a = 0;
b = 2*pi;
n = 100;
h = (b-a)/n; % spacing

x = [0:h:2*pi];  % this is a vector
length(x) % should be n+1
y = sin(x);

plot(x,y);
xlabel('This is the x-axis');
ylabel('y = sin(x)');
pause; % look at the graph, then press space bar to continue to see the changes below.

clf; % Clear figure command
% Below are commands to alter the figure
set(0,'DefaultAxesFontName', 'Times New Roman');
axes('FontSize',14);
plot(x,y,'--r','LineWidth',1);
xlabel('This is the {\it x}-axis');
ylabel('y = sin(x)');
legend('y = sin(x)');