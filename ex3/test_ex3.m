%!test test_sanity()

%!test test_lrCostFunction()

%!test test_oneVsAll_converged()

% Beware! Results of the fmincg may vary!
% You can try fminunc or a bigger number of iterations.
% In times of war the value of cosine could be 3 or even 4 (it's a joke)
%!test test_oneVsAll()

%!test test_predictOneVsAll()

%!test test_predict()

% These tests use non-standard predict() which returns [p,k] instead of just [p] so 
% that the costs are returned and can be unit tested Calls to p = predict() will still 
% work as normal, but if the second parameter is provided then the weights of the 
% outputs can also be tested.

%!test test_nn()

%!test test_nn_cm_2()

% Boolean operations
%!test test_nn_OR()
%!test test_nn_AND()
%!test test_nn_XOR()
