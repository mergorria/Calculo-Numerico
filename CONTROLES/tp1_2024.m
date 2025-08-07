n=40;
A = zeros(n,n) + diag(2*[1:n],0) + diag(-1*[2:n],-1) + diag(-1*[1:n-2],1);
b = 1.5*ones(n,1)-6;
x0 = zeros(n,1);
tol= 10e-5;
maxit= 3000;
w= 1.85;

[x,it,r_h] = jacobi(A,b,x0,maxit,tol)
[x,it,r_h] = gaussseidel(A,b,x0,maxit,tol)
[x,it,r_h]=sor(A,b,x0,maxit,tol,w)


%%Creado a pata -----------------
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


x0 = zeros(n,1);
tol= 1e-5;
maxit= 5000;
w= 1.85;

[x,it,r_h] = jacobi(A,b,x0,maxit,tol);
[x,it,r_h] = gaussseidel(A,b,x0,maxit,tol);
[x,it,r_h]=sor(A,b,x0,maxit,tol,w);

