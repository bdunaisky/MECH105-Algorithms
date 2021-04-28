function [estimate] = derivativeApprox(x,x0,x1,x2,y0,y1,y2)
%derivativeApprox estimates the derivative of unequally spaced points.
%You require at least three points. x is the point you are estimating the derivative around.
estimate = y0*(2*x-x1-x2)/((x0-x1)*(x0-x2))+y1*(2*x-x0-x2)/((x1-x0)*(x1-x2))+y2*(2*x-x0-x1)/((x2-x0)*(x2-x1));
end

