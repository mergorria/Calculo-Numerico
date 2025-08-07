#Datos:
format long
c = 17; % coeficiente de arrastre
v = 35; % velocidad a los 9's
t = 9; % tiempo t
g = 9.8; % gravedad

## --------------------- Ejercicio a.
#Incognita: masa m
f = @(m) g.*m.*(1-e.^(-t.*(c./m))) - c.*v;

#Gr¢¥afico para aproximar intervalo:
m = linspace(60,80);
plot(m,f(m),'-r');
hold on;
grid on;
z = @(m) m==0;
plot(m,z(m),'-b');

#De analizar el gr¢¥afico aproximo el intervalo
tolerancia = 10e-5
maxit= 2000;
a = 60;
b = 80;

#Utilizo bisecci¢¥on
[p,it,r,t] = Biseccion (f,a,b,tolerancia,maxit);

disp('La masa debe ser de: ');
p

## ------------------------- Ejercicio b.

m = 73 % masa de paracaidista
v = 35; % velocidad a los 9's
t = 9; % tiempo t
g = 9.8; % gravedad

#Incognita: coeficiente c
f = @(c) g.*m.*(1-e.^(-t.*(c./m))) - c.*v;

#Gr¢¥afico para aproximar intervalo:
c = linspace(0,20);
plot(c,f(c),'-r');
hold on;
grid on;
z = @(c) c==0;
plot(c,z(c),'-b');

#De analizar el gr¢¥afico aproximo el intervalo
tolerancia = 10e-5
maxit= 2000;
a = 15;
b = 20;

#Utilizo bisecci¢¥on
[p,it,r,t] = Biseccion (f,a,b,tolerancia,maxit);

disp('El coeficiente c debe ser de: ');
p




