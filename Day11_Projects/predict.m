function p = predict(theta, X)

%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

p = zeros(m, 1);

h_x = sigmoid(X*theta);
p=(h_x>=0.5);

% =========================================================================

end
