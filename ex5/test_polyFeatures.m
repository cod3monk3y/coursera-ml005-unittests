function test_polyFeatures()
% 4 / 5	Polynomial Feature Mapping
    epsilon = 1e-3;
    Xpoly = polyFeatures([2; 5; 7], 4);
    a = [2      4      8     16
        5     25    125    625
        7     49    343   2401];
    assert(Xpoly, a, epsilon);

endfunction
