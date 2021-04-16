function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier.

m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];

prob_mat = X * all_theta';     % 5000 x 10 == no_of_input_image x num_labels
[prob, p] = max(prob_mat,[],2); % m  x 1 

%returns maximum element in each row  == max. probability and its index for each input image
%p: predicted output (index)
%prob: probability of predicted output

% =========================================================================

end
