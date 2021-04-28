# MECH105-Algorithms (4/28/2021)

The following are algorithms I created over the course of MECH 105 Numerical Methods. A basic overview of each function can be found below:

### **False Position**
 or falsePosition as it is referenced in MATLAB, is my first real function I created to find a specific zero of a function given the proper parameters. This closed root finding method is reliable but slow, making it a perfect candidate for a dedicated function. 

### **LU Decomposition**
 or luFactor as it is referenced in MATLAB, is a function that can interpret and solve systems of equations using elimination. This function is reliable as it is capable of pivoting the starting matrix and then generating upper and lower matrices for the user.
 
### **Simpson's 1/3rd Rule**
 or Simpson as it is referenced in MATLAB, is a function I designed to numerically integrate a series of points or function. As the name implies, the function uses a combination of Simpson's 1/3rd rule and the trapezoidal rule to reliably integrate most functions. 

### **Unequally Spaced Derivative Approximation**
 or derivativeApprox as it is referenced in MATLAB, is a function I created capable of fitting a second-order Lagrange polynomial to three adjacent points. The function used is small but computationally intensive, so I decided it worthwhile to create a function capable of reliably doing these computations.
 
### **Fit Line of Best Fit**
 or findm as it is referenced in MATLAB, is a function I created to determine the slope, yintercept, sum of residuals, and coefficient of determination given a series of points. These values were inefficient to calculate by hand, so I required a program to do this automatically. 
