#Defino el polinomio:
f = @(x) x - x.^3 - 4.*x.^2 + 10;

#Grafico para aproximar intervalo:
x = linspace(-5,5);
plot(x,f(x),'-r');
hold on;
grid on;
z = @(x) x==0;
plot(x,z(x),'-b');

#Datos para biseccion:

## ------ Ejercicio a
a= -4;
b= -3;
tolerancia = 1e-8;
maxit = 2000;

[p_menor,it,r,t] = Biseccion (f,a,b,tolerancia,maxit);
p_menor

## ------  Ejercicio b
a= 1;
b= 3;

[p_mayor,it,r,t] = Biseccion (f,a,b,tolerancia,maxit);
p_mayor


## ------ Ejercicio c
#Defino el polinomio para punto fijo:
f = @(x) - x.^3 - 4.*x.^2 + 10;

#Grafico para aproximar intervalo:
x = linspace(-5,5);
plot(x,f(x),'-r');
hold on;
grid on;
z = @(x) x==0;
plot(x,z(x),'-b');

a= 1;
b= 2;
tolerancia = 1e-10;
maxit = 2000;

[p_f,it,r,t] = Biseccion (f,a,b,tolerancia,maxit);
p_f
