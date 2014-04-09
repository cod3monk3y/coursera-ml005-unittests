function test_nnCostFunction_costNoReg()
    epsilon = 1e-4;

    % input descriptions
    input_layer_size  = 400;  % 20x20 Input Images of Digits
    hidden_layer_size = 25;   % 25 hidden units
    num_labels = 10;          % 10 labels, from 1 to 10
    m = 5000;                 % number of examples in training set

    Theta1 = rand(hidden_layer_size, input_layer_size+1);
    Theta2 = rand(num_labels, hidden_layer_size+1);
    nn_params = [Theta1(:) ; Theta2(:)];    % Unroll parameters
    X = rand(m, input_layer_size);          % training set features
    y = mod(1:m, num_labels)';              % training set results, labels {1 ... 10}
    y(y == 0) = 10;

    % Weight regularization parameter (we set this to 0 here).
    lambda = 0;

    [J grad] = nnCostFunction(nn_params, input_layer_size, hidden_layer_size, num_labels, X, y, lambda);
    % J is a real number
    % grad is a "unrolled" vector of the partial derivatives of the neural network
    % grad size is (hidden_layer_size*(input_layer_size+1) + num_labels*(hidden_layer_size+1), 1)
    %~ assert(J, 1);
    %~ assert(grad, rand(hidden_layer_size*(input_layer_size+1) + num_labels*(hidden_layer_size+1), 1));

    % tests
    % https://class.coursera.org/ml-005/forum/thread?thread_id=1783
    % assignment #1, NN cost function w/o regularization
    [J] = nnCostFunction(sec(1:1:32)', 2, 4, 4, reshape(tan(1:32), 16, 2) / 5, 1 + mod(1:16,4)', 0);
    assert(J, 10.931, epsilon);

endfunction
