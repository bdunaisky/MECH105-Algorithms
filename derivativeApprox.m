function [output1] = derivativeApprox(x,x0,x1,x2,y0,y1,y2)
%derivativeApprox estimates the derivative of unequally spaced points.
output1 = y0*(2*x-x1-x2)/((x0-x1)*(x0-x2))+y1*(2*x-x0-x2)/((x1-x0)*(x1-x2))+y2*(2*x-x0-x1)/((x2-x0)*(x2-x1));
end

