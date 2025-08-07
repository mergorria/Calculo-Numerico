%Usando las Leyes de kirchoff (*ver hoja)
%Armo la matriz A y el vector b:
A = [80 -50 -30 0; -50 100 -10 -25; -30 -10 65 -20; 0 -25 -20 100];
b = [120; 0; 0; 0];

%Llamo a function [x] = gauss1(A, b)
[x] = gauss(A, b)

disp('Corriente i_1')
x(0);
disp('Corriente i_2')
x(1);
disp('Corriente i_3')
x(2);
disp('Corriente i_4')
x(3);
