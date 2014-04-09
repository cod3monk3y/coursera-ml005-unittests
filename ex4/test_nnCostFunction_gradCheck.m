function test_nnCostFunction_gradCheck(lambda)
% this test borrowing code from ML class Ex4 checkNNGradients.m
% and using Ex4 modules
%   computeNumericalGradient.m
%   debugInitializeWeights.m

    input_layer_size = 3;
    hidden_layer_size = 5;
    num_labels = 3;
    m = 5;

    % We generate some 'random' test data
    Theta1 = debugInitializeWeights(hidden_layer_size, input_layer_size); % 5x4
    Theta2 = debugInitializeWeights(num_labels, hidden_layer_size); % 3x6

    % Reusing debugInitializeWeights to generate X
    X  = debugInitializeWeights(m, input_layer_size - 1);
    y  = 1 + mod(1:m, num_labels)';

    % Unroll parameters
    nn_params = [Theta1(:) ; Theta2(:)];

    % Short hand for cost function
    costFunc = @(p) nnCostFunction(p, input_layer_size, hidden_layer_size, num_labels, X, y, lambda);

    [cost, grad] = costFunc(nn_params);
    numgrad = computeNumericalGradient(costFunc, nn_params);
    if lambda == 0
        assert(cost, 2.1010, 1e-4);
    elseif lambda == 3
        assert(cost, 2.1464, 1e-4);
    end
    assert(size(grad), size(numgrad));

    % Evaluate the norm of the difference between two solutions.
    % If you have a correct implementation, and assuming you used EPSILON = 0.0001
    % in computeNumericalGradient.m, then diff below should be less than 1e-9
    diff = norm(numgrad-grad)/norm(numgrad+grad);
    assert(diff, 2.3e-11, 1e-9);

endfunction
