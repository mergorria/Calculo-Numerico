## ---------- Ejercicio a:

#Creo la matriz
n = 40;
A = zeros(n, n);
% Relleno A
for i = 1:n
    for j = 1:n
        if j == i
            A(i, j) = 2*i;          % Diagonal principal
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
x(7)


## ---------- Ejercicio b:
x0 = zeros(n,1); ## comenzando las iteraciones con el vector nulo
tol= 1e-6; ## considerando un error de 10-6
maxit= 5000;


[x,it_j,r_h_j] = jacobi(A,b,x0,maxit,tol);
disp('Iteraciones jacobi:');
it_j
[x,it_gs,r_h_g] = gaussseidel(A,b,x0,maxit,tol);
disp('Iteraciones GS:');
it_gs


##  ---------- Ejercicio c:

