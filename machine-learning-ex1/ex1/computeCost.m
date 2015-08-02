function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
if size(theta)(1) == 1,
	% if the size of theta is 1xn
	% then transpose it
	theta = theta';
end;

if size(X)(1) != m,
	% if the size of X is nxm
	% then transpose it
	X = X';
end;

if size(y)(1) == 1,
	% if the size of y is 1xn
	% then transpose it
	y = y'
end;

% compute cost function
J = 1/(2*m) * sum( (X*theta - y).^2 );




% =========================================================================

end
