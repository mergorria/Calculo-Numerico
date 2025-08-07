function [x] = gauss(A,b)
n=length(A(1,:));

for k=1:n
m = A(k+1:n,k)/A(k,k);
b(k+1:n) = b(k+1:n) - m*b(k);
A(k+1:n,k:n) = A(k+1:n,k:n) - m*A(k,k:n);
endfor

x=sust_atras(A,b);
endfunction

function x = sust_atras(A,b)
n=length(A(1,:));
x = zeros(n,1); # inicializamos la solucion
x(n) = b(n)/A(n,n); % primer calculo con la ultima ecuacion
   for i=n:-1:1
       s = b(i);
       x(i) = (s - A(i,i+1:n)*x(i+1:n))/A(i,i);
   endfor
endfunction
%------------------

%Primero arreglo la matriz para que sea triangular
A = [16.87 0.1650 0.2019	0.3170 0.2340 0.1820 0.1100;
		 0     27.70  0.8620  0.0620 0.0730 0.1310 0.1200;
		 0      0     22.35    13.05  4.420  6.011  3.043;
		 0      0      0       11.28   0     1.110 0.3710;
		 0      0      0        0     9.850  1.1684 2.108;
		 0      0      0        0      0     15.94  2.043;
		 0      0      0        0      0      0     4.670];

b = [17.1; 65.1;  186.0; 82.7; 84.2; 63.7; 119.7];

%Resolver por gauss:
 [x] = gauss(A, b);
 valor_real = sum(x);

 Valor para error:
valor_medido = 38.78e-6; % en um de Hg
error_abs = abs(valor_real - valor_medido);
error_rel = abs(valor_real - valor_medido) / abs(valor_real);

disp('Presiones parciales (en um de Hg):')
disp(x)
disp(['Presi¢¥on total estimada: ', num2str(valor_real), ' um de Hg'])
disp(['Error absoluto: ', num2str(error_abs)])
disp(['Error relativo: ', num2str(error_rel * 100), ' %'])
