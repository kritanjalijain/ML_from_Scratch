function g = sigmoid(z)

% You need to return the following variables correctly 
g = zeros(size(z));
g = 1 ./ (1 + exp(-z));

% =============================================================

end
