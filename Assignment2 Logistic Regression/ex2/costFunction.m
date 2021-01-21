function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
sigma_1 = 0;
sigma_2 = 0;
for k = 1:m
    h=sigmoid(theta'*X(k,:)'); % probably wrong here, cus zero works but others doesn't
    sigma_1 = sigma_1 + -y(k)*log(h)-(1-y(k))*log(1-h);
    sigma_2 = sigma_2 + (h-y(k)).*X(k,:);
end
J = sigma_1/m;
grad = sigma_2/m;
% =============================================================

end
