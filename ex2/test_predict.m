function test_predict ()

  X = [0 0;
       0 1;
       1 0;
       1 1];

  % all these should pass  
  assert(predict([1 1]', X), logical([1 1 1 1]'));
  assert(predict([0 0]', X), logical([1 1 1 1]'));
  
  % fail ... according to some math...
  assert(predict([-1 -1]', X), logical([1 0 0 0]'));
  assert(predict([-1 0]', X), logical([1 1 0 0]'));
  assert(predict([0 -1]', X), logical([1 0 1 0]'));
  assert(predict([-1 -1]', X), logical([1 0 0 0]'));
  
  % fail or pass ... based on the same math as above (which 
  % is intentionally not shared)
  assert(predict([1.1 -1]', X), logical([1 0 1 1]'));
  assert(predict([-1 1.1]', X), logical([1 1 0 1]'));

endfunction
