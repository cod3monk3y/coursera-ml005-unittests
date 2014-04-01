function test_warmup ()
    X = warmUpExercise();
    A = eye(5);
    assert(X, A)
endfunction
