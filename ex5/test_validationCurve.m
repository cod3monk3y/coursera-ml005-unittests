function test_validationCurve()
% 5 / 5	Cross Validation Curve
    epsilon = 1e-3;

    [lambda_vec error_train error_val] = validationCurve([ones(10,1) sec(1:1.5:15)' tan(1:1.5:15)'], cot(1:3:30)', ...
        [1 23.5 12.4; 1 64.3 10.1; 1 76.4 9.8; 1 34.2 15.2; 1 59.5 13.5], [13;24;53;34;23]);

    lv = [0.00000
        0.00100
        0.00300
        0.01000
        0.03000
        0.10000
        0.30000
        1.00000
        3.00000
        10.00000];
    etr = [325.751
        325.751
        325.751
        325.751
        325.752
        325.762
        325.847
        326.723
        332.616
        364.812];
    ecv = [1.1340e+05
        1.1339e+05
        1.1336e+05
        1.1327e+05
        1.1303e+05
        1.1217e+05
        1.0978e+05
        1.0202e+05
        8.4041e+04
        4.8477e+04];

    assert(lambda_vec, lv, epsilon);
    assert(error_train, etr, epsilon);
    assert(error_val/10000, ecv/10000, epsilon);

endfunction
