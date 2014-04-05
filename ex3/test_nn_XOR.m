function test_nn_XOR ()

  epsilon = 1e-4;
  
  % NN weights or one possible configuration of OR
  th1 = [ -10  20  20;    % A|B 
           30 -20 -20];   % not(A*B)
  th2 = [  30 -20 -20;    % not(A xor B)
          -30  20  20 ];  % A xor B

  % OR truth-table
  X = [0 0; 
       0 1;
       1 0;
       1 1 ];
       
  y = [0 1 1 0]';
  
  p = predict(th1,th2,X);
  
  % classified results return the class of the result
  % which is either 1 or 2, so to make it look more like
  % the boolean we're expecting, shift them down by 1
  p = p-1;
  
  assert(p,y,epsilon);
  
  
endfunction
