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
  X = magic(3)(1:2,:)
  [J grad] = costFunction([1 2 3]', X, [4 5]');
  assert( J, -109.93, 1e-2 );
  assert( grad, [-18.000 -11.500 -23.000]', 1e-2);
  
  
endfunction
