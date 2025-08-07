%%%TP2 2024:

% Declaro todos los datos:

maxit = 1000; tol=10.0e-8;
pt= 3.4; k=0.04;
f = @(x) ((x./(1-x)) .* (((2*pt)./(2+x)).^(1/2) )) - k;

% Grafico:

x = linspace(0,2);
plot(x,f(x),'-b');

%UTILIZO BISSECION:
a=0;
b=1;
[p_raiz,iteraciones,residuo,tempo] = Biseccion(f,a,b,tol,maxit);

disp('Raiz');
p_raiz;
disp('Iteraciones:');
iteraciones;

%%inciso 2:

%Reformulo la funci¢¥on ahora con p como incognita

f = @(x) -(0.02/(1-0.02)) .* (((2*x)./(2+0.02)).^(1/2) ) + k;
x = linspace(3,5);
plot(x,f(x),'-r');
a = 3.5;
b=4.5;
tol=0.01e-2;
[p_raiz,iteraciones,residuo,tempo] = Biseccion(f,a,b,tol,maxit)

