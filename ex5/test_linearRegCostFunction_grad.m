function test_linearRegCostFunction_grad()
% 2 / 5	Regularized Linear Regression Gradient
    epsilon = 1e-4;

    [J grad] = linearRegCostFunction([1 2; 1 3; 1 4; 1 5; 1 6], [7; 6; 4; 3; 2], [1; 1], 1);
    assert(J, 5.60, epsilon);
    assert(grad, [0.60; 7.20], epsilon);

    [J grad] = linearRegCostFunction([1 23.5 12.4; 1 64.3 10.1; 1 76.4 9.8; 1 34.2 15.2; 1 59.5 13.5], ...
        [13;24;53;34;23], [3.2;2.3;1.2], 1.2);
    assert(J, 6396.44119, epsilon);
    assert(grad, [107.074; 6210.2529; 1258.7064], epsilon);

endfunction
