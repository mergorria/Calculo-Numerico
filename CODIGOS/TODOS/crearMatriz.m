function [A,b] = crearMatriz()
N = 10;

% Inicializar matriz de ceros
A_tridiag = zeros(N);

% Asignar los valores en la diagonal principal
A_tridiag(1, 1) = 1;
A_tridiag(1, 2) = 0;
A_tridiag(N, N) = 1;
A_tridiag(N, N-1) = 0;

for i = 2:N-1
    A_tridiag(i, i) = 2;
end

% Asignar los valores en las diagonales superiores e inferiores
for i = 2:N-1
    A_tridiag(i, i+1) = -1;
    A_tridiag(i, i-1) = -1;
end
% Mostrar la matriz resultante
disp(A_tridiag);

% vector lado dereho
b=zeros(N,1);
b(1)=0;
b(N)=0;
b(2:N-1)=1/(N^2);
disp(b);


A = A_tridiag;

