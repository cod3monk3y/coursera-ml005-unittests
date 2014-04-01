function test_gradientDescentMulti ()
    epsilon = 1e-4;

    x = gradientDescentMulti([3 5 6; 1 2 3; 9 4 2],[1 6 4]',[0 0 0]',0.01,1000);
    a = [
       1.2123;
      -2.9458;
       2.3219];

    assert(x, a, epsilon);

endfunction
