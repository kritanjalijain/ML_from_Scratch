%% Load data
clear;
load('data1.mat');
Y = (1:10) == y;

%%Launch neural network start app
nnstart

%% Predict digits using the trained network variable
i = randi(length(y));
ysim = net(X(i,:)');
[~,class] = max(ysim);
imshow(reshape(X(i,:),20,20))
fprintf('True class: %d  |  Predicted class: %d | Probability of match: %.1f%%',y(i),class,100*ysim(class));

%Train a custom network with regularization
% Change lambda and MaxIter to see how it affects the result
lambda = 0.1;
MaxIter = 60;
net = imageNet(X,Y,lambda,MaxIter);
[~,ysim] = max(net(X'));
fprintf('Training accuracy: %g%%',100*sum(y == ysim')/length(y));
