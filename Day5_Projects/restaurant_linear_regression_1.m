% Predict profits of Linear regression using batch graident descent algorithm

clear ; close all; clc

%% Plot Data

data = load('data.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); 
plotData(X, y);

fprintf('Program has been paused. Press enter to continue.\n');
pause;

%% Cost and Gradient descent 

X = [ones(m, 1), data(:,1)]; 
theta = zeros(2, 1); 
iterations = 1500;
alpha = 0.01;

fprintf('\nTesting the cost function \n')
% compute and display initial cost
J = computeCost(X, y, theta);
fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);

J = computeCost(X, y, [-1 ; 2]); %test
fprintf('\nWith theta = [-1 ; 2]\nCost computed = %f\n', J);

fprintf('Program has been paused. Press enter to continue.\n');
pause;

fprintf('\nRunning Gradient Descent \n')
% run gradient descent
theta = gradientDescent(X, y, theta, alpha, iterations);

fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);

% Plot the linear fit
hold on; 
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off 

% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);
predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n',...
    predict2*10000);

fprintf('Program has been paused. Press enter to continue.\n');
pause;

%% Visualizing J(theta_0, theta_1)
fprintf('Visualizing J(theta_0, theta_1) ...\n')

% Grid over which J is calculated
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
	  J_vals(i,j) = computeCost(X, y, t);
    end
end

J_vals = J_vals';
% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
