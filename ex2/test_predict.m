function test_predict ()

  X = [0 0;
       0 1;
       1 0;
       1 1];

  % all these should pass
  assert(predict([1 1]', X), [1 1 1 1]');
  assert(predict([0 0]', X), [1 1 1 1]');

  % fail ... according to some math...
  assert(predict([-1 -1]', X), [1 0 0 0]');
  assert(predict([-1 0]', X), [1 1 0 0]');
  assert(predict([0 -1]', X), [1 0 1 0]');
  assert(predict([-1 -1]', X), [1 0 0 0]');

  % fail or pass ... based on the same math as above (which
  % is intentionally not shared)
  assert(predict([1.1 -1]', X), [1 0 1 1]');
  assert(predict([-1 1.1]', X), [1 1 0 1]');

  % tests from https://class.coursera.org/ml-005/forum/thread?thread_id=943
  x = predict([0 1 0]', magic(3));
  a = [1 1 1];
  assert(x, a');

  x = predict([2 1 -9]', magic(3));
  a = [0 0 0];
  assert(x, a');

  x = predict([1 2]', [pi tan(pi)]);
  a = 1;
  assert(x, a');

  x = predict([sin(pi) cos(pi)]', [cot(pi) tan(pi)]);
  a = 0;
  assert(x, a');

  x = predict([1, -1, 1]', magic(3));
  a = [1 1 0];
  assert(x, a');

  x = predict([0,0,0]', magic(3));
  a = [1 1 1];
  assert(x, a');

  x = predict([-1,-1,-1]', magic(3));
  a = [0 0 0];
  assert(x, a');

endfunction
