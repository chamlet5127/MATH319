clf
close all
clear all
n = 20;
% This code performs Newton's rootfinding method. The last function will
% show the slow-down due to a repeated root. 

% % f = @(x) x.^3+x-2.*x.^2-3;
% % df = @(x) 3.*x.^2-4.*x+1;

% % f = @(x) 2.*x.^3-9.*x.^2+12.*x+15;
% % df = @(x) 6.*x.^2-18.*x+12;

f = @(x) x.^6 - x - 1;
df = @(x) 6.*x.^5 - 1;

% % f = @(x) x.^2./(x.^2+1);
% % df =@(x) 2*x./(x.^2+1).^2;

x= zeros(1,n+1);

x(1) = sqrt(3);

my_eps = 1e-16;
fx(1) = f(x(1));
for i = 1:n
    fp = df(x(i));
    % % %     this is a terrible test don't do this    
    % % %     if abs(fp)<my_eps
    % % %         break
    % % %     end
    % calculate the update term
    h = fx(i)/fp;
    % This test is better, check if the points are close together
    if abs(h)<my_eps
        display('Break!')
        break
    end
    % iterate
    x(i+1) = x(i) - h;
    % update f
    fx(i+1) = f(x(i+1));
end
format long
% Plot the error against a line of slope 2. 
% Repeated roots will drop the slope to 1. 
figure(1)
plotx = linspace(-2,2,100);
plot(plotx,f(plotx))
figure(2)
myerr = abs(fx(2:end)-fx(1:end-1));
plot(log(myerr(1:end-1)),log(myerr(2:end)),'*')
hold on
plot(log(exp(-20)):1:log(exp(5)),log(exp(-40)):2:log(exp(10)))
xlabel('log|r-c_{n-1}|')
ylabel('log|r-c_{n}|')
legend('Error','y=2x','Location','NorthWest')