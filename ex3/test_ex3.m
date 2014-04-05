%   !test test_sanity()

%   !test test_oneVsAll()

%   !test test_predictOneVsAll()

% These tests use non-standard predict() which returns [p,k] instead of just [p] so 
% that the costs are returned and can be unit tested Calls to p = predict() will still 
% work as normal, but if the second parameter is provided then the weights of the 
% outputs can also be tested.

%!test test_nn()

%!test test_nn_cm_2()