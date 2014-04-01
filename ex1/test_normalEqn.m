function test_normalEqn ()
    epsilon = 1e-4;

    x = normalEqn([1 0; 0 2],[1 1]');
    a = [
       1.00000;
       0.50000];
    assert(x, a, epsilon);

endfunction
