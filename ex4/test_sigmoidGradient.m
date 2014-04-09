function test_sigmoidGradient()
    epsilon = 1e-4;

    x = sigmoidGradient(0);
    a =  0.25000;
    assert(x, a, epsilon);

    x = sigmoidGradient(1);
    a =  0.19661;
    assert(x, a, epsilon);

    x = sigmoidGradient(5);
    a =  0.0066481;
    assert(x, a, epsilon);

    x = sigmoidGradient([0 1 2; 3 4 5]);
    a = [   0.2500000   0.1966119   0.1049936
            0.0451767   0.0176627   0.0066481 ];
    assert(x, a, epsilon);

    x = sigmoidGradient([0 1 2]);
    a = [0.25000   0.19661   0.10499];
    assert(x, a, epsilon);

    x = sigmoidGradient([0; 1; 2]);
    a = [   0.25000
            0.19661
            0.10499];
    assert(x, a, epsilon);

    x = sigmoidGradient([-6 -7]);
    a = [2.4665e-03   9.1022e-04];
    assert(x, a, epsilon);

    % https://class.coursera.org/ml-005/forum/thread?thread_id=1783
    x = sigmoidGradient(sec(1:1:5)');
    a = [   0.117342
            0.076065
            0.195692
            0.146323
            0.027782];
    assert(x, a, epsilon);

endfunction
