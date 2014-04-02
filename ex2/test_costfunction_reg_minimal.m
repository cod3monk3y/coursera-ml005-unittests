function test_costfunction_reg_minimal ()
  % basically the same test as test_costfunction_minimal, but with
  % varying values for the lambda, and theta cannot be 0 (there would be
  % nothing to penalize), and the x0 (ones) vector has been added

  X = [1 1 1;
       1 2 2];      % minimal 2D feature matrix
  y = [0 1]';       % at least one negative and one positive

  theta = [0 1 1]';   % need non-zero values for theta

  %
  % lambda = 0 --> no regularization
  %
  [J0, grad0] = costFunctionReg(theta, X, y, 0.0);
  [J1, grad1] = costFunctionReg(theta, X, y, 1.0);
  [J2, grad2] = costFunctionReg(theta, X, y, 2.0);

  J = [J0 J1 J2]  ;
  assert(J, [1.0725 1.5725 2.0725], 1e-4);

  grad_exp = [
     0.43141   0.43141   0.43141;
     0.42241   0.92241   1.42241;
     0.42241   0.92241   1.42241; ];

  grad = [grad0 grad1 grad2];

  assert(grad, grad_exp, 1e-4);

  % non-zero theta 0, validates that code isn't
  % including theta 0 in the regularization term
  theta = [1 1 1]';

  [J0, grad0] = costFunctionReg(theta, X, y, 0.0);
  [J1, grad1] = costFunctionReg(theta, X, y, 1.0);
  [J2, grad2] = costFunctionReg(theta, X, y, 2.0);

  J = [J0 J1 J2];
  assert(J, [1.5277 2.0277 2.5277], 1e-4);

  grad_exp = [
     0.47294   0.47294   0.47294;
     0.46959   0.96959   1.46959;
     0.46959   0.96959   1.46959 ];

  grad = [grad0 grad1 grad2];

  assert(grad, grad_exp, 1e-4);

endfunction
