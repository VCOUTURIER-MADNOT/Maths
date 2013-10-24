function [x] = MONREC(t, T)
  x = zeros(t)
  x = pmodulo(t*2, T) >= 0.5
  x = 2 * x - 1
endfunction

function [x] = MASCIE(t, T)
  x = zeros(t)
  x = pmodulo(t*2,T)
endfunction