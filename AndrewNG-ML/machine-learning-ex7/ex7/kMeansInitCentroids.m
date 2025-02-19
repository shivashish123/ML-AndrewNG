function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));
check = zeros(size(X,1));
cnt = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%

while (cnt < K)
	x = randi([1,size(X,1)]);
	if(check(x)==0)
		check(x)=1;
		cnt++;
		centroids(cnt,:) = X(x,:);
	endif
endwhile



% =============================================================

end

