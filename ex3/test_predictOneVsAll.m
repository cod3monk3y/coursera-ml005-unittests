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
  
endfunction
