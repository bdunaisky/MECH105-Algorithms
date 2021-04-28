function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%False Position
%   [root,fx,ea,iter] = falsePosition(func,x1,xu,es,maxit,varargin):
%   uses the false position method to find the roots of the function

%input:
%func = the function in question
%x1, xu = lower and upper bounds
%es = desired relative error (default = 0.01%)
%maxit = maximum allowable iterations (default = 50)
%varargin = other variables used by function

%output:
%root = real root
%fx = function value at root
%ea = approximate relative error (%)
%iter = number of iterations

if nargin<3 %check if user entered function and bounds
    error('At least three arguments must be entered.')
end

test = func(xl,varargin{:})*func(xu,varargin{:}); %solve the function for both bounds, determine if there is an actual root
if test>0
    error('There is no root within these parameters. If you think this is a mistake, consider entering a bound with each sign.') %no error, or bounds are bad.
end

if nargin<4|isempty(es)
   es = 0.0001;  %automatically enter desired error if user did not specify (according to help text)
end
if nargin<5|isempty(maxit)
   maxit = 50; %automatically enter maximun iterations if user did not specify (according to help text)
end

iter = 0; %enter starting iterations
xr = xl; %I believe this to be a formating thing from the book so it was easy to understand the example variable. Keeping it because it keeps code clean, but is technically a useless step
ea = 100; %Assign current error as large

while(1)
    xrold = xr; %keep track of new and old values, allows for error calculation
    
    xr = xu - ((func(xu,varargin{:})*(xrold-xu))/(func(xrold,varargin{:})-func(xu,varargin{:}))); %false position formula, with extra input
    iter = iter + 1; %count total iterations
    if xr ~= 0,ea = abs((xr - xrold)/xr) * 100;end %finding error percent, needed
    test = func(xl,varargin{:}) * func(xr,varargin{:}); %find which side of the root guess is on
    
    %replace correct variable, upper or lower bound
    if test < 0
        xu = xr; 
    elseif test > 0
        xl = xr;
    else
        ea = 0; %for that one case where you hit exactly 0
    end
    if ea <= es | iter >= maxit %error fell below desired, root estimated/ran out of attempts.
        break
    end
end
root = xr; fx = func(xr, varargin{:}); %declare final root for printing

end
