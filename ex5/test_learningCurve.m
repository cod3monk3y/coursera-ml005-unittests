function test_learningCurve()
% 3 / 5	Learning Curve
    epsilon = 1e-3;

    [error_train error_val] = learningCurve([ones(10,1) sec(1:1.5:15)' tan(1:1.5:15)'], cot(1:3:30)', ...
        [1 23.5 12.4; 1 64.3 10.1; 1 76.4 9.8; 1 34.2 15.2; 1 59.5 13.5], [13;24;53;34;23], 0.1);

    et = [0.00000
        0.00000
        0.00003
        0.03773
        0.12896
        0.29892
        1.59607
        341.18606
        331.68731
        325.76182];
    ev = [5.0523e+02
        5.9170e+02
        7.5200e+02
        5.3129e+02
        3.4625e+02
        7.3199e+02
        1.6288e+03
        7.3256e+04
        4.9892e+04
        1.12171e+05];

    assert(error_train, et, epsilon);
    assert(error_val/1000, ev/1000, epsilon);

endfunction
