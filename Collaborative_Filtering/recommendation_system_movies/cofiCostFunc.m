function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%Collaborative filtering cost function


% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

        
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

Theta_grad = Theta_grad + lambda*Theta; % Nu x n

for i = 1:size(X,1),
    idx = find(R(i,:)==1);
    Theta_temp = Theta(idx,:);
    Y_temp = Y(i,idx);
    X_grad(i,:) = ((X(i,:)* Theta_temp') - Y_temp) * Theta_temp + lambda * X(i,:);
end;

for i = 1:size(Theta,1);
    idx = find(R(:,i)==1);
    X_temp = X(idx,:);
    Y_temp = Y(idx,i);
    Theta_grad(i,:) = ((X_temp * Theta(i,:)') - Y_temp)' * X_temp + lambda * Theta(i,:);
end;

J = (1/2) * sum(sum((((X * Theta') .* R) - Y.*R).^2)) + (lambda/2) * sum(sum((Theta.^2))) + (lambda/2) * sum(sum((X.^2)));

% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end