function [Theta] = normal_equation(FeaturesMatrix, Y, tol, max_iter)

    [l, c] = size(Y);
    if c != 1
      Y = Y';
    endif
    A = FeaturesMatrix' * FeaturesMatrix;
    b = FeaturesMatrix' * Y;
    x_0 = zeros(size(A, 2), 1);
    r = b - A * x_0;
    v = r;
    x = x_0;
    tolsquared = tol^2;
    k = 1;
    while k <= max_iter && r' * r > tolsquared
      t = (r' * r) / (v' * (A * v));
      x = x + t * v;
      r_k = r - t * (A * v);
      s = (r_k' * r_k) / (r' * r);
      v_k = r_k + s * v;
      r = r_k;
      v = v_k;
      k = k + 1;
    endwhile
    [~, pos] = chol(A);
    if pos != 0
        Theta = zeros(size(A, 2), 1);
    else
        Theta = x;
    endif
    Theta = [0; Theta];

endfunction
