function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.

[m n] = size(X);
centroids = zeros(K, n);

for i = 1:K
    idx_i = idx==i;       %indexes of all the input which belongs to cluster j
    centroids(i,:) = mean(X(idx_i,:)); % calculating mean using built-in function
end

% =============================================================


end

