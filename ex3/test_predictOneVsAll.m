function test_predictOneVsAll ()
  epsilon = 1e-3;

  % learning three classes
  %
  %                x < 1.5 => 1
  %          1.5 < x < 3.5 => 2
  %          3.5 < x       => 3
  %
  X = [0 1 2 3 4 5]';
  y = [1 1 2 2 3 3]'; % direct classification
  num_labels = 3;

  all_theta = oneVsAll(X, y, num_labels, 0);
  assert(size(all_theta), [3 2]);

  yy = predictOneVsAll(all_theta, X);
  assert(yy, y);

  % predict ones we haven't seen yet (should match the original formula)
  X = [-10 2.5 10.0]';
  assert(predictOneVsAll(all_theta, X), [1 2 3]');


  % https://class.coursera.org/ml-005/forum/thread?thread_id=1425
  all_theta = oneVsAll([0.1 3.1 1.2; 1.8 0.9 0.7; 3.2 -1.4 6.7], [1 2 0]', 3, 0.3);
  p = predictOneVsAll(all_theta, [0.1 3.1 1.2; 1.8 0.9 0.7; 3.2 -1.4 6.7]);
  assert(p, [ 1 2 2 ]');

  all_theta = oneVsAll([0 1 2 2 1 0 1 3 4 5 5 4 3]', [1 1 1 1 1 1 2 2 2 2 2 2 2]', 2, 1);
  p = predictOneVsAll(all_theta, [0 1 2 2 1 0 1 3 4 5 5 4 3]');
  assert(p, [1 1 1 1 1 1 1 2 2 2 2 2 2]');

  all_theta = oneVsAll([0 1 2 2 1 0 3 4 5 5 4 3]', [1 1 1 1 1 1 2 2 2 2 2 2]', 2, 0.001);
  p = predictOneVsAll(all_theta, [0 1 2 2 1 0 3 4 5 5 4 3]');
  assert(p, [1 1 1 1 1 1 2 2 2 2 2 2]');

endfunction
