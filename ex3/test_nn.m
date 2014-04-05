function test_nn ()
  epsilon = 1e-4;
  
  % test neural network
  X = [1:5]';
  y = [ 0.97728 0.98026 0.98137 0.98178 0.98193 ]';
  
  Theta1 = [1 1];
  Theta2 = [2 2];

  % --- 
  % NOTE !!!
  % my predict is modified to return [prediction, weights] so that the weights can be tested independent
  % of the prediction. This should still work for the submission routine as p = predict(..) will still 
  % receive the proper prediction, and weights (h) will be dropped
  % ---
  [p,h] = predict(Theta1, Theta2, X);
  
  assert([5 1], size(y));
  assert(h,y,epsilon)
    
endfunction
