## Ejercicio 1. i)- Calcule los autovalores y el radio espectral de la matriz A, ii)- defina matriz
## convergente e indique si lo es la matriz A.
A = [3/4 1/6; 1/4 1/4];

% C¢•alculo de autovalores
eig_vals = eig(A)
% Radio espectral (m¢•aximo valor absoluto de los autovalores)
radio_espectral = max(abs(eig_vals))

## Una matriz A°ÙRn°øn es convergente si su radio espectral •Ò(A)<1 -> A es convergente
