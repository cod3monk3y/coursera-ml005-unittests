function test_computeCost ()
    epsilon = 1e-4;

    x = computeCost([1 2 3; 1 3 4; 1 4 5; 1 5 6], [7;6;5;4], [0.1;0.2;0.3]);
    a = 7.0175;
    assert(x, a, epsilon);

    x = computeCost( [1 2; 1 3; 1 4; 1 5], [7;6;5;4], [0.1;0.2] );
    a =  11.9450;
    assert(x, a, epsilon);

endfunction
