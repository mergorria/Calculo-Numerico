#Ejercicio 7 Y TP 2023

%Defino funcion
f_e = @(t) ( (t+1/3).^3 + 1/3).*e.^(-t);
# E(t) = 1.5 => E(t) - 1.5 = 0:

E = @(t) ((t+1/3).^3+1/3).*e.^(-t) - 1.5;
dE = @(t) (e.^(-t).*(3.*(t+1/3).^2-(t+1/3).^3-1/3));

% Grafico E(t) y su primera derivada
figure(1);
t = linspace(0,10,100);
plot(t, f_e(t), '-r');
hold on;
plot(t, E(t), '-y');
plot(t, dE(t), '-b');
y = @(t) t.*0;
grid on;
grid minor;
plot(t,y(t),'-k');

%Para determinar p0 uso aproximaciones viendo la gr¢¥afica, aprox 2 y 4.
%Para 2:
p0 = 2;
tolerancia = 10^-6;
maxit = 100;
[p,it,r,t] = Newton (E,dE,p0,tolerancia,maxit);
disp('El tiempo t epara que la energ¢¥ia del dispositivo sea 1.5 es:');
p
disp('Nro de iteraciones:');
it

%Para 4:
p0 = 4;
disp('');
[p,it,r,t] = Newton (E,dE,p0,tolerancia,maxit);
disp('El 2do tiempo  t para que la energ¢¥ia del dispositivo sea 1.5 es:');
p
disp('Nro de iteraciones:');
it



#DETERMINAR ENERGIA MAXIMA:

ddE = @(t) e.^(-t).*((t+1/3).^3-6.*(t+1/3).^2+6.*(t+1/3)+1/3);

% grafico E(t), su primera y segunda derivada
figure(2);
t = linspace(0,10,100);
plot(t, f_e(t), '-r');
hold on;
plot(t, dE(t), '-b');
plot(t, ddE(t), '-g');
y = @(t) t.*0;
grid on;
grid minor;
plot(t,y(t),'-k');

% Aproximo viendo grafica
p0=3;
[pmax,it,r,t] = Newton (dE,ddE,p0,tolerancia,maxit);
disp('T para m¢¥axima energ¢¥ia es:');
pmax
disp('Nro de iteraciones:');
it
disp('M¢¥axima energ¢¥ia:');
max=f_e(pmax)

# Tempo en donde se da la maxima tasa de crecimiento instantanea

dddE = @(t) e.^(-t).*(6-1/3-18.*(t+1/3)+9.*(t+1/3).^2-(t+1/3).^3);

# grafico E(t), su primera, segunda y tercera derivada junto a y = 0.
figure(3);
t = linspace(0,10,100);
plot(t, E(t), '-r');
hold on;
plot(t, dE(t), '-b');
plot(t, d2E(t), '-g');
plot(t, d3E(t), '-o');
y = @(t) t.*0;
grid on;
grid minor;
plot(t,y(t),'-k');

# Aproximo:
p0=1;
[pmi,it,r,t] = Newton (dsE,dddE,p0,tolerancia,maxit);
pmi
it


