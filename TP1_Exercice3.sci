function [x] = MONREC(t)
  T = 1;
  x = zeros(t)
  x = pmodulo(t*2, T) >= 0.5
  x = 2 * x - 1
  return x;
endfunction

function [x] = MASCIE(t)
  T = 1;
  x = zeros(t)
  x = pmodulo(t*2,T)
  return x
endfunction