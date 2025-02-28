function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)

  [m , n] = size(FeatureMatrix);
  Error = 0;
  for i = 1 : n
    Theta(i) = Theta(i + 1);
  endfor
  Theta = resize(Theta, n);
  h = FeatureMatrix * Theta;
  for i = 1 : m
    Error = Error + (h(i) - Y(i, 1)) ^ 2;
  endfor
  Error /= (2 * m);
endfunction
