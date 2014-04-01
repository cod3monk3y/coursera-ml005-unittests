function test_computeCostMulti ()
    epsilon = 1e-4;

    x = computeCostMulti( [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ], [ 2; 5; 5; 6 ], [ 0.3816;  0.7655;  0.7952 ] );
    a = 6.7273;
    assert(x, a, epsilon);

endfunction
