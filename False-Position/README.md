# False Position (4/28/2021)

False Position, or falsePosition as it is referenced in MATLAB, is my first real function I created to find a specific zero of a function given the proper parameters. This closed root finding method is reliable but slow, making it a perfect candidate for a dedicated function.

### Usage
falsePosition returns the root of a given function within a set of boundaries.
The code to call the function is:

`
root = falsePosition(func,x1,xu)
`

Where:
- root is the value outputed as the root
- func is the inputted function handle
- xl and xu are the upper and lower bounds, respectively

If desired, the function allows the user to specify the error tolerence in addition to the maximum iterations. The function is also has additional outputs:

`
[root,fx,ea,iter] = falsePosition(func,x1,xu,es,maxit)
`

Where:
- fx is the function value at the calculated root
- ea is the approximate relative error
- iter is the number of iterations
- es is the desired relative error
- maxit is the allowable iterations (default = 50)

### Example Use
```
%Use falsePosition to calculate root
func = @(x) 5*x^2 - 7
root = falsePosition(func,0,2);
disp(root)
```
In this case, MATLAB would output 1.1832 as the root of the function.

