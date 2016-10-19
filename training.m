%this function trains the model for k no of classifiers
%function all_theta=training();
loaddata();

fprintf('\ntraining logistic Regressio\n');

lambda = 0.1;
[all_theta] = oneVsAll(X, y, num_labels, lambda);
fprintf('training complete using 4500 training examples\n');