function [x] = gauss1(A,b)
  n=length(b);
  A=[A b];
  % Eliminacion
  for k=1:n-1
  m = A(k+1:n,k)/A(k,k);
  b(k+1,:) = b(k+1:n) - m*A(k,k:n);
  A(k+1:n,k:n) = A(k+1:n,k:n) - m*A(k,k:n);
  endfor
  if (A(n,n)==0)
    disp("no hay sol. unica")
endif
x=sust_atras1(A); %retrosustitucion
endfunction

