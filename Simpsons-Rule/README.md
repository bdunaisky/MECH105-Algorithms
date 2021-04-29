# Simpson's 1/3rd Rule (4/28/2021)

Simpson's 1/3rd Rule, or 'Simpson' as it is referenced in MATLAB, is a function I designed to numerically integrate a series of points or function. As the name implies, the function uses a combination of Simpson's 1/3rd rule and the trapezoidal rule to reliably integrate most functions.

### Usage
Simpson returns the integral of a series of points using numerical integration.
The code to call the function is:

`
I = Simpson(x,y)
`

Where:
- I is the value outputed as the integral
- x is a vector of equally spaced independent variable
- y is the vector of fuction values with respect to x. Both vectors must be the same length

### Example Use
```
%Use simpson to find integral
x = [1:1:15];
y = [1,2,4,5,6,6,7,8,8,10,12,14,15,16,18];
I = Simpson(x,y);
disp(I)
```
In this case, MATLAB would output 122.3333
