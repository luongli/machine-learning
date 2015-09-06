function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
X = [ones(m, 1) X];

% Theta1 25x401
% Theta2 10x26

% compute hx of second layer, the first hidden layer
hx1 = sigmoid(X*(Theta1')); % size 5000x25
hx1 = [ones(m, 1) hx1]; %size 5000x26

% compute hx2 of the last layer, the output layer
hx2 = sigmoid( hx1*(Theta2') ); %size 5000x10

% get the output
[max_prob, p] = max(hx2, [], 2);






% =========================================================================


end
