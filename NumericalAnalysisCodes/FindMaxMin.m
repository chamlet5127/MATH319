tic
% This find the smallest and largest numbers (approximately) 
% That matlab can calculate. And times it for some reason.
x = 0.9999999999999999;
while abs(x) ~= Inf
   
    maxx = x;
    x = x*2;
    
end
    
display(maxx);

x= 1.0;
while x ~= 0
    
    minx = x;
    x = x/2;
    
end

display(minx)
    
toc