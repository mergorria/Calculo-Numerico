function Q = intNCcompuesta2(f,a,b,c,d,L1,L2,n)
% function Q = intNCcompuesta2(f,a,b,c,d,L1,L2,n)
% Aproxima la integral doble de la funci¢¥on f(x,y) sobre el rect¢¥angulo [a,b] x [c,d]
% utilizando la f¢¥ormula de Newton-Cotes compuesta de n puntos.
% El intervalo [a,b] se divide en L1 subintervalos, y [c,d] en L2 subintervalos.

sub1 = linspace(a,b,L1+1);         % Crea L1+1 puntos equiespaciados en [a,b], es decir, extremos de subintervalos
sub2 = linspace(c,d,L2+1);         % Crea L2+1 puntos equiespaciados en [c,d]

h = (b-a)/L1;                      % Longitud de cada subintervalo en x (eje horizontal)
k = (d-c)/L2;                      % Longitud de cada subintervalo en y (eje vertical)

w = pesosNC(n);                    % Calcula los pesos de Newton-Cotes para n puntos (vector de pesos)
Q = 0;                             % Inicializa el acumulador de la integral

for j = 1:L2                       % Recorre cada subintervalo en el eje y
    y = linspace(sub2(j),sub2(j+1),n);  % Genera n puntos equiespaciados en el subintervalo actual de y

    for i = 1:L1                   % Recorre cada subintervalo en el eje x
        x = linspace(sub1(i),sub1(i+1),n);  % Genera n puntos equiespaciados en el subintervalo actual de x

        fxy = f(x, y');            % Eval¢¥ua f en todos los puntos de la malla x ¡¿ y
                                   % fxy es una matriz de tama~no n x n donde fxy(p,q) = f(x(p), y(q))

        Q = Q + (w' * (fxy * w));  % Aplica cuadratura de Newton-Cotes: w' * fxy * w es la integral aproximada
                                   % sobre el subrect¢¥angulo actual
    endfor
endfor

Q *= k*h;                          % Multiplica por el ¢¥area de cada subrect¢¥angulo para obtener la integral total

endfunction

