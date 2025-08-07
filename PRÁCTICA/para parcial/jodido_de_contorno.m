%Datos:
A = 0;
b = 0;
h=1/40;
A(1:39,1:39) = 0;
b(1:39) = 0;

# U segunda
ddu = @(x) 20.*e.^(-10.*(x - 0.7).^2);
# Funcion para calcular los coeficientes de b
fb = @(x) ddu(x).*h.^2;

#Valores frontera
A(1,1) = 2;
A(1,2) = -1;
b(1) = fb(h)+5;

for i=2:38
  A(i,i-1) = -1;
  A(i,i) = 2;
  A(i,i+1) = -1;
  b(i) = fb(h*i);
endfor

b(39) = fb(1-h)+6;
A(39,38) = -1;
A(39,39) = 2;
b=b';

% Vector inicial x0
x0 = zeros(39,1);

#Aplico Gaussseidel
tol= 1e-6;
maxit=2000;

[x,it,r_h] = gaussseidel(A,b,x0,maxit,tol); %norm(A*x-b,Inf);
it

#---------------- Ejercicio c
x(20);
