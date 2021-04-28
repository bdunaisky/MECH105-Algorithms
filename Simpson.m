function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

I = 0;

%check for same length:
if length(x) ~= length(y)
    error("The lengths of each input must be equal.")
end

%check for equal spacing
l = x(1);
i = length(x);
s = x(i);
x1 = linspace(l,s,i);
if sum(x1) ~= sum(x) %there are some ways around this check, but comparing the arrays directly did not work
    error("Input x must be equally spaced.")
end

%check for even or odd
e = i/2;
o = floor(e);
    
%Use trapezoid rule for only two points
if length(x) == 2
    warning("You have only entered two data points. The trapezoid rule will be used.")
    I = (x(2) - x(1)) * (sum(y)/2)
    

%Simpson's 1/3rd
else
    dx = diff(x);
    h = dx(1);
    y1 = y(2:2:i-1);
    y2 = y(3:2:i-2);
    I = (y(1) + 4*sum(y1) + 2*sum(y2) + y(i)) * (h/3)    %4/7/21 Fixed Issue With Spacing
    if e==o
        I = I + (x(i) - x(i-1)) * ((y(i)+y(i-1))/2);
        warning("Trapezoidal rule will be used due to an odd amount of points.")
    end
end
   
end
