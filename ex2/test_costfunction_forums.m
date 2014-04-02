function test_costfunction_forums ()
  epsilon = 1e-4;

  % CTA Colin Beckingham
  % https://class.coursera.org/ml-005/forum/thread?thread_id=943#post-4641
  [J grad] = costFunction([0 1 0]', magic(3), [1 2 3]');
  assert( J, -7.5600, epsilon );
  assert( grad, [-4.3907 -7.7678 -4.2202]', epsilon);


  % Me - non-square matrix example
  % I HAVE NOT VALIDATE THIS BY HAND
  % https://class.coursera.org/ml-005/forum/thread?thread_id=943#comment-3379
  X = magic(3)(1:2,:);
  [J grad] = costFunction([1 2 3]', X, [4 5]');
  assert( J, -109.928408, epsilon);
  assert( grad, [-18.000 -11.500 -23.000]', 1e-2);


  % tests from https://class.coursera.org/ml-005/forum/thread?thread_id=943
  X = [ones(20,1) (exp(1) * tan(1:1:20))' (exp(0.5) * cot(1:1:20))'];
  y = tan(X(:,1) + X(:,2)) > 0;
  [J, grad] = costFunction([0.25 0.5 -0.5]', X, y);
  assert(J, 1.9425, epsilon);
  assert(grad, [-0.028355 2.688290 -0.544570]', epsilon);

  [J, grad] = costFunction([0.25 0.5 -0.5]', [1 2.2 .89;1 2.4 -.67],[0; 0]);
  assert(J, 1.5924, epsilon);
  assert(grad, [0.784145 1.810749 0.029964]', epsilon);

endfunction
