# Unequally Spaced Derivative Approximation (4/29/2021)

Unequally Spaced Derivative Approximation, or derivativeApprox as it is referenced in MATLAB, is a function I created capable of fitting a second-order Lagrange polynomial to three adjacent points. The function used is small but computationally intensive, so I decided it worthwhile to create a function capable of reliably doing these computations.

### Usage
derivativeApprox accepts three adjacent points as inputs and returns and numerically computes a derivative at a given point. 
The code to call the function is:

`
estimate = derivativeApprox(x,x0,x1,x2,y0,y1,y2)
`

Where:
- estimate is the numerically calculated derivative
- x is the point at which you are computing the derivative
- x0, x1, and x2 are the independent variables of three points
- y0, y1, and y2 are the dependent variables of the same three points

### Example Use
```
%Use derivative approx to calculate the derivative of three unequally spaced points at x=3
x = 3; x0 = 3; x1 = 5; x2 = 6; y0 = 4; y1 = 4; y2 = 4;
estimate = derivativeApprox(x,x0,x1,x2,y0,y1,y2);
disp(estimate)
```
In this case, MATLAB would output 0 as the derivative at the given point.
