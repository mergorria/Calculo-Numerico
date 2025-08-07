% Definir par¢¥ametros
Nh = 10;
h = 0.1;
E = 1;
J = 1;

% Funci¢¥on P(x) - Carga distribuida (ejemplo)
function p = carga(x)
    p = sin(pi*x);  % Ejemplo de carga distribuida
end

% Crear vector x (coordenadas nodales)
x = linspace(0, 1, Nh+1);

% Crear vector f de t¢¥erminos de carga
for j = 0:Nh
    f(j+1) = carga(x(j+1))/(E*J);
end

% Dimensi¢¥on de la matriz y vectores
n = Nh - 3;

% Inicializar matriz A y vector b
A = zeros(n, n);
b = zeros(n, 1);

% Construir matriz A pentadiagonal
for i = 1:n
    % Diagonal principal
    A(i,i) = 6;

    % Diagonales adyacentes
    if i > 1
        A(i, i-1) = -4;
    end
    if i < n
        A(i, i+1) = -4;
    end

    % Diagonales secundarias
    if i > 2
        A(i, i-2) = 1;
    end
    if i < n-1
        A(i, i+2) = 1;
    end
end

% Construir vector b
for j = 2:Nh-2
    b(j-1) = h^4 * f(j+1);  % j-1 porque el ¢¥indice de b comienza en 1
end

% Mostrar matriz A y vector b
disp('Matriz A:');
disp(A);
disp('Vector b:');
disp(b);
