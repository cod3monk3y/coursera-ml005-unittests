function test_gradientDescent ()
    epsilon = 1e-4;

    x = gradientDescent([1 5; 1 2; 1 4; 1 5],[1 6 4 2]',[0 0]',0.01,1000);
    a = [5.2148; -0.5733];
    assert(x, a, epsilon);

    x = gradientDescent([3 5; 1 2; 9 4; 1 5],[1 6 4 2]',[0 0]',0.01,1000);
    a = [0.2588; 0.3999];
    assert(x, a, epsilon);

endfunction
