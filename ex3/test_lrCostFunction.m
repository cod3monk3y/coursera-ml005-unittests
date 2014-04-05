function test_lrCostFunction()
    tolerance = 1e-3;

    % Test 1, w/ lambda = 3
    % From TA Colin Beckingham, at https://class.coursera.org/ml-005/forum/thread?thread_id=943#post-4593
    theta =  [2; 1; -9];
    X = magic(3);
    y = [1; -0.2; 3];
    lambda = 3;

    J_exp =  50.971;
    grad_exp = [-6.1081 -7.1932 -12.3540]'; % vectors are typically vertical

    [J, grad] = lrCostFunction(theta, X, y, lambda);
    assert(J, J_exp, tolerance);
    assert(grad, grad_exp, tolerance);

    % Test 2, w/ lambda = 0.1
    % From TA Colin Beckingham, at https://class.coursera.org/ml-005/forum/thread?thread_id=943#post-4666
    theta =  [2; 1; -9];
    X = magic(3);
    y = [1; -0.2; 3];
    lambda = 0.1;

    J_exp =  11.338;
    grad_exp = [-6.1081 -8.1598 -3.6540]'; % vectors are typically vertical

    [J, grad] = lrCostFunction(theta, X, y, lambda);
    assert(J, J_exp, tolerance);
    assert(grad, grad_exp, tolerance);


% basically the same test as test_costfunction_minimal, but with
% varying values for the lambda, and theta cannot be 0 (there would be
% nothing to penalize), and the x0 (ones) vector has been added
    epsilon = 1e-4;

    X = [1 1 1;
       1 2 2];      % minimal 2D feature matrix
    y = [0 1]';       % at least one negative and one positive
    theta = [0 1 1]';   % need non-zero values for theta

    J_exp = [1.0725 1.5725 2.0725];
    grad_exp = [
        0.43141   0.43141   0.43141;
        0.42241   0.92241   1.42241;
        0.42241   0.92241   1.42241; ];

    % lambda = 0 --> no regularization
    [J0, grad0] = lrCostFunction(theta, X, y, 0.0);
    [J1, grad1] = lrCostFunction(theta, X, y, 1.0);
    [J2, grad2] = lrCostFunction(theta, X, y, 2.0);
    assert([J0 J1 J2], J_exp, epsilon);
    assert([grad0 grad1 grad2], grad_exp, epsilon);

    % non-zero theta 0, validates that code isn't
    % including theta 0 in the regularization term
    theta = [1 1 1]';

    J_exp = [1.5277 2.0277 2.5277];
    grad_exp = [
        0.47294   0.47294   0.47294;
        0.46959   0.96959   1.46959;
        0.46959   0.96959   1.46959 ];

    [J0, grad0] = lrCostFunction(theta, X, y, 0.0);
    [J1, grad1] = lrCostFunction(theta, X, y, 1.0);
    [J2, grad2] = lrCostFunction(theta, X, y, 2.0);
    assert([J0 J1 J2], J_exp, epsilon);
    assert([grad0 grad1 grad2], grad_exp, epsilon);


% https://class.coursera.org/ml-005/forum/thread?thread_id=1425
    [J grad] = lrCostFunction([0.6 0.3 0.2]', [1.1 0.1 1;1.5 1.3 2], [1 1]', 2);
    assert(J, 0.32170, epsilon);
    assert(grad, [-0.27694 0.18419 -0.10133]', epsilon);

    [J grad] = lrCostFunction([0.6 0.3 0.2]', [1.1 0.1 1;1.5 1.3 2], [1 1]', 0);
    assert(J, 0.25670, epsilon);
    assert(grad, [-0.27694 -0.11581 -0.30133]', epsilon);

    theta = [0.6 ; 0.3 ; 0.2];
    X = [1.1 0.1 1.0 ; 1.5 1.3 2.0];
    y = [0 ; 0];
    [J grad] = lrCostFunction(theta, X, y, 0.1);
    assert(J, 1.5499, epsilon);
    assert(grad, [1.02306 0.59919 1.20867]', epsilon);

    [c g] = lrCostFunction([2.3 1.9 0.5]', [0.1 3.1 1.2; 1.8 0.9 0.7; 3.2 -1.4 6.7], [1 2 0]', 0.3);
    assert(c, 0.81085, epsilon);
    assert(g, [0.46507 -0.57837 2.04833]', epsilon);

endfunction
