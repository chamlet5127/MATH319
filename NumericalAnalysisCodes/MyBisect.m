% Bisection Method
% This is a simple code that performs bisection method and plots the errors
close all
clear all
clc

n = 12;                                             %Number of iterations
a = -2;                                             %Left endpoint
b = 3.1;                                            %Right endpoint
f = @(x) x.^3 - 2.5.*x - 4.011;                     %Function
%Evaluate endpoints
fb = f(b);                                          
fa = f(a);
%True root
r = 2.1;
%Perform bisection method
for i = 1:n
    % find midpoint
    c(i) = 0.5*(b+a);
    fc = f(c(i));
    % check for sign change
    % update endpoints accordingly
    if fc*fa < 0
        fb = fc;
        b = c(i);
    else
        fa = fc;
        a = c(i);
    end
    % calculate error
    myerror(i) = abs(c(i)-r);
    
end
 
% plot the error along a line of slope 1    
plot(log(myerror(1:end-1)),log(myerror(2:end)),'o')
xlabel('log|r-c_{n-1}|')
ylabel('log|r-c_{n}|')
hold on 
plot(log(exp(-25)):1:log(exp(0)),log(exp(-25)):1:log(exp(0)))