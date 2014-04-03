function test_costfunction_minimal ()
  % an extremely simple cost function calculation with
  % one negative and one positive class
  X = [1 1; 2 2];   % minimal 2D feature matrix
  y = [0 1]';       % at least one negative and one positive
  theta = [0 0]';   % simplify calculations by using 0 for theta

  [J, grad] = costFunction(theta, X, y);

  assert(J, 0.69315, 1e-5);
  assert(grad, [-1/4 -1/4]');

  % NOTE: I don't think it's important for the cost calculation to
  % set the first column to ones (FOR THIS TEST), but I may be incorrect
  % in this assumption.

endfunction
