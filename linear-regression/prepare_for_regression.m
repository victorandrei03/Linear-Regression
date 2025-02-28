function [FeatureMatrix] = prepare_for_regression(InitialMatrix)

  [m, n] = size(InitialMatrix);
  FeatureMatrix = zeros(m, n + 1);
  for i = 1 : m
    j = 1;
    count = 1;
    while count <= n
      str = InitialMatrix{i, count};
      if strcmp(str, "no")
        FeatureMatrix(i, j) = 0;
      elseif strcmp(str, "yes")
        FeatureMatrix(i, j) = 1;
      elseif strcmp(str, "furnished")
        FeatureMatrix(i, j) = 0;
        FeatureMatrix(i, j + 1) = 0;
        j += 1;
      elseif strcmp(str, "semi-furnished")
        FeatureMatrix(i, j) = 1;
        FeatureMatrix(i, j + 1) = 0;
        j += 1;
      elseif strcmp(str, "unfurnished")
        FeatureMatrix(i, j) = 0;
        FeatureMatrix(i, j + 1) = 1;
        j += 1;
      else
        FeatureMatrix(i, j) = str2double(str);
      endif
      j += 1;
      count += 1;
    endwhile
  endfor

endfunction
