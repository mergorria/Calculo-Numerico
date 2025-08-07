function [x] = sust_atras1(A)
  x=A(:,end); %necesario para que x sea columna
  n=length(x); %definimos n por ser una variable local
  x(n)=A(n,n+1)/A(n,n);
  for i = n-1:-1:1
    s = A(i,n+1);
    x(i) = (s - A(i,1:i-1)*x(1:i-1))/A(i,i);
  endfor
endfunction


