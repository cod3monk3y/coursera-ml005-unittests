function test_costfunction_nontrivial ()
  % simple two-entry matrix with n+1 features including
  % the first column as ones-vector
  X = [ 1 2 3;         % non-trivial matrix
        1 4 5 ];
  y = [0 1]';          % one positive, one negative
  theta = [.1 .2 .3]'; % non-trivial theta 
  
  [J, grad] = costFunction(theta, X, y);

  % non-trivial cost  
  % ERROR if you get this result... you have something backwards
  % assert(J, 1.3536, 1e-4 );

  % the correct result   
  assert(J, 0.85363, 1e-4 );

  % non-grivial gradient
  grad_exp = [ 0.35951 0.63584 0.99534 ]';
  assert(grad, grad_exp, 1e-4);
endfunction
