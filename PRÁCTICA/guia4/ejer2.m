#Ejercicio 2.

% Definir las funciones g1 y g2
g1 = @(x) sqrt(10 - x.^3)./2;
g2 = @(x) sqrt(10./(4 + x));

% Condiciones iniciales
p0 = 1.5;
tol = 1e-3;
maxit = 1000;

% Aplicar Puntofijo para g1
disp('Resultados usando g1:');
[p1, it1, r1, t1] = Puntofijo(g1, p0, tol, maxit);
disp('Raiz:');
p1

% Aplicar Puntofijo para g2
disp('Resultados usando g2:');
[p2, it2, r2, t2] = Puntofijo(g2, p0, tol, maxit);
disp('Raiz:');
p2

## Para que el m¢¥etodo de punto fijo funcione, necesitamos que |g¡Ç(x)| < 1 en el intervalo.

