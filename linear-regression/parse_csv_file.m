function [Y, InitialMatrix] = parse_csv_file(file_path)

  fp = fopen(file_path, "r");
  n = 12;
  Y = zeros(1, 1);
  InitialMatrix = cell(1, n);
  i = 1;
  lines = fgetl(fp);
  while feof(fp) == 0
    lines = fgetl(fp);
    count = 1;
    string = strsplit(lines, ",");
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
    i += 1;
  endwhile

  fclose(fp);
endfunction

