function test_sigmoid ()

  % large positive values return close to 1.0
  assert( sigmoid(1e20), 1.0, 1e-3);

  % large negative values return close to 0.0
  assert( sigmoid(-1e20), 0.0, 1e-3);

  % sigmoid(0) gives EXACTLY 0.5
  assert( sigmoid(0), 0.5, 1e-6);
  
  % should work with vectors
  % (row vector)
  assert( sigmoid([-1e10, 0, 1e10]), [0 0.5 1], 1e-6 );
  
  % (column vector)
  assert( sigmoid([-1e10 0 1e10]'), [0 0.5 1]', 1e-6 );
  
  % should work with matrices
  % - should perform sigmoid on every element
  assert (sigmoid([-1e10  0    +1e10 ;
                    0     1e10 -1e10 ;
                    1e10 -1e10  0    ]),
          [0   0.5 1  ;
           0.5 1   0  ;
           1   0   0.5], 1e-6);  
           
  
  %
  % Apurva Dubey
  %
  epsilon = 1e-4;
  assert(sigmoid([1 2 3]), [0.73106 0.88080 0.95257], epsilon);
  assert(sigmoid([4 -2 -3]), [0.98201 0.119203 0.047426], epsilon);

  % https://class.coursera.org/ml-005/forum/thread?thread_id=943#comment-3352
  assert( sigmoid([-1.414 2.739 -3.1415 pi sin(pi/2)]), 
    [0.195604 0.939289 0.041428 0.958576 0.731059 ], epsilon );
  
endfunction
