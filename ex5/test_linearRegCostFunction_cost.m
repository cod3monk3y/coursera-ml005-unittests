function test_linearRegCostFunction_cost()
% 1 / 5	Regularized Linear Regression Cost Function
    epsilon = 1e-4;

    X = [1 2; 1 3; 1 4; 1 5; 1 6];
    y = [7; 6; 4; 3; 2];
    theta = [1; 1];
    J = linearRegCostFunction(X, y, theta, 1);
    assert(J, 5.6, epsilon);

    % https://class.coursera.org/ml-005/forum/thread?thread_id=2137
    [J] = linearRegCostFunction([ones(10,1) sec(1:1.5:15)' tan(1:1.5:15)'], cot(1:3:30)', ...
        [0.15 0.25 0.35]', 0.1);
    assert(J, 644.5304, epsilon);

endfunction
