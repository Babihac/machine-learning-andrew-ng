function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
    %prediction0 = 0;
    %prediction1 = 0;
    %for j = 1:length(X),
      %prediction0 = prediction0 + ((theta' * X(j,:)' - y(j)) * X(j,1));
     % prediction1 = prediction1 + ((theta' * X(j,:)' - y(j)) * X(j,2));
    %end
    %temp0 = theta(1) - (alpha * prediction0) / m;
    %temp1 = theta(2) - (alpha * prediction1) / m;
   % prediction0;
    %theta(1) = temp0;
    %theta(2) = temp1; 
    delta = (1/m)*sum(X.*repmat((X*theta - y), 1, size(X,2)));
    theta = (theta' - (alpha * delta))';

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration   
    J_history(iter) = computeCost(X, y, theta);

end
history = J_history;
end
