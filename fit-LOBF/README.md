# Fit Line of Best Fit (4/28/2021)

Fit Line of Best Fit or findm as it is referenced in MATLAB, is a function I created to determine the slope, yintercept, sum of residuals, and coefficient of determination given a series of points. These values were inefficient to calculate by hand, so I required a program to do this automatically.

### Usage
findm returns the slope, y intercept, sum of residuals, and coefficient of determination for a series of points.
The code to call the function is:

`
[m,b,st,sr,rsq] = findm(xarray,yarray)
`

Where:
- m is the slope of the line of best fit
- b is the y-intercept of the line of best fit
- st is the sum of residuals
- sr is the sum of the squares of the residuals
- rsq is the coefficient of determination for the line of best fit, or r-squared value
- xarray is a vector of the independant variable
- yarray is a vector of the function values with respect to xarray

### Example Use
```
%Use findm to determine the r-squared value of my table of points
xarray = [12 13 14 15 16 18];
yarray = [12 13 13 16 17 19];
[m,b,st,sr,rsq] = findm(xarray,yarray);
disp(rsq)
```
In this case, MATLAB would output 0.9485 as the r-squared value of the line of best fit

