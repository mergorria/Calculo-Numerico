function [x,it,r_h] = jacobi(A,b,x0,maxit,tol)

  n = length(A(1,:));

  x=x0;
  it=1;
  %usamos x0 para almacenar el x de la iteracion anterior
  while (it < maxit)
    for i=1:n
      x(i) = (b(i) - A(i,1:i-1)*x0(1:i-1) - A(i,i+1:n)*x0(i+1:n))/A(i,i);
    endfor

    r_h(it+1) =  norm(x - x0, inf) / norm(x, inf);
     %error relativo:
    %   norm(x-x0)/norm(x);
    %error absoluto:
    %   norm(A*x-b);
    %error abs inf:
    %norm( x-x0, inf);
    % norma infinito del error relativo
    % norm(x - x0, inf) / norm(x, inf);
    if r_h(it+1) < tol
      break;
    endif

    x0=x;
    it=it+1;
  endwhile

endfunction
