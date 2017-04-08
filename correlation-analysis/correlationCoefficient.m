function corrcoef = correlationCoefficient( x, y )

covar = covariance( x, y );

sx = (sum((x - mean(x)).^2)/(length(x) - 1))^0.5;
sy = (sum((y - mean(y)).^2)/(length(y) - 1))^0.5;

corrcoef = covar/(sx*sy);

end