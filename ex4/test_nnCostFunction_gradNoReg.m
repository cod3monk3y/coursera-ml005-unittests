function test_nnCostFunction_gradNoReg()
    epsilon = 1e-4;

    % https://class.coursera.org/ml-005/forum/thread?thread_id=1783
    % Assignment #4, NN cost function, backprop, gradient w/o regularization
    [J grad] = nnCostFunction(sec(1:1:32)', 2, 4, 4, reshape(tan(1:32), 16, 2) / 5, 1 + mod(1:16,4)', 0);
    a = [   3.0518e-001
            7.1044e-002
            5.1307e-002
            6.2115e-001
            -7.4310e-002
            5.2173e-002
            -2.9711e-003
            -5.5435e-002
            -9.5647e-003
            -4.6995e-002
            1.0499e-004
            9.0452e-003
            -7.4506e-002
            7.4997e-001
            -1.7991e-002
            4.4328e-001
            -5.9840e-002
            5.3455e-001
            -7.8995e-002
            3.5278e-001
            -5.3284e-003
            8.4440e-002
            -3.4384e-002
            6.6441e-002
            -3.4314e-002
            3.3322e-001
            -7.0455e-002
            1.5063e-001
            -1.7708e-002
            2.7170e-001
            7.1129e-002
            1.4488e-001];
    assert(grad, a, epsilon);

endfunction
