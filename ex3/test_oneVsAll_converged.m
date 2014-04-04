function test_oneVsAll_converged()
% these tests makes no difference between fmincg and fminunc

    epsilon = 1e-3;

    X = [0 1 2 2 1 0 3 4 5 5 4 3]';
    y = [1 1 1 1 1 1 2 2 2 2 2 2]';
    num_labels = 2;
    lambda = 0.001;
    all_theta = oneVsAll(X, y, num_labels, lambda);
    assert(all_theta, [26.226  -10.490; -26.226   10.490], epsilon);

    all_theta = oneVsAll([0 1 2 2 1 0 1 3 4 5 5 4 3]', [1 1 1 1 1 1 2 2 2 2 2 2 2]', 2, 1);
    assert(all_theta, [2.3840  -1.1426; -2.3840   1.1426], epsilon);

endfunction
