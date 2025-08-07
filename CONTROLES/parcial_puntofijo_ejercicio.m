#Encuentre el valor de a con un error de 1e-6 tal que z(t) = 0.04*sqrt(a+t).*(1-t)-t.*sqrt(2.*a) posea
#un punto fijo en t=0.02 dada w(t) = 0.04*sqrt(19+t)(1-t)-t*sqrt(57)


%Encontrar a
z_aux = @(a) 0.04.*sqrt(a+0.02).*(1-0.02)-0.02.*sqrt(3.*a) - 0.02;


t = linspace(0,25,100); % entre 19 y 20
plot(t,z_aux(t),"-r");
hold on;

[a,it,r,t] = Biseccion(zaux,19,20,1e-7,100); %con un error de 10e-6
a

%Encontrar la raiz
z = @(t) 0.04.*sqrt(a+t).*(1-t) - t.*sqrt(3.*a);
t = linspace(-10,10,100);

plot(t,z(t),"-g");  % entre 0 y 0.5

[p,it,r,t] = Biseccion(z,0,0.5,1e-6,100);
p

% ============

% a): -0.040477
% b): 0.9638405

f = @(x) 230*x.^4+18*x.^3+9*x.^2-222*x-9;

a = -1;
b = 1;
x = linspace(a,b);
plot(x,f(x),'-r');

tol = 1e-8;
maxit = 6000;

[x1,it,r,t] = Biseccion(f,a,b,tol,maxit);
[x2,it,r,t] = Biseccion(f,a,b-1,tol,maxit);


% Mostrar resultados con 6 decimales
printf('Primer punto fijo en x = %.6f\n', x1);
printf('Segundo punto fijo en x = %.6f\n', x2);


%% ====================================================================== %%

% El ejercicio da el polinomio:

% P(x) = 230x^4 + 18x^3 + 9x^2 - 221x - 9

% y pide encontrar los puntos fijos, es decir, los valores de x que cumplen:

% P(x) = x

% Eso es lo mismo que resolver:

% P(x) - x = 0

% Entonces, hay que armar una nueva funci¢¥on:

% f(x) = 230x^4 + 18x^3 + 9x^2 - 221x - 9 - x
% f(x) = 230x^4 + 18x^3 + 9x^2 - 222x - 9

% Por eso hay que "pasar un x", para que todo quede de un lado de la ecuaci¢¥on y podamos buscar las ra¢¥ices de f(x).
% En resumen: no buscamos directamente donde P(x) = 0, sino donde P(x) - x = 0.

