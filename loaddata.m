%% setiingup the parameters 
input_layer_size  = 400;  % 20x20 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10   
                          


%  working with a dataset that contains handwritten digits.


% Load Training Data
fprintf('Loading data ...\n')

load('ex3data1.mat'); % training data stored in arrays X, y
