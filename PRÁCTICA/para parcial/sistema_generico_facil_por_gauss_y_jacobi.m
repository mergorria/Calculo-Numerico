#Escribo el sistema Ax = b;
A = [1 2 -2 1 1; 2 2 1 -2 0; 1 0 3 -1 0; -2 -1 -1 3 0; -2 -2 0 0 2];
b = [3;2;4;-1;0];


# -------- Ejercicio a

#Utilizo gauss:
[x] = gauss_p(A,b)


# -------- Ejercicio b

#Resuelvo por m¢¥etodos de Jacobi y Gauss-Seidel
x0 = [0;0;0;0;0];
maxit= 2000;
tol = 1e-4;

[x_jacobi,it_jacobi,r_h] = jacobi(A,b,x0,maxit,tol);
it_jacobi

[x_gs,it_gauss,r_h] = gaussseidel(A,b,x0,maxit,tol);
it_gauss
disp('No corvege, la matriz no es diagonalmente dominante');

# -------- Ejercicio c
error_relativo = norm(x_jacobi - x, inf) / norm(x, inf)
