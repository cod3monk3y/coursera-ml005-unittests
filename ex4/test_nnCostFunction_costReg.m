function test_nnCostFunction_costReg()
    epsilon = 1e-4;

    % https://class.coursera.org/ml-005/forum/thread?thread_id=1783
    % Assignment #2, NN cost function with regularization
    [J] = nnCostFunction(sec(1:1:32)', 2, 4, 4, reshape(tan(1:32), 16, 2) / 5, 1 + mod(1:16,4)', 0.1);
    assert(J, 170.9933, epsilon);

endfunction
