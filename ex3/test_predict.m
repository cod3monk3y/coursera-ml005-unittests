function test_predict()

    %c = predict(Theta1, Theta2, X);
    c = predict(ones(3, 8), ones(1, 4), ones(9, 7));
    assert(c, ones(9, 1));

    c = predict(ones(3, 8), ones(1, 4), magic(7));
    assert(c, ones(7, 1));

    c = predict(-1/170*ones(3, 8), -1/3*ones(1, 4), magic(7));
    assert(c, ones(7, 1));

    predict(-1/170*ones(3, 8), -1/3*ones(2, 4), magic(7));
    assert(c, ones(7, 1));

    predict(-1/170*ones(3, 8), -1/3*ones(3, 4), magic(7));
    assert(c, ones(7, 1));

endfunction
