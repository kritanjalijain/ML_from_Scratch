
data = load('microchipdata.txt');
X = data(:, [1, 2]); y = data(:, 3);

plotData(X, y);

hold on;

xlabel('Microchip Test 1')
ylabel('Microchip Test 2')

legend('y = 1', 'y = 0')
hold off;

% the mapFeature also adds a column of ones, so the intercept term is handled
X = mapFeature(X(:,1), X(:,2));

initial_theta = zeros(size(X, 2), 1);

lambda = 1;

% Compute and display initial cost and gradient for regularized logistic regression
[cost, grad] = costFunctionReg(initial_theta, X, y, lambda);
fprintf('Cost at initial theta (zeros): %f\n', cost);


initial_theta = zeros(size(X, 2), 1);

lambda = 100;

options = optimoptions(@fminunc,'Algorithm','Quasi-Newton','GradObj', 'on', 'MaxIter', 1000);

% Optimize
[theta, J, exit_flag] = fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);

plotDecisionBoundary(theta, X, y);
hold on;
title(sprintf('lambda = %g', lambda))

xlabel('Microchip Test 1')
ylabel('Microchip Test 2')

legend('y = 1', 'y = 0', 'Decision boundary')
hold off;

% Compute accuracy on our training set
p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);

