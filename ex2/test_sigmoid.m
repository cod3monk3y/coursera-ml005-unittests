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

endfunction
