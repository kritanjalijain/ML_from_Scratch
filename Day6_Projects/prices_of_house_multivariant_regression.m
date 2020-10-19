%% Feature Normalization

clear ; close all; clc

% Load Data
data = load('data.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Print out some data points
fprintf('The first 10 examples from the dataset are: \n');
fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

fprintf('Program has been paused. Press enter to continue.\n');
pause;

% Scale features and set them to zero mean
fprintf('Normalizing Features \n');

[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];


%% Gradient Descent

alpha = 0.01;
num_iters = 400;
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Estimate the price of a 1650 sq-ft, 3 br house
price = 0; 
X1 = ([1650 3] - mu) ./ sigma;
X1 = [1 X1]
price = X1 * theta;
% ============================================================

fprintf(['Predicted price of a 1650 sq-ft, 3 br house ''\n $%f\n'], price);

fprintf('Program has been paused. Press enter to continue.\n');
pause;

%% Normal Equations

% Load Data
data = csvread('data.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');


% Estimate the price of a 1650 sq-ft, 3 br house
price = 0;
X1 = [1 1650 3];
price = X1 * theta;

fprintf(['Predicted price of a 1650 sq-ft, 3 br house ''\n $%f\n'], price);

