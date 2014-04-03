function test_costFunctionReg ()
    tolerance = 1e-3;
    % Test 1, w/ lambda = 3
    % From TA Colin Beckingham, at https://class.coursera.org/ml-005/forum/thread?thread_id=943#post-4593
    theta =  [2; 1; -9];
    X = magic(3);
    y = [1; -0.2; 3];
    lambda = 3;

    J_exp =  50.971;
    grad_exp = [-6.1081 -7.1932 -12.3540]'; % vectors are typically vertical

    [J, grad] = costFunctionReg(theta, X, y, lambda);

    assert(J, J_exp, tolerance );
    assert(grad, grad_exp, tolerance);

    % Test 2, w/ lambda = 0.1
    % From TA Colin Beckingham, at https://class.coursera.org/ml-005/forum/thread?thread_id=943#post-4666
    theta =  [2; 1; -9];
    X = magic(3);
    y = [1; -0.2; 3];
    lambda = 0.1;
    J_exp_2 =  11.338;
    grad_exp_2 = [-6.1081 -8.1598 -3.6540]'; % vectors are typically vertical

    [J, grad] = costFunctionReg(theta, X, y, lambda);

    assert(J, J_exp_2, tolerance );
    assert(grad, grad_exp_2, tolerance);

endfunction
