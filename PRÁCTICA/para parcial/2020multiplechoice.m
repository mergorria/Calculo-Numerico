A = [0.5 -1 0; -1 3 -1; 0 -1 2];
b = [7;4;5];
x0= b;
tol = 1e-7;
maxit = 2000;

[x_gs,it_gs,r_h] = gaussseidel(A,b,x0,maxit,tol);
disp('Iteraciones gaussseidel');
it_gs

tolerancia = tol;
[w] = wOptimo (A,b,x0,tolerancia,maxit);
disp('El w optimo es:');
w

[x,it_sor,r_h]=sor(A,b,x0,maxit,tol,w)
disp('Iteraciones sor');
it_sor

