function test_featureNormalize ()
    epsilon = 1e-4;

    x = featureNormalize([1 2 3]');
    a = [-1; 0; 1];
    assert(x, a, epsilon);

    x = featureNormalize([1 2 3;6 4 2]');
    a = [-1   1; 0   0; 1  -1];
    assert(x, a, epsilon);

    x = featureNormalize( [ 8 1 6;  3 5 7; 4 9 2 ] );
    a = [1.1339   -1.0000    0.3780; -0.7559         0    0.7559; -0.3780    1.0000   -1.1339];
    assert(x, a, epsilon);

    x = featureNormalize([1 2 3 1;6 4 2 0;11 3 3 9;4 9 8 8]');
    a = [
      -0.78335   1.16190   1.09141  -1.46571;
       0.26112   0.38730  -0.84887   0.78923;
       1.30558  -0.38730  -0.84887   0.33824;
      -0.78335  -1.16190   0.60634   0.33824];
    assert(x, a, epsilon);

endfunction
