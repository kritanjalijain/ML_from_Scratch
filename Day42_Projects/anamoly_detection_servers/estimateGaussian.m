function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X

[m, n] = size(X);

mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% Compute the mean of the data and the variances
mu = ((1/m)*sum(X))';
sigma2 = ((1/m)*sum((X-mu').^2))';

% =============================================================


end
