function y = MONREC(t)
  y = zeros(t);
  T = 1;
  for i=1:size(t,2)
    x = modulo(t(i), T)
    x = x^2
    x = modulo(x,T);
    if x > 0.5 then
        x = 1
    else
        x = 0
    end
    y(i)=x;
  end
  
  return y;
endfunction

