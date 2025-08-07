function [p,it,r,t] = Puntofijo (f,p0,tolerancia,maxit)
  tic();

  it=1;
  while it < maxit
    p = f(p0);

    r(it) = p-p0;
    %usamos una condicion de corte
    %   abs(f(p)) < tolerancia
    %   abs(p-p0) < tolerancia
    %   abs(p-p0)/abs(p) < tolerancia
    if abs(p-p0) < tolerancia
      break;
    endif

    p0 = p;
    it = it + 1;
  endwhile

  if it == maxit
    disp("no se encontro punto fijo en maxit iteraciones");
  endif

  t = toc();
endfunction
