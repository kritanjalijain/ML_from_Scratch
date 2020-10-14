function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example

% Set K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);

for i = 1:size(X,1)
     temp = zeros(K,1);
     for j = 1:K
         temp(j)=sqrt(sum((X(i,:)-centroids(j,:)).^2));
     end
     [~,idx(i)] = min(temp); % idx(i) contains the index of the centroid closest to example i.
end

% =============================================================

end

