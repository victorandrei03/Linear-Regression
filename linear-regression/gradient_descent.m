function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)

    Theta = zeros(n, 1);

    for i = 1:iter
      h = FeatureMatrix * Theta;
      Gradient = h - Y';
      Gradient /= m;
      Gradient = Gradient' * FeatureMatrix;
      Gradient = Gradient';
      Theta = Theta - alpha * Gradient;
    endfor
    Theta = vertcat(0, Theta);
end
