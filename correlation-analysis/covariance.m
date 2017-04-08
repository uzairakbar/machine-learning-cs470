function covar = covariance( x, y )

covar = (sum((x - mean(x)).*(y - mean(y))));
covar = covar/(length(x) - 1);

end