function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)

  [m , n] = size(FeatureMatrix);
  Error = 0;
  for i = 1 : n
    Theta(i) = Theta(i + 1);
  endfor
  Theta = resize(Theta, n);
  h = FeatureMatrix * Theta;
  for i = 1 : m
    Error = Error + (Y(i, 1) - h(i)) ^ 2;
  endfor
  Error /= m;
  Error = Error + lambda * norm(Theta, 1);
endfunction
