function [Y, InitialMatrix] = parse_data_set_file(file_path)

  fp = fopen(file_path, "r");
  dimensions = fscanf(fp, "%d", 2);
  fseek(fp, 1, "cof");
  m = dimensions(1);
  n = dimensions(2);
  Y = zeros(m, 1);
  InitialMatrix = cell(m, n);
  for i = 1 : m
    lines = fgetl(fp);
    count = 1;
    string = strsplit(lines);
    for j = 1 : n + 1
      aux = string{j};
      if j == 1
        if isnan(aux) == false
          Y(i) = str2double(aux);
        endif
      else
        if isnan(aux)
          InitialMatrix{i, count} = str2double(aux);
        else
          InitialMatrix{i, count} = aux;
        endif
        count += 1;
      endif
    endfor
  endfor

  fclose(fp);
endfunction

