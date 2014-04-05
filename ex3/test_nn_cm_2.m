function test_nn_cm_2 ()
  th1 = [4 -8 12; 5 9 -13; 6 -10 14; 7 11 -15];
  th2 = [3 17 -18 19 -20];
  
  X = [3 2; -3 -2; 0.1 0.2];
  
  % --- 
  % NOTE !!!
  % my predict is modified to return [prediction, weights] so that the weights can be tested independent
  % of the prediction. This should still work for the submission routine as p = predict(..) will still 
  % receive the proper prediction, and weights (h) will be dropped
  % ---
  [p,h] = predict(th1,th2,X);
  
  epsilon = 1e-3;
  
  assert([0.59819;
          0.79760;
          0.84436], h, epsilon);
          
  assert([1 1 1]', p, epsilon); 
          
endfunction
