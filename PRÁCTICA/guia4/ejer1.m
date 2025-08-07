#Ejercicio 1.

#EJERCICIO (A) -----------------

%Defino funcion
f_a = @(x) 3.*(x+1).*(x-0.5).*(x-1)

%Defino intervalo
a=-2;
b=1.5;

%Iteraciones
for i = 1:4
  p = (a+b)/2;
  fp = f_a(p);
  printf(i, p, fp);

  if f_a(a)*fp < 0
    b = p;
  else
    a = p;
  endif
endfor

% Calcular la cota de error
disp('Error cota:');
error_cota = (1.5 - (-2)) / (2^4)


#EJERCICIO (C) -----------------
a = 1;
b = 4;
tol = 1e-3;

disp('Nro de iteraciones');
maxit = 3000;
f_c = @(x) x.^3 + x - 4;

disp('Raiz:');
[p,it,r,t] = Biseccion (f_c,a,b,tol,maxit);
p

#EJERCICIO (D) -----------------

function x = rcubica(a)
  f = @(x) x^3 - a;
  a = -a^5;
  b = a^5;
  tol = 10^-12;
  maxit= 3000;
  [p,it,r,t] = Biseccion(f,a,b,tol,maxit);
  disp('Raiz:');
  p
endfunction

