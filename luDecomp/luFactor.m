function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix

format long

[m,n] = size(A);

%Inital Error Check
if m ~= n, error ('Matrix A must be square.'); end

%Create necessary outputs
U = A;
L = eye(m,n);


%Pivot Matrix
P = eye(m,n);
x = [A(1,1) A(2,1) A(3,1)];
[y,j] = max(abs(x));

%Preform Partial Pivot
if j~=1
 
    O=P;
    P(1,1) = P(j,1);P(1,2) = P(j,2); P(1,3) = P(j,3);
    P(j,1) = O(1,1);P(j,2) = O(1,2); P(j,3) = O(1,3)
    
    A = P*A
end

    
%Eliminate A(2,1) and A(3,1)
for i = 2:3
    factor = [A(i,1)/A(1,1)];
    
    L(i,1) = factor;
    
    C = [A(1,1)*factor,A(1,2)*factor,A(1,3)*factor];
    U(i,1) = A(i,1) - C(1,1); U(i,2) = A(i,2) - C(1,2); U(i,3) = A(i,3) - C(1,3)
end
    
factor = [U(3,2)/U(2,2)];
    
    C = [0,U(2,2)*factor,U(2,3)*factor];
    U(3,2) = U(3,2) - C(1,2); U(3,3) = U(3,3) - C(1,3)
    L(3,2) = factor;
  
end
