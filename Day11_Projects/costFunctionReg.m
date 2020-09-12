function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization

m = length(y); 

J = 0;
grad = zeros(size(theta));

z = X * theta;      % m x 1
h_x = sigmoid(z);   % m x 1 
  
J = (1/m)*sum((-y.*log(h_x))-((1-y).*log(1-h_x))) + (lambda/(2*m))*sum(theta(2:end).^2); % scalar

grad(1) = (1/m)* (X(:,1)'*(h_x-y));                                  % 1 x 1
grad(2:end) = (1/m)* (X(:,2:end)'*(h_x-y))+(lambda/m)*theta(2:end);  % n x 1

% =============================================================

end
