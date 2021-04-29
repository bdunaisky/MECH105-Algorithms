function [m,b,st,sr,rsq] = findm(xarray,yarray)
%Calculates the slope,yintercept,sum of residuals, and coefficient of determination for a series of points.
if length(xarray) ~= length(yarray)
    error("The entered arrays must be of equal length.");

else
    xbar = sum(xarray)/length(xarray);
    ybar = sum(yarray)/length(yarray);
    num = 0;
    dem = 0;
    sr = 0;
    st = 0;
    for k = 1:length(xarray)
        %numerator
        numx = (xarray(k) - xbar);
        numy = (yarray(k) - ybar);
        num = num + numy*numx;
        %denominator
        dem = dem + (xarray(k) - xbar)^2;
        %sum of residuals
        st = st + (yarray(k) - ybar)^2;
    end
    m = num/dem;
    b = ybar - (m*xbar);
    
    for k = 1:length(xarray)
        sr = sr + (yarray(k) -b -(m*xarray(k)))^2;
    end
    rsq = ((st-sr)/st);
        
end
end

