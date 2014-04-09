function test_nnCostFunction_gradReg()
    epsilon = 1e-4;

    % https://class.coursera.org/ml-005/forum/thread?thread_id=1783
    % Assignment #5, NN cost function, backprop, gradient with regularization
    [J grad] = nnCostFunction(sec(1:1:32)', 2, 4, 4, reshape(tan(1:32), 16, 2) / 5, 1 + mod(1:16,4)', 0.1);
    a = [   0.3051843
            0.0710438
            0.0513066
            0.6211486
            -0.0522766
            0.0586827
            0.0053191
            -0.0983900
            -0.0164243
            -0.0544438
            1.4123116
            0.0164517
            -0.0745060
            0.7499671
            -0.0179905
            0.4432801
            -0.0825542
            0.5440175
            -0.0726739
            0.3680935
            -0.0167392
            0.0781902
            -0.0461142
            0.0811755
            -0.0280090
            0.3428785
            -0.0918487
            0.1441408
            -0.0260627
            0.3122174
            0.0779614
            0.1523740];
    assert(grad, a, epsilon);

endfunction
