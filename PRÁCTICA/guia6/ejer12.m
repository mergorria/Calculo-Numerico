#Ejer12

%Funcion
f = @(r, t) 10 + r.^3.*cos(3.*t) +2.*r.^2.*sin(2.*t);

%Intervalo
a = -pi;
b = pi;
c = 0;
d = 1;
%Datos cuad:
n=2;
m=2;
L1=1;
L2=1;

% Calculo de la Energia Total sobre la placa, consideramos rho*c=1
% Funci¢¥on integraci¢¥on multiple
disp('resultado x cuad y newton cotes:');
I1=cuad_gauss_doble(f,a,b,c,d,m,n)
I2 = intNCcompuesta2(f,a,b,c,d,L1,L2,n)

disp('resultado x octave:');
% Funcion de Octave
% integramos sobre un rectangulo de 2x2
Q=quad2d(f,a,b,c,d)
Q1=dblquad(f,a,b,c,d)

# I1 = 91.98099809591146
# I2 = 119.2197082734794
# Q = 92.10481349440387
# Q1 = 92.10481349440390
