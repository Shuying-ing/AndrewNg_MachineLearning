function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


% Solution 1
for k = 1:K
    total = zeros(1, n);
    count = 0;
    for i = 1:m
        if idx(i) == k
            total = total + X(i, :);
            count = count + 1;
        end
    end
    centroids(k, :) = total / count;
end


% Solution 2
% use a vectorized implementation that does not use such a loop
% for i = 1:K
%     %返回矩阵idx里，值等于i的元素的位置索引
% 	idx_index = find(idx == i);
% 	ck = size(idx_index,1);
% 	centroids(i,:) = sum(X(idx_index, :),1) ./ ck;
% end


% =============================================================


end

