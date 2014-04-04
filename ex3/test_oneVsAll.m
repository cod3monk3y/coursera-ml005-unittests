function test_oneVsAll ()
  epsilon = 1e-3;
  
  % training x < 1.5 = 1
  %          x > 1.5 = 2
  X = [0 1 2 3 4 5]';
  y = [1 1 1 2 2 2]'; % direct classification
  num_labels = 2;
  
  % basic dimensionality, no lambda
  all_theta = oneVsAll(X, y, num_labels, 0);
  
  % proper dimensionality of theta
  assert(size(all_theta), [2 2]);

  assert( all_theta, [ 141.08114 -56.71746;
                      -131.54902  52.86713], epsilon)
                      
  % ANSWER PREDICTION SPECIFICALLY LEFT OUT OF THIS EXERCISE
  % AS IT WILL BE CODED IN THE NEXT EXERCISE
endfunction
