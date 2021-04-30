# LU-Decomposition (4/28/2021)

LU-Decomposition, or luFactor as it is referenced in MATLAB, is a function that can interpret and solve systems of equations using elimination. This function is reliable as it is capable of pivoting the starting matrix and then generating upper and lower matrices for the user.

### Usage
Preforms LU-Decomposition with Pivoting
The code to call the function is:

`
[L, U, P] = luFactor(A)
`

Where:
- L is the lower triangular matrix
- U is the upper triangular matrix
- P is the permutation matrix
- A is the coefficient matrix

### Example Use
```
%Use luFactor to generate upper and lower triangular matrices
A = [1,2,3;4,5,6;7,8,9];
[L,U,P] = luFactor(A);
disp(L)
```
In this case, MATLAB would output a lower triangular matrix as part of the function.
