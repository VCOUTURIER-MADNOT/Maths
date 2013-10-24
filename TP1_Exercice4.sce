function [x] = fourierGibbs(t, N)
  x = zeros(t);
  for p = 0:N
    x = x + (1/(2*(p+1))) * sin((2*p + 1) *t);
  end
  x = 4/%pi * x    
endfunction