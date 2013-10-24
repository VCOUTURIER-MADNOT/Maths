function [x] = ex5(t)
  x = abs(pmodulo(t, 2*%pi) - %pi - %pi / 2)
endfunction