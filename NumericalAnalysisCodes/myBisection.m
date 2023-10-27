%Problem 1
function myBisection(a,b,fx,n)
format long
k=0;


if fx(a)*fx(b) >=0; %We need the two to have different signs, otherwise a root doesn't exist between them.
    return
    
else 
    while n>0
        c = (a + b)/2; %this establishes our midpoint c which we will use to continuously bisect.
        if sign(fx(c)) == sign(fx(a)); 
            a = c; %we set c as our new a and continue with [c,b] as our new interval
            n = n - 1;
            k = k + 1;
            fprintf('k = %d; [a,b] = [%f, %f]; f(%f) = %f; f(%f) = %f \n', k, a, b, a, fx(a), b, fx(b)) %This prints the desired results when we run our code
            
            %d is an integer
            %f is a decimal
            
        else            %this establishes the case where our root falls in the interval (b,c) rather than (a,b)
            b = c; %we set c as our new b and continue with [a,c] as our new interval
            n = n-1;
            k = k+1;
            fprintf('k = %d; [a,b] = [%f, %f]; f(%f) = %f; f(%f) = %f \n', k, a, b, a, fx(a), b, fx(b))
        end
    end
end


    
    
    