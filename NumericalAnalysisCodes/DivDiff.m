close all
clear all
clc
% This calculates the divided difference table for Newton polynomials. 
nodes = linspace(-5,5,9);       % equally spaced nodes
f = @(x) (1+x.^2).^(-1);        % the function being interpolated
values = f(nodes);              % evaluate at the function

n = length(nodes);              % number of nodes

A = zeros(n,n)                  % initialize table

A(:,1) = values;                % fill in first column

for j = 2:n
   
    for i = 1:n-j+1
           % When this is finished, the cofficients are the entries of the first row     
           A(i,j) =( A(i+1,j-1) - A(i,j-1))./(nodes(j+i-1)-nodes(i));
    
    end
end
% grab the cofficients
coeff = A(1,:)

pi_0 = @(x) (x-nodes(1));                           % Newton polynomials? 
pi_1 = @(x) (x-nodes(1)).*(x-nodes(2));
