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

  % tests from https://class.coursera.org/ml-005/forum/thread?thread_id=943
  epsilon = 1e-4;
  [J, grad] = costFunction([0 1 0]' ,magic(3), [1 2 3]');
  assert(J, -7.5600, epsilon);
  assert(grad, [-4.3907 -7.7678 -4.2202]', epsilon);

  X = [ones(20,1) (exp(1) * tan(1:1:20))' (exp(0.5) * cot(1:1:20))'];
  y = tan(X(:,1) + X(:,2)) > 0;
  [J, grad] = costFunction([0.25 0.5 -0.5]', X, y);
  assert(J, 1.9425, epsilon);
  assert(grad, [-0.028355 2.688290 -0.544570]', epsilon);

  [J, grad] = costFunction([0.25 0.5 -0.5]', [1 2.2 .89;1 2.4 -.67],[0; 0]);
  assert(J, 1.5924, epsilon);
  assert(grad, [0.784145 1.810749 0.029964]', epsilon);

  X = magic(3)(1:2,:);
  [J, grad] = costFunction([1 2 3]', X, [4 5]');
  assert(J, -109.928408, epsilon);
  assert(grad, [-18.000 -11.500 -23.000]', epsilon);

endfunction
