%!test test_sanity()

% test nnCostFunction, cost w/o regularization
%!test test_nnCostFunction_costNoReg()

% test nnCostFunction, cost with regularization
%!test test_nnCostFunction_costReg()

% test gradient for sigmoid
%!test test_sigmoidGradient()

% test nnCostFunction, gradient (backprop) w/o regularization
%!test test_nnCostFunction_gradNoReg()

%!test test_nnCostFunction_gradCheck(0)

% test nnCostFunction, gradient (backprop) with regularization
%!test test_nnCostFunction_gradReg()

%!test test_nnCostFunction_gradCheck(3)
