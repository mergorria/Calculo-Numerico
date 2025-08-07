function [x] = sust_adelante(A,b)
  x=A(:,end),
  n=length(x);
  x(n)=A(1,n+1)/A(1,1);
  for i = 1:n
    s = A(i,n+1);
    x(i) = (s - A(i,1:i-1)*x(1:i-1))/A(i,i);
  endfor
endfunction

