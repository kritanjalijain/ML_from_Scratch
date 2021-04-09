function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 

X_rec = zeros(size(Z, 1), size(U, 1));

U_reduce = U(:,1:K);   % n x k
X_rec = Z * U_reduce'; % m x n

% =============================================================

end
