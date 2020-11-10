%% Initialization
clear ; close all; clc

%% =============== Loading and Visualizing Data ================

fprintf('Loading and Visualizing Data ...\n')

load('data1.mat');
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ==================== Training Linear SVM ====================

load('data1.mat');

fprintf('\nTraining Linear SVM ...\n')

C = 1; %Play around with C
model = svmTrain(X, y, C, @linearKernel, 1e-3, 20);
visualizeBoundaryLinear(X, y, model);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =============== Implementing Gaussian Kernel ===============

fprintf('\nEvaluating the Gaussian Kernel ...\n')

x1 = [1 2 1]; x2 = [0 4 -1]; sigma = 2;
sim = gaussianKernel(x1, x2, sigma);

fprintf(['Gaussian Kernel between x1 = [1; 2; 1], x2 = [0; 4; -1], sigma = %f :' ...
         '\n\t%f'], sigma, sim);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =============== Visualizing Dataset 2 ================

fprintf('Loading and Visualizing Data ...\n')

load('data2.mat');
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Training SVM with RBF Kernel (Dataset 2) ==========

fprintf('\nTraining SVM with RBF Kernel (this may take 1 to 2 minutes) ...\n');

load('data2.mat');

% SVM Parameters
C = 1; sigma = 0.1;

% Set the tolerance and max_passes lower here so that the code will run
% faster. However, in practice, you will want to run the training to
% convergence.
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
visualizeBoundary(X, y, model);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =============== Visualizing Dataset 3 ================

fprintf('Loading and Visualizing Data ...\n')

load('data3.mat');
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Training SVM with RBF Kernel (Dataset 3) ==========

load('data3.mat');

% Try different SVM Parameters here
[C, sigma] = dataset3Params(X, y, Xval, yval);

% Train the SVM
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
visualizeBoundary(X, y, model);

fprintf('Program paused. Press enter to continue.\n');
pause;

