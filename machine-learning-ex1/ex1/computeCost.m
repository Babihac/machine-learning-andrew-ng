function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
prediction = 0;
for j = 1:length(X),
  prediction = prediction + (theta' * X(j,:)' - y(j))^2;
endfor
%prediction = theta' * X
% You need to return the following variables correctly 
J = prediction/(2*length(X));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
