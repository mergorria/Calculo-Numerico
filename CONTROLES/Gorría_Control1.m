#### TPI 2025:

%%Creo la matriz -----------------
n = 40;
A = zeros(n, n);
% Relleno A
for i = 1:n
    for j = 1:n
        if j == i
            A(i, j) = 2;          % Diagonal principal
        elseif j == i + 1 && i < n
            A(i, j) = -1;         % Diagonal superior
        elseif j == i - 1 && i > 1
            A(i, j) = -1;         % Diagonal inferior
        else
            A(i, j) = 0;          % Otros casos
        end
    end
end

% Creo el vector b
b = zeros(n, 1);
for i = 1:n
    b(i) = 1.5*i - 6;
end

##  Resuelvo con Gauss:
[x] = gauss_p(A,b);
## Obtengo el valor en X(20):
x(20)

## Datos para Jacobi, Gauss-seidel y Sor
x0 = zeros(n,1); ## comenzando las iteraciones con el vector nulo
tol= 1e-5; ## considerando un error de 10-5
maxit= 5000;
w= 1.85;

## utilizo para el corte en iteraciones:
%% norma infinito del error relativo ->  norm(x - x0, inf) / norm(x, inf);

[x,it_jacobi,r_h] = jacobi(A,b,x0,maxit,tol);
it_jacobi

[x,it_gauss,r_h] = gaussseidel(A,b,x0,maxit,tol);
it_gauss

[x,it_sor,r_h]=sor(A,b,x0,maxit,tol,w);
it_sor
