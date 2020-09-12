function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression

m = length(y); 

J = 0;
grad = zeros(size(theta));

% Note to self: grad should have the same dimensions as theta

z = X * theta;      % m x 1
h_x = sigmoid(z);   % m x 1 
  
J = (1/m)*sum((-y.*log(h_x))-((1-y).*log(1-h_x))); % scalar
  
grad = (1/m)* (X'*(h_x-y)); 

% =============================================================

end
