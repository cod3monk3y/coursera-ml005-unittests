function test_nn_OR ()

  epsilon = 1e-4;
  
  % NN weights or one possible configuration of OR
  % in a 2-layer network (which is what predict() expects
  th1 = [ -10 20 0; 
          -10 0 20];    % pass-through as 0 or 1
  th2 = [ 10 -20 -20;   % NOR
         -10  20  20 ]; % OR 

  % OR truth-table
  X = [0 0; 
       0 1;
       1 0;
       1 1 ];
       
  y = [0 1 1 1]';
  
  p = predict(th1,th2,X);
  
  % classified results return the class of the result
  % which is either 1 or 2, so to make it look more like
  % the boolean we're expecting, shift them down by 1
  p = p-1;
  
  assert(p,y,epsilon);
  
  
endfunction
