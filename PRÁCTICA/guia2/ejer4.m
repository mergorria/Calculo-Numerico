## Escriba funciones de Octave x=sust_atras(A,b) y x=sust_adelante(A,b) que implementen los algoritmos para resolver un sistema
## triangular superior por sustitucion hacia atr¢¥as
## y un sistema triangular inferior por sustituci¢¥on hacia adelante respectivamente en forma
## vectorizada (eliminando lazos anidados). Las funciones reciben una matriz triangular (la que
## corresponda al m¢¥etodo) y el vector de t¢¥erminos independientes, y devuelve la soluci¢¥on del
## sistema.

# proceso de sustitucion hacia atr¢¥as
function x = sust_atras(A,b)
n=length(A(1,:));
x = zeros(n,1); # inicializamos la solucion
x(n) = b(n)/A(n,n); % primer calculo con la ultima ecuacion
   for i=n:-1:1
       s = b(i);
       x(i) = (s - A(i,i+1:n)*x(i+1:n))/A(i,i);
   endfor
endfunction

# proceso de sustitucion hacia atr¢¥as vectorizada
function [x] = sust_atras_p(A)
n = length(A(:,1))
x = zeros(n,1); % inicializamos la solucion
x(n) = A(n,n+1)/A(n,n); % primer calculo con la ultima ecuacion

for i=n-1:-1:1
    x(i) = (A(i,n+1) - A(i,i+1:n)*x(i+1:n))/A(i,i);
endfor
endfunction


% proceso de sustitucion hacia adel vectorizada
function x = sust_adel(A,b)
n=length(A(1,:));
x = zeros(n,1);
x(1) = b(1)/A(1,1);
for i=1:n
    s = b(i);
    x(i) = (s - A(i,1:i-1)*x(1:i-1))/A(i,i);
endfor
endfunction
